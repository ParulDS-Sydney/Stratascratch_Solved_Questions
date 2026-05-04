SELECT language,COUNT(user_id) AS number_of_speakers
FROM playbook_users
GROUP BY language
ORDER BY number_of_speakers DESC;
