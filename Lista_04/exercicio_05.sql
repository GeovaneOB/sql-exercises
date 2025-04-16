SELECT nome_curso, sum(m.valor) FROM curso c
JOIN matricula m
ON c.codigo = m.curso
GROUP BY nome_curso;