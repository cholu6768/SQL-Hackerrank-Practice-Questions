-- Hermione decides the best way to choose is by determining the minimum number of gold galleons needed to buy each non-evil wand of high power and age. 
-- Write a query to print the id, age, coins_needed, and power of the wands
-- sorted in order of descending power. If more than one wand has same power, sort the result in order of descending age.
SELECT 
    wands.id,
    min_prices.age,
    min_prices.min_coins,
    min_prices.power
FROM 
(
    SELECT
        w.code,
        wp.age,
        w.power,
        MIN(w.coins_needed) as min_coins
    FROM wands as w
    INNER JOIN wands_property as wp
        ON w.code = wp.code
    WHERE wp.is_evil = 0  
    GROUP BY w.power, wp.age, w.code 
    ORDER BY w.power DESC, wp.age DESC
) as min_prices
INNER JOIN wands
    ON 
        min_prices.code = wands.code AND
        min_prices.min_coins = wands.coins_needed
ORDER BY 
    min_prices.power DESC, 
    min_prices.age DESC;  

-- Or this query with a window function which is better but because of the MYSQL version of Hackerrank for that specific question
-- i could not use window functions or CTEs and i was not able to execute the code below
WITH example_table AS (
   SELECT 
        wands.id,
        wands_property.age,
        wands.coins_needed,
        wands.power,
        RANK()OVER(
            PARTITION BY 
                wands_property.age, 
                wands.power
            ORDER BY wands.coins_needed ASC) AS ranking
    FROM wands
    INNER JOIN wands_property 
        ON wands.code = wands_property.code
    WHERE wands_property.is_evil != 1 
)

SELECT 
    id,
    age,
    coins_needed,
    power
FROM test_table
WHERE ranking = 1
ORDER BY 
    power DESC,
    age DESC;
