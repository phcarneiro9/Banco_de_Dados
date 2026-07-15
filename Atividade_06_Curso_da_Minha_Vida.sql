CREATE DATABASE db_curso_da_minha_vida;

USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(100),
	area VARCHAR(100)
);

CREATE TABLE tb_cursos (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(100),
	valor DECIMAL(10,2),
	carga_horaria INT,
	professor VARCHAR(100),
	categoria_id BIGINT,
	FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nome, area) VALUES
("Java", "Programação"),
("Banco de Dados", "Dados"),
("Front End", "Web"),
("Design", "Criatividade"),
("Marketing", "Negócios");

INSERT INTO tb_cursos (nome, valor, carga_horaria, professor, categoria_id) VALUES
("Java Básico", 700.00, 40, "Carlos", 1),
("Java Avançado", 1000.00, 60, "Ana", 1),
("MySQL", 600.00, 30, "Pedro", 2),
("HTML e CSS", 500.00, 40, "Maria", 3),
("JavaScript", 800.00, 50, "João", 3),
("Photoshop", 650.00, 35, "Lucas", 4),
("Marketing Digital", 900.00, 45, "Paula", 5),
("Java Spring", 1200.00, 70, "Rafael", 1);

SELECT * FROM tb_cursos
WHERE valor > 500;

SELECT * FROM tb_cursos
WHERE valor BETWEEN 600 AND 1000;

SELECT * FROM tb_cursos
WHERE nome LIKE "%J%";

SELECT *
FROM tb_cursos
INNER JOIN tb_categorias
ON tb_cursos.categoria_id = tb_categorias.id;

SELECT *
FROM tb_cursos
INNER JOIN tb_categorias
ON tb_cursos.categoria_id = tb_categorias.id
WHERE tb_categorias.nome = "Java";