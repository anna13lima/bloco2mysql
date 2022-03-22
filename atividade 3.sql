CREATE DATABASE db_farmacia_do_bem;

USE db_farmacia_do_bem;

CREATE TABLE tb_categoria(
id bigint auto_increment,
nome varchar(255),
genero varchar(255),
tipo varchar(255),

primary key (id)
);

SELECT * from tb_categoria;

create table tb_produto(
id bigint auto_increment,
nome varchar(255),
preco int,
frete decimal(8,2),
cosmetico boolean,
remedio boolean,
categoria_id bigint,

primary key(id),
foreign key (categoria_id) references tb_categoria(id)
);

select * from tb_produto;

INSERT INTO tb_categoria(nome,genero,tipo)
VALUES ("perfumaria","feminino","cosmetico");
INSERT INTO tb_categoria(nome,genero,tipo)
VALUES ("remedio","todos","paracetamol");
INSERT INTO tb_categoria(nome,genero,tipo)
VALUES ("perfumaria","masculino","cosmetico");
INSERT INTO tb_categoria(nome,genero,tipo)
VALUES ("remedio","feminino","anticoncepcional");
INSERT INTO tb_categoria(nome,genero,tipo)
VALUES ("remedio","masculido","vitamina");


INSERT INTO tb_produto(nome,preco,frete,cosmetico,categoria_id)
VALUES ("shampoo",50,3,true,2);
INSERT INTO tb_produto(nome,preco,frete,cosmetico,categoria_id)
VALUES ("hidratante",65,2,true,3);
INSERT INTO tb_produto(nome,preco,frete,cosmetico,categoria_id)
VALUES ("sabonete",29,4,true,4);
INSERT INTO tb_produto(nome,preco,frete,cosmetico,categoria_id)
VALUES ("perfume",70,5,true,5);
INSERT INTO tb_produto(nome,preco,categoria_id,cosmetico,categoria_id)
VALUES ("dorflex",10,3,false,1);
INSERT INTO tb_produto(nome,preco,categoria_id,cosmetico,categoria_id)
VALUES ("neusadina",5,1,false,2);
INSERT INTO tb_produto(nome,preco,categoria_id,cosmeticocategoria_id)
VALUES ("dipirona",3,3,false,4);
INSERT INTO tb_produto(nome,preco,categoria_id,cosmetico,categoria_id)
VALUES ("doril",50,3,false,3);

SELECT * FROM tb_produtos WHERE preco > 50;
SELECT * FROM tb_produtos WHERE preco >= 3 AND defesa <=60;

SELECT * FROM tb_produtos WHERE nome LIKE "%b%";

SELECT * FROM tb_pizza
INNER JOIN tb_categoria on tb_produto.categoria_id = tb_categoria.id
WHERE categoria_id = 2;
