SELECT CONCAT(Name, '(', Substring(Occupation, 1, 1), ')') as Name
FROM OCCUPATIONS
ORDER BY Name;

SELECT CONCAT('There are a total of ',COUNT(Occupation), ' ', LOWER(Occupation), 's.') as total
FROM OCCUPATIONS
GROUP BY Occupation
ORDER BY total;