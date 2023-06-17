CREATE DATABASE registroescolar;

USE registroescolar;

CREATE TABLE estudantes(
	id bigint auto_increment,
	aluno varchar(255)not null,
	materia varchar(255) not null,
	RA int,
	nota decimal not null,
	ausencias int,
	primary key (id)
);


INSERT INTO estudantes(aluno, materia, RA, nota, ausencias)
VALUES("Lucas", "Matemática", 123456, 10.0, 18);

INSERT INTO estudantes(aluno, materia, RA, nota, ausencias)
VALUES("Breno", "Geografia", 136346, 8.0, 24);

INSERT INTO estudantes(aluno, materia, RA, nota, ausencias)
VALUES("Victor", "Português", 968403, 9.0, 12);

INSERT INTO estudantes(aluno, materia, RA, nota, ausencias)
VALUES("Júlia", "Matemática", 623537, 4.0, 28);

INSERT INTO estudantes(aluno, materia, RA, nota, ausencias)
VALUES("Kaio", "Educação física", 123456, 6.0, 25);

INSERT INTO estudantes(aluno, materia, RA, nota, ausencias)
VALUES("Rayane", "Biologia", 3089512, 8.0, 7);

INSERT INTO estudantes(aluno, materia, RA, nota, ausencias)
VALUES("Róger", "Sociologia", 140935, 10.0, 16);

INSERT INTO estudantes(aluno, materia, RA, nota, ausencias)
VALUES("Vinicius", "História", 653421, 7.0, 20);

SELECT * FROM estudantes;

SELECT aluno FROM estudantes WHERE nota > 7.0;
 
SELECT aluno FROM estudantes WHERE nota < 7.0;
 
UPDATE estudantes SET nota = 6.0 WHERE id = 4;

--Crie um banco de dados para um registro de uma escola, onde o sistema trabalhará com as informações dos estudantes deste registro dessa escola. 
--Crie uma tabela estudantes e utilizando a habilidade de abstração e determine 5 atributos relevantes dos estudantes para se trabalhar com o serviço dessa escola.
--Insira nesta tabela no mínimo 8 dados (registros).
--Faça um SELECT que retorne todes o/a(s) estudantes com a nota maior do que 7.0.
--Faça um SELECT que retorne todes o/a(s) estudantes com a nota menor do que 7.0.
--Ao término atualize um registro desta tabela através de uma query de atualização.
--Salve todas as queries para cada um dos requisitos do exercício em um único script (arquivo .SQL) e coloque no seu Github pessoal, no repositório que você criou sobre Banco de dados.
