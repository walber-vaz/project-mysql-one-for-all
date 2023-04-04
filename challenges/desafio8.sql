SELECT
  artists.name AS artista,
  albums.name AS album
FROM SpotifyClone.artists
  INNER JOIN SpotifyClone.albums ON albums.artist_id = artists.id
WHERE artists.name = 'Elis Regina'
ORDER BY albums.name;
