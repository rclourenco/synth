#include <stdio.h>
#include <math.h>

#include <allegro5/allegro.h>
#include <allegro5/allegro_font.h>
#include <allegro5/allegro_ttf.h>
#include <allegro5/allegro_primitives.h>
#include <allegro5/allegro_audio.h>

#include "sndutils.c"
#include "include/fm.h"
#include "include/dsp.h"
#include "include/controlpanel.h"
#include "include/patch.h"

#define N 8000
#define N_2 4000

int sample_rate = 44100;
int delayBufferSize = 44100*5;
double fDlyTime = 0.02;
double fFeedback = 0.25;
double DlyBuffer[44100*5];

double fDlyTimeL = 0.025;
double fFeedbackL = 0.25;
double DlyBufferL[44100*5];



Filter *stereo = NULL;

double cx[] = {0.9}; 
double cy[] = {1, 0.1}; 


typedef struct {
	unsigned char scmd;
	unsigned char sp1;
	int st;	
	int excnt;
}MidiParser;

typedef struct {
	unsigned char cmd;
	unsigned char p1;
	unsigned char p2;
}MidiEvent;

int sysex_st = 0;
void parse_sysex(unsigned char msg);

void midiParserInit(MidiParser *mp)
{
	mp->st = 0;
	mp->excnt = 0;
}

int midiParser(MidiParser *mp,int input, MidiEvent *me)
{
	if( (input & 0xF0) == 0xF0) {
		me->cmd = input;
		me->p1 = 0;
		me->p2 = 0;
    if( input == 0xF0 ) {
      mp->st = 3;
      mp->excnt = 0;
    } else if( input == 0xF7 ) {
      mp->st = 0;
      me->p1 = 2;
      me->p2 = 0;
    }
		return 1;
	}

  switch(mp->st) {
    case 3:
      if( input > 127 ) {
        if( (input & 0xF0) == 0xF0 ) {
          me->cmd = input;
          me->p1 = 0;
          me->p2 = 0;
          mp->st = 3;
          mp->excnt = 0;
        } else {
          mp->scmd = input; 
          mp->st = 1; 
        }
      }
      else {
        mp->excnt++;
        me->p1 = 1;
        me->p2 = input;
        return 1;
      }
    break;
    case 0: if( input > 127 ) { 
				mp->scmd = input; 
				switch(input&0xF0) {
				  case 0xC0:
				    mp->st = 4;
				    break;
				  default:
				    mp->st = 1;
				}
			} 
			break;
		case 1:
			if( input > 127) {
				 mp->scmd=input; 
				 mp->st = 1;
			}
			else{
				mp->sp1=input;
				mp->st = 2;
			}
			break;
		case 4:
		case 2:
			if( input > 127 ) {
				 mp->scmd=input; 
				 mp->st = 1;
			}
			else{
				mp->st = 1;
				me->cmd =  mp->scmd;
				if(mp->st==4)
				  me->p1 = input;
				else
				  me->p1  =  mp->sp1;
				me->p2  =  input;
				return 1;
			}
			break;
	}
	me->cmd = 0;
	return 0;
}

MidiParser mp1;
MidiEvent me1;

void midi_event_processor(FMChannel *fmch, int r);

#define BUFFERLEN 256

#define SAMPLES_PER_BUFFER 256

typedef struct {
  ALLEGRO_DISPLAY *display;
  ALLEGRO_FONT *font;
  ALLEGRO_EVENT_QUEUE *queue;
  ALLEGRO_EVENT_SOURCE incoming;
  ALLEGRO_MUTEX *mutex;
  ALLEGRO_AUDIO_STREAM *stream;
} AllegroSet;

#define MY_SIMPLE_EVENT_TYPE     ALLEGRO_GET_EVENT_TYPE('m', 's', 'e', 't')

#define SCRW 640
#define SCRH 480

int init_allegro(AllegroSet *aset)
{
  if(!al_init()) {
     fprintf(stderr, "failed to initialize allegro!\n");
     return 0;
  }

  al_install_keyboard();
  al_init_font_addon(); // initialize the font addon
  al_init_ttf_addon();// initialize the ttf (True Type Font) addon
  al_init_primitives_addon();

  aset->display = al_create_display(SCRW, SCRH);
  if(!aset->display) {
     fprintf(stderr, "failed to create display!\n");
     return 0;
  }

   if (!al_install_audio()) {
      fprintf(stderr, "Could not init sound.\n");
      return 0;
   }
   al_reserve_samples(0);

   aset->stream = al_create_audio_stream(8, SAMPLES_PER_BUFFER, sample_rate,
      ALLEGRO_AUDIO_DEPTH_FLOAT32, ALLEGRO_CHANNEL_CONF_1);
 
   if (!al_attach_audio_stream_to_mixer(aset->stream, al_get_default_mixer())) {
      fprintf(stderr, "Could not attach stream to mixer.\n");
      return 0;
   }


   aset->queue = al_create_event_queue();
   if (!aset->queue) {
      fprintf(stderr,"Error creating event queue\n");
      return 0;
   }
  aset->mutex = al_create_mutex();
  if(!aset->mutex) {
      fprintf(stderr,"Error creating mutex\n");
      return 0;  
  }
  al_init_user_event_source(&aset->incoming);
  al_register_event_source(aset->queue, &aset->incoming);
  al_register_event_source(aset->queue, al_get_keyboard_event_source());
  al_register_event_source(aset->queue, al_get_audio_stream_event_source(aset->stream));

  return 1;
}

void end_allegro(AllegroSet *aset)
{
  al_destroy_display(aset->display);
}

typedef struct {
  int fdm;
  AllegroSet *aset;
} MidiThreadArgs;

static void *thread_midi_events(ALLEGRO_THREAD *thr, void *arg);


AllegroSet aset;
MidiThreadArgs ttarg;
ALLEGRO_THREAD *midi_thread;
ALLEGRO_EVENT event;

double mvol = 1;

int main(int argc, char **argv)
{
	char *mididev = "/dev/midi1";
   CPEvent ev;
    int id=0, jd=0;
    int idL=0, jdL=0;
    unsigned i,j;
    short int t;
    double a;
    double z;
	int seqon = 1;
	double oz = 0.0;
	char output[2048];
	int x;
	double b = 0.0;
	int ch;
	int running = 1;
	double bv = 1;
	double mod = 0.0;
	double feed = 0.0;
	int alg = 0;
	int w1 = 0;
	int w2 = 0;
	int vol=100;
	double mul1 = 0.5;
	double mul2 = 1.0;
	unsigned char midinote=-1,oldmidinote=-1;

	VoiceGroup _vg;
	VoiceGroup *vg = &_vg;
	FMChannel _fmch;
	FMChannel *fmch=&_fmch;


  if(argc>1){
    mididev = argv[1];
  }

  int midiin = open(mididev,O_RDONLY,0);
  if(midiin<0) {
    printf("Cannot open %s\n", mididev);
    return -1;
  }


  if(!init_allegro(&aset)) {
    fprintf(stderr, "failed to initialize allegro!\n");
    return -1;
  }

  ttarg.aset = &aset;
  ttarg.fdm  = midiin;

  midi_thread = al_create_thread(thread_midi_events, &ttarg);
  al_start_thread(midi_thread);

  al_clear_to_color(al_map_rgb(0x35,0x28,0x79));

  fm_set_sample_rate(sample_rate);
  fmc_init(fmch, vg, 31);
  midiParserInit(&mp1);

  float *buf;
  int pitch = 0x10000;
  int val = 0;
  int bi;
  int n = 200;

  float oa = 0.0;
  while(1) {
    al_wait_for_event(aset.queue, &event);
    if (event.type == ALLEGRO_EVENT_KEY_DOWN) {
       if (event.keyboard.keycode == ALLEGRO_KEY_ESCAPE) {
         break;
       }
    } else if (event.type == MY_SIMPLE_EVENT_TYPE) {
         int n = (int) event.user.data1;
         ALLEGRO_ASSERT(event.user.source == &aset.incoming);
         al_unref_user_event(&event.user);
         midi_event_processor(fmch,n);
    } else if (event.type == ALLEGRO_EVENT_AUDIO_STREAM_FRAGMENT) {
         buf = al_get_audio_stream_fragment(aset.stream);
         if (!buf) {
            /* This is a normal condition you must deal with. */
            continue;
         }

         for (bi = 0; bi < SAMPLES_PER_BUFFER; bi++) {
            /* Crude saw wave at maximum amplitude. Please keep this compatible
             * to the A4 example so we know when something has broken for now.
             * 
             * It would be nice to have a better example with user interface
             * and some simple synth effects.
             */
           // if(bi%2) {
           //   a=oa;
           // } else {
              a=fmc_output(fmch);
            //  oa=a;
           // }
            oz=(double)a*mvol*40.0;
            buf[bi] = oz;
         }

         if (!al_set_audio_stream_fragment(aset.stream, buf)) {
            fprintf(stderr, "Error setting stream fragment.\n");
         }
    }
  }
  al_join_thread(midi_thread, NULL);
  al_destroy_thread(midi_thread);

  end_allegro(&aset);


  exit(0);

  return 0;
}



static void *thread_midi_events(ALLEGRO_THREAD *thr, void *arg)
{
  fd_set fd_in;
  int rc;
  char input[150];
  MidiThreadArgs *ta = (MidiThreadArgs *)arg;
  int fdm = ta->fdm;
  ALLEGRO_EVENT user_event;

  (void)thr;

  while (1)
  {
    // Wait for data from standard input and master side of PTY
    FD_ZERO(&fd_in);
    FD_SET(fdm, &fd_in);

    rc = select(fdm + 1, &fd_in, NULL, NULL, NULL);
    switch(rc)
    {
      case -1 : fprintf(stderr, "Error %d on select()\n", errno);
                exit(1);

      default :
      {
        // If data on master side of PTY
        if (FD_ISSET(fdm, &fd_in))
        {
          al_lock_mutex(ta->aset->mutex);
          rc = read(fdm, input, sizeof(input));
          al_unlock_mutex(ta->aset->mutex);
          if (rc > 0)
          { 
            int c;
            // Send data on standard output
            //write(1, input, rc);
            for(c=0;c<rc;c++) {
              unsigned char ch = input[c];
              user_event.user.type = MY_SIMPLE_EVENT_TYPE;
              user_event.user.data1 = ch;
              al_emit_user_event(&ta->aset->incoming, &user_event, NULL);
            }
            
          }
          else
          {
            if (rc < 0)
            {
              fprintf(stderr, "Error %d on read master PTY\n", errno);
              exit(1);
            }
          }
        }
      }
    } // End switch
  } // End while
}

void midi_event_processor(FMChannel *fmch, int r) {
  if(midiParser(&mp1,r,&me1)) {
    //printf("Here %d %d %d\n",me1.cmd, me1.p1, me1.p2);
    switch(me1.cmd){
      case 0x90:
        if(me1.p2 != 0)
          fmc_keyon(fmch,me1.p1,me1.p2);
        else
          fmc_keyoff(fmch,me1.p1,64);
      break;
      case 0x80:
        fmc_keyoff(fmch,me1.p1,me1.p2);
      break;
      case 0xB0:
        if(me1.p1 == 123 && me1.p2 == 0){
          fmc_allnotesoff(fmch);
        }
        else if(me1.p1 == 0) {
          char namebuffer[12];
          printf("Program change %d\n", me1.p2%32);
          if(patch_get_name(me1.p2%32,namebuffer)) {
            printf("-- %s\n",namebuffer);
            fmc_loadProgram(fmch,me1.p2%32);
          }
        }
        else if(me1.p1 == 3){
          fmc_setAlg(fmch,me1.p2);
        }
        else if(me1.p1 >= 12 && me1.p1 <=17)
        {
          fmc_opvol(fmch,me1.p1-12,me1.p2);
        }
        else if(me1.p1 >= 18 && me1.p1 <= 23)
        {
          fmc_opmul(fmch,me1.p1-18,me1.p2);
        }
        else if(me1.p1 >= 24 && me1.p1 <= 29) {
          fmc_opattack(fmch,me1.p1-24,me1.p2);
        }
        else if(me1.p1 >= 30 && me1.p1 <= 35) {
          fmc_opdecay(fmch,me1.p1-30,me1.p2);
        }
        else if(me1.p1 >= 36 && me1.p1 <= 41) {
          fmc_opsustain(fmch,me1.p1-36,me1.p2);
        }
        else if(me1.p1 >= 42 && me1.p1 <= 47) {
          fmc_oprelease(fmch,me1.p1-42,me1.p2);
        }
        else if(me1.p1 == 48){
          fmc_feedback(fmch,me1.p2);
        }
        else if(me1.p1 == 1) {
          fmc_lfoDepth(fmch, me1.p2);
        }
        else if(me1.p1 == 49){
          mvol = 5+me1.p2;
          mvol /= 10.0;
        }
      break;
      case 0xC0: {
        char namebuffer[12];
        printf("Program change %d\n", me1.p1%32);
        if(patch_get_name(me1.p1%32,namebuffer)) {
          printf("-- %s\n",namebuffer);
          fmc_loadProgram(fmch,me1.p1%32);
        }
      }
      break;
      case 0xE0: {
          int d = (me1.p2&0x7F);
          d = (d - 64)*128 + (me1.p1&0x7F);
          fmc_pitchBend(fmch, d );
        //  printf("Pitch Bend %d %d %d\n", me1.p1, me1.p2, d);
        }
      break;
      case 0xF0: {
        if( me1.p1 == 0 ) {
          parse_sysex(0xF0);
          printf("--- Start of Sysex  ---\n");
        }
        else if(me1.p1 == 1) {
          parse_sysex(me1.p2);
          //printf("Sysex Data: %02X\n", me1.p2);
        }
      }
      break;
      case 0xF7: {
          parse_sysex(0xF7);
          printf("--- End of Sysex  ---\n");
      }
      break;
    }
  }
}


void parse_sysex(unsigned char msg)
{
  if(msg==0xF0) {
    sysex_st = 2;
    return;
  }
  if(msg==0xF7) {
    sysex_st = 1;
  }

  msg = msg & 0x7F;
  switch(sysex_st) {
    case 0: break;
    case 1:
      end_of_sysex();
      sysex_st = 0;
      break;
    case 2: // id
      if(msg==67)
        sysex_st = 3;
      else
        sysex_st = 0;
    break;
    case 3: // ss
      patch_sub_status(msg);
      sysex_st = 4;
    break;
    case 4: //fn
      patch_format(msg);
      sysex_st = 5;
    break;
    case 5: // msb
      patch_count_msb(msg);
      sysex_st = 6;
    break;
    case 6: // lsb
      sysex_st = 7;
      patch_count_lsb(msg);
      start_of_sysex();
    break;
    case 7:
      store_sysex(msg);
    break;
  }
}
