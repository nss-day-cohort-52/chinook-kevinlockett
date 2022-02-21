SELECT C.FirstName, C.LastName, I.InvoiceId, I.InvoiceDate, I.BillingCountry
FROM Customer AS C
JOIN Invoice AS I
WHERE C.CustomerId = I.CustomerId
AND C.Country = 'Brazil'
