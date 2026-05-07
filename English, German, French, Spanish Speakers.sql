select 
    company_id
FROM
    playbook_users
WHERE
    language IN('English','German','French','Spanish')
GROUP BY
    company_id
HAVING 
    COUNT(DISTINCT user_id)>2;
