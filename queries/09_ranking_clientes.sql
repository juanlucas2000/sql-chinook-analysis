WITH VentasClientes AS (

SELECT

    c.CustomerId,

    c.FirstName || ' ' || c.LastName AS Cliente,

    ROUND(SUM(i.Total),2) AS TotalGastado

FROM Customer c

JOIN Invoice i

ON c.CustomerId = i.CustomerId

GROUP BY

    c.CustomerId,
    c.FirstName,
    c.LastName

)

SELECT

    Cliente,

    TotalGastado,

    RANK() OVER(ORDER BY TotalGastado DESC) AS Ranking

FROM VentasClientes;