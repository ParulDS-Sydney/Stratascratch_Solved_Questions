select company_id from playbook_users
WHERE language = 'chinese'
GROUP BY company_id
HAVING COUNT(user_id) >= 2;
