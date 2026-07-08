SELECT BillingCountry, SUM(Total) AS IngresoTotal
FROM Invoice
GROUP BY BillingCountry
ORDER BY IngresoTotal DESC
LIMIT 10;