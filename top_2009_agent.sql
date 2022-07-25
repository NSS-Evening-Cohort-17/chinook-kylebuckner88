SELECT
    FirstName,
    LastName,
    MAX(Total_Sales)
FROM 
(SELECT
    e.FirstName || ' ' || e.LastName as AgentFullName,
    SUM(Invoice.Total) as Total_Sales)
FROM Employee as e 
JOIN Customer as c 
    ON e.EmployeeId = c.SupportRepId
JOIN Invoice as i 
`   ON c.CustomerId = i.CustomerId
WHERE i.InvoiceDate LIKE "2009%"
GROUP BY AgentFullName)
