SELECT 
    hotel_name, 
    average_score
FROM (
    SELECT 
        hotel_name, 
        average_score,
        DENSE_RANK() OVER (ORDER BY average_score ASC) as score_rank
    FROM 
        hotel_reviews
    GROUP BY 
        hotel_name, 
        average_score
) sub
WHERE 
    score_rank <= 10
ORDER BY 
    average_score ASC;
