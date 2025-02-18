#python program to get largest and smallest number from a list without built in function

# Declare a list of numbers
numbers = [10, 5, 20, 3, 15]

# declare the largest and smallest number
largest = numbers[0]
smallest = numbers[0]

#  find the largest and smallest number
for num in numbers:
    if num > largest:
        largest = num
    if num < smallest:
        smallest = num

# Print the results
print("The largest number is:", largest)
print("The smallest number is:", smallest)

""" output:
The largest number is: 20
The smallest number is: 3
"""
