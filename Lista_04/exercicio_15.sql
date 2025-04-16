-- Active: 1744770120460@@127.0.0.1@3306@escola
SELECT nome_curso FROM curso c
LEFT JOIN matricula m
ON c.codigo = m.curso
WHERE data_inicio > '2008-01-11';