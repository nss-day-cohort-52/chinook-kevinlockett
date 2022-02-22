--Provide a query that shows the total sales per country.

SELECT BillingCountry, ROUND(MAX(Total), 2) AS TotalSales
FROM (
    SELECT BillingCountry, SUM(Total) AS Total
    FROM Invoice
    GROUP BY BillingCountry
);