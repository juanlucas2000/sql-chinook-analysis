SELECT

    STRFTIME('%Y',InvoiceDate) AS Anio,

    STRFTIME('%m',InvoiceDate) AS Mes,

    ROUND(SUM(Total),2) AS Ventas

FROM Invoice

GROUP BY

    STRFTIME('%Y',InvoiceDate),
    STRFTIME('%m',InvoiceDate)

ORDER BY

    Anio,
    Mes;