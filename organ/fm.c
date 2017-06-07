#include <stdio.h>
#include <math.h>
#include "include/env_data.h"
#include "include/fm.h"
#include "include/sinewave.c"

#define MNR 4294967296.0

int SAMPLERATE=8000;
int N = 8000;
int N_2 = 4000;


void fm_set_sample_rate(int s){
	SAMPLERATE = s;
	N = s;
	N_2 = s/2;
}

/***********************************/


void fmc_init(FMChannel *fmc, VoiceGroup *vg, int nvoices)
{
  fmc->vg = vg;
  fmc->chd.sampleRate = SAMPLERATE;
  fmc->chd.waveLength = WAVELENGTH;
  fmc->alg = 0;
  fmc->nvoices = nvoices;
  int c;
  for(c=0;c<128;c++)
    fmc->keybuffer[c]=-1;
  for(c=0;c<32;c++)
    fmc->voice_on[c]=-1;

  fmc->chd.vib   =  1.0;
  fmc->chd.bend  =  1.0;
  fmc->vib_depth =  0;
  fmc->vib_rate  =  4;

  for(c=0;c<nvoices;c++)
    fmv_init(&fmc->voice[c], &fmc->chd);

  for(c=0;c<fmc->nvoices*6;c++) {
    fmc->openv[c] = 1.0;
  }

  for(c=0; c<6;c++) {
    fmc->chd.opd[c].sustain = env_curve[512];
    fmc->chd.opd[c].env_l1  = 99.0/100.0;
    fmc->chd.opd[c].env_l2  = 75.0/100.0;
    fmc->chd.opd[c].env_l3  = 50.0/100.0;
    fmc->chd.opd[c].env_l4  = 0.0;
    fmc->chd.opd[c].env_r1  = (50.0/fmc->chd.sampleRate);
    fmc->chd.opd[c].env_r2  = (20.0/fmc->chd.sampleRate);
    fmc->chd.opd[c].env_r3  = (10.0/fmc->chd.sampleRate);
    fmc->chd.opd[c].env_r4  = (10.0/fmc->chd.sampleRate);

    fmc->chd.opd[c].attackrate = (50.0/fmc->chd.sampleRate) * FM_ENV_HOLDERMAX;
    fmc->chd.opd[c].decayrate  = (10.0/fmc->chd.sampleRate) * FM_ENV_HOLDERMAX;
    fmc->chd.opd[c].releaserate  = (10.0/fmc->chd.sampleRate) * FM_ENV_HOLDERMAX;
    fmc->chd.opd[c].vo = 1.0;
    fmc->chd.opd[c].sfreq = 440.0/4;
  }

  fmc->chd.opd[0].mf = 0.5;
  fmc->chd.opd[1].mf = 1.0;
  fmc->chd.opd[2].mf = 2.0;
  fmc->chd.opd[3].mf = 3.0; 
  fmc->chd.opd[4].mf = 4.0;
  fmc->chd.opd[5].mf = 8.0;

  lfo_init(&fmc->vibop,SAMPLERATE,WAVELENGTH,waveform);
  lfo_setfreq(&fmc->vibop,fmc->vib_rate);
}

void fmc_loadProgram(FMChannel *fmc, int prgm) {
  prgm %= 32;
  int o;
  for( o=0;o<6; o++ )
  {
    fmc_op_env_l1(fmc, o, patch_get_l1(prgm,o) );
    fmc_op_env_l2(fmc, o, patch_get_l2(prgm,o) );
    fmc_op_env_l3(fmc, o, patch_get_l3(prgm,o) );
    fmc_op_env_l4(fmc, o, patch_get_l4(prgm,o) );

    fmc_op_env_r1(fmc, o, patch_get_r1(prgm,o) );
    fmc_op_env_r2(fmc, o, patch_get_r2(prgm,o) );
    fmc_op_env_r3(fmc, o, patch_get_r3(prgm,o) );
    fmc_op_env_r4(fmc, o, patch_get_r4(prgm,o) );

    fmc_opattack(fmc, o, patch_get_attackrate(prgm,o) );
    fmc_opdecay(fmc, o, patch_get_decayrate(prgm,o) );
    fmc_opsustain(fmc, o, patch_get_sustain(prgm,o) );
    fmc_oprelease(fmc, o, patch_get_releaserate(prgm,o) );
    fmc_opmul( fmc, o, patch_get_mf(prgm,o) );
    fmc->chd.opd[o].sfreq = patch_get_sfreq(prgm,o);
    fmc_opvol(fmc, o, patch_get_op_volume(prgm,o) );
  }

  fmc_setAlg(fmc, patch_get_algorithm(prgm) );
  fmc_feedback(fmc, patch_get_feedback(prgm) );
}

void fmc_lfoDepth(FMChannel *fmc, int depth) {
  double d = (depth/127.0)*0.1;
  fmc->vib_depth = d;
}

void fmc_pitchBend(FMChannel *fmc, int bend) {
  double b = bend / 8192.0;
  b/=3.0;
  fmc->chd.bend = pow(2,b);
//  printf("BEND Ratio: %f\n", fmc->chd.bend);
}

void fmc_setAlg(FMChannel *fmc, int a)
{
	int c;
	if(a<0)
		a=0;
	a = a%32;
	fmc->alg = a;
	fmc->chd.alg = a;
}

void fmc_keyon(FMChannel *fmc, int key, int vel) {
	if(key >= 127 || key<0)
		return;
	
	vel %= 128;
	key %= 128;

	if(vel==0){
		fmc_keyoff(fmc,key,0);
		return;
	}

	fmc->keybuffer[key]=vel;
	int c;
	int m = fmc->nvoices;
	int a = -1;
	int p = -1;

	for(c=0;c<m;c++){
		if(a==-1 && fmc->voice_on[c]==-1)
			a = c;
		if(p==-1 && fmc->voice_on[c]==key)
			p = c;	
	}

	if(p==-1){
		if(a==-1)
			return;
		p=a;
		fmc->voice_on[p] = key;
	}

	int octave = key/12;
	printf("Key On voice[%d]\n",p);
	fmv_keyon(&fmc->voice[p],freqTable[key], vel,octave);
		
}

void fmc_keyoff(FMChannel *fmc, int key,int vel) 
{
	if(key >= 127 || key<0)
		return;
	int c;
	int a=-1;
	int m = fmc->nvoices;
	key %= 128;
	for(c=0;c<m;c++){
		if(fmc->voice_on[c]==key){
			fmc->voice_on[c] = -2;
			fmv_keyoff(&fmc->voice[c]);
			break;
		}
	}	
}

void fmc_allnotesoff(FMChannel *fmc)
{
	int c;
	int m = fmc->nvoices;

	for(c=0;c<m;c++){
		if( fmc->voice_on[c]!=-1 ) {
			fmc->voice_on[c] = -1;
			fmv_keyoff(&fmc->voice[c]);
		}
	}	
}

void fmc_opvol(FMChannel *fmc, int op, int vol){
	int c;
	if(vol<0 || vol>127 || op<0 || op>5)
		return;
	synth_t v = (vol*vol)/(16169.0);

  fmc->chd.opd[op].vo = v;

  int co;
	for(c=0;c<fmc->nvoices;c++) {
	  co = c*6;
	  fmc->openv[co+op] = v;
  }
}

void fmc_feedback(FMChannel *fmc, int feedback)
{
  //fmc->chd.fbr = (feedback*feedback)/(127.0*127.0);
  fmc->chd.fbr = feedback*7.0/(127.0*50.0);
}


void fmc_opattack(FMChannel *fmc, int op, int a)
{
  synth_t rate =  pow(10.0,(a-16.0)/32.0);
  //synth_t rate =  a*10.0/127.0;
  rate/=fmc->chd.sampleRate;
  rate *= FM_ENV_HOLDERMAX;

  op %= 6;
  fmc->chd.opd[op].attackrate = rate;
}


#define RATEDIV 2.0

void fmc_op_env_r1(FMChannel *fmc, int op, int a)
{
  op%=6;
  fmc->chd.opd[op].env_r1 = pow(2,a/12.0)/(RATEDIV*fmc->chd.sampleRate);
  printf("Set r1 to %f\n", fmc->chd.opd[op].env_r1 );
}


void fmc_op_env_r2(FMChannel *fmc, int op, int a)
{
  op%=6;
  fmc->chd.opd[op].env_r2 = pow(2,a/12.0)/(RATEDIV*fmc->chd.sampleRate);
  printf("Set r2 to %f\n", fmc->chd.opd[op].env_r2 );
}

void fmc_op_env_r3(FMChannel *fmc, int op, int a)
{
  op%=6;
  fmc->chd.opd[op].env_r3 = pow(2,a/12.0)/(RATEDIV*fmc->chd.sampleRate);
  printf("Set r3 to %f\n", fmc->chd.opd[op].env_r3 );
}

void fmc_op_env_r4(FMChannel *fmc, int op, int a)
{
  op%=6;
  fmc->chd.opd[op].env_r4 = pow(2,a/12.0)/(RATEDIV*fmc->chd.sampleRate);
  printf("Set r4 to %f\n", fmc->chd.opd[op].env_r4 );
}


void fmc_opdecay(FMChannel *fmc, int op, int a)
{
  synth_t rate =  pow(10.0,(a-16.0)/32.0);
  //synth_t rate =  a*10.0/127.0;
  rate/=fmc->chd.sampleRate;
  rate *= FM_ENV_HOLDERMAX;

  op %= 6;
  fmc->chd.opd[op].decayrate = rate;
}

void fmc_opsustain(FMChannel *fmc, int op, int a)
{
  op%=6;
  fmc->chd.opd[op].sustain = env_curve[(a<<4)%1024];
}

void fmc_op_env_l1(FMChannel *fmc, int op, int a)
{
  op%=6;
  fmc->chd.opd[op].env_l1 = a/99.0;
}

void fmc_op_env_l2(FMChannel *fmc, int op, int a)
{
  op%=6;
  fmc->chd.opd[op].env_l2 = a/99.0;
}

void fmc_op_env_l3(FMChannel *fmc, int op, int a)
{
  op%=6;
  fmc->chd.opd[op].env_l3 = a/99.0;
}

void fmc_op_env_l4(FMChannel *fmc, int op, int a)
{
  op%=6;
  fmc->chd.opd[op].env_l4 = a/99.0;
}


void fmc_oprelease(FMChannel *fmc, int op, int a)
{
  synth_t rate =  pow(10.0,(a-16.0)/32.0);
  //synth_t rate =  a*10.0/127.0;
  rate/=fmc->chd.sampleRate;
  rate *= FM_ENV_HOLDERMAX;

  op%=6;
  fmc->chd.opd[op].releaserate = rate;
}


void fmv_opattack(FMVoice *fmv, int op, int a)
{
}

void fmv_opdecay(FMVoice *fmv, int op, int a)
{

}

void fmv_opsustain(FMVoice *fmv, int op, int a)
{

}

void fmv_oprelease(FMVoice *fmv, int op, int a)
{
}

void fmv_feedback(FMVoice *fmv, int feedback)
{
}


void fmc_opmul(FMChannel *fmc, int op, int mul){
	int c;
	synth_t m;
	if(mul<0)
	  fmc->chd.opd[op].mf = -1;
	if(mul<0 || mul>31 || op<0 || op>5)
		return;
	m = mfTable[mul];
	fmc->chd.opd[op].mf = m;
	for(c=0;c < fmc->nvoices; c++)
		fmv_opmul(&fmc->voice[c], op,m);
}


synth_t fmc_output(FMChannel *fmc)
{
  int c;
  int m = fmc->nvoices;
  synth_t ac = 0.0;
  synth_t on = 16;
  fmc->chd.vib = (lfo_get(&fmc->vibop, fmc->vib_depth)*fmc->chd.bend/fmc->chd.sampleRate)*fmc->chd.waveLength;
  for(c=0;c<m;c++){
    if(fmc->voice_on[c]==-2) {
      if(
             fmc->voice[c].op1.envstage2 == FM_ENV_OFF && fmc->voice[c].op2.envstage2 == FM_ENV_OFF
          && fmc->voice[c].op3.envstage2 == FM_ENV_OFF && fmc->voice[c].op4.envstage2 == FM_ENV_OFF
          && fmc->voice[c].op5.envstage2 == FM_ENV_OFF && fmc->voice[c].op6.envstage2 == FM_ENV_OFF
      ) {
        //printf("Voice %d shutdown\n", c);
        fmc->voice_on[c]=-1;
      } else {
        ac += fmv_get(&fmc->voice[c], &fmc->chd)*fmc->voice[c].vel;
      }
    }
    else if(fmc->voice_on[c]!=-1) {
      ac += fmv_get(&fmc->voice[c], &fmc->chd)*fmc->voice[c].vel;
    }
  }


	ac/=on;
	return ac;
}

void fmv_keyon(FMVoice *fmv, float freq, int vel, int octave) 
{
  fmv->freq = freq;
  fmv->vel = vel/127.0; //(vel*vel)/(127.0*127.0);
  synth_t mf1 = fmv->chd->opd[0].mf;
  synth_t mf2 = fmv->chd->opd[1].mf;
  synth_t mf3 = fmv->chd->opd[2].mf;
  synth_t mf4 = fmv->chd->opd[3].mf;
  synth_t mf5 = fmv->chd->opd[4].mf;
  synth_t mf6 = fmv->chd->opd[5].mf;

  fmo_keyon(&fmv->op1, mf1 > 0 ? SMUL(freq, mf1) : fmv->chd->opd[0].sfreq, vel, octave);
  fmo_keyon(&fmv->op2, mf2 > 0 ? SMUL(freq, mf2) : fmv->chd->opd[1].sfreq, vel, octave);
  fmo_keyon(&fmv->op3, mf3 > 0 ? SMUL(freq, mf3) : fmv->chd->opd[2].sfreq, vel, octave);
  fmo_keyon(&fmv->op4, mf4 > 0 ? SMUL(freq, mf4) : fmv->chd->opd[3].sfreq, vel, octave);
  fmo_keyon(&fmv->op5, mf5 > 0 ? SMUL(freq, mf5) : fmv->chd->opd[4].sfreq, vel, octave);
  fmo_keyon(&fmv->op6, mf6 > 0 ? SMUL(freq, mf6) : fmv->chd->opd[5].sfreq, vel, octave);

//	printf("Fmv key on: %f %d %d\n", freq, vel, octave);
}

void fmv_setfreq(FMVoice *fmv, synth_t freq)
{
  fmv->freq = freq;
  synth_t mf1 = fmv->chd->opd[0].mf;
  synth_t mf2 = fmv->chd->opd[1].mf;
  synth_t mf3 = fmv->chd->opd[2].mf;
  synth_t mf4 = fmv->chd->opd[3].mf;
  synth_t mf5 = fmv->chd->opd[4].mf;
  synth_t mf6 = fmv->chd->opd[5].mf;

  fmo_setFreq(&fmv->op1, mf1 > 0 ? SMUL(freq, mf1) : fmv->chd->opd[0].sfreq);
  fmo_setFreq(&fmv->op2, mf2 > 0 ? SMUL(freq, mf2) : fmv->chd->opd[1].sfreq);
  fmo_setFreq(&fmv->op3, mf3 > 0 ? SMUL(freq, mf3) : fmv->chd->opd[2].sfreq);
  fmo_setFreq(&fmv->op4, mf4 > 0 ? SMUL(freq, mf4) : fmv->chd->opd[3].sfreq);
  fmo_setFreq(&fmv->op5, mf5 > 0 ? SMUL(freq, mf5) : fmv->chd->opd[4].sfreq);
  fmo_setFreq(&fmv->op6, mf6 > 0 ? SMUL(freq, mf6) : fmv->chd->opd[5].sfreq);
}

void fmv_keyoff(FMVoice *fmv) 
{
	fmo_keyoff(&fmv->op1);
	fmo_keyoff(&fmv->op2);
	fmo_keyoff(&fmv->op3);
	fmo_keyoff(&fmv->op4);
	fmo_keyoff(&fmv->op5);
	fmo_keyoff(&fmv->op6);
}

void fmv_init(FMVoice *fmv, FMChannelData *chd)
{
  fmv->chd = chd;
  fmv->chd->alg = 0;
  fmv->feedback = 0;
  fmv->freq = 0;
  fmv->vel = 1;

  fmv->chd->fbr = 0.0;

  fmo_init( &(fmv->op1), chd, &chd->opd[0] );
  fmo_init( &(fmv->op2), chd, &chd->opd[1] );
  fmo_init( &(fmv->op3), chd, &chd->opd[2] );
  fmo_init( &(fmv->op4), chd, &chd->opd[3] );
  fmo_init( &(fmv->op5), chd, &chd->opd[4] );
  fmo_init( &(fmv->op6), chd, &chd->opd[5] );
}

void fmv_setmode(FMVoice *fmv, int mode)
{
/*  mode %= 32;*/
/*  fmv->alg = mode;*/
/*  fmv->feedback = 0;*/
}

void fmv_opvol(FMVoice *fmv, int op, synth_t vol)
{
/*	fmv->vo[op] = vol;*/
}

void fmv_opmul(FMVoice *fmv, int op, synth_t mul)
{
/*	synth_t freq = fmv->freq;*/
/*	fmv->mf[op] = mul;*/
/*	fmv_setfreq(fmv,fmv->freq);*/
}

synth_t fmv_get(FMVoice *fmv, FMChannelData *chd)
{
	synth_t 
		o1=V_0,
		o2=V_0,
		o3=V_0,
		o4=V_0,
		o5=V_0,
		o6=V_0;

	synth_t 
		v1 = chd->opd[0].vo,
		v2 = chd->opd[1].vo,
		v3 = chd->opd[2].vo,
		v4 = chd->opd[3].vo,
		v5 = chd->opd[4].vo,
		v6 = chd->opd[5].vo;
	synth_t output = V_0;

  const synth_t vib = chd->vib;

	synth_t fb = SMUL( fmv->feedback,fmv->chd->fbr );

	const int alg = fmv->chd->alg;
	switch(alg) {
		case 0:

			o2= SMUL( fmo_getOperatorOutput(&fmv->op2,  V_0, vib   ), v2 );
			o1= SMUL( fmo_getOperatorOutput(&fmv->op1,  o2,  vib  ), v1 );	

			o6= SMUL( fmo_getOperatorOutput(&fmv->op6,  fb,  vib  ), v6 );
			fb = o6;
			o5= SMUL( fmo_getOperatorOutput(&fmv->op5,  o6,  vib  ), v5 );
			o4= SMUL( fmo_getOperatorOutput(&fmv->op4,  o5,  vib  ), v4 );
			o3= SMUL( fmo_getOperatorOutput(&fmv->op3,  o4,  vib  ), v3 );
			
			output = o1+o3;
			output = SDIV(output,V_2);			
		break;
		case 1:

			o2=SMUL( fmo_getOperatorOutput(&fmv->op2,  fb,  vib  ), v2 );
			fb = o2;
			o1=SMUL( fmo_getOperatorOutput(&fmv->op1,  o2,  vib ), v1 );	

			o6=SMUL( fmo_getOperatorOutput(&fmv->op6,  V_0,  vib   ), v6 );
			o5=SMUL( fmo_getOperatorOutput(&fmv->op5,  o6,  vib  ), v5 );
			o4=SMUL( fmo_getOperatorOutput(&fmv->op4,  o5,  vib  ), v4 );
			o3=SMUL( fmo_getOperatorOutput(&fmv->op3,  o4,  vib ), v3 );
			
			output = o1+o3;
			output = SDIV(output,V_2);
		break;

		case 2:

			o3=SMUL( fmo_getOperatorOutput(&fmv->op3,  V_0,  vib  ), v3 );
			o2=SMUL( fmo_getOperatorOutput(&fmv->op2,  o3,  vib  ), v2 );
			o1=SMUL( fmo_getOperatorOutput(&fmv->op1,  o2,  vib  ), v1 );	

			o6=SMUL( fmo_getOperatorOutput(&fmv->op6,  fb,  vib  ), v6 );
			fb = o6;
			o5=SMUL( fmo_getOperatorOutput(&fmv->op5,  o6,  vib  ), v5 );
			o4=SMUL( fmo_getOperatorOutput(&fmv->op4,  o5,  vib  ), v4 );
			
			output = o1+o4;
			output = SDIV(output,V_2);			
		break;

		case 3:

			o3=SMUL( fmo_getOperatorOutput(&fmv->op3,  V_0,  vib  ), v3 );
			o2=SMUL( fmo_getOperatorOutput(&fmv->op2,  o3,  vib  ), v2 );
			o1=SMUL( fmo_getOperatorOutput(&fmv->op1,  o2,  vib  ), v1 );	

			o6=SMUL( fmo_getOperatorOutput(&fmv->op6,  fb,  vib  ), v6 );
			
			o5=SMUL( fmo_getOperatorOutput(&fmv->op5,  o6,  vib  ), v5 );
			o4=SMUL( fmo_getOperatorOutput(&fmv->op4,  o5,  vib  ), v4 );
			fb = o4;
			
			output = o1+o4;
			output = SDIV(output,V_2);			
		break;

		case 4:

			o2=SMUL( fmo_getOperatorOutput(&fmv->op2,  V_0,  vib  ), v2 );
			o1=SMUL( fmo_getOperatorOutput(&fmv->op1,  o2,  vib  ), v1 );	

			o4=SMUL( fmo_getOperatorOutput(&fmv->op4,  V_0,  vib   ), v4 );
			o3=SMUL( fmo_getOperatorOutput(&fmv->op3,  o4,  vib  ), v3 );

			o6=SMUL( fmo_getOperatorOutput(&fmv->op6,  fb,  vib  ), v6 );
			fb = o6;
			o5=SMUL( fmo_getOperatorOutput(&fmv->op5,  o6,  vib  ), v5 );
			
			output = o1+o3+o5;
			output = SDIV(output,V_3);			
		break;

		case 5:

			o2=SMUL( fmo_getOperatorOutput(&fmv->op2,  V_0,  vib  ), v2 );
			o1=SMUL( fmo_getOperatorOutput(&fmv->op1,  o2,  vib  ), v1 );	

			o4=SMUL( fmo_getOperatorOutput(&fmv->op4,  V_0,  vib   ), v4 );
			o3=SMUL( fmo_getOperatorOutput(&fmv->op3,  o4,  vib  ), v3 );

			o6=SMUL( fmo_getOperatorOutput(&fmv->op6,  fb,  vib  ), v6 );
			o5=SMUL( fmo_getOperatorOutput(&fmv->op5,  o6,  vib  ), v5 );
			fb = o5;
			
			output = o1+o3+o5;
			output = SDIV(output,V_3);			
		break;


		case 6:

			o2=SMUL( fmo_getOperatorOutput(&fmv->op2,  V_0,  vib  ), v2 );
			o1=SMUL( fmo_getOperatorOutput(&fmv->op1,  o2,  vib  ), v1 );	

			o6=SMUL( fmo_getOperatorOutput(&fmv->op6,  fb,  vib  ), v6 );
			fb = o6;
			o5=SMUL( fmo_getOperatorOutput(&fmv->op5,  o6,  vib  ), v5 );


			o4=SMUL( fmo_getOperatorOutput(&fmv->op4,  V_0,  vib     ), v4 );
			o3=SMUL( fmo_getOperatorOutput(&fmv->op3,  o4+o5,  vib ), v3 );

			
			output = o1+o3;
			output = SDIV(output,V_2);	
		break;


		case 7:

			o2=SMUL( fmo_getOperatorOutput(&fmv->op2,  V_0,  vib  ), v2 );
			o1=SMUL( fmo_getOperatorOutput(&fmv->op1,  o2,  vib  ), v1 );	

			o6=SMUL( fmo_getOperatorOutput(&fmv->op6,  V_0,  vib  ), v6 );
			o5=SMUL( fmo_getOperatorOutput(&fmv->op5,  o6,  vib  ), v5 );


			o4=SMUL( fmo_getOperatorOutput(&fmv->op4,  fb,  vib   ), v4 );
			fb = o4;
			o3=SMUL( fmo_getOperatorOutput(&fmv->op3,  o4+o5,  vib ), v3 );

			output = o1+o3;
			output = SDIV(output,V_2);
		break;


		case 8:

			o2=SMUL( fmo_getOperatorOutput(&fmv->op2,  fb,  vib  ), v2 );
			fb = o2;
			o1=SMUL( fmo_getOperatorOutput(&fmv->op1,  o2,  vib  ), v1 );	

			o6=SMUL( fmo_getOperatorOutput(&fmv->op6,  V_0,  vib  ), v6 );
			o5=SMUL( fmo_getOperatorOutput(&fmv->op5,  o6,  vib  ), v5 );


			o4=SMUL( fmo_getOperatorOutput(&fmv->op4,  V_0,  vib   ), v4 );
			o3=SMUL( fmo_getOperatorOutput(&fmv->op3,  o4+o5,  vib ), v3 );

			output = o1+o3;
			output = SDIV(output,V_2);
		break;


		case 9:
			o3=SMUL( fmo_getOperatorOutput(&fmv->op3,  fb,  vib ), v3 );
			fb = o3;
			o2=SMUL( fmo_getOperatorOutput(&fmv->op2,  o3,  vib  ), v2 );
			o1=SMUL( fmo_getOperatorOutput(&fmv->op1,  o2,  vib  ), v1 );	

			o6=SMUL( fmo_getOperatorOutput(&fmv->op6,  V_0,  vib  ), v6 );
			o5=SMUL( fmo_getOperatorOutput(&fmv->op5,  V_0,  vib  ), v5 );
			o4=SMUL( fmo_getOperatorOutput(&fmv->op4,  o5+o6,  vib   ), v4 );

			output = o1+o4;
			output = SDIV(output,V_2);			
		break;

		case 10:
			o3=SMUL( fmo_getOperatorOutput(&fmv->op3,  V_0,  vib ), v3 );
			o2=SMUL( fmo_getOperatorOutput(&fmv->op2,  o3,  vib  ), v2 );
			o1=SMUL( fmo_getOperatorOutput(&fmv->op1,  o2,  vib  ), v1 );	

			o6=SMUL( fmo_getOperatorOutput(&fmv->op6,  fb,  vib  ), v6 );
			fb = o6;
			o5=SMUL( fmo_getOperatorOutput(&fmv->op5,  V_0,  vib  ), v5 );

			o4=SMUL( fmo_getOperatorOutput(&fmv->op4,  o5+o6,  vib   ), v4 );

			output = o1+o4;
			output = SDIV(output,V_2);			
		break;

		case 11:
			
			o2=SMUL( fmo_getOperatorOutput(&fmv->op2,  fb,  vib  ), v2 );
			fb = o2;

			o6=SMUL( fmo_getOperatorOutput(&fmv->op6,  V_0,  vib  ), v6 );
			o5=SMUL( fmo_getOperatorOutput(&fmv->op5,  V_0,  vib  ), v5 );
			o4=SMUL( fmo_getOperatorOutput(&fmv->op4,  V_0,  vib  ), v4 );

			o1=SMUL( fmo_getOperatorOutput(&fmv->op1,  o2,  vib  ), v1 );	
			o3=SMUL( fmo_getOperatorOutput(&fmv->op3,  o4+o5+o6,  vib ), v3 );
			output = o1+o3;
			output = SDIV(output,V_2);			
		break;

		case 12:
			
			o2=SMUL( fmo_getOperatorOutput(&fmv->op2,  V_0,  vib  ), v2 );

			o6=SMUL( fmo_getOperatorOutput(&fmv->op6,  fb,  vib  ), v6 );
			fb = o6;
			o5=SMUL( fmo_getOperatorOutput(&fmv->op5,  V_0,  vib  ), v5 );
			o4=SMUL( fmo_getOperatorOutput(&fmv->op4,  V_0,  vib  ), v4 );

			o1=SMUL( fmo_getOperatorOutput(&fmv->op1,  o2,  vib  ), v1 );	
			o3=SMUL( fmo_getOperatorOutput(&fmv->op3,  o4+o5+o6,  vib ), v3 );
			output = o1+o3;
			output = SDIV(output,V_2);			
		break;


		case 13:
			
			o2=SMUL( fmo_getOperatorOutput(&fmv->op2,  V_0,  vib  ), v2 );

			o6=SMUL( fmo_getOperatorOutput(&fmv->op6,  fb,  vib  ), v6 );
			fb = o6;

			o5=SMUL( fmo_getOperatorOutput(&fmv->op5,  V_0,  vib  ), v5 );

			o4=SMUL( fmo_getOperatorOutput(&fmv->op4,  o5+o6,  vib  ), v4 );

			o1=SMUL( fmo_getOperatorOutput(&fmv->op1,  o2,  vib  ), v1 );	
			o3=SMUL( fmo_getOperatorOutput(&fmv->op3,  o4,  vib ), v3 );
			output = o1+o3;
			output = SDIV(output,V_2);			
		break;


		case 14:
			
			o2=SMUL( fmo_getOperatorOutput(&fmv->op2,  fb,  vib  ), v2 );
			fb = o2;

			o6=SMUL( fmo_getOperatorOutput(&fmv->op6,  V_0,  vib  ), v6 );
			o5=SMUL( fmo_getOperatorOutput(&fmv->op5,  V_0,  vib  ), v5 );

			o4=SMUL( fmo_getOperatorOutput(&fmv->op4,  o5+o6,  vib  ), v4 );

			o1=SMUL( fmo_getOperatorOutput(&fmv->op1,  o2,  vib  ), v1 );	
			o3=SMUL( fmo_getOperatorOutput(&fmv->op3,  o4,  vib ), v3 );
			output = o1+o3;
			output = SDIV(output,V_2);			
		break;


		case 15:
			
			o2=SMUL( fmo_getOperatorOutput(&fmv->op2,  V_0,  vib  ), v2 );

			o6=SMUL( fmo_getOperatorOutput(&fmv->op6,  fb,  vib  ), v6 );
			fb = o6;

			o5=SMUL( fmo_getOperatorOutput(&fmv->op5,  o6,  vib  ), v5 );

			o4=SMUL( fmo_getOperatorOutput(&fmv->op4,  V_0,  vib  ), v4 );
			o3=SMUL( fmo_getOperatorOutput(&fmv->op3,  o4,  vib ), v3 );

			o1=SMUL( fmo_getOperatorOutput(&fmv->op1,  o2+o3+o5,  vib  ), v1 );	
			
			output = o1;
						
		break;

		case 16:
			
			o2=SMUL( fmo_getOperatorOutput(&fmv->op2,  fb,  vib  ), v2 );
			fb = o2;

			o6=SMUL( fmo_getOperatorOutput(&fmv->op6,  V_0,  vib  ), v6 );


			o5=SMUL( fmo_getOperatorOutput(&fmv->op5,  o6,  vib  ), v5 );

			o4=SMUL( fmo_getOperatorOutput(&fmv->op4,  V_0,  vib  ), v4 );
			o3=SMUL( fmo_getOperatorOutput(&fmv->op3,  o4,  vib ), v3 );

			o1=SMUL( fmo_getOperatorOutput(&fmv->op1,  o2+o3+o5,  vib  ), v1 );	
			
			output = o1;
						
		break;

		case 17:
			
			o2=SMUL( fmo_getOperatorOutput(&fmv->op2,  V_0,  vib  ), v2 );

			o6=SMUL( fmo_getOperatorOutput(&fmv->op6,  V_0,  vib  ), v6 );

			o5=SMUL( fmo_getOperatorOutput(&fmv->op5,  o6,  vib  ), v5 );

			o4=SMUL( fmo_getOperatorOutput(&fmv->op4,  o5,  vib  ), v4 );

			o3=SMUL( fmo_getOperatorOutput(&fmv->op3,  fb,  vib ), v3 );
			fb = o3;

			o1=SMUL( fmo_getOperatorOutput(&fmv->op1,  o2+o3+o5,  vib  ), v1 );	
			
			output = o1;
						
		break;


		case 18:
			
			o6=SMUL( fmo_getOperatorOutput(&fmv->op6,  fb,  vib  ), v6 );
			fb = o6;

			o5=SMUL( fmo_getOperatorOutput(&fmv->op5,  o6,  vib  ), v5 );
			o4=SMUL( fmo_getOperatorOutput(&fmv->op4,  o6,  vib  ), v4 );

			o3=SMUL( fmo_getOperatorOutput(&fmv->op3,  V_0,  vib ), v3 );
			o2=SMUL( fmo_getOperatorOutput(&fmv->op2,  o3,  vib  ), v2 );
			o1=SMUL( fmo_getOperatorOutput(&fmv->op1,  o2,  vib  ), v1 );	
			
			output = o1 + o4 + o5;
			output = SDIV(output,V_3);			
		break;

		case 19:
			
			o6=SMUL( fmo_getOperatorOutput(&fmv->op6,  V_0,  vib  ), v6 );

			o5=SMUL( fmo_getOperatorOutput(&fmv->op5,  V_0,  vib  ), v5 );

			o4=SMUL( fmo_getOperatorOutput(&fmv->op4,  o5 + o6,  vib ), v4 );

			o3=SMUL( fmo_getOperatorOutput(&fmv->op3,  fb,  vib ), v3 );
			fb = o3;

			o2=SMUL( fmo_getOperatorOutput(&fmv->op2,  o3,  vib  ), v2 );
			o1=SMUL( fmo_getOperatorOutput(&fmv->op1,  o3,  vib  ), v1 );	
			
			output = o1 + o2 + o4;
			output = SDIV(output,V_3);			
		break;


		case 20:
			
			o6=SMUL( fmo_getOperatorOutput(&fmv->op6,  V_0,  vib  ), v6 );

			o5=SMUL( fmo_getOperatorOutput(&fmv->op5,  o6,  vib  ), v5 );

			o4=SMUL( fmo_getOperatorOutput(&fmv->op4,  o6,  vib  ), v4 );

			o3=SMUL( fmo_getOperatorOutput(&fmv->op3,  fb,  vib ), v3 );
			fb = o3;

			o2=SMUL( fmo_getOperatorOutput(&fmv->op2,  o3,  vib  ), v2 );
			o1=SMUL( fmo_getOperatorOutput(&fmv->op1,  o3,  vib  ), v1 );	
			
			output = o1 + o2 + o4 + o5;
			output = SDIV(output,V_4);			
		break;

		case 21:
			
			o6=SMUL( fmo_getOperatorOutput(&fmv->op6,  fb,  vib  ), v6 );
			fb = o6;

			o5=SMUL( fmo_getOperatorOutput(&fmv->op5,  o6,  vib  ), v5 );

			o4=SMUL( fmo_getOperatorOutput(&fmv->op4,  o6,  vib  ), v4 );

			o3=SMUL( fmo_getOperatorOutput(&fmv->op3,  o6,  vib ), v3 );


			o2=SMUL( fmo_getOperatorOutput(&fmv->op2,  V_0,  vib  ), v2 );
			o1=SMUL( fmo_getOperatorOutput(&fmv->op1,  o2,  vib  ), v1 );	
			
			output = o1 + o3 + o4 + o5;
			output = SDIV(output,V_4);			
		break;


		case 22:
			
			o6=SMUL( fmo_getOperatorOutput(&fmv->op6,  fb,  vib  ), v6 );
			fb = o6;

			o5=SMUL( fmo_getOperatorOutput(&fmv->op5,  o6,  vib  ), v5 );

			o4=SMUL( fmo_getOperatorOutput(&fmv->op4,  o6,  vib  ), v4 );

			o3=SMUL( fmo_getOperatorOutput(&fmv->op3,  V_0,  vib ), v3 );


			o2=SMUL( fmo_getOperatorOutput(&fmv->op2,  o3,  vib  ), v2 );
			o1=SMUL( fmo_getOperatorOutput(&fmv->op1,  V_0,  vib  ), v1 );	
			
			output = o1 + o2 + o4 + o5;
			output = SDIV(output,V_4);			
		break;


		case 23:
			
			o6=SMUL( fmo_getOperatorOutput(&fmv->op6,  fb,  vib  ), v6 );
			fb = o6;

			o5=SMUL( fmo_getOperatorOutput(&fmv->op5,  o6,  vib  ), v5 );

			o4=SMUL( fmo_getOperatorOutput(&fmv->op4,  o6,  vib  ), v4 );

			o3=SMUL( fmo_getOperatorOutput(&fmv->op3,  o6,  vib ), v3 );


			o2=SMUL( fmo_getOperatorOutput(&fmv->op2,  V_0,  vib  ), v2 );
			o1=SMUL( fmo_getOperatorOutput(&fmv->op1,  V_0,  vib  ), v1 );	
			
			output = o1 + o2 + o3 + o4 + o5;
			output = SDIV(output,V_5);			
		break;


		case 24:
			
			o6=SMUL( fmo_getOperatorOutput(&fmv->op6,  fb,  vib  ), v6 );
			fb = o6;

			o5=SMUL( fmo_getOperatorOutput(&fmv->op5,  o6,  vib  ), v5 );

			o4=SMUL( fmo_getOperatorOutput(&fmv->op4,  o6,  vib  ), v4 );

			o3=SMUL( fmo_getOperatorOutput(&fmv->op3,  V_0,  vib ), v3 );


			o2=SMUL( fmo_getOperatorOutput(&fmv->op2,  V_0,  vib  ), v2 );
			o1=SMUL( fmo_getOperatorOutput(&fmv->op1,  V_0,  vib  ), v1 );	
			
			output = o1 + o2 + o3 + o4 + o5;
			output = SDIV(output,V_5);			
		break;

		case 25:
			
			o6=SMUL( fmo_getOperatorOutput(&fmv->op6,  fb,  vib  ), v6 );
			fb = o6;

			o5=SMUL( fmo_getOperatorOutput(&fmv->op5,  V_0,  vib  ), v5 );

			o4=SMUL( fmo_getOperatorOutput(&fmv->op4,  o5 + o6,  vib  ), v4 );

			o3=SMUL( fmo_getOperatorOutput(&fmv->op3,  V_0,  vib ), v3 );


			o2=SMUL( fmo_getOperatorOutput(&fmv->op2,  o3,  vib  ), v2 );
			o1=SMUL( fmo_getOperatorOutput(&fmv->op1,  V_0,  vib  ), v1 );	
			
			output = o1 + o2 + o4;
			output = SDIV(output,V_3);			
		break;

		case 26:
			
			o6=SMUL( fmo_getOperatorOutput(&fmv->op6,  V_0,  vib  ), v6 );

			o5=SMUL( fmo_getOperatorOutput(&fmv->op5,  V_0,  vib  ), v5 );

			o4=SMUL( fmo_getOperatorOutput(&fmv->op4,  o5 + o6,  vib  ), v4 );

			o3=SMUL( fmo_getOperatorOutput(&fmv->op3,  fb,  vib ), v3 );
			fb = o3;

			o2=SMUL( fmo_getOperatorOutput(&fmv->op2,  o3,  vib  ), v2 );
			o1=SMUL( fmo_getOperatorOutput(&fmv->op1,  V_0,  vib  ), v1 );	
			
			output = o1 + o2 + o4;
			output = SDIV(output,V_3);			
		break;


		case 27:
			
			o6=SMUL( fmo_getOperatorOutput(&fmv->op6,  V_0,  vib  ), v6 );

			o5=SMUL( fmo_getOperatorOutput(&fmv->op5,  fb,  vib ), v5 );
			fb = o5;

			o4=SMUL( fmo_getOperatorOutput(&fmv->op4,  o5,  vib  ), v4 );

			o3=SMUL( fmo_getOperatorOutput(&fmv->op3,  o4,  vib ), v3 );


			o2=SMUL( fmo_getOperatorOutput(&fmv->op2,  V_0,  vib  ), v2 );
			o1=SMUL( fmo_getOperatorOutput(&fmv->op1,  o2,  vib  ), v1 );	
			
			output = o1 + o3 + o6;
			output = SDIV(output,V_3);			
		break;


		case 28:
			
			o6=SMUL( fmo_getOperatorOutput(&fmv->op6,  fb,  vib  ), v6 );
			fb = o6;

			o5=SMUL( fmo_getOperatorOutput(&fmv->op5,  o6,  vib  ), v5 );

			o4=SMUL( fmo_getOperatorOutput(&fmv->op4,  V_0,  vib  ), v4 );

			o3=SMUL( fmo_getOperatorOutput(&fmv->op3,  o4,  vib ), v3 );


			o2=SMUL( fmo_getOperatorOutput(&fmv->op2,  V_0,  vib  ), v2 );
			o1=SMUL( fmo_getOperatorOutput(&fmv->op1,  V_0,  vib  ), v1 );	
			
			output = o1 + o2 + o3 + o5;
			output = SDIV(output,V_4);			
		break;

		case 29:
			
			o6=SMUL( fmo_getOperatorOutput(&fmv->op6,  V_0,  vib  ), v6 );

			o5=SMUL( fmo_getOperatorOutput(&fmv->op5,  fb,  vib ), v5 );
			fb = o5;

			o4=SMUL( fmo_getOperatorOutput(&fmv->op4,  o5,  vib  ), v4 );

			o3=SMUL( fmo_getOperatorOutput(&fmv->op3,  o4,  vib ), v3 );


			o2=SMUL( fmo_getOperatorOutput(&fmv->op2,  V_0,  vib  ), v2 );
			o1=SMUL( fmo_getOperatorOutput(&fmv->op1,  V_0,  vib  ), v1 );	
			
			output = o1 + o2 + o3 + o6;
			output = SDIV(output,V_4);			
		break;


		case 30:
			
			o6=SMUL( fmo_getOperatorOutput(&fmv->op6,  fb,  vib  ), v6 );
			fb = o6;

			o5=SMUL( fmo_getOperatorOutput(&fmv->op5,  o6,  vib  ), v5 );

			o4=SMUL( fmo_getOperatorOutput(&fmv->op4,  V_0,  vib  ), v4 );

			o3=SMUL( fmo_getOperatorOutput(&fmv->op3,  V_0,  vib ), v3 );


			o2=SMUL( fmo_getOperatorOutput(&fmv->op2,  V_0,  vib  ), v2 );
			o1=SMUL( fmo_getOperatorOutput(&fmv->op1,  V_0,  vib  ), v1 );	
			
			output = o1 + o2 + o3 + o4 + o5;
			output = SDIV(output,V_5);			
		break;

		case 31:
			
			o6=SMUL( fmo_getOperatorOutput(&fmv->op6,  fb,  vib  ), v6 );
			fb = o6;


			o5=SMUL( fmo_getOperatorOutput(&fmv->op5,  V_0,  vib  ), v5 );

			o4=SMUL( fmo_getOperatorOutput(&fmv->op4,  V_0,  vib  ), v4 );

			o3=SMUL( fmo_getOperatorOutput(&fmv->op3,  V_0,  vib ), v3 );


			o2=SMUL( fmo_getOperatorOutput(&fmv->op2,  V_0,  vib  ), v2 );
			o1=SMUL( fmo_getOperatorOutput(&fmv->op1,  V_0,  vib  ), v1 );	
			
			output = o1 + o2 + o3 + o4 + o5 + o6;
			output = SDIV(output,V_6);			
		break;

		case 32:
			
			o6=SMUL( fmo_getOperatorOutput(&fmv->op6,  V_0,  vib  ), v6 );
			//fb = o6;


			o5=SMUL( fmo_getOperatorOutput(&fmv->op5,  V_0,  vib  ), v5 );

			o4=SMUL( fmo_getOperatorOutput(&fmv->op4,  V_0,  vib  ), v4 );

			o3=SMUL( fmo_getOperatorOutput(&fmv->op3,  V_0,  vib ), v3 );


			o2=SMUL( fmo_getOperatorOutput(&fmv->op2,  V_0,  vib  ), v2 );
			o1=SMUL( fmo_getOperatorOutput(&fmv->op1,  V_0,  vib  ), v1 );	
			
			output = o1; //+ o2 + o3 + o4 + o5 + o6;
			output = SDIV(output,V_6);			
		break;


/*CONTINUE*/
		


	}
	
	fmv->feedback = fb;
	return output;
}




/*******************************************************************/
void fmo_init(FMOperator *fmo, FMChannelData *chd, FMChannelOperatorData *opd)
{
  fmo->opd = opd;
  fmo->chd = chd;
  fmo->sampleRate = chd->sampleRate;
  fmo->waveLength = chd->waveLength;
	//fmo->waveforms  = FM_waves;
  fmo->envlinear      = V_1;
  fmo->envelope       = V_0;
  fmo->old_env        = V_0;
  fmo->phase          = 0;
  fmo->phaseIncrement = 0;
  fmo->wf = 0;
  fmo->sv = V_0;

  fmo->envstage  = FM_ENV_OFF;
  fmo->envstage2 = FM_ENV_OFF;

  fmo->env_pos = 0;

  fmo->counter = 0;
}

synth_t fmo_calculateIncrement(FMOperator *fmo,synth_t begin, synth_t end, synth_t period) {
	return (end-begin)/fmo->sampleRate * (1.0/period);
}


void fmo_setFreq(FMOperator *fmo, synth_t freq){
  if(freq> 0 && freq < fmo->sampleRate/2.0) {
    if(freq > 1000 )
      fmo->sv = 1.0/log10(freq); //(2*log10(freq));
    else
      fmo->sv = 1.0;
    fmo->phaseIncrement = (freq/fmo->sampleRate) * PHASEMAX;
  }
  else {
    fmo->phaseIncrement = 0;
  }
  printf("Inc %f %d -> %f\n", freq, fmo->phaseIncrement, fmo->sv);
}

void fmo_setWave(FMOperator *fmo,int wf){
	fmo->wf = 0;
}

void fmo_setChannelData(FMOperator *fmo, FMChannelData *chd, FMChannelOperatorData *opd)
{
  fmo->opd = opd;
  fmo->chd = chd;
}

void fmo_keyon(FMOperator *fmo, float freq, int v, int octave)
{
  synth_t dt = 0.0;

  fmo_setFreq(fmo,freq);


/*  switch(fmo->envstage){*/
/*//    case FM_ENV_RELEASE:*/
/*    case FM_ENV_DECAY:*/
/*      fmo->envstage = FM_ENV_ATTACK;*/
/*    break;*/
/*    case FM_ENV_ATTACK:*/
/*    break;*/
/*    default:*/
/*      if( fmo->envstage == FM_ENV_OFF ) {*/
/*        //fmo->phase = 0;*/
/*        fmo->env_pos = 0;*/
/*      }*/
/*      fmo->envstage = FM_ENV_ATTACK;*/
/*  }*/



  switch(fmo->envstage2){
    case FM_ENV_R4:
    case FM_ENV_RESET:
    break;
    case FM_ENV_OFF:
      fmo->el1 = fmo->opd->env_l1;
      fmo->el2 = fmo->opd->env_l2;
      fmo->el3 = fmo->opd->env_l3;
      fmo->el4 = fmo->opd->env_l4;
      
      printf("%f %f %f %f\n", fmo->el1, fmo->el2, fmo->el3, fmo->el4);

      if( fmo->el1 >= fmo->el4 ) {
        fmo->er1 = fmo->opd->env_r1;
      }
      else {
        fmo->er1 = - fmo->opd->env_r1;
      }

      if( fmo->el2 >= fmo->el1 ) {
        fmo->er2 = fmo->opd->env_r2;
      }
      else {
        fmo->er2 = - fmo->opd->env_r2;
      }

      if( fmo->el3 >= fmo->el2 ) {
        fmo->er3 = fmo->opd->env_r3;
      }
      else {
        fmo->er3 = - fmo->opd->env_r3;
      }

      if( fmo->el4 >= fmo->el3 ) {
        fmo->er4 = fmo->opd->env_r4;
      }
      else {
        fmo->er4 = - fmo->opd->env_r4;
      }

      dt = fmo->el4 - fmo->el3;
      if( dt < 0 ) {
        dt = -dt;
      }

      if(dt > 0.001) {
        fmo->have_sustain = 1;
      }
      else {
        fmo->have_sustain = 1;
      }

      fmo->eflags = 0;

      dt = fmo->el2 - fmo->el1;
      if(dt < 0) dt = -dt;
      if( dt < 0.000001 ) {
        fmo->eflags |= 1;
      }
//      printf("L2 - L1 = %f\n",dt);

      dt = fmo->el3 - fmo->el2;
      if(dt < 0) dt = -dt;
      if( dt < 0.000001 ) {
        fmo->eflags |= 2;
      }
 //     printf("L3 - L2 = %f\n",dt);

      dt = fmo->el4 - fmo->el3;
      if(dt < 0) dt = -dt;
      if( dt < 0.000001 ) {
        fmo->eflags |= 4;
      }
 //     printf("L4 - L3 = %f\n",dt);

      printf("E FLAGS: %2X\n",fmo->eflags);

      fmo->req_off = 0;
      fmo->phase = 0;
      fmo->env2 = fmo->el4;
      fmo->envstage2 = FM_ENV_R1;
      printf("==> %f : %f : %f: %f\n", fmo->er1, fmo->er2, fmo->er3, fmo->er4);
      printf("FMO ENV2: %f\n", fmo->env2 );
    break;
  }


}

void fmo_keyoff(FMOperator *fmo){
//  printf("DEBUG [key off] %u %u\n", fmo->env_pos, fmo->opd->releaserate);
	if( fmo->envstage != FM_ENV_OFF ) {
		fmo->envstage = FM_ENV_RELEASE;
	}
	else{
	 // printf("New Stage: fm_env_off after key off\n");
	}

  fmo->req_off = 1;
}


void debug_env( double env)
{
  unsigned int envidx = env * FM_ENV_MAX;
  if(envidx<0)
    envidx=0;
  else if(envidx>FM_ENV_MAX)
    envidx=FM_ENV_MAX;
  double e = env_curve[envidx];
  
  printf("[DEBUG ENV] %f -> %d %d -> %f\n",env, envidx, FM_ENV_MAX, e);
}

inline synth_t fmo_getOperatorOutput(FMOperator *fmo, synth_t modulator, synth_t vibrato ) {


/*
  Envelope here
*/
  FMChannelOperatorData *opd = fmo->opd;
/*  uint32 envpos;*/
/*  envpos = (fmo->env_pos >> FM_ENV_HOLDERSHIFT) & FM_ENV_MAX;*/
/*  fmo->old_env = fmo->envelope;*/
/*  switch(fmo->envstage) {*/
/*    case FM_ENV_ATTACK:*/
/*      fmo->envelope = env_curve[envpos];*/
/*      fmo->env_pos+=opd->attackrate;*/
/*      if(fmo->env_pos >= FM_ENV_HOLDERMAX) {*/
/*        fmo->envstage = FM_ENV_DECAY;*/
/*        //fmo->envelope = 1.0;*/
/*        fmo->env_pos = 0;*/
/*      }*/
/*    break;*/
/*    case FM_ENV_S2A:*/
/*    break;*/
/*    case FM_ENV_S2D:*/
/*    break;*/
/*    case FM_ENV_DECAY:*/
/*      fmo->envelope = env_curve[FM_ENV_MAX-envpos];//V_1 - env_curve[envpos];*/
/*      //fmo->envelope = V_1 - env_curve[envpos];*/
/*      if(fmo->envelope < opd->sustain) {*/
/*        fmo->envstage = FM_ENV_SUSTAIN;*/
/*      }*/
/*      else{*/
/*        fmo->env_pos+=opd->decayrate;*/
/*        if(fmo->env_pos >= FM_ENV_HOLDERMAX) {*/
/*          fmo->envstage = FM_ENV_OFF;*/
/*          fmo->env_pos = 0;*/
/*        }*/
/*      }*/
/*    break;*/
/*    case FM_ENV_RELEASE:*/
/*      if(fmo->env_pos >= FM_ENV_HOLDERMAX) {*/
/*        fmo->envstage = FM_ENV_OFF;*/
/*        fmo->env_pos = 0;*/
/*      }*/
/*      else {*/
/*      //fmo->envelope = V_1 - env_curve[envpos];*/
/*        fmo->envelope = env_curve[FM_ENV_MAX-envpos];*/
/*        fmo->env_pos+=opd->releaserate;*/
/*      }*/
/*    break;*/
/*    case FM_ENV_OFF:*/
/*      fmo->envelope = V_0;*/
/*    break;*/
/*  }*/

  switch( fmo->envstage2 )
  {
    case FM_ENV_SET:
    break;
    case FM_ENV_R1:
      if( fmo->er1 > 0 ) {
        if( fmo->env2 >= fmo->el1 ) {
          fmo->envstage2 = FM_ENV_R2;
/*          printf("R2\n");*/
          fmo->env2 = fmo->el1;
        }
        else {
          fmo->env2 += fmo->er1;
        }
      } else {
        if( fmo->env2 <= fmo->el1 ) {
          fmo->envstage2 = FM_ENV_R2;
/*          printf("R2\n");*/
          fmo->env2 = fmo->el1;
        }
        else {
          fmo->env2 += fmo->er1;
        }
      }
    break;
    case FM_ENV_R2:
      if( fmo->eflags & 1 ) {
        printf("Jump To Stage R3 %f %f %f\n", fmo->env2, fmo->el1, fmo->el2);
        fmo->envstage2 = FM_ENV_R3;
      } else
      if( fmo->er2 > 0 ) {
        if( fmo->env2 >= fmo->el2 ) {
          fmo->envstage2 = FM_ENV_R3;
/*          printf("R3\n");*/
          fmo->env2 = fmo->el2;
        }
        else {
          fmo->env2 += fmo->er2;
        }
      } else {
        if( fmo->env2 <= fmo->el2 ) {
          fmo->envstage2 = FM_ENV_R3;
/*          printf("R3\n");*/
          fmo->env2 = fmo->el2;
        }
        else {
          fmo->env2 += fmo->er2;
        }
      }
    break;
    case FM_ENV_R3:
      if( fmo->eflags & 2 ) {
        printf("Jump To Stage SUSTAIN\n");
        debug_env(fmo->env2);
        fmo->envstage2 = FM_ENV_SUSTAIN;
      } else
      if( fmo->er3 > 0 ) {
        if( fmo->env2 >= fmo->el3 ) {
          if( fmo->have_sustain ) {
            printf("Entering SUSTAIN asc %f %f\n", fmo->env2, fmo->el3);
            fmo->envstage2 = FM_ENV_SUSTAIN;
            fmo->env2 = fmo->el3;
            debug_env(fmo->env2);
/*            printf("Sustain %f\n", fmo->env2 );*/
          } else {
/*            printf("Off\n");*/
            fmo->envstage2 = FM_ENV_OFF;
            fmo->env2 = fmo->el4;
          }
        }
        else {
          fmo->env2 += fmo->er3;
        }
      } else {
        if( fmo->env2 <= fmo->el3 ) {
          if( fmo->have_sustain ) {
            printf("Entering SUSTAIN desc %f %f\n", fmo->env2, fmo->el3);
            fmo->envstage2 = FM_ENV_SUSTAIN;
            fmo->env2 = fmo->el3;
            debug_env(fmo->env2);
/*            printf("Sustain %f\n", fmo->env2);*/
          } else {
/*            printf("Off\n");*/
            fmo->envstage2 = FM_ENV_OFF;
            fmo->env2 = fmo->el4;
          }
        }
        else {
          fmo->env2 += fmo->er3;
        }
      }
    break;
    case FM_ENV_SUSTAIN:
      if( fmo->req_off ) {
/*        printf("Off Requested\n");*/
        fmo->envstage2 = FM_ENV_R4;
      }
    break;
    case FM_ENV_R4:
      if( fmo->eflags & 4 ) {
        printf("Jump To Stage OFF\n");
        fmo->envstage2 = FM_ENV_OFF;
      } else
      if( fmo->er4 > 0 ) {
        if( fmo->env2 >= fmo->el4 ) {
          fmo->envstage2 = FM_ENV_OFF;
/*          printf("GO OFF 1\n");*/
          fmo->env2 = fmo->el4;
        }
        else {
          fmo->env2 += fmo->er4;
        }
      } else {
        if( fmo->env2 <= fmo->el4 ) {
          fmo->envstage2 = FM_ENV_OFF;
/*          printf("GO OFF 2\n");*/
          fmo->env2 = fmo->el4;
        }
        else {
          fmo->env2 += fmo->er4;
        }
      }
    break;
    case FM_ENV_RESET:
    break;
    case FM_ENV_OFF:
      fmo->env2 = fmo->el4;
    break;
  }
  if(fmo->env2 < 0)
    fmo->env2 = 0; 

  fmo->envlinear = fmo->envelope;

  unsigned int envidx = fmo->env2 * FM_ENV_MAX;
  if(envidx<0)
    envidx=0;
  else if(envidx>FM_ENV_MAX)
    envidx=FM_ENV_MAX;
  double e = env_curve[envidx];

  unsigned int sampleIndex = modulator * MODMUL + (fmo->phase>>PHASEDIVSHIFT);

  sampleIndex &= PHASEDIVMASK;

  fmo->phase += fmo->phaseIncrement*vibrato;
  //return waveform[sampleIndex]*fmo->sv*fmo->env2;
  return waveform[sampleIndex]*fmo->sv*e;
  //return SMUL( waveform[sampleIndex], SMUL(fmo->sv, fmo->envlinear) );
}

void lfo_init(LFOperator *lfo, synth_t sr, synth_t wl, synth_t const *waveform)
{
	lfo->phase          = 0.0;
	lfo->phaseIncrement = 0.0;
	lfo->sampleRate     = sr;
	lfo->waveLength     = wl;
	lfo->waveform       = waveform;
}

void lfo_setfreq(LFOperator *lfo, synth_t freq)
{
	lfo->phaseIncrement = freq/lfo->sampleRate;
}

synth_t lfo_get(LFOperator *lfo, synth_t depth)
{
	lfo->phase = lfo->phase+lfo->phaseIncrement;
	if(lfo->phase > 1.0 ) {
	  lfo->phase -= 1.0;
	}
	int sampleIndex = (int) (lfo->phase * lfo->waveLength);	
	double v = lfo->waveform[sampleIndex];
	v = pow(2,v*depth);
	return v;
}



