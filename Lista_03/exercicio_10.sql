UPDATE associado
SET plano = 'E3'
WHERE nome LIKE 'PEDRO JOSE%';

SELECT * FROM associado a
JOIN plano p ON a.plano = p.numero;

SELECT * FROM associado a
JOIN plano p ON a.plano = p.numero
WHERE plano = 'B1';