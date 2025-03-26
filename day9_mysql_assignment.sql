#  assignment :
Create Two table employees & departments 
Scenario 1:You have two tables, employees and departments. Retrieve a list of employees along with their department names using an inner join. 
Scenario 2:ou have two tables, employees and departments. Retrieve a name & department_name  using an left  join



mysql> create database jointable;
Query OK, 1 row affected (0.01 sec)
mysql> use jointable;
Database changed

#-- Create employee table:
mysql> create  table employee(empid varchar(20)primary key,empname varchar(20),dept_id int);
Query OK, 0 rows affected (0.05 sec)

#-- Create department table:

mysql>  create  table department(dept_id int primary key,deptname varchar(20));
Query OK, 0 rows affected (0.03 sec)

mysql> show tables;
+---------------------+
| Tables_in_jointable |
+---------------------+
| department          |
| employee            |
+---------------------+
2 rows in set (0.01 sec)

#insert values into employee table:

mysql> insert into employee values('e101','alice','1');
Query OK, 1 row affected (0.00 sec)

mysql> insert into employee values('e102','boe','2');
Query OK, 1 row affected (0.01 sec)

mysql> insert into employee values('e103','charlie','1');
Query OK, 1 row affected (0.01 sec)

mysql> insert into employee values('e104','davie',3);
Query OK, 1 row affected (0.01 sec)

mysql> insert into employee values('e105','avie',2);
Query OK, 1 row affected (0.01 sec)

mysql> select *from employee;
+-------+---------+---------+
| empid | empname | dept_id |
+-------+---------+---------+
| e101  | alice   |       1 |
| e102  | boe     |       2 |
| e103  | charlie |       1 |
| e104  | davie   |       3 |
| e105  | avie    |       2 |
+-------+---------+---------+
5 rows in set (0.00 sec)

# insert into department values:

mysql>  insert into  department values('1','marketing');
Query OK, 1 row affected (0.01 sec)

mysql>  insert into  department values('2','finace');
Query OK, 1 row affected (0.01 sec)

mysql>  insert into  department values('3','IT');
Query OK, 1 row affected (0.01 sec)

mysql>  insert into  department values('4','HR');
Query OK, 1 row affected (0.01 sec)

mysql> select * from department;
+---------+-----------+
| dept_id | deptname  |
+---------+-----------+
|       1 | marketing |
|       2 | finace    |
|       3 | IT        |
|       4 | HR        |
+---------+-----------+
4 rows in set (0.00 sec)


#Query for Scenario 1 (Inner Join)

mysql> select e.empname,d.deptname from employee e inner join department d on e.dept_id=d.dept_id;
+---------+-----------+
| empname | deptname  |
+---------+-----------+
| alice   | marketing |
| boe     | finace    |
| charlie | marketing |
| davie   | IT        |
| avie    | finace    |
+---------+-----------+
5 rows in set (0.00 sec)

#Query for Scenario 2 (Left Join)

mysql> select e.empname,d.deptname from employee e left join department d on e.dept_id=d.dept_id;
+---------+-----------+
| empname | deptname  |
+---------+-----------+
| alice   | marketing |
| boe     | finace    |
| charlie | marketing |
| davie   | IT        |
| avie    | finace    |
+---------+-----------+
5 rows in set (0.00 sec)

mysql>