WITH journey_details AS (
    SELECT 
        traveler,
        FIRST_VALUE(start_city) OVER (PARTITION BY traveler ORDER BY date ASC) as home_city,
        LAST_VALUE(end_city) OVER (
            PARTITION BY traveler 
            ORDER BY date ASC 
            ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING
        ) as final_destination
    FROM travel_history
)
SELECT 
    COUNT(DISTINCT traveler) AS travelers_returned_home
FROM journey_details
WHERE home_city = final_destination;
