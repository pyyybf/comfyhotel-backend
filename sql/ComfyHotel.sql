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
    `hotel_id` bigint(20) COMMENT 'hotel he belongs to, user/admin is null',
    `role` varchar(1) NOT NULL DEFAULT 'U' COMMENT 'user role: U->user, M->manager, B->boss, A->admin',
    PRIMARY KEY (`user_id`),
    FOREIGN KEY(hotel_id) REFERENCES hotel(hotel_id) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB
  AUTO_INCREMENT = 1
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

BEGIN;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
INSERT INTO user
VALUES (1, 'admin@gmail.com', 'admin', 'Yue', 'Pan', '$2a$10$3NG0u6Px687NO3CoBsOF5uOCqdGBYeS1CGJmTDE/rqKGwu/MxDMzu', NULL, NULL, '', NULL, NULL, NULL, NULL, 100, NULL, 'A');
INSERT INTO user
VALUES (2, 'pyyybf@gmail.com', 'pyyybf', 'Yue', 'Pan', '$2a$10$3NG0u6Px687NO3CoBsOF5uOCqdGBYeS1CGJmTDE/rqKGwu/MxDMzu', '2134485795', '1', '', '1325 W 24th St', 'Los Angeles', 'California', '90007', 98, NULL, 'U');
INSERT INTO user
VALUES (3, 'user3@gmail.com', 'boss1', 'Dietz', 'Farnleitner', '$2a$10$3NG0u6Px687NO3CoBsOF5uOCqdGBYeS1CGJmTDE/rqKGwu/MxDMzu', NULL, NULL, '', NULL, NULL, NULL, NULL, 100, 1, 'B');
INSERT INTO user
VALUES (4, 'user4@gmail.com', 'manager1_1', 'Gillner', 'Zhang', '$2a$10$3NG0u6Px687NO3CoBsOF5uOCqdGBYeS1CGJmTDE/rqKGwu/MxDMzu', NULL, NULL, '', NULL, NULL, NULL, NULL, 100, 1, 'M');
INSERT INTO user
VALUES (5, 'user5@gmail.com', 'manager1_2', 'Maimaitiyiming', 'Girotti', '$2a$10$3NG0u6Px687NO3CoBsOF5uOCqdGBYeS1CGJmTDE/rqKGwu/MxDMzu', NULL, NULL, '', NULL, NULL, NULL, NULL, 100, 1, 'M');
INSERT INTO user
VALUES (6, 'user6@gmail.com', 'boss2', 'Joehrer', 'Prien', '$2a$10$3NG0u6Px687NO3CoBsOF5uOCqdGBYeS1CGJmTDE/rqKGwu/MxDMzu', NULL, NULL, '', NULL, NULL, NULL, NULL, 100, 2, 'B');
INSERT INTO user
VALUES (7, 'user7@gmail.com', 'manager2_1', 'Vendramin', 'Girotti', '$2a$10$3NG0u6Px687NO3CoBsOF5uOCqdGBYeS1CGJmTDE/rqKGwu/MxDMzu', NULL, NULL, '', NULL, NULL, NULL, NULL, 100, 2, 'M');
INSERT INTO user
VALUES (8, 'user8@gmail.com', 'manager2_2', 'Joehrer', 'Zhang', '$2a$10$3NG0u6Px687NO3CoBsOF5uOCqdGBYeS1CGJmTDE/rqKGwu/MxDMzu', NULL, NULL, '', NULL, NULL, NULL, NULL, 100, 2, 'M');
INSERT INTO user
VALUES (9, 'user9@gmail.com', 'boss3', 'Joehrer', 'Boese', '$2a$10$3NG0u6Px687NO3CoBsOF5uOCqdGBYeS1CGJmTDE/rqKGwu/MxDMzu', NULL, NULL, '', NULL, NULL, NULL, NULL, 100, 3, 'B');
INSERT INTO user
VALUES (10, 'user10@gmail.com', 'manager3_1', 'Gillner', 'Farnleitner', '$2a$10$3NG0u6Px687NO3CoBsOF5uOCqdGBYeS1CGJmTDE/rqKGwu/MxDMzu', NULL, NULL, '', NULL, NULL, NULL, NULL, 100, 3, 'M');
INSERT INTO user
VALUES (11, 'user11@gmail.com', 'manager3_2', 'Maimaitiyiming', 'Maharaj', '$2a$10$3NG0u6Px687NO3CoBsOF5uOCqdGBYeS1CGJmTDE/rqKGwu/MxDMzu', NULL, NULL, '', NULL, NULL, NULL, NULL, 100, 3, 'M');
INSERT INTO user
VALUES (12, 'user12@gmail.com', 'boss4', 'Ritter', 'Moeyens', '$2a$10$3NG0u6Px687NO3CoBsOF5uOCqdGBYeS1CGJmTDE/rqKGwu/MxDMzu', NULL, NULL, '', NULL, NULL, NULL, NULL, 100, 4, 'B');
INSERT INTO user
VALUES (13, 'user13@gmail.com', 'manager4_1', 'Ritter', 'Boese', '$2a$10$3NG0u6Px687NO3CoBsOF5uOCqdGBYeS1CGJmTDE/rqKGwu/MxDMzu', NULL, NULL, '', NULL, NULL, NULL, NULL, 100, 4, 'M');
INSERT INTO user
VALUES (14, 'user14@gmail.com', 'manager4_2', 'Ritter', 'Zhang', '$2a$10$3NG0u6Px687NO3CoBsOF5uOCqdGBYeS1CGJmTDE/rqKGwu/MxDMzu', NULL, NULL, '', NULL, NULL, NULL, NULL, 100, 4, 'M');
INSERT INTO user
VALUES (15, 'user15@gmail.com', 'boss5', 'Gillner', 'Moeyens', '$2a$10$3NG0u6Px687NO3CoBsOF5uOCqdGBYeS1CGJmTDE/rqKGwu/MxDMzu', NULL, NULL, '', NULL, NULL, NULL, NULL, 100, 5, 'B');
INSERT INTO user
VALUES (16, 'user16@gmail.com', 'manager5_1', 'Joehrer', 'Girotti', '$2a$10$3NG0u6Px687NO3CoBsOF5uOCqdGBYeS1CGJmTDE/rqKGwu/MxDMzu', NULL, NULL, '', NULL, NULL, NULL, NULL, 100, 5, 'M');
INSERT INTO user
VALUES (17, 'user17@gmail.com', 'manager5_2', 'Lammle', 'Girotti', '$2a$10$3NG0u6Px687NO3CoBsOF5uOCqdGBYeS1CGJmTDE/rqKGwu/MxDMzu', NULL, NULL, '', NULL, NULL, NULL, NULL, 100, 5, 'M');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
COMMIT;

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
    `star` tinyint NOT NULL COMMENT 'star of hotel',
    `description` text COMMENT 'hotel description',
    `rate` double DEFAULT 0 COMMENT 'hotel rate',
    `address` varchar(100) COMMENT 'street address',
    `city` varchar(100) COMMENT 'city',
    `state` varchar(100) COMMENT 'state',
    `cover_image` varchar(100) COMMENT 'url of cover image',
    PRIMARY KEY (`hotel_id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 1
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotel`
--

BEGIN;
/*!40000 ALTER TABLE `hotel` ENABLE KEYS */;
INSERT INTO hotel
VALUES (1, 'Millennium Biltmore Los Angeles', 4, 'Hotel Features\nLocated in downtown Los Angeles, this luxurious design hotel is just a 4-minute walk from Pershing Square Subway Station. Millennium Biltmore Hotel provides on-site dining, an indoor pool, and rooms with satellite TV. Dining options include Rendezvous Court Cafe and Gallery Bar. Decorated in rich, warm colors, the guest rooms provide a safe and a work desk. Each room has a coffee maker as well. The marble bathrooms include a hairdryer. Guests at Biltmore Millennium Hotel can swim in the Roman-style indoor pool. They can also work out in the gym. The hotel is within an 8-minute walk from The Museum of Contemporary Art and Walt Disney Concert Hall.\nHotel Location\nDoes it look familiar? You\'ve probably seen it in a movie, since L.A. is one of the top sites for production in the country. You\'re guaranteed to experience something new in the heart of this highly diverse metropolitan area. Downtown is the site of the city\'s many cultural neighborhoods and the financial district. Shopping is certainly not in short supply. Museums include the Museum of Contemporary Art and the Museum of Neon Art. Some of the places you may consider visiting are the Walt Disney Concert Hall, the Civic Center, the STAPLES Center, the Los Angeles Convention Center and lastly, Dodger Stadium, which is just a few miles away.', 7.3, '506 South Grand Avenue', 'Los Angeles', 'California');
INSERT INTO hotel
VALUES (2, 'Hotel Per La', 5, 'Hotel Features\nLocated in the center of Downtown, Per LA is a hotel inspired by the building in which it’s housed. Originally the Bank of Italy, a historic 12-story building on the corner of Olive and 7th Street, the space is a symbol of inclusion and accomplishment. All rooms feature original artwork from a Paris-based design studio and are dressed in custom-designed furnishings and luxury linens. Many include standalone pedestal bathtubs and separate rooms for wash closets. Rooms also include desks, a fully stocked mini-bar, toiletries, and bathrobes. Guests can utilize the 24-hour fitness or lounge in the rooftop pool and bar. From the rooftop, guests can take in panoramic views of downtown Los Angeles or enjoy a cup of coffee from the outdoor cafe. There is a 24-hour front desk and valet parking at the property. The Grove is 6 mi from the hotel, while TCL Chinese Theater is 6.2 mi away. Walt Disney Concert Hall is 0.7 mi away. The nearest airport is Los Angeles International Airport, 11 mi from the property.\nHotel Location\nDoes it look familiar? You\'ve probably seen it in a movie, since L.A. is one of the top sites for production in the country. You\'re guaranteed to experience something new in the heart of this highly diverse metropolitan area. Downtown is the site of the city\'s many cultural neighborhoods and the financial district. Shopping is certainly not in short supply. Museums include the Museum of Contemporary Art and the Museum of Neon Art. Some of the places you may consider visiting are the Walt Disney Concert Hall, the Civic Center, the STAPLES Center, the Los Angeles Convention Center and lastly, Dodger Stadium, which is just a few miles away.', 8.2, '649 South Olive Street', 'Los Angeles', 'California');
INSERT INTO hotel
VALUES (3, 'Boston Park Plaza Hotel', 4, 'Hotel Features\nEstablished in 1927, Boston Park Plaza is located in the Theater District in Boston, 459 feet from Boston Public Garden, 1148 feet from Boston Common and 1476 feet from John Hancock Tower. Guests can enjoy the on-site restaurant. Certain rooms have a seating area for your convenience. A flat-screen TV with cable channels and Chromecast® streaming capabilities, black out shades and a refrigerator are also offered. Off The Common, Park Plaza’s signature restaurant, offers fresh and locally inspired cuisine. A seasonal menu is available for room service. Connected to the lobby is STRIP by Strega, a contemporary steakhouse in Boston offering fresh seafood, reinterpreted sides and specialty steaks and chops and creative cocktails. Coffee and small bites are available at Starbucks®, located just off the main lobby. There is a gift shop at the property and a 24-hour on-site FedEx business center is also available featuring personal computers, laptop connection, printing, and faxing. Meeting facilities are also featured at Boston Park Plaza. There are two fitness facilities on-site, a fitness center and Lynx, offering personal training and group fitness classes, as well as Boston’s first Topgolf Swing Suite. Concierge services are provided at this pet-friendly hotel. Newbury Street is 722 feet away from Park Plaza. King\'s Chapel and Burying Ground is 1312 feet from Boston Park Plaza, while Freedom Trail is 2625 feet away. The nearest airport is Logan Airport, 5.3 mi from Boston Park Plaza.\nHotel Location\nA few blocks from downtown Boston and the Financial District, this gorgeous area includes Boston\'s two main parks - Boston Common and the Public Garden, whose lake is a guaranteed family pleaser with its Swan Boats and actual swans. Just south of the parks is Boston\'s highly acclaimed theater district (also noted for its world-class dining), while to the southeast is one of the oldest and most colorful Chinatowns in the country.', 8.1, '50 Park Plaza At Arlington Street', 'Boston', 'Massachusetts');
INSERT INTO hotel
VALUES (4, 'Row NYC', 4, 'Hotel Features\nOffering a front row view to Times Square, this Theater District hotel features a fitness center, concierge service and a business center. Rockefeller Center is a short walking distance away. A flat-screen cable TV, iPod docking station and safe for a laptop are offered in each room at Row NYC. Blackout curtains and a desk are also included. Row NYC is a family and pet-friendly hotel. Located in the lobby, the District M Bar serves a daily continental breakfast each morning. In the evening, District M comes alive featuring a digital art gallery, drinks including a specialty cocktail list, dinner and live music (Thursday - Saturday). The on-site Sugar Factory offers an assortment of pastries, milkshakes, sandwiches, ice cream sundaes and more. For added convenience, information and arrangements for shows, transportation and shopping are available through the concierge services Plenty of shops and dining are within walking distance of the hotel. Radio City Music Hall, Madison Square Garden, the Empire State Building, and Javits Convention Center are 15 minutes’ walk away.\nHotel Location\nA half-million people pass through Times Square every day, making it the world\'s most popular tourist attraction. It shines brightest at night, and the best place to take it all in is from the giant red staircase above the TKTS booth, where discount, same-day Broadway tickets can be purchased. Theater buffs and families will have a field day in the Times Square area, where they\'ll find live shows, plenty of restaurants and lots of action.', 6.8, '700 Eighth Avenue', 'New York', 'New York');
INSERT INTO hotel
VALUES (5, 'Treasure Island - TI Las Vegas Hotel & Casino, a Radisson Hotel', 4, 'Hotel Features\nLocated directly on the Las Vegas Strip, this hotel and casino features a variety of restaurants, bars, a spa and a seasonal outdoor pool. All guest rooms feature a flat-screen LCD TV with digital cable and pay-per-view channels. Guest rooms at the Treasure Island - TI Las Vegas Hotel & Casino, a Radisson Hotel offer floor-to-ceiling windows with views of the mountains and the Las Vegas Strip. The air-conditioned rooms are equipped a large work desk, a small fridge and a laptop safe. A hairdryer, a lighted makeup mirror and free toiletries are included in the private bathrooms. Located at Treasure Island and open daily from 10:00 until 22:00, Marvel’s Avengers S.T.A.T.I.O.N. is a completely immersive and educational experience that brings visitors into the world of The Avengers. Welcoming all ages, paid admissions will be granted access to the official S.T.A.T.I.O.N. headquarters and taken deep into the Marvel Cinematic Universe with access to an array of intelligence files, classified studies and experiments that explore the history and scientific origins of The Avengers while training to become an agent of S.T.A.T.I.O.N. Guests of Treasure Island - TI Las Vegas Hotel & Casino, a Radisson Hotel can dine at Phil’s Italian Steakhouse, which serves a dinner menu of classic steaks, seafood and Italian specialties. For a more casual restaurant/bar atmosphere guests can enjoy Senor Frogs Las Vegas, which features Mexican cuisine. Gilley’s BBQ, a reincarnation of a Texas honky-tonk saloon and dance hall, offers line dancing and mechanical bull riding. The hotel features a large casino with table games, slots and video poker, a sports book and a high limit lounge. A fitness center and a spa and wellness center are also available for guest use. Dry cleaning and laundry services are offered. A chapel and various shops are located on-site. Fashion Show Mall is 5 minutes’ walk from Treasure Island Hotel & Casino and Sands Expo is less than 1 mi away. The Las Vegas Convention Center is 1.9 mi from the hotel.\nHotel Location\nYou\'ll find plenty of shopping in this northern Strip stretch, home to the Fashion Show Mall. Plenty of gaming, dining, and entertainment are within easy reach of this glitzy spot, featuring some of the city\'s best-known casinos.', 8.0, '3300 South Las Vegas Boulevard', 'Las Vegas', 'Nevada');
/*!40000 ALTER TABLE `hotel` ENABLE KEYS */;
COMMIT;

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
    `total` int DEFAULT 1 COMMENT 'total room number',
    `remaining` int NOT NULL COMMENT 'remaining room number',
    `facility` varchar(500) COMMENT 'room facility',
    `price` double DEFAULT 0 NOT NULL COMMENT 'unit price',
    `bed_type` varchar(100) NOT NULL COMMENT 'type of beds',
    `bed_number` int DEFAULT 0 NOT NULL COMMENT 'number of beds',
    `sleep_up_to` int COMMENT 'number of people can sleep',
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
    `hotel_id` bigint(20) NOT NULL COMMENT 'hotel it made in',
    `time` datetime NOT NULL COMMENT 'reservation time',
    `check_in_date` date NOT NULL COMMENT 'check-in date',
    `check_out_date` date NOT NULL COMMENT 'check-out date',
    `tax` double NOT NULL DEFAULT 0 COMMENT 'tax fee',
    `destination` double NOT NULL DEFAULT 0 COMMENT 'destination fee',
    `total_cost` double NOT NULL DEFAULT 0 COMMENT 'total cost',
    PRIMARY KEY (`reservation_id`),
    FOREIGN KEY(user_id) REFERENCES user(user_id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY(hotel_id) REFERENCES hotel(hotel_id) ON DELETE CASCADE ON UPDATE CASCADE
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
    `unit_price` double NOT NULL COMMENT 'unit price when reserved',
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

