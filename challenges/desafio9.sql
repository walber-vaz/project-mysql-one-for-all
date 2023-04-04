SELECT
  COUNT(history.date) AS musicas_no_historico
FROM SpotifyClone.history
  INNER JOIN SpotifyClone.people ON people.id = history.person_id
WHERE people.name = 'Barbara Liskov';
