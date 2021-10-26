-- Given the CITY and COUNTRY tables, query the names of all the continents and 
-- their respective average city populations rounded down to the nearest integer.
SELECT 
    country.continent,
    FLOOR(
        AVG(city.population)
    ) AS avg_population
FROM city
INNER JOIN country
    ON city.countrycode = country.code
GROUP BY country.continent;   