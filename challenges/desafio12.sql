-- Crie uma QUERY que exibe um ranking de artistas baseado na quantidade de favoritadas em suas músicas.

-- O resultado deve possuir duas colunas:

-- artista: O nome da pessoa artista

-- ranking: Uma classificação definida pela quantidade de favoritadas as canções da pessoa artista receberam, como segue:

-- ranking	quantidade de favoritadas em canções
-- A	5 ou mais
-- B	3 - 4
-- C	1 - 2
-- -	0

-- Seu resultado deve estar ordenado em ordem decrescente, baseando-se no número de favoritadas. Em caso de empate, ordene os resultados pelo nome da pessoa artista em ordem alfabética.

-- Sua QUERY deve retornar a seguinte informação:

-- artista	ranking
-- Beyoncé	A
-- Elis Regina	B
-- Queen	B
-- Nina Simone	C
-- Baco Exu do Blues	-
-- Blind Guardian	-
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
