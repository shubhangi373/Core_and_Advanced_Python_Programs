Python 3.12.8 (tags/v3.12.8:2dc476b, Dec  3 2024, 19:30:04) [MSC v.1942 64 bit (AMD64)] on win32
Type "help", "copyright", "credits" or "license()" for more information.
>>> 
>>> #python program to check leap year or not
>>> def check_leap_year(year):
...     if(year % 4 == 0 and year % 100 != 0) or (year % 400 == 0):
...         return True
...     else:
...         return False
... 
...     
>>> # input year from the user
>>> year = int(input("Enter a year: "))
Enter a year: 2004
>>> if check_leap_year(year):
...     print(f"{year} is a leap year.")
... else:
...     print(f"{year} is not a leap year.")
... 
...     
2004 is a leap year.
>>> 
>>> #output
