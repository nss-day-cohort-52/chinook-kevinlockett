--Provide a query that shows the invoices associated with each sales agent. The resultant table should include:
-- -Sales Agent's full name
-- -Invoice ID

SELECT E.FirstName, E.LastName, I.InvoiceId
FROM Employee AS E
JOIN Customer AS C ON E.EmployeeId = C.SupportRepId
JOIN Invoice AS I ON C.CustomerId = I.CustomerId;