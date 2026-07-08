SELECT

    al.Title AS Album,

    ar.Name AS Artista,

    ROUND(SUM(il.UnitPrice * il.Quantity),2) AS Ingresos

FROM Album al

JOIN Artist ar

ON al.ArtistId = ar.ArtistId

JOIN Track t

ON al.AlbumId = t.AlbumId

JOIN InvoiceLine il

ON t.TrackId = il.TrackId

GROUP BY

    al.AlbumId,
    al.Title,
    ar.Name

ORDER BY Ingresos DESC

LIMIT 10;