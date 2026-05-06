select e.location as country,COUNT(e.user_id)
      AS n_logins
FROM
   playbook_events e
JOIN
   playbook_users u ON e.user_id=u.user_id
WHERE
    u.language='spanish'
GROUP BY
    e.location
HAVING
    COUNT(e.user_id)>0
ORDER BY
     n_logins DESC;
