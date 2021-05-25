select submission_date ,( SELECT COUNT(DISTINCT hacker_id)  
                        FROM Submissions sub2  
                        WHERE sub2.submission_date = sub1.submission_date AND 
                        (SELECT COUNT(distinct sub3.submission_date) 
                         FROM Submissions sub3 
                         WHERE sub3.hacker_id = sub2.hacker_id AND  
         sub3.submission_date < sub1.submission_date) = dateDIFF(sub1.submission_date , '2016-03-01')) ,

            (SELECT hacker_id  FROM submissions sub2 
             WHERE sub2.submission_date = sub1.submission_date 
               GROUP BY hacker_id 
             ORDER BY COUNT(submission_id) DESC , hacker_id LIMIT 1) AS hack,
        (SELECT name FROM hackers WHERE hacker_id = hack)
        FROM 
        (SELECT DISTINCT submission_date FROM submissions) sub1
        GROUP BY submission_date;