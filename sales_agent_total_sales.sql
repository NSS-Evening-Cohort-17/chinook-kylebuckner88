SELECT 
    e.FirstName || ' ' || e.LastName as AgentFullName,
    SUM(i.Total)
FROM Employee as e 
JOIN Customer as c 
ON e.EmployeeId = c.SupportRepId
JOIN Invoice as i 
ON i.CustomerId = c.CustomerId
WHERE e.Title = "Sales Support Agent"
GROUP BY AgentFullName