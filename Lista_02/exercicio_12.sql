SELECT * FROM Duplicata 
WHERE Banco = 'BANCO DO BRASIL';
 
SELECT * FROM Duplicata 
WHERE Banco = 'SANTANDER';

UPDATE Duplicata
SET Banco = 'SANTANDER' 
WHERE Numero = '200120';

UPDATE Duplicata
SET Banco = 'SANTANDER' 
WHERE Numero = '200125';

UPDATE Duplicata
SET Banco = 'SANTANDER' 
WHERE Numero = '250380';

UPDATE Duplicata
SET Banco = 'SANTANDER' 
WHERE Numero = '453380';
