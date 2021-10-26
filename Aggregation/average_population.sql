-- Query the average population for all cities in CITY, rounded down to the nearest integer.
SELECT 
    FlOOR(AVG(population)) 
FROM city;