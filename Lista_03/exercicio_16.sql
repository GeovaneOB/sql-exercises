SELECT nome, plano, valor FROM associado AS a 
LEFT JOIN plano AS p 
ON a.plano = p.numero
WHERE cidade = 'SAO PAULO'
AND plano in ('M2', 'M3')
ORDER BY nome;