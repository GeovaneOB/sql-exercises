USE escola;

SELECT nome_aluno FROM aluno
WHERE nascimento =
(SELECT nascimento FROM aluno
WHERE nome_aluno = 'Ana');