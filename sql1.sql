create table if not exists profesores(
profesor_id serial primary key,
nombre varchar(20) not null,
apellido varchar(20) not null,
email varchar(70) not null unique
);

create table if not exists cursos(
	cursos_id serial primary key,
	nombre varchar (20) not null,

	profesor_id_fk integer,
	-- constraint profesor_fk
	foreign key (profesor_id_fk) references profesores(profesor_id)
	on delete set null  --cuando no haya profesor quede en null y no se elimina
);

insert into profesores(nombre,apellido,email)
values('jose','vergara','gvergara@email.com')

insert into profesores(nombre,apellido,email)
values('Marco','Sanchez','Msancheza@email.com');

insert into profesores(nombre,apellido,email)
values('Mariana','segovia','msegovia@gmail.com');

insert into profesores(nombre,apellido,email)
values('jorge','huamani','jhuamani@hotmail.com');

insert into cursos(nombre,profesor_id_fk)
values('programacion',1),

insert into cursos(nombre,profesor_id_fk)
values('algoritmo',2),('fisica',1),('quimica',2);

select*from profesores;
select*from cursos;

delete from profesores where profesor_id = 1;