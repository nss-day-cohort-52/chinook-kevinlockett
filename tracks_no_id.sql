-- Provide a query that shows all the Tracks, but displays no IDs. The resultant table should include:
-- -Album name
-- -Media type
-- -Genre

SELECT T.Name AS Track,
    A.Title AS Album,
    M.Name AS MediaType,
    G.Name AS Genre
FROM Track AS T
JOIN MediaType AS M
    ON T.MediaTypeId = M.MediaTypeId
JOIN Album AS A
    ON T.AlbumId = A.AlbumId
JOIN Genre AS G
    ON T.GenreId = G.GenreId;
