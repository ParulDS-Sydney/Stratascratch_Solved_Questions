select ni.name,ni.birthday,AVG(nf.rating)AS avg_rating
FROM nominee_information ni JOIN nominee_filmography nf ON ni.name = nf.name
GROUP BY ni.name,ni.birthday
ORDER BY ni.birthday ASC;
