-- Write a query calculating the amount of error 
-- (i.e.: actual - miscalculated average monthly salaries), 
-- and round it up to the next integer.
SELECT 
    CEILING(
        AVG(Salary) - 
        AVG(
            REPLACE(Salary, 0, '')
        )
    ) 
FROM employees;
