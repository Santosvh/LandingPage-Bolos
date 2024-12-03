create table TB_usuarios(
ID_USUARIO int auto_increment primary key
NOME varchar(255) not null,
Idade int not null,
CPF varchar(11) unique not null,
Genero varchar (15),
Email varchar (100) unique not null,
Data_de_nascimento date not null,
Telefone varchar(15),
Senha varchar(255),
data_registro timestamp default current_timestamp
);
create table TB_produtos (
id_produto int auto_increment primary key
nome_produto varchar(100) not null
descricao text,
cod_barra decimal,
preco decimal (10)
estoque int not null
 categoria_id int 
 foreign key (categoria_id) references tb_categoria(categoria_id));
 create table TB_categorias (
 categoria_id int auto_increment primary key
 nome_categoria varchar(50));
 create table detalhes_pedido(
 id_detalhes int auto_increment primary key,
 id_pedido int not null,
 id_produto int not null,
quantidade int not null,
preco_unitario decimal (10, 2) not null
foreign key (id_pedidos) references tb_pedidos(tb_pedidos),
foreign key (id_produtos) references tb_produtos(tb_produtos),
 );
 create table tb_pedidos (
 pedidos_id int auto_increment primary key 
 usuario_id int,
 data_pedido timestamp default current_timestamp
 status_pedidos varchar(50) not null,
 foreign  key reference tb_usuario(id_usuario)
 );
 