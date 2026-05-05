SELECT platform, COUNT(DISTINCT user_id) AS number_of_users FROM user_sessions
GROUP BY platform;
