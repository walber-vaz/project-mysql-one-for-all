SELECT 
  SpotifyClone.artists.name AS artista,
  CASE
    WHEN COUNT(SpotifyClone.favorite_songs.music_id) >= 5 THEN 'A'
    WHEN COUNT(SpotifyClone.favorite_songs.music_id) BETWEEN 3 AND 4 THEN 'B'
    WHEN COUNT(SpotifyClone.favorite_songs.music_id) BETWEEN 1 AND 2 THEN 'C'
    WHEN COUNT(SpotifyClone.favorite_songs.music_id) = 0 THEN '-'
  END AS ranking
FROM SpotifyClone.artists
  INNER JOIN SpotifyClone.albums ON SpotifyClone.artists.id = SpotifyClone.albums.artist_id
  INNER JOIN SpotifyClone.musics ON SpotifyClone.albums.id = SpotifyClone.musics.album_id
  LEFT JOIN SpotifyClone.favorite_songs ON SpotifyClone.musics.id = SpotifyClone.favorite_songs.music_id
GROUP BY SpotifyClone.artists.name
ORDER BY COUNT(SpotifyClone.favorite_songs.music_id) DESC, SpotifyClone.artists.name ASC;
