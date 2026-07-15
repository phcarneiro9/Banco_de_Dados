CREATE DATABASE db_construindo_vidas;

USE db_construindo_vidas;

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
("Hidráulica", "Canos"),
("Elétrica", "Fios"),
("Pintura", "Tintas"),
("Ferramentas", "Manutenção"),
("Construção", "Materiais");

INSERT INTO tb_produtos (nome, valor, quantidade, marca, categoria_id) VALUES
("Cano PVC", 120.00, 50, "Tigre", 1),
("Torneira", 80.00, 30, "Deca", 1),
("Fio Elétrico", 150.00, 40, "Pirelli", 2),
("Tinta Branca", 100.00, 20, "Coral", 3),
("Martelo", 70.00, 15, "Tramontina", 4),
("Cimento", 50.00, 100, "Votorantim", 5),
("Chave de Fenda", 90.00, 25, "Tramontina", 4),
("Cerâmica", 200.00, 60, "Portobello", 5);

SELECT * FROM tb_produtos
WHERE valor > 100;

SELECT * FROM tb_produtos
WHERE valor BETWEEN 70 AND 150;

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
WHERE tb_categorias.nome = "Hidráulica";