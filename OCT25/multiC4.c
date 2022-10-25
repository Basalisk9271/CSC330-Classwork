#include <stdio.h>
#include <stdlib.h>

int main(int argc, char** argv){
	const int N = 100;
	int i, j, k;

	double ***A =  malloc(N*sizeof(double**));

	for(i=0; i<N; i++) 	{
    	A[i] = malloc(N*sizeof(double*));
    	for(j=0; j<N; j++) {
        		A[i][j] = malloc(N*sizeof(double));
    	}
	}

	for (i=0;i<N;i++) {
    	for (j=0;j<N;j++) {
        	for (k=0; k<N; k++ ) {
            	A[i][j][k] = i*N*N + j*N + k + 1.0;
        	}
    	}
	}

	printf("The last array element is %f\n", A[N-1][N-1][N-1]);
	
                 for (i=0;i<N;i++) {
                       for (j=0;j<N;j++) {
                            free(A[i][j]);
                       }
                       free(A[i]);
                }
                free(A);
}
