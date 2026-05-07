SELECT 
    user_id, 
    friend_id
FROM (
    
    SELECT 
        user_id, 
        friend_id 
    FROM google_friends_network
    
    UNION
    
   
    SELECT 
        friend_id AS user_id, 
        user_id AS friend_id 
    FROM google_friends_network
) AS symmetric_network;
