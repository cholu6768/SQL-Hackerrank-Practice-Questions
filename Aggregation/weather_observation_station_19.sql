-- Consider P1(a,c) and P2(b,d) to be two points on a 2D plane.
-- where (a,b) are the respective minimum and maximum values of Northern Latitude (LAT_N) and 
-- (c,d) are the respective minimum and maximum values of Western Longitude (LONG_W)  
-- Query the Euclidean Distance between points P1 and P2 
-- and round it to a scale of 4 decimal places.
SELECT 
    ROUND(
        SQRT(
            POW(MAX(Lat_N) - MIN(Lat_N), 2) + 
            POW(MAX(Long_W) - MIN(Long_W), 2)
        ), 
        4
    ) 
FROM station