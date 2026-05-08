SELECT
      PERCENTILE_CONT(0.8) WITHIN GROUP(ORDER BY hrs_studied) AS percentile_80 
FROM sat_scores;
