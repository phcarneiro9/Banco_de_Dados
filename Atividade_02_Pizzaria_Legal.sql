CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(100),
	tipo VARCHAR(100)
);

CREATE TABLE tb_pizzas (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(100),
	valor DECIMAL(10,2),
	tamanho VARCHAR(50),
	sabor VARCHAR(100),
	categoria_id BIGINT,
	FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nome, tipo) VALUES
("Tradicional", "Salgada"),
("Especial", "Salgada"),
("Doce", "Sobremesa"),
("Vegetariana", "Salgada"),
("Premium", "Especial");

INSERT INTO tb_pizzas (nome, valor, tamanho, sabor, categoria_id) VALUES
("Calabresa", 50.00, "Grande", "Calabresa", 1),
("Mussarela", 45.00, "Grande", "Queijo", 1),
("Frango", 60.00, "Grande", "Frango", 2),
("Marguerita", 55.00, "Média", "Tomate", 2),
("Chocolate", 65.00, "Grande", "Chocolate", 3),
("Morango", 70.00, "Grande", "Morango", 3),
("Vegetariana", 52.00, "Grande", "Legumes", 4),
("Portuguesa", 80.00, "Família", "Presunto", 5);

SELECT * FROM tb_pizzas
WHERE valor > 45;

SELECT * FROM tb_pizzas
WHERE valor BETWEEN 50 AND 100;

SELECT * FROM tb_pizzas
WHERE nome LIKE "%M%";

SELECT *
FROM tb_pizzas
INNER JOIN tb_categorias
ON tb_pizzas.categoria_id = tb_categorias.id;

SELECT *
FROM tb_pizzas
INNER JOIN tb_categorias
ON tb_pizzas.categoria_id = tb_categorias.id
WHERE tb_categorias.nome = "Doce";