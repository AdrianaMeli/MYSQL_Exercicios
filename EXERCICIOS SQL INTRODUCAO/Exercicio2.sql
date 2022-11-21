CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos(
id bigint AUTO_INCREMENT,
produtos VARCHAR(255) NOT NULL,
estilo VARCHAR(255) NOT NULL,
quantidade DECIMAL NOT NULL,
preco Decimal(6,2),
PRIMARY KEY (id));


INSERT INTO tb_produtos(produtos, estilo, quantidade, preco)
VALUES ("Saia", "verão",32,25.00);

INSERT INTO tb_produtos(produtos, estilo, quantidade, preco)
VALUES ("bermuda", "verão",50,35.00);

INSERT INTO tb_produtos(produtos, estilo, quantidade, preco)
VALUES ("calça sarja", "inverno",90,105.00);

INSERT INTO tb_produtos(produtos, estilo, quantidade, preco)
VALUES ("vestido manga longa", "inverno",15,83.99);

INSERT INTO tb_produtos(produtos, estilo, quantidade, preco)
VALUES ("blusa manga balone", "outuno",17,56.85);

SELECT * FROM tb_produtos;



SELECT * FROM tb_produtos WHERE preco > 500.00;

SELECT * FROM tb_produtos WHERE preco < 500.00;

UPDATE tb_produtos SET preco = 557.00 WHERE id = 5;







