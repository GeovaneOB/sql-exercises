SELECT nome, plano, valor FROM associado 
JOIN plano ON associado.plano = plano.numero 
WHERE cidade = 'BARUERI' AND plano = 'M1';