-- Query the sum of Northern Latitudes (LAT_N) from STATION 
-- having values greater than 38.7880 and less than 137.2345. 
-- Truncate your answer to 4 decimal places.
SELECT 
    ROUND(
        SUM(lat_n),
        4
    ) sum_lat_n
FROM station
WHERE 
lat_n > 38.7880 AND 
lat_n < 137.2345;
