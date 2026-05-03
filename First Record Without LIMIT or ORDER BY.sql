select * from worker
WHERE worker_id = (SELECT MIN(worker_id) FROM worker);
