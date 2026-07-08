SELECT
    BillingCountry,
    SUM(Total) AS Ventas
FROM Invoice
GROUP BY BillingCountry
ORDER BY Ventas DESC;