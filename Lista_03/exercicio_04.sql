SELECT nome, plano, valor FROM associado
JOIN plano ON associado.plano = plano.numero
ORDER BY nome;