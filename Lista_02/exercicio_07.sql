SELECT Numero, Vencimento, Valor, Nome, Banco FROM Duplicata 
WHERE Banco NOT LIKE 'ITAU' 
AND Banco NOT LIKE 'SANTANDER';
