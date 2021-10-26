-- Query all attributes of every Japanese city in the CITY table. 
-- The COUNTRYCODE for Japan is JPN.
SELECT 
    id, 
    name, 
    countrycode, 
    district, 
    population 
FROM city
WHERE countrycode = 'jpn';