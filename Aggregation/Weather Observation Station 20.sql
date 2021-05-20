SELECT ROUND(s.LAT_N, 4)
FROM STATION s 
WHERE((SELECT COUNT(LAT_N)
       FROM STATION
       WHERE s.LAT_N >= LAT_N)-(SELECT COUNT(LAT_N)%2 
                                FROM STATION)=(SELECT COUNT(LAT_N)
                                               FROM STATION
                                               WHERE s.LAT_N<LAT_N));