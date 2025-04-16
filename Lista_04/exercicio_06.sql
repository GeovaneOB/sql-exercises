SELECT nome_curso, sum(m.valor) valor_por_matricula, 
(SELECT sum(valor) FROM matricula) total_arrecardado
FROM curso c
JOIN matricula m
ON c.codigo = m.curso
GROUP BY nome_curso;