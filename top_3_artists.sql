--Provide a query that shows the top 5 most purchased tracks over all.

SELECT Art.Name, COUNT(IL.TrackId) AS TrackSales
FROM InvoiceLine AS IL
JOIN Track AS T
    ON T.TrackId = IL.TrackId
JOIN Album As A
    ON T.AlbumId = A.AlbumId
JOIN Artist As Art
    ON A.ArtistId = Art.ArtistId
GROUP BY Art.Name
ORDER BY TrackSales desc
Limit 3;
