CREATE DATABASE happy_library;

USE happy_library;

CREATE TABLE editoras (
	id_editora INT,
    nome VARCHAR(45),
    cnpj VARCHAR(14),
    PRIMARY KEY(id_editora)
);
CREATE TABLE livros(
	id_livro INT,
    titulo VARCHAR(45),
    lancamento INT,
    id_editora INT,
    PRIMARY KEY(id_livro),
    FOREIGN KEY(id_editora) REFERENCES editoras(id_editora)
);

-- Inserindo a editora intriseca e seus livros
INSERT INTO editoras (id_editora, nome, cnpj)
VALUES (1, "Intriseca", "05660045000106");

INSERT INTO livros (id_livro, titulo, lancamento, id_editora)
VALUES (100, "Uma breve história do tempo", 1988, 1);

INSERT INTO livros (id_livro, titulo, lancamento, id_editora)
VALUES (200, "O livro das fobias e manias", 2023, 1);

INSERT INTO livros (id_livro, titulo, lancamento, id_editora)
VALUES (300, "Trader ou investidor?", 2023, 1);

SELECT * FROM livros;

-- Inserindo a editora atlas e seus livros
INSERT INTO editoras (id_editora, nome, cnpj)
VALUES (2, "Atlas", "61080370000766");

INSERT INTO livros(id_livro, titulo, lancamento, id_editora)
VALUES (400, "Administração", 2021, 2);

INSERT INTO livros(id_livro, titulo, lancamento, id_editora)
VALUES (500, "Gestão de Pessoas e Cultura Organizacional", 2021, 2);

SELECT * FROM livros;

-- Inserindo a editora Suma
INSERT INTO editoras (id_editora, nome, cnpj)
VALUES (3, "Suma", "90375049000111");

INSERT INTO livros (id_livro, titulo, lancamento, id_editora)
VALUES (600, "As cronicas de gelo e fogo, Volume 1", 2019, 3);

-- Busca dos livros que são da editora atlas
SELECT * FROM livros WHERE id_editora = 2;

-- Busca os livros que sao da editora atlas ou da editora intriseca
SELECT * FROM livros WHERE id_editora = 1 OR id_editora = 2;