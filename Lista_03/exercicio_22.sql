SELECT nome, plano, descricao, valor FROM associado AS a
JOIN plano AS p
ON a.plano = p.numero
WHERE nome LIKE '%AMARAL%';