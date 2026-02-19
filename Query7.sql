SELECT ar.Name AS ArtistName, COUNT(t.TrackId) AS MPEGTrackCount
FROM artists ar
JOIN albums a ON ar.ArtistId = a.ArtistId
JOIN tracks t ON a.AlbumId = t.AlbumId
JOIN media_types mt ON t.MediaTypeId = mt.MediaTypeId
WHERE mt.Name LIKE '%MPEG%'
  AND ar.Name IS NOT NULL
GROUP BY ar.ArtistId, ar.Name
HAVING COUNT(t.TrackId) >= 10;