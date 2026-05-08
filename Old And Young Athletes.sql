SELECT 
    games,
    COUNT(DISTINCT id) FILTER (WHERE age >= 50) AS old_athletes,
    COUNT(DISTINCT id) FILTER (WHERE age <= 25) AS young_athletes,
    (COUNT(DISTINCT id) FILTER (WHERE age >= 50))::float / 
    NULLIF(COUNT(DISTINCT id) FILTER (WHERE age <= 25), 0) AS old_to_young_ratio
FROM olympics_athletes_events
GROUP BY games;
