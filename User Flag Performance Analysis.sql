SELECT f.user_firstname, f.user_lastname, COUNT(DISTINCT f.video_id) AS total_reviewed_videos,
    COUNT(DISTINCT CASE WHEN reviewed_outcome = 'Removed' THEN f.video_id END) AS total_removed_videos,
    MAX(r.reviewed_date) AS latest_review_date
FROM 
    user_flags AS f 
JOIN 
    flag_review AS r ON f.flag_id = r.flag_id
GROUP BY 
    f.user_firstname, 
    f.user_lastname;
