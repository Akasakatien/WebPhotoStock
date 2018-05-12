-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 12, 2018 at 11:16 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `photostock`
--

-- --------------------------------------------------------

--
-- Table structure for table `buyer`
--

CREATE TABLE IF NOT EXISTS `buyer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `join_date` date NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(250) NOT NULL,
  `gmail_token` varchar(250) DEFAULT NULL,
  `fb_tocken` varchar(250) DEFAULT NULL,
  `role_pk` int(11) NOT NULL,
  `firstName` varchar(50) DEFAULT NULL,
  `lastName` varchar(50) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `photo` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `role_pk` (`role_pk`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `buyer`
--

INSERT INTO `buyer` (`id`, `join_date`, `enabled`, `username`, `password`, `gmail_token`, `fb_tocken`, `role_pk`, `firstName`, `lastName`, `gender`, `birthday`, `phone`, `photo`) VALUES
(1, '2018-02-26', 1, 'admin', '$2a$10$LEUMCDVol.YzBRBr0ITFX.Suu7YL/1WevQXoo/XIFaEd0CCWIDi7C', 'zasda', 'vasvx', 1, 'Nguyen Phuoc', 'Loc', 'male', '2018-03-06', '012635354', NULL),
(2, '2018-02-26', 1, 'buyer', '$2a$12$KCzZ005BY/S/DOZpS5N2kucIS6DbWcaCMlmOBwnPaapG/e8TylbTK\n', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL),
(3, '2018-03-06', 1, 'chotrong@gmail.com', '12345', NULL, NULL, 3, 'nguyen', 'trong', 'Female', '1995-08-08', NULL, NULL),
(4, '2018-03-06', 1, 'dismethangtrong@gmail.com', '12345', NULL, NULL, 3, 'nguyen', 'trong', 'Female', '1996-03-08', NULL, NULL),
(5, '2018-03-06', 1, 'nghimemaydi@gmail.com', '12345', NULL, NULL, 3, 'nguiien', 'tien cho', 'Female', '1994-03-07', NULL, NULL),
(6, '2018-03-06', 1, 'trongtest1@gmail.com', '1111111', NULL, NULL, 3, 'tien', 'trong', 'Male', '1111-11-11', NULL, NULL),
(7, '2018-03-06', 1, 'trongtest2@gmail.com', '11111', NULL, NULL, 3, 'gnuyen', 'tien', 'Male', '1111-11-11', NULL, NULL),
(8, '2018-03-06', 1, 'trontest3@gmail.com', '123123f', NULL, NULL, 3, 'kkk', 'lcnj', 'Male', '1111-11-11', NULL, NULL),
(9, '2018-03-06', 1, 'trongtestcuoi@gmail.com', '213213r4', NULL, NULL, 3, 'dm', 'cho', 'Male', '1111-09-09', NULL, NULL),
(10, '2018-03-06', 1, 'akasakatien11@gmail.com', '1234567', NULL, NULL, 3, 'me', 'may', 'Male', '1995-09-09', NULL, NULL),
(11, '2018-03-06', 1, 'akasakatien10@gmail.com', '123456', NULL, NULL, 3, 'koho', 'hashi', 'Male', '1995-01-01', NULL, NULL),
(12, '2018-03-08', 1, 'akasakatien4@gmail.com', '$2a$12$hIikMj434QQe8kQAsdEH8u8WAGhZvAxxFnLhrqPr1C9zzPpfuvZ9m', NULL, NULL, 2, 'cho', 'trng', 'Male', '1995-10-10', '090283738', NULL),
(13, '2018-03-08', 1, 'akasakatien5@gmail.com', '$2a$12$nyE1wmUlC/TRzB6anX9AEuaTlJXMR..10qTwE1sYYeZMCClgy7LF6', NULL, NULL, 2, 'akasaka', 'tien', 'Other', '1999-11-12', '019282733', 'nora2.jpg'),
(14, '2018-05-12', 1, 'akasakatien2@gmail.com', '$2a$10$r4jMGdVqFiZ.KA/yWvZTCuiCkvuYWcomvrjKUBETDtKgFklQtnp0O', NULL, NULL, 2, 'nguyen', 'tien', 'Male', '1999-11-10', '0905826907', 'Crimson_Avenger_1.png'),
(15, '2018-05-12', 1, 'asddd@gmail.com', '$2a$10$zlxfv9jvEq53IEcyf2ToBeK43okn/iJhPL44s3GBRlBulJA8FNaeC', NULL, NULL, 2, 'nguyen', 'Tien', 'Female', '1111-11-11', '0905826907', '');

-- --------------------------------------------------------

--
-- Table structure for table `buyer_role`
--

CREATE TABLE IF NOT EXISTS `buyer_role` (
  `buyer_pk` int(11) NOT NULL,
  `role_pk` int(11) NOT NULL,
  `enable` tinyint(1) NOT NULL,
  PRIMARY KEY (`buyer_pk`,`role_pk`),
  KEY `role_pk` (`role_pk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buyer_role`
--

INSERT INTO `buyer_role` (`buyer_pk`, `role_pk`, `enable`) VALUES
(1, 1, 1),
(2, 2, 1),
(12, 2, 1),
(13, 2, 1),
(14, 2, 1),
(15, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(13, 'ABSTRACT'),
(14, 'ANIMALS'),
(15, 'ARCHITECTURE'),
(16, 'BUSINESS'),
(17, 'CELEBRATIONS'),
(18, 'CITY'),
(19, 'ELECTRONICS'),
(20, 'HEALTH & BEAUTY'),
(21, 'MUSIC'),
(22, 'NATURE'),
(23, 'PEOPLE');

-- --------------------------------------------------------

--
-- Table structure for table `discount`
--

CREATE TABLE IF NOT EXISTS `discount` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `isActive` tinyint(1) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `rate` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `discount`
--

INSERT INTO `discount` (`id`, `isActive`, `from_date`, `to_date`, `rate`) VALUES
(1, 1, '2018-03-14', '2018-03-15', 3);

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE IF NOT EXISTS `item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_name` varchar(250) DEFAULT NULL,
  `item_code` varchar(250) DEFAULT NULL,
  `item_price` decimal(10,2) DEFAULT NULL,
  `discount_pk` int(11) DEFAULT NULL,
  `seller_pk` int(11) NOT NULL,
  `cat_pk` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `discount_pk` (`discount_pk`),
  KEY `seller_pk` (`seller_pk`),
  KEY `cat_pk` (`cat_pk`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`id`, `item_name`, `item_code`, `item_price`, `discount_pk`, `seller_pk`, `cat_pk`) VALUES
(10, 'local host', '127.0.0.1.png', '2.00', NULL, 29, 23),
(15, 'www', 'IMG_4623.JPG', '10.00', NULL, 33, 19),
(16, 'Sin', '12345.jpg', '3.00', NULL, 29, 14),
(17, 'ccvv', 'iconEdu.jpg', '2.00', NULL, 29, 22),
(18, 'Mumei', 'cosplay_mumei_3.jpg', '3.00', NULL, 29, 14),
(20, 'ADV', 'Crimson_Avenger.png', '4.00', NULL, 29, 14),
(21, 'rei', 'Crimson_Avenger.png', '3.00', NULL, 29, 15),
(22, 'adven', 'Crimson_Avenger_1.png', '4.00', NULL, 29, 17),
(23, 'hahahihi', '127.0.0.1.png', '6.00', NULL, 29, 17);

-- --------------------------------------------------------

--
-- Table structure for table `membership`
--

CREATE TABLE IF NOT EXISTS `membership` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mb_name` varchar(250) NOT NULL,
  `mb_price` decimal(10,2) NOT NULL,
  `mb_describe` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `membership`
--

INSERT INTO `membership` (`id`, `mb_name`, `mb_price`, `mb_describe`) VALUES
(1, 'Basic', '1.00', 'Des 11111'),
(2, 'Pro', '19.90', 'Des 222222'),
(3, 'Premium', '49.90', 'Des 333333'),
(4, 'Supermen', '150.00', 'Good');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `datecreation` date NOT NULL,
  `status` tinyint(1) NOT NULL,
  `buyer_pk` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `buyer_pk` (`buyer_pk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ordersdetail`
--

CREATE TABLE IF NOT EXISTS `ordersdetail` (
  `item_pk` int(11) NOT NULL,
  `orders_pk` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  PRIMARY KEY (`item_pk`,`orders_pk`),
  KEY `orders_pk` (`orders_pk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE IF NOT EXISTS `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `name`) VALUES
(1, 'ROLE_ADMIN'),
(2, 'ROLE_EMPLOYEE'),
(3, 'ROLE_EMPLOYEE');

-- --------------------------------------------------------

--
-- Table structure for table `seller`
--

CREATE TABLE IF NOT EXISTS `seller` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `join_date` date DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `firstName` varchar(50) DEFAULT NULL,
  `lastName` varchar(50) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `photo` varchar(250) DEFAULT NULL,
  `paypal_business` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=35 ;

--
-- Dumping data for table `seller`
--

INSERT INTO `seller` (`id`, `join_date`, `enabled`, `username`, `password`, `firstName`, `lastName`, `gender`, `birthday`, `phone`, `address`, `email`, `photo`, `paypal_business`) VALUES
(1, '2018-03-01', 0, 'tienhoang1', 'tienhoag22', 'Akasaka', 'Ryunosuke', 'Male', '1994-02-11', '0908075634', 'Nha Trang', 'nguyentien@gmail.com', NULL, 'tbt.trong391996-facilitator@gmail.com'),
(2, '2018-03-01', 0, 'tienakasaka', 'tienhoang1', 'Hoang', 'Tien', 'Male', '1999-10-05', '090502747', 'Sai Gon', 'AkasakTien@gmail.com', NULL, ''),
(3, '2018-03-01', 0, 'tienhoang2', 'tien123', 'nguyen', 'tien', 'Male', '2000-11-01', '0386128344', 'sound card', 'akasakatien10@gmail.com', NULL, ''),
(4, '2018-03-01', 0, 'tienhoagn3', 'tienhahaha', 'chan ', 'qua', 'Male', '2001-05-10', '012678876', 'Truc', 'akasakatien11@gmail.com', NULL, ''),
(5, '2018-03-01', 1, 'tienhoagn4', 'tienhoang1', 'akakak', 'kakakak', 'Male', '2002-12-11', '012323837', 'Viet Nam', 'akasakatien12@gmail.com', NULL, ''),
(6, '2018-03-01', 1, 'tienhoagn5', 'tienhoang1', 'Nguen', 'tuyen', 'Male', '1999-12-11', '028317823', 'akojoasdl', 'akasakatien13@gmail.com', NULL, ''),
(7, '2018-03-01', 1, 'as333', '12gtbbty', 'aaas', 'hkkkk', 'Male', '2001-05-10', '0905826907', 'vrvraa', 'akasakatien00000111@gmail.com', NULL, ''),
(8, '2018-03-01', 1, 'tienkaka', 'tienhoang1', 'met qua ', 'di', 'Male', '1980-12-02', '023384482', 'mnha  s f', '12345@gmail.com', NULL, ''),
(9, '2018-03-01', 1, 'tienhoang1234', 'tienhoang', 'kalote', 'maxotic', 'Male', '1997-07-07', '0971721121', 'ho ho ho', 'aaaaa@gmail.com', NULL, ''),
(10, '2018-03-01', 1, 'tienhon1', 'imckjdmck', 'knkk', 'kmsad', 'Male', '1995-11-02', '0905826907', 'avvf dfdc', 'kakaak@gmail.com', NULL, ''),
(11, '2018-03-02', 0, 'cdcdcdfvfvfv', 'bgbbgbg', 'vrv', 'tien', 'Male', '2004-11-01', '0905826907', 'Nha Trang', '01656001007@gmail.com', NULL, ''),
(12, '2018-03-02', 0, 'mkmkkm', 'mkcdmowuhhju', 'nhhntbytb', 'fvffv', 'Male', '2004-11-01', '0905826907', 'vrvraa', 'saffvffv@gmail.com', NULL, ''),
(13, '2018-03-02', 0, 'mkmkkm', 'mkcdmowuhhju', 'nhhntbytb', 'fvffv', 'Male', '2004-11-01', '0905826907', 'vrvraa', 'saffvffv@gmail.com', NULL, ''),
(14, '2018-03-03', 0, 'quitche', 'eighut', 'Anatasa', 'Chimeyo', 'Male', '1989-12-04', '0939782033', 'mkcdjin akdc', 'akasako@gmail.com', NULL, ''),
(15, '2018-03-03', 0, 'tientien', 'tienhoang', 'choa', 'boa', 'Female', '1923-04-20', '038023042', 'Nha Trang Binh', 'antasu@gmail.com', NULL, ''),
(16, '2018-03-03', 0, 'timnguoideyeu_2009', 'btbtbtb', 'vrv', 'Ryunosuke', 'Male', '2004-11-01', '12323', 'xsolla', 'akasakatien1995@gmail.com', NULL, ''),
(17, '2018-03-03', 0, 'duytmoe', 'choghe', 'ma cho', 'nghix', 'Order', '1996-11-05', '0905826907', 'Nha Trang', 'fucking@gmail.com', 'cosplay_mumei_3.jpg', ''),
(18, '2018-03-03', 0, 'duytmoe', 'choghe', 'ma cho', 'nghix', 'Order', '1996-11-05', '0905826907', 'Nha Trang', 'fucking@gmail.com', 'cosplay_mumei_3.jpg', ''),
(19, '2018-03-03', 0, 'duytmoe', 'choghe', 'ma cho', 'nghix', 'Order', '1996-11-05', '0905826907', 'Nha Trang', 'fucking@gmail.com', 'cosplay_mumei_3.jpg', ''),
(20, '2018-03-03', 0, 'duytmoe', 'choghe', 'ma cho', 'nghix', 'Order', '1996-11-05', '0905826907', 'Nha Trang', 'fucking@gmail.com', 'cosplay_mumei_3.jpg', ''),
(21, '2018-03-03', 0, 'duytmoe', 'choghe', 'ma cho', 'nghix', 'Order', '1996-11-05', '0905826907', 'Nha Trang', 'fucking@gmail.com', 'cosplay_mumei_3.jpg', ''),
(22, '2018-03-03', 0, 'duytmoe', 'choghe', 'ma cho', 'nghix', 'Order', '1996-11-05', '0905826907', 'Nha Trang', 'fucking@gmail.com', 'cosplay_mumei_3.jpg', ''),
(23, '2018-03-03', 0, 'duytmoe', 'choghe', 'ma cho', 'nghix', 'Order', '1996-11-05', '0905826907', 'Nha Trang', 'fucking@gmail.com', 'cosplay_mumei_3.jpg', ''),
(24, '2018-03-03', 0, 'duytmoe', 'choghe', 'ma cho', 'nghix', 'Order', '1996-11-05', '0905826907', 'Nha Trang', 'fucking@gmail.com', 'cosplay_mumei_3.jpg', ''),
(25, '2018-03-03', 0, 'duytmoe', 'choghe', 'ma cho', 'nghix', 'Order', '1996-11-05', '0905826907', 'Nha Trang', 'fucking@gmail.com', 'cosplay_mumei_3.jpg', ''),
(26, '2018-03-03', 0, 'duytmoe', 'choghe', 'ma cho', 'nghix', 'Order', '1996-11-05', '0905826907', 'Nha Trang', 'fucking@gmail.com', 'cosplay_mumei_3.jpg', ''),
(27, '2018-03-03', 0, 'timnguoideyeu_2009', 'bynymu', 'nguyen', 'kakakak', 'Order', '2001-05-10', '0905826907', 'vrvraa', '01656001007@gmail.com', 'cosplay_mumei.jpg', ''),
(28, '2018-03-03', 0, 'tienhoagner', 'hiehea', 'Akasaka', 'vrvvvv', 'Order', '2000-11-01', '84905826907', 'Nha Trang', 'chibietmet@gmail.com', 'cosplay_mumei.jpg', ''),
(29, '2018-03-08', 1, 'tienseller1', '123', 'Akasaka3', 'Ryunosuke3', 'Female', '2000-01-01', '0905826907', 'chodemayralamgivay', 'sellertestaccount@gmail.com', 'test01.jpg', 'tbt.trong391996-facilitator@gmail.com'),
(30, '2018-03-09', 1, 'tien123123tien', 'tien123', 'Hoang', 'tien', 'Female', '2017-07-11', '0905826907', 'Japan', 'akasakatien15@gmail.com', 'nora.jpg', 'tbt.trong391996-facilitator@gmail.com'),
(31, '2018-03-09', 1, 'tienhoang1995', 'tien123', 'Akasaka', 'kakakak', 'Female', '2017-09-14', '84 905826907', 'Sai Gon', 'testSeller10@gmail.com', 'nora3.jpg', 'tbt.trong391996-facilitator@gmail.com'),
(32, '2018-03-09', 1, 'locdeptrai', '123456', 'Akasaka', 'Ryunosuke', 'Male', '2018-03-07', '0905826907', 'vrvraa', 'skinz.boa@gmail.com', 'nora2.jpg', 'tbt.trong391996-facilitator@gmail.com'),
(33, '2018-03-13', 1, 'tientest1', '123', 'Akasaka', 'Ryunosuke', 'Female', '2018-03-14', '090123123', 'cho dau', 'nguyentien@gmail.com', '12494241_671243106351863_831567987_o.jpg', 'tbt.trong391996-facilitator@gmail.com'),
(34, '2018-05-10', 0, 'kmchk', '1829308cjikjdc', 'nguyen', 'tien', 'Female', '1995-11-11', '0273819283', 'kjncjkjkdk', 'teiiiiii1@gmail.com', 'test01.jpg', 'cdn@facilator');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE IF NOT EXISTS `transaction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `membership_pk` int(11) NOT NULL,
  `seller_pk` int(11) NOT NULL,
  `end_dt` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `seller_pk` (`seller_pk`),
  KEY `membership_pk` (`membership_pk`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`id`, `membership_pk`, `seller_pk`, `end_dt`) VALUES
(1, 1, 9, '2018-04-01'),
(2, 1, 10, '2018-04-01'),
(3, 1, 29, '2018-04-07'),
(4, 1, 30, '2018-04-09'),
(5, 1, 31, '2018-04-09'),
(6, 1, 31, '2018-04-09'),
(7, 1, 32, '2018-04-09'),
(8, 1, 33, '2018-04-13');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `buyer_role`
--
ALTER TABLE `buyer_role`
  ADD CONSTRAINT `buyer_role_ibfk_1` FOREIGN KEY (`buyer_pk`) REFERENCES `buyer` (`id`),
  ADD CONSTRAINT `buyer_role_ibfk_2` FOREIGN KEY (`role_pk`) REFERENCES `role` (`id`);

--
-- Constraints for table `item`
--
ALTER TABLE `item`
  ADD CONSTRAINT `item_ibfk_1` FOREIGN KEY (`cat_pk`) REFERENCES `category` (`id`),
  ADD CONSTRAINT `item_ibfk_2` FOREIGN KEY (`discount_pk`) REFERENCES `discount` (`id`),
  ADD CONSTRAINT `item_ibfk_3` FOREIGN KEY (`seller_pk`) REFERENCES `seller` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`buyer_pk`) REFERENCES `buyer` (`id`);

--
-- Constraints for table `ordersdetail`
--
ALTER TABLE `ordersdetail`
  ADD CONSTRAINT `ordersdetail_ibfk_1` FOREIGN KEY (`orders_pk`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `ordersdetail_ibfk_2` FOREIGN KEY (`item_pk`) REFERENCES `item` (`id`);

--
-- Constraints for table `transaction`
--
ALTER TABLE `transaction`
  ADD CONSTRAINT `transaction_ibfk_1` FOREIGN KEY (`seller_pk`) REFERENCES `seller` (`id`),
  ADD CONSTRAINT `transaction_ibfk_2` FOREIGN KEY (`membership_pk`) REFERENCES `membership` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
