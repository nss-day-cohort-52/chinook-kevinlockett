--Provide a query that shows each Invoice line item, with the name of the track that was purchase, and the name of the artist.

SELECT InvoiceLine.*,
    T.Name AS TrackName,
    Art.Name AS ArtistName
FROM InvoiceLine
JOIN Track AS T
    ON InvoiceLine.TrackId = T.TrackId
Join Album AS A
    ON T.AlbumId = A.AlbumId
Join Artist AS Art
    ON A.ArtistId = Art.ArtistId;

