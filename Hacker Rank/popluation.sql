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
