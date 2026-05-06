WITH KarlFriends AS (
    SELECT f.friend_id 
    FROM friends f 
    JOIN users u ON f.user_id = u.user_id 
    WHERE u.user_name = 'Karl'
),
HansFriends AS (
    SELECT f.friend_id 
    FROM friends f 
    JOIN users u ON f.user_id = u.user_id 
    WHERE u.user_name = 'Hans'
)
SELECT 
    u.user_id,
    u.user_name AS user_name 
FROM 
    users u
JOIN 
    KarlFriends kf ON u.user_id = kf.friend_id
JOIN 
    HansFriends hf ON u.user_id = hf.friend_id;
