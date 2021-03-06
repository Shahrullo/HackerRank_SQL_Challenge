SELECT h.hacker_id, h.name
FROM Submissions s
JOIN Challenges c
    ON s.challenge_id = c.challenge_id
JOIN Difficulty d
    ON c.difficulty_level = d.difficulty_level 
JOIN Hackers h
    ON s.hacker_id = h.hacker_id
WHERE d.score = s.score AND d.difficulty_level = c.difficulty_level
GROUP BY h.hacker_id, h.name
HAVING COUNT(s.hacker_id) > 1
ORDER BY COUNT(s.hacker_id) DESC, s.hacker_id;