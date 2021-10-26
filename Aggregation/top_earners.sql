-- Write a query to find the maximum total earnings for all employees 
--as well as the total number of employees who have maximum total earnings. 
-- Then print these values as 2 space-separated integers.
SELECT 
    (salary * months) AS earnings, 
    Count(name) 
FROM employee
GROUP BY earnings
ORDER BY earnings DESC
LIMIT 1;