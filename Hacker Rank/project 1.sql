-- Query a count of the number of cities in CITY having a Population larger than 10000 --

SELECT COUNT(*) 
FROM CITY 
WHERE POPULATION > 100000;

-- Query the total population of all cities in CITY where District is California.--
SELECT SUM(POPULATION) AS total_population
FROM CITY
WHERE DISTRICT = 'California';

-- Query the average population of all cities in CITY where District is California. --
SELECT AVG(POPULATION) AS average_population
FROM CITY
WHERE DISTRICT = 'California';

-- Query the average population for all cities in CITY, rounded down to the nearest integer. --
SELECT FLOOR(AVG(POPULATION))
FROM CITY;

-- Query the sum of the populations for all Japanese cities in CITY. The COUNTRYCODE for Japan is JPN. --
SELECT SUM(POPULATION) AS Total_Population
FROM CITY
WHERE COUNTRYCODE = 'JPN';


-- Query the difference between the maximum and minimum populations in CITY. --
SELECT  MAX(POPULATION) - MIN(POPULATION) AS Population_Difference
FROM CITY;



--Samantha was tasked with calculating the average monthly salaries for all employees in the EMPLOYEES table, but did not realize her keyboard's  key was broken until after completing the calculation. She wants your help finding the difference between her miscalculation (using salaries with any zeros removed), and the actual average salary.

Write a query calculating the amount of error (i.e.:  average monthly salaries), and round it up to the next integer.
WITH ZeroRemovedSalaries AS (
  SELECT
    ID,
    Name,
    REPLACE(CAST(Salary AS TEXT), '0', '') AS ZeroRemovedSalary
  FROM EMPLOYEES
),
AverageZeroRemovedSalary AS (
  SELECT
    AVG(CAST(ZeroRemovedSalary AS INTEGER)) AS AverageZeroRemovedSalary
  FROM ZeroRemovedSalaries
),
ActualAverageSalary AS (
  SELECT
    AVG(Salary) AS ActualAverageSalary
  FROM EMPLOYEES
)
SELECT
  CEILING(ABS(AverageZeroRemovedSalary.AverageZeroRemovedSalary - ActualAverageSalary.ActualAverageSalary)) AS Error
FROM
  AverageZeroRemovedSalary, ActualAverageSalary;
