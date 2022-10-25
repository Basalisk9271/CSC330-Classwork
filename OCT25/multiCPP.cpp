#include <stdio.h>
#include <stdlib.h>

int main(int argc, char** argv){
    const int N = 1250;
    int i, j, k;

    double*** A =  new double** [N];
    for (int i = 0; i < N; ++i) {
      A[i] = new double* [N];
      for (int j = 0; j < N; j++) {
          A[i][j] = new double [N];
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

      for (int i=0; i<N; i++ ) {
        for (int j=0; j<N; j++ ) {
            delete[] A[i][j];
        }
        delete[] A[i];
    }
    delete[] A;

}
