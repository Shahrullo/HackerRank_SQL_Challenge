SELECT c.NAME
FROM CITY c
JOIN COUNTRY cy
ON c.CountryCode = cy.Code
WHERE cy.CONTINENT='Africa';