SELECT FirstName, LastName, ROUND(MAX(Total), 2) AS TotalSales
FROM (
    SELECT E.FirstName, E.LastName, SUM(I.Total) AS Total
    FROM Employee AS E
    JOIN Customer AS C
        ON E.EmployeeId = C.SupportRepId
    JOIN Invoice AS I
        ON C.CustomerId = I.CustomerId
    GROUP BY E.EmployeeId
)