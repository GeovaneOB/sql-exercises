SELECT * FROM Duplicata 
WHERE Nome = 'LER E SABER';

UPDATE Duplicata
SET Valor = Valor * 1.05 
WHERE Nome = 'LER E SABER' 
AND Vencimento BETWEEN '2017-01-01' AND '2017-05-31';
