#ifndef FM_H
	#define FM_H

#define WAVELENGTH 4096
#define WLSHIFT 20

#define FM_ENV_ATTACK 0
#define FM_ENV_DECAY  1
#define FM_ENV_SUSTAIN  2
#define FM_ENV_RELEASE  3
#define FM_ENV_OFF  4

#define FM_ENV_S2A 5
#define FM_ENV_S2D 6

#define FM_ENV_SET 50
#define FM_ENV_R1  51
#define FM_ENV_R2  52
#define FM_ENV_R3  53
#define FM_ENV_R4  54
#define FM_ENV_RESET 55


#define FM_ENV_HOLDERMAX 0x0FFFFFFF
#define FM_ENV_HOLDERSHIFT 18
#define FM_ENV_MAX 0x3FF

typedef double synth_t;

#define S_CONST(A,B) A##.##B

#define SMUL(A,B) ((A)*(B))
#define SDIV(A,B) ((A)/(B))

#define V_0 0.0

#define V_1  1.0
#define V_2  2.0
#define V_3  3.0
#define V_4  4.0
#define V_5  5.0
#define V_6  6.0

#define MOD_TO_INC(X) (synth_t)((X)*2147483647.0)


static const synth_t freqTable[] = {
/*	 C	 C#/Db   D	 D#/Eb   E       F       F#/Gb   G       G#/Ab   A      A#/Bb    B
/* -1*/	16.352, 17.324, 18.354, 19.445, 20.602, 21.827, 23.125, 24.500, 25.956, 27.500, 29.135, 30.868,
/* 0 */	32.703, 34.648, 36.708, 38.891, 41.203, 43.653, 46.250, 49.000, 51.913, 55.000, 58.270, 61.736,
/* 1 */	65.406, 69.297, 73.416, 77.782, 82.407, 87.307, 92.500, 98.000,103.825,110.000,116.541,123.472,  
/* 2 */	130.81, 138.59, 146.83, 155.56, 164.81, 174.61, 185.00, 196.00, 207.65, 220.00, 233.08, 246.94,
/* 3 */	261.63, 277.18, 293.66, 311.13, 329.63, 349.23, 329.99, 392.00, 415.30, 440.00, 466.16, 493.88,
/* 4 */	523.25, 554.37, 587.33, 622.25, 659.26, 698.46, 739.99, 783.99, 830.61, 880.00, 932.33, 987.77,
/* 5 */	1046.5, 1108.7, 1174.7, 1244.5, 1318.5, 1396.9, 1480.0, 1568.0, 1661.2, 1760.0, 1864.7, 1975.5,
/* 6 */	2093.0, 2217.5, 2349.3, 2489.0, 2637.0, 2793.8, 2960.0, 3136.0, 3322.4, 3520.0, 3729.3, 3951.1,
/* 7 */	4186.0, 4435.0, 4698.6, 4978.0, 5270.0, 5587.6, 5920.0, 6272.0, 6644.8, 7040.0, 7458.6, 7902.2,
/* 8 */	8372.0, 8870.0, 9372.2, 9956.0,10548.0,11175.2,11840.0,12544.0,13289.6,14080.0/*,14917.2,15804.4*/ 
};

static const synth_t mfTable[] = {0.5,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,
                                  16.0,17.0,18.0,19.0,20.0,21.0,22.0,23.0,24.0,25.0,26.0,27.0,28.0,29.0,
                                  30.0,31.0};

static const synth_t fixedFreqTable[] = {1,10,100,1000};


typedef unsigned int uint32;

typedef struct {
  uint32 attackrate;
  uint32 decayrate;
  synth_t sustain;
  uint32 releaserate;
  synth_t vo;
  synth_t mf;
  synth_t sfreq;

  synth_t env_l1;
  synth_t env_l2;
  synth_t env_l3;
  synth_t env_l4;

  synth_t env_r1;
  synth_t env_r2;
  synth_t env_r3;
  synth_t env_r4;

}FMChannelOperatorData;

typedef struct {
  synth_t vib;
  synth_t bend;
  synth_t sampleRate;
  synth_t waveLength;
  synth_t fbr;
  int alg;
  FMChannelOperatorData opd[6];
}FMChannelData;




#define PHASEMAX 0x3FFFFFFF
#define PHASEDIVSHIFT 18
#define PHASEDIVMASK 0xFFF
#define MODMUL (4096.0)

typedef struct {
	/*props*/
	synth_t sampleRate;
	synth_t waveLength;
	/*phase*/
	uint32 phase;
	uint32 phaseIncrement;
	/*envelope*/
	uint32 env_pos;

	int env_actualAttackRate;
	synth_t env_xAttackIncrement;
	synth_t env_xMinimumInAttack;
	synth_t envlinear;
	synth_t envelope;

	int envstage;
	int envstage2;

  synth_t er1,er2,er3,er4;
  synth_t el1,el2,el3,el4;
  synth_t es,er;
  synth_t env2;
  int have_sustain;
  int eflags;
  int req_off;

	synth_t old_env;
	
	/*waveforme*/
	int wf;
	int counter;

	FMChannelOperatorData *opd;
	FMChannelData *chd;

	/*Internal Level*/
	synth_t sv;
}FMOperator;

typedef struct {
	/*props*/
	synth_t sampleRate;
	synth_t waveLength;
	/*phase*/
	synth_t phase;
	synth_t phaseIncrement;	
	
	synth_t const *waveform;
}LFOperator;

typedef struct {
  FMOperator op1;
  FMOperator op2;
  FMOperator op3;
  FMOperator op4;
  FMOperator op5;
  FMOperator op6;

	//synth_t fbr;
	synth_t vel;
	//int alg;
	synth_t feedback;
	FMChannelData *chd;
	synth_t freq;

}FMVoice;

typedef struct {
  int channel;
  synth_t vel;
  int type;
  FMVoice fm;
} Voice;

typedef struct {
  char keybuffer[128]; /*indica se a nota esta marcada como on*/
  char voice_on[32]; /*vozes que estao a soar*/
  Voice voice[32];
  int nvoices;
} VoiceGroup;


#define vector(type,size) type __attribute__ ((vector_size(sizeof(type)*(size))))
typedef double v4sd __attribute__ ((vector_size (32)));

typedef struct {
	char keybuffer[128]; /*indica se a nota esta marcada como on*/
	char voice_on[32]; /*vozes que estao a soar*/
	FMVoice voice[32];
	VoiceGroup *vg;
	int nvoices;
	int alg;
	FMChannelData chd;
	LFOperator vibop;
	synth_t vib_depth;
	synth_t vib_rate;

	synth_t am_depth;
	synth_t am_rate;

  vector(double,32) vvol;
  vector(double,32) vout;
  vector(double,32) vres;

  vector(double,32*8) opout;
  vector(double,32*8) openv;
}FMChannel;


void fmo_init(FMOperator *fmo, FMChannelData *chd, FMChannelOperatorData *opd);
void fmo_setFreq(FMOperator *fmo, synth_t freq);
void fmo_setWave(FMOperator *fmo,int wf);
synth_t fmo_getPhase(FMOperator *fmo);
void fmo_setChannelData(FMOperator *fmo, FMChannelData *chd, FMChannelOperatorData *opd);
void fmo_keyon(FMOperator *fmo, float freq, int v, int octave);
void fmo_keyoff(FMOperator *fmo);
synth_t fmo_getOperatorOutput(FMOperator *fmo,synth_t modulator, synth_t vibrato);

void fmv_keyoff(FMVoice *fmv);
void fmv_keyon(FMVoice *fmv, float freq, int vel, int octave);
void fmv_setfreq(FMVoice *fmv, synth_t freq);
void fmv_init(FMVoice *fmv, FMChannelData *chd);
void fmv_setmode(FMVoice *fmv, int mode);
synth_t fmv_get(FMVoice *fmv, FMChannelData *chd);

void fmc_init(FMChannel *fmc, VoiceGroup *vg, int nvoices);
void fmc_keyoff(FMChannel *fmc, int key,int vel);

//extern float freqTable[128];

void lfo_init(LFOperator *lfo, synth_t sr, synth_t wl, synth_t const *waveform);
void lfo_setfreq(LFOperator *lfo, synth_t freq);
synth_t lfo_get(LFOperator *lfo, synth_t depth);

void fmc_lfoDepth(FMChannel *fmc, int depth);
void fmc_pitchBend(FMChannel *fmc, int bend);
//extern synth_t FM_waves[4][WAVELENGTH];



void fm_init_waves();
void fm_set_sample_rate(int s);

synth_t fmc_output(FMChannel *fmc);
void fmc_keyoff(FMChannel *fmc, int key,int vel);
void fmc_opvol(FMChannel *fmc, int op, int vol);
void fmc_opmul(FMChannel *fmc, int op, int mul);
void fmc_opattack(FMChannel *fmc, int op, int a);
void fmc_opdecay(FMChannel *fmc, int op, int a);
void fmc_opsustain(FMChannel *fmc, int op, int a);
void fmc_oprelease(FMChannel *fmc, int op, int a);
void fmc_setAlg(FMChannel *fmc, int a);

void fmc_op_env_l1(FMChannel *fmc, int op, int a);
void fmc_op_env_l2(FMChannel *fmc, int op, int a);
void fmc_op_env_l3(FMChannel *fmc, int op, int a);
void fmc_op_env_l4(FMChannel *fmc, int op, int a);
void fmc_op_env_r1(FMChannel *fmc, int op, int a);
void fmc_op_env_r2(FMChannel *fmc, int op, int a);
void fmc_op_env_r3(FMChannel *fmc, int op, int a);
void fmc_op_env_r4(FMChannel *fmc, int op, int a);

void fmc_feedback(FMChannel *fmc, int feedback);

void fmv_opvol(FMVoice *fmv, int op, synth_t vol);
void fmv_opmul(FMVoice *fmv, int op, synth_t mul);

void fmv_opattack(FMVoice *fmv, int op, int a);
void fmv_opdecay(FMVoice *fmv, int op, int a);
void fmv_opsustain(FMVoice *fmv, int op, int a);
void fmv_oprelease(FMVoice *fmv, int op, int a);
void fmv_feedback(FMVoice *fmv, int feedback);

void fmc_allnotesoff(FMChannel *fmc);
#endif
