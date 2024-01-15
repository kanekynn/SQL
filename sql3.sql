create table autores(
autor_id serial primary key,
nombre varchar(20) not null
);

create table direcciones(
direccion_id serial primary key,
direccion varchar not null,

autor_id_fk integer references autores(autor_id)
on delete cascade
);