SELECT nome_curso, count(a.ra) quantidade_alunos FROM curso c
LEFT JOIN matricula m
ON c.codigo = m.curso
LEFT JOIN aluno a
ON a.ra = m.ra
GROUP BY nome_curso;