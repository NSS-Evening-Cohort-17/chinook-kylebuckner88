SELECT 
PlayList.Name,
COUNT(PlaylistTrack.TrackId)
FROM Playlist
JOIN PlaylistTrack
ON Playlist.PlaylistId = PlaylistTrack.PlaylistId
GROUP BY Playlist.name