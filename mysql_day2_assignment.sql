mysql> use studentmanagementsystem;
ERROR 1049 (42000): Unknown database 'studentmanagementsystem'
mysql> create database studentmanagementsystem;
Query OK, 1 row affected (0.05 sec)

mysql> use studentmanagementsystem;
Database changed
mysql> create table student(studentid varchar(50)primary key,firstname varchar(20),lastname(20),DOB varchar(70),gender varchar(30),email varchar(70),phone varchar(70));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '(20),DOB varchar(70),gender varchar(30),email varchar(70),phone varchar(70))' at line 1
mysql> create table student(studentid varchar(50)primary key,firstname varchar(20),lastname varchar(20),DOB varchar(70),
gender varchar(30),email varchar(70),phone varchar(70));
Query OK, 0 rows affected (0.15 sec)

mysql> create table course(courseid varchar(30)primary key,coursetitle varchar(20),credit double));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ')' at line 1
mysql> create table course(courseid varchar(30)primary key,coursetitle varchar(20),credit double);
Query OK, 0 rows affected (0.03 sec)

mysql> create table instructor(instructorid varchar(20)primary key, firstname varchar(60),lastname varchar(30),email varchar(70));
Query OK, 0 rows affected (0.03 sec)

mysql> create table enrollment(enrollid varchar(20)primary key,enrolldate varchar(30),FOREIGN KEY(studentid) REFERENCES student(studentid),FOREIGN KEY(courseid) REFERENCES course(courseid),FOREIGN KEY(instructorid) REFERENCES instructor(instructorid));
ERROR 1072 (42000): Key column 'studentid' doesn't exist in table
mysql> create table enrollment(enrollid varchar(20)primary key,enrolldate varchar(30),FOREIGN KEY(studentid) REFERENCES student(studentid),FOREIGN KEY(cours
eid) REFERENCES course(courseid),FOREIGN KEY(instructorid) REFERENCES instructor(instructorid));
ERROR 1072 (42000): Key column 'studentid' doesn't exist in table
mysql> create table enrollment(enrollid varchar(20)primary key,enrolldate varchar(30),FOREIGN KEY(studentid) REFERENCES student(studentid),FOREIGN KEY(cours
eid) REFERENCES course(courseid),FOREIGN KEY(instructorid) REFERENCES instructor(instructorid));
ERROR 1072 (42000): Key column 'studentid' doesn't exist in table
mysql> alter table student modify studentid varchar(10)primary key;
ERROR 1068 (42000): Multiple primary key defined
mysql> create table enrollment(enrollid varchar(20)primary key,enrolldate varchar(30),FOREIGN KEY(studentid) REFERENCES student(studentid),FOREIGN KEY(courseid) REFERENCES course(courseid),FOREIGN KEY(instructorid) REFERENCES instructor(instructorid));
ERROR 1072 (42000): Key column 'studentid' doesn't exist in table
mysql> create table enrollment(enrollid varchar(20)primary key,enrolldate varchar(30),FOREIGN KEY(studentid) REFERENCES student(studentid),FOREIGN KEY(cours
eid) REFERENCES course(courseid),FOREIGN KEY(instructorid) REFERENCES instructor(instructorid));
ERROR 1072 (42000): Key column 'studentid' doesn't exist in table
mysql> CREATE TABLE enrollment (
    ->     enrollid VARCHAR(20) PRIMARY KEY,
    ->     enrolldate VARCHAR(30),
    ->     studentid VARCHAR(20),
    ->     courseid VARCHAR(20),
    ->     instructorid VARCHAR(20),
    ->     FOREIGN KEY(studentid) REFERENCES student(studentid),
    ->     FOREIGN KEY(courseid) REFERENCES course(courseid),
    ->     FOREIGN KEY(instructorid) REFERENCES instructor(instructorid)
    -> );
Query OK, 0 rows affected (0.08 sec)

mysql> create table score(scoreid varchar(10)primary key,courseid varchar(20),studentid varchar(20),dateofexam varchar(70),creditobtained varchar(10),FOREIGN KEY(courseid) REFERENCES course(courseid),FOREIGN KEY(studentid) REFERENCES student(studentid));
Query OK, 0 rows affected (0.06 sec)

mysql> create table feedback(feedbackid varchar(20)primary key,studentid varchar(20),dateinstructorname varchar(30),feedback varchar(30),FOREIGN KEY(studentid) REFERENCES student(studentid));
Query OK, 0 rows affected (0.05 sec)

mysql> desc student;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| studentid | varchar(50) | NO   | PRI | NULL    |       |
| firstname | varchar(20) | YES  |     | NULL    |       |
| lastname  | varchar(20) | YES  |     | NULL    |       |
| DOB       | varchar(70) | YES  |     | NULL    |       |
| gender    | varchar(30) | YES  |     | NULL    |       |
| email     | varchar(70) | YES  |     | NULL    |       |
| phone     | varchar(70) | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
7 rows in set (0.03 sec)

mysql> desc course;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| courseid    | varchar(30) | NO   | PRI | NULL    |       |
| coursetitle | varchar(20) | YES  |     | NULL    |       |
| credit      | double      | YES  |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> desc instructor;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| instructorid | varchar(20) | NO   | PRI | NULL    |       |
| firstname    | varchar(60) | YES  |     | NULL    |       |
| lastname     | varchar(30) | YES  |     | NULL    |       |
| email        | varchar(70) | YES  |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> desc enrollment;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| enrollid     | varchar(20) | NO   | PRI | NULL    |       |
| enrolldate   | varchar(30) | YES  |     | NULL    |       |
| studentid    | varchar(20) | YES  | MUL | NULL    |       |
| courseid     | varchar(20) | YES  | MUL | NULL    |       |
| instructorid | varchar(20) | YES  | MUL | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> desc score;
+----------------+-------------+------+-----+---------+-------+
| Field          | Type        | Null | Key | Default | Extra |
+----------------+-------------+------+-----+---------+-------+
| scoreid        | varchar(10) | NO   | PRI | NULL    |       |
| courseid       | varchar(20) | YES  | MUL | NULL    |       |
| studentid      | varchar(20) | YES  | MUL | NULL    |       |
| dateofexam     | varchar(70) | YES  |     | NULL    |       |
| creditobtained | varchar(10) | YES  |     | NULL    |       |
+----------------+-------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> desc feedback;
+--------------------+-------------+------+-----+---------+-------+
| Field              | Type        | Null | Key | Default | Extra |
+--------------------+-------------+------+-----+---------+-------+
| feedbackid         | varchar(20) | NO   | PRI | NULL    |       |
| studentid          | varchar(20) | YES  | MUL | NULL    |       |
| dateinstructorname | varchar(30) | YES  |     | NULL    |       |
| feedback           | varchar(30) | YES  |     | NULL    |       |
+--------------------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> insert into  student values('S101','priya','sharma','2005-03-10','priya@gmail.com','75886412');
ERROR 1136 (21S01): Column count doesn't match value count at row 1
mysql> insert into  student values('S101','priya','sharma','2005-03-10','female','priya@gmail.com','75886412');
Query OK, 1 row affected (0.01 sec)

mysql> insert into  student values('S102','riya','sharma','2008-08-10','female','riya@gmail.com','75886412');
Query OK, 1 row affected (0.01 sec)

mysql> insert into  student values('S103','nisha','wagh','2007-01-20','female','nisha@gmail.com','77483902');
Query OK, 1 row affected (0.01 sec)

mysql> insert into  student values('S104','jaya','pawar','2003-11-2','female','jaya@gmail.com','965784315');
Query OK, 1 row affected (0.01 sec)

mysql> insert into  student values('S105','nitya','pawar','2003-11-24','female','nitya@gmail.com','9657102315');
Query OK, 1 row affected (0.00 sec)

mysql> select *from student;
+-----------+-----------+----------+------------+--------+-----------------+------------+
| studentid | firstname | lastname | DOB        | gender | email           | phone      |
+-----------+-----------+----------+------------+--------+-----------------+------------+
| S101      | priya     | sharma   | 2005-03-10 | female | priya@gmail.com | 75886412   |
| S102      | riya      | sharma   | 2008-08-10 | female | riya@gmail.com  | 75886412   |
| S103      | nisha     | wagh     | 2007-01-20 | female | nisha@gmail.com | 77483902   |
| S104      | jaya      | pawar    | 2003-11-2  | female | jaya@gmail.com  | 965784315  |
| S105      | nitya     | pawar    | 2003-11-24 | female | nitya@gmail.com | 9657102315 |
+-----------+-----------+----------+------------+--------+-----------------+------------+
5 rows in set (0.00 sec)

mysql> insert into course values('c101',dbms',2);
    '> insert into course values('C101',dbms',2);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '',2);
insert into course values('C101',dbms',2)' at line 1
mysql> insert into course values('C101','dbms',2);
Query OK, 1 row affected (0.01 sec)

mysql> insert into course values('C102','os',5);
Query OK, 1 row affected (0.01 sec)

mysql> insert into course values('C103','sadp',6);
Query OK, 1 row affected (0.00 sec)

mysql> insert into course values('C104','Aos',4);
Query OK, 1 row affected (0.01 sec)

mysql> insert into course values('C105','Aos',3);
Query OK, 1 row affected (0.01 sec)

mysql> select *from course;
+----------+-------------+--------+
| courseid | coursetitle | credit |
+----------+-------------+--------+
| C101     | dbms        |      2 |
| C102     | os          |      5 |
| C103     | sadp        |      6 |
| C104     | Aos         |      4 |
| C105     | Aos         |      3 |
+----------+-------------+--------+
5 rows in set (0.00 sec)

mysql> insert into instructor values('I101',' priya',' sharma',' priya@gmail.com');
Query OK, 1 row affected (0.01 sec)

mysql> insert into instructor values('I102',' riya',' sharma',' riya@gmail.com');
Query OK, 1 row affected (0.01 sec)

mysql> insert into instructor values('I103',' nisha',' sharma',' nisha@gmail.com');
Query OK, 1 row affected (0.01 sec)

mysql> insert into instructor values('I104',' aisha',' warma',' aisha@gmail.com');
Query OK, 1 row affected (0.00 sec)

mysql> insert into instructor values('I105',' pooja',' wagh',' pooja@gmail.com');
Query OK, 1 row affected (0.01 sec)

mysql> select *from instructor;
+--------------+-----------+----------+------------------+
| instructorid | firstname | lastname | email            |
+--------------+-----------+----------+------------------+
| I101         |  priya    |  sharma  |  priya@gmail.com |
| I102         |  riya     |  sharma  |  riya@gmail.com  |
| I103         |  nisha    |  sharma  |  nisha@gmail.com |
| I104         |  aisha    |  warma   |  aisha@gmail.com |
| I105         |  pooja    |  wagh    |  pooja@gmail.com |
+--------------+-----------+----------+------------------+
5 rows in set (0.00 sec)

mysql> insert into enrollment values('E101','2001-10-21','S101','C101','I101');
Query OK, 1 row affected (0.01 sec)

mysql> insert into enrollment values('E102','2005-10-11','S102','C102','I102');
Query OK, 1 row affected (0.00 sec)

mysql> insert into enrollment values('E103','2002-05-7','S103','C103','I103');
Query OK, 1 row affected (0.00 sec)

mysql> insert into enrollment values('E104','2002-05-14','S104','C104','I104');
Query OK, 1 row affected (0.01 sec)

mysql> insert into enrollment values('E105','2000-08-21','S105','C105','I105');
Query OK, 1 row affected (0.01 sec)

mysql> select *from enrollment;
+----------+------------+-----------+----------+--------------+
| enrollid | enrolldate | studentid | courseid | instructorid |
+----------+------------+-----------+----------+--------------+
| E101     | 2001-10-21 | S101      | C101     | I101         |
| E102     | 2005-10-11 | S102      | C102     | I102         |
| E103     | 2002-05-7  | S103      | C103     | I103         |
| E104     | 2002-05-14 | S104      | C104     | I104         |
| E105     | 2000-08-21 | S105      | C105     | I105         |
+----------+------------+-----------+----------+--------------+
5 rows in set (0.00 sec)

mysql> insert into score values('SS101','C101','S101','2005-10-11',2);
Query OK, 1 row affected (0.01 sec)

mysql> insert into score values('SS102','C102','S102','2001-04-11',5);
Query OK, 1 row affected (0.01 sec)

mysql> insert into score values('SS103','C103','S103','2001-10-21',3);
Query OK, 1 row affected (0.01 sec)

mysql> insert into score values('SS104','C104','S104','2010-10-24',5);
Query OK, 1 row affected (0.01 sec)

mysql> insert into score values('SS105','C105','S105','2010-05-24',3);
Query OK, 1 row affected (0.01 sec)

mysql> select *from score;
+---------+----------+-----------+------------+----------------+
| scoreid | courseid | studentid | dateofexam | creditobtained |
+---------+----------+-----------+------------+----------------+
| SS101   | C101     | S101      | 2005-10-11 | 2              |
| SS102   | C102     | S102      | 2001-04-11 | 5              |
| SS103   | C103     | S103      | 2001-10-21 | 3              |
| SS104   | C104     | S104      | 2010-10-24 | 5              |
| SS105   | C105     | S105      | 2010-05-24 | 3              |
+---------+----------+-----------+------------+----------------+
5 rows in set (0.00 sec)

mysql> insert into feedback values('S101','2014-12-01','priya sharma','the instructor explaines concept clearly');
ERROR 1406 (22001): Data too long for column 'feedback' at row 1
mysql> insert into feedback values('F101','S101','priya sharma','the instructor explaines concept clearly');
ERROR 1406 (22001): Data too long for column 'feedback' at row 1
mysql> insert into feedback values('F101','S101','priya sharma','good');
Query OK, 1 row affected (0.01 sec)

mysql> insert into feedback values('F102','S102','riya sharma',' verygood');
Query OK, 1 row affected (0.01 sec)

mysql> insert into feedback values('F103','S103','nisha wagh',' verygood explain');
Query OK, 1 row affected (0.01 sec)

mysql> insert into feedback values('F104','S104','jaya pawar',' great teaching');
Query OK, 1 row affected (0.01 sec)

mysql> insert into feedback values('F105','S105','nitya pawar',' great teaching');
Query OK, 1 row affected (0.01 sec)

mysql> select *from feedback;
+------------+-----------+--------------------+-------------------+
| feedbackid | studentid | dateinstructorname | feedback          |
+------------+-----------+--------------------+-------------------+
| F101       | S101      | priya sharma       | good              |
| F102       | S102      | riya sharma        |  verygood         |
| F103       | S103      | nisha wagh         |  verygood explain |
| F104       | S104      | jaya pawar         |  great teaching   |
| F105       | S105      | nitya pawar        |  great teaching   |
+------------+-----------+--------------------+-------------------+
5 rows in set (0.00 sec)

mysql>