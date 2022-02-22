--Provide a query that shows the most purchased track(s) of 2013.
SELECT T.Name, COUNT(IL.TrackId) AS TrackSales
FROM Track AS T
JOIN InvoiceLine AS IL
    ON T.TrackId = IL.TrackId
JOIN Invoice AS I
    On IL.InvoiceId = I.InvoiceId
WHERE strftime('%Y', InvoiceDate) = '2013'
GROUP BY T.Name
ORDER BY TrackSales desc;
