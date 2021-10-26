-- Query the sum of the populations for all Japanese cities in CITY. 
-- The COUNTRYCODE for Japan is JPN
SELECT 
    SUM(population) AS sum_population 
FROM city
WHERE countryCode = 'jpn';