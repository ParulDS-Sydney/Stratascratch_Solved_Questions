SELECT teacher,COUNT(student_id) AS student_count
FROM sat_scores
GROUP BY teacher;
