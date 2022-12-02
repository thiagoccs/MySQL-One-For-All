SELECT COUNT(id_musica) AS 'cancoes',
(SELECT COUNT(id_artista) FROM SpotifyClone.artistas) AS 'artistas',
(SELECT COUNT(id_album) FROM SpotifyClone.albuns) AS 'albuns'
FROM SpotifyClone.musicas;