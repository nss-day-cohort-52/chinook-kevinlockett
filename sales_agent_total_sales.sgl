--Provide a query that shows total sales made by each sales agent. The resultant table should include:
-- -Employee full name
-- -Total sales for each employee (all time)

SELECT E.FirstName, E.LastName, ROUND(SUM(I.Total), 2) AS Total
FROM Employee AS E
JOIN Customer AS C
    ON E.EmployeeId = C.SupportRepId
JOIN Invoice AS I
    ON C.CustomerId = I.CustomerId
GROUP BY E.EmployeeId