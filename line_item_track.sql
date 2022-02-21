SELECT InvoiceLine.*, T.Name 
FROM InvoiceLine
JOIN Track AS T
    ON InvoiceLine.TrackId = T.TrackId