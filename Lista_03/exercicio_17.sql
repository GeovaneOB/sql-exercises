SELECT * FROM associado AS a
LEFT JOIN plano AS p
ON a.plano = p.numero
ORDER BY plano;