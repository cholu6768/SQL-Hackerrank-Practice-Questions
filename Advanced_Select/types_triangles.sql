-- Write a query identifying the type of each record in the TRIANGLES table using its three side lengths
SELECT 
    CASE
        WHEN (a + b) <= c THEN "Not A Triangle"
        WHEN a = b AND a = c THEN "Equilateral"
        WHEN a = b OR a = c OR b = c THEN "Isosceles"
        WHEN a != b AND b != c THEN "Scalene"
    END AS type_triangle
FROM triangles;