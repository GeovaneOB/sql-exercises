SELECT * FROM plano
WHERE numero LIKE 'M%';

UPDATE plano
SET valor = valor * 1.06
WHERE numero LIKE 'M%';