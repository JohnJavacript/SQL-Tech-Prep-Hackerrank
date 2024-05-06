-- Query the Name of any student in STUDENTS who scored higher than  Marks. Order your output by the last three characters of each name. If two or more students both have names ending in the same last three characters (i.e.: Bobby, Robby, etc.), secondary sort them by ascending ID.

 SELECT Name FROM STUDENTS
 WHERE Marks >75
 ORDER BY SUBSTR(Name,-3),ID

--Write a query that prints a list of employee names (i.e.: the name attribute) from the Employee table in alphabetical order.

Input Format

The Employee table containing employee data for a company is described as follows
 
SELECT  name
FROM Employee
ORDER BY name;