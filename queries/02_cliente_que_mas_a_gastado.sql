SELECT
    c.FirstName,
    c.LastName,
    SUM(i.Total) AS TotalGastado
FROM Customer c
JOIN Invoice i
ON c.CustomerId = i.CustomerId
GROUP BY c.CustomerId
ORDER BY TotalGastado DESC;