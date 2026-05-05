SELECT COUNT(DISTINCT user_id) 
FROM playbook_users 
WHERE language IN ('English', 'German', 'French', 'Spanish');
