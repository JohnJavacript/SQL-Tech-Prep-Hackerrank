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

-- The Pads
SELECT CONCAT(NAME,'(',SUBSTR(OCCUPATION,1,1),')') AS N
FROM OCCUPATIONS
ORDER BY N;
SELECT CONCAT('There are a total of ',COUNT(OCCUPATION),' ',LOWER(OCCUPATION),'s.')
FROM OCCUPATIONS
GROUP BY OCCUPATION
ORDER BY COUNT(OCCUPATION), OCCUPATION;

-- Occupations
SET @r1=0, @r2=0, @r3=0, @r4=0;
SELECT MIN(DOCTOR), MIN(PROFESSOR), MIN(SINGER), MIN(ACTOR)
FROM(
  SELECT CASE WHEN OCCUPATION = 'Doctor' THEN (@r1:=@r1+1)
              WHEN OCCUPATION = 'Professor' THEN (@r2:=@r2+1)
              WHEN OCCUPATION = 'Singer' THEN (@r3:=@r3+1)
              WHEN OCCUPATION = 'Actor' THEN (@r4:=@r4+1) END AS RowNumber,
    CASE WHEN OCCUPATION = 'Doctor' THEN Name END AS Doctor,
    CASE WHEN OCCUPATION = 'Professor' THEN Name END AS Professor,
    CASE WHEN OCCUPATION = 'Singer' THEN Name END AS Singer,
    CASE WHEN OCCUPATION = 'Actor' THEN Name END AS Actor
  FROM OCCUPATIONS
  ORDER BY NAME
) Temp
GROUP BY RowNumber;

-- Binary Tree Nodes
SELECT N, CASE WHEN P IS NULL THEN 'Root' 
WHEN(SELECT COUNT(*) FROM BST WHERE P = A.N) > 0 THEN 'Inner'
ELSE 'Leaf'
END
FROM BST A
ORDER BY N;