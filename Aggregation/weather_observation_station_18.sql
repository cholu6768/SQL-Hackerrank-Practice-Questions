-- Consider P1(a,b) and P2(c,d) to be two points on a 2D plane.
-- a is LAT_N, b is LONG_W, c is LAT_N, and d is LONG_W  
-- Query the Manhattan Distance between points P1 and P2 
-- and round it to a scale of 4 decimal places.
SELECT 
    ROUND(
        ABS(MIN(Lat_N) - MAX(Lat_N)) + 
        ABS(MIN(Long_W) - MAX(Long_W)), 
        4
    ) 
FROM station;