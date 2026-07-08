
WITH VentasPais AS (

SELECT

    BillingCountry AS Pais,

    COUNT(*) AS Facturas,

    ROUND(SUM(Total),2) AS Ventas,

    ROUND(AVG(Total),2) AS TicketPromedio

FROM Invoice

GROUP BY BillingCountry

)

SELECT

    Pais,

    Facturas,

    Ventas,

    TicketPromedio,

    ROUND(
        Ventas * 100.0 /
        SUM(Ventas) OVER(),
        2
    ) AS PorcentajeVentas,

    RANK() OVER(

        ORDER BY Ventas DESC

    ) AS Ranking

FROM VentasPais

ORDER BY Ranking;