--Provide a query showing the Invoices of Customers who are from Brazil. The resultant table should include:
-- -Customer's full name
-- -Invoice Id,
-- -Date of the invoice
-- -Billing country

SELECT C.FirstName, C.LastName, I.InvoiceId, I.InvoiceDate, I.BillingCountry
FROM Customer AS C
JOIN Invoice AS I
ON C.CustomerId = I.CustomerId
WHERE C.Country = 'Brazil'
