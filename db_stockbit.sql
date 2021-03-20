/*
SQLyog Ultimate v12.5.1 (64 bit)
MySQL - 8.0.23-0ubuntu0.20.04.1 : Database - db_stockbit
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_stockbit` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `db_stockbit`;

/*Table structure for table `t_film` */

DROP TABLE IF EXISTS `t_film`;

CREATE TABLE `t_film` (
  `title` varchar(83) NOT NULL,
  `year` varchar(9) NOT NULL,
  `imdb_id` varchar(10) NOT NULL,
  `type` varchar(6) NOT NULL,
  `poster` varchar(138) NOT NULL,
  PRIMARY KEY (`imdb_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `t_film` */

insert  into `t_film`(`title`,`year`,`imdb_id`,`type`,`poster`) values 
('Casey at the Bat','1899','tt0000229','movie','https://m.media-amazon.com/images/M/MV5BYjA4YTM4YjgtMWEzNC00MTc5LThhYzItZmYzNWU0MDQxZjA2XkEyXkFqcGdeQXVyNTM3MDMyMDQ@._V1_SX300.jpg'),
('Colonel Heeza Liar at the Bat','1915','tt0005114','movie','https://m.media-amazon.com/images/M/MV5BYzUwOWZiYzktZDI0My00MWFmLTlhYTMtODYzZTEzNGE1ODExXkEyXkFqcGdeQXVyNDcwNDI2MTk@._V1_SX300.jpg'),
('The Bat','1926','tt0016629','movie','https://m.media-amazon.com/images/M/MV5BMTgxMzcyOTA1OF5BMl5BanBnXkFtZTcwMzU5NjQyMg@@._V1_SX300.jpg'),
('The Bat Whispers','1930','tt0020668','movie','https://m.media-amazon.com/images/M/MV5BMTUwMjg3NDc2OF5BMl5BanBnXkFtZTgwMzk4ODQwMjE@._V1_SX300.jpg'),
('The Sea Bat','1930','tt0021345','movie','https://m.media-amazon.com/images/M/MV5BM2JmYjU3ODYtZWFhOS00ZWFhLWIwMWQtMWZmYTgyM2MwNjUxXkEyXkFqcGdeQXVyNDAzOTcxOTE@._V1_SX300.jpg'),
('The Vampire Bat','1933','tt0024727','movie','https://m.media-amazon.com/images/M/MV5BY2Q1NWZlOWQtOGQwMS00YjUyLTlkZDctNTQ5ZjRlNGE1ZDI1XkEyXkFqcGdeQXVyNjc0MzMzNjA@._V1_SX300.jpg'),
('The Devil Bat','1940','tt0032390','movie','https://m.media-amazon.com/images/M/MV5BZWE4MjhjMDItZmQ5Yy00OTQxLWE0M2EtZTJiMTFhMzc1NjJjXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_SX300.jpg'),
('The Brave Little Bat','1941','tt0033430','movie','https://ia.media-imdb.com/images/M/MV5BZTU5NzhiZDYtZjJmMC00ODUzLTkwNTctN2U4NTAxZWMzZDViXkEyXkFqcGdeQXVyMDM0MzU2NA@@._V1_SX300.jpg'),
('Casey at the Bat','1946','tt0038399','movie','https://m.media-amazon.com/images/M/MV5BMTU1MTc5MDg3OV5BMl5BanBnXkFtZTcwMDI1NTQzMQ@@._V1_SX300.jpg'),
('Bat Masterson','1958–1961','tt0052445','series','https://m.media-amazon.com/images/M/MV5BMTIyMDI0MzM3OV5BMl5BanBnXkFtZTcwMTczODQzMQ@@._V1_SX300.jpg'),
('The Bat','1959','tt0052602','movie','https://m.media-amazon.com/images/M/MV5BYWY3N2M0MzktZjkxNi00MjNlLTg2ZjctZGVjZTZhNzZiMDc4XkEyXkFqcGdeQXVyMDI2NDg0NQ@@._V1_SX300.jpg'),
('The Bat People','1974','tt0071198','movie','https://m.media-amazon.com/images/M/MV5BZWM3ZGUyZWEtMjQ0OS00ZjJlLTkzNjktMjBjM2E1MzI0N2JlL2ltYWdlXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_SX300.jpg'),
('Legend of the Bat','1978','tt0079454','movie','https://m.media-amazon.com/images/M/MV5BMTJjMjA1ZDAtZmVmNC00YmNhLThkODItNDI0NzM3YWM4YjI1XkEyXkFqcGdeQXVyMjcwNDczMjY@._V1_SX300.jpg'),
('Bat Without Wings','1980','tt0080420','movie','https://m.media-amazon.com/images/M/MV5BZjFhNzlhMDctM2VkYy00OTA2LWEzN2MtZjYwZWUzZThiMWYwXkEyXkFqcGdeQXVyNzc5MjA3OA@@._V1_SX300.jpg'),
('Bat 21','1988','tt0094712','movie','https://m.media-amazon.com/images/M/MV5BZDRmNjYwZDktOTYxZi00MTdlLWI5ZjYtYWU4MDE5MDc5NGM3L2ltYWdlXkEyXkFqcGdeQXVyNjQzNDI3NzY@._V1_SX300.jpg'),
('Un coeur qui bat','1991','tt0103153','movie','https://m.media-amazon.com/images/M/MV5BOTAwODBiODMtOWQ1ZS00Y2FlLWJkNjktOTA3ODIwMDllZTQ0XkEyXkFqcGdeQXVyNzU3NjUzNTc@._V1_SX300.jpg'),
('Siu bat sin','1994','tt0111208','movie','https://m.media-amazon.com/images/M/MV5BZmViYTExNDktM2YzNi00ZTAyLTkyOGEtZDUxZWM5YjlhYmNmXkEyXkFqcGdeQXVyNjUzODYxMg@@._V1_SX300.jpg'),
('Crimson Bat, the Blind Swordswoman','1969','tt0165379','movie','https://m.media-amazon.com/images/M/MV5BNzE5OWU1ZTctZjk5Zi00MTE3LThkZWEtMzBiZDBjODU1ODhhXkEyXkFqcGdeQXVyNjUzNzQ4NDQ@._V1_SX300.jpg'),
('Crimson Bat - Oichi: Wanted, Dead or Alive','1970','tt0165387','movie','https://m.media-amazon.com/images/M/MV5BZjI5Nzk0OWEtNTYxZS00ZDdmLWE2M2EtNTkyNGRlOWQyYmM3XkEyXkFqcGdeQXVyMTg2NjYzOA@@._V1_SX300.jpg'),
('The Golden Bat','1966','tt0167320','movie','https://m.media-amazon.com/images/M/MV5BNWJhZDRjZTctMGU5MC00OGMzLThiZTYtNjllZmUwNzNjOWM1XkEyXkFqcGdeQXVyMjExMzEyNTM@._V1_SX300.jpg'),
('Trapped, the Crimson Bat','1969','tt0201767','movie','https://m.media-amazon.com/images/M/MV5BZTg5NDEzOWQtOGQ0Zi00OGQyLTgxMDktZTAxNzVhODNkYzdiXkEyXkFqcGdeQXVyMTg2NjYzOA@@._V1_SX300.jpg'),
('Watch Out, Crimson Bat!','1969','tt0201768','movie','https://m.media-amazon.com/images/M/MV5BMjA5MDg2MzI0M15BMl5BanBnXkFtZTgwNzI3NDc1MTE@._V1_SX300.jpg'),
('Attack of the Bat Monsters','1999','tt0228037','movie','N/A'),
('Classic Albums: Meat Loaf - Bat Out of Hell','1999','tt0235298','movie','https://m.media-amazon.com/images/M/MV5BMTg0OTI5NzAxNV5BMl5BanBnXkFtZTcwMzE2MTAzMQ@@._V1_SX300.jpg'),
('The Shadow of the Bat','1968','tt0282993','movie','https://m.media-amazon.com/images/M/MV5BMzI2NmIyZGUtZTJiMC00Y2QxLWFlMTUtZmNhMGEzMmJkZGIzXkEyXkFqcGdeQXVyMTQ2MjQyNDc@._V1_SX300.jpg'),
('Bat sei ching mai','2001','tt0306522','movie','https://m.media-amazon.com/images/M/MV5BMTIzMzIwOTk2OF5BMl5BanBnXkFtZTcwNzMzMjAyMQ@@._V1_SX300.jpg'),
('Bat Thumb','2001','tt0331189','movie','https://m.media-amazon.com/images/M/MV5BMTY3ODc3MjMzM15BMl5BanBnXkFtZTcwMjIwNzIyMQ@@._V1_SX300.jpg'),
('Meat Loaf: Bat Out of Hell II - Picture Show','1994','tt0364980','movie','N/A'),
('The Golden Bat','1967–','tt0392141','series','https://m.media-amazon.com/images/M/MV5BNDQ4YzFlZTgtMGQxYy00MzgzLThhZGQtZWQwNzY4MDM5MzcxXkEyXkFqcGdeQXVyNjczMTk3MDI@._V1_SX300.jpg'),
('Genesis of the Bat','2005','tt0485650','movie','https://m.media-amazon.com/images/M/MV5BNjZhYzE2YTAtYzFiNy00NDY4LWI2NzktNzJlY2RkZWVjYzU3XkEyXkFqcGdeQXVyNDMxMTc5OTE@._V1_SX300.jpg'),
('The Bat, the Cat, and the Penguin','1992','tt0486272','movie','https://m.media-amazon.com/images/M/MV5BMmU4YTRjZmMtM2EwOC00YmM0LWFhMzQtOTE4NTNhNDgxNDI0XkEyXkFqcGdeQXVyMjA0MDQ0Mjc@._V1_SX300.jpg'),
('Shadows of the Bat: The Cinematic Saga of the Dark Knight - The Gathering Storm','2005','tt0486476','movie','https://m.media-amazon.com/images/M/MV5BZGNlOGZmYzEtMzQwMi00OGM0LWFhODgtNWU0ZmMxODgzMWE1XkEyXkFqcGdeQXVyMjQ0NzE0MQ@@._V1_SX300.jpg'),
('Shadows of the Bat: The Cinematic Saga of the Dark Knight - The Legend Reborn','2005','tt0486477','movie','https://m.media-amazon.com/images/M/MV5BZGNjMmY3M2ItZDBiZi00ZWEyLWJiNDEtZTZhZDBjNjhiYmJjXkEyXkFqcGdeQXVyMjQ0NzE0MQ@@._V1_SX300.jpg'),
('Shadows of the Bat: The Cinematic Saga of the Dark Knight - The Road to Gotham City','2005','tt0486478','movie','N/A'),
('Shadows of the Bat: The Cinematic Saga of the Dark Knight - Batman Unbound','2005','tt0486908','movie','N/A'),
('Shadows of the Bat: The Cinematic Saga of the Dark Knight - Dark Side of the Knight','2005','tt0486909','movie','https://m.media-amazon.com/images/M/MV5BMjMzOTM2NjcxN15BMl5BanBnXkFtZTgwOTM0OTg4NjE@._V1_SX300.jpg'),
('Shadows of the Bat: The Cinematic Saga of the Dark Knight - Reinventing a Hero','2005','tt0486910','movie','N/A'),
('Casey at the Bat','1922','tt0490834','movie','https://m.media-amazon.com/images/M/MV5BOGE5MDBiMjAtY2UzYy00OTJmLWJiYTAtODU2NzM2YWIxNWQ3XkEyXkFqcGdeQXVyNTM3MDMyMDQ@._V1_SX300.jpg'),
('Gandhi at the Bat','2006','tt0886496','movie','https://m.media-amazon.com/images/M/MV5BMTUxMDIyMjA2NF5BMl5BanBnXkFtZTcwNDM5NjA0MQ@@._V1_SX300.jpg'),
('The Confessions of The Bat','2020','tt10189366','movie','https://m.media-amazon.com/images/M/MV5BOGNiYzI2MTgtZGU1ZS00MDU1LWIyNDMtODNmNWYwOGEwMDU0XkEyXkFqcGdeQXVyNzEyODU0NDQ@._V1_SX300.jpg'),
('A Mirror for the Bat','2008','tt1230152','movie','N/A'),
('Bat Fight with Will Ferrell','2009','tt1535001','movie','https://m.media-amazon.com/images/M/MV5BMTkwNzI3MjQyNF5BMl5BanBnXkFtZTgwNTE2MDY2MDI@._V1_SX300.jpg'),
('Bat $#*! Crazy','2011','tt1937100','movie','https://m.media-amazon.com/images/M/MV5BMTM4MDk1ODA0OV5BMl5BanBnXkFtZTcwNDY0Nzg0Ng@@._V1_SX300.jpg'),
('Black Star and the Golden Bat','1979','tt2033956','movie','https://m.media-amazon.com/images/M/MV5BYjhhNTYzOWYtMjc0Mi00N2MxLWJiZWUtOWNlZGJiZjdkZjdiXkEyXkFqcGdeQXVyNjMxNzQ2NTQ@._V1_SX300.jpg'),
('Bat Eyes','2012','tt2185240','movie','N/A'),
('Like a Bat Outta Hell','2013','tt2193167','movie','https://m.media-amazon.com/images/M/MV5BMTkwNDc5NzE2MV5BMl5BanBnXkFtZTgwMDQ0OTA1OTE@._V1_SX300.jpg'),
('Rise of the Black Bat','2012','tt2205589','movie','https://m.media-amazon.com/images/M/MV5BMjMwMTQ2OTU2MF5BMl5BanBnXkFtZTcwMDI0OTU4OA@@._V1_SX300.jpg'),
('The Bat Man of Shanghai','2012','tt2273962','series','https://m.media-amazon.com/images/M/MV5BNDNhYmFjZGQtNjE3ZC00N2VmLWI0MWItODkxMmE2MWNiM2M5XkEyXkFqcGdeQXVyNzU1OTYxNzU@._V1_SX300.jpg'),
('Bat Romance','2012','tt2347162','movie','N/A'),
('Aero the Acro-Bat','1993','tt3102650','game','https://m.media-amazon.com/images/M/MV5BOThjNjY5MDAtZDk3Ny00N2JhLTgwMzgtNjAwNDM0OWVhMmRkXkEyXkFqcGdeQXVyNzg5OTk2OA@@._V1_SX300.jpg');

/*Table structure for table `t_user` */

DROP TABLE IF EXISTS `t_user`;

CREATE TABLE `t_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) DEFAULT NULL,
  `parent` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `t_user` */

insert  into `t_user`(`id`,`user_name`,`parent`) values 
(1,'Ali',2),
(2,'Budi',0),
(3,'Cecep',1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
