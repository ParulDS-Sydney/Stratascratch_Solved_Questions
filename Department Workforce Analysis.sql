SELECT 
    department,
    COUNT(id) AS headcount,
    SUM(salary) AS total_payroll,
    AVG(salary) AS average_salary
FROM techcorp_workforce
WHERE joining_date > '2020-12-31'
GROUP BY department
HAVING COUNT(id) >= 5;
