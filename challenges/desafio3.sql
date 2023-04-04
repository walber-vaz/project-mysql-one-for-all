SELECT
  people.name AS pessoa_usuaria,
  COUNT(DISTINCT musics.id) AS musicas_ouvidas,
  ROUND(SUM(musics.duration) / 60, 2) AS total_minutos
FROM SpotifyClone.people
  INNER JOIN SpotifyClone.history ON history.person_id = people.id
  INNER JOIN SpotifyClone.musics ON musics.id = history.music_id
GROUP BY pessoa_usuaria
ORDER BY pessoa_usuaria;
