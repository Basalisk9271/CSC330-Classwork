#!/usr/bin/python3

i = int(input("Enter an integer: "))
count = 0
while i != 1:
    print(int(i))
    if ( i % 2  == 0 ):
        i = i / 2
        count = count + 1 
    else:
        i = i * 3 + 1
        count = count + 1

print ( int(i) )
print ("Count = ", int(count))
