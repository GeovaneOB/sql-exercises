SELECT DISTINCT nome, banco FROM Duplicata 
WHERE Banco = 'BRADESCO' OR Banco = 'ITAU'
ORDER BY nome;
