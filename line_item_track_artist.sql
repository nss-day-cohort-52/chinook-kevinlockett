SELECT InvoiceLine.*,
    T.Name AS TrackName,
    Art.Name AS ArtistName
FROM InvoiceLine
JOIN Track AS T
    ON InvoiceLine.TrackId = T.TrackId
Join Album AS A
    ON T.AlbumId = A.AlbumId
Join Artist AS Art
    ON A.ArtistId = Art.ArtistId

