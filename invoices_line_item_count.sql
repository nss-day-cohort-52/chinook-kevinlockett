--Provide a query that shows all Invoices. The resultant table should include:
-- -InvoiceId
-- -The total number of line items on each invoice

SELECT I.InvoiceId, COUNT(IL.InvoiceLineId) AS LineItemCount
FROM Invoice AS I
JOIN InvoiceLine AS IL
    ON I.InvoiceId = IL.InvoiceId
GROUP BY I.InvoiceId;