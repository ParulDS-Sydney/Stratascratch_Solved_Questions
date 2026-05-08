WITH flagged_approvals AS (
    SELECT 
        f.user_firstname || ' ' || f.user_lastname AS full_name,
        COUNT(DISTINCT f.video_id) AS distinct_approvals
    FROM user_flags f
    JOIN flag_review r ON f.flag_id = r.flag_id
    WHERE r.reviewed_outcome = 'APPROVED'
    GROUP BY 1
),
ranked_users AS (
    SELECT 
        full_name,
        DENSE_RANK() OVER (ORDER BY distinct_approvals DESC) as rnk
    FROM flagged_approvals
)
SELECT full_name
FROM ranked_users
WHERE rnk = 1;
