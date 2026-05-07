SELECT 
    worker_title, 
    affected_from, 
    COUNT(*) AS duplicate_count
FROM 
    title
GROUP BY 
    worker_title, 
    affected_from
HAVING 
    COUNT(*) > 1;
