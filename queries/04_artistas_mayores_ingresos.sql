SELECT
    ar.ArtistId,
    ar.Name AS Artista,
    ROUND(SUM(il.UnitPrice * il.Quantity),2) AS Ingresos
FROM Artist ar
JOIN Album al
    ON ar.ArtistId = al.ArtistId
JOIN Track t
    ON al.AlbumId = t.AlbumId
JOIN InvoiceLine il
    ON t.TrackId = il.TrackId
GROUP BY
    ar.ArtistId,
    ar.Name
ORDER BY Ingresos DESC
LIMIT 10;