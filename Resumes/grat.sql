/*
SQLyog Community v13.1.6 (64 bit)
MySQL - 8.0.31 : Database - flipkart
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`flipkart` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `flipkart`;

/*Table structure for table `orderitemtable` */

DROP TABLE IF EXISTS `orderitemtable`;

CREATE TABLE `orderitemtable` (
  `orderitemid` int NOT NULL,
  `orderid` int DEFAULT NULL,
  `productid` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `unitprize` decimal(18,2) DEFAULT NULL,
  PRIMARY KEY (`orderitemid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `orderitemtable` */

/*Table structure for table `ordertable` */

DROP TABLE IF EXISTS `ordertable`;

CREATE TABLE `ordertable` (
  `orderid` int NOT NULL,
  `customerid` int DEFAULT NULL,
  `orderdate` date DEFAULT NULL,
  `shippingaddress` varchar(255) DEFAULT NULL,
  `totalamt` decimal(18,2) DEFAULT NULL,
  `orderstatus` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`orderid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `ordertable` */

/*Table structure for table `productclass` */

DROP TABLE IF EXISTS `productclass`;

CREATE TABLE `productclass` (
  ` id` int NOT NULL AUTO_INCREMENT,
  `productclassname` varchar(100) DEFAULT NULL,
  `productclassimg` varchar(200) DEFAULT NULL,
  `subnavigation` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `productlink` varchar(200) DEFAULT NULL,
  PRIMARY KEY (` id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `productclass` */

insert  into `productclass`(` id`,`productclassname`,`productclassimg`,`subnavigation`,`productlink`) values 
(1,'Grocery','Images/items/grocery.png',NULL,NULL),
(2,'Beauty','Images/items/beauty.png',NULL,NULL),
(3,'Top Offers','Images/items/topoffers.png',NULL,NULL),
(4,'Mobiles & Tablets','Images/items/mobandtab.png',NULL,NULL),
(5,'Electronics','Images/items/electronins.png',NULL,NULL),
(6,'TVs & Appliances','Images/items/tvandappliances.png',NULL,NULL),
(7,'Fashion','Images/items/fashion.png',NULL,NULL),
(8,'Home & Kitchen','Images/items/homeandkitchen.png',NULL,NULL),
(9,'Furniture','Images/items/furniture.png',NULL,NULL),
(10,'Flights','Images/items/flights.png',NULL,NULL);

/*Table structure for table `productclassitem` */

DROP TABLE IF EXISTS `productclassitem`;

CREATE TABLE `productclassitem` (
  `id` int NOT NULL,
  `productclassid` int DEFAULT NULL,
  `productname` varchar(100) DEFAULT NULL,
  `productprize` decimal(18,2) DEFAULT NULL,
  `productimg` varchar(200) DEFAULT NULL,
  `productdescription` varchar(255) DEFAULT NULL,
  `productstock` decimal(18,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `productclassitem` */

insert  into `productclassitem`(`id`,`productclassid`,`productname`,`productprize`,`productimg`,`productdescription`,`productstock`) values 
(1,1,'abz',123.00,'Images/items/grocery.png','productdesccripton1',10.00),
(2,1,'345',345.00,'Images/items/grocery.png','productdescription2',10.00),
(3,1,'ss',123.00,'Images/items/grocery.png','productdescription3',10.00),
(4,1,'dsfs',25.00,'Images/items/grocery.png','productdescription4',10.00),
(5,1,'dsf',56.00,'Images/items/grocery.png','productdescription5',10.00),
(6,1,'dsf456',589.00,'Images/items/grocery.png','productdescription6',10.00),
(7,1,'fd',45.00,'Images/items/grocery.png','productdescription7',10.00),
(8,1,'fg',12.00,'Images/items/grocery.png','productdescription8',10.00),
(10,1,'ert',34.00,'Images/items/grocery.png','productdescription9',10.00),
(11,1,'fg',45.00,'Images/items/grocery.png','productdescription10',10.00);

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  UNIQUE KEY `username` (`username`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`) values 
(1,'deep','123'),
(3,'deep1','123'),
(4,'deepd','dd'),
(5,'deep25','458'),
(6,'deep89','123');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
