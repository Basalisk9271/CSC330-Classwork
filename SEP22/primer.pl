#!/usr/bin/perl

sub isPrime {
    my $i = shift;
    my $numDivisors = 0;
    for ( my $j=1; $j<=$i; $j++ ) {
        if ( $i % $j == 0 ) {
            $numDivisors = $numDivisors + 1;
        }
    }
    return ( $numDivisors == 2 );
}

sub printPrimes {
    my $num1 = shift;
    my $num2 = shift;
    for ( my $i=$num1; $i<=$num2; $i++  ) {
        if ( isPrime($i) ) {
            print $i . "\n";
        }
    }
}

# Here is the main program

print "First Number: ";
my $num1 = <STDIN>;
chomp($num1);
print "Second Number: ";
my $num2 = <STDIN>;
chomp($num2);
printPrimes($num1, $num2)
