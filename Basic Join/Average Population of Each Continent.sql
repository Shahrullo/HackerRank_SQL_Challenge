SELECT cy.Continent, ROUND(AVG(c.Population)-0.5)
FROM CITY c
JOIN COUNTRY cy
    ON c.CountryCode = cy.Code
GROUP BY cy.Continent;