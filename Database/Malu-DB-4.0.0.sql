-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 25, 2016 at 03:28 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `malu_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `fish`
--

CREATE TABLE `fish` (
  `fish_id` int(11) NOT NULL,
  `fish_name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fish`
--

INSERT INTO `fish` (`fish_id`, `fish_name`) VALUES
(1, 'Bass'),
(2, 'Cod'),
(3, 'Anchovy'),
(4, 'Mullet'),
(5, 'Tuna'),
(6, 'Cuttlefish'),
(7, 'Thresher shark'),
(8, 'Bullet tuna'),
(9, 'Prawns');

-- --------------------------------------------------------

--
-- Stand-in structure for view `main_view`
-- (See below for the actual view)
--
CREATE TABLE `main_view` (
);

-- --------------------------------------------------------

--
-- Table structure for table `owner`
--

CREATE TABLE `owner` (
  `own_id` int(11) NOT NULL,
  `own_name` varchar(45) NOT NULL,
  `own_adress` varchar(45) DEFAULT NULL,
  `own_phone` varchar(45) DEFAULT NULL,
  `own_email` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `owner`
--

INSERT INTO `owner` (`own_id`, `own_name`, `own_adress`, `own_phone`, `own_email`) VALUES
(1, 'Suranga', 'Kandy', '0771234456', 'suranga@gmail.com'),
(2, 'Minura', 'Colombo', '0771234457', 'minura@gmail.com'),
(3, 'Suthan', 'Jaffna', '0777116635', 'suthan@gmail.com'),
(4, 'Anuradha', 'Colombo', '0777112235', 'anuradha@gmail.com'),
(5, 'owner', 'Negambo', '0777556656', 'owner@vms.com');

-- --------------------------------------------------------

--
-- Stand-in structure for view `temp`
-- (See below for the actual view)
--
CREATE TABLE `temp` (
`voyage_id` int(11)
,`voyage_dep_time` timestamp
,`voyage_arv_time` timestamp
,`voge_fishing_fish_voy_id` int(11)
,`voge_fishing_fish_fish_id` int(11)
,`voge_fishing_fish_weight` float
,`voge_fishing_fish_time` timestamp
,`voge_fishing_fish_isimergency` int(11)
,`voge_fishing_fish_state` int(11)
,`fish_id` int(11)
,`fish_name` varchar(45)
);

-- --------------------------------------------------------

--
-- Table structure for table `vessel`
--

CREATE TABLE `vessel` (
  `vsl_id` int(11) NOT NULL,
  `vsl_name` varchar(45) NOT NULL,
  `vsl_owner` int(11) NOT NULL,
  `vsl_reg_port` varchar(45) DEFAULT NULL,
  `vsl_max_rate_speed` float DEFAULT NULL,
  `vsl_min_rate_speed` float DEFAULT NULL,
  `vsl_cur_speed` float DEFAULT NULL,
  `vsl_boat_len` float DEFAULT NULL,
  `vsl_boat_max_width` float DEFAULT NULL,
  `vsl_boat_max_dep` float DEFAULT NULL,
  `vsl_boat_weight` float DEFAULT NULL,
  `vsl_eng_capacity` int(11) DEFAULT NULL,
  `vsl_allow_fishing_state` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vessel`
--

INSERT INTO `vessel` (`vsl_id`, `vsl_name`, `vsl_owner`, `vsl_reg_port`, `vsl_max_rate_speed`, `vsl_min_rate_speed`, `vsl_cur_speed`, `vsl_boat_len`, `vsl_boat_max_width`, `vsl_boat_max_dep`, `vsl_boat_weight`, `vsl_eng_capacity`, `vsl_allow_fishing_state`) VALUES
(1, 'Fishing Boat', 2, 'Colombo', 12, 2, 10, 20, 10, 7, 40, 80, 1),
(2, 'Malu Boat', 1, 'Negambo', 11, 2, 7, 25, 6, 4, 30, 85, 1),
(3, 'Malu Boat 2', 1, 'Colombo', 13, 2, 7, 30, 5, 7, 60, 90, 1),
(4, 'Samudura', 4, 'Galle', 8, 5, 2, 30, 12, 5, 69, 75, 0),
(5, 'Rathnadeepa ', 4, 'Puttalam', 20, 8, 15, 28, 7, 4, 45, 70, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vessel_has_voyage`
--

CREATE TABLE `vessel_has_voyage` (
  `vsl_has_vog_vog_id` int(11) NOT NULL,
  `vsl_has_vog_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `vsl_has_vog_lati` float DEFAULT NULL,
  `vsl_has_vog_long` float DEFAULT NULL,
  `vsl_has_vog_true_heading` float DEFAULT NULL,
  `vsl_has_vog_speed` float DEFAULT NULL,
  `vsl_has_vog_wind_speed` float DEFAULT NULL,
  `vsl_has_vog_wind_deg` float DEFAULT NULL,
  `vsl_has_vog_temp` float DEFAULT NULL,
  `vsl_has_vog_humidity` float DEFAULT NULL,
  `vsl_has_vog_pressure` float DEFAULT NULL,
  `vsl_has_vog_rain` float DEFAULT NULL,
  `vsl_has_vog_btry_status` float DEFAULT NULL,
  `vsl_has_vog_div_status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vessel_type`
--

CREATE TABLE `vessel_type` (
  `vsl_type_id` int(11) NOT NULL,
  `vsl_type_name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vessel_type`
--

INSERT INTO `vessel_type` (`vsl_type_id`, `vsl_type_name`) VALUES
(3, 'Longliner'),
(5, 'Multipurpose vessel'),
(4, 'Pole and line vessel'),
(2, 'Seiner'),
(1, 'Trawler');

-- --------------------------------------------------------

--
-- Stand-in structure for view `vessel_view`
-- (See below for the actual view)
--
CREATE TABLE `vessel_view` (
`vsl_id` int(11)
,`vsl_name` varchar(45)
,`vsl_owner` int(11)
,`vsl_reg_port` varchar(45)
,`vsl_max_rate_speed` float
,`vsl_min_rate_speed` float
,`vsl_cur_speed` float
,`vsl_boat_len` float
,`vsl_boat_max_width` float
,`vsl_boat_max_dep` float
,`vsl_boat_weight` float
,`vsl_eng_capacity` int(11)
,`vsl_allow_fishing_state` int(11)
,`vessl_has_type_vsl_id` int(11)
,`vessl_has_type_type_id` int(11)
,`vsl_type_id` int(11)
,`vsl_type_name` varchar(45)
,`own_id` int(11)
,`own_name` varchar(45)
,`own_adress` varchar(45)
,`own_phone` varchar(45)
,`own_email` varchar(45)
);

-- --------------------------------------------------------

--
-- Table structure for table `vessl_has_type`
--

CREATE TABLE `vessl_has_type` (
  `vsl_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vessl_has_type`
--

INSERT INTO `vessl_has_type` (`vsl_id`, `type_id`) VALUES
(3, 1),
(1, 2),
(2, 2),
(4, 3),
(5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `voge_fishing_fish`
--

CREATE TABLE `voge_fishing_fish` (
  `voge_fishing_fish_voy_id` int(11) NOT NULL,
  `voge_fishing_fish_time` timestamp NOT NULL,
  `voge_fishing_fish_fish_id` int(11) NOT NULL,
  `voge_fishing_fish_weight` float DEFAULT NULL,
  `voge_fishing_fish_isimergency` int(11) DEFAULT NULL,
  `voge_fishing_fish_state` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `voyage`
--

CREATE TABLE `voyage` (
  `voyage_id` int(11) NOT NULL,
  `vsl_id` int(11) NOT NULL,
  `voyage_dep_time` timestamp NULL DEFAULT NULL,
  `voyage_arv_time` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `voyage`
--

INSERT INTO `voyage` (`voyage_id`, `vsl_id`, `voyage_dep_time`, `voyage_arv_time`) VALUES
(1, 1, '2016-05-09 02:39:16', '2016-06-01 08:46:07'),
(2, 1, '2016-06-07 21:43:27', '2016-07-01 03:46:27'),
(3, 1, '2016-07-01 09:14:54', '2016-07-07 11:20:56'),
(4, 1, '2016-08-06 07:09:51', '2016-08-09 08:10:47'),
(5, 1, '2016-09-06 23:48:29', '2016-09-30 07:06:19'),
(6, 2, '2016-06-30 22:35:15', '2016-07-20 02:40:28'),
(7, 2, '2016-08-21 05:48:27', '2016-09-07 04:59:30'),
(8, 2, '2016-09-09 06:53:24', '2016-09-16 03:50:27'),
(9, 2, '2016-09-19 03:53:22', '2016-10-01 03:50:20'),
(10, 2, '2016-10-05 18:30:00', '2016-10-06 01:44:15'),
(11, 3, '2016-05-03 05:53:28', '2016-05-24 03:59:15'),
(12, 3, '2016-06-07 03:52:40', '2016-06-25 02:49:27'),
(13, 3, '2016-07-04 07:55:26', '2016-07-18 04:54:18'),
(14, 3, '2016-09-06 04:59:29', '2016-09-30 06:48:21'),
(15, 3, '2016-10-05 05:42:35', '2016-10-19 04:54:17'),
(16, 4, '2016-06-01 05:52:18', '2016-06-22 05:57:22'),
(17, 4, '2016-07-05 05:56:26', '2016-07-20 02:55:31'),
(18, 4, '2016-08-02 03:51:19', '2016-09-13 05:56:25'),
(19, 4, '2016-09-19 18:30:00', '2016-10-26 18:30:00'),
(20, 4, '2016-10-03 05:58:29', '2016-10-24 00:58:45'),
(21, 5, '2016-07-04 05:54:26', '2016-07-09 06:54:26'),
(22, 5, '2016-07-12 08:55:30', '2016-07-21 23:29:30'),
(23, 5, '2016-08-08 02:55:33', '2016-08-11 03:10:38'),
(24, 5, '2016-08-24 18:30:00', '2016-10-11 06:01:37'),
(25, 5, '2016-10-22 08:51:31', '2016-10-25 12:11:36');

-- --------------------------------------------------------

--
-- Stand-in structure for view `voyage_view`
-- (See below for the actual view)
--
CREATE TABLE `voyage_view` (
`voyage_id` int(11)
,`voyage_dep_time` timestamp
,`voyage_arv_time` timestamp
,`voge_fishing_fish_voy_id` int(11)
,`voge_fishing_fish_fish_id` int(11)
,`voge_fishing_fish_weight` float
,`voge_fishing_fish_time` timestamp
,`voge_fishing_fish_isimergency` int(11)
,`voge_fishing_fish_state` int(11)
,`fish_id` int(11)
,`fish_name` varchar(45)
);

-- --------------------------------------------------------

--
-- Structure for view `main_view`
--
DROP TABLE IF EXISTS `main_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `main_view`  AS  select `vessel_has_voyage`.`vsl_has_vog_vsl_id` AS `vsl_has_vog_vsl_id`,`vessel_has_voyage`.`vsl_has_vog_vog_id` AS `vsl_has_vog_vog_id`,`vessel_has_voyage`.`vsl_has_vog_time` AS `vsl_has_vog_time`,`vessel_has_voyage`.`vsl_has_vog_long` AS `vsl_has_vog_long`,`vessel_has_voyage`.`vsl_has_vog_lati` AS `vsl_has_vog_lati`,`vessel_has_voyage`.`vsl_has_vog_speed` AS `vsl_has_vog_speed`,`vessel_has_voyage`.`vsl_has_vog_true_heading` AS `vsl_has_vog_true_heading`,`vessel_has_voyage`.`vsl_has_vog_wind_speed` AS `vsl_has_vog_wind_speed`,`vessel_has_voyage`.`vsl_has_vog_wind_deg` AS `vsl_has_vog_wind_deg`,`vessel_has_voyage`.`vsl_has_vog_temp` AS `vsl_has_vog_temp`,`vessel_has_voyage`.`vsl_has_vog_humidity` AS `vsl_has_vog_humidity`,`vessel_has_voyage`.`vsl_has_vog_pressure` AS `vsl_has_vog_pressure`,`vessel_has_voyage`.`vsl_has_vog_rain` AS `vsl_has_vog_rain`,`vessel_has_voyage`.`vsl_has_vog_btry_status` AS `vsl_has_vog_btry_status`,`vessel_has_voyage`.`vsl_has_vog_div_status` AS `vsl_has_vog_div_status`,`vessel_view`.`vsl_id` AS `vsl_id`,`vessel_view`.`vsl_name` AS `vsl_name`,`vessel_view`.`vsl_owner` AS `vsl_owner`,`vessel_view`.`vsl_reg_port` AS `vsl_reg_port`,`vessel_view`.`vsl_max_rate_speed` AS `vsl_max_rate_speed`,`vessel_view`.`vsl_min_rate_speed` AS `vsl_min_rate_speed`,`vessel_view`.`vsl_cur_speed` AS `vsl_cur_speed`,`vessel_view`.`vsl_boat_len` AS `vsl_boat_len`,`vessel_view`.`vsl_boat_max_width` AS `vsl_boat_max_width`,`vessel_view`.`vsl_boat_max_dep` AS `vsl_boat_max_dep`,`vessel_view`.`vsl_boat_weight` AS `vsl_boat_weight`,`vessel_view`.`vsl_eng_capacity` AS `vsl_eng_capacity`,`vessel_view`.`vsl_allow_fishing_state` AS `vsl_allow_fishing_state`,`vessel_view`.`vessl_has_type_vsl_id` AS `vessl_has_type_vsl_id`,`vessel_view`.`vessl_has_type_type_id` AS `vessl_has_type_type_id`,`vessel_view`.`vsl_type_id` AS `vsl_type_id`,`vessel_view`.`vsl_type_name` AS `vsl_type_name`,`vessel_view`.`own_id` AS `own_id`,`vessel_view`.`own_name` AS `own_name`,`vessel_view`.`own_adress` AS `own_adress`,`vessel_view`.`own_phone` AS `own_phone`,`vessel_view`.`own_email` AS `own_email`,`voyage_view`.`voyage_id` AS `voyage_id`,`voyage_view`.`voyage_dep_time` AS `voyage_dep_time`,`voyage_view`.`voyage_arv_time` AS `voyage_arv_time`,`voyage_view`.`voge_fishing_fish_voy_id` AS `voge_fishing_fish_voy_id`,`voyage_view`.`voge_fishing_fish_fish_id` AS `voge_fishing_fish_fish_id`,`voyage_view`.`voge_fishing_fish_weight` AS `voge_fishing_fish_weight`,`voyage_view`.`voge_fishing_fish_time` AS `voge_fishing_fish_time`,`voyage_view`.`voge_fishing_fish_isimergency` AS `voge_fishing_fish_isimergency`,`voyage_view`.`voge_fishing_fish_state` AS `voge_fishing_fish_state`,`voyage_view`.`fish_id` AS `fish_id`,`voyage_view`.`fish_name` AS `fish_name` from ((`vessel_has_voyage` left join `vessel_view` on((`vessel_has_voyage`.`vsl_has_vog_vsl_id` = `vessel_view`.`vsl_id`))) left join `voyage_view` on((`vessel_has_voyage`.`vsl_has_vog_vog_id` = `voyage_view`.`voyage_id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `temp`
--
DROP TABLE IF EXISTS `temp`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `temp`  AS  select `voyage_view`.`voyage_id` AS `voyage_id`,`voyage_view`.`voyage_dep_time` AS `voyage_dep_time`,`voyage_view`.`voyage_arv_time` AS `voyage_arv_time`,`voyage_view`.`voge_fishing_fish_voy_id` AS `voge_fishing_fish_voy_id`,`voyage_view`.`voge_fishing_fish_fish_id` AS `voge_fishing_fish_fish_id`,`voyage_view`.`voge_fishing_fish_weight` AS `voge_fishing_fish_weight`,`voyage_view`.`voge_fishing_fish_time` AS `voge_fishing_fish_time`,`voyage_view`.`voge_fishing_fish_isimergency` AS `voge_fishing_fish_isimergency`,`voyage_view`.`voge_fishing_fish_state` AS `voge_fishing_fish_state`,`voyage_view`.`fish_id` AS `fish_id`,`voyage_view`.`fish_name` AS `fish_name` from `voyage_view` ;

-- --------------------------------------------------------

--
-- Structure for view `vessel_view`
--
DROP TABLE IF EXISTS `vessel_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vessel_view`  AS  select `vessel`.`vsl_id` AS `vsl_id`,`vessel`.`vsl_name` AS `vsl_name`,`vessel`.`vsl_owner` AS `vsl_owner`,`vessel`.`vsl_reg_port` AS `vsl_reg_port`,`vessel`.`vsl_max_rate_speed` AS `vsl_max_rate_speed`,`vessel`.`vsl_min_rate_speed` AS `vsl_min_rate_speed`,`vessel`.`vsl_cur_speed` AS `vsl_cur_speed`,`vessel`.`vsl_boat_len` AS `vsl_boat_len`,`vessel`.`vsl_boat_max_width` AS `vsl_boat_max_width`,`vessel`.`vsl_boat_max_dep` AS `vsl_boat_max_dep`,`vessel`.`vsl_boat_weight` AS `vsl_boat_weight`,`vessel`.`vsl_eng_capacity` AS `vsl_eng_capacity`,`vessel`.`vsl_allow_fishing_state` AS `vsl_allow_fishing_state`,`vessl_has_type`.`vsl_id` AS `vessl_has_type_vsl_id`,`vessl_has_type`.`type_id` AS `vessl_has_type_type_id`,`vessel_type`.`vsl_type_id` AS `vsl_type_id`,`vessel_type`.`vsl_type_name` AS `vsl_type_name`,`owner`.`own_id` AS `own_id`,`owner`.`own_name` AS `own_name`,`owner`.`own_adress` AS `own_adress`,`owner`.`own_phone` AS `own_phone`,`owner`.`own_email` AS `own_email` from (((`vessel` left join `vessl_has_type` on((`vessel`.`vsl_id` = `vessl_has_type`.`vsl_id`))) left join `vessel_type` on((`vessl_has_type`.`type_id` = `vessel_type`.`vsl_type_id`))) left join `owner` on((`owner`.`own_id` = `vessel`.`vsl_owner`))) ;

-- --------------------------------------------------------

--
-- Structure for view `voyage_view`
--
DROP TABLE IF EXISTS `voyage_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `voyage_view`  AS  select `voyage`.`voyage_id` AS `voyage_id`,`voyage`.`voyage_dep_time` AS `voyage_dep_time`,`voyage`.`voyage_arv_time` AS `voyage_arv_time`,`voge_fishing_fish`.`voge_fishing_fish_voy_id` AS `voge_fishing_fish_voy_id`,`voge_fishing_fish`.`voge_fishing_fish_fish_id` AS `voge_fishing_fish_fish_id`,`voge_fishing_fish`.`voge_fishing_fish_weight` AS `voge_fishing_fish_weight`,`voge_fishing_fish`.`voge_fishing_fish_time` AS `voge_fishing_fish_time`,`voge_fishing_fish`.`voge_fishing_fish_isimergency` AS `voge_fishing_fish_isimergency`,`voge_fishing_fish`.`voge_fishing_fish_state` AS `voge_fishing_fish_state`,`fish`.`fish_id` AS `fish_id`,`fish`.`fish_name` AS `fish_name` from ((`voyage` left join `voge_fishing_fish` on((`voge_fishing_fish`.`voge_fishing_fish_voy_id` = `voyage`.`voyage_id`))) left join `fish` on((`voge_fishing_fish`.`voge_fishing_fish_fish_id` = `fish`.`fish_id`))) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fish`
--
ALTER TABLE `fish`
  ADD PRIMARY KEY (`fish_id`);

--
-- Indexes for table `owner`
--
ALTER TABLE `owner`
  ADD PRIMARY KEY (`own_id`);

--
-- Indexes for table `vessel`
--
ALTER TABLE `vessel`
  ADD PRIMARY KEY (`vsl_id`),
  ADD KEY `vsl_owner_idx` (`vsl_owner`);

--
-- Indexes for table `vessel_has_voyage`
--
ALTER TABLE `vessel_has_voyage`
  ADD PRIMARY KEY (`vsl_has_vog_vog_id`,`vsl_has_vog_time`),
  ADD KEY `voyage_id_idx` (`vsl_has_vog_vog_id`);

--
-- Indexes for table `vessel_type`
--
ALTER TABLE `vessel_type`
  ADD PRIMARY KEY (`vsl_type_id`),
  ADD UNIQUE KEY `vsl_type_name_UNIQUE` (`vsl_type_name`);

--
-- Indexes for table `vessl_has_type`
--
ALTER TABLE `vessl_has_type`
  ADD PRIMARY KEY (`vsl_id`,`type_id`),
  ADD KEY `type_id_idx` (`type_id`);

--
-- Indexes for table `voge_fishing_fish`
--
ALTER TABLE `voge_fishing_fish`
  ADD PRIMARY KEY (`voge_fishing_fish_voy_id`,`voge_fishing_fish_time`),
  ADD KEY `fish_id_idx` (`voge_fishing_fish_fish_id`);

--
-- Indexes for table `voyage`
--
ALTER TABLE `voyage`
  ADD PRIMARY KEY (`voyage_id`),
  ADD KEY `vsl_id` (`vsl_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fish`
--
ALTER TABLE `fish`
  MODIFY `fish_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `owner`
--
ALTER TABLE `owner`
  MODIFY `own_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `vessel`
--
ALTER TABLE `vessel`
  MODIFY `vsl_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `vessel_type`
--
ALTER TABLE `vessel_type`
  MODIFY `vsl_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `voyage`
--
ALTER TABLE `voyage`
  MODIFY `voyage_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `vessel`
--
ALTER TABLE `vessel`
  ADD CONSTRAINT `owner_id` FOREIGN KEY (`vsl_owner`) REFERENCES `owner` (`own_id`);

--
-- Constraints for table `vessel_has_voyage`
--
ALTER TABLE `vessel_has_voyage`
  ADD CONSTRAINT `vessel_has_voyage_ibfk_1` FOREIGN KEY (`vsl_has_vog_vog_id`) REFERENCES `voyage` (`voyage_id`);

--
-- Constraints for table `vessl_has_type`
--
ALTER TABLE `vessl_has_type`
  ADD CONSTRAINT `type_id` FOREIGN KEY (`type_id`) REFERENCES `vessel_type` (`vsl_type_id`),
  ADD CONSTRAINT `ves_id` FOREIGN KEY (`vsl_id`) REFERENCES `vessel` (`vsl_id`);

--
-- Constraints for table `voge_fishing_fish`
--
ALTER TABLE `voge_fishing_fish`
  ADD CONSTRAINT `fish_id` FOREIGN KEY (`voge_fishing_fish_fish_id`) REFERENCES `fish` (`fish_id`),
  ADD CONSTRAINT `voy_id` FOREIGN KEY (`voge_fishing_fish_voy_id`) REFERENCES `voyage` (`voyage_id`);

--
-- Constraints for table `voyage`
--
ALTER TABLE `voyage`
  ADD CONSTRAINT `voyage_ibfk_1` FOREIGN KEY (`vsl_id`) REFERENCES `vessel` (`vsl_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
