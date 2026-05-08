SELECT *
FROM user_flags
WHERE (
    (CASE WHEN flag_id IS NULL THEN 1 ELSE 0 END) +
    (CASE WHEN user_firstname IS NULL THEN 1 ELSE 0 END) +
    (CASE WHEN user_lastname IS NULL THEN 1 ELSE 0 END) +
    (CASE WHEN video_id IS NULL THEN 1 ELSE 0 END)
) > 1;
