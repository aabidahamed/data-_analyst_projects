create database employeeDB;
use employeeDB;
show databases;
create table employee (
employeeID int primary key,               
employeename varchar(50) not null,   
department varchar(50) not null,             
salary int check (salary between 0 and 1000000),
city varchar(30) default 'coimbatore');
 select * from employee;
 insert into employee values
 (1,'arun','cse',50000,'chennai'),
(2,'priya','IT',60000,'madurai'),
(3,'kumar','civil',70000,'coimbatore'),
(4,'meena','mech',45000,default),
(5,'sara','cse',35000,'chennai');
 select * from employee;
 select count(*) AS chennaiemployee
from employee
where city = 'chennai';
select max(salary) from employee;
select department, count(*) as employeecount
from employee
group by department;
select employeename,avg(salary) as averagesalary
from employee
group by employeename 
having avg(salary) > 40000;
select employeeName from employee
 where employeeName LIKE 'A%';
 select department, avg(salary) as averagesalary
 from employee
group by department;
select min(salary) from employee;
SELECT employeename, Department FROM Employee
WHERE Department <> 'IT';
SELECT City, COUNT(*) AS EmployeeCount
FROM Employee
GROUP BY City
HAVING EmployeeCount > 2;
drop database employeedb;









