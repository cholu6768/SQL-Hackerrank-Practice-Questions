-- Query the following two values from the STATION table:
-- 1. The sum of all values in LAT_N rounded to a scale of  decimal places.
-- 2. The sum of all values in LONG_W rounded to a scale of  decimal places.
SELECT 
    ROUND(
        SUM(Lat_n),
        2
    ) AS sum_lat_n, 
    ROUND(
        SUM(long_w),
        2
    ) AS sum_long_w
FROM station;