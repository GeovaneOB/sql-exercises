SELECT nome_curso, count(a.ra) quantidade_alunos FROM curso c
JOIN matricula m
ON c.codigo = m.curso
JOIN aluno a
ON m.ra = a.ra
GROUP BY nome_curso;