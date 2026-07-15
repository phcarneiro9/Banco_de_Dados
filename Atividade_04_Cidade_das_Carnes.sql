CREATE DATABASE db_cidade_das_carnes;

USE db_cidade_das_carnes;

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
	peso VARCHAR(50),
	categoria_id BIGINT,
	FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nome, tipo) VALUES
("Carnes", "Bovina"),
("Aves", "Frango"),
("Suínos", "Porco"),
("Frios", "Embutidos"),
("Vegetais", "Hortifruti");

INSERT INTO tb_produtos (nome, valor, quantidade, peso, categoria_id) VALUES
("Carne Bovina", 80.00, 20, "1kg", 1),
("Frango", 25.00, 30, "1kg", 2),
("Linguiça", 35.00, 40, "1kg", 3),
("Presunto", 55.00, 15, "500g", 4),
("Cenoura", 8.00, 50, "1kg", 5),
("Contra Filé", 120.00, 10, "1kg", 1),
("Costela", 90.00, 12, "1kg", 1),
("Coxa de Frango", 60.00, 25, "1kg", 2);

SELECT * FROM tb_produtos
WHERE valor > 50;

SELECT * FROM tb_produtos
WHERE valor BETWEEN 50 AND 150;

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
WHERE tb_categorias.nome = "Aves";