create database clauseDB;
use clauseDB;
show databases;
create table student (
studentID int primary key,                -- primary key
name varchar(50) not null,                -- not null
city varchar(50) default 'TIRUPPUR',      -- default
Mark int check (Mark between 0 and 100),  -- check
Email varchar(50) unique                  -- unique
);
select * from student;
insert into student values
(1,'arun','chennai',85,'arun@gmail.com'),
(2,'priya','madurai',92,'priya@gmail.com'),
(3,'kumar','chennai',76,'kumar@gmail.com'),
(4,'meena',default,64,'meena@gmail.com'),
(5,'sara','chennai',95,'sara@gmail.com');
select * from student;
select count(*) AS chennaistudents
from student
where city = 'chennai';
select Name,Mark 
from student
order by mark desc
limit 1;
select city, count(*) as studentcount
from student
group by city;
select city,avg(mark) as averagemark
from student
group by city
having avg(mark) > 80;
select sum(mark) as chennaitotalmarks
from student
where city = 'chennai';
select name,Mark
from student
order by mark desc
limit 3;
select 	city, avg(mark)
from student
where Mark > 60
group by city
having avg(mark) > 70
order by avg(mark) desc
limit 2;
