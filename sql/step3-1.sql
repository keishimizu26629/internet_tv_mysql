use internet_tv;

SELECT E.title, COUNT(*) AS views_count
FROM Views AS V
JOIN Episodes AS E ON V.episode_id = E.id
GROUP BY E.id
ORDER BY views_count DESC
LIMIT 3;
