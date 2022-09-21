-- MySQL dump 10.13  Distrib 5.7.33, for macos10.12 (x86_64)
--
-- Host: 127.0.0.1    Database: ComfyHotel
-- ------------------------------------------------------
-- Server version	5.7.33-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT = @@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS = @@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION = @@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE = @@TIME_ZONE */;
/*!40103 SET TIME_ZONE = '+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS = @@UNIQUE_CHECKS, UNIQUE_CHECKS = 0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS = @@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS = 0 */;
/*!40101 SET @OLD_SQL_MODE = @@SQL_MODE, SQL_MODE = 'NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES = @@SQL_NOTES, SQL_NOTES = 0 */;

DROP DATABASE IF EXISTS `ComfyHotel`;
CREATE DATABASE ComfyHotel;
USE ComfyHotel;

--
-- Table structure for table `user`
--

SET NAMES utf8mb4;
DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user`
(
    `user_id` bigint(20) NOT NULL AUTO_INCREMENT,
    `email` varchar(100) NOT NULL UNIQUE COMMENT 'email',
    `username` varchar(64) NOT NULL UNIQUE COMMENT 'username',
    `first_name` varchar(64) NOT NULL COMMENT 'user first name',
    `last_name` varchar(64) NOT NULL COMMENT 'user last name',
    `password` varchar(64) NOT NULL COMMENT 'password',
    `phone` varchar(20) COMMENT 'mobile phone number',
    `phone_country_code` varchar(4) COMMENT 'country code of mobile phone number',
    `avatar` varchar(100) COMMENT 'avatar',
    `address` varchar(100) COMMENT 'street address',
    `city` varchar(100) COMMENT 'city',
    `state` varchar(100) COMMENT 'state',
    `zip_code` varchar(20) COMMENT 'zip code',
    `credit` tinyint NOT NULL DEFAULT 100 COMMENT 'credit score',
    PRIMARY KEY (`user_id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 1
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hotel`
--

SET NAMES utf8mb4;
DROP TABLE IF EXISTS `hotel`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hotel`
(
    `hotel_id` bigint(20) NOT NULL AUTO_INCREMENT,
    `name` varchar(100) NOT NULL COMMENT 'hotel name',
    `description` text COMMENT 'hotel description',
    `rate` double DEFAULT 0 COMMENT 'hotel rate',
    `address` varchar(100) COMMENT 'street address',
    `city` varchar(100) COMMENT 'city',
    `state` varchar(100) COMMENT 'state',
    PRIMARY KEY (`hotel_id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 1
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `manager`
--

SET NAMES utf8mb4;
DROP TABLE IF EXISTS `manager`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `manager`
(
    `manager_id` bigint(20) NOT NULL AUTO_INCREMENT,
    `username` varchar(64) NOT NULL UNIQUE COMMENT 'manager name',
    `hotel_id` bigint(20) NOT NULL COMMENT 'hotel he belongs to',
    `password` varchar(64) NOT NULL COMMENT 'password',
    `role` tinyint NOT NULL COMMENT 'if boss: 0->no, 1->yes',
    PRIMARY KEY (`manager_id`),
    FOREIGN KEY(hotel_id) REFERENCES hotel(hotel_id) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB
  AUTO_INCREMENT = 1
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hotel_image`
--

SET NAMES utf8mb4;
DROP TABLE IF EXISTS `hotel_image`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hotel_image`
(
    `hotel_image_id` bigint(20) NOT NULL AUTO_INCREMENT,
    `hotel_id` bigint(20) NOT NULL COMMENT 'hotel it belongs to',
    `url` varchar(100) NOT NULL COMMENT 'url',
    PRIMARY KEY (`hotel_image_id`),
    FOREIGN KEY(hotel_id) REFERENCES hotel(hotel_id) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB
  AUTO_INCREMENT = 1
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `room`
--

SET NAMES utf8mb4;
DROP TABLE IF EXISTS `room`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `room`
(
    `room_id` bigint(20) NOT NULL AUTO_INCREMENT,
    `hotel_id` bigint(20) NOT NULL COMMENT 'hotel it belongs to',
    `name` varchar(100) NOT NULL COMMENT 'room name',
    `description` varchar(500) COMMENT 'room description',
    `total` int DEFAULT 0 COMMENT 'total room number',
    `remaining` int NOT NULL COMMENT 'remaining room number',
    `facility` varchar(500) NOT NULL COMMENT 'room facility',
    `price` double DEFAULT 0 COMMENT 'unit price',
    PRIMARY KEY (`room_id`),
    FOREIGN KEY(hotel_id) REFERENCES hotel(hotel_id) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB
  AUTO_INCREMENT = 1
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `room_image`
--

SET NAMES utf8mb4;
DROP TABLE IF EXISTS `room_image`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `room_image`
(
    `room_image_id` bigint(20) NOT NULL AUTO_INCREMENT,
    `room_id` bigint(20) NOT NULL COMMENT 'room it belongs to',
    `url` varchar(100) NOT NULL COMMENT 'url',
    PRIMARY KEY (`room_image_id`),
    FOREIGN KEY(room_id) REFERENCES room(room_id) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB
  AUTO_INCREMENT = 1
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `reservation`
--

SET NAMES utf8mb4;
DROP TABLE IF EXISTS `reservation`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reservation`
(
    `reservation_id` bigint(20) NOT NULL AUTO_INCREMENT,
    `user_id` bigint(20) NOT NULL COMMENT 'user it belongs to',
    `time` datetime NOT NULL COMMENT 'reservation time',
    `check_in_date` date NOT NULL COMMENT 'check-in date',
    `check_out_date` date NOT NULL COMMENT 'check-out date',
    `tax` double NOT NULL DEFAULT 0 COMMENT 'tax fee',
    `destination` double NOT NULL DEFAULT 0 COMMENT 'destination fee',
    `total_cost` double NOT NULL DEFAULT 0 COMMENT 'total cost',
    `adult` tinyint NOT NULL DEFAULT 0 COMMENT 'adults number',
    `child` tinyint NOT NULL DEFAULT 0 COMMENT 'children number',
    PRIMARY KEY (`reservation_id`),
    FOREIGN KEY(user_id) REFERENCES user(user_id) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB
  AUTO_INCREMENT = 1
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `reservation_room`
--

SET NAMES utf8mb4;
DROP TABLE IF EXISTS `reservation_room`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reservation_room`
(
    `reservation_room_id` bigint(20) NOT NULL AUTO_INCREMENT,
    `reservation_id` bigint(20) NOT NULL,
    `room_id` bigint(20) NOT NULL,
    `number` int NOT NULL COMMENT 'room number',
    `unit_price` double NOT NULL COMMENT 'unit price when reservationed',
    PRIMARY KEY (`reservation_room_id`),
    FOREIGN KEY(reservation_id) REFERENCES reservation(reservation_id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY(room_id) REFERENCES room(room_id) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB
  AUTO_INCREMENT = 1
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `service`
--

SET NAMES utf8mb4;
DROP TABLE IF EXISTS `service`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `service`
(
    `service_id` bigint(20) NOT NULL AUTO_INCREMENT,
    `name` varchar(100) NOT NULL COMMENT 'service name',
    `description` varchar(500) COMMENT 'service description',
    PRIMARY KEY (`service_id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 1
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `reservation_service`
--

SET NAMES utf8mb4;
DROP TABLE IF EXISTS `reservation_service`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reservation_service`
(
    `reservation_service_id` bigint(20) NOT NULL AUTO_INCREMENT,
    `reservation_id` bigint(20) NOT NULL,
    `service_id` bigint(20) NOT NULL,
    `time` datetime NOT NULL COMMENT 'reservation service time',
    PRIMARY KEY (`reservation_service_id`),
    FOREIGN KEY(reservation_id) REFERENCES reservation(reservation_id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY(service_id) REFERENCES service(service_id) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB
  AUTO_INCREMENT = 1
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `comment`
--

SET NAMES utf8mb4;
DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comment`
(
    `comment_id` bigint(20) NOT NULL AUTO_INCREMENT,
    `reservation_id` bigint(20) NOT NULL,
    `rate` tinyint NOT NULL DEFAULT 5 COMMENT 'comment rate: 0-5',
    `time` datetime NOT NULL COMMENT 'comment time',
    PRIMARY KEY (`comment_id`),
    FOREIGN KEY(reservation_id) REFERENCES reservation(reservation_id) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB
  AUTO_INCREMENT = 1
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `coupon`
--

SET NAMES utf8mb4;
DROP TABLE IF EXISTS `coupon`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coupon`
(
    `coupon_id` bigint(20) NOT NULL AUTO_INCREMENT,
    `name` varchar(100) NOT NULL COMMENT 'coupon name',
    `type` tinyint NOT NULL DEFAULT 0 COMMENT 'coupon type: 0->rebate, 1->rebate every, 2->discount',
    `start_date` date NOT NULL COMMENT 'start date',
    `end_date` date NOT NULL COMMENT 'end date',
    `status` tinyint DEFAULT 0 NOT NULL COMMENT 'if available: available->1, not->0',
    `target_money` double DEFAULT 0 NOT NULL COMMENT 'target money',
    `rebate` double DEFAULT 0 NOT NULL COMMENT 'rebate money',
    `discounts` tinyint DEFAULT 100 NOT NULL COMMENT 'discount: 0-100',
    PRIMARY KEY (`coupon_id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 1
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `room_coupon`
--

SET NAMES utf8mb4;
DROP TABLE IF EXISTS `room_coupon`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `room_coupon`
(
    `room_coupon_id` bigint(20) NOT NULL AUTO_INCREMENT,
    `room_id` bigint(20) NOT NULL,
    `coupon_id` bigint(20) NOT NULL,
    PRIMARY KEY (`room_coupon_id`),
    FOREIGN KEY(room_id) REFERENCES room(room_id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY(coupon_id) REFERENCES coupon(coupon_id) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB
  AUTO_INCREMENT = 1
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `reservation_room_coupon`
--

SET NAMES utf8mb4;
DROP TABLE IF EXISTS `reservation_room_coupon`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reservation_room_coupon`
(
    `reservation_room_coupon_id` bigint(20) NOT NULL AUTO_INCREMENT,
    `reservation_room_id` bigint(20) NOT NULL,
    `coupon_id` bigint(20) NOT NULL,
    PRIMARY KEY (`reservation_room_coupon_id`),
    FOREIGN KEY(reservation_room_id) REFERENCES reservation_room(reservation_room_id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY(coupon_id) REFERENCES coupon(coupon_id) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB
  AUTO_INCREMENT = 1
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `discount`
--

SET NAMES utf8mb4;
DROP TABLE IF EXISTS `discount`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discount`
(
    `discount_id` bigint(20) NOT NULL AUTO_INCREMENT,
    `discounts` tinyint DEFAULT 100 NOT NULL COMMENT 'discount: 0-100',
    `start_date` date NOT NULL COMMENT 'start date',
    `end_date` date NOT NULL COMMENT 'end date',
    PRIMARY KEY (`discount_id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 1
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `room_discount`
--

SET NAMES utf8mb4;
DROP TABLE IF EXISTS `room_discount`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `room_discount`
(
    `room_discount_id` bigint(20) NOT NULL AUTO_INCREMENT,
    `room_id` bigint(20) NOT NULL,
    `discount_id` bigint(20) NOT NULL,
    PRIMARY KEY (`room_discount_id`),
    FOREIGN KEY(room_id) REFERENCES room(room_id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY(discount_id) REFERENCES discount(discount_id) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB
  AUTO_INCREMENT = 1
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `reservation_room_discount`
--

SET NAMES utf8mb4;
DROP TABLE IF EXISTS `reservation_room_discount`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reservation_room_discount`
(
    `reservation_room_discount_id` bigint(20) NOT NULL AUTO_INCREMENT,
    `reservation_room_id` bigint(20) NOT NULL,
    `discount_id` bigint(20) NOT NULL,
    PRIMARY KEY (`reservation_room_discount_id`),
    FOREIGN KEY(reservation_room_id) REFERENCES reservation_room(reservation_room_id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY(discount_id) REFERENCES discount(discount_id) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB
  AUTO_INCREMENT = 1
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

