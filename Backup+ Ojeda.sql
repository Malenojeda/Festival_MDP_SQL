-- Tablas incluidas en el Backup
-- Pelicula
-- Pais
-- Jurados
-- Director_directora
-- Competencias
-- Estas son las tablas iniciales del proyecto. 



-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: proyecto_festival_mdq
-- ------------------------------------------------------
-- Server version	8.0.29

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping data for table `competencias`
--

LOCK TABLES `competencias` WRITE;
/*!40000 ALTER TABLE `competencias` DISABLE KEYS */;
INSERT INTO `competencias` VALUES (1,'Internacional'),(2,'Latinoamericana'),(3,'Argentina '),(4,'Estados Alterados');
/*!40000 ALTER TABLE `competencias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `director_directora`
--

LOCK TABLES `director_directora` WRITE;
/*!40000 ALTER TABLE `director_directora` DISABLE KEYS */;
INSERT INTO `director_directora` VALUES (1,'Celine Sciamma',1),(2,'Malena Solarz',2),(3,'Miguel Gomes',3),(4,'Maureen Fazendeiro',3),(5,'Rodrigo Pla',4),(6,'Laura Santullo',4),(7,'Chema Garcia Ibarra',5),(8,'John Adams',6),(9,'Panah Panahi',7),(10,'Lim Jisun',8),(11,'Lee Jae-eun',8),(12,'Jonas Trueba',9),(13,'Alessio Rigo de Righi',10),(14,'Matteo Zoppis',10),(15,' Silvan ZÃ¼rcher',11),(16,'Ramon ZÃ¼rche',11),(17,'Alexandre Koberidze',12),(18,'Martin Barrenechea',13),(19,'Nicolas Branca',13),(20,'Paz Fabrega',14),(21,'Cesar Cabral ',15),(22,'Ines Barrionuevo',16),(23,'Silvina Schnicer',17),(24,'Ulises Porra',17),(25,'Sofia Velazquez NuÃ±ez',18),(26,'Francina Carbonell',19),(27,'Ana Katz',20),(28,'Maximiliano Schonfeld',21),(29,'Pablo Giorgelli',22),(30,'Ivan Fund',23),(31,'Nico Manzano',24),(32,'Ana Elena Tejera',25),(33,'Kim Torres',26),(34,'Oscar Vincentelli',27),(35,'Cristobal Leon',28),(36,'Joaquin CociÃ±a',28),(37,'Elias Leon Siminiani',29),(38,'Leo Bittencourt',30),(39,'Guadalupe Gaona e Ignacio Masllorens',31),(40,'Agustina Perez Rial',32),(41,'Sofia Bordenave',33),(42,' Daniela Seggiaro',34),(43,'Juan Martin Hsu',35),(44,'Maria Alvarez',36),(45,'Agustina San Martin',37),(46,'Martin Sola',38),(47,'Marco Canale',39),(48,'Juan Fernandez Gebauer',39),(49,'Ignacio Ragone',39),(50,'Nic Loreti',40),(51,'Cesar Gonzalez',41),(52,'Betania Cappato',42),(53,'Sebastian Schjaer ',43),(54,'Toia Bonino',44),(55,'Marcos Joubert',44),(56,'Nicolas Torchinsky',45),(57,'Agustina Wetzel',46),(58,'Paola Michaels',47),(59,'Luciano Onetti',48),(60,'Pablo Martin Weber',49),(61,'Mariano Cocolo',50),(62,'Payal Kapadia',51),(63,'Theo Anthony',52),(64,'Isabelle Prim',53),(65,'Tin Dirdamal ',54),(66,'Eva Cadena',54),(67,'Samuel Delgado',55),(68,'Helena Giron',55),(69,'Susana Nobre',56),(70,'Travis Wilkerson',57),(71,'Erin Wilkerson',57),(72,'Vadim Kostrov',58),(73,'Ted Fendt',59),(74,'Raul Perrone',60),(75,'Radu Jude',61),(76,'Rhayne Vermette',62),(77,'Lois PatiÃ±o',63);
/*!40000 ALTER TABLE `director_directora` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `jurados`
--

LOCK TABLES `jurados` WRITE;
/*!40000 ALTER TABLE `jurados` DISABLE KEYS */;
INSERT INTO `jurados` VALUES (1,'Paz Encina',1),(2,'Mitra Farahani ',1),(3,'Aurelie Godet',1),(4,'Haden Guest ',1),(5,'Federico Veiroj',1),(6,'Santiago Fillol ',2),(7,'Carlos A. Gutierrez',2),(8,'Janaina Oliveira',2),(9,'Mara Fortes',3),(10,'Simplice Ganou',3),(11,'Tyler Wilson',3),(12,'Daniel Kasman',4),(13,'Camilo Restrepo',4),(14,'Malena Szlam',4);
/*!40000 ALTER TABLE `jurados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `pais`
--

LOCK TABLES `pais` WRITE;
/*!40000 ALTER TABLE `pais` DISABLE KEYS */;
INSERT INTO `pais` VALUES (1,'Francia'),(2,'Argentina'),(3,'Estados Unidos'),(4,'EspaÃ±a'),(5,'Iran'),(6,'Corea del Sur'),(7,'Italia'),(8,'Suiza'),(9,'Georgia'),(10,'Uruguay'),(11,'Costa Rica'),(12,'Brasil'),(13,'Peru'),(14,'Venezuela'),(15,'Chile '),(16,'Mexico'),(17,'Rusia'),(18,'Alemania'),(19,'Rumania'),(20,'Canada');
/*!40000 ALTER TABLE `pais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `pelicula`
--

LOCK TABLES `pelicula` WRITE;
/*!40000 ALTER TABLE `pelicula` DISABLE KEYS */;
INSERT INTO `pelicula` VALUES (1,'Petite maman','1:12:00',2021,1,1),(2,'Album para la juventud','1:20:00',2021,1,2),(3,'Diarios de Otsoga','1:41:00',2021,1,1),(4,'El otro Tom','1:51:00',2021,1,3),(5,'Espiritu sagrado','1:37:00',2021,1,4),(6,'Hellbender','1:22:00',2021,1,3),(7,'Hit the Road','1:33:00',2021,1,5),(8,'Kim Min-young of the Report Card','1:34:00',2021,1,6),(9,'Quien lo impide','3:40:00',2021,1,4),(10,'Re Granchio','1:46:00',2021,1,7),(11,'The Girl and the Spider','1:38:00',2021,1,8),(12,'What Do We See When We Look at the Sky?','2:30:00',2021,1,9),(13,'9','1:45:00',2021,2,10),(14,'Aurora','1:32:00',2021,2,11),(15,'Bob Cuspe: Nos nÃ£o gostamos de gente','1:30:00',2021,2,12),(16,'Camila saldra esta noche','1:43:00',2021,2,2),(17,'Carajita','1:26:00',2021,2,2),(18,'De todas las cosas que se han de saber','1:30:00',2021,2,13),(19,'El cielo esta rojo','1:17:00',2021,2,2),(20,'El perro que no calla','1:14:00',2021,2,2),(21,'Jesus Lopez','1:30:00',2021,2,2),(22,'La encomienda','1:42:00',2021,2,2),(23,'Piedra noche','1:27:00',2021,2,2),(24,'Yo y las bestias','1:18:00',2021,2,14),(25,'A Love Song in Spanish','0:24:00',2021,2,1),(26,'Atrapaluz','0:21:00',2021,2,11),(27,'La sangre es blanca','0:13:00',2021,2,4),(28,'Los huesos','0:14:00',2021,2,15),(29,'Sindrome de los quietos','0:30:00',2021,2,4),(30,'Vagalumes','0:19:00',2021,2,12),(31,'Atlas','1:29:00',2021,3,2),(32,'Danubio','1:02:00',2021,3,2),(33,'Estrella roja','1:13:00',2021,3,2),(34,'Husek','1:29:00',2021,3,2),(35,'La luna representa mi corazon','1:43:00',2021,3,2),(36,'Las cercanas','1:21:00',2021,3,2),(37,'Matar a la bestia','1:19:00',2021,3,2),(38,'Metok','1:01:00',2021,3,2),(39,'Noh','1:15:00',2021,3,2),(40,'Punto Rojo','1:20:00',2021,3,2),(41,'Reloj, soledad','1:10:00',2021,3,2),(42,'Una escuela en Cerro Hueso','1:10:00',2021,3,2),(43,'El espacio sideral','0:17:00',2021,3,2),(44,'Engomado','0:15:00',2021,3,2),(45,'Erase una vez en Quizca','0:12:00',2021,3,2),(46,'Fuera del area de cobertura','0:29:00',2021,3,2),(47,'Las maquinas tristes','0:09:00',2021,3,2),(48,'Le Vortex Monopolaire','0:15:00',2021,3,2),(49,'Luto','0:28:00',2021,3,2),(50,'Un craneo','0:04:00',2021,3,2),(51,'A Night of Knowing Nothing','1:36:00',2021,4,1),(52,'All Light, Everywhere','1:49:00',2021,4,3),(53,'Condition dâ€™elevation','0:20:00',2021,4,1),(54,'Dark Light Voyage','1:06:00',2021,4,16),(55,'Eles transportan a morte','1:15:00',2021,4,4),(56,'No taxi do Jack','1:10:00',2021,4,12),(57,'Nuclear Family','1:33:00',2021,4,3),(58,'Orpheus','1:56:00',2021,4,17),(59,'Outside Noise','1:01:00',2021,4,18),(60,'PR1NC3S4','1:07:00',2021,4,2),(61,'Bad Luck Banging or Loony Porn','1:46:00',2021,4,19),(62,'Ste. Anne','1:30:00',2021,4,20),(63,'Sycorax','0:21:00',2021,4,4);
/*!40000 ALTER TABLE `pelicula` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-09 16:23:11
