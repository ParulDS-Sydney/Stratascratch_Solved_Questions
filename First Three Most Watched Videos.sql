WITH video_rankings AS (
    SELECT 
        user_id, 
        video_id,
        ROW_NUMBER() OVER (PARTITION BY user_id ORDER BY watched_at) as watch_sequence
    FROM videos_watched
),
first_three_videos AS (
    SELECT 
        video_id, 
        COUNT(*) as watch_count
    FROM video_rankings
    WHERE watch_sequence <= 3
    GROUP BY video_id
),
final_ranking AS (
    SELECT 
        video_id, 
        watch_count,
        DENSE_RANK() OVER (ORDER BY watch_count DESC) as rnk
    FROM first_three_videos
)
SELECT 
    video_id, 
    watch_count
FROM final_ranking
WHERE rnk <= 3;
