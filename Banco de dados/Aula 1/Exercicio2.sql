CREATE DATABASE escola_cursos;

use escola_cursos;

CREATE TABLE alunos (
	matricula INT,
    nome VARCHAR(45),
    curso VARCHAR(45)
);
CREATE TABLE cursos (
	codigo INT,
    nome_cursos VARCHAR(60),
    qtd_vagas INT
);

INSERT INTO cursos (codigo, nome_cursos, qtd_vagas)
VALUES (100, "Programador", 50),
(200, "Administração", 20),
(300, "Eletricista", 60);

INSERT INTO alunos (matricula, nome, curso)
VALUES (001, "João Marcelo", "Programador"),
(002, "Alberto", "Administração"),
(003, "Vitor", "Eletricista");

SELECT * FROM alunos;

SELECT * FROM cursos;