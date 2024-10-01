-- Query a count of the number of cities in CITY having a Population larger than 10000 --

SELECT COUNT(*) 
FROM CITY 
WHERE POPULATION > 100000;

-- Query the total population of all cities in CITY where District is California.--
SELECT SUM(POPULATION) AS total_population
FROM CITY
WHERE DISTRICT = 'California';
