SELECT a.ra, nome_aluno, nome_curso FROM curso c
JOIN matricula m
ON c.codigo = m.curso
JOIN aluno a
ON m.ra = a.ra;