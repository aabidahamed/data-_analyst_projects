create database SchoolDB;

USE SchoolDB;

show databases;

create table Student (studentID INT,studentName varchar(50),department varchar(20),Age int);

show tables;

Alter table student ADD Email varchar(100);

select * from student;

alter table student rename to student_detail;

show tables;

truncate table student_detail;

drop table Student_detail;

drop database SchoolDB;
