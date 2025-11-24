create database companydb;
use companydb;
show databases;
create table Employees(
	Empid  int primary key,
    empName varchar(50),
    joinDate Date,
    loginTime time,
    lastupdated timestamp default current_timestamp,
    joindatetime datetime
);
insert into employees (Empid,empName,joinDate,loginTime,joindatetime)
values
(1,'Arjun', '2024-01-10', '09:15:00','2024-01-10 09:15:00'),
(2,'vijay', '2024-02-10', '09:10:00','2024-02-10 09:10:00'),
(3,'suriya', '2024-02-14', '09:30:00','2024-02-14 09:15:00'),
(4,'ajith', '2024-03-10', '09:35:00','2024-03-10 09:35:00'),
(5,'str', '2024-03-20', '09:15:00','2024-03-20 09:15:00'),
(6,'prabas', '2024-04-10', '09:15:00','2024-04-10 09:15:00'),
(7,'ttf', '2024-04-25', '09:35:00','2024-04-25 09:35:00');
-- current date & time
-- today's date
select current_date();
select current_time();
select now();
select year(joinDate) from employees;

-- month
select month(joinDate) from employees;

-- Day
select day(joinDate) from employees;

-- hour
select hour(loginTime) from employees;

-- minutes
select minute(loginTime) from employees;

-- seconds
select second(logintime) from employees;

-- Add/subtract dates
select date_add(joindate, interval 10 day) from employees;

-- add months
select date_add(joinDate, interval 2 month) from employees;

-- subtract days
select date_sub(joinDate, interval 5 day) from employees;

-- add years
select date_add(joindate, interval 2 year) from employees;

-- date difference
select datediff('2024-12-31',joinDate) from employees;

-- format data
select  date_format(joindate,'%D-%M-%Y') from employees;

-- format as month name 
select date_format(joindate,'%M') from employees;

-- compare dates
-- employees joined after feb 1
select * from employees
where joindate > '2024-02-01';

-- joined between two dates
select * from Employees
where joindate between '2024-01-01' and '2024-03-01';

-- working with time
-- employees logged in before 9 am
select * from employees
where logintime < '09:00:00';

-- add time (30 minutes)
select addtime(logintime,'00:30:00') from employees;
select addtime(logintime,'01:00:00') from employees;

-- subtract time 
select subtime(logintime, '00:15:00') from employees;

-- convert string to date
select str_to_date('15-02-2024','%d-%m-%Y');

-- convert date to string
select date_format(now(),'%w,%m,%y');

-- extract only date
select date(joindatetime) from employees;

-- extract only time 
select time(joindatetime) from employees;

-- sort by joining date (newest first)
select * from employees
order by joindate desc;

-- sort by joining time (newest first)
select * from employees
order by logintime desc;

-- count employee join per month
select month(joindate),count(*)
from employees
group by month(joindate);

-- delect employee who join before feb
SET SQL_SAFE_UPDATES = 0;
delete from employees
where joindate < '2024-02-01';

select * from employees;
drop table employees;
drop database companydb;