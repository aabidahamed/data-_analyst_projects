create database simpleDB;
use simpleDB;
show databases;
create table student (
studentID int primary key,
name varchar(50) not null,
Mark int check (Mark between 0 and 100),
city varchar(30) default 'coimbatore');
 select * from student;
insert into student(studentid , name,mark,city) values
(1,'arun',80,'chennai'),
(2,'priya',90,'madurai'),
(3,'kumar',70,'coimbatore'),
(4,'meena',85,default),
(5,'sara',95,'chennai');
 select * from student;
 select count(*) from student;
 select max(Mark) from student;
 select min(Mark) from student;
 select count(*) from student where city='chennai';
 select count(*) from student where Mark > 80;
 select count(*) from student where Mark < 60;
 select sum(Mark) from student where city='chennai'; 
 select avg(Mark) from student where city='madurai';
 select count(*) from student where Mark=90;
 select count(*) from student where Mark between 70 and 90;
 select sum(Mark) from student
 where Name LIKE 'A%';
 select Name from student
 where Name LIKE 'A%';