SELECT a.Title AS AlbumName, ar.Name AS ArtistName
FROM albums a
JOIN artists ar ON a.ArtistId = ar.ArtistId
WHERE a.Title IS NOT NULL AND ar.Name IS NOT NULL;