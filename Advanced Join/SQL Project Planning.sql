SELECT Start_Date, MIN(End_Date)
FROM (SELECT Start_Date
      FROM Projects
      WHERE Start_Date NOT IN (SELECT End_Date 
                               FROM Projects)) temp1,
     (SELECT End_date
      FROM Projects
      WHERE End_date NOT IN (SELECT Start_Date
                             FROM Projects)) temp2
WHERE Start_Date < End_Date
GROUP BY Start_Date
ORDER BY datediff(Start_Date, MIN(End_Date)) DESC, Start_date;