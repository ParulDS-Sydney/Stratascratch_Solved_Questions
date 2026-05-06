select e.to_user AS receiver ,
     COUNT(CASE WHEN l.label='Promotion'THEN 1 END)AS promotion_count,
     COUNT(CASE WHEN l.label='Social'THEN 1 END)AS Social_count,
     COUNT(CASE WHEN l.label='Shopping'THEN 1 END)AS Shopping_count
FROM 
    google_gmail_emails e
JOIN 
    google_gmail_labels l ON e.id=l.email_id
GROUP BY 
     e.to_user;
