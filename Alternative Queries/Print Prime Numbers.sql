WITH recursive t1
AS (
    SELECT 2 AS nums
    UNION ALL
    SELECT nums+1 
    FROM t1
    WHERE nums<1000)
    
SELECT group_concat(t1.nums ORDER BY t1.nums separator '&')  AS nums
FROM t1
WHERE NOT EXISTS 
    (SELECT 1 FROM t1 t2 
    WHERE t2.nums <= t1.nums/2 AND MOD(t1.nums,t2.nums)=0);