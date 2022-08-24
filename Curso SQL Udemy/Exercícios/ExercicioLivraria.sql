/*
O nosso cliente solicitou uma tabela para armazenar os livros que são comercializados pela empresa. A solicitação é somente para livros e não há a necessidade de realizar busca em outras tabelas. Hoje há um funcionário de vendas que tem uma tabela do Excel para guardar esses registros, mas as buscas estão ficando complexas. Decidiu-se então criar um banco de dados separado para esse funcionário.
Após a criação da tabela, deveremos entregar algumas queries prontas para que sejam enviadas para o programador. As queries são as seguintes:
1 – Trazer todos os dados.
2 – Trazer o nome do livro e o nome da editora
3 – Trazer o nome do livro e a UF dos livros publicados por autores do sexo masculino.
4 - Trazer o nome do livro e o número de páginas dos livros publicados por autores do sexo feminino.
5 – Trazer os valores dos livros das editoras de São Paulo.
6 – Trazer os dados dos autores do sexo masculino que tiveram livros publicados por São Paulo ou Rio de Janeiro (Questão Desafio).


*/

CREATE DATABASE TESTE;

USE TESTE;

STATUS;

CREATE TABLE LIVROS (
	NOME_DO_LIVRO VARCHAR(50),
	NOME_DO_AUTOR VARCHAR(50),
	SEXO_DO_AUTOR VARCHAR(9),
	NUMERO_DE_PAGINAS VARCHAR(30),
	NOME_DA_EDITORA VARCHAR(50),
	VALOR_DO_LIVRO FLOAT(10,2),
	UF CHAR(2),
	ANO CHAR(4)

);

DESC LIVROS;

INSERT INTO LIVROS VALUES('Cavaleiro Real','Ana Claudia','Feminino','465','Atlas',49.9,'RJ','2009');
INSERT INTO LIVROS VALUES('SQL para leigos','João Nunes','Masculino','450','Addison',98,'SP','2018');
INSERT INTO LIVROS VALUES('Receitas Caseiras','Celia Tavares','Feminino','210','Atlas',45,'RJ','2008');
INSERT INTO LIVROS VALUES('Pessoas Efetivas','Eduardo Santos','Masculino','390','Beta',78.99,'RJ','2018');
INSERT INTO LIVROS VALUES('Habitos Saudáveis','Eduardo Santos','Masculino','630','Beta',150.98,'RJ','2019');
INSERT INTO LIVROS VALUES('A Casa Marrom','Hermes Macedo','Masculino','250','Bubba',60,'MG','2016');
INSERT INTO LIVROS VALUES('Estacio Querido','Geraldo Francisco','Masculino','310','Insignia',100,'ES','2015');
INSERT INTO LIVROS VALUES('Pra sempre amigas','Leda Silva','Feminino','510','Insignia',78.98,'ES','2011');
INSERT INTO LIVROS VALUES('Copas Inesqueciveis','Marco Alcantara','Masculino','200','Larson',130.98,'RS','2018');
INSERT INTO LIVROS VALUES('O poder da mente','Clara Mafra','Feminino','120','Continental',56.58,'SP','2017');

SELECT * FROM LIVROS;

SELECT NOME_DO_LIVRO, NOME_DA_EDITORA FROM LIVROS;

SELECT NOME_DO_LIVRO, UF FROM LIVROS
WHERE SEXO_DO_AUTOR = 'Masculino';

SELECT NOME_DO_LIVRO, NUMERO_DE_PAGINAS FROM LIVROS
WHERE SEXO_DO_AUTOR = 'Feminino';

SELECT VALOR_DO_LIVRO FROM LIVROS
WHERE UF = 'SP';

SELECT NOME_DO_AUTOR, SEXO_DO_AUTOR FROM LIVROS
WHERE SEXO_DO_AUTOR = 'Masculino' AND UF = 'SP' OR SEXO_DO_AUTOR = 'Masculino' AND UF = 'RJ';

SELECT NOME_DO_AUTOR, SEXO_DO_AUTOR FROM LIVROS
WHERE SEXO_DO_AUTOR = 'Masculino' AND (UF = 'SP' OR UF = 'RJ');
