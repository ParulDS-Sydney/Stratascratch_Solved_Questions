select 
    student_id,
    hrs_studied,
    sat_math AS score,
    (sat_math/hrs_studied)AS efficiency
FROM
    sat_scores
WHERE
 hrs_studied>=1
ORDER BY
   efficiency DESC
   LIMIT 1;
