SELECT e.to_user AS receiver_user_id, l.label, 
    COUNT(*) AS n_occurrences
FROM google_gmail_emails e JOIN google_gmail_labels l ON e.id = l.email_id
GROUP BY 
     e.to_user,
     l.label;
