SELECT

    c.CustomerId,
    c.FirstName || ' ' || c.LastName AS Cliente,

    ROUND(SUM(i.Total),2) AS TotalGastado,

    CASE

        WHEN SUM(i.Total) >= 45 THEN 'VIP'

        WHEN SUM(i.Total) >= 40 THEN 'Premium'

        WHEN SUM(i.Total) >= 35 THEN 'Frecuente'

        ELSE 'Ocasional'

    END AS Categoria

FROM Customer c

JOIN Invoice i

ON c.CustomerId = i.CustomerId

GROUP BY

    c.CustomerId,
    c.FirstName,
    c.LastName

ORDER BY TotalGastado DESC;