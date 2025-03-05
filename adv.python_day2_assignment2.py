
#You have a list of email addresses and you want to extract the domain part (the part after '@') from each email address. Example Data:
#emails = [ "alice@example.com", "bob@sample.org", "charlie@mydomain.net" ]emails = [ "alice@example.com", "bob@sample.org", "charlie@mydomain.net" ]

# create a list of gmail
emails = ["alice@example.com", "bob@sample.org", "charlie@mydomain.net"]

# Extract the domain part from each email
domains = [email.split('@')[1] for email in emails] #using list comprehensive

print(domains)

#output : ['example.com', 'sample.org', 'mydomain.net']
