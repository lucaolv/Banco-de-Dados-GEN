CREATE DATABASE rh_empresa;

CREATE TABLE colaboradores(
	id bigint auto_increment,
	nome varchar(255) not null,
	endereco varchar(255) not null,
	idade int,
	salario decimal not null,
	PRIMARY KEY (id)
);

INSERT INTO colaboradores(nome, endereco, idade, salario) 
values ("Maria", "Rua Pinheiros", 34, 1800.00);
INSERT INTO colaboradores(nome, endereco, idade, salario) 
values ("Jonas", "Rua Interlagos", 45, 3100.00);
INSERT INTO colaboradores(nome, endereco, idade, salario) 
values ("Pedro", "Rua Diogo Moreira", 23, 1500.00);
INSERT INTO colaboradores(nome, endereco, idade, salario) 
values ("Henrique", "Rua Quatro", 19, 1200.00);
INSERT INTO colaboradores(nome, endereco, idade, salario) 
values ("Camila", "Rua Cachoeira Cairu", 25, 3500.00);

select * from colaboradores;

select * from colaboradores
where salario > 2000;

select * from colaboradores
where salario < 2000;

update colaboradores set salario = 5000.00
where id = 5;

--Crie um banco de dados para um serviço de RH de uma empresa, onde o sistema trabalhará com as informações dos colaboradores desta empresa. 
--Crie uma tabela de colaboradores e determine 5 atributos relevantes dos colaboradores para se trabalhar com o serviço deste RH.
--Insira nesta tabela no mínimo 5 dados (registros).
--Faça um SELECT que retorne todes os colaboradores com o salário maior do que 2000.
--Faça um SELECT que retorne todes os colaboradores com o salário menor do que 2000.
--Ao término atualize um registro desta tabela através de uma query de atualização.
--Salve todas as queries para cada um dos requisitos do exercício em um único script (arquivo .SQL) e coloque no seu Github pessoal, no repositório que você criou sobre Banco de dados.
