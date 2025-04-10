USE dblongavida;

SELECT plano ,nome, count(plano) FROM associado
WHERE plano = 'E3'
GROUP BY nome;