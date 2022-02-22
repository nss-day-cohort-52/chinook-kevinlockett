Provide a query that shows the most purchased Media Type.

SELECT Name, MAX(TrackSales) AS MediaCount
FROM (
    SELECT M.Name, COUNT(IL.TrackId) AS TrackSales
    FROM InvoiceLine AS IL
    JOIN Track AS T
        ON T.TrackId = IL.TrackId
    JOIN MediaType As M
        ON T.MediaTypeId = M.MediaTypeId
    GROUP BY M.Name
    ORDER BY TrackSales desc
)