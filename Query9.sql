-- For each country, ranks customers by their total spending.
-- Shows who the top spenders are within each country.
SELECT 
    c.Country,
    c.FirstName || ' ' || c.LastName AS CustomerName,
    ROUND(SUM(i.Total), 2) AS TotalSpent,
    RANK() OVER (PARTITION BY c.Country ORDER BY SUM(i.Total) DESC) AS SpendingRank
FROM customers c
JOIN invoices i ON c.CustomerId = i.CustomerId
WHERE c.Country IS NOT NULL
GROUP BY c.CustomerId, c.Country, c.FirstName, c.LastName
ORDER BY c.Country, SpendingRank;