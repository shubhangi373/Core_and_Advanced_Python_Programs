#Consider a simple database with one tables: Employee
#Employee Table: ● Columns:emp_id (Primary Key), first_name, last_name, age, email 
#Task 1: Insert Data Write an SQL INSERT statement to insert data into the Employee table. 
#Task 2: Retrieving Data Write an SQL SELECT statement to retrieve the first_name and last_name of all employees from the Employee table.
#Task 3: Filtering Data Write an SQL SELECT statement to retrieve the first_name, last_name, and age of employees who are older than 30 years.
#Task 4: Updating Data Write an SQL UPDATE statement to increase the age of employees by 1 year for all employees older than 25

mysql> use employee;
Database changed

#create a database 
mysql> create table employee(empid varchar(10)primary key,firstname varchar(20),lastname varchar(20),age int,email varchar(50));
Query OK, 0 rows affected (0.09 sec)

#inserting a value into employee
mysql> insert into employee values('E101','john','doe',32,'john@gmail.com');
Query OK, 1 row affected (0.01 sec)

mysql> insert into employee values('E102','john','smith',30,'johnsmith@gmail.com');
Query OK, 1 row affected (0.00 sec)

mysql> insert into employee values('E103','nik','doe',42,'nik@gmail.com');
Query OK, 1 row affected (0.01 sec)

mysql> insert into employee values('E104','alice','jonhson',21,'alice@gmail.com');
Query OK, 1 row affected (0.01 sec)

mysql> insert into employee values('E105','jim','doe',40,'jim@gmail.com');
Query OK, 1 row affected (0.00 sec)

mysql> insert into employee values('E106','jane','smith',40,'jane@gmail.com');
Query OK, 1 row affected (0.01 sec)

mysql> insert into employee values('E107','peter','smith',35,'peter@gmail.com');
Query OK, 1 row affected (0.00 sec)

mysql> insert into employee values('E108','peter','patekar',27,'peterpatekar@gmail.com');
Query OK, 1 row affected (0.00 sec)
 
#display a table
mysql> select *from employee;
+-------+-----------+----------+------+------------------------+
| empid | firstname | lastname | age  | email                  |
+-------+-----------+----------+------+------------------------+
| E101  | john      | doe      |   32 | john@gmail.com         |
| E102  | john      | smith    |   30 | johnsmith@gmail.com    |
| E103  | nik       | doe      |   42 | nik@gmail.com          |
| E104  | alice     | jonhson  |   21 | alice@gmail.com        |
| E105  | jim       | doe      |   40 | jim@gmail.com          |
| E106  | jane      | smith    |   40 | jane@gmail.com         |
| E107  | peter     | smith    |   35 | peter@gmail.com        |
| E108  | peter     | patekar  |   27 | peterpatekar@gmail.com |
+-------+-----------+----------+------+------------------------+
8 rows in set (0.00 sec)

# Retrieving Data Write an SQL SELECT statement to retrieve the firstname and last_name of all employees from the Employee table.
mysql> select firstname,lastname from employee;
+-----------+----------+
| firstname | lastname |
+-----------+----------+
| john      | doe      |
| john      | smith    |
| nik       | doe      |
| alice     | jonhson  |
| jim       | doe      |
| jane      | smith    |
| peter     | smith    |
| peter     | patekar  |
+-----------+----------+
8 rows in set (0.00 sec)

# Filtering Data Write an SQL SELECT statement to retrieve the first_name, last_name, and age of employees who are older than 30 years.
mysql> select firstname,lastname,age from employee where age>30;
+-----------+----------+------+
| firstname | lastname | age  |
+-----------+----------+------+
| john      | doe      |   32 |
| nik       | doe      |   42 |
| jim       | doe      |   40 |
| jane      | smith    |   40 |
| peter     | smith    |   35 |
+-----------+----------+------+
5 rows in set (0.00 sec)

# Updating Data Write an SQL UPDATE statement to increase the age of employees by 1 year for all employees older than 25
mysql> update employee set age=age+1 where age>25;
Query OK, 7 rows affected (0.01 sec)
Rows matched: 7  Changed: 7  Warnings: 0
