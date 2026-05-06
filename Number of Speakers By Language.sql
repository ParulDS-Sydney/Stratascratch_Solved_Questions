SELECT 
   e.location AS country, 
   u.language, 
    COUNT(DISTINCT u.user_id) AS n_speakers
FROM 
    playbook_users u JOIN playbook_events e 
    ON u.user_id = e.user_id
GROUP BY 
   e. location, 
   u. language
ORDER BY 
    location ASC;
