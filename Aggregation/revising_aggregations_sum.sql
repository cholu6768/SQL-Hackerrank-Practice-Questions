-- Query the total population of all cities in CITY where District is California.
SELECT 
    SUM(population) AS sum_population
FROM city
WHERE district = 'california';