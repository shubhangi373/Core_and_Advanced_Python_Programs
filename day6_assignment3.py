#python program to finding the factorial of a given number using a while loop
# declare a function
def factorial(n):
# Start with 1 because multiplying by 1 does not change the result
    result = 1  
    while n > 1:
        result *= n  # Multiply result by n
        n -= 1  # Decrease n by 1
    return result

# display a result
num = int(input("Enter a number to find its factorial: "))
print(f"The factorial of {num} is {factorial(num)}.")
