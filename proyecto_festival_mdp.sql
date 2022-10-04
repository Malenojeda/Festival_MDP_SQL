-- Creacion base de datos
create database proyecto_festival_mdp;
Use proyecto_festival_mdp;

-- Creacion de las entidades
-- De las que no tienen relacion a las que tienen relacion

create table genero(
ID_genero int not null primary key auto_increment,
genero varchar(20) not null
);

create table pais(
ID_pais int not null primary key auto_increment,
pais varchar(15) not null
);

create table terna(
ID_terna int not null primary key auto_increment,
terna varchar(15) not null
);

create table pelicula(
ID_pelicula int not null primary key auto_increment,
Nombre varchar(30) not null,
Duracion int not null,
Año datetime not null,
ID_genero int not null,
foreign key (ID_genero) references genero(ID_genero),
ID_pais int not null,
foreign key (ID_pais) references pais(ID_pais)
);

create table nominaciones(
ID_nominacion int not null primary key auto_increment,
ID_pelicula int not null,
foreign key (ID_pelicula) references pelicula(ID_pelicula),
ID_terna int not null,
foreign key (ID_terna) references terna(ID_terna)
);

create table actor_actriz(
ID_actor_actriz int not null primary key auto_increment,
nombre_apellido varchar(30) not null,
ID_pelicula int not null,
foreign key (ID_pelicula) references pelicula(ID_pelicula),
ID_pais int not null,
foreign key (ID_pais) references pais(ID_pais)
);

create table director_directora(
ID_director_directora int not null primary key auto_increment,
nombre_apellido varchar(30) not null,
ID_pelicula int not null,
foreign key (ID_pelicula) references pelicula(ID_pelicula),
ID_pais int not null,
foreign key (ID_pais) references pais(ID_pais)
);