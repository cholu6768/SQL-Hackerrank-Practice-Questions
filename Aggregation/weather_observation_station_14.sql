-- Query the greatest value of the Northern Latitudes (LAT_N) from STATION that is less than 137.2345. 
-- Truncate your answer to 4 decimal places.
SELECT 
    ROUND(
        MAX(Lat_N), 
        4
    ) 
FROM station
WHERE lat_n < 137.2345;