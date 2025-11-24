create database collegeDB;
use collegeDB;

create table course(
courseid int auto_increment primary key,
coursename varchar(50),
duration int   -- months
);

create table student (
studentid int auto_increment primary key,
name varchar(50),
courseid int,
foreign key (courseid) references course(courseid)
);

create table enrollment (
enrollmentid int auto_increment primary key,
studentid int,
courseid int,
enrolldate date,
foreign key (studentid) references student(studentid),
foreign key (courseid) references course(courseid)
);

show tables;

insert into course (coursename,duration)values
('python',2),
('data science',4),
('ai',6);

insert into student (name,courseid) values
('arun',2),
('kavi',1),
('ravi',3);

insert into enrollment (studentid,courseid,enrolldate) values
(1,2,'2024-01-10'),
(2,1,'2024-02-15'),
(3,3,'2024-03-05');

select * from course;
select * from student;
select * from enrollment;

select Name 
from student
where courseid in(select courseid from course where Duration > 3);

select courseid from course where duration > 3;
  
select Name 
from student								
where studentid = (select studentid from enrollment order by enrolldate desc limit 1);

select count(*)
from enrollment
where courseid = (select courseid from course where coursename = 'python');

select name 
from  student
where studentid in (select studentid from enrollment where enrolldate > '2024-02-01');

select studentid from enrollment where enrolldate > '2024-02-01';

select coursename 
from course
where courseid in (select courseid from enrollment);

select courseid from enrollment;

select name 
from student
where studentid = (select studentid from enrollment order by enrolldate asc limit 1);

select coursename
from course
where courseid = (
    select coureid
    from enrollment
    group by courseid
    order by count(*) desc
    limit 1
);   

select name 
from student
where studentid in(
    select studentid from enrollment
    where enrolldate = (select min(enrolldate) from enrollment)
);

select coursename
from course 
where duration > (select avg(duration) from course);

select avg(duration) from course;

select name 
from student
where studentid in(
    select studentid from enrollment
    where courseid = (select courseid from course where coursename ='ai')
);

select courseid from course where coursename = 'ai';
drop database collegedb;
    
    
  











