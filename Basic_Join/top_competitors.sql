-- Write a query to print the respective hacker_id and name of hackers who achieved full scores for more than one challenge.
-- Order your output in descending order by the total number of challenges in which the hacker earned a full score.
-- If more than one hacker received full scores in same number of challenges, then sort them by ascending hacker_id.
SELECT 
    t2.hacker_id,
    t2.name
FROM submissions as t1
INNER JOIN hackers as t2
    ON t1.hacker_id = t2.hacker_id
INNER JOIN challenges as t3
    ON t1.challenge_id = t3.challenge_id
INNER JOIN difficulty as t4
    ON t3.difficulty_level = t4.difficulty_level
WHERE 
    t3.difficulty_level = t4.difficulty_level AND 
    t1.score = t4.score
GROUP BY 
    t2.hacker_id,
    t2.name
HAVING COUNT(t1.submission_id) > 1 AS count_submi   
ORDER BY 
    count_submi DESC,
    t1.hacker_id ASC;