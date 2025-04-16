SELECT nome_curso, ROUND(avg(m.valor), 2) valor_medio FROM matricula m
JOIN curso c
ON m.curso = c.codigo
GROUP BY nome_curso;