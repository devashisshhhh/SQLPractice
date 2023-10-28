USE ORG;


CREATE DATABASE temp;
USE temp;
CREATE TABLE student (
id INT PRIMARY KEY,
name VARCHAR(255)
);
INSERT INTO student VALUES(1, "Devashish");
SELECT * FROM student;
CREATE DATABASE ORG;
SHOW DATABASES;
USE ORG;
CREATE TABLE Worker (
WORKER_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
FIRST_NAME CHAR(25),
LAST_NAME CHAR(25),
SALARY INT(15),
JOINING_DATE DATETIME,
DEPARTMENT CHAR(25)
);
INSERT INTO Worker
	(WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) VALUES
		(001, 'Devashish', 'Sharma', 100000, 01-01-24 09:00:00, 'Consulting'),
		(002, 'Abhipriya', 'Tyagi', 71000, 01-01-24 09:00:00, 'Consulting'),
		(003, 'Bharat', 'Gautam', 60000, 01-01-24 09:00:00, 'Cyber Security'),
		(004, 'Bhoomi', 'Kamra', 60000, 01-01-24 09:00:00, 'HR'),
		(005, 'Parth', 'Nautiyal', 100000, 01-01-24 09:00:00, 'Development'),
		(006, 'Aayushman', 'Gusain', 120000, 01-01-24 09:00:00, 'Development');
SELECT * FROM Worker;
INSERT INTO Worker
 	(WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) VALUES
		(001, 'Devashish', 'Sharma', 100000, 01-01-24 09:00:00, 'Consulting'),
		(002, 'Abhipriya', 'Tyagi', 71000, 01-01-24 09:00:00, 'Consulting'),
		(003, 'Bharat', 'Gautam', 60000, 01-01-24 09:00:00, 'Cyber Security'),
		(004, 'Bhoomi', 'Kamra', 60000, 01-01-24 09:00:00, 'HR'),
		(005, 'Parth', 'Nautiyal', 100000, 01-01-24 09:00:00, 'Development'),
		(006, 'Aayushman', 'Gusain', 120000, 01-01-24 09:00:00, 'Development');
INSERT INTO Worker VALUES
		(001, 'Devashish', 'Sharma', 100000, 01-01-24 09:00:00, 'Consulting'),
		(002, 'Abhipriya', 'Tyagi', 71000, 01-01-24 09:00:00, 'Consulting'),
		(003, 'Bharat', 'Gautam', 60000, 01-01-24 09:00:00, 'Cyber Security'),
		(004, 'Bhoomi', 'Kamra', 60000, 01-01-24 09:00:00, 'HR'),
		(005, 'Parth', 'Nautiyal', 100000, 01-01-24 09:00:00, 'Development'),
		(006, 'Aayushman', 'Gusain', 120000, 01-01-24 09:00:00, 'Development');
INSERT INTO Worker
 	(WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) VALUES
		(001, 'Devashish', 'Sharma', 100000, '01-01-24 09:00:00', 'Consulting'),
		(002, 'Abhipriya', 'Tyagi', 71000, '01-01-24 09:00:00', 'Consulting'),
		(003, 'Bharat', 'Gautam', 60000, '01-01-24 09:00:00', 'Cyber Security'),
		(004, 'Bhoomi', 'Kamra', 60000, '01-01-24 09:00:00', 'HR'),
		(005, 'Parth', 'Nautiyal', 100000, '01-01-24 09:00:00', 'Development'),
		(006, 'Aayushman', 'Gusain', 120000, '01-01-24 09:00:00', 'Development');
SELECT * FROM Worker;
DROP DATABASE temp;
CREATE TABLE Bonus (
WORKER_REF_ID INT,
BONUS_AMOUNT INT(10),
BONUS_DATE DATETIME,
FOREIGN KEY (WORKER_REF_ID)
	REFERNCES Worker(WORKER_ID)
    ON DELETE CASCADE
);
CREATE TABLE Bonus (
WORKER_REF_ID INT,
BONUS_AMOUNT INT(10),
BONUS_DATE DATETIME,
FOREIGN KEY (WORKER_REF_ID)
	REFERENCES Worker(WORKER_ID)
    ON DELETE CASCADE
);
INSERT INTO Bonus
	(WORKER_REF_ID, BONUS_AMOUNT, BONUS_DATE) VALUES
		(001, 500000, '16-11-2024'),
        (002, 500000, '25-02-2025'),
        (003, 500000, '18-11-2024'),
        (004, 500000, '21-08-2025'),
        (005, 500000, '01-10-2024'),
        (006, 500000, '01-10-2024');
INSERT INTO Bonus
	(WORKER_REF_ID, BONUS_AMOUNT, BONUS_DATE) VALUES
		(001, 500000, '16-11-24'),
        (002, 500000, '25-02-25'),
        (003, 500000, '18-11-24'),
        (004, 500000, '21-08-25'),
        (001, 500000, '01-10-24'),
        (002, 500000, '01-10-24');
CREATE TABLE Title (
WORKER_REF_ID INT,
WORKER_TITLE CHAR(25),
AFFECTED_FROM DATETIME,
FOREIGN KEY (WORKER_REF_ID)
	REFERENCES Worker(WORKER_ID)
    ON DELETE CASCADE
);
CREATE TABLE Title (
WORKER_REF_ID INT,
WORKER_TITLE CHAR(25),
AFFECTED_FROM DATETIME,
FOREIGN KEY (WORKER_REF_ID)
	REFERENCES Worker(WORKER_ID)
    ON DELETE CASCADE
);
INSERT INTO Title
	(WORKER_REF_ID, WORKER_TITLE, AFFECTED_FROM) VALUES
		(001, 'Manager', '2025-06-06 00:00:00'),
        (002, 'Ass. Manager', '2025-06-06 00:00:00'),
        (003, 'Executive', '2025-06-06 00:00:00'),
        (004, 'Lead', '2025-06-06 00:00:00'),
        (005, 'Lead', '2025-06-06 00:00:00'),
        (005, 'Manager', '2025-06-06 00:00:00');
SELECT * FROM Title;
SELECT * FROM Worker;
SELECT SALARY, FIRST_NAME FROM Worker;
SELECT WORKER_ID, FIRST_NAME, SALARY FROM Worker;
SELECT 44 + 11;
SELECT NOW;
SELECT now();
SELECT ucase();
SELECT ucase('Devashish');
SELECT * FROM Worker WHERE SALARY > 70000;
SELECT * FROM Worker WHERE SALARY BETWEEN 70000 AND 100000;
SELECT * FROM Worker WHERE DEPARTMENT = 'HR' OR DEPARTMENT = 'Consulting' OR DEPARTMENT = 'Development';
SELECT * FROM Worker WHERE DEPARTMENT IN ('HR', 'Consulting', 'Development');
SELECT * FROM Worker WHERE DEPARTMENT NOT IN ('Cyber Security', 'HR');
SELECT * FROM Customer WHERE LAST_NAME is NULL;
SELECT * FROM Worker WHERE LAST_NAME is NULL;
SELECT * FROM Worker WHERE FIRST_NAME LIKE '%hi%';
SELECT * FROM Worker WHERE FIRST_NAME LIKE '__hi';
SELECT * FROM Worker WHERE FIRST_NAME LIKE '_ev';
SELECT * FROM Worker WHERE FIRST_NAME LIKE '_e%';
SELECT * FROM Worker WHERE FIRST_NAME LIKE '__hi%';
SELECT * FROM Worker ORDER BY SALARY;
SELECT * FROM Worker ORDER BY SALARY DESC;
SELECT DISTINCT Department FROM Worker;
SELECT Department FROM Worker GROUP BY Department;
SELECT Department, COUNT(*) FROM Worker GROUP BY Department;

-- Count
SELECT Department, COUNT(Department) FROM Worker GROUP BY Department;

-- Average
SELECT Department, AVG(Salary) from Worker GROUP BY Department;

-- Minimum
SELECT Department, MIN(Salary) FROM Worker GROUP BY Department;

-- Maximum
SELECT Department, MAX(Salary) FROM Worker GROUP BY Department;

-- Sum
SELECT Department, SUM(Salary) FROM Worker GROUP BY Department;

-- Group By Having
SELECT Department, COUNT(Department) FROM Worker GROUP BY Department HAVING COUNT(Department) > 1;

-- PRIMARY KEY, FOREIGN KEY
CREATE TABLE Customer (
    ID INT PRIMARY KEY,
    NAME VARCHAR(255),
    DOB DATE,
    GENDER CHAR(6)
);

CREATE TABLE Orders (
    Order_ID INT PRIMARY KEY,
    Delivery_Date DATE,
    Order_Date DATE,
    Customer_ID INT,
    FOREIGN KEY (Customer_ID) REFERENCES Customer(ID)
);

INSERT INTO Customer VALUES
(1, 'Devashish', '2003-11-16', 'Male'),
(2, 'Abhipriya', '2003-02-25', 'Female'),
(3, 'Parth', '2001-01-01', 'Male'),
(4, 'Aayushman', '2001-01-01', 'Male');

INSERT INTO Orders VALUES
(1, '2023-09-03', '2023-09-01', 1),
(2, '2023-09-04', '2023-09-02', 2),
(3, '2023-09-05', '2023-09-03', 1);

-- CHECK
CREATE TABLE Account(
ID INT PRIMARY KEY,
Name VARCHAR(255),
Balance INT,
CONSTRAINT acc_bal_chk CHECK(Balance > 1000)
);

-- DEFAULT & UNIQUE
CREATE TABLE Bank(
ID INT PRIMARY KEY,
Name VARCHAR(255) UNIQUE,
Balance INT NOT NULL DEFAULT 0
);

-- Default value gets inserted
INSERT INTO Bank(ID, Name) VALUES
(1, 'Devashish');

-- Unique Values only gets inserted
INSERT INTO Bank(ID, Name) VALUES
(2, 'Devashish');

SELECT * FROM Bank;

-- An attribute can be both Primary key and Foreign key

-- ALTER Operations

-- ADD COLUMN
ALTER TABLE Bank ADD INTEREST FLOAT NOT NULL DEFAULT 1.5;

-- MODIFY
ALTER TABLE Bank MODIFY INTEREST DOUBLE NOT NULL DEFAULT 1.5;

-- RENAME Column name
ALTER TABLE Bank CHANGE INTEREST SIMPLE_INTEREST DOUBLE NOT NULL DEFAULT 1.5;

-- DROP Column
ALTER TABLE Bank DROP COLUMN SIMPLE_INTEREST;

-- RENAME TABLE
ALTER TABLE Bank RENAME TO New_bank;

-- DESC used for Descibing table
DESC New_bank;

-- UPDATE
UPDATE New_Bank SET Balance = 1000000000 WHERE Name = 'Devashish';

SELECT * FROM New_Bank;

-- UPDATE MULTIPLE ROWS
SET SQL_SAFE_UPDATES = 0;
INSERT INTO New_Bank(ID, Name) VALUES
(2, 'Abhipriya'),
(3, 'Parth'),
(4, 'Aayushman');

UPDATE New_Bank SET Balance = 500000000;

UPDATE New_Bank SET Balance = Balance + 100;

-- DELETE
DELETE FROM New_Bank WHERE ID = 3;

-- ON DELETE CASCADE
-- IF WE DELETE FROM PARENT TABLE IT GETS DELETED FROM CHILD AS WELL

-- ON DELETE SET NULL
-- IF WE DELETE FROM PARENT TABLE IT WILL BE SET TO NULL IN CHILD TABLE

-- REPLACE
REPLACE INTO New_Bank (ID, Name) VALUES
(4, 'Aayushman');

REPLACE INTO New_Bank (ID, Name) VALUES
(3, 'Parth');

-- JOINS
-- INNER JOIN
CREATE TABLE Student(
ID INT PRIMARY KEY,
First_Name VARCHAR(255),
Last_Name VARCHAR(255),
DOB DATE
);

CREATE TABLE Placement(
ID INT,
PID INT PRIMARY KEY,
Company VARCHAR(255),
FOREIGN KEY (ID) REFERENCES Student(ID)
);

INSERT INTO Student VALUES
(1, 'DEVASHISH', 'SHARMA', '2003-11-16'),
(2, 'ABHIPRIYA', 'TYAGI', '2003-02-25'),
(3, 'PARTH', 'NAUTIYAL', '2001-01-01'),
(4, 'AAYUSHMAN', 'GUSAIN', '2001-01-01'),
(5, 'BHARAT', 'GAUTAM', '2001-11-18'),
(6, 'BHOOMI', 'KAMRA', '2002-06-21');

INSERT INTO Placement VALUES
(1, 02, 'TIAA'),
(2, 01, 'ZS ASSOCIATES'),
(3, 03, 'BARCLAYS'),
(4, 04, 'BARCLAYS');

-- INNER JOIN
SELECT S.*, P.* FROM Student AS S INNER JOIN Placement AS P ON S.ID = P.ID;

-- OUTER JOIN (LEFT JOIN)
SELECT S.*, P.* FROM Student AS S LEFT JOIN Placement AS P ON S.ID = P.ID;

-- OUTER JOIN (RIGHT JOIN)
INSERT INTO Placement VALUES
(5, 05, 'TIAA');
SELECT S.*, P.* FROM Student AS S RIGHT JOIN Placement AS P ON S.ID = P.ID;

-- FULL JOIN
SELECT * FROM Student as S LEFT JOIN Placement AS P ON S.ID = P.ID;
UNION
SELECT * FROM Placement as P RIGHT JOIN Student AS S on S.ID = P.ID;

-- CROSS JOIN
SELECT Student.First_Name, Placement.Company FROM Student CROSS JOIN Placement WHERE Student.ID = Placement.ID;

-- SELF JOIN
SELECT S1.ID, S2.ID, S2.First_Name FROM Student AS S1 INNER JOIN Student AS S2 ON S1.ID = S2.ID;

-- USE JOIN WITHOUT USING JOIN KEYWORD
SELECT * FROM Student, Placement WHERE Student.ID = Placement.ID;

-- SET OPERATIONS
-- UNION
CREATE TABLE New_Student(
ID INT PRIMARY KEY,
First_Name VARCHAR(255),
Last_Name VARCHAR(255),
DOB DATE
);

INSERT INTO New_Student VALUES
(7, 'DHRUV', 'GUPTA', '2001-01-01'),
(2, 'ABHIPRIYA', 'SHARMA', '2003-02-25');

UPDATE New_Student SET Last_Name = 'TYAGI' WHERE ID = 2;
SELECT * FROM Student
UNION
SELECT * FROM New_Student;

-- INTERSECT
SELECT * FROM Student
INTERSECT
SELECT * FROM New_Student;

SELECT DISTINCT * FROM Student INNER JOIN New_Student USING(ID);

-- MINUS
SELECT * FROM Student LEFT JOIN Placement USING(ID) WHERE Placement.ID IS NULL;

-- SUB QUERY
SELECT * FROM Student WHERE ID IN (SELECT ID FROM Placement WHERE Company = 'TIAA');

-- CORELATED SUBQUERY

-- VIEWS
CREATE VIEW StudentView AS SELECT First_Name, Last_Name FROM Student;
SELECT * FROM StudentView;
ALTER VIEW StudentView AS SELECT First_Name, Last_Name, DOB FROM Student;
DROP VIEW IF EXISTS StudentView;