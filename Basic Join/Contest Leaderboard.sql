SELECT h.hacker_id, h.name, SUM(score) AS tot_score
FROM (SELECT hacker_id, challenge_id, MAX(score) score 
      FROM Submissions
      GROUP BY hacker_id, challenge_id) tmp
JOIN Hackers h  
    ON h.hacker_id = tmp.hacker_id
GROUP BY h.hacker_id, h.name
HAVING tot_score > 0
ORDER BY tot_score DESC, h.hacker_id;

