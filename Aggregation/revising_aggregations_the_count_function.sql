-- Query a count of the number of cities in CITY having a Population larger than 100 000.
SELECT 
    COUNT(name) AS frequency 
FROM city
WHERE Population > 100000;