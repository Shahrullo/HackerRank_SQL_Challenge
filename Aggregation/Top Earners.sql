SELECT MAX(months*salary), COUNT(months*salary)
FROM Employee 
WHERE months*salary IN(SELECT MAX(months*salary)
                       FROM Employee);