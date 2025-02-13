#python program to declare a div() function with two parameters.Then the call the function and pass two numbers and display their division.
def div(a,b):
    if b==0:
        return "division by zero is not allowed"
    return a/b
# call the function and pass two numbers
num1 = float(input("Enter first number: "))
num2 = float(input("Enter second number: "))
#display a result
result = div(num1,num2)
print("division result:",result)

"""
output :
Enter first number: 20
Enter second number: 5
division result: 4.0
"""
