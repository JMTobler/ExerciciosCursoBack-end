-- Criando banco de dados
CREATE DATABASE empresa_xpto1;

-- Ativando o banco de dados
USE empresa_xpto1;

-- Criando uma tabela no banco de dados
CREATE TABLE funcionarios (
	nome VARCHAR(60),
    cpf CHAR(12),
    cargo VARCHAR(60),
    salario FLOAT,
    nascimento DATE
);

-- Adicionando funcionarios na tabela
INSERT INTO funcionarios(nome, cpf, cargo, salario, nascimento)
VALUES ("João Marcelo", "111111111-2", "TI", 5000.00, "2000-02-09");

INSERT INTO funcionarios(nome, cpf, cargo, salario, nascimento)
VALUES ("José Alberto", "222222222-3", "RH", 7000.00, "1944-07-15");

SELECT * FROM funcionarios;
