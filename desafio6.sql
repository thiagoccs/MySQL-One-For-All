SELECT FORMAT(MIN(p.valor),2) AS 'faturamento_minimo',
MAX(p.valor) AS 'faturamento_maximo',
ROUND(AVG(p.valor),2) AS 'faturamento_medio',
ROUND(SUM(p.valor),2) AS 'faturamento_total'
FROM SpotifyClone.planos AS p
INNER JOIN SpotifyClone.usuarios AS u
ON p.id_plano = u.id_plano;