CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes (
    id INT PRIMARY KEY,
    posicao VARCHAR(255),
    descricao VARCHAR(255)
);

INSERT INTO tb_classes (id, posicao, descricao)
VALUES (1, 'Lutador', 'Personagem especializado em combate corpo a corpo'),
       (2, 'Mago', 'Personagem especializado em magias e feitiços'),
       (3, 'Atirador', 'Personagem especializado em ataques à distância'),
       (4, 'Assassino', 'Personagem especializado em furtividade e habilidades furtivas'),
       (5, 'Suporte', 'Personagem especializado em cura e suporte aos aliados');

CREATE TABLE tb_personagens (
    nome VARCHAR(255),
    poder_ataque INT,
    poder_defesa INT,
    classe_id INT,
    FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
);
       
INSERT INTO tb_personagens (nome, poder_ataque, poder_defesa, classe_id)
VALUES ('Zed', 2100, 1500, 4),
       ('Lucian', 2400, 1120, 3),
       ('Morgana', 1560, 1550, 5),
       ('Talon', 2140, 470, 4),
       ('Darius', 1900, 3000, 1),
       ('Veigar', 3200, 1360, 2),
       ('Nami', 900, 880, 5),
       ('Malzahar', 1700, 2900, 2);
       
SELECT * FROM tb_personagens
where poder_ataque > 2000;
       
SELECT nome FROM tb_personagens
where poder_defesa between 1000 and 2000;

SELECT nome FROM tb_personagens
where nome like '%C%';

SELECT * FROM tb_personagens
INNER JOIN tb_classes ON tb_personagens.classe_id = tb_classes.id;

SELECT p.*, c.posicao FROM tb_personagens p
INNER JOIN tb_classes c ON p.classe_id = c.id
WHERE c.posicao = 'Mago';