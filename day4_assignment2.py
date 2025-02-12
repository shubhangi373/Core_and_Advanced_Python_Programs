Python 3.12.8 (tags/v3.12.8:2dc476b, Dec  3 2024, 19:30:04) [MSC v.1942 64 bit (AMD64)] on win32
Type "help", "copyright", "credits" or "license()" for more information.
>>> #python program to find the larges among Three numbers
>>> def find_largest(num1,num2,num3):
...     if (num1 >= num2) and (num1 >= num3):
...         return num1
...     elif(num2 >= num1) and (num2 >= num3):
...         return num2
...     else:
...         return num3
... 
...     
>>> #input three numbers from the user
...     
>>> num1 = float(input("enter firat number: "))
enter firat number: 209
>>> num2 = float(input("enter second number: "))
enter second number: 432
>>> num3 = float(input("enter three number: "))
enter three number: 120
>>> #find the largest number
>>> largest = find_largest(num1,num2,num3) #display the largest number
>>> print(f"The largest number among {num1},{num2}, and {num3} is {largest}.")
The largest number among 209.0,432.0, and 120.0 is 432.0.
>>> 
>>> """
... enter firat number: 209
... enter second number: 432
... enter three number: 120
