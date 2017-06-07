#include <stdlib.h>
#include <string.h>
#include "include/dsp.h"

Filter *dsp_createfilter(double *cx, double *cy, int xl, int yl)
{
	Filter *f = (Filter *) malloc(sizeof(Filter));
	if(!f)
		goto onerror;

	f->nx = NULL;
	f->ny = NULL;

	f->nx = (double *) malloc(sizeof(double)*xl);
	if(!f->nx)
		goto onerror;

	f->ny = (double *) malloc(sizeof(double)*yl);
	if(!f->ny)
		goto onerror;


	f->cx = cx;
	f->cy = cy;

	f->xl = xl;
	f->yl = yl;

	memset(f->nx,xl,sizeof(double));
	memset(f->ny,yl,sizeof(double));

	return f;

	onerror:
	if(f) {
		if(f->nx)
			free(f->nx);
		if(f->ny)
			free(f->ny);
	}
	return NULL;		
}

void dsp_destroy_filter(Filter *f)
{
	if(f) {
		if(f->nx)
			free(f->nx);
		if(f->nx)
			free(f->nx);
		free(f);
	}			
}

double dsp_filter_run(Filter *f, double d)
{
	register int i;
	double ac = 0.0;
	int xl = f->xl;
	double *cx = f->cx;
	double *nx = f->nx;
	int yl = f->yl;
	double *cy = f->cy;
	double *ny = f->ny;

		
	for(i = xl - 1; i > 0; i--) {
		nx[i] = nx[i-1];
		ac += cx[i] * nx[i];  
	}

	nx[0] = d;
	ac += cx[0] * nx[0];

	for(i = yl - 1; i > 0; i--) {
		ny[i] = ny[i-1];
		ac -= cy[i] * ny[i];  
	}

	ac /= cy[0];
	
	ny[0] = ac;
	return ny[0];
}


