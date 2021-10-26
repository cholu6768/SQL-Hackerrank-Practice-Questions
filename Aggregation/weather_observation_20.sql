-- Query the median of the Northern Latitudes (LAT_N) from STATION 
-- and round your answer to 4 decimal places.
WITH test_table AS (
  SELECT 
    lat_n,
    ROW_NUMBER()
    OVER(ORDER BY lat_n ASC) AS row_num
  FROM station
  ORDER BY lat_n ASC
),

test_table2 AS (
  SELECT 
    lat_n,
    row_num,
    COUNT(*) OVER() AS count_values
  FROM test_table  
)

SELECT
   ROUND(AVG(lat_n),4) as median 
FROM test_table2
WHERE
  CASE WHEN MOD(count_values, 2) = 0 
    THEN row_num IN (count_values/2, (count_values/2+1))
    ELSE row_num = (count_values+1)/2
  END;