SELECT nome_curso, COUNT(m.curso) qtd_matricula FROM curso c
JOIN matricula m
ON m.curso = c.codigo
WHERE data_inicio LIKE '%2008-01%'
GROUP BY nome_curso;