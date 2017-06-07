#include <stdio.h>
#include <math.h>

typedef double synth_t;

#define WAVELENGTH 4096

main()
{
	synth_t theta = 0, thetaIncrement = 2.0*M_PI / WAVELENGTH;
	int i;
	int w_2 = WAVELENGTH/2;
	int w_4 = WAVELENGTH/4;		
	for(i=0, theta=0; i<WAVELENGTH; i++, theta += thetaIncrement){
		synth_t a = sin(theta);
		printf(" %1.20f, ",a);
		if(i%10==9){
			printf("\n");
		}
	}
	
}
