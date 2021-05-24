SELECT s.Name
FROM Students s
JOIN Friends f
    ON s.id = f.id
JOIN Packages p
    ON f.id = p.id
JOIN Packages p2
    ON f.friend_id = p2.id
WHERE p2.salary > p.salary
ORDER BY p2.salary