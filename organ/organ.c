#include <stdio.h>
#include <math.h>

#include "sndutils.c"
#include "include/fm.h"
#include "include/dsp.h"
#include "include/controlpanel.h"

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
}MidiParser;

typedef struct {
	unsigned char cmd;
	unsigned char p1;
	unsigned char p2;
}MidiEvent;

void midiParserInit(MidiParser *mp)
{
	mp->st = 0;
}

int midiParser(MidiParser *mp,int input, MidiEvent *me)
{
	if( (input & 0xF0) == 0xF0) {
		me->cmd = input;
		me->p1 = 0;
		me->p2 = 0;

		return 1;
	}

	switch(mp->st) {
		case 0: if( input > 127 ) { 
				mp->scmd = input; 
				mp->st = 1; 
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
		case 2:
			if( input > 127 ) {
				 mp->scmd=input; 
				 mp->st = 1;
			}
			else{
				mp->st = 1;
				me->cmd =  mp->scmd;
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

#define BUFFERLEN 256

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
	FMChannel _fmch;
	FMChannel *fmch=&_fmch;



  int wout = snd_open_device("/dev/dsp1",O_WRONLY);
	fd_set readfds, writefds, sreadfds, swritefds;

	
	//midiparser_common_t *parser = NULL;
    
    int midistatus = 0;
    int tmp = AFMT_S16_NE;
    fm_set_sample_rate(sample_rate);
    stereo = dsp_createfilter(cx,cy,sizeof(cx)/sizeof(double),sizeof(cy)/sizeof(double));
    if(!stereo){
  	  return 2;
    }


	if(argc>1){
		mididev = argv[1];
	}

  int midiin = open(mididev,O_RDONLY,0);
  if(midiin<0) {
    printf("Cannot open %s\n", mididev);
    return -1;
  }


  if (ioctl (wout, SNDCTL_DSP_SETFMT, &tmp) == -1 || tmp != AFMT_S16_NE)
    {
      close (wout);
      printf ("Device doesn't support the native 16 bit sample format (%x)\n",
	      tmp);
      return -1;
    }


int channels = 2; /* 1=mono, 2=stereo */
if (ioctl(wout, SNDCTL_DSP_CHANNELS, &channels) == -1) {
/* Fatal error */
perror("SNDCTL_DSP_CHANNELS");
exit(1);
}
if (channels != 2)
{
	exit(1);
/* The device doesn't support stereo mode ... */
}


  if (ioctl (wout, SNDCTL_DSP_SPEED, &sample_rate) == -1)
    {
      perror ("SNDCTL_DSP_SPEED");
      exit (-1);
    }






	snd_set_buffer(wout,9,12);

/*	
  if ((parser = midiparser_create (midi_callback, NULL)) == NULL)
    {
      fprintf (stderr, "Creating a MIDI parser failed\n");
      exit (-1);
    }
*/

	
    if(wout==-1)
		return 0;

    fmc_init(fmch, 31);
	
	
    //cp_init();

    i=0;
    j=0;

	double olds = 0.0;
	seqon = 0;
	int lastnote = -1;
	midiParserInit(&mp1);

	double mvol = 1;

	struct timeval tv;

    while(running){
		int srv;
		FD_ZERO (&readfds);
		FD_ZERO (&writefds);
		FD_SET(midiin, &readfds);
		FD_SET(wout, &writefds);
		srv = select(midiin+1,&readfds,&writefds,NULL,NULL); 
		if( srv>0 && FD_ISSET(midiin, &readfds) ){
			unsigned char buffer[256];
			int l, i;

			  if ((l = read (midiin, buffer, sizeof (buffer))) == -1)
			    {
			      perror ("MIDI read");
			      exit (-1);
			    }

			  if (l > 0){
				for(i=0;i<l;i++){
					unsigned char r = buffer[i];
					if(midiParser(&mp1,r,&me1)) {
					  printf("Here %d %d %d\n",me1.cmd, me1.p1, me1.p2);
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
								else if(me1.p1 == 3){
								  printf("Here %d\n", me1.p2);
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
								else if(me1.p1 == 49){
									mvol = 5+me1.p2;
									mvol /= 10.0;
								}
									
							break;
						}
					}
				}
			 }
		} // MIDI

		/*Audio*/
		if(srv>0 && FD_ISSET(wout, &writefds)) {
			int oi;
			for(oi=0;oi<BUFFERLEN;oi+=4) {
				a=0.0;

				double ac=0.0;
				int cc = 0;


				a=fmc_output(fmch);
				//a = sin(440*3.14*i/44100);		
				//i++;
		    //printf("%f\n",a);
				oz=(double)a*60000.0*mvol;
		//		oz = oz * 0.2 + olds * 0.8;
		//		olds = oz;
		
				if(oz<-32000){
					oz=-32000;
				}

				if(oz>32000){
					oz=32000;
				}

		
		//		oz = oz / 2 + dsp_filter_run(stereo,oz) / 2;
				t = oz;
				short t2 = t;
		
/*				if( id >= delayBufferSize )
					id = 0;
				jd = id - (fDlyTime * (double)delayBufferSize);
				if( jd < 0 )
				jd += delayBufferSize;
				double  ch2 = DlyBuffer[ id++ ] = oz + (DlyBuffer[ jd ] * fFeedback);
				short t2 = ch2;
		
				if( idL >= delayBufferSize )
					idL = 0;
				jdL = idL - (fDlyTimeL * (double)delayBufferSize);
				if( jdL < 0 )
				jdL += delayBufferSize;
				double  ch2L = DlyBufferL[ idL++ ] = oz + (DlyBufferL[ jd ] * fFeedbackL);
				t = ch2L;*/
	
				output[oi+1] = t >> 8;
				output[oi] = t & 0xFF;
				output[oi+2] = t2 & 0xFF;
				output[oi+3] = t2>>8;
			}
			snd_write_sample(wout,output,BUFFERLEN);
		}
    }	
    snd_close_device(wout);

    return 0;
}
