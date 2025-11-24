CREATE DATABASE SimpleDB;

USE SimpleDB;

show databases;

CREATE TABLE Student (
    StudentID INT PRIMARY KEY,        -- PRIMARY KEY
    Name VARCHAR(50) NOT NULL,        -- NOT NULL
    Mark INT CHECK (Mark BETWEEN 0 AND 100),   -- CHECK
    City VARCHAR(30) DEFAULT 'COIMBATORE'   -- DEFAULT
);

INSERT INTO Student(studentid ,name,mark,city) VALUES
(1, 'Arun', 80, 'Chennai'),
(2, 'Priya', 90, 'Madurai'),
(3, 'Kumar', 70, 'Coimbatore'),
(4, 'Meena', 85, DEFAULT),
(5, 'Sara', 95, 'Chennai');

SELECT * FROM STUDENT;

SELECT COUNT(*) FROM Student;

SELECT MAX(Mark) FROM Student;

SELECT MIN(Mark) FROM Student;

SELECT AVG(Mark) FROM Student;

SELECT SUM(Mark) FROM Student;

SELECT COUNT(*) FROM Student WHERE City='Chennai';

SELECT COUNT(*) FROM Student WHERE Mark > 80;

SELECT COUNT(*) FROM Student WHERE Mark < 60;

SELECT COUNT(*) FROM Student WHERE City = 'Coimbatore';

-- total marks scored in the city of chennai
SELECT SUM(Mark) FROM Student WHERE City = 'Chennai';

SELECT AVG(Mark) FROM Student WHERE City = 'Madurai';

SELECT COUNT(*) FROM Student WHERE Mark = 90;

SELECT COUNT(*) FROM Student WHERE Mark BETWEEN 70 AND 90;

select name from student where name like 'A%';

SELECT SUM(Mark) FROM Student 
WHERE Name LIKE 'A%';

SELECT SUM(Mark) FROM Student 
WHERE Name LIKE '%A';

SELECT SUM(Mark) FROM Student 
WHERE Name LIKE '%A%';

Select * from student;

drop database simpledb;

