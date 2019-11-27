#!/usr/bin/python3
while True:
    try:
        age = float(input("What is your age?"))
        break
    except ValueError:
        print("You must provide a valid floating point number or integer")
        
if age < 0:
    print("Nobody can be that young")
elif age == 0:
    print("You are newly born")
elif age < 18:
    print("You are still a child")
else:
    print("You are an adult!")
    
