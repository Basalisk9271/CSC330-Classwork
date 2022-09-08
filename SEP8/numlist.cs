using System;

public class Numlist 
{
    static public void Main ()
    {
        Console.Write ("Enter a number: ");
        var number = int.Parse(Console.ReadLine());
        //number = Convert.ToInt32(str);
        /*for (int i=0; i<number; i++) {
            Console.WriteLine( i );
        }*/
        printPrime(number);
    }

    static public bool isPrime(int num){
        int numDivisors = 0;
        for (int i = 1; i < num+1; i++){
            if (num % i == 0){
                numDivisors++;
            }
            if (numDivisors > 2){
                return false;
            }
            
        }
        return true;
    }
    
    static public void printPrime(int num){
        for (int i = 2; i < num+1; i++){
            if (isPrime(i) != false){
                Console.WriteLine(i);
            }
        }
    }
}