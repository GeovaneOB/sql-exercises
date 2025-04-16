SELECT a.ra, nome_aluno, nome_curso FROM curso c
JOIN matricula m
ON c.codigo = m.curso
JOIN aluno a
ON a.ra = m.ra
ORDER BY nome_curso;