
CREATE DATABASE db_cidade_das_carnes;

USE db_cidade_das_carnes;

CREATE TABLE tb_categorias(
id bigint auto_increment,
categoria VARCHAR(255),
PRIMARY KEY (id));

INSERT INTO tb_categorias(categoria)
VALUES ("Carnes");

INSERT INTO tb_categorias(categoria)
VALUES ("Aves");

INSERT INTO tb_categorias(categoria)
VALUES ("Peixe");

INSERT INTO tb_categorias(categoria)
VALUES ("Frutas");

INSERT INTO tb_categorias(categoria)
VALUES ("Verduras");

SELECT  * FROM tb_categorias;

CREATE TABLE tb_produtos(
id bigint AUTO_INCREMENT,
produto varchar(255) NOT NULL,
preco decimal(9, 2),
categoria_id bigint, 
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);
INSERT INTO tb_produtos (produto, preco, categoria_id)
VALUES ("ACEM", 50.01, 1);

INSERT INTO tb_produtos (produto, preco, categoria_id)
VALUES ("ALFACE", 12.00,5);

INSERT INTO tb_produtos (produto, preco, categoria_id)
VALUES ("TILAPIA", 117.99, 3);

INSERT INTO tb_produtos (produto, preco, categoria_id)
VALUES ("MORANGO", 28.99, 4);

INSERT INTO tb_produtos (produto, preco, categoria_id)
VALUES ("CONTRA FILE", 100.00, 1);

INSERT INTO tb_produtos (produto, preco, categoria_id)
VALUES ("PEITO DE FRANGO", 48.09, 2);

INSERT INTO tb_produtos (produto, preco, categoria_id)
VALUES ("BANANA", 15.00,4);

INSERT INTO tb_produtos (produto, preco, categoria_id)
VALUES ("PICANHA", 200.00, 1);


SELECT * FROM  tb_produtos;

SELECT  *  FROM tb_produtos WHERE preco >  50.00 ;

SELECT  *  FROM tb_produtos WHERE preco BETWEEN 50.00 AND 150.00 ;


SELECT * FROM tb_produtos WHERE produto LIKE 'C%';

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_categorias.id = tb_produtos.categoria_id;