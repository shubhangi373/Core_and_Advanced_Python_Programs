#python program to check wheather a number is palindrome or not

# Function to check if a number is a palindrome using a for loop
def is_palindrome(number):
    
# Convert the number to string 
    num_str = str(number)
# Initialize an empty string to store the reversed number
    reversed_num = '' 

    for digit in num_str:
        reversed_num = digit + reversed_num  

 # Check if the original number is the same as the reversed number
    return number == int(reversed_num)

# display a result
num = int(input("Enter a number : "))
if is_palindrome(num):
    print(f"{num} is a palindrome.")
else:
    print(f"{num} is not a palindrome.")

""" output:
Enter a number : 121
121 is a palindrome.
"""
