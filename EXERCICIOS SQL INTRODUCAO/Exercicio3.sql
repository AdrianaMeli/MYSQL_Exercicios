CREATE DATABASE db_EscolaML;

USE db_EscolaMl;


CREATE TABLE tb_Estudantes (
idestudante BIGINT  AUTO_INCREMENT,
estudante VARCHAR(255) NOT NULL,
materia VARCHAR(255) NOT NULL,
curso VARCHAR(255) NOT NULL,
mensalidade DECIMAL(6,2),
PRIMARY KEY (idestudante));



SELECT * FROM tb_Estudantes;

INSERT INTO tb_Estudantes(estudante, materia, curso, notas)
VALUES ("Adriana", "HTML", "Desenvolvedor backend",5.5);

INSERT INTO tb_Estudantes(estudante, materia, curso, notas)
VALUES ("Camila", "CSS", "Desenvolvedor FrontEnd",8.5);

INSERT INTO tb_Estudantes(estudante, materia, curso, notas)
VALUES ("Vania", "Java", "Desenvolvedor FullStack",10.0);

INSERT INTO tb_Estudantes(estudante, materia, curso, notas)
VALUES ("Brenda", "Spring", "Desenvolvedor backend",9.5);

INSERT INTO tb_Estudantes(estudante, materia, curso, notas)
VALUES ("Larissa", "Javascript", "Desenvolvedor FullStack",6.5);

DELETE  FROM tb_Estudantes WHERE idestudante = 5 ;



ALTER TABLE tb_Estudantes ADD notas DECIMAL(6,2);

SELECT * FROM tb_Estudantes WHERE notas > 7.00;

SELECT * FROM tb_Estudantes WHERE notas < 7.00;


UPDATE tb_Estudantes SET notas = 9.00 WHERE idestudante = 1;

DELETE  FROM tb_Estudantes WHERE idestudante = 5 ;

SELECT * FROM tb_Estudantes;
