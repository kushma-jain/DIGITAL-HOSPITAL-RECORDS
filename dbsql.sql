/*
SQLyog Ultimate v10.00 Beta1
MySQL - 5.5.27 : Database - hms
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`hms` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `hms`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `updationDate` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `admin` */

insert  into `admin`(`id`,`username`,`password`,`updationDate`) values (1,'admin','Test@12345','28-12-2016 11:42:05 AM');

/*Table structure for table `appointment` */

DROP TABLE IF EXISTS `appointment`;

CREATE TABLE `appointment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `doctorSpecialization` varchar(255) DEFAULT NULL,
  `doctorId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `consultancyFees` int(11) DEFAULT NULL,
  `appointmentDate` varchar(255) DEFAULT NULL,
  `appointmentTime` varchar(255) DEFAULT NULL,
  `postingDate` varchar(255) DEFAULT NULL,
  `userStatus` int(11) DEFAULT NULL,
  `doctorStatus` int(11) DEFAULT NULL,
  `updationDate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `appointment` */

insert  into `appointment`(`id`,`doctorSpecialization`,`doctorId`,`userId`,`consultancyFees`,`appointmentDate`,`appointmentTime`,`postingDate`,`userStatus`,`doctorStatus`,`updationDate`) values (3,'Demo test',7,6,600,'2019-06-29','9:15 AM','2019-06-23 18:31:28',1,0,'0000-00-00 00:00:00'),(4,'Ayurveda',5,5,8050,'2019-11-08','1:00 PM','2019-11-05 10:28:54',1,1,'0000-00-00 00:00:00'),(5,'Dermatologist',9,7,500,'2019-11-30','5:30 PM','2019-11-10 18:41:34',1,0,'2019-11-10 18:48:30'),(6,'2',0,1,0,'','',NULL,1,1,NULL);

/*Table structure for table `doctors` */

DROP TABLE IF EXISTS `doctors`;

CREATE TABLE `doctors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `specilization` varchar(255) DEFAULT NULL,
  `doctorName` varchar(255) DEFAULT NULL,
  `address` longtext,
  `docFees` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `docEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `creationDate` varchar(255) DEFAULT NULL,
  `updationDate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `doctors` */

insert  into `doctors`(`id`,`specilization`,`doctorName`,`address`,`docFees`,`contactno`,`docEmail`,`password`,`creationDate`,`updationDate`) values (1,'Dentist','Anuj','New Delhi','500',8285703354,'anuj.lpu1@gmail.com','Test123','2016-12-29 06:25:37','2019-06-30 12:11:05'),(2,'Homeopath','Sarita Pandey','Varanasi','600',2147483647,'sarita@gmail.com','Test123','2016-12-29 06:51:51','0000-00-00 00:00:00'),(3,'General Physician','Nitesh Kumar','Ghaziabad','1200',8523699999,'nitesh@gmail.com','Test123','2017-01-07 07:43:35','0000-00-00 00:00:00'),(4,'Homeopath','Vijay Verma','New Delhi','700',25668888,'vijay@gmail.com','Test123','2017-01-07 07:45:09','0000-00-00 00:00:00'),(5,'Ayurveda','Sanjeev','Gurugram','8050',442166644646,'sanjeev@gmail.com','Test123','2017-01-07 07:47:07','0000-00-00 00:00:00'),(6,'General Physician','Amrita','New Delhi India','2500',45497964,'amrita@test.com','Test123','2017-01-07 07:52:50','0000-00-00 00:00:00'),(7,'Demo test','abc ','New Delhi India','200',852888888,'test@demo.com','Test123','2017-01-07 08:08:58','2019-06-23 18:17:25'),(8,'Ayurveda','Test Doctor','Xyz Abc New Delhi','600',1234567890,'test@test.com','Test123','2019-06-23 17:57:43','2019-06-23 18:06:06'),(9,'Dermatologist','Anuj kumar','New Delhi India 110001','500',1234567890,'anujk@test.com','Test123','2019-11-10 18:37:47','2019-11-10 18:37:47'),(10,'Dermatologist','aarthi','RajajiNagar','250',9886239083,'aarthi@gmail.com','Test123','2019-11-10 18:37:47','2019-11-10 18:37:47');

/*Table structure for table `doctorslog` */

DROP TABLE IF EXISTS `doctorslog`;

CREATE TABLE `doctorslog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` varchar(255) DEFAULT NULL,
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `doctorslog` */

insert  into `doctorslog`(`id`,`uid`,`username`,`userip`,`loginTime`,`logout`,`status`) values (1,NULL,'saritha@gmail.com','::1\0\0\0\0\0\0\0\0\0\0\0\0\0',NULL,NULL,0),(2,NULL,'saritha@gmail.com','::1\0\0\0\0\0\0\0\0\0\0\0\0\0',NULL,NULL,0),(3,2,'sarita@gmail.com','::1\0\0\0\0\0\0\0\0\0\0\0\0\0',NULL,'12-04-2020 07:59:08 PM',1),(4,2,'sarita@gmail.com','::1\0\0\0\0\0\0\0\0\0\0\0\0\0',NULL,NULL,1),(5,10,'aarthi@gmail.com','::1\0\0\0\0\0\0\0\0\0\0\0\0\0',NULL,NULL,1);

/*Table structure for table `doctorspecilization` */

DROP TABLE IF EXISTS `doctorspecilization`;

CREATE TABLE `doctorspecilization` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `specilization` varchar(255) DEFAULT NULL,
  `creationDate` varchar(255) DEFAULT NULL,
  `updationDate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

/*Data for the table `doctorspecilization` */

insert  into `doctorspecilization`(`id`,`specilization`,`creationDate`,`updationDate`) values (1,'Gynecologist/Obstetrician','2016-12-28 06:37:25','0000-00-00 00:00:00'),(2,'General Physician','2016-12-28 06:38:12','0000-00-00 00:00:00'),(3,'Dermatologist','2016-12-28 06:38:48','0000-00-00 00:00:00'),(4,'Homeopath','2016-12-28 06:39:26','0000-00-00 00:00:00'),(5,'Ayurveda','2016-12-28 06:39:51','0000-00-00 00:00:00'),(6,'Dentist','2016-12-28 06:40:08','0000-00-00 00:00:00'),(7,'Ear-Nose-Throat (Ent) Specialist','2016-12-28 06:41:18','0000-00-00 00:00:00'),(9,'Demo test','2016-12-28 07:37:39','0000-00-00 00:00:00'),(10,'Bones Specialist demo','2017-01-07 08:07:53','0000-00-00 00:00:00'),(11,'Test','2019-06-23 17:51:06','2019-06-23 17:55:06'),(12,'Dermatologist','2019-11-10 18:36:36','2019-11-10 18:36:50'),(16,'Heart Surgeon','2020-04-12 04:43:07','2020-04-12 04:43:07');

/*Table structure for table `hruserlog` */

DROP TABLE IF EXISTS `hruserlog`;

CREATE TABLE `hruserlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `hruserlog` */

insert  into `hruserlog`(`id`,`uid`,`username`,`userip`,`loginTime`,`logout`,`status`) values (0,1,'hrm@gmail.com','::1\0\0\0\0\0\0\0\0\0\0\0\0\0','2020-04-12 08:13:20',NULL,1),(0,1,'hrm@gmail.com','127.0.0.1\0\0\0\0\0\0\0','2020-04-12 13:00:40',NULL,1);

/*Table structure for table `hrusers` */

DROP TABLE IF EXISTS `hrusers`;

CREATE TABLE `hrusers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fullName` varchar(255) DEFAULT NULL,
  `address` longtext,
  `city` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `qualification` varchar(255) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `hrusers` */

insert  into `hrusers`(`id`,`fullName`,`address`,`city`,`gender`,`email`,`password`,`qualification`,`regDate`) values (1,'hrm','RajajiNagar','Bangalore','female','hrm@gmail.com','Test@123','Bcom','2020-04-12 08:09:57');

/*Table structure for table `tblcontactus` */

DROP TABLE IF EXISTS `tblcontactus`;

CREATE TABLE `tblcontactus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(12) DEFAULT NULL,
  `message` mediumtext,
  `PostingDate` varchar(255) DEFAULT NULL,
  `AdminRemark` mediumtext,
  `LastupdationDate` varchar(255) DEFAULT NULL,
  `IsRead` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `tblcontactus` */

insert  into `tblcontactus`(`id`,`fullname`,`email`,`contactno`,`message`,`PostingDate`,`AdminRemark`,`LastupdationDate`,`IsRead`) values (1,'test user','test@gmail.com',2523523522523523,' This is sample text for the test.','2019-06-29 19:03:08','Test Admin Remark','2019-06-30 12:55:23',1),(2,'Anuj kumar','phpgurukulofficial@gmail.com',1111111111111111,' This is sample text for testing.  This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing.','2019-06-30 13:06:50',NULL,NULL,NULL),(3,'fdsfsdf','fsdfsd@ghashhgs.com',3264826346,'sample text   sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  ','2019-11-10 18:53:48','vfdsfgfd','2019-11-10 18:54:04',1);

/*Table structure for table `tblmedicalhistory` */

DROP TABLE IF EXISTS `tblmedicalhistory`;

CREATE TABLE `tblmedicalhistory` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `PatientID` int(10) DEFAULT NULL,
  `BloodPressure` varchar(200) DEFAULT NULL,
  `BloodSugar` varchar(200) NOT NULL,
  `Weight` varchar(100) DEFAULT NULL,
  `Temperature` varchar(200) DEFAULT NULL,
  `MedicalPres` mediumtext,
  `CreationDate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `tblmedicalhistory` */

insert  into `tblmedicalhistory`(`ID`,`PatientID`,`BloodPressure`,`BloodSugar`,`Weight`,`Temperature`,`MedicalPres`,`CreationDate`) values (2,3,'120/185','80/120','85 Kg','101 degree','#Fever, #BP high\r\n1.Paracetamol\r\n2.jocib tab\r\n','2019-11-06 04:20:07'),(3,2,'90/120','92/190','86 kg','99 deg','#Sugar High\r\n1.Petz 30','2019-11-06 04:31:24'),(4,1,'125/200','86/120','56 kg','98 deg','# blood pressure is high\r\n1.koil cipla','2019-11-06 04:52:42'),(5,1,'96/120','98/120','57 kg','102 deg','#Viral\r\n1.gjgjh-1Ml\r\n2.kjhuiy-2M','2019-11-06 04:56:55'),(6,4,'90/120','120','56','98 F','#blood sugar high\r\n#Asthma problem','2019-11-06 14:38:33'),(7,5,'80/120','120','85','98.6','Rx\r\n\r\nAbc tab\r\nxyz Syrup','2019-11-10 18:50:23');

/*Table structure for table `tblpatient` */

DROP TABLE IF EXISTS `tblpatient`;

CREATE TABLE `tblpatient` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `Docid` int(10) DEFAULT NULL,
  `PatientName` varchar(200) DEFAULT NULL,
  `PatientContno` bigint(10) DEFAULT NULL,
  `PatientEmail` varchar(200) DEFAULT NULL,
  `PatientGender` varchar(50) DEFAULT NULL,
  `PatientAdd` mediumtext,
  `PatientAge` int(10) DEFAULT NULL,
  `PatientMedhis` mediumtext,
  `CreationDate` varchar(255) DEFAULT NULL,
  `UpdationDate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `tblpatient` */

insert  into `tblpatient`(`ID`,`Docid`,`PatientName`,`PatientContno`,`PatientEmail`,`PatientGender`,`PatientAdd`,`PatientAge`,`PatientMedhis`,`CreationDate`,`UpdationDate`) values (1,1,'Manisha Jha',4558968789,'test@gmail.com','Female','\"\"J&K Block J-127, Laxmi Nagar New Delhi',26,'She is diabetic patient','2019-11-04 21:38:06','2019-11-06 06:48:05'),(2,5,'Raghu Yadav',9797977979,'raghu@gmail.com','Male','ABC Apartment Mayur Vihar Ph-1 New Delhi',39,'No','2019-11-05 10:40:13','2019-11-05 11:53:45'),(3,7,'Mansi',9878978798,'jk@gmail.com','Female','\"fdghyj',46,'No','2019-11-05 10:49:41','2019-11-05 11:58:59'),(4,7,'Manav Sharma',9888988989,'sharma@gmail.com','Male','L-56,Ashok Nagar New Delhi-110096',45,'He is long suffered by asthma','2019-11-06 14:33:54','2019-11-06 14:34:31'),(5,9,'John',1234567890,'john@test.com','male','Test ',25,'THis is sample text for testing.','2019-11-10 18:49:24',NULL);

/*Table structure for table `userlog` */

DROP TABLE IF EXISTS `userlog`;

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` varchar(255) DEFAULT NULL,
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `userlog` */

insert  into `userlog`(`id`,`uid`,`username`,`userip`,`loginTime`,`logout`,`status`) values (1,NULL,'hrm@gmail.com','::1\0\0\0\0\0\0\0\0\0\0\0\0\0',NULL,NULL,0),(2,NULL,'hrm@gmail.com','::1\0\0\0\0\0\0\0\0\0\0\0\0\0',NULL,NULL,0),(3,NULL,'hrm@gmail.com','::1\0\0\0\0\0\0\0\0\0\0\0\0\0',NULL,NULL,0);

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fullName` varchar(255) DEFAULT NULL,
  `address` longtext,
  `city` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `regDate` varchar(255) DEFAULT NULL,
  `updationDate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `users` */

insert  into `users`(`id`,`fullName`,`address`,`city`,`gender`,`email`,`password`,`regDate`,`updationDate`) values (2,'Sarita pandey','New Delhi India','Delhi','female','test@gmail.com','Test123','2016-12-30 05:34:39','0000-00-00 00:00:00'),(3,'Amit','New Delhi','New delhi','male','amit@gmail.com','Test123','2017-01-07 06:36:53','0000-00-00 00:00:00'),(4,'Rahul Singh','New Delhi','New delhi','male','rahul@gmail.com','Test123','2017-01-07 07:41:14','0000-00-00 00:00:00'),(5,'Amit kumar','New Delhi India','Delhi','male','amit12@gmail.com','Test123','2017-01-07 08:00:26','0000-00-00 00:00:00'),(6,'Test user','New Delhi','Delhi','male','tetuser@gmail.com','Test123','2019-06-23 18:24:53','2019-06-23 18:36:09'),(7,'John','USA','Newyork','male','john@test.com','Test123','2019-11-10 18:40:21','2019-11-10 18:40:51');

/*Table structure for table `usersattendance` */

DROP TABLE IF EXISTS `usersattendance`;

CREATE TABLE `usersattendance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `contactnum` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `attendancedate` varchar(255) DEFAULT NULL,
  `attendance` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `usersattendance` */

insert  into `usersattendance`(`id`,`uid`,`fullName`,`address`,`contactnum`,`email`,`attendancedate`,`attendance`) values (1,1,'Sarita pandey','New Delhi India','9886239083','test@gmail.com','2020-04-15','Present'),(2,10,'aarthi','Karnataka','9886239083','aarthi@gmail.com','2020-06-15','Present');

/*Table structure for table `userssalary` */

DROP TABLE IF EXISTS `userssalary`;

CREATE TABLE `userssalary` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `contactnum` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `salary` varchar(255) DEFAULT NULL,
  `month_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `userssalary` */

insert  into `userssalary`(`id`,`uid`,`fullName`,`address`,`contactnum`,`email`,`salary`,`month_name`) values (1,1,'Sarita pandey','New Delhi India','9886239083','test@gmail.com','15000','Jan'),(2,10,'aarthi','karnataka','9886239083','aarthi@gmail.com','1250','Feb');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
