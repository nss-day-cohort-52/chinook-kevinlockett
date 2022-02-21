SELECT E.FirstName, E.LastName, I.InvoiceId
FROM Employee AS E
JOIN Customer AS C ON E.EmployeeId = C.SupportRepId
JOIN Invoice AS I ON C.CustomerId = I.CustomerId