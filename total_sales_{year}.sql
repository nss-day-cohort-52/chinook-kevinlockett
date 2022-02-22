--What are the respective total sales for 2009 and 2011?

SELECT strftime('%Y', InvoiceDate) as Year,
    ROUND(SUM(TOTAL), 2) as YearlyTotal
FROM Invoice
WHERE strftime('%Y', InvoiceDate) = '2009'
    OR strftime('%Y', InvoiceDate) = '2011'
GROUP BY strftime('%Y', InvoiceDate);
