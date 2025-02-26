#  Write a Python program that prompts the user to input an integer and raises a ValueError exception if the input is not a valid integer

#Creating Class
class ValueErrorExc:
#Method Creation
    def Check_integer(self,num1,num2):         
        try:                                    #Checking they are number or not
            num_1 = int(num1)
            num_2 = int(num2)
            print("all numbers are valid")
        except ValueError:                      #An ValueError Exception
            print("numbers are invalid \n please enter valid numbers")


#Inputs
number_1 = (input("enter first number--"))
number_2 = (input("Enter second number--"))
obj = ValueErrorExc()
obj.Check_integer(number_1,number_2)        #Calling Method by using Object

"""output:
enter first number--a
Enter second number--5
numbers are invalid 
 please enter valid numbers

"""
