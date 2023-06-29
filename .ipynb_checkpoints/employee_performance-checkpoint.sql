WITH inv_employee AS (SELECT Invoice.*, 
                      invoiceLine.*, 
                      Customer.*,
                      Employee.FirstName AS employee_fname,
                      Employee.LastName AS employee_lname,
                      Employee.HireDate,
                      Employee.Title,
                      sum(Invoice.Total) As total
                      FROM InvoiceLine
                      INNER JOIN Invoice
                      ON InvoiceLine.InvoiceId = Invoice.InvoiceId
                      INNER JOIN Customer ON Invoice.CustomerId = Customer.CustomerId
                      INNER JOIN Employee ON Customer.SupportRepId = Employee.EmployeeId
                      GROUP BY 1,2,3,4,5,6)

--Select the names of the eployees leading towards highest sales
SELECT employee_fname || " " || employee_lname AS employee_name,
       Title,
       HireDate,
       round(SUM(total),2) AS total_sales
       FROM inv_employee
       GROUP BY 1;