#include <stdio.h>
#include <stdlib.h>

int main(int argc, char** argv)
{
	const int N = 1250;
	int i, j, k;
	double* A =  malloc(N*N*N*sizeof(double));

	for(i=0; i<N; i++)
	{
    	for(j=0; j<N; j++)
    	{
        	for(k=0; k<N; k++) {
            	A[i*N*N+j*N+k] = i*N*N+j*N+k + 1.0;
        	}
    	}
	}

	printf("The last array element is %f\n", A[N*N*N-1]);
                 free(A);
}
