#include <stdio.h>
void main() {
    int num, i;
    printf("Enter a number: ");
    scanf ("%d", &num);
    printPrime(num);
}
int isPrime(int num){
    int numDivisors = 0, i;
    for (i = 1; i < num+1; i++){
        if (num%i == 0){
            numDivisors++;
        }
        if (numDivisors > 2){
            return 0;
        }

    }
    return 1;

}
void printPrime(int num){
    int i;
    for (i = 2; i< num+1; i++){
        if (isPrime(i) != 0){
            printf("%d", i);
            printf("\n");
        }
        
    }
}