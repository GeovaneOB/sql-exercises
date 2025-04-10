CREATE DATABASE dblongavida;

USE dblongavida;

CREATE TABLE plano (
	numero char (2) not null primary key,
    descricao char (30),
    valor decimal (10, 2)
);

INSERT INTO plano
(numero, descricao, valor)
VALUES
('B1', 'Básico 1', '200.00'),
('B2', 'Básico 2', '150.00'),
('B3', 'Básico 3', '100.00'),
('E1', 'Executivo 1', '350.00'),
('E2', 'Executivo 2', '300.00'),
('E3', 'Executivo 3', '250.00'),
('M1', 'Master 1', '500.00'),
('M2', 'Master 2', '450.00'),
('M3', 'Master 3', '400.00');

UPDATE plano
SET numero = 'M3'
WHERE descricao = 'Master 3';

CREATE TABLE associado (
	plano char (2) not null,
    nome char (40) not null primary key,
    endereco char (35),
    cidade char (20),
    estado char (2),
    cep char (9)
);

INSERT INTO associado 
(plano, nome, endereco, cidade, estado, cep)
VALUES
('B1', 'JOSE ANTONIO DA SILVA', 'R. FELIPE DO AMARAL, 3450', 'COTIA', 'SP', '06700-000'),
('B1', 'MARIA DA SILVA SOBRINHO', 'R. FELIPE DE JESUS, 1245', 'DIADEMA', 'SP', '09960-170'),
('B1', 'PEDRO JOSE DE OLIVEIRA', 'R. AGRIPINO DIAS, 155', 'COTIA', 'SP', '06700-000'),
('B2', 'ANTONIO DE FERNANDES', 'R. PE EZEQUIEL, 567', 'DIADEMA', 'SP', '09976-115'),
('B2', 'ANTONIO DO PRADO', 'R. INDIO TABAJARA, 52', 'GUARULHOS', 'SP', '07112-999'),
('B2', 'WILSON DE SENA', 'R. ARAPIRACA, 1234', 'OSASCO', 'SP', '06293-001'),
('B2', 'SILVIA DE ABREU', 'R. DR. JOAO DA SILVA, 5', 'SANTO ANDRE', 'SP', '09060-444'),
('E2', 'ODETE DA CONCEIÇÃO', 'R. VOLUNTARIOS DA PATRIA, 10', 'SAO PAULO', 'SP', '02110-550'),
('E2', 'JOAO CARLOS MACEDO', 'R. VISTA ALEGRE, 500', 'SAO PAULO', 'SP', '04334-990'),
('E3', 'CONCEIÇÃO DA SILVA', 'AV. VITORIO DO AMPARO, 11', 'MAUA', 'SP', '09321-888'),
('E3', 'PAULO BRUNO AMARAL', 'R. ARGENZIO BRILHANTE, 88', 'BARUERI', 'SP', '06460-999'),
('E3', 'WALDINECI DE OLIVEIRA', 'R. OURO VELHO, 12', 'BARUERI', 'SP', '06470-000'),
('E3', 'MARCOS DO AMARAL', 'R. DO OUVIDOR, 67', 'GUARULHOS', 'SP', '07031-555'),
('M1', 'MURILO DE SANTANA', 'R. PRATA DA CASA', 'BARUERI', 'SP', '06455-111'),
('M1', 'LUIZA ONOREE FREITAS', 'R. VICENTE DE ABREU, 55', 'SANTO ANDRE', 'SP', '09060-667'),
('M1', 'MELISSA DE ALMEIDA', 'R. FERNANDO ANTONIO, 2345', 'SAO PAULO', 'SP', '03120-003'),
('M1', 'JOAO INACIO DA CONCEICAO', 'R. PENELOPE CHARMOSA, 34', 'SUZANO', 'SP', '08670-888'),
('B3', 'AUGUSTA DE ABREU', 'AV. 101 DA SERRA, 909', 'SANTO ANDRE', 'SP', '09061-333'),
('M3', 'ILDA DE MELO DA CUNHA', 'AV. POR DO SOL, 546', 'SANTO ANDRE', 'SP', '09199-444');