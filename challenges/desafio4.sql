SELECT
  people.name AS pessoa_usuaria,
  IF(MAX(YEAR(history.date)) >= 2021, 'Ativa', 'Inativa') AS status_pessoa_usuaria
FROM SpotifyClone.people
  INNER JOIN SpotifyClone.history ON history.person_id = people.id
GROUP BY pessoa_usuaria
ORDER BY pessoa_usuaria;
