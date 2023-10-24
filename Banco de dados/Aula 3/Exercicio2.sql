-- Criando o banco de dados
CREATE DATABASE cine_senai_max;

-- Ativando o banco de dados
USE cine_senai_max;

-- Cria a tabela filme
CREATE TABLE filmes (
	id_filme int,
	titulo VARCHAR(60),
    genero VARCHAR(45),
    duracao int,
    ano_lancamento 	INT,
    preco_aluguel DOUBLE,
    primary key(id_filme)
);

-- Adiciona o filme TRopa de Elite na tabela de filmes
INSERT INTO filmes (id_filme,titulo, genero, duracao, ano_lancamento, preco_aluguel)
VALUE(1,"Tropa de Elite", "Ação", 115, 2007, 5.99);

-- Mostra a tabela filmes
SELECT * FROM filmes;

-- Exclui a tabela filmes
DROP TABLE filmes;

-- Mostra apenas o nome e o genero do filme com id 6
SELECT titulo, genero FROM filmes WHERE id_filme = 6;

-- Mostra apenas o nome e o ano de lançamento do filme com id 33
SELECT titulo, ano_lancamento FROM filmes WHERE id_filme = 33;

-- Mostra o item que foi inserido errado
SELECT * FROM filmes WHERE id_filme = 73;

-- Exclui o item que foi inserido errado da tabela
DELETE FROM filmes WHERE id_filme = 73;

-- Busca o filme rio pelo nome para a consulta do id (71)
SELECT * FROM filmes WHERE titulo = "Rio 2";

-- Atualiza o genero do filme rio 2 para animação
UPDATE filmes SET genero = "Animação" WHERE id_filme = 71;

-- Mostra o filme de id 1
SELECT * FROM filmes WHERE id_filme = 1;

-- Atualiza o preço de aluguel do filme
UPDATE filmes SET preco_aluguel = preco_aluguel * 1.1 WHERE id_filme = 1;