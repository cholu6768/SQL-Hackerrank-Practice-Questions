-- Query the Western Longitude (LONG_W) where 
-- the smallest Northern Latitude (LAT_N) in STATION is greater than 38.7780. 
-- Round your answer to 4 decimal places.
SELECT 
    ROUND(
        Long_W, 
        4
    ) 
FROM station
WHERE lat_n > 38.7780
ORDER BY lat_n ASC
LIMIT 1;