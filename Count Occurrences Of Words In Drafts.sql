SELECT
    LOWER(word) AS word,
    COUNT(*) AS occurrences
FROM (
       SELECT
            regexp_split_to_table(contents, '\s+')AS word FROM google_file_store)
              Subquery
      WHERE word <> ''
GROUP BY 
    word        
ORDER BY 
    occurrences DESC;
