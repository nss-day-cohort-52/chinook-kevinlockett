--Provide a query that shows the total sales per country.

SELECT BillingCountry AS Country,
    ROUND(SUM(Total), 2) As TotalSales
FROM Invoice
GROUP BY BillingCountry