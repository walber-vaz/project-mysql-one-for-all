SELECT
  artists.name AS artista,
  albums.name AS album,
  COUNT(followers.artist_id) AS pessoas_seguidoras
FROM SpotifyClone.artists
  INNER JOIN SpotifyClone.albums ON albums.artist_id = artists.id
  INNER JOIN SpotifyClone.followers ON followers.artist_id = artists.id
GROUP BY artista, album
ORDER BY pessoas_seguidoras DESC, artista, album;
