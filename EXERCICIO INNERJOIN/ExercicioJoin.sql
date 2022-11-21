	DROP DATABASE db_generation_game_online;


CREATE DATABASE db_curso_da_minha_vida;

USE db_curso_da_minha_vida;

CREATE TABLE tb_cursos(
id bigint auto_increment,
categoria VARCHAR(255),
PRIMARY KEY (id));

INSERT INTO tb_cursos(categoria)
VALUES ("BackEnd");

INSERT INTO tb_cursos(categoria)
VALUES ("FrontEnd");

INSERT INTO tb_cursos(categoria)
VALUES ("FullStack");

INSERT INTO tb_cursos(categoria)
VALUES ("Mobile");

INSERT INTO tb_cursos(categoria)
VALUES ("Banco de Dados");

SELECT  * FROM tb_cursos;

CREATE TABLE tb_categorias(
id bigint AUTO_INCREMENT,
cursos varchar(255) NOT NULL,
preco decimal(9, 2),
categoria_id bigint, 
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_cursos(id)
);
INSERT INTO tb_categorias (cursos, preco, categoria_id)
VALUES ("Javascript", 1242.02, 3);

INSERT INTO tb_categorias (cursos, preco, categoria_id)
VALUES ("MySQL", 1290.00,5);

INSERT INTO tb_categorias (cursos, preco, categoria_id)
VALUES ("Java", 1173.99, 1);

INSERT INTO tb_categorias (cursos, preco, categoria_id)
VALUES ("HTML", 2198.99, 2);

INSERT INTO tb_categorias (cursos, preco, categoria_id)
VALUES ("Postman", 2100.00, 1);

INSERT INTO tb_categorias (cursos, preco, categoria_id)
VALUES ("CSS", 1458.09, 3);

INSERT INTO tb_categorias (cursos, preco, categoria_id)
VALUES ("Android", 3143.00,45);

INSERT INTO tb_categorias (cursos, preco, categoria_id)
VALUES ("Phyton", 2100.00, 1);


SELECT * FROM  tb_categorias;

SELECT  *  FROM tb_categorias WHERE preco <  500.00 ;


SELECT * FROM tb_categorias WHERE cursos LIKE 'J%';

SELECT * FROM tb_categorias  INNER JOIN tb_cursos ON tb_cursos.id = tb_categorias.categoria_id;