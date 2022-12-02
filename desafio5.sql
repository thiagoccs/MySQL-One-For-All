SELECT m.musica AS 'cancao',
COUNT(id_usuario) AS 'reproducoes'
FROM SpotifyClone.musicas AS m
INNER JOIN SpotifyClone.historico AS h
ON m.id_musica = h.id_musica
GROUP BY h.id_musica
ORDER BY reproducoes DESC, cancao ASC
LIMIT 2;
