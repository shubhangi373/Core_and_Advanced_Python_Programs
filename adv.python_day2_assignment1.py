# You have a list of employee records, and you need to create a new list that contains the names of employees who work in the 'Sales' department, all in uppercase. Example Data:

#employees = [ {"name": "John Doe", "department": "Sales"}, {"name": "Jane Smith", "department": "Marketing"}, {"name": "Emily Johnson", "department": "Sales"}, {"name": "Michael Brown", "department": "HR"} ]
# create a list 
employees = [
    {"name": "John Doe", "department": "Sales"},
    {"name": "Jane Smith", "department": "Marketing"},
    {"name": "Emily Johnson", "department": "Sales"},
    {"name": "Michael Brown", "department": "HR"}
]

# Create a new list of employee names in 'Sales' department, all in uppercase
sales_employees = [employee["name"].upper() for employee in employees if employee["department"] == "Sales"] #using list comprehensive

print(sales_employees)

#output:['JOHN DOE', 'EMILY JOHNSON']
