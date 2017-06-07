#ifndef DSP_H
	#define DSP_H

typedef struct {
	double *ny; 
	double *nx;
	
	double *cx;
	double *cy;
	int xl,yl;
}Filter;

Filter *dsp_createfilter(double *cx, double *cy, int xl, int yl);
void dsp_destroy_filter(Filter *f);
double dsp_filter_run(Filter *f, double d);

typedef struct {
	double *buffer;
	int i,j;
	int size;
	
}FeedBackDelay;

void dsp_fbdelay(int buffersize);

#endif
