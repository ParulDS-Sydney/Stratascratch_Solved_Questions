SELECT * FROM worker 
WHERE worker_id = (SELECT MAX(worker_id) FROM worker);
