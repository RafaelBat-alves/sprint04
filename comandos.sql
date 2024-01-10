

--1) Criar tabela para armazenar vendas de produtos;
create database if not exists pedidos default character set utf8mb4 default COLLATE utf8mb4_unicode_ci;

use pedidos;

create table if not exists pedido(
id bigint not null auto_increment ,
produto varchar(255),
categoria varchar(255),
preco decimal(10,2) not null,
quantidade integer,
datas date,
cliente varchar(60),
primary key(id)


)default charset=utf8mb4;


--2) Inserir dados na tabela de pedidos;

INSERT INTO `pedidos`.`pedido` ( `categoria`, `produto`, `preco`, `quantidade`, `datas`, `cliente`) VALUES ('INFO','Notebook Samsung',3523.00,1,01/01/2022,ANA);
INSERT INTO `pedidos`.`pedido` ( `categoria`, `produto`, `preco`, `quantidade`, `datas`, `cliente`) VALUES ('moveis','sofa 3 lugares',2500.00,1,05/01/2022,ANA);
INSERT INTO `pedidos`.`pedido` ( `categoria`, `produto`, `preco`, `quantidade`, `datas`, `cliente`) VALUES ('LIVROS','Clean Architecture',102.90,2,08/01/2022,ANA);
INSERT INTO `pedidos`.`pedido` ( `categoria`, `produto`, `preco`, `quantidade`, `datas`, `cliente`) VALUES ('moveis','Mesa de jantar 6 lugares',3678.98,1,06/01/2022,ELI);
INSERT INTO `pedidos`.`pedido` ( `categoria`, `produto`, `preco`, `quantidade`, `datas`, `cliente`) VALUES ('CELULARES','iPhone 13 Pro',9176.00,6,13/01/2022,ANA);
INSERT INTO `pedidos`.`pedido` ( `categoria`, `produto`, `preco`, `quantidade`, `datas`, `cliente`) VALUES ('INFO',"Monitor Dell 27""",1889.00,3,04/01/2022,DANI);
INSERT INTO `pedidos`.`pedido` ( `categoria`, `produto`, `preco`, `quantidade`, `datas`, `cliente`) VALUES ('LIVROS','Implementing Domain-Driven Design',144.07,3,10/01/2022,GABI);
INSERT INTO `pedidos`.`pedido` ( `categoria`, `produto`, `preco`, `quantidade`, `datas`, `cliente`) VALUES ('AUTOMOTIVA','Jogo de pneus',1276.79,1,15/01/2022,BIA);
INSERT INTO `pedidos`.`pedido` ( `categoria`, `produto`, `preco`, `quantidade`, `datas`, `cliente`) VALUES ('LIVROS','Clean Code',95.17,1,09/01/2022,BIA);
INSERT INTO `pedidos`.`pedido` ( `categoria`, `produto`, `preco`, `quantidade`, `datas`, `cliente`) VALUES ('CELULARES','Galaxy S22 Ultra',8549.10,5,14/01/2022,DANI);
INSERT INTO `pedidos`.`pedido` ( `categoria`, `produto`, `preco`, `quantidade`, `datas`, `cliente`) VALUES ('INFO','Macbook Pro 16',31752.00,1,03/01/2022,CAIO);
INSERT INTO `pedidos`.`pedido` ( `categoria`, `produto`, `preco`, `quantidade`, `datas`, `cliente`) VALUES ('LIVROS','Refactoring Improving the Design of Existing Code',173.90,1,12/01/2022,DANI);
INSERT INTO `pedidos`.`pedido` ( `categoria`, `produto`, `preco`, `quantidade`, `datas`, `cliente`) VALUES ('moveis','Cama queen size',3100.00,2,07/01/2022,DANI);
INSERT INTO `pedidos`.`pedido` ( `categoria`, `produto`, `preco`, `quantidade`, `datas`, `cliente`) VALUES ('AUTOMOTIVA','Central multimidia',711.18,1,16/01/2022,CAIO);
INSERT INTO `pedidos`.`pedido` ( `categoria`, `produto`, `preco`, `quantidade`, `datas`, `cliente`) VALUES ('LIVROS','Building Microservices',300.28,2,11/01/2022,CAIO);
INSERT INTO `pedidos`.`pedido` ( `categoria`, `produto`, `preco`, `quantidade`, `datas`, `cliente`) VALUES ('INFO','Galaxy Tab S8',5939.10,4,02/01/2022,BIA);

--3) Corrigir categoria INFORMÁTICA
UPDATE pedido SET categoria='informatica' WHERE categoria='INFO';

--4) Relatório de todos os pedidos

SELECT  id,produto,preco from pedido where preco>=3000 and preco <=10000 ;
SELECT  quantidade,cliente from pedido;
SELECT  quantidade,cliente from pedido;

--5) Relatório de pedidos por categoria
SELECT  categoria from pedido where categoria ='CELULARES' ;

--6) Relatório de pedidos por preço
SELECT  id,produto,preco from pedido where preco>=3000 and preco <=10000 ;
--7) Remover pedidos
delete from pedido where id = 33;
delete from pedido where quantidade =1;
delete from pedido where quantidade =1;

delete from pedido where cliente ='bia';