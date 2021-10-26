-- Given the CITY and COUNTRY tables, query the sum of the populations of all cities 
-- where the CONTINENT is 'Asia'.
SELECT 
    SUM(city.population)
FROM city 
LEFT JOIN country
    ON city.countrycode = country.code
WHERE continent = 'asia'; 