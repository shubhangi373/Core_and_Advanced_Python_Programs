#Write a Python program to remove duplicate characters of a given string. 
#Input = “String and String Function” 

#Given String
input_string = "String and String Function"

#decalre separated string
separate_string = input_string.split()

#creating new list to store
string_list = []

#iterate over each item in list
for item in separate_string:
    if item not in string_list:         # if not in list adding string to it
        string_list.append(item)

new_string = ' '.join(string_list)      #join the list using join() into normal string
print(new_string)                       #printing the string

#output:String and Function
