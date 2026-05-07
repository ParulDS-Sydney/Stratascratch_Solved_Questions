SELECT
      MIN(number) AS min_number,
      MAX(number) AS max_number,
      SUM(number)-MIN(number)-MAX(number) AS summaton 
FROM 
    transportation_numbers;
