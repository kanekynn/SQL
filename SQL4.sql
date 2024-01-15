create table if not exists usuario(
usuario_id serial primary key,
username varchar(20) not null,
email varchar(40) not null,
direccion varchar(60) not null
);

create table if not exists post(
post_id serial primary key,
titulo varchar(30) not null,
contenido text not null,
fecha_creacion date default current_date,

usuario_id_fk integer
);

--agregando fk
ALTER TABLE post ADD CONSTRAINT usuario_id_fk FOREIGN KEY (usuario_id_fk)
references usuario(usuario_id);

alter table usuario add column password varchar not null;

alter table post rename column contenido to contenido_post;

-----------------------------------------------------------------

create table if not exists comentarios(
comentario_id serial primary key,
contenido text not null,
num_reacciones integer not null,

usuario_id_fk integer references usuario(usuario_id)
on delete set null,

post_id_fk integer references post(post_id)

);

select*from usuario
select*from comentarios
delete from coenmtarios where usuario_id_fk = 43;
delete from comentarios where post_id_fk = 11;




create table if not exists post_categorias(

categoria_id_fk integer references categorias(categoria_id)
on delete set null,

post_id_fk integer references post(post_id)
on delete set null
);

create table if not exists categorias(
categoria_id serial primary key,
nombre varchar (20) not null,
descripcion varchar (30)not null
);