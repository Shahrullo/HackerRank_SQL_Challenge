SELECT c.hacker_id, h.name, COUNT(c.hacker_id) counts
FROM Hackers h
JOIN Challenges c
    ON h.hacker_id = c.hacker_id
GROUP BY c.hacker_id
HAVING counts = (SELECT MAX(tmp.cnt)
                 FROM (SELECT COUNT(hacker_id) cnt
                       FROM Challenges
                       GROUP BY hacker_id
                       ORDER BY hacker_id) tmp)

       OR counts in (SELECT tmp2.cnt
                     FROM (SELECT COUNT(*) cnt 
                           FROM Challenges
                           GROUP BY hacker_id) tmp2
                     GROUP BY tmp2.cnt
                     HAVING COUNT(tmp2.cnt) = 1)
ORDER BY counts DESC, c.hacker_id; 
