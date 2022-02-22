--Provide a query that shows each Invoice line item, with the name of the track that was purchased.

SELECT InvoiceLine.*, T.Name 
FROM InvoiceLine
JOIN Track AS T
    ON InvoiceLine.TrackId = T.TrackId;