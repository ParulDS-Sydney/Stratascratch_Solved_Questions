SELECT 
    pclass,
    COUNT(CASE WHEN survived = 1 THEN 1 END) AS survivors,
    COUNT(CASE WHEN survived = 0 THEN 1 END) AS non_survivors
FROM 
    titanic
GROUP BY 
    pclass
ORDER BY 
    pclass ASC;
