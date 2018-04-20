#include <stdio.h>
#include <math.h>

int main(int argc, char **argv){
	double lbd,N,a,I,mi,K,B;
	N  = 130.0;
	a  = 0.15;
	I  = 1.24;
	mi = 4*M_PI*pow(10,-7);
	K  = 100683.45;
	B = (N*mi*I)/(pow(5.0/4.0,3.0/2.0)*a);
	lbd =(2*K)/(pow(B,2));
	printf("%e\n", lbd);
	return 0;
}


