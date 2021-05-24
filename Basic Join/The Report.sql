SELECT CASE
        WHEN g.Grade < 8 THEN NULL ELSE s.Name END AS Name,
       g.Grade, s.Marks
FROM STUDENTS s
JOIN GRADES g
    ON s.Marks BETWEEN g.Min_Mark AND g.Max_Mark
ORDER BY g.Grade DESC, Name, Marks;