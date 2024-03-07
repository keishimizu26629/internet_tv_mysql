use internet_tv;

SELECT
  P.title AS Program_Title,
  (
    SELECT COUNT(*) FROM Seasons AS S
    WHERE S.program_id = P.id
  ) AS Total_Seasons,
  (
    SELECT COUNT(*) FROM Episodes AS E
    JOIN Seasons S ON E.season_id = S.id
    WHERE S.program_id = P.id
  ) AS Total_Episodes,
  E.title AS Most_Viewed_Episode_Title,
  V.views_count AS Max_Views_Count
FROM
  (
    SELECT episode_id, COUNT(*) AS views_count
    FROM Views
    GROUP BY episode_id
    ORDER BY COUNT(*) DESC
    LIMIT 3
  ) AS V
JOIN Episodes AS E ON E.id = V.episode_id
JOIN Seasons AS S ON S.id = E.season_id
JOIN Programs AS P ON P.id = S.program_id;
