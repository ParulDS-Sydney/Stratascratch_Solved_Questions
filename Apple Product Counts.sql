select u.language, COUNT(DISTINCT CASE WHEN e.device IN ('macbook pro','iphone 5s','ipad air')THEN u.user_id END) AS n_apple_users,
COUNT(DISTINCT u.user_id)AS n_total_users FROM playbook_users u
JOIN playbook_events e ON u.user_id = e.user_id
GROUP BY u.language
ORDER BY n_total_users DESC;
