SELECT * FROM associado a LEFT JOIN plano p 
ON a.plano = p.numero 
WHERE nome LIKE '%SILVA%';