SELECT 
    sex,
    SUM(CASE WHEN pclass = 1 THEN survived ELSE 0 END) AS first_class,
    SUM(CASE WHEN pclass = 2 THEN survived ELSE 0 END) AS second_class,
    SUM(CASE WHEN pclass = 3 THEN survived ELSE 0 END) AS third_class
FROM 
    titanic
GROUP BY 
    sex;
