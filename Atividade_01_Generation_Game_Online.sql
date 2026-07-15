CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(100),
	tipo VARCHAR(100)
);

CREATE TABLE tb_personagens (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(100),
	ataque INT,
	defesa INT,
	nivel INT,
	classe_id BIGINT,
	FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
);

INSERT INTO tb_classes (nome, tipo) VALUES
("Guerreiro", "Corpo a Corpo"),
("Arqueiro", "Distância"),
("Mago", "Magia"),
("Assassino", "Velocidade"),
("Paladino", "Defesa");

INSERT INTO tb_personagens (nome, ataque, defesa, nivel, classe_id) VALUES
("Arthur", 2500, 1800, 30, 1),
("Legolas", 2200, 1500, 28, 2),
("Merlin", 3000, 1000, 35, 3),
("Carlos", 1800, 1200, 22, 4),
("Caio", 2600, 2200, 32, 1),
("Camila", 1700, 1500, 20, 5),
("Cesar", 2100, 1700, 26, 2),
("Maria", 3200, 900, 40, 3);

SELECT * FROM tb_personagens
WHERE ataque > 2000;

SELECT * FROM tb_personagens
WHERE defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens
WHERE nome LIKE "%C%";

SELECT *
FROM tb_personagens
INNER JOIN tb_classes
ON tb_personagens.classe_id = tb_classes.id;

SELECT *
FROM tb_personagens
INNER JOIN tb_classes
ON tb_personagens.classe_id = tb_classes.id
WHERE tb_classes.nome = "Arqueiro";