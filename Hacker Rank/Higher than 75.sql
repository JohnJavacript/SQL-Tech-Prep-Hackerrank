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

--Write a query that prints a list of employee names (i.e.: the name attribute) for employees in Employee having a salary greater than  per month who have been employees for less than  months. Sort your result by ascending employee_id.
SELECT name
FROM Employee
WHERE salary >2000 and months <10;


--Write a query identifying the type of each record in the TRIANGLES table using its three side lengths. Output one of the following statements for each record in the table:

SELECT CASE 
WHEN a+b <= c or b+c <= a or a+c <=b THEN 'Not A Triangle'
WHEN a=b and a=c THEN 'Equilateral'
WHEN a=b or a=c or b=c THEN 'Isosceles'
WHEN a<>b and b<>c THEN 'Scalene'
END
FROM TRIANGLES