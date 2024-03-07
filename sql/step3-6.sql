use internet_tv;

SELECT
  P.genre,
  AVG(Views_count) AS Average_Views
FROM
  (
    SELECT
      E.id AS episode_id,
      E.season_id,
      COUNT(*) AS Views_count
    FROM
      Views AS V
      JOIN Episodes AS E ON V.episode_id = E.id
    GROUP BY
      E.id
  ) AS EpisodeViews
  JOIN Episodes AS E ON EpisodeViews.episode_id = E.id
  JOIN Seasons AS S ON E.season_id = S.id
  JOIN Programs AS P ON S.program_id = P.id
GROUP BY
  P.genre
ORDER BY
  Average_Views DESC
