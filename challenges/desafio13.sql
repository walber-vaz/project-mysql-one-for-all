SELECT
  CASE
    WHEN SpotifyClone.people.age <= 30 THEN 'Até 30 anos'
    WHEN SpotifyClone.people.age > 30 AND SpotifyClone.people.age <= 60 THEN 'Entre 31 e 60 anos'
    ELSE 'Maior de 60 anos'
  END AS faixa_etaria,
  COUNT(DISTINCT SpotifyClone.people.id) AS total_pessoas_usuarias,
  COUNT(SpotifyClone.favorite_songs.music_id) AS total_favoritadas
FROM
  SpotifyClone.people
  LEFT JOIN SpotifyClone.favorite_songs ON SpotifyClone.people.id = SpotifyClone.favorite_songs.person_id
GROUP BY
  faixa_etaria
ORDER BY
  faixa_etaria;
