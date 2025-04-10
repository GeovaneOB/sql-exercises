SELECT nome, valor FROM associado AS a LEFT JOIN plano AS p 
ON a.plano = p.numero
WHERE plano IN ('B1', 'E1', 'M1');