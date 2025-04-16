CREATE DATABASE escola;

USE escola;

CREATE TABLE aluno (
	ra VARCHAR (6) PRIMARY KEY,
    nome_aluno VARCHAR (45) NOT NULL,
    nascimento DATE
);

CREATE TABLE curso (
	codigo VARCHAR (1) PRIMARY KEY,
    nome_curso VARCHAR (50) NOT NULL,
    ch VARCHAR (3),
    data_inicio DATE,
    data_termino DATE
);

CREATE TABLE matricula (
	curso VARCHAR (1),
    ra VARCHAR (6),
    data_matricula DATE,
    valor DECIMAL (5,2)
);

INSERT INTO aluno
(ra, nome_aluno, nascimento) 
VALUES
('123456', 'Ana', '1972-01-10'),
('123457', 'Bianca', '1973-02-11'),
('123458', 'Carla', '1987-12-12'),
('123459', 'Danilo', '1990-10-02'),
('123460', 'Eliana', '1987-01-01');

INSERT INTO curso 
(codigo, nome_curso, ch, data_inicio, data_termino) 
VALUES
(1, 'java', 360, '2007-12-01', '2008-10-10'),
(2, 'auto cad', 60, '2008-01-10', '2008-05-10'),
(3, 'php', 90, '2008-02-15', '2008-07-10'),
(4, 'redes', 60, '2008-01-20', '2008-03-20');

INSERT INTO matricula 
(curso, ra, data_matricula, valor) 
VALUES
(1, '123456', '2007-09-10', 100.00),
(3, '123456', '2007-10-01', 60.00),
(1, '123457', '2007-09-01', 100.00),
(2, '123458', '2008-01-11', 50.00),
(2, '123459', '2007-07-20', 50.00),
(1, '123460', '2007-08-10', 80.00);

SELECT * FROM matricula;