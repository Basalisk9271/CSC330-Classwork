def isPrime(num):
    numDivisors = 0
    for i in range(1,num+1):
        if ( num % i == 0):
            numDivisors = numDivisors + 1
        if ( numDivisors > 2 ):
            return False

def printPrime(num1, num2):
    for i in range (num1, num2+1):
        if (isPrime(i) != False):
            print (i)
def main():
    val1 = int(input ("Enter a value:"))
    val2 = int(input ("Enter a value:"))
    printPrime(val1, val2)

main()
    