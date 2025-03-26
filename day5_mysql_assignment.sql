"""Use the same database scheme created in Previous Lab. Task: Let's consider a scenario where you want to retrieve information about students from a database table named student and display the results in ascending order based on their last names.
 Hint: Use orderBy clause in a ascending Order 
 Submission: Create an SQL script file containing your solutions for the task. Name the file "lab_assignment1.sql" Provide comments above the query to indicate the query's purpose.
 Lab 2 Database Schema: Use the same database scheme created in Previous Lab. 
 Task: Let's consider a scenario where you want to count the number of students based on their gender from a database table named Student.
 Hint: use GroupBy clause and Count() function"""

mysql> show databases;
+-------------------------+
| Database                |
+-------------------------+
| ecommerce               |
| employee                |
| information_schema      |
| mysql                   |
| performance_schema      |
| sakila                  |
| student                 |
| studentmanagementsystem |
| sys                     |
| world                   |
+-------------------------+
10 rows in set (0.01 sec)

#show a description of student database
mysql> use student;
Database changed
mysql> desc student;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| firstname | varchar(20) | NO   |     | NULL    |       |
| lastname  | varchar(30) | YES  |     | NULL    |       |
| gender    | varchar(50) | YES  |     | NULL    |       |
| address   | varchar(50) | YES  |     | NULL    |       |
| phoneno   | varchar(70) | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
5 rows in set (0.01 sec)

#insert values into database
mysql> insert into student(firstname,lastname,gender,address,phoneno)values
    -> ('priya','patil','female','pune',95478612),
    -> ('riya','patil','female','satara',95258612),
    -> ('pooja','nirmal','female','pune',96784612),
    -> ('soniya','sharma','female','mumbai',93512712);
Query OK, 4 rows affected (0.02 sec)
Records: 4  Duplicates: 0  Warnings: 0

# Use orderBy clause in a ascending Order
mysql> select * from student order by lastname asc;
+-----------+----------+--------+---------+----------+
| firstname | lastname | gender | address | phoneno  |
+-----------+----------+--------+---------+----------+
| pooja     | nirmal   | female | pune    | 96784612 |
| priya     | patil    | female | pune    | 95478612 |
| riya      | patil    | female | satara  | 95258612 |
| soniya    | sharma   | female | mumbai  | 93512712 |
+-----------+----------+--------+---------+----------+
4 rows in set (0.00 sec)

# use GroupBy clause and Count() function
mysql>  select gender ,count(*) as student_count from student group by gender;
+--------+---------------+
| gender | student_count |
+--------+---------------+
| female |             4 |
+--------+---------------+
1 row in set (0.00 sec)

mysql>