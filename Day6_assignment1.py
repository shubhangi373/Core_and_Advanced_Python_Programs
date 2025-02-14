#write a python program to reverse a number using a while loop.
#declare a function
def reverse_number(n):
    reversed_num = 0
    while n > 0:
        digit = n % 10
        reversed_num = reversed_num * 10 + digit
        n = n // 10
    return reversed_num

# enter a number 
num = int(input("Enter a number to reverse: "))
reversed_num = reverse_number(num)
#display a result
print("Reversed number:", reversed_num)

""" output:
Enter a number to reverse: 123
Reversed number: 321
"""
