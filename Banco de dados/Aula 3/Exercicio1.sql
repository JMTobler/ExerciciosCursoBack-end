SET SQL_SAFE_UPDATES = 0;

-- Muda na tabela funcionarios o nome da Monica Yates para o meu
UPDATE funcionarios SET nome = "Joao Tobler" WHERE nome = "Monica Yates";

-- Verifica se o nome monica yates foi mudado para o meu
SELECT * FROM funcionarios WHERE nome = "Joao Tobler";

-- Muda todos os nomes da tabela funcionarios para o meu nome
UPDATE funcionarios SET nome = "Joao Tobler";

-- Verifica se os nomes na tabela mudaram
SELECT * FROM funcionarios;

-- Deleta toda a tabela funcionarios
DELETE FROM funcionarios;

-- Deleta a funcionaria Monica Yates do banco de dados
DELETE FROM funcionarios WHERE nome = "Monica Yates";

-- Verifica se a Monica Yates foi excluida
SELECT * FROM funcionarios WHERE nome = "Monica Yates";

-- Faz um reajuste de 10% no salario dos professores
UPDATE funcionarios SET salario = salario * 1.1 WHERE cargo = "Professor";

-- Verifica se o reajuste foi aplicado
SELECT salario FROM funcionarios WHERE cargo = "professor";

-- Faz um reajuste nos funcionarios que recebiam menos que um salario minimo
UPDATE funcionarios SET salario = 1500 WHERE salario < 1500;

-- Verifica se o reajuste foi feito
SELECT * FROM funcionarios WHERE salario < 1500;

-- Faz um update no cargo do alan robinson para desenvolvedor front-end
UPDATE funcionarios SET cargo = "Desenvolvedor Front-end" WHERE nome = "Alan Robinson";

-- Faz a verificação da mudança de cargo
SELECT * FROM funcionarios WHERE nome = "Alan Robinson";

-- Retorna a data e a hora exata
SELECT now();

-- Retorna a data atual
SELECT curdate();

-- Retorna apenas o dia
SELECT DAY('2023-10-20');

-- Retorna apenas o mes
SELECT MONTH('2023-10-20');

-- Retorna apenas o ano
SELECT YEAR('2023-10-20');

-- Calcula a idade dos funcionarios.
SELECT nome as 'Nome completo',
YEAR(curdate()) - YEAR(nascimento) as 'Idade' FROM funcionarios;