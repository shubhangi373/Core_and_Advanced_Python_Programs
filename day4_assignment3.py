Python 3.12.8 (tags/v3.12.8:2dc476b, Dec  3 2024, 19:30:04) [MSC v.1942 64 bit (AMD64)] on win32
Type "help", "copyright", "credits" or "license()" for more information.
>>> #python program to check if a number is positive,negative or zero
>>> def check_number(num):
...     if num > 0:
...         return "positive"
...     elif num < 0:
...         return "negative"
...     else:
...         return "zero"
... 
...     
>>> #Take a input from user for the number
...     
>>> num = float(input("enter a number: "))
enter a number: 50
>>> #verify the number
>>> result = check_number(num)
>>> #show the result
>>> print(f"The number {num} is {result}")
The number 50.0 is positive
>>> 
>>> """
... output:
... enter a number: 50
... The number 50.0 is positive
