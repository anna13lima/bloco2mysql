CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categoria(
id bigint auto_increment,
nome varchar(255),
idade int,
formacao  varchar(255),

primary key (id)
);

select * from tb_categoria;

CREATE TABLE tb_pizza(
id bigint auto_increment,
sabor varchar(255),
preco int,
frete boolean,
borda varchar(255),
massa varchar(255),
categoria_id bigint,

primary key(id),
foreign key (categoria_id) references tb_categoria(id)
);

INSERT INTO tb_categoria(nome,idade,formacao)
VALUES ("JOÃO",25,"cozinheiro");
INSERT INTO tb_categoria(nome,idade,formacao)
VALUES ("MARIA",28,"cozinheira");
INSERT INTO tb_categoria(nome,idade,formacao)
VALUES ("PEDRO",29,"cozinheiro");
INSERT INTO tb_categoria(nome,idade,formacao)
VALUES ("JULIANA",22,"cozinheira");
INSERT INTO tb_categoria(nome,idade,formacao)
VALUES ("JESSICA",25,"cozinheira");

select * from tb_pizza;
select * from tb_categoria;

INSERT INTO tb_pizza(sabor,preco,frete,borda,categoria_id)
VALUES ("calabresa",50,true,"catupiry",1);
INSERT INTO tb_pizza(sabor,preco,frete,borda,categoria_id)
VALUES ("mussarela",30,true,"cheddar",2);
INSERT INTO tb_pizza(sabor,preco,frete,borda,categoria_id)
VALUES ("americana",65,true,"catupiry",3);
INSERT INTO tb_pizza(sabor,preco,frete,borda,categoria_id)
VALUES ("caipira",55,true,"cheddar",4);
INSERT INTO tb_pizza(sabor,preco,frete,borda,categoria_id)
VALUES ("palmito",29,true,"catupiry",5);
INSERT INTO tb_pizza(sabor,preco,frete,borda,categoria_id)
VALUES ("toscana",65,true,"catupiry",6);
INSERT INTO tb_pizza(sabor,preco,frete,borda,categoria_id)
VALUES ("pepperoni",70,true,"catupiry",5);
INSERT INTO tb_pizza(sabor,preco,frete,borda,categoria_id)
VALUES ("vegetariana",50,true,"catupiry",3);

SELECT * FROM tb_pizza WHERE preco > 45;
SELECT * FROM tb_pizza WHERE preco >= 29 AND defesa <=60;

SELECT * FROM tb_pizza WHERE nome LIKE "%c%";



SELECT * FROM tb_pizza
INNER JOIN tb_categoria on tb_pizza.categoria_id = tb_categoria.id
WHERE categoria_id = 3;




