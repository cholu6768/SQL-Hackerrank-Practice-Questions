-- Query the average population of all cities in CITY where District is California.
SELECT 
    AVG(Population) AS avg_population
FROM city
WHERE district = 'california';