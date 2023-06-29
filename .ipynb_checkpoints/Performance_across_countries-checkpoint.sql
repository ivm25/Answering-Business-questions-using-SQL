WITH cust_country AS (SELECT Invoice.*, 
                      InvoiceLine.*, 
                      Customer.*
                      FROM InvoiceLine
                      INNER JOIN Invoice
                      ON InvoiceLine.InvoiceId = Invoice.InvoiceId
                      INNER JOIN customer ON Invoice.CustomerId = Customer.CustomerId
                      GROUP BY 1,2,3)
,

main_table AS
(
SELECT country, COUNT(DISTINCT(CustomerId)) AS number_of_customers, 
                SUM(total) AS total_value_sales,
                SUM(total)/COUNT(DISTINCT(CustomerId)) As average_sales_customers,
                AVG(total) AS average_order_value,
                CASE WHEN COUNT(DISTINCT(CustomerId)) = 1
                           THEN 0
                           ELSE 1
                      END AS sort_column
FROM cust_country

GROUP BY 1
ORDER BY total_value_sales DESC
)

SELECT 
      CASE WHEN sort_column = 1
           THEN Country
           ELSE "Other"
      END AS new_country_column,
      SUM(number_of_customers) As num_of_customers,
      ROUND(SUM(total_value_sales),2) AS total_sales,
      ROUND(AVG(average_sales_customers),2) AS average_sales_customer,
      ROUND(AVG(average_order_value),2) AS average_order
FROM main_table
GROUP BY new_country_column
ORDER BY total_value_sales DESC;