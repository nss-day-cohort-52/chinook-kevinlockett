--Provide a query that shows the total number of tracks in each playlist. The resultant table should include:
-- -Playlist name
-- -Total number of tracks on each playlist

SELECT P.Name,
    COUNT(PLT.TrackId) AS NumberOfTracks
FROM Playlist AS P
JOIN PlaylistTrack AS PLT
    ON P.PlayListId = PLT.PlaylistId
GROUP BY P.Name

select * from Playlist
