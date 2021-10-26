-- Write a query to print the hacker_id, name, and total score of the hackers ordered by the descending score.
-- If more than one hacker achieved the same total score, then sort the result by ascending hacker_id.
-- Exclude all hackers with a total score of 0 from your result.
SELECT 
    hacker_id,
    name,
    SUM(max_score) AS total_score
FROM 
(
    SELECT 
        hackers.hacker_id,
        hackers.name,
        submissions.challenge_id,
        MAX(submissions.score) AS max_score 
    FROM hackers
    INNER JOIN submissions
        ON hackers.hacker_id = submissions.hacker_id 
    GROUP BY 
        hacker_id, 
        name,
        challenge_id
) AS max_scores
GROUP BY hacker_id, name
HAVING total_score > 0
ORDER BY 
    total_score DESC,
    hacker_id ASC;

-- Or this query with a window function which is better but because of the MYSQL version of Hackerrank for that specific question
-- i could not use window functions or CTEs and i was not able to execute the code below
WITH max_scores AS (
    SELECT DISTINCT
        hackers.hacker_id,
        hackers.name,
        submissions.challenge_id,
        MAX(submissions.score) 
        OVER(
        PARTITION BY 
            hackers.hacker_id,
            submissions.challenge_id
        )AS max_score
    FROM hackers
    INNER JOIN submissions
        ON hackers.hacker_id = submissions.hacker_id 
)

SELECT 
    hacker_id,
    name,
    SUM(max_score) 
FROM max_scores
GROUP BY hacker_id, name
HAVING SUM(max_score) > 0
ORDER BY 
    SUM(max_score) DESC,
    hacker_id ASC;