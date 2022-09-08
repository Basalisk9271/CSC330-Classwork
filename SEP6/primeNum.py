def isPrime(num):
    numDivisors = 0
    for i in range(1,num+1):
        if ( num % i == 0):
            numDivisors = numDivisors + 1
        if ( numDivisors > 2 ):
            return False

def printPrime(num):
    for i in range (2, num+1):
        if (isPrime(i) != False):
            print (i)
def main():
    val = int(input ("Enter a value:"))
    printPrime(val)

main()
    