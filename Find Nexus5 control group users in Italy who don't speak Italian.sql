select e.user_id,u.language,e.location FROM
 playbook_experiments e JOIN playbook_users u ON e.user_id=u.user_id
 WHERE e.device='nexus 5'
  AND e.experiment_group='control_group'
  AND e.location='Italy'
  AND u.language!='italian'
ORDER BY e.occurred_at ASC;
