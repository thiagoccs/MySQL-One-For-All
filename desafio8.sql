SELECT art.artista AS 'artista',
a.album AS 'album'
FROM SpotifyClone.artistas AS art
INNER JOIN SpotifyClone.albuns AS a
ON art.id_artista = a.id_artista AND art.artista = 'Elis Regina';
