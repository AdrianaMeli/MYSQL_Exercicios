
CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias(
id bigint auto_increment,
categoria VARCHAR(255),
PRIMARY KEY (id));

INSERT INTO tb_categorias(categoria)
VALUES ("Antibioticos");

INSERT INTO tb_categorias(categoria)
VALUES ("Calmantes");

INSERT INTO tb_categorias(categoria)
VALUES ("Dermatologicos");

INSERT INTO tb_categorias(categoria)
VALUES ("Antiinflamatorios");

INSERT INTO tb_categorias(categoria)
VALUES ("Anti Termico");

SELECT  * FROM tb_categorias;

CREATE TABLE tb_produtos(
id bigint AUTO_INCREMENT,
produtos varchar(255) NOT NULL,
preco decimal(9, 2),
categoria_id bigint, 
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);
INSERT INTO tb_produtos (produtos, preco, categoria_id)
VALUES ("Alprazolan", 50.99, 2);

INSERT INTO tb_produtos (produtos, preco, categoria_id)
VALUES ("Novalgina", 19.00,5);

INSERT INTO tb_produtos (produtos, preco, categoria_id)
VALUES ("Amoxilina", 33.99, 1);

INSERT INTO tb_produtos (produtos, preco, categoria_id)
VALUES ("Ebastel", 28.99, 3);

INSERT INTO tb_produtos (produtos, preco, categoria_id)
VALUES ("Rivoril", 18.00, 2);

INSERT INTO tb_produtos (produtos, preco, categoria_id)
VALUES ("Flanax", 14.58, 4);

INSERT INTO tb_produtos (produtos, preco, categoria_id)
VALUES ("Tylenol", 31.43, 5);

INSERT INTO tb_produtos (produtos, preco, categoria_id)
VALUES ("Peroxican", 70.00, 1);


SELECT * FROM  tb_produtos;

SELECT  *  FROM tb_produtos WHERE preco > 50.00 ;

SELECT  *  FROM tb_produtos WHERE preco BETWEEN 5.00  AND 60.00;


SELECT * FROM tb_produtos WHERE produtos LIKE 'C%';

SELECT * FROM tb_categorias  INNER JOIN tb_produtos ON tb_categorias.id = tb_produtos.categoria_id;


SELECT * FROM tb_categorias  INNER JOIN tb_produtos ON tb_categorias.id = tb_produtos.categoria_id
WHERE tb_categorias.categoria = "Calmantes"
ORDER BY tb_categorias.categoria;