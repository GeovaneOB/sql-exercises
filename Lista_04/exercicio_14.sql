SELECT nome_aluno, nome_curso FROM aluno a
JOIN matricula m
ON a.ra = m.ra
JOIN curso c
ON m.curso = c.codigo
WHERE data_inicio > data_matricula;