CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(100),
	tipo VARCHAR(100)
);

CREATE TABLE tb_produtos (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(100),
	valor DECIMAL(10,2),
	quantidade INT,
	marca VARCHAR(100),
	categoria_id BIGINT,
	FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nome, tipo) VALUES
("Medicamentos", "Remédios"),
("Cosméticos", "Beleza"),
("Higiene", "Cuidados"),
("Vitaminas", "Suplementos"),
("Infantil", "Crianças");

INSERT INTO tb_produtos (nome, valor, quantidade, marca, categoria_id) VALUES
("Paracetamol", 10.00, 100, "EMS", 1),
("Creme Facial", 55.00, 50, "Nivea", 2),
("Shampoo", 25.00, 80, "Dove", 3),
("Vitamina C", 60.00, 40, "Sundown", 4),
("Fralda Infantil", 70.00, 30, "Pampers", 5),
("Colírio", 35.00, 20, "Genérico", 1),
("Condicionador", 45.00, 60, "Dove", 3),
("Creatina", 90.00, 25, "Max", 4);

SELECT * FROM tb_produtos
WHERE valor > 50;

SELECT * FROM tb_produtos
WHERE valor BETWEEN 5 AND 60;

SELECT * FROM tb_produtos
WHERE nome LIKE "%C%";

SELECT *
FROM tb_produtos
INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id;

SELECT *
FROM tb_produtos
INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id
WHERE tb_categorias.nome = "Cosméticos";