-- generate a report containing three columns: Name, Grade and Mark.
-- The report must be in descending order by grade
-- If there is more than one student with the same grade (8-10) assigned to them, order those particular students by their name alphabetically.
-- if the grade is lower than 8, use "NULL" as their name and list them by their grades in descending order. 
-- If there is more than one student with the same grade (1-7) assigned to them, order those particular students by their marks in ascending order.
WITH grades_marks AS (
    SELECT 
        name,
        marks,
    CASE 
        WHEN marks BETWEEN 0 AND 9 THEN 1
        WHEN marks BETWEEN 10 AND 19 THEN 2
        WHEN marks BETWEEN 20 AND 29 THEN 3
        WHEN marks BETWEEN 30 AND 39 THEN 4
        WHEN marks BETWEEN 40 AND 49 THEN 5
        WHEN marks BETWEEN 50 AND 59 THEN 6
        WHEN marks BETWEEN 60 AND 69 THEN 7
        WHEN marks BETWEEN 70 AND 79 THEN 8
        WHEN marks BETWEEN 80 AND 89 THEN 9
        ELSE 10
    END AS grade        
    FROM students
)

SELECT 
    CASE 
        WHEN grade < 8 THEN 'NULL'
        else name
    END AS name,
    grade,
    marks
FROM grades_marks
ORDER BY 
    grade DESC, 
    name,
    grade ASC;