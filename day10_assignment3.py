#python program to find duplicate values from alist and display those

# Declare a list of numbers
numbers = [1, 2, 3, 4, 5, 6, 2, 7, 8, 9, 1]

# make a empty list to store duplicate
duplicates = []

# Create a set to keep track of seen numbers
seen = set()

# Loop through the list
for num in numbers:
    # If the number is already in the seen set, it's a duplicate
    if num in seen and num not in duplicates:
        duplicates.append(num)
    else:
        seen.add(num)

# Display the duplicates
print("Duplicate values in the list:", duplicates)

#output:Duplicate values in the list: [2, 1]
