SELECT DISTINCT ar.Name AS ArtistName
FROM artists ar
JOIN albums a ON ar.ArtistId = a.ArtistId
WHERE LOWER(a.Title) LIKE '%symphony%'
  AND ar.Name IS NOT NULL;