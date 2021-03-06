--Provide a query that shows the top 5 most purchased tracks over all.

SELECT T.Name, COUNT(IL.TrackId) AS TrackSales
FROM Track AS T
JOIN InvoiceLine AS IL
    ON T.TrackId = IL.TrackId
GROUP BY T.Name
ORDER BY TrackSales desc
LIMIT 5;