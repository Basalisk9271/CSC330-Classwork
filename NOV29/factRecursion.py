#!/usr/bin/python3

import sys

def factorial(my_val):
    if (my_val < 0):
        return "-- ERROR --\n"
    elif(my_val == 0 or my_val == 1):
        return 1
    else:
        fact = 1
        return my_val * factorial(my_val-1)

print(factorial(int(sys.argv[1])))