#include <stdio.h>
#include <math.h>
#include <stdlib.h>
double lbd(double th){

sqrt((13900)/(sqrt(pow((1.1547*sin((1.0*th-3)*M_PI/180.0)+0.5),2)+0.75)-1.689));

}
int main(int argc, char **argv){
	FILE *read,*write;
	int i,n;
	double in,out,tht,lt;
	n = atoi(argv[3]);
	read = fopen(argv[1],"r");
	write= fopen(argv[2],"w");	
	for(i= 0; i<n; i++){
		fscanf(read,"%lf %lf\n",&tht,&lt);
		out = lbd(tht);
		fprintf(write,"%g %g\n",out,lt);
	}
	
	return 0;
}
