create database employeeDB;
show databases;
use employeeDB;
create table employee (
employeeID INT ,
employeeName varchar(50),
Department varchar(50),
Age int
);
show tables;
select * from employee;
insert INTO employee (employeeID,employeeName,Department,Age)                                     
values(1,'afzal','computer science',21);                                                       
select * from employee;
insert INTO employee values(2,'sugash','AIDS',23);
select * from employee;
insert INTO employee (employeeID,employeeName,Department,Age)
values
   (3,'marvan','mechanical engineering',20),
   (4,'kaleel','electrical engineering',26),  
   (5,'thaseen','civil engineering',20),
   (6,'jenix','computer science',21),
   (7,'sasi','mechanical engineering',23),
   (8,'john','AIDS',24),
   (9,'alan','civil engineering',22),
   (10,'faheem',' electrical engineering',25);
select * from employee;
Alter table employee ADD employeeSalary varchar(100);
select * from employee;
delete from employee WHERE employeeID = 5;
SET SQL_SAFE_UPDATES = 0;
select * from employee;
truncate table employee;
drop table employee;
drop database employeeDB;
 show databases;
