--Provide a query that shows the customers and employees associated with each invoice. The resultant table should include:
-- -Invoice Total
-- -Customer Name
-- -Customer Country
-- -Sale Agent full name

SELECT I.TOTAL, C.FirstName, C.LastName, C.Country, E.FirstName AS EmpFirstName, E.LastName AS EmpLastName
FROM  Customer AS C
JOIN Invoice AS I ON C.CustomerId == I.CustomerId
JOIN Employee AS E ON C.SupportRepId == E.EmployeeId

