SELECT m.musica AS 'nome',
COUNT(h.id_musica) AS 'reproducoes'
FROM SpotifyClone.musicas AS m
INNER JOIN SpotifyClone.historico AS h
ON m.id_musica = h.id_musica
INNER JOIN SpotifyClone.usuarios AS u
ON u.id_usuario = h.id_usuario
INNER JOIN SpotifyClone.planos AS p
ON p.id_plano = u.id_plano AND (p.nome_plano = 'gratuito' OR p.nome_plano = 'pessoal')
GROUP BY nome
ORDER BY nome
;