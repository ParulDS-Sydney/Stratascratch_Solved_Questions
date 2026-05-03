SELECT DISTINCT name
FROM olympics_athletes_events
WHERE sex = 'F' 
  AND year < 1939;
