WITH inv_us AS (SELECT invoice.*, 
                InvoiceLine.*, 
                customer.*
                FROM InvoiceLine
                INNER JOIN Invoice
                ON InvoiceLine.InvoiceId = Invoice.InvoiceId
                INNER JOIN customer ON Invoice.CustomerId	 = customer.CustomerId	
                WHERE country LIKE 'USA')
,

inv_t AS       (SELECT track.*, 
                inv_us.*,
                genre.name AS genre_name
                FROM inv_us
                INNER JOIN track
                ON inv_us.TrackId = track.TrackId
                INNER JOIN genre
                ON genre.GenreId = track.GenreId
                )


SELECT genre_name, 
       COUNT(InvoiceLineId) As number_of_tracks_sold, 
       cast(round(cast(count(inv_t.InvoiceLineId) AS FLOAT) / (
        SELECT COUNT(*) from inv_t
        ),2)*100 As character varying) || '%'  AS percentage_of_tracks_sold
FROM inv_t
GROUP BY 1
ORDER BY 2 DESC
;
