/*
COMENTÁRIO POR BLOCO (/*  **)
**/
-- COMENTÁRIO POR LINHA (--)
-- cria um banco de dados:
CREATE DATABASE db_rhgeneration;
-- indica o banco de dados utilizado:
USE db_rhgeneration;

CREATE TABLE tb_funcionarios(
	id BIGINT auto_increment,
    -- 255 quantidade maxima de caracter 
    nome VARCHAR (255),
    -- usar o decimal com mais casas após a virgula 
    salario DECIMAL (9,2),
    setor VARCHAR (255),
    matricula INT,
	
    -- segunda forma de referenciar primary key
    PRIMARY KEY (id)
);

-- trás todos os dados da tabela funcionarios
SELECT * FROM tb_funcionarios;
SELECT * FROM tb_funcionarios WHERE salario > 2000;
SELECT * FROM tb_funcionarios WHERE salario < 2000;
INSERT INTO tb_funcionarios(nome, salario, setor, matricula)VALUES("Hector","500.55","ADM","0567");
INSERT INTO tb_funcionarios(nome, salario, setor, matricula)VALUES("Joseph","37000.00","Gerente","0567");

UPDATE tb_funcionarios
SET nome = "Thabata"
WHERE id = 1;

DELETE FROM tb_funcionarios WHERE id = 2;


