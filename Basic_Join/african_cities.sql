-- Given the CITY and COUNTRY tables, query the names of all cities where the CONTINENT is 'Africa'.
SELECT 
    city.name
FROM city
LEFT JOIN country
    ON city.countrycode = country.code
WHERE continent = 'africa';   