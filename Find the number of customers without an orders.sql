SELECT COUNT(c.id)AS customers_without_orders FROM  Customers c
LEFT JOIN orders o ON c.id=o.cust_id
WHERE o.id IS NULL;
