SELECT art.artista AS 'artista', 
a.album AS 'album',
COUNT(s.id_artista) AS 'seguidores'
FROM SpotifyClone.artistas AS art
INNER JOIN SpotifyClone.albuns AS a
ON art.id_artista = a.id_artista
INNER JOIN SpotifyClone.seguindo_artistas AS s
ON art.id_artista = s.id_artista
GROUP BY art.artista, a.album
ORDER BY seguidores DESC, artista ASC, album ASC;