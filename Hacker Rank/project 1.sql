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

WSELECT CEIL (AVG (SALARY) - AVG(REPLACE(SALARY, 0, ''))) FROM EMPLOYEES

-- We define an employee's total earnings to be their monthly  worked, and the maximum total earnings to be the maximum total earnings for any employee in the Employee table. Write a query to find the maximum total earnings for all employees as well as the total number of employees who have maximum total earnings. Then print these values as  space-separated integers.

SELECT months*salary as earnings, COUNT(*) FROM Employee GROUP BY earnings ORDER BY earnings DESC LIMIT 1;

-- Query the following two values from the STATION table:

The sum of all values in LAT_N rounded to a scale of  decimal places.
The sum of all values in LONG_W rounded to a scale of  decimal places.
SELECT
    ROUND(SUM(LAT_N), 2) AS sum_lat_n,
    ROUND(SUM(LONG_W), 2) AS sum_long_w
FROM
    STATION;

--- Query the sum of Northern Latitudes (LAT_N) from STATION having values greater than  and less than . Truncate your answer to  decimal places.

SELECT ROUND(SUM(LAT_N), 4) FROM STATION WHERE LAT_N > 38.7880 AND LAT_N < 137.2345;