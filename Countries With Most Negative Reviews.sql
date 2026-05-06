SELECT 
    reviewer_nationality AS country, 
    COUNT(negative_review) AS n_negative_reviews
FROM 
    hotel_reviews
WHERE 
    negative_review != 'No Negative'
GROUP BY 
    reviewer_nationality
HAVING 
    COUNT(negative_review) > 0
ORDER BY 
    n_negative_reviews DESC;
