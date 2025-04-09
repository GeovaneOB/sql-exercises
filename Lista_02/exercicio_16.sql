USE contas;

SELECT * FROM Duplicata 
WHERE Vencimento BETWEEN '2016-01-01' AND '2016-12-31';

UPDATE Duplicata
SET Valor = Valor * 1.5
WHERE Vencimento BETWEEN '2016-01-01' AND '2016-12-31';
