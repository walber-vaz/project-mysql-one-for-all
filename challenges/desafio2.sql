SELECT
    COUNT(DISTINCT Mu.id) AS cancoes,
    COUNT(DISTINCT Ar.id) AS artistas,
    COUNT(DISTINCT Al.id) AS albuns
FROM SpotifyClone.musics AS Mu
  INNER JOIN SpotifyClone.albums AS Al ON Al.id = Mu.album_id
  INNER JOIN SpotifyClone.artists AS Ar ON Ar.id = Al.artist_id;
