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

-- Seleciona todas as colunas da tabela
SELECT * FROM funcionarios;

-- Seleciona apenas as colunas nome e nascimanto da tabela
SELECT nome, nascimento FROM funcionarios;

-- Seleciona apenas as colunas nome, cargo e salario
SELECT nome, cargo, salario FROM funcionarios;

-- Seleciona apenas cargo e salario
SELECT cargo, salario FROM funcionarios;

-- Seleciona apenas os cargos arquitetos de software
SELECT * FROM funcionarios WHERE cargo = "Arquiteto de Software";

-- Seleciona apenas as colunas nome, cargo e salario dos gerentes de projetos
SELECT nome, cargo, salario FROM funcionarios WHERE cargo = "Gerente de Projetos";

-- Seleciona apenas as colunas salario e cargo dos professores
SELECT cargo, salario FROM funcionarios WHERE cargo = "Professor";

-- Seleciona apenas as colunas nome, cargo e salario de quem recebe 10000
SELECT nome, cargo, salario FROM funcionarios WHERE salario > 10000;

-- Seleciona apenas a coluna nome de quem recebe abaixo de 1500
SELECT nome FROM funcionarios WHERE salario < 1500;

-- Seleciona apenas a coluna cargo de quem recebe 28000 ou mais
SELECT cargo FROM funcionarios WHERE salario >= 28000;

-- Seleciona apenas a funcionaria de nome Monica Yates
SELECT * FROM funcionarios WHERE nome = "Monica Yates";

-- Seleciona apenas as colunas cargo e salario da funcionaria Jennifer Gardner
SELECT cargo, salario FROM funcionarios WHERE nome = "Jennifer Gardner";

-- Seleciona apenas a data de nascimento do funcionario Russell Cole
SELECT nascimento FROM funcionarios WHERE nome = "Russell Cole";

-- Seleciona apenas o nome e o cargo do funcionario de cpf 84716339531
SELECT nome, cargo FROM funcionarios WHERE cpf = "84716339531";

-- Seleciona apenas o nome completo, salario e a data de nascimento dos funcionarios nascidos em 1998 em diante
SELECT
	nome as "Nome Completo",
    salario as "Salário",
    nascimento as "Data de nascimento" 
FROM funcionarios WHERE nascimento >= "1998-01-01";

-- Seleciona tudo da tabela e ordena em ordem alfabetica
SELECT * FROM funcionarios ORDER BY nome ASC;

-- Seleciona apenas as colunas nome, cargo e salario e ordena do maior salario para o menor
SELECT 
	nome as "Nome Completo", 
	cargo as "Cargo", 
	salario as "Salário"
FROM funcionarios ORDER BY salario DESC;

-- Seleciona apenas as colunas salario e cargo e ordena do mais velho ao mais novo
SELECT
	cargo as "Cargo", 
	salario as "Salário"
 FROM funcionarios ORDER BY nascimento DESC;

-- Seleciona o nome completo eo cargo dos funcionarios com maior salaraio
SELECT
	nome as "Nome Completo",
    cargo as "Cargo"
FROM funcionarios ORDER BY salario DESC LIMIT 5;

-- Seleciona o nome do funcionario mais velho da empresa
SELECT 
	nome as "Nome Completo"
FROM funcionarios ORDER BY nascimento ASC LIMIT 1;

-- Seleciona os 10 menores salarios da empresa
SELECT 
	salario as "Salário"
FROM funcionarios ORDER BY salario ASC LIMIT 10;

-- Seleciona o nome, salario e cargo dos funcionarios professores em ordem alfabetica
SELECT
	nome as "Nome Completo",
    salario as "Salário",
    cargo as "Cargo"
FROM funcionarios WHERE cargo = "Professor" ORDER BY nome ASC;

-- Seleciona o nome, salario eo cargo dos funcionarios medicos com os 5 maiores salarios
SELECT
	nome as "Nome Completo",
    salario as "Salario",
    cargo as "Cargo"
FROM funcionarios WHERE cargo = "Medico" ORDER BY salario DESC LIMIT 5;

-- Seleciona o nome e cpf do funcionario recepcionista com menor salario
SELECT
	nome as "Nome Completo",
    cpf as "CPF"
FROM funcionarios WHERE cargo = "Recepcionista" ORDER BY salario ASC LIMIT 1;