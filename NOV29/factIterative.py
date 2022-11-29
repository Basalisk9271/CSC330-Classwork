#!/usr/bin/python3

import sys

def factorial(my_val):
    if (my_val < 0):
        return "-- ERROR --\n"
    elif(my_val == 0 or my_val == 1):
        return 1
    else:
        factorial = 1
        for i in range(1,my_val + 1):
            factorial = factorial*i
        return factorial

print(factorial(int(sys.argv[1])))