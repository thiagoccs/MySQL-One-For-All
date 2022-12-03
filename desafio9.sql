SELECT COUNT(h.id_musica) AS 'quantidade_musicas_no_historico'
FROM SpotifyClone.historico AS h
INNER JOIN SpotifyClone.usuarios AS u
ON h.id_usuario = u.id_usuario AND u.nome_usuario = 'Barbara Liskov';