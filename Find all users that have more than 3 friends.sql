SELECT
    user_id,
    COUNT(friend_id) AS friend_count
FROM
    google_friends_network
GROUP BY
     user_id
HAVING
    COUNT(friend_id)>3;
