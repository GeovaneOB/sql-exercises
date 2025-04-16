SELECT nome_curso, COUNT(*) qtd_matriculas FROM curso c
LEFT JOIN matricula m
ON m.curso = c.codigo
WHERE data_inicio LIKE '%2008-01%'
GROUP BY nome_curso;