SELECT player_id,MAX(login_date) AS latest_login
FROM players_logins
GROUP BY player_id;
