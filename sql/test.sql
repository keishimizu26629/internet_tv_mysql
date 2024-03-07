use internet_tv;

-- 5.
SELECT
  P.title,
  COUNT(*) AS Views_count
FROM
  Views AS V
  JOIN Episodes AS E ON V.episode_id = E.id
  JOIN Seasons AS S ON E.season_id = S.id
  JOIN Programs AS P ON S.program_id = P.id
WHERE
  DATE(V.watched_time) BETWEEN DATE_ADD('2024-03-01', INTERVAL -7 DAY) AND '2024-03-01'
GROUP BY
  P.id
ORDER BY
  Views_count DESC
LIMIT 2;
