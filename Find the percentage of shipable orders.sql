SELECT 
    (COUNT(c.address) * 100.0 / COUNT(*)) AS percent_shipable
FROM 
    orders o
LEFT JOIN 
    customers c ON o.cust_id = c.id;
