SELECT DISTINCT 
    hotel_name, 
    average_score
FROM 
    hotel_reviews
ORDER BY 
    average_score DESC
LIMIT 10;
