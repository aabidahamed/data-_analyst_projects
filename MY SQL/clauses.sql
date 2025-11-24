CREATE DATABASE ClauseDB;

USE ClauseDB;

show databases;

CREATE TABLE Student (
    StudentID INT PRIMARY KEY,          -- PRIMARY KEY
    Name VARCHAR(50) NOT NULL,          -- NOT NULL
    City VARCHAR(50) DEFAULT 'TIRUPPUR',      -- DEFAULT
    Mark INT CHECK (Mark BETWEEN 0 AND 100),  -- CHECK
    Email VARCHAR(50) UNIQUE            -- UNIQUE
);


INSERT INTO Student VALUES
(1, 'Arun', 'Chennai', 85, 'arun@gmail.com'),
(2, 'Priya', 'Madurai', 92, 'priya@gmail.com'),
(3, 'Kumar', 'Chennai', 76, 'kumar@gmail.com'),
(4, 'Meena', DEFAULT, 64, 'meena@gmail.com'),
(5, 'Sara', 'Chennai', 95, 'sara@gmail.com');

SELECT * FROM STUDENT;

SELECT COUNT(*) AS ChennaiStudents
FROM Student
WHERE City = 'Chennai';

SELECT Name, Mark AS HIGHEST_MARKS
FROM Student
ORDER BY Mark DESC
LIMIT 2;

SELECT City, COUNT(*) AS StudentsCount
FROM Student
GROUP BY City;

SELECT City, AVG(Mark) AS AverageMark
FROM Student
GROUP BY City
HAVING AVG(Mark) > 80;

SELECT SUM(Mark) AS ChennaiTotalMarks
FROM Student
WHERE City = 'Chennai';

SELECT Name, Mark
FROM Student
ORDER BY Mark DESC
LIMIT 3;

SELECT City, AVG(Mark)
FROM Student
WHERE Mark > 60
GROUP BY City
HAVING AVG(Mark) > 70
ORDER BY AVG(Mark) DESC
LIMIT 2;


drop database clausedb;
