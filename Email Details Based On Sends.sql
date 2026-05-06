WITH daily_comparison AS(SELECT day,COUNT(DISTINCT from_user) AS n_senders,
        COUNT(DISTINCT to_user) AS n_receivers
    FROM 
        google_gmail_emails
    GROUP BY 
        day
)
SELECT 
    e.* 
FROM 
    google_gmail_emails e
JOIN 
    daily_comparison d ON e.day = d.day
WHERE 
    d.n_receivers > d.n_senders;
