-- Consulta o titulo, genero e preço dos filmes que sao de drama ou comedia
SELECT titulo, genero, preco_aluguel FROM filmes WHERE genero = "Drama" OR genero = "Comédia";

-- Consulta o titulo e o ano de lançamento dos filmes lançados entre 2001 e 2005;
SELECT titulo, ano_lancamento FROM filmes WHERE ano_lancamento >= 2001 and ano_lancamento <= 2005;

-- Consulta o titulo, ano de lançamento e o genero dos filmes de drama ou aimação lançados depois de 2009
SELECT titulo, ano_lancamento, genero FROM filmes Where (genero = "Drama" or genero = "Animação") and ano_lancamento > 2009;

-- Consulta o titulo, ano de lançamento e o genero dos filmes de ação e aventura ou misterio e suspense que foram lançados entre 2005 e 2010
SELECT titulo, ano_lancamento, genero FROM filmes WHERE (genero = "Ação e Aventura" or genero = "Mistério e Suspense") and (ano_lancamento >= 2005 AND ano_lancamento <= 2010);

-- Colsulta o titulo, ano de lançamento e o genero dos filmes de ação e aventura ou misterio e suspense que foram lançados entre 2005 e 2010 que o aluguel é maior que 3 reais;
SELECT titulo, ano_lancamento, genero FROM filmes WHERE (genero = "Ação e Aventura" or genero = "Misterio e Suspense") and (ano_lancamento >= 2005 and ano_lancamento <= 2010) and preco_aluguel > 3;

-- Desativa o modo seguro de sql
SET sql_safe_updates = 0;

-- Aumenta em 10% o preço dos filmes que possuem o aluguel entre 4 e 5 reais
UPDATE filmes SET preco_aluguel = preco_aluguel * 1.1 WHERE preco_aluguel >= 4 and preco_aluguel <= 5;

-- aumenta em 15% o preco dos filmes que possuem o aluguem entre 2 e 3 reais
UPDATE filmes SET preco_aluguel = preco_aluguel * 1.15 WHERE preco_aluguel >= 2 and preco_aluguel <= 5;

-- Verifica o resultado do exercicio anterior
Select * FROM filmes WHERE preco_aluguel >= 2 and preco_aluguel <= 5;

-- Desconta 10% do preço dos filmes lançados entre 2001 e 2003
UPDATE filmes SET preco_aluguel = preco_aluguel * 0.9 WHERE ano_lancamento >= 2001 and ano_lancamento <= 2003;

-- Verifica o resultado do exercicio anterior
Select * FROM filmes WHERE ano_lancamento >= 2001 and ano_lancamento <= 2003;

-- Desconta 15% do preço dos filmes de comedia lançados em 2001
UPDATE filmes SET preco_aluguel = preco_aluguel * 0.85 WHERE genero = "Comédia" and ano_lancamento = 2001;

-- Verifica o resultado do exercicio anterior
SELECT * FROM filmes WHERE genero = "Comédia" and ano_lancamento = 2001;

-- Criando a tabela atores
CREATE TABLE atores(
	id_ator INT,
    nome VARCHAR(60),
    ano_nascimento INT,
    nacionalidade VARCHAR(60),
    sexo VARCHAR(10),
    primary key(id_ator)
);

-- Cadastro do ator wagner moura
INSERT INTO atores (id_ator, nome, ano_nascimento, nacionalidade, sexo)
VALUES(1, "Wagner Moura",  1976, "Brasileiro", "Masculino");
