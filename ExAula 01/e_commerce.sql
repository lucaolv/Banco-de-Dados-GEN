CREATE DATABASE e_commerce;

USE e_commerce;

CREATE TABLE sneakers(
	id bigint auto_increment,
	marca varchar(255) not null,
    modelo varchar(255) not null,
    unissex varchar(255) not null,
    preco decimal not null,
    tamanho bigint,
    primary key (id)
);

INSERT INTO sneakers(marca, modelo, unissex, preco, tamanho)
VALUES("Nike", "Air Force 1", "MASC", 650.00, 42);

INSERT INTO sneakers(marca, modelo, unissex, preco, tamanho)
VALUES("New Balance", "996", "MASC", 550.00, 41);

INSERT INTO sneakers(marca, modelo, unissex, preco, tamanho)
VALUES("Vans", "OLD SKOOL", "FEM", 400.00, 35);

INSERT INTO sneakers(marca, modelo, unissex, preco, tamanho)
VALUES("Converse", "All Star", "UNISSEX", 250.00, 38);

INSERT INTO sneakers(marca, modelo, unissex, preco, tamanho)
VALUES("Puma", "Smash V3", "UNISSEX", 300.00, 40);

INSERT INTO sneakers(marca, modelo, unissex, preco, tamanho)
VALUES("Adidas", "NMD_R1", "FEM", 499.99, 36);

INSERT INTO sneakers(marca, modelo, unissex, preco, tamanho)
VALUES("Air Jordan", "Air Jordan 3", "MASC", 1899.99, 41);

INSERT INTO sneakers(marca, modelo, unissex, preco, tamanho)
VALUES("Nike", "Tech Hera", "FEM", 799.99, 38);

SELECT * FROM sneakers;

SELECT * FROM sneakers
WHERE preco > 500;

SELECT * FROM sneakers
WHERE preco < 500;

UPDATE sneakers SET preco = 400.00
where id = 6;

--Crie um banco de dados para um e-commerce, onde o sistema trabalhará com as informações dos produtos deste e-commerce. 
--Crie uma tabela de produtos e determine 5 atributos relevantes dos produtos para se trabalhar com o serviço deste e-commerce.
--Insira nesta tabela no mínimo 8 dados (registros).
--Faça um SELECT que retorne todes os produtos com o valor maior do que 500.
--Faça um SELECT que retorne todes os produtos com o valor menor do que 500.
--Ao término atualize um registro desta tabela através de uma query de atualização.
--Salve todas as queries para cada um dos requisitos do exercício em um único script (arquivo .SQL) e coloque no seu Github pessoal, no repositório que você criou sobre Banco de dados.
