SELECT
  music.name AS cancao,
  COUNT(history.music_id) AS reproducoes
FROM SpotifyClone.history
  INNER JOIN SpotifyClone.musics AS music ON music.id = history.music_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao
LIMIT 2;
