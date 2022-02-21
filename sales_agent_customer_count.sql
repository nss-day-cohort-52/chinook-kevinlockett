--Provide a query that shows how many customers are assigned to each employee. The resultant table should include:
-- -Employee full name
-- -Total number of customers assigned to each employee (even if it's zero)

SELECT E.FirstName, E.LastName,
    COUNT(C.CustomerId) AS NumberOfCustomers
FROM Employee AS E
LEFT JOIN Customer AS C
    ON E.EmployeeId == C.SupportRepId
GROUP BY E.EmployeeId