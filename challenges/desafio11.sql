-- Crie uma QUERY que exibe o top 3 de álbuns com as músicas que mais foram favoritadas.
-- O resultado deve possuir duas colunas:

-- album: O nome do álbum

-- favoritadas: Quantas vezes as músicas do álbum foram favoritadas

-- Seu resultado deve estar ordenado em ordem decrescente, baseando-se no número de favoritadas. Em caso de empate, ordene os resultados pelo nome do álbum em ordem alfabética. Queremos apenas o top 3 de álbuns com mais músicas favoritadas.
SELECT
  albums.name AS album,
  COUNT(favorite_songs.music_id) AS favoritadas
FROM SpotifyClone.albums
  INNER JOIN SpotifyClone.musics ON musics.album_id = albums.id
  INNER JOIN SpotifyClone.favorite_songs ON favorite_songs.music_id = musics.id
GROUP BY albums.name
ORDER BY favoritadas DESC, album ASC
LIMIT 3;
