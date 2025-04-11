/*
ATIVIDADE PROPOSTA 01
PROFESSOR: ANTÔNIO LADEIA
DISCIPLINA: BANCO DE DADOS

1. Crie um banco de dados chamado biblioteca;
2. Selecione o banco de dados;
3. Crie uma tabela chamada livros contendo id, titulo, autor e ano_publicacao;
4. Crie uma tabela chamada usuario contendo id, nome, cpf e telefone;
5. Crie um relacionamento entre as tabelas do tipo nxn, este relacionamento precisa possuir os atributos de data_emprestimo e data_devolucao;
6. Insira 5 registros em cada tabela;
7. Crie uma consulta para trazer os emprestimos que ainda não foram devolvidos, com os dados dos alunos e os livros que não foram entregues.
*/

/*
Criando o banco de dados biblioteca:
*/

CREATE DATABASE biblioteca;

/*
Selecionando o banco de dados:
*/

USE biblioteca;

/*
Criando a tabela livros:
*/

CREATE TABLE livros (
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR (50) NOT NULL,
    autor VARCHAR (60) NOT NULL,
    publicacao DATE
);

/*
Criando a tabela intermediária livros_usuarios:
*/

CREATE TABLE livros_usuarios (
	id_livros INT,
    id_usuarios INT,
    data_emprestimo DATE,
    data_devolucao DATE,
    FOREIGN KEY (id_livros)
    REFERENCES livros (id),
    FOREIGN KEY (id_usuarios)
    REFERENCES usuarios (id)
);

/*
Criando a tabela usuarios:
*/

CREATE TABLE usuarios (
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR (60) NOT NULL,
	cpf VARCHAR (15) NOT NULL UNIQUE,
    tel VARCHAR (15) NOT NULL
);

/*
Inserindo dados em todas as tabelas:
*/

INSERT INTO livros 
(titulo, autor, publicacao)
 VALUES
('Dom Casmurro', 'Machado de Assis', '1899-01-01'),
('1984', 'George Orwell', '1949-06-08'),
('O Pequeno Príncipe', 'Antoine de Saint-Exupéry', '1943-04-06'),
('A Revolução dos Bichos', 'George Orwell', '1945-08-17'),
('Capitães da Areia', 'Jorge Amado', '1937-10-01');

INSERT INTO usuarios 
(nome, cpf, tel)
VALUES
('Ana Beatriz Silva', '123.456.789-00', '(11) 91234-5678'),
('Carlos Eduardo Lima', '987.654.321-00', '(21) 99876-5432'),
('Fernanda Rocha', '111.222.333-44', '(31) 98765-4321'),
('João Pedro Ramos', '555.666.777-88', '(51) 97654-3210'),
('Larissa Gomes', '999.888.777-66', '(61) 96543-2109');

INSERT INTO livros_usuarios 
(id_livros, id_usuarios, data_emprestimo, data_devolucao)
VALUES
(1, 1, '2025-03-01', '2025-03-10'),  
(2, 1, '2025-03-15', NULL),          
(2, 3, '2025-03-20', '2025-04-01'),  
(3, 4, '2025-04-01', NULL),          
(1, 5, '2025-04-05', NULL);

/*
Exibindo nome, título, data de emprestímo e data de devolucao com junções entre as tabelas:
livros, usuario e livros_usuarios (Tabela intermeiária), onde, a data de devolução é nula.
*/

SELECT nome, titulo, data_emprestimo, data_devolucao FROM usuarios u
JOIN livros l
ON u.id = l.id
JOIN livros_usuarios lu
ON u.id = lu.id_usuarios
WHERE data_devolucao IS NULL; 
