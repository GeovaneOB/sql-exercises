SELECT nome_curso FROM curso c
LEFT JOIN matricula m
ON c.codigo = m.curso
WHERE data_inicio > '2008-01-11';