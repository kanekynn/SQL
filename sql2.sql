create table usuarios(
usuario_id serial primary key,
nombre varchar
);

create table productos (
producto_id serial primary key,
nombre varchar,
usuario_id_fk integer,
foreign key(usuario_id_fk)
references usuarios(usuario_id)
);


-- insertando datos
insert into usuarios(nombre)
values('jose'),('andres'),('james');

insert into productos(nombre,usuario_id_fk)
values ('computadora',1),('smartphone',2),('TV',1);

delete from usuarios where nombre = 'jose';

delete from productos where usuario_id_fk = 1;