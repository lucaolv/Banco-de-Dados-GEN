CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
    id INT PRIMARY KEY,
    doce_sal VARCHAR(255),
    tamanho VARCHAR(255)
);

INSERT INTO tb_categorias (id, doce_sal, tamanho)
VALUES (1, 'Salgada', 'Família'),
       (2, 'Doce', 'Família'),
       (3, 'Salgada', 'Média'),
       (4, 'Doce', 'Média'),
       (5, 'Meio a meio', 'Família');

CREATE TABLE tb_pizzas (
    nome VARCHAR(255),
    borda VARCHAR(255),
    adicional VARCHAR(255),
    preco decimal not null,
    classe_id INT,
    FOREIGN KEY (classe_id) REFERENCES tb_categorias(id)
);
       
INSERT INTO tb_pizzas (nome, borda, adicional, preco, classe_id)
VALUES ('Frango Catupiry', 'Sem borda', 'Nenhum', 46.00, 1),
       ('Portuguesa', 'Catupiry', 'Cebola', 48.00, 1),
       ('Romeu e Julieta', 'Carupiry', 'Nenhum', 46.00, 2),
       ('Calabresa', 'Cheddar', 'Cebola', 37.00, 3),
       ('Brócolis', 'Cheddar', 'Queijo', 52.00, 1),
       ('Chocolate', 'Sem borda', 'Cheddar', 41.00, 4),
       ('Bahiana', 'Sem borda', 'Cebola', 47.00, 1),
       ('Mussarela e Marguerita', 'Catupiry', 'Nenhum', 44.00, 5);
       
SELECT * FROM tb_pizzas
where preco > 45;
       
SELECT nome FROM tb_pizzas
where preco between 50 and 100;

SELECT nome FROM tb_pizzas
where nome like '%M%';

SELECT * FROM tb_pizzas
INNER JOIN tb_categorias ON tb_pizzas.classe_id = tb_categorias.id;

SELECT p.*, c.doce_sal as pizzas_doces FROM tb_pizzas p
INNER JOIN tb_categorias c ON p.classe_id = c.id
WHERE c.doce_sal = 'Doce';