create database schoolDB;
show databases;
use SchoolDB;
create table Student (
StudentID INT ,
StudentName varchar(50),
Department varchar(50),
Age int
);
show tables;
select * from student;
insert INTO Student (studentID,studentName,Department,Age)
values(1,'Alice','computer science',20);
select * from student;
insert INTO student values(2,'Ajay','AIDE',18);
select * from student;
insert INTO Student (studentID,studentName,Department,Age)
values
   (3,'bob','mechanical engineering',22),
   (4,'charlie','electrical engineering',21),  
   (5,'Diana','civil engineering',23);
select * from student;
UPDATE student SET Department= 'Data Science' WHERE studentID = 1;   
SET SQL_SAFE_UPDATES = 0;
select * from student;
delete from student WHERE studentID = 1;
alter table student ADD Email varchar(100);
truncate table student;
drop table student;
drop database schoolDB;
 show databases;
