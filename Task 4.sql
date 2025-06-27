CREATE DATABASE marks;

--STUDENT MARKS TABLE

CREATE TABLE student_marks(
student_id INT PRIMARY KEY,
student_name VARCHAR(50),
english INT,
computer INT,
total_marks_obtained INT
);
 
INSERT INTO student_marks
VALUES (111,"Sonam",78,67,145),
	   (112,"Tara",45,89,134),
       (113,"Sakshi",97,95,192),
       (114,"Kapoor",69,76,145),
	   (115,"Rahul",59,90,149);
 
--Aggregate Functions
--COUNT

SELECT COUNT(english)
FROM student_marks;

--RENAME COLUMN NAME 

SELECT COUNT(english) AS count
FROM student_marks;

--AVERAGE

SELECT AVG(computer)
FROM student_marks;

--SUM

SELECT SUM(computer)
FROM student_marks;

--GROUP BY USING AGGREGATE FUNCTIONS

SELECT SUM(computer),total_marks_obtained
FROM student_marks
GROUP BY total_marks_obtained;

SELECT AVG(computer),total_marks_obtained
FROM student_marks
GROUP BY total_marks_obtained;

SELECT COUNT(computer),total_marks_obtained
FROM student_marks
GROUP BY total_marks_obtained;

--HAVING
SELECT COUNT(computer),total_marks_obtained
FROM student_marks
GROUP BY total_marks_obtained
HAVING COUNT(computer)>1;

DROP DATABASE marks;


