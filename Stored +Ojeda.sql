-- Creacion base de datos
create database proyecto_festival_mdq;
Use proyecto_festival_mdq;

-- Creacion de las entidades
-- De las que no tienen relacion a las que tienen relacion

create table competencias(
ID_competencias int not null primary key auto_increment,
competencia varchar(50) not null
);

create table pais(
ID_pais int not null primary key auto_increment,
pais varchar(15) not null
);

create table pelicula(
ID_pelicula int not null primary key auto_increment,
Nombre varchar(50) not null,
Duracion varchar(50) not null,
Año int not null,
ID_competencias int not null,
foreign key (ID_competencias) references competencias (ID_competencias),
ID_pais int not null,
foreign key (ID_pais) references pais(ID_pais)
);

create table director_directora(
ID_director_directora int not null primary key auto_increment,
nombre_apellido varchar(50) not null,
ID_pelicula int not null,
foreign key (ID_pelicula) references pelicula(ID_pelicula)
);

create table jurados(
ID_jurados int not null primary key auto_increment,
nombre_apellido varchar(30) not null,
ID_competencias int not null,
foreign key (ID_competencias) references competencias(ID_competencias)
);


-- Insercion de datos
-- Pais
INSERT INTO pais (`ID_pais`,`pais`) VALUES (1,'Francia');
INSERT INTO pais (`ID_pais`,`pais`) VALUES (2,'Argentina');
INSERT INTO pais (`ID_pais`,`pais`) VALUES (3,'Estados Unidos');
INSERT INTO pais (`ID_pais`,`pais`) VALUES (4,'EspaÃ±a');
INSERT INTO pais (`ID_pais`,`pais`) VALUES (5,'Iran');
INSERT INTO pais (`ID_pais`,`pais`) VALUES (6,'Corea del Sur');
INSERT INTO pais (`ID_pais`,`pais`) VALUES (7,'Italia');
INSERT INTO pais (`ID_pais`,`pais`) VALUES (8,'Suiza');
INSERT INTO pais (`ID_pais`,`pais`) VALUES (9,'Georgia');
INSERT INTO pais (`ID_pais`,`pais`) VALUES (10,'Uruguay');
INSERT INTO pais (`ID_pais`,`pais`) VALUES (11,'Costa Rica');
INSERT INTO pais (`ID_pais`,`pais`) VALUES (12,'Brasil');
INSERT INTO pais (`ID_pais`,`pais`) VALUES (13,'Peru');
INSERT INTO pais (`ID_pais`,`pais`) VALUES (14,'Venezuela');
INSERT INTO pais (`ID_pais`,`pais`) VALUES (15,'Chile ');
INSERT INTO pais (`ID_pais`,`pais`) VALUES (16,'Mexico');
INSERT INTO pais (`ID_pais`,`pais`) VALUES (17,'Rusia');
INSERT INTO pais (`ID_pais`,`pais`) VALUES (18,'Alemania');
INSERT INTO pais (`ID_pais`,`pais`) VALUES (19,'Rumania');
INSERT INTO pais (`ID_pais`,`pais`) VALUES (20,'Canada');


-- Competencias
INSERT INTO competencias (`ID_competencias`,`competencia`) VALUES (1,'Internacional');
INSERT INTO competencias (`ID_competencias`,`competencia`) VALUES (2,'Latinoamericana');
INSERT INTO competencias (`ID_competencias`,`competencia`) VALUES (3,'Argentina ');
INSERT INTO competencias (`ID_competencias`,`competencia`) VALUES (4,'Estados Alterados');

-- Pelicula
INSERT INTO pelicula (`ID_pelicula`,`nombre`,`Duracion`,`Año`,`ID_pais`,`ID_competencias`) VALUES (1,'Petite maman','1:12:00',2021,1,1);
INSERT INTO pelicula (`ID_pelicula`,`nombre`,`Duracion`,`Año`,`ID_pais`,`ID_competencias`) VALUES (2,'Album para la juventud','1:20:00',2021,2,1);
INSERT INTO pelicula (`ID_pelicula`,`nombre`,`Duracion`,`Año`,`ID_pais`,`ID_competencias`) VALUES (3,'Diarios de Otsoga','1:41:00',2021,1,1);
INSERT INTO pelicula (`ID_pelicula`,`nombre`,`Duracion`,`Año`,`ID_pais`,`ID_competencias`) VALUES (4,'El otro Tom','1:51:00',2021,3,1);
INSERT INTO pelicula (`ID_pelicula`,`nombre`,`Duracion`,`Año`,`ID_pais`,`ID_competencias`) VALUES (5,'Espiritu sagrado','1:37:00',2021,4,1);
INSERT INTO pelicula (`ID_pelicula`,`nombre`,`Duracion`,`Año`,`ID_pais`,`ID_competencias`) VALUES (6,'Hellbender','1:22:00',2021,3,1);
INSERT INTO pelicula (`ID_pelicula`,`nombre`,`Duracion`,`Año`,`ID_pais`,`ID_competencias`) VALUES (7,'Hit the Road','1:33:00',2021,5,1);
INSERT INTO pelicula (`ID_pelicula`,`nombre`,`Duracion`,`Año`,`ID_pais`,`ID_competencias`) VALUES (8,'Kim Min-young of the Report Card','1:34:00',2021,6,1);
INSERT INTO pelicula (`ID_pelicula`,`nombre`,`Duracion`,`Año`,`ID_pais`,`ID_competencias`) VALUES (9,'Quien lo impide','3:40:00',2021,4,1);
INSERT INTO pelicula (`ID_pelicula`,`nombre`,`Duracion`,`Año`,`ID_pais`,`ID_competencias`) VALUES (10,'Re Granchio','1:46:00',2021,7,1);
INSERT INTO pelicula (`ID_pelicula`,`nombre`,`Duracion`,`Año`,`ID_pais`,`ID_competencias`) VALUES (11,'The Girl and the Spider','1:38:00',2021,8,1);
INSERT INTO pelicula (`ID_pelicula`,`nombre`,`Duracion`,`Año`,`ID_pais`,`ID_competencias`) VALUES (12,'What Do We See When We Look at the Sky?','2:30:00',2021,9,1);
INSERT INTO pelicula (`ID_pelicula`,`nombre`,`Duracion`,`Año`,`ID_pais`,`ID_competencias`) VALUES (13,'9','1:45:00',2021,10,2);
INSERT INTO pelicula (`ID_pelicula`,`nombre`,`Duracion`,`Año`,`ID_pais`,`ID_competencias`) VALUES (14,'Aurora','1:32:00',2021,11,2);
INSERT INTO pelicula (`ID_pelicula`,`nombre`,`Duracion`,`Año`,`ID_pais`,`ID_competencias`) VALUES (15,'Bob Cuspe: Nos nÃ£o gostamos de gente','1:30:00',2021,12,2);
INSERT INTO pelicula (`ID_pelicula`,`nombre`,`Duracion`,`Año`,`ID_pais`,`ID_competencias`) VALUES (16,'Camila saldra esta noche','1:43:00',2021,2,2);
INSERT INTO pelicula (`ID_pelicula`,`nombre`,`Duracion`,`Año`,`ID_pais`,`ID_competencias`) VALUES (17,'Carajita','1:26:00',2021,2,2);
INSERT INTO pelicula (`ID_pelicula`,`nombre`,`Duracion`,`Año`,`ID_pais`,`ID_competencias`) VALUES (18,'De todas las cosas que se han de saber','1:30:00',2021,13,2);
INSERT INTO pelicula (`ID_pelicula`,`nombre`,`Duracion`,`Año`,`ID_pais`,`ID_competencias`) VALUES (19,'El cielo esta rojo','1:17:00',2021,2,2);
INSERT INTO pelicula (`ID_pelicula`,`nombre`,`Duracion`,`Año`,`ID_pais`,`ID_competencias`) VALUES (20,'El perro que no calla','1:14:00',2021,2,2);
INSERT INTO pelicula (`ID_pelicula`,`nombre`,`Duracion`,`Año`,`ID_pais`,`ID_competencias`) VALUES (21,'Jesus Lopez','1:30:00',2021,2,2);
INSERT INTO pelicula (`ID_pelicula`,`nombre`,`Duracion`,`Año`,`ID_pais`,`ID_competencias`) VALUES (22,'La encomienda','1:42:00',2021,2,2);
INSERT INTO pelicula (`ID_pelicula`,`nombre`,`Duracion`,`Año`,`ID_pais`,`ID_competencias`) VALUES (23,'Piedra noche','1:27:00',2021,2,2);
INSERT INTO pelicula (`ID_pelicula`,`nombre`,`Duracion`,`Año`,`ID_pais`,`ID_competencias`) VALUES (24,'Yo y las bestias','1:18:00',2021,14,2);
INSERT INTO pelicula (`ID_pelicula`,`nombre`,`Duracion`,`Año`,`ID_pais`,`ID_competencias`) VALUES (25,'A Love Song in Spanish','0:24:00',2021,1,2);
INSERT INTO pelicula (`ID_pelicula`,`nombre`,`Duracion`,`Año`,`ID_pais`,`ID_competencias`) VALUES (26,'Atrapaluz','0:21:00',2021,11,2);
INSERT INTO pelicula (`ID_pelicula`,`nombre`,`Duracion`,`Año`,`ID_pais`,`ID_competencias`) VALUES (27,'La sangre es blanca','0:13:00',2021,4,2);
INSERT INTO pelicula (`ID_pelicula`,`nombre`,`Duracion`,`Año`,`ID_pais`,`ID_competencias`) VALUES (28,'Los huesos','0:14:00',2021,15,2);
INSERT INTO pelicula (`ID_pelicula`,`nombre`,`Duracion`,`Año`,`ID_pais`,`ID_competencias`) VALUES (29,'Sindrome de los quietos','0:30:00',2021,4,2);
INSERT INTO pelicula (`ID_pelicula`,`nombre`,`Duracion`,`Año`,`ID_pais`,`ID_competencias`) VALUES (30,'Vagalumes','0:19:00',2021,12,2);
INSERT INTO pelicula (`ID_pelicula`,`nombre`,`Duracion`,`Año`,`ID_pais`,`ID_competencias`) VALUES (31,'Atlas','1:29:00',2021,2,3);
INSERT INTO pelicula (`ID_pelicula`,`nombre`,`Duracion`,`Año`,`ID_pais`,`ID_competencias`) VALUES (32,'Danubio','1:02:00',2021,2,3);
INSERT INTO pelicula (`ID_pelicula`,`nombre`,`Duracion`,`Año`,`ID_pais`,`ID_competencias`) VALUES (33,'Estrella roja','1:13:00',2021,2,3);
INSERT INTO pelicula (`ID_pelicula`,`nombre`,`Duracion`,`Año`,`ID_pais`,`ID_competencias`) VALUES (34,'Husek','1:29:00',2021,2,3);
INSERT INTO pelicula (`ID_pelicula`,`nombre`,`Duracion`,`Año`,`ID_pais`,`ID_competencias`) VALUES (35,'La luna representa mi corazon','1:43:00',2021,2,3);
INSERT INTO pelicula (`ID_pelicula`,`nombre`,`Duracion`,`Año`,`ID_pais`,`ID_competencias`) VALUES (36,'Las cercanas','1:21:00',2021,2,3);
INSERT INTO pelicula (`ID_pelicula`,`nombre`,`Duracion`,`Año`,`ID_pais`,`ID_competencias`) VALUES (37,'Matar a la bestia','1:19:00',2021,2,3);
INSERT INTO pelicula (`ID_pelicula`,`nombre`,`Duracion`,`Año`,`ID_pais`,`ID_competencias`) VALUES (38,'Metok','1:01:00',2021,2,3);
INSERT INTO pelicula (`ID_pelicula`,`nombre`,`Duracion`,`Año`,`ID_pais`,`ID_competencias`) VALUES (39,'Noh','1:15:00',2021,2,3);
INSERT INTO pelicula (`ID_pelicula`,`nombre`,`Duracion`,`Año`,`ID_pais`,`ID_competencias`) VALUES (40,'Punto Rojo','1:20:00',2021,2,3);
INSERT INTO pelicula (`ID_pelicula`,`nombre`,`Duracion`,`Año`,`ID_pais`,`ID_competencias`) VALUES (41,'Reloj, soledad','1:10:00',2021,2,3);
INSERT INTO pelicula (`ID_pelicula`,`nombre`,`Duracion`,`Año`,`ID_pais`,`ID_competencias`) VALUES (42,'Una escuela en Cerro Hueso','1:10:00',2021,2,3);
INSERT INTO pelicula (`ID_pelicula`,`nombre`,`Duracion`,`Año`,`ID_pais`,`ID_competencias`) VALUES (43,'El espacio sideral','0:17:00',2021,2,3);
INSERT INTO pelicula (`ID_pelicula`,`nombre`,`Duracion`,`Año`,`ID_pais`,`ID_competencias`) VALUES (44,'Engomado','0:15:00',2021,2,3);
INSERT INTO pelicula (`ID_pelicula`,`nombre`,`Duracion`,`Año`,`ID_pais`,`ID_competencias`) VALUES (45,'Erase una vez en Quizca','0:12:00',2021,2,3);
INSERT INTO pelicula (`ID_pelicula`,`nombre`,`Duracion`,`Año`,`ID_pais`,`ID_competencias`) VALUES (46,'Fuera del area de cobertura','0:29:00',2021,2,3);
INSERT INTO pelicula (`ID_pelicula`,`nombre`,`Duracion`,`Año`,`ID_pais`,`ID_competencias`) VALUES (47,'Las maquinas tristes','0:09:00',2021,2,3);
INSERT INTO pelicula (`ID_pelicula`,`nombre`,`Duracion`,`Año`,`ID_pais`,`ID_competencias`) VALUES (48,'Le Vortex Monopolaire','0:15:00',2021,2,3);
INSERT INTO pelicula (`ID_pelicula`,`nombre`,`Duracion`,`Año`,`ID_pais`,`ID_competencias`) VALUES (49,'Luto','0:28:00',2021,2,3);
INSERT INTO pelicula (`ID_pelicula`,`nombre`,`Duracion`,`Año`,`ID_pais`,`ID_competencias`) VALUES (50,'Un craneo','0:04:00',2021,2,3);
INSERT INTO pelicula (`ID_pelicula`,`nombre`,`Duracion`,`Año`,`ID_pais`,`ID_competencias`) VALUES (51,'A Night of Knowing Nothing','1:36:00',2021,1,4);
INSERT INTO pelicula (`ID_pelicula`,`nombre`,`Duracion`,`Año`,`ID_pais`,`ID_competencias`) VALUES (52,'All Light, Everywhere','1:49:00',2021,3,4);
INSERT INTO pelicula (`ID_pelicula`,`nombre`,`Duracion`,`Año`,`ID_pais`,`ID_competencias`) VALUES (53,'Condition dâ€™elevation','0:20:00',2021,1,4);
INSERT INTO pelicula (`ID_pelicula`,`nombre`,`Duracion`,`Año`,`ID_pais`,`ID_competencias`) VALUES (54,'Dark Light Voyage','1:06:00',2021,16,4);
INSERT INTO pelicula (`ID_pelicula`,`nombre`,`Duracion`,`Año`,`ID_pais`,`ID_competencias`) VALUES (55,'Eles transportan a morte','1:15:00',2021,4,4);
INSERT INTO pelicula (`ID_pelicula`,`nombre`,`Duracion`,`Año`,`ID_pais`,`ID_competencias`) VALUES (56,'No taxi do Jack','1:10:00',2021,12,4);
INSERT INTO pelicula (`ID_pelicula`,`nombre`,`Duracion`,`Año`,`ID_pais`,`ID_competencias`) VALUES (57,'Nuclear Family','1:33:00',2021,3,4);
INSERT INTO pelicula (`ID_pelicula`,`nombre`,`Duracion`,`Año`,`ID_pais`,`ID_competencias`) VALUES (58,'Orpheus','1:56:00',2021,17,4);
INSERT INTO pelicula (`ID_pelicula`,`nombre`,`Duracion`,`Año`,`ID_pais`,`ID_competencias`) VALUES (59,'Outside Noise','1:01:00',2021,18,4);
INSERT INTO pelicula (`ID_pelicula`,`nombre`,`Duracion`,`Año`,`ID_pais`,`ID_competencias`) VALUES (60,'PR1NC3S4','1:07:00',2021,2,4);
INSERT INTO pelicula (`ID_pelicula`,`nombre`,`Duracion`,`Año`,`ID_pais`,`ID_competencias`) VALUES (61,'Bad Luck Banging or Loony Porn','1:46:00',2021,19,4);
INSERT INTO pelicula (`ID_pelicula`,`nombre`,`Duracion`,`Año`,`ID_pais`,`ID_competencias`) VALUES (62,'Ste. Anne','1:30:00',2021,20,4);
INSERT INTO pelicula (`ID_pelicula`,`nombre`,`Duracion`,`Año`,`ID_pais`,`ID_competencias`) VALUES (63,'Sycorax','0:21:00',2021,4,4);

-- Director_Directora
INSERT INTO director_directora (`ID_director_directora`,`nombre_apellido`,`ID_pelicula`) VALUES (1,'Celine Sciamma',1);
INSERT INTO director_directora (`ID_director_directora`,`nombre_apellido`,`ID_pelicula`) VALUES (2,'Malena Solarz',2);
INSERT INTO director_directora (`ID_director_directora`,`nombre_apellido`,`ID_pelicula`) VALUES (3,'Miguel Gomes',3);
INSERT INTO director_directora (`ID_director_directora`,`nombre_apellido`,`ID_pelicula`) VALUES (4,'Maureen Fazendeiro',3);
INSERT INTO director_directora (`ID_director_directora`,`nombre_apellido`,`ID_pelicula`) VALUES (5,'Rodrigo Pla',4);
INSERT INTO director_directora (`ID_director_directora`,`nombre_apellido`,`ID_pelicula`) VALUES (6,'Laura Santullo',4);
INSERT INTO director_directora (`ID_director_directora`,`nombre_apellido`,`ID_pelicula`) VALUES (7,'Chema Garcia Ibarra',5);
INSERT INTO director_directora (`ID_director_directora`,`nombre_apellido`,`ID_pelicula`) VALUES (8,'John Adams',6);
INSERT INTO director_directora (`ID_director_directora`,`nombre_apellido`,`ID_pelicula`) VALUES (9,'Panah Panahi',7);
INSERT INTO director_directora (`ID_director_directora`,`nombre_apellido`,`ID_pelicula`) VALUES (10,'Lim Jisun',8);
INSERT INTO director_directora (`ID_director_directora`,`nombre_apellido`,`ID_pelicula`) VALUES (11,'Lee Jae-eun',8);
INSERT INTO director_directora (`ID_director_directora`,`nombre_apellido`,`ID_pelicula`) VALUES (12,'Jonas Trueba',9);
INSERT INTO director_directora (`ID_director_directora`,`nombre_apellido`,`ID_pelicula`) VALUES (13,'Alessio Rigo de Righi',10);
INSERT INTO director_directora (`ID_director_directora`,`nombre_apellido`,`ID_pelicula`) VALUES (14,'Matteo Zoppis',10);
INSERT INTO director_directora (`ID_director_directora`,`nombre_apellido`,`ID_pelicula`) VALUES (15,' Silvan ZÃ¼rcher',11);
INSERT INTO director_directora (`ID_director_directora`,`nombre_apellido`,`ID_pelicula`) VALUES (16,'Ramon ZÃ¼rche',11);
INSERT INTO director_directora (`ID_director_directora`,`nombre_apellido`,`ID_pelicula`) VALUES (17,'Alexandre Koberidze',12);
INSERT INTO director_directora (`ID_director_directora`,`nombre_apellido`,`ID_pelicula`) VALUES (18,'Martin Barrenechea',13);
INSERT INTO director_directora (`ID_director_directora`,`nombre_apellido`,`ID_pelicula`) VALUES (19,'Nicolas Branca',13);
INSERT INTO director_directora (`ID_director_directora`,`nombre_apellido`,`ID_pelicula`) VALUES (20,'Paz Fabrega',14);
INSERT INTO director_directora (`ID_director_directora`,`nombre_apellido`,`ID_pelicula`) VALUES (21,'Cesar Cabral ',15);
INSERT INTO director_directora (`ID_director_directora`,`nombre_apellido`,`ID_pelicula`) VALUES (22,'Ines Barrionuevo',16);
INSERT INTO director_directora (`ID_director_directora`,`nombre_apellido`,`ID_pelicula`) VALUES (23,'Silvina Schnicer',17);
INSERT INTO director_directora (`ID_director_directora`,`nombre_apellido`,`ID_pelicula`) VALUES (24,'Ulises Porra',17);
INSERT INTO director_directora (`ID_director_directora`,`nombre_apellido`,`ID_pelicula`) VALUES (25,'Sofia Velazquez NuÃ±ez',18);
INSERT INTO director_directora (`ID_director_directora`,`nombre_apellido`,`ID_pelicula`) VALUES (26,'Francina Carbonell',19);
INSERT INTO director_directora (`ID_director_directora`,`nombre_apellido`,`ID_pelicula`) VALUES (27,'Ana Katz',20);
INSERT INTO director_directora (`ID_director_directora`,`nombre_apellido`,`ID_pelicula`) VALUES (28,'Maximiliano Schonfeld',21);
INSERT INTO director_directora (`ID_director_directora`,`nombre_apellido`,`ID_pelicula`) VALUES (29,'Pablo Giorgelli',22);
INSERT INTO director_directora (`ID_director_directora`,`nombre_apellido`,`ID_pelicula`) VALUES (30,'Ivan Fund',23);
INSERT INTO director_directora (`ID_director_directora`,`nombre_apellido`,`ID_pelicula`) VALUES (31,'Nico Manzano',24);
INSERT INTO director_directora (`ID_director_directora`,`nombre_apellido`,`ID_pelicula`) VALUES (32,'Ana Elena Tejera',25);
INSERT INTO director_directora (`ID_director_directora`,`nombre_apellido`,`ID_pelicula`) VALUES (33,'Kim Torres',26);
INSERT INTO director_directora (`ID_director_directora`,`nombre_apellido`,`ID_pelicula`) VALUES (34,'Oscar Vincentelli',27);
INSERT INTO director_directora (`ID_director_directora`,`nombre_apellido`,`ID_pelicula`) VALUES (35,'Cristobal Leon',28);
INSERT INTO director_directora (`ID_director_directora`,`nombre_apellido`,`ID_pelicula`) VALUES (36,'Joaquin CociÃ±a',28);
INSERT INTO director_directora (`ID_director_directora`,`nombre_apellido`,`ID_pelicula`) VALUES (37,'Elias Leon Siminiani',29);
INSERT INTO director_directora (`ID_director_directora`,`nombre_apellido`,`ID_pelicula`) VALUES (38,'Leo Bittencourt',30);
INSERT INTO director_directora (`ID_director_directora`,`nombre_apellido`,`ID_pelicula`) VALUES (39,'Guadalupe Gaona e Ignacio Masllorens',31);
INSERT INTO director_directora (`ID_director_directora`,`nombre_apellido`,`ID_pelicula`) VALUES (40,'Agustina Perez Rial',32);
INSERT INTO director_directora (`ID_director_directora`,`nombre_apellido`,`ID_pelicula`) VALUES (41,'Sofia Bordenave',33);
INSERT INTO director_directora (`ID_director_directora`,`nombre_apellido`,`ID_pelicula`) VALUES (42,' Daniela Seggiaro',34);
INSERT INTO director_directora (`ID_director_directora`,`nombre_apellido`,`ID_pelicula`) VALUES (43,'Juan Martin Hsu',35);
INSERT INTO director_directora (`ID_director_directora`,`nombre_apellido`,`ID_pelicula`) VALUES (44,'Maria Alvarez',36);
INSERT INTO director_directora (`ID_director_directora`,`nombre_apellido`,`ID_pelicula`) VALUES (45,'Agustina San Martin',37);
INSERT INTO director_directora (`ID_director_directora`,`nombre_apellido`,`ID_pelicula`) VALUES (46,'Martin Sola',38);
INSERT INTO director_directora (`ID_director_directora`,`nombre_apellido`,`ID_pelicula`) VALUES (47,'Marco Canale',39);
INSERT INTO director_directora (`ID_director_directora`,`nombre_apellido`,`ID_pelicula`) VALUES (48,'Juan Fernandez Gebauer',39);
INSERT INTO director_directora (`ID_director_directora`,`nombre_apellido`,`ID_pelicula`) VALUES (49,'Ignacio Ragone',39);
INSERT INTO director_directora (`ID_director_directora`,`nombre_apellido`,`ID_pelicula`) VALUES (50,'Nic Loreti',40);
INSERT INTO director_directora (`ID_director_directora`,`nombre_apellido`,`ID_pelicula`) VALUES (51,'Cesar Gonzalez',41);
INSERT INTO director_directora (`ID_director_directora`,`nombre_apellido`,`ID_pelicula`) VALUES (52,'Betania Cappato',42);
INSERT INTO director_directora (`ID_director_directora`,`nombre_apellido`,`ID_pelicula`) VALUES (53,'Sebastian Schjaer ',43);
INSERT INTO director_directora (`ID_director_directora`,`nombre_apellido`,`ID_pelicula`) VALUES (54,'Toia Bonino',44);
INSERT INTO director_directora (`ID_director_directora`,`nombre_apellido`,`ID_pelicula`) VALUES (55,'Marcos Joubert',44);
INSERT INTO director_directora (`ID_director_directora`,`nombre_apellido`,`ID_pelicula`) VALUES (56,'Nicolas Torchinsky',45);
INSERT INTO director_directora (`ID_director_directora`,`nombre_apellido`,`ID_pelicula`) VALUES (57,'Agustina Wetzel',46);
INSERT INTO director_directora (`ID_director_directora`,`nombre_apellido`,`ID_pelicula`) VALUES (58,'Paola Michaels',47);
INSERT INTO director_directora (`ID_director_directora`,`nombre_apellido`,`ID_pelicula`) VALUES (59,'Luciano Onetti',48);
INSERT INTO director_directora (`ID_director_directora`,`nombre_apellido`,`ID_pelicula`) VALUES (60,'Pablo Martin Weber',49);
INSERT INTO director_directora (`ID_director_directora`,`nombre_apellido`,`ID_pelicula`) VALUES (61,'Mariano Cocolo',50);
INSERT INTO director_directora (`ID_director_directora`,`nombre_apellido`,`ID_pelicula`) VALUES (62,'Payal Kapadia',51);
INSERT INTO director_directora (`ID_director_directora`,`nombre_apellido`,`ID_pelicula`) VALUES (63,'Theo Anthony',52);
INSERT INTO director_directora (`ID_director_directora`,`nombre_apellido`,`ID_pelicula`) VALUES (64,'Isabelle Prim',53);
INSERT INTO director_directora (`ID_director_directora`,`nombre_apellido`,`ID_pelicula`) VALUES (65,'Tin Dirdamal ',54);
INSERT INTO director_directora (`ID_director_directora`,`nombre_apellido`,`ID_pelicula`) VALUES (66,'Eva Cadena',54);
INSERT INTO director_directora (`ID_director_directora`,`nombre_apellido`,`ID_pelicula`) VALUES (67,'Samuel Delgado',55);
INSERT INTO director_directora (`ID_director_directora`,`nombre_apellido`,`ID_pelicula`) VALUES (68,'Helena Giron',55);
INSERT INTO director_directora (`ID_director_directora`,`nombre_apellido`,`ID_pelicula`) VALUES (69,'Susana Nobre',56);
INSERT INTO director_directora (`ID_director_directora`,`nombre_apellido`,`ID_pelicula`) VALUES (70,'Travis Wilkerson',57);
INSERT INTO director_directora (`ID_director_directora`,`nombre_apellido`,`ID_pelicula`) VALUES (71,'Erin Wilkerson',57);
INSERT INTO director_directora (`ID_director_directora`,`nombre_apellido`,`ID_pelicula`) VALUES (72,'Vadim Kostrov',58);
INSERT INTO director_directora (`ID_director_directora`,`nombre_apellido`,`ID_pelicula`) VALUES (73,'Ted Fendt',59);
INSERT INTO director_directora (`ID_director_directora`,`nombre_apellido`,`ID_pelicula`) VALUES (74,'Raul Perrone',60);
INSERT INTO director_directora (`ID_director_directora`,`nombre_apellido`,`ID_pelicula`) VALUES (75,'Radu Jude',61);
INSERT INTO director_directora (`ID_director_directora`,`nombre_apellido`,`ID_pelicula`) VALUES (76,'Rhayne Vermette',62);
INSERT INTO director_directora (`ID_director_directora`,`nombre_apellido`,`ID_pelicula`) VALUES (77,'Lois PatiÃ±o',63);

-- Jurados
INSERT INTO jurados (`ID_jurados`,`nombre_apellido`,`ID_competencias`) VALUES (1,'Paz Encina',1);
INSERT INTO jurados (`ID_jurados`,`nombre_apellido`,`ID_competencias`) VALUES (2,'Mitra Farahani ',1);
INSERT INTO jurados (`ID_jurados`,`nombre_apellido`,`ID_competencias`) VALUES (3,'Aurelie Godet',1);
INSERT INTO jurados (`ID_jurados`,`nombre_apellido`,`ID_competencias`) VALUES (4,'Haden Guest ',1);
INSERT INTO jurados (`ID_jurados`,`nombre_apellido`,`ID_competencias`) VALUES (5,'Federico Veiroj',1);
INSERT INTO jurados (`ID_jurados`,`nombre_apellido`,`ID_competencias`) VALUES (6,'Santiago Fillol ',2);
INSERT INTO jurados (`ID_jurados`,`nombre_apellido`,`ID_competencias`) VALUES (7,'Carlos A. Gutierrez',2);
INSERT INTO jurados (`ID_jurados`,`nombre_apellido`,`ID_competencias`) VALUES (8,'Janaina Oliveira',2);
INSERT INTO jurados (`ID_jurados`,`nombre_apellido`,`ID_competencias`) VALUES (9,'Mara Fortes',3);
INSERT INTO jurados (`ID_jurados`,`nombre_apellido`,`ID_competencias`) VALUES (10,'Simplice Ganou',3);
INSERT INTO jurados (`ID_jurados`,`nombre_apellido`,`ID_competencias`) VALUES (11,'Tyler Wilson',3);
INSERT INTO jurados (`ID_jurados`,`nombre_apellido`,`ID_competencias`) VALUES (12,'Daniel Kasman',4);
INSERT INTO jurados (`ID_jurados`,`nombre_apellido`,`ID_competencias`) VALUES (13,'Camilo Restrepo',4);
INSERT INTO jurados (`ID_jurados`,`nombre_apellido`,`ID_competencias`) VALUES (14,'Malena Szlam',4);

-- Vistas
-- 1. Ordenar peliculas segun duración
create view vw_duracion as
select  Nombre, Duracion
from pelicula
order by Duracion desc;

-- 2. Agrupar  y sumar peliculas por ID_pais
create view vw_pelicula_pais as
select ID_pais , count(*) as total
from pelicula
group by ID_pais;

-- 3. Vista con el nombre del pais a la suma de peliculas por pais
create view vw_nombres_pais as
select  T1.total, T2.pais from vw_pelicula_pais T1
join pais T2
on T1.ID_pais = T2.ID_pais;

-- 4  Vista con Nombre y apellido de Jurado y la competencia
create view vw_jurados_competencia as
select T1.competencia, T2.nombre_apellido
from competencias T1
join jurados T2
on T1.ID_competencias = T2.ID_competencias;

-- 5 Cantidad de pelicula por competencia
create view vw_competencia_count as
select T1.ID_competencias, count(*) as total_competencia, T2.competencia
from pelicula T1
join competencias T2
on T1.ID_competencias = T2.ID_competencias
group by ID_competencias;


-- FUNCIONES

-- Funcion para ver que pelicula dirigio cada director/a
DELIMITER //
create function  director_pelicula(id int) returns varchar (50)
deterministic
begin
	declare Pelicula varchar(50);
    set Pelicula = (select Nombre from proyecto_festival_mdq.pelicula where ID_pelicula = id);
    return Pelicula;
end
//

-- Funcion para calcular cantidad de peliculas dependiendo del pais.
DELIMITER //
create function cantidad_pelicula(id int) returns int
reads sql data
begin
    declare resultado int;
    select count(ID_pais) into resultado from pelicula
    where id = ID_pais;
    return resultado;
end
//

-- STORE PROCEDURE

-- 1. El siguiente SP realiza el ingreso de nuevos registros a la tabla Pais. Contiene 2 parametros.
DELIMITER //
create procedure sp_ins_pais(in p_ID_pais int, p_pais varchar (15))
begin
insert into pais (ID_pais, pais)
values(p_ID_pais, p_pais);
end
//

-- Como usarlo EJ:
-- call sp_ins_pais (21, 'Dinamarca');

-- 1. El siguiente SP ordena la tabla Peliculas, las puede ordenar por Id de pais, Id de pelicula, Id de competencia o por Duracion.En orden ascendente o descendente. Los parametros para llamar al SP son a traves de un numero de columna y varchar para indicar ASC o DESC

DELIMITER //
create procedure sp_ord_pelicula(in p_column int, in p_orden varchar (6))
begin
select * from pelicula  order by
case when p_column = 1 and p_orden = 'ASC' then ID_pelicula end,
case when p_column = 1 and p_orden = 'DESC' THEN ID_pelicula end desc,
case when p_column = 2 and p_orden = 'ASC' then ID_competencias end,
case when p_column = 2 and p_orden = 'DESC' THEN ID_competencias end desc,
case when p_column = 3 and p_orden = 'ASC' then Duracion end,
case when p_column = 3 and p_orden = 'DESC' THEN Duracion end desc,
case when p_column = 4 and p_orden = 'ASC' then ID_pais end,
case when p_column = 4 and p_orden = 'DESC' THEN ID_pais end desc;
end
// 

-- Como usarlo EJ:
-- call sp_ord_pelicula(2, 'DESC');