select u.company_id,u.language,COUNT(e.event_name)AS n_events FROM playbook_users u
JOIN 
   playbook_events e ON u.user_id = e.user_id
WHERE 
    e.device='macbook pro'
    AND e.location='Argentina'
    AND u.language!='spanish'
GROUP BY 
   u.company_id,
   u.language;
