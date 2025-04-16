SELECT nome_curso curso_vip, count(ra) quantidade_alunos FROM curso c
JOIN matricula m
ON m.curso = c.codigo
GROUP BY nome_curso
HAVING count(ra) >= 2;