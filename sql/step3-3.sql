use internet_tv;

SELECT
  C.name,
  B.start_time,
  B.end_time,
  S.season_number,
  E.episode_number,
  E.title,
  E.description
FROM
  Channel AS C
  JOIN Broadcasts AS B ON B.channel_id = C.id
  JOIN Episodes AS E ON E.id = B.episode_id
  JOIN Seasons AS S ON S.id = E.season_id
  JOIN Programs AS P ON P.id = S.program_id
WHERE
  DATE(B.start_time) = '2024-03-01'; --本日が3/1という想定
