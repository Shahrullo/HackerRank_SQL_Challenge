SELECT SUM(c.POPULATION)
FROM CITY c
JOIN COUNTRY cy
ON c.CountryCode = cy.Code
WHERE cy.CONTINENT='Asia';