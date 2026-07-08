SELECT

    e.EmployeeId,

    e.FirstName || ' ' || e.LastName AS Empleado,

    COUNT(DISTINCT c.CustomerId) AS Clientes,

    ROUND(SUM(i.Total),2) AS Ventas

FROM Employee e

JOIN Customer c

ON e.EmployeeId = c.SupportRepId

JOIN Invoice i

ON c.CustomerId = i.CustomerId

GROUP BY

    e.EmployeeId,
    e.FirstName,
    e.LastName

ORDER BY Ventas DESC;