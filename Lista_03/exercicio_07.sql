SELECT nome, plano, valor FROM associado 
LEFT JOIN plano ON associado.plano = plano.numero
WHERE associado.cidade = 'SAO PAULO';