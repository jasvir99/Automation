-- phpMyAdmin SQL Dump
-- version 3.5.8.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 26, 2013 at 11:22 AM
-- Server version: 5.5.31-0ubuntu0.13.04.1
-- PHP Version: 5.4.9-4ubuntu2.2

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `automation`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_bda51c3c` (`group_id`),
  KEY `auth_group_permissions_1e014c8f` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_e4470c6e` (`content_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=220 ;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add permission', 1, 'add_permission'),
(2, 'Can change permission', 1, 'change_permission'),
(3, 'Can delete permission', 1, 'delete_permission'),
(4, 'Can add group', 2, 'add_group'),
(5, 'Can change group', 2, 'change_group'),
(6, 'Can delete group', 2, 'delete_group'),
(7, 'Can add user', 3, 'add_user'),
(8, 'Can change user', 3, 'change_user'),
(9, 'Can delete user', 3, 'delete_user'),
(10, 'Can add content type', 4, 'add_contenttype'),
(11, 'Can change content type', 4, 'change_contenttype'),
(12, 'Can delete content type', 4, 'delete_contenttype'),
(13, 'Can add session', 5, 'add_session'),
(14, 'Can change session', 5, 'change_session'),
(15, 'Can delete session', 5, 'delete_session'),
(16, 'Can add site', 6, 'add_site'),
(17, 'Can change site', 6, 'change_site'),
(18, 'Can delete site', 6, 'delete_site'),
(19, 'Can add log entry', 7, 'add_logentry'),
(20, 'Can change log entry', 7, 'change_logentry'),
(21, 'Can delete log entry', 7, 'delete_logentry'),
(22, 'Can add registration profile', 8, 'add_registrationprofile'),
(23, 'Can change registration profile', 8, 'change_registrationprofile'),
(24, 'Can delete registration profile', 8, 'delete_registrationprofile'),
(25, 'Can add report', 9, 'add_report'),
(26, 'Can change report', 9, 'change_report'),
(27, 'Can delete report', 9, 'delete_report'),
(28, 'Can add user profile', 10, 'add_userprofile'),
(29, 'Can change user profile', 10, 'change_userprofile'),
(30, 'Can delete user profile', 10, 'delete_userprofile'),
(31, 'Can add organisation', 11, 'add_organisation'),
(32, 'Can change organisation', 11, 'change_organisation'),
(33, 'Can delete organisation', 11, 'delete_organisation'),
(34, 'Can add department', 12, 'add_department'),
(35, 'Can change department', 12, 'change_department'),
(36, 'Can delete department', 12, 'delete_department'),
(37, 'Can add distribution', 13, 'add_distribution'),
(38, 'Can change distribution', 13, 'change_distribution'),
(39, 'Can delete distribution', 13, 'delete_distribution'),
(40, 'Can add lab', 14, 'add_lab'),
(41, 'Can change lab', 14, 'change_lab'),
(42, 'Can delete lab', 14, 'delete_lab'),
(43, 'Can add mat comment', 15, 'add_matcomment'),
(44, 'Can change mat comment', 15, 'change_matcomment'),
(45, 'Can delete mat comment', 15, 'delete_matcomment'),
(46, 'Can add material', 16, 'add_material'),
(47, 'Can change material', 16, 'change_material'),
(48, 'Can delete material', 16, 'delete_material'),
(49, 'Can add test', 17, 'add_test'),
(50, 'Can change test', 17, 'change_test'),
(51, 'Can delete test', 17, 'delete_test'),
(52, 'Can add clientadd', 18, 'add_clientadd'),
(53, 'Can change clientadd', 18, 'change_clientadd'),
(54, 'Can delete clientadd', 18, 'delete_clientadd'),
(55, 'Can add edit clientadd', 19, 'add_editclientadd'),
(56, 'Can change edit clientadd', 19, 'change_editclientadd'),
(57, 'Can delete edit clientadd', 19, 'delete_editclientadd'),
(58, 'Can add govt', 20, 'add_govt'),
(59, 'Can change govt', 20, 'change_govt'),
(60, 'Can delete govt', 20, 'delete_govt'),
(61, 'Can add payment', 21, 'add_payment'),
(62, 'Can change payment', 21, 'change_payment'),
(63, 'Can delete payment', 21, 'delete_payment'),
(64, 'Can add job', 22, 'add_job'),
(65, 'Can change job', 22, 'change_job'),
(66, 'Can delete job', 22, 'delete_job'),
(67, 'Can add non payment job', 23, 'add_nonpaymentjob'),
(68, 'Can change non payment job', 23, 'change_nonpaymentjob'),
(69, 'Can delete non payment job', 23, 'delete_nonpaymentjob'),
(70, 'Can add edit job', 24, 'add_editjob'),
(71, 'Can change edit job', 24, 'change_editjob'),
(72, 'Can delete edit job', 24, 'delete_editjob'),
(73, 'Can add client job', 25, 'add_clientjob'),
(74, 'Can change client job', 25, 'change_clientjob'),
(75, 'Can delete client job', 25, 'delete_clientjob'),
(76, 'Can add client edit job', 26, 'add_clienteditjob'),
(77, 'Can change client edit job', 26, 'change_clienteditjob'),
(78, 'Can delete client edit job', 26, 'delete_clienteditjob'),
(79, 'Can add suspence job', 27, 'add_suspencejob'),
(80, 'Can change suspence job', 27, 'change_suspencejob'),
(81, 'Can delete suspence job', 27, 'delete_suspencejob'),
(82, 'Can add suspence edit job', 28, 'add_suspenceeditjob'),
(83, 'Can change suspence edit job', 28, 'change_suspenceeditjob'),
(84, 'Can delete suspence edit job', 28, 'delete_suspenceeditjob'),
(85, 'Can add test total', 29, 'add_testtotal'),
(86, 'Can change test total', 29, 'change_testtotal'),
(87, 'Can delete test total', 29, 'delete_testtotal'),
(88, 'Can add test total perf', 30, 'add_testtotalperf'),
(89, 'Can change test total perf', 30, 'change_testtotalperf'),
(90, 'Can delete test total perf', 30, 'delete_testtotalperf'),
(91, 'Can add bill', 31, 'add_bill'),
(92, 'Can change bill', 31, 'change_bill'),
(93, 'Can delete bill', 31, 'delete_bill'),
(94, 'Can add bill perf', 32, 'add_billperf'),
(95, 'Can change bill perf', 32, 'change_billperf'),
(96, 'Can delete bill perf', 32, 'delete_billperf'),
(97, 'Can add amount', 33, 'add_amount'),
(98, 'Can change amount', 33, 'change_amount'),
(99, 'Can delete amount', 33, 'delete_amount'),
(100, 'Can add cdf amount', 34, 'add_cdfamount'),
(101, 'Can change cdf amount', 34, 'change_cdfamount'),
(102, 'Can delete cdf amount', 34, 'delete_cdfamount'),
(103, 'Can add distance', 35, 'add_distance'),
(104, 'Can change distance', 35, 'change_distance'),
(105, 'Can delete distance', 35, 'delete_distance'),
(106, 'Can add distanceperf', 36, 'add_distanceperf'),
(107, 'Can change distanceperf', 36, 'change_distanceperf'),
(108, 'Can delete distanceperf', 36, 'delete_distanceperf'),
(109, 'Can add suspence', 37, 'add_suspence'),
(110, 'Can change suspence', 37, 'change_suspence'),
(111, 'Can delete suspence', 37, 'delete_suspence'),
(112, 'Can add staff', 38, 'add_staff'),
(113, 'Can change staff', 38, 'change_staff'),
(114, 'Can delete staff', 38, 'delete_staff'),
(115, 'Can add profroma tax', 39, 'add_profromatax'),
(116, 'Can change profroma tax', 39, 'change_profromatax'),
(117, 'Can delete profroma tax', 39, 'delete_profromatax'),
(118, 'Can add ta da', 40, 'add_tada'),
(119, 'Can change ta da', 40, 'change_tada'),
(120, 'Can delete ta da', 40, 'delete_tada'),
(121, 'Can add transportation', 41, 'add_transportation'),
(122, 'Can change transportation', 41, 'change_transportation'),
(123, 'Can delete transportation', 41, 'delete_transportation'),
(124, 'Can add transport', 42, 'add_transport'),
(125, 'Can change transport', 42, 'change_transport'),
(126, 'Can delete transport', 42, 'delete_transport'),
(127, 'Can add bankdetails', 43, 'add_bankdetails'),
(128, 'Can change bankdetails', 43, 'change_bankdetails'),
(129, 'Can delete bankdetails', 43, 'delete_bankdetails'),
(130, 'Can add prog_letter', 44, 'add_prog_letter'),
(131, 'Can change prog_letter', 44, 'change_prog_letter'),
(132, 'Can delete prog_letter', 44, 'delete_prog_letter'),
(133, 'Can add programme', 45, 'add_programme'),
(134, 'Can change programme', 45, 'change_programme'),
(135, 'Can delete programme', 45, 'delete_programme'),
(136, 'Can add search', 46, 'add_search'),
(137, 'Can change search', 46, 'change_search'),
(138, 'Can delete search', 46, 'delete_search'),
(139, 'Can add report', 47, 'add_report'),
(140, 'Can change report', 47, 'change_report'),
(141, 'Can delete report', 47, 'delete_report'),
(142, 'Can add cube', 48, 'add_cube'),
(143, 'Can change cube', 48, 'change_cube'),
(144, 'Can delete cube', 48, 'delete_cube'),
(145, 'Can add chem_analysis', 49, 'add_chem_analysis'),
(146, 'Can change chem_analysis', 49, 'change_chem_analysis'),
(147, 'Can delete chem_analysis', 49, 'delete_chem_analysis'),
(148, 'Can add steel', 50, 'add_steel'),
(149, 'Can change steel', 50, 'change_steel'),
(150, 'Can delete steel', 50, 'delete_steel'),
(151, 'Can add m s_steel_plate', 51, 'add_ms_steel_plate'),
(152, 'Can change m s_steel_plate', 51, 'change_ms_steel_plate'),
(153, 'Can delete m s_steel_plate', 51, 'delete_ms_steel_plate'),
(154, 'Can add m s_1786_fe_415', 52, 'add_ms_1786_fe_415'),
(155, 'Can change m s_1786_fe_415', 52, 'change_ms_1786_fe_415'),
(156, 'Can delete m s_1786_fe_415', 52, 'delete_ms_1786_fe_415'),
(157, 'Can add m s_1786_fe_500', 53, 'add_ms_1786_fe_500'),
(158, 'Can change m s_1786_fe_500', 53, 'change_ms_1786_fe_500'),
(159, 'Can delete m s_1786_fe_500', 53, 'delete_ms_1786_fe_500'),
(160, 'Can add i s_432_m s_grade_1_a_20mm_dia', 54, 'add_is_432_ms_grade_1_a_20mm_dia'),
(161, 'Can change i s_432_m s_grade_1_a_20mm_dia', 54, 'change_is_432_ms_grade_1_a_20mm_dia'),
(162, 'Can delete i s_432_m s_grade_1_a_20mm_dia', 54, 'delete_is_432_ms_grade_1_a_20mm_dia'),
(163, 'Can add i s_2062_2006', 55, 'add_is_2062_2006'),
(164, 'Can change i s_2062_2006', 55, 'change_is_2062_2006'),
(165, 'Can delete i s_2062_2006', 55, 'delete_is_2062_2006'),
(166, 'Can add ground_ water', 56, 'add_ground_water'),
(167, 'Can change ground_ water', 56, 'change_ground_water'),
(168, 'Can delete ground_ water', 56, 'delete_ground_water'),
(169, 'Can add concrete_ paver', 57, 'add_concrete_paver'),
(170, 'Can change concrete_ paver', 57, 'change_concrete_paver'),
(171, 'Can delete concrete_ paver', 57, 'delete_concrete_paver'),
(172, 'Can add interlock_ tiles', 58, 'add_interlock_tiles'),
(173, 'Can change interlock_ tiles', 58, 'change_interlock_tiles'),
(174, 'Can delete interlock_ tiles', 58, 'delete_interlock_tiles'),
(175, 'Can add pc', 59, 'add_pc'),
(176, 'Can change pc', 59, 'change_pc'),
(177, 'Can delete pc', 59, 'delete_pc'),
(178, 'Can add rebound_ hammer_ testing', 60, 'add_rebound_hammer_testing'),
(179, 'Can change rebound_ hammer_ testing', 60, 'change_rebound_hammer_testing'),
(180, 'Can delete rebound_ hammer_ testing', 60, 'delete_rebound_hammer_testing'),
(181, 'Can add brick', 61, 'add_brick'),
(182, 'Can change brick', 61, 'change_brick'),
(183, 'Can delete brick', 61, 'delete_brick'),
(184, 'Can add water', 62, 'add_water'),
(185, 'Can change water', 62, 'change_water'),
(186, 'Can delete water', 62, 'delete_water'),
(187, 'Can add soil_ ohsr', 63, 'add_soil_ohsr'),
(188, 'Can change soil_ ohsr', 63, 'change_soil_ohsr'),
(189, 'Can delete soil_ ohsr', 63, 'delete_soil_ohsr'),
(190, 'Can add soil_ building', 64, 'add_soil_building'),
(191, 'Can change soil_ building', 64, 'change_soil_building'),
(192, 'Can delete soil_ building', 64, 'delete_soil_building'),
(193, 'Can add admixture', 65, 'add_admixture'),
(194, 'Can change admixture', 65, 'change_admixture'),
(195, 'Can delete admixture', 65, 'delete_admixture'),
(196, 'Can add cement_ppc', 66, 'add_cement_ppc'),
(197, 'Can change cement_ppc', 66, 'change_cement_ppc'),
(198, 'Can delete cement_ppc', 66, 'delete_cement_ppc'),
(199, 'Can add cement_op c_33', 67, 'add_cement_opc_33'),
(200, 'Can change cement_op c_33', 67, 'change_cement_opc_33'),
(201, 'Can delete cement_op c_33', 67, 'delete_cement_opc_33'),
(202, 'Can add cement_op c_43', 68, 'add_cement_opc_43'),
(203, 'Can change cement_op c_43', 68, 'change_cement_opc_43'),
(204, 'Can delete cement_op c_43', 68, 'delete_cement_opc_43'),
(205, 'Can add cement_op c_53', 69, 'add_cement_opc_53'),
(206, 'Can change cement_op c_53', 69, 'change_cement_opc_53'),
(207, 'Can delete cement_op c_53', 69, 'delete_cement_opc_53'),
(208, 'Can add soil_ sample', 70, 'add_soil_sample'),
(209, 'Can change soil_ sample', 70, 'change_soil_sample'),
(210, 'Can delete soil_ sample', 70, 'delete_soil_sample'),
(211, 'Can add drinking_water', 71, 'add_drinking_water'),
(212, 'Can change drinking_water', 71, 'change_drinking_water'),
(213, 'Can delete drinking_water', 71, 'delete_drinking_water'),
(214, 'Can add tag', 72, 'add_tag'),
(215, 'Can change tag', 72, 'change_tag'),
(216, 'Can delete tag', 72, 'delete_tag'),
(217, 'Can add tagged item', 73, 'add_taggeditem'),
(218, 'Can change tagged item', 73, 'change_taggeditem'),
(219, 'Can delete tagged item', 73, 'delete_taggeditem');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `password` varchar(128) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `last_login` datetime NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_fbfc09f1` (`user_id`),
  KEY `auth_user_groups_bda51c3c` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_fbfc09f1` (`user_id`),
  KEY `auth_user_user_permissions_1e014c8f` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_fbfc09f1` (`user_id`),
  KEY `django_admin_log_e4470c6e` (`content_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_label` (`app_label`,`model`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=74 ;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `name`, `app_label`, `model`) VALUES
(1, 'permission', 'auth', 'permission'),
(2, 'group', 'auth', 'group'),
(3, 'user', 'auth', 'user'),
(4, 'content type', 'contenttypes', 'contenttype'),
(5, 'session', 'sessions', 'session'),
(6, 'site', 'sites', 'site'),
(7, 'log entry', 'admin', 'logentry'),
(8, 'registration profile', 'registration', 'registrationprofile'),
(9, 'report', 'tcc', 'report'),
(10, 'user profile', 'tcc', 'userprofile'),
(11, 'organisation', 'tcc', 'organisation'),
(12, 'department', 'tcc', 'department'),
(13, 'distribution', 'tcc', 'distribution'),
(14, 'lab', 'tcc', 'lab'),
(15, 'mat comment', 'tcc', 'matcomment'),
(16, 'material', 'tcc', 'material'),
(17, 'test', 'tcc', 'test'),
(18, 'clientadd', 'tcc', 'clientadd'),
(19, 'edit clientadd', 'tcc', 'editclientadd'),
(20, 'govt', 'tcc', 'govt'),
(21, 'payment', 'tcc', 'payment'),
(22, 'job', 'tcc', 'job'),
(23, 'non payment job', 'tcc', 'nonpaymentjob'),
(24, 'edit job', 'tcc', 'editjob'),
(25, 'client job', 'tcc', 'clientjob'),
(26, 'client edit job', 'tcc', 'clienteditjob'),
(27, 'suspence job', 'tcc', 'suspencejob'),
(28, 'suspence edit job', 'tcc', 'suspenceeditjob'),
(29, 'test total', 'tcc', 'testtotal'),
(30, 'test total perf', 'tcc', 'testtotalperf'),
(31, 'bill', 'tcc', 'bill'),
(32, 'bill perf', 'tcc', 'billperf'),
(33, 'amount', 'tcc', 'amount'),
(34, 'cdf amount', 'tcc', 'cdfamount'),
(35, 'distance', 'tcc', 'distance'),
(36, 'distanceperf', 'tcc', 'distanceperf'),
(37, 'suspence', 'tcc', 'suspence'),
(38, 'staff', 'tcc', 'staff'),
(39, 'profroma tax', 'tcc', 'profromatax'),
(40, 'ta da', 'tcc', 'tada'),
(41, 'transportation', 'tcc', 'transportation'),
(42, 'transport', 'tcc', 'transport'),
(43, 'bankdetails', 'tcc', 'bankdetails'),
(44, 'prog_letter', 'tcc', 'prog_letter'),
(45, 'programme', 'tcc', 'programme'),
(46, 'search', 'report', 'search'),
(47, 'report', 'report', 'report'),
(48, 'cube', 'report', 'cube'),
(49, 'chem_analysis', 'report', 'chem_analysis'),
(50, 'steel', 'report', 'steel'),
(51, 'm s_steel_plate', 'report', 'ms_steel_plate'),
(52, 'm s_1786_fe_415', 'report', 'ms_1786_fe_415'),
(53, 'm s_1786_fe_500', 'report', 'ms_1786_fe_500'),
(54, 'i s_432_m s_grade_1_a_20mm_dia', 'report', 'is_432_ms_grade_1_a_20mm_dia'),
(55, 'i s_2062_2006', 'report', 'is_2062_2006'),
(56, 'ground_ water', 'report', 'ground_water'),
(57, 'concrete_ paver', 'report', 'concrete_paver'),
(58, 'interlock_ tiles', 'report', 'interlock_tiles'),
(59, 'pc', 'report', 'pc'),
(60, 'rebound_ hammer_ testing', 'report', 'rebound_hammer_testing'),
(61, 'brick', 'report', 'brick'),
(62, 'water', 'report', 'water'),
(63, 'soil_ ohsr', 'report', 'soil_ohsr'),
(64, 'soil_ building', 'report', 'soil_building'),
(65, 'admixture', 'report', 'admixture'),
(66, 'cement_ppc', 'report', 'cement_ppc'),
(67, 'cement_op c_33', 'report', 'cement_opc_33'),
(68, 'cement_op c_43', 'report', 'cement_opc_43'),
(69, 'cement_op c_53', 'report', 'cement_opc_53'),
(70, 'soil_ sample', 'report', 'soil_sample'),
(71, 'drinking_water', 'report', 'drinking_water'),
(72, 'tag', 'tagging', 'tag'),
(73, 'tagged item', 'tagging', 'taggeditem');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_c25c2c28` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_site`
--

CREATE TABLE IF NOT EXISTS `django_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `django_site`
--

INSERT INTO `django_site` (`id`, `domain`, `name`) VALUES
(1, 'example.com', 'example.com');

-- --------------------------------------------------------

--
-- Table structure for table `registration_registrationprofile`
--

CREATE TABLE IF NOT EXISTS `registration_registrationprofile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `activation_key` varchar(40) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `report_admixture`
--

CREATE TABLE IF NOT EXISTS `report_admixture` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip_address` char(15) NOT NULL,
  `Report_id_id` int(11) NOT NULL,
  `Physical_state` varchar(100) NOT NULL,
  `Specific_Gravity` varchar(100) NOT NULL,
  `PH_Value` varchar(100) NOT NULL,
  `Dry_Material_Content` varchar(100) NOT NULL,
  `Ash_Content` varchar(100) NOT NULL,
  `Chloride_Content` varchar(100) NOT NULL,
  `Control_Mix` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `report_admixture_a6e5aad9` (`Report_id_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `report_brick`
--

CREATE TABLE IF NOT EXISTS `report_brick` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip_address` char(15) NOT NULL,
  `Report_id_id` int(11) NOT NULL,
  `Comp_Strength` varchar(255) NOT NULL,
  `Water_Absorption` varchar(255) NOT NULL,
  `Efflorescence` varchar(255) NOT NULL,
  `Dimension_Test` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `report_brick_a6e5aad9` (`Report_id_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `report_cement_opc_33`
--

CREATE TABLE IF NOT EXISTS `report_cement_opc_33` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip_address` char(15) NOT NULL,
  `Report_id_id` int(11) NOT NULL,
  `Initial_Time` varchar(100) NOT NULL,
  `Final_Time` varchar(100) NOT NULL,
  `Fineness` varchar(100) NOT NULL,
  `Unaerated_Cement_Le` varchar(100) NOT NULL,
  `After_7_Days_Areation_Le` varchar(100) NOT NULL,
  `Consistency` varchar(100) NOT NULL,
  `Hours_72` varchar(100) NOT NULL,
  `Hours_168` varchar(100) NOT NULL,
  `Hours_672` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `report_cement_opc_33_a6e5aad9` (`Report_id_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `report_cement_opc_43`
--

CREATE TABLE IF NOT EXISTS `report_cement_opc_43` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip_address` char(15) NOT NULL,
  `Report_id_id` int(11) NOT NULL,
  `Initial_Time` varchar(100) NOT NULL,
  `Final_Time` varchar(100) NOT NULL,
  `Fineness` varchar(100) NOT NULL,
  `Unaerated_Cement_Le` varchar(100) NOT NULL,
  `After_7_Days_Areation_Le` varchar(100) NOT NULL,
  `Consistency` varchar(100) NOT NULL,
  `Hours_72` varchar(100) NOT NULL,
  `Hours_168` varchar(100) NOT NULL,
  `Hours_672` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `report_cement_opc_43_a6e5aad9` (`Report_id_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `report_cement_opc_53`
--

CREATE TABLE IF NOT EXISTS `report_cement_opc_53` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip_address` char(15) NOT NULL,
  `Report_id_id` int(11) NOT NULL,
  `Initial_Time` varchar(100) NOT NULL,
  `Final_Time` varchar(100) NOT NULL,
  `Fineness` varchar(100) NOT NULL,
  `Unaerated_Cement_Le` varchar(100) NOT NULL,
  `After_7_Days_Areation_Le` varchar(100) NOT NULL,
  `Consistency` varchar(100) NOT NULL,
  `Hours_72` varchar(100) NOT NULL,
  `Hours_168` varchar(100) NOT NULL,
  `Hours_672` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `report_cement_opc_53_a6e5aad9` (`Report_id_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `report_cement_ppc`
--

CREATE TABLE IF NOT EXISTS `report_cement_ppc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip_address` char(15) NOT NULL,
  `Report_id_id` int(11) NOT NULL,
  `Initial_Time` varchar(100) NOT NULL,
  `Final_Time` varchar(100) NOT NULL,
  `Fineness` varchar(100) NOT NULL,
  `Unaerated_Cement_Le` varchar(100) NOT NULL,
  `After_7_Days_Areation_Le` varchar(100) NOT NULL,
  `Consistency` varchar(100) NOT NULL,
  `Hours_72` varchar(100) NOT NULL,
  `Hours_168` varchar(100) NOT NULL,
  `Hours_672` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `report_cement_ppc_a6e5aad9` (`Report_id_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `report_chem_analysis`
--

CREATE TABLE IF NOT EXISTS `report_chem_analysis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip_address` char(15) NOT NULL,
  `Report_id_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `result` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `report_chem_analysis_a6e5aad9` (`Report_id_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `report_concrete_paver`
--

CREATE TABLE IF NOT EXISTS `report_concrete_paver` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip_address` char(15) NOT NULL,
  `Report_id_id` int(11) NOT NULL,
  `Description` varchar(255) NOT NULL,
  `Thickness` varchar(255) NOT NULL,
  `Comp_Strength_MPa` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `report_concrete_paver_a6e5aad9` (`Report_id_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `report_cube`
--

CREATE TABLE IF NOT EXISTS `report_cube` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip_address` char(15) NOT NULL,
  `Report_id_id` int(11) NOT NULL,
  `Description` varchar(150) NOT NULL,
  `Breaking_load` varchar(150) NOT NULL,
  `Mix` varchar(255) NOT NULL,
  `Comp_strength` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `report_cube_a6e5aad9` (`Report_id_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `report_drinking_water`
--

CREATE TABLE IF NOT EXISTS `report_drinking_water` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip_address` char(15) NOT NULL,
  `Report_id_id` int(11) NOT NULL,
  `Color_Hazen_Units` varchar(100) NOT NULL,
  `pH` varchar(100) NOT NULL,
  `Turbidity` varchar(100) NOT NULL,
  `TDS` varchar(100) NOT NULL,
  `Total_hardness` varchar(100) NOT NULL,
  `Calcium` varchar(100) NOT NULL,
  `Magnesium` varchar(100) NOT NULL,
  `Chlorides` varchar(100) NOT NULL,
  `Odour` varchar(100) NOT NULL,
  `Iron` varchar(100) NOT NULL,
  `Sulphates` varchar(100) NOT NULL,
  `Nitrates` varchar(100) NOT NULL,
  `Arsenic` varchar(100) NOT NULL,
  `Flurides` varchar(100) NOT NULL,
  `Total_Califorms` varchar(100) NOT NULL,
  `E_Coli` varchar(100) NOT NULL,
  `Alkalinity` varchar(100) NOT NULL,
  `Phenolic_compounds` varchar(100) NOT NULL,
  `Copper` varchar(100) NOT NULL,
  `Cadmium` varchar(100) NOT NULL,
  `Lead` varchar(100) NOT NULL,
  `Zinc` varchar(100) NOT NULL,
  `Mercury` varchar(100) NOT NULL,
  `Chromium` varchar(100) NOT NULL,
  `Aluminium` varchar(100) NOT NULL,
  `Boron` varchar(100) NOT NULL,
  `Cyanide` varchar(100) NOT NULL,
  `Manganese` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `report_drinking_water_a6e5aad9` (`Report_id_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `report_ground_water`
--

CREATE TABLE IF NOT EXISTS `report_ground_water` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip_address` char(15) NOT NULL,
  `Report_id_id` int(11) NOT NULL,
  `Result_1` varchar(255) NOT NULL,
  `Result_2` varchar(255) NOT NULL,
  `Result_3` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `report_ground_water_a6e5aad9` (`Report_id_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `report_interlock_tiles`
--

CREATE TABLE IF NOT EXISTS `report_interlock_tiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip_address` char(15) NOT NULL,
  `Report_id_id` int(11) NOT NULL,
  `Description` varchar(255) NOT NULL,
  `Thickness` varchar(255) NOT NULL,
  `Comp_Strength_MPa` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `report_interlock_tiles_a6e5aad9` (`Report_id_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `report_is_432_ms_grade_1_a_20mm_dia`
--

CREATE TABLE IF NOT EXISTS `report_is_432_ms_grade_1_a_20mm_dia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip_address` char(15) NOT NULL,
  `Report_id_id` int(11) NOT NULL,
  `Mech_Prop` varchar(255) NOT NULL,
  `Proof_stress` varchar(255) NOT NULL,
  `Ultimate_tensile_stress` varchar(255) NOT NULL,
  `Elongation` varchar(255) NOT NULL,
  `Bend_Rebend_test` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `report_is_432_ms_grade_1_a_20mm_dia_a6e5aad9` (`Report_id_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `report_is_2062_2006`
--

CREATE TABLE IF NOT EXISTS `report_is_2062_2006` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip_address` char(15) NOT NULL,
  `Report_id_id` int(11) NOT NULL,
  `Chemical_test` varchar(255) NOT NULL,
  `Carbon` varchar(255) NOT NULL,
  `Sulphur` varchar(255) NOT NULL,
  `Phosphorous` varchar(255) NOT NULL,
  `Silicon` varchar(255) NOT NULL,
  `Manganese` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `report_is_2062_2006_a6e5aad9` (`Report_id_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `report_ms_1786_fe_415`
--

CREATE TABLE IF NOT EXISTS `report_ms_1786_fe_415` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip_address` char(15) NOT NULL,
  `Report_id_id` int(11) NOT NULL,
  `Mech_Prop` varchar(255) NOT NULL,
  `Proof_stress` varchar(255) NOT NULL,
  `Ultimate_tensile_stress` varchar(255) NOT NULL,
  `Elongation` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `report_ms_1786_fe_415_a6e5aad9` (`Report_id_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `report_ms_1786_fe_500`
--

CREATE TABLE IF NOT EXISTS `report_ms_1786_fe_500` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip_address` char(15) NOT NULL,
  `Report_id_id` int(11) NOT NULL,
  `Mech_Prop` varchar(255) NOT NULL,
  `Proof_stress` varchar(255) NOT NULL,
  `Ultimate_tensile_stress` varchar(255) NOT NULL,
  `Elongation` varchar(255) NOT NULL,
  `Bend_Rebend_test` varchar(255) NOT NULL,
  `Unit_wt` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `report_ms_1786_fe_500_a6e5aad9` (`Report_id_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `report_ms_steel_plate`
--

CREATE TABLE IF NOT EXISTS `report_ms_steel_plate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip_address` char(15) NOT NULL,
  `Report_id_id` int(11) NOT NULL,
  `Mech_Prop` varchar(255) NOT NULL,
  `Proof_stress` varchar(255) NOT NULL,
  `Ultimate_tensile_stress` varchar(255) NOT NULL,
  `Elongation` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `report_ms_steel_plate_a6e5aad9` (`Report_id_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `report_pc`
--

CREATE TABLE IF NOT EXISTS `report_pc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip_address` char(15) NOT NULL,
  `Report_id_id` int(11) NOT NULL,
  `Description` varchar(255) NOT NULL,
  `Bitumen_Content` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `report_pc_a6e5aad9` (`Report_id_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `report_rebound_hammer_testing`
--

CREATE TABLE IF NOT EXISTS `report_rebound_hammer_testing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip_address` char(15) NOT NULL,
  `Report_id_id` int(11) NOT NULL,
  `Location` varchar(255) NOT NULL,
  `Striking_Angle` varchar(255) NOT NULL,
  `Average_Rebound_No` varchar(255) NOT NULL,
  `Comp_Strength_MPa` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `report_rebound_hammer_testing_a6e5aad9` (`Report_id_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `report_report`
--

CREATE TABLE IF NOT EXISTS `report_report` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_id` int(11) DEFAULT NULL,
  `Sample_no` varchar(100) NOT NULL,
  `Header_column_1` varchar(255) NOT NULL,
  `Header_column_2` varchar(255) NOT NULL,
  `Footer_column_3` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `report_report_751f44ae` (`job_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `report_search`
--

CREATE TABLE IF NOT EXISTS `report_search` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job` varchar(10) NOT NULL,
  `report` varchar(10) NOT NULL,
  `material` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `report_soil_building`
--

CREATE TABLE IF NOT EXISTS `report_soil_building` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip_address` char(15) NOT NULL,
  `Report_id_id` int(11) NOT NULL,
  `Latitude_N` varchar(100) NOT NULL,
  `Longitude_E` varchar(100) NOT NULL,
  `Site_Name` varchar(100) NOT NULL,
  `Submitted_1` varchar(100) NOT NULL,
  `Submitted_2` varchar(100) NOT NULL,
  `Submitted_3` varchar(100) NOT NULL,
  `Date_of_Testing` varchar(100) NOT NULL,
  `Presence_1` varchar(100) NOT NULL,
  `Presence_2` varchar(100) NOT NULL,
  `Type_of_Str` varchar(100) NOT NULL,
  `Wall_Dt` varchar(100) NOT NULL,
  `Wall_B` varchar(100) NOT NULL,
  `Wall_C` varchar(100) NOT NULL,
  `Wall_Phay` varchar(100) NOT NULL,
  `Wall_Phay_Fe` varchar(100) NOT NULL,
  `Wall_Nc` varchar(100) NOT NULL,
  `Wall_Nq` varchar(100) NOT NULL,
  `Wall_Ny` varchar(100) NOT NULL,
  `Wall_Sc` varchar(100) NOT NULL,
  `Wall_Sq` varchar(100) NOT NULL,
  `Wall_Sy` varchar(100) NOT NULL,
  `Wall_dc` varchar(100) NOT NULL,
  `Wall_dq_dy` varchar(100) NOT NULL,
  `Wall_w` varchar(100) NOT NULL,
  `Gama_wall` varchar(100) NOT NULL,
  `Wall_peq` varchar(100) NOT NULL,
  `Wall_Total` varchar(100) NOT NULL,
  `Wall_T_2` varchar(100) NOT NULL,
  `Col_Df` varchar(100) NOT NULL,
  `Col_L` varchar(100) NOT NULL,
  `Col_B` varchar(100) NOT NULL,
  `Col_Sc` varchar(100) NOT NULL,
  `Col_Sq` varchar(100) NOT NULL,
  `Col_Sy` varchar(100) NOT NULL,
  `Col_dc` varchar(100) NOT NULL,
  `Col_dq_dy` varchar(100) NOT NULL,
  `Col_peq` varchar(100) NOT NULL,
  `Col_Total` varchar(100) NOT NULL,
  `Col_T_2` varchar(100) NOT NULL,
  `Dt_1` varchar(100) NOT NULL,
  `Dt_2` varchar(100) NOT NULL,
  `Dt_3` varchar(100) NOT NULL,
  `Dt_4` varchar(100) NOT NULL,
  `Dt_5` varchar(100) NOT NULL,
  `Dt_6` varchar(100) NOT NULL,
  `Dt_7` varchar(100) NOT NULL,
  `Dt_8` varchar(100) NOT NULL,
  `Ob_Pr_1` varchar(100) NOT NULL,
  `Ob_Pr_2` varchar(100) NOT NULL,
  `Ob_Pr_3` varchar(100) NOT NULL,
  `Ob_Pr_4` varchar(100) NOT NULL,
  `Ob_Pr_5` varchar(100) NOT NULL,
  `Ob_Pr_6` varchar(100) NOT NULL,
  `Ob_Pr_7` varchar(100) NOT NULL,
  `Ob_Pr_8` varchar(100) NOT NULL,
  `Corr_F_1` varchar(100) NOT NULL,
  `Corr_F_2` varchar(100) NOT NULL,
  `Corr_F_3` varchar(100) NOT NULL,
  `Corr_F_4` varchar(100) NOT NULL,
  `Corr_F_5` varchar(100) NOT NULL,
  `Corr_F_6` varchar(100) NOT NULL,
  `Corr_F_7` varchar(100) NOT NULL,
  `Corr_F_8` varchar(100) NOT NULL,
  `Ob_N_V1` varchar(100) NOT NULL,
  `Ob_N_V2` varchar(100) NOT NULL,
  `Ob_N_V3` varchar(100) NOT NULL,
  `Ob_N_V4` varchar(100) NOT NULL,
  `Ob_N_V5` varchar(100) NOT NULL,
  `Ob_N_V6` varchar(100) NOT NULL,
  `Ob_N_V7` varchar(100) NOT NULL,
  `Ob_N_V8` varchar(100) NOT NULL,
  `Corr_N_V1` varchar(100) NOT NULL,
  `Corr_N_V2` varchar(100) NOT NULL,
  `Corr_N_V3` varchar(100) NOT NULL,
  `Corr_N_V4` varchar(100) NOT NULL,
  `Corr_N_V5` varchar(100) NOT NULL,
  `Corr_N_V6` varchar(100) NOT NULL,
  `Corr_N_V7` varchar(100) NOT NULL,
  `Corr_N_V8` varchar(100) NOT NULL,
  `Wall_Net_V` varchar(100) NOT NULL,
  `Wall_Value` varchar(100) NOT NULL,
  `Wall_G_V` varchar(100) NOT NULL,
  `Col_Value` varchar(100) NOT NULL,
  `Col_Net_V` varchar(100) NOT NULL,
  `Col_G_V` varchar(100) NOT NULL,
  `Col_N_V` varchar(100) NOT NULL,
  `Wall_N_V` varchar(100) NOT NULL,
  `Water_Table` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `report_soil_building_a6e5aad9` (`Report_id_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `report_soil_ohsr`
--

CREATE TABLE IF NOT EXISTS `report_soil_ohsr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip_address` char(15) NOT NULL,
  `Report_id_id` int(11) NOT NULL,
  `Date_of_testing` date NOT NULL,
  `Type_of_str` varchar(255) NOT NULL,
  `Latitude_N` varchar(255) NOT NULL,
  `Longitude_E` varchar(255) NOT NULL,
  `Presence_1` varchar(255) NOT NULL,
  `Presence_2` varchar(255) NOT NULL,
  `Submitted_1` varchar(255) NOT NULL,
  `Submitted_2` varchar(255) NOT NULL,
  `Submitted_3` varchar(255) NOT NULL,
  `Site_name` varchar(255) NOT NULL,
  `Water_table` varchar(255) NOT NULL,
  `Depth_D` varchar(255) NOT NULL,
  `Diameter_B` varchar(255) NOT NULL,
  `Gama_G` varchar(255) NOT NULL,
  `C` varchar(255) NOT NULL,
  `Phay` varchar(255) NOT NULL,
  `Phay_fe` varchar(255) NOT NULL,
  `Nc` varchar(255) NOT NULL,
  `Nq` varchar(255) NOT NULL,
  `Ny` varchar(255) NOT NULL,
  `dc` varchar(255) NOT NULL,
  `dqdy` varchar(255) NOT NULL,
  `Water` varchar(255) NOT NULL,
  `Pulse_Pulse` varchar(255) NOT NULL,
  `Eq_Total` varchar(255) NOT NULL,
  `Total_Dby_2` varchar(255) NOT NULL,
  `Dt_1` varchar(255) NOT NULL,
  `Dt_2` varchar(255) NOT NULL,
  `Dt_3` varchar(255) NOT NULL,
  `Dt_4` varchar(255) NOT NULL,
  `Dt_5` varchar(255) NOT NULL,
  `Dt_6` varchar(255) NOT NULL,
  `Dt_7` varchar(255) NOT NULL,
  `Dt_8` varchar(255) NOT NULL,
  `Ob_Pr_1` varchar(255) NOT NULL,
  `Ob_Pr_2` varchar(255) NOT NULL,
  `Ob_Pr_3` varchar(255) NOT NULL,
  `Ob_Pr_4` varchar(255) NOT NULL,
  `Ob_Pr_5` varchar(255) NOT NULL,
  `Ob_Pr_6` varchar(255) NOT NULL,
  `Ob_Pr_7` varchar(255) NOT NULL,
  `Ob_Pr_8` varchar(255) NOT NULL,
  `Corr_F_1` varchar(255) NOT NULL,
  `Corr_F_2` varchar(255) NOT NULL,
  `Corr_F_3` varchar(255) NOT NULL,
  `Corr_F_4` varchar(255) NOT NULL,
  `Corr_F_5` varchar(255) NOT NULL,
  `Corr_F_6` varchar(255) NOT NULL,
  `Corr_F_7` varchar(255) NOT NULL,
  `Corr_F_8` varchar(255) NOT NULL,
  `Ob_N_V1` varchar(255) NOT NULL,
  `Ob_N_V2` varchar(255) NOT NULL,
  `Ob_N_V3` varchar(255) NOT NULL,
  `Ob_N_V4` varchar(255) NOT NULL,
  `Ob_N_V5` varchar(255) NOT NULL,
  `Ob_N_V6` varchar(255) NOT NULL,
  `Ob_N_V7` varchar(255) NOT NULL,
  `Ob_N_V8` varchar(255) NOT NULL,
  `Corr_N_V1` varchar(255) NOT NULL,
  `Corr_N_V2` varchar(255) NOT NULL,
  `Corr_N_V3` varchar(255) NOT NULL,
  `Corr_N_V4` varchar(255) NOT NULL,
  `Corr_N_V5` varchar(255) NOT NULL,
  `Corr_N_V6` varchar(255) NOT NULL,
  `Corr_N_V7` varchar(255) NOT NULL,
  `Corr_N_V8` varchar(255) NOT NULL,
  `N_Value` varchar(255) NOT NULL,
  `S` varchar(255) NOT NULL,
  `Value` varchar(255) NOT NULL,
  `Net_Value` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `report_soil_ohsr_a6e5aad9` (`Report_id_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `report_soil_sample`
--

CREATE TABLE IF NOT EXISTS `report_soil_sample` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip_address` char(15) NOT NULL,
  `Report_id_id` int(11) NOT NULL,
  `Max_Dry_Density` varchar(100) NOT NULL,
  `Optimum_Moisture_Content` varchar(100) NOT NULL,
  `Liquid_limit` varchar(100) NOT NULL,
  `Plastic_limit` varchar(100) NOT NULL,
  `Cohesion_Intercept` varchar(100) NOT NULL,
  `Angle_of_Shearing_Resistence` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `report_soil_sample_a6e5aad9` (`Report_id_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `report_steel`
--

CREATE TABLE IF NOT EXISTS `report_steel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip_address` char(15) NOT NULL,
  `Report_id_id` int(11) NOT NULL,
  `Description_of_Test` varchar(255) NOT NULL,
  `Acceptable_limit_as_per` varchar(255) NOT NULL,
  `Result_1` varchar(255) NOT NULL,
  `Result_2` varchar(255) NOT NULL,
  `Result_3` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `report_steel_a6e5aad9` (`Report_id_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `report_water`
--

CREATE TABLE IF NOT EXISTS `report_water` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip_address` char(15) NOT NULL,
  `Report_id_id` int(11) NOT NULL,
  `PH_Value` varchar(255) NOT NULL,
  `Color` varchar(255) NOT NULL,
  `COD_Total` varchar(255) NOT NULL,
  `COD_Filtered` varchar(255) NOT NULL,
  `BOD5_Total` varchar(255) NOT NULL,
  `BOD5_Filtered` varchar(255) NOT NULL,
  `Sulphide` varchar(255) NOT NULL,
  `Sulphate` varchar(255) NOT NULL,
  `Alkalinity` varchar(255) NOT NULL,
  `Total_Suspended_Solids` varchar(255) NOT NULL,
  `Volatile_Suspended_Solids` varchar(255) NOT NULL,
  `Chloride_as_Cl` varchar(255) NOT NULL,
  `Nickel` varchar(255) NOT NULL,
  `Iron` varchar(255) NOT NULL,
  `Maganese` varchar(255) NOT NULL,
  `Copper` varchar(255) NOT NULL,
  `Hardness` varchar(255) NOT NULL,
  `Nitrates` varchar(255) NOT NULL,
  `Nitrites` varchar(255) NOT NULL,
  `Turbidity` varchar(255) NOT NULL,
  `Faecal_coliform` varchar(255) NOT NULL,
  `TDS` varchar(255) NOT NULL,
  `Taste_and_Odour` varchar(255) NOT NULL,
  `Calcium_and_Ca_Mg_per_l` varchar(255) NOT NULL,
  `Residual_Free_Chloride` varchar(255) NOT NULL,
  `Florides` varchar(255) NOT NULL,
  `Ammonia_Nitrogen` varchar(255) NOT NULL,
  `Total_Phosphorus` varchar(255) NOT NULL,
  `TKN` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `report_water_a6e5aad9` (`Report_id_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tagging_tag`
--

CREATE TABLE IF NOT EXISTS `tagging_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tagging_taggeditem`
--

CREATE TABLE IF NOT EXISTS `tagging_taggeditem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_id` int(11) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `object_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tag_id` (`tag_id`,`content_type_id`,`object_id`),
  KEY `tagging_taggeditem_3747b463` (`tag_id`),
  KEY `tagging_taggeditem_e4470c6e` (`content_type_id`),
  KEY `tagging_taggeditem_829e37fd` (`object_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tcc_amount`
--

CREATE TABLE IF NOT EXISTS `tcc_amount` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_id` int(11) NOT NULL,
  `college_income` int(11) DEFAULT NULL,
  `admin_charge` int(11) DEFAULT NULL,
  `consultancy_asst` int(11) DEFAULT NULL,
  `development_fund` int(11) DEFAULT NULL,
  `unit_price` int(11) DEFAULT NULL,
  `report_type` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tcc_amount_751f44ae` (`job_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tcc_bankdetails`
--

CREATE TABLE IF NOT EXISTS `tcc_bankdetails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `accname` varchar(50) NOT NULL,
  `accountno` int(11) NOT NULL,
  `accountcode` varchar(50) NOT NULL,
  `address` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tcc_bill`
--

CREATE TABLE IF NOT EXISTS `tcc_bill` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_no` int(11) NOT NULL,
  `education_tax` int(11) DEFAULT NULL,
  `higher_education_tax` int(11) DEFAULT NULL,
  `service_tax` int(11) DEFAULT NULL,
  `net_total` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `discount_total` int(11) DEFAULT NULL,
  `trans_total` int(11) DEFAULT NULL,
  `trans_net_total` int(11) DEFAULT NULL,
  `balance` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tcc_billperf`
--

CREATE TABLE IF NOT EXISTS `tcc_billperf` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_no` int(11) NOT NULL,
  `education_tax` int(11) DEFAULT NULL,
  `higher_education_tax` int(11) DEFAULT NULL,
  `service_tax` int(11) DEFAULT NULL,
  `net_total` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `discount_total` int(11) DEFAULT NULL,
  `trans_total` int(11) DEFAULT NULL,
  `trans_net_total` int(11) DEFAULT NULL,
  `balance` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tcc_cdfamount`
--

CREATE TABLE IF NOT EXISTS `tcc_cdfamount` (
  `job_no` int(11) NOT NULL,
  `date` date NOT NULL,
  `lab` varchar(100) NOT NULL,
  `total` int(11) NOT NULL,
  `field` varchar(10) NOT NULL,
  `other_field` varchar(100) DEFAULT NULL,
  `report_type` varchar(20) NOT NULL,
  PRIMARY KEY (`job_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tcc_clientadd`
--

CREATE TABLE IF NOT EXISTS `tcc_clientadd` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `job_no` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tcc_clientadd_fbfc09f1` (`user_id`),
  KEY `tcc_clientadd_4a4e8ffb` (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tcc_clienteditjob`
--

CREATE TABLE IF NOT EXISTS `tcc_clienteditjob` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_id` int(11) NOT NULL,
  `material_id` int(11) NOT NULL,
  `other_test` varchar(400) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tcc_clienteditjob_751f44ae` (`job_id`),
  KEY `tcc_clienteditjob_fab9ba43` (`material_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tcc_clienteditjob_test`
--

CREATE TABLE IF NOT EXISTS `tcc_clienteditjob_test` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `clienteditjob_id` int(11) NOT NULL,
  `test_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `clienteditjob_id` (`clienteditjob_id`,`test_id`),
  KEY `tcc_clienteditjob_test_cbd9e9bb` (`clienteditjob_id`),
  KEY `tcc_clienteditjob_test_a88de8dc` (`test_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tcc_clientjob`
--

CREATE TABLE IF NOT EXISTS `tcc_clientjob` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_id` int(11) NOT NULL,
  `material_id` int(11) NOT NULL,
  `other_test` varchar(400) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tcc_clientjob_751f44ae` (`job_id`),
  KEY `tcc_clientjob_fab9ba43` (`material_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tcc_clientjob_test`
--

CREATE TABLE IF NOT EXISTS `tcc_clientjob_test` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `clientjob_id` int(11) NOT NULL,
  `test_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `clientjob_id` (`clientjob_id`,`test_id`),
  KEY `tcc_clientjob_test_244d514d` (`clientjob_id`),
  KEY `tcc_clientjob_test_a88de8dc` (`test_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tcc_department`
--

CREATE TABLE IF NOT EXISTS `tcc_department` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `organisation_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` varchar(150) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `dean` varchar(50) NOT NULL,
  `faxno` varchar(100) NOT NULL,
  `email_1` varchar(75) NOT NULL,
  `email_2` varchar(75) NOT NULL,
  `url` varchar(50) NOT NULL,
  `about` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tcc_department_28b1ef86` (`organisation_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tcc_department`
--

INSERT INTO `tcc_department` (`id`, `organisation_id`, `name`, `address`, `phone`, `dean`, `faxno`, `email_1`, `email_2`, `url`, `about`) VALUES
(1, 1, 'Testing & Consultancy Cell', 'Gill Road, Gill Park, Ludhiana - 141006', '0161-2491193,5064509', 'Dr. Hardeep Singh Rai', '0161-5064742', 'tcc@gndec.ac.in', '', 'http//tcc.gndec.ac.in', 'Consultancy Services are being rendered by various Departments of the College to the industry, Sate Government Departments and Entrepreneurs and are e');

-- --------------------------------------------------------

--
-- Table structure for table `tcc_distance`
--

CREATE TABLE IF NOT EXISTS `tcc_distance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job` int(11) NOT NULL,
  `sandy` decimal(10,3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tcc_distanceperf`
--

CREATE TABLE IF NOT EXISTS `tcc_distanceperf` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job` int(11) NOT NULL,
  `sandy` decimal(10,3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tcc_distribution`
--

CREATE TABLE IF NOT EXISTS `tcc_distribution` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tcc_editclientadd`
--

CREATE TABLE IF NOT EXISTS `tcc_editclientadd` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tcc_editclientadd_fbfc09f1` (`user_id`),
  KEY `tcc_editclientadd_4a4e8ffb` (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tcc_editjob`
--

CREATE TABLE IF NOT EXISTS `tcc_editjob` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `job_no` int(11) NOT NULL,
  `sample` varchar(11) NOT NULL,
  `ip` varchar(50) NOT NULL,
  `site` varchar(600) DEFAULT NULL,
  `type_of_work_id` int(11) NOT NULL,
  `report_type_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `letter_no` varchar(200) DEFAULT NULL,
  `letter_date` date DEFAULT NULL,
  `tds` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `note` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tcc_editjob_4a4e8ffb` (`client_id`),
  KEY `tcc_editjob_ca5d2cd8` (`type_of_work_id`),
  KEY `tcc_editjob_3d4f9c7e` (`report_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tcc_govt`
--

CREATE TABLE IF NOT EXISTS `tcc_govt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(600) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tcc_job`
--

CREATE TABLE IF NOT EXISTS `tcc_job` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `job_no` int(11) NOT NULL,
  `sample` int(11) NOT NULL,
  `ip` varchar(50) NOT NULL,
  `site` varchar(5000) DEFAULT NULL,
  `type_of_work_id` int(11) NOT NULL,
  `report_type_id` int(11) NOT NULL,
  `pay` varchar(600) NOT NULL,
  `check_number` varchar(15) NOT NULL,
  `check_dd_date` varchar(15) NOT NULL,
  `date` date NOT NULL,
  `letter_no` varchar(400) NOT NULL,
  `letter_date` date DEFAULT NULL,
  `tds` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tcc_job_4a4e8ffb` (`client_id`),
  KEY `tcc_job_ca5d2cd8` (`type_of_work_id`),
  KEY `tcc_job_3d4f9c7e` (`report_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tcc_lab`
--

CREATE TABLE IF NOT EXISTS `tcc_lab` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(300) NOT NULL,
  `department_id` int(11) NOT NULL,
  `tags` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tcc_lab_2ae7390` (`department_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tcc_matcomment`
--

CREATE TABLE IF NOT EXISTS `tcc_matcomment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tcc_material`
--

CREATE TABLE IF NOT EXISTS `tcc_material` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lab_id` int(11) NOT NULL,
  `distribution_id` int(11) NOT NULL,
  `name` varchar(300) NOT NULL,
  `matcomment_id` int(11) NOT NULL,
  `tags` varchar(255) NOT NULL,
  `report_id` int(11) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tcc_material_b5ebef3a` (`lab_id`),
  KEY `tcc_material_3e25d6a` (`distribution_id`),
  KEY `tcc_material_bef36579` (`matcomment_id`),
  KEY `tcc_material_29fa1030` (`report_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tcc_nonpaymentjob`
--

CREATE TABLE IF NOT EXISTS `tcc_nonpaymentjob` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_no` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `ref_no` varchar(400) NOT NULL,
  `dated` date DEFAULT NULL,
  `site` varchar(5000) DEFAULT NULL,
  `material_type` varchar(500) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tcc_nonpaymentjob_4a4e8ffb` (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tcc_organisation`
--

CREATE TABLE IF NOT EXISTS `tcc_organisation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `address` varchar(150) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `director` varchar(50) NOT NULL,
  `status` varchar(5000) NOT NULL,
  `logo_upload` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tcc_organisation`
--

INSERT INTO `tcc_organisation` (`id`, `name`, `address`, `phone`, `director`, `status`, `logo_upload`) VALUES
(1, 'Guru Nanak Dev Engineering College', 'Gill Park, Gill Road, Ludhiana - 141006 ', '0161-2491193, 506450', 'Dr. M.S. Saini', 'Punjab Govt. Aided Status, NBA Accredited ISO-9001-2008 Certified', 'logo/gndeclogo.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tcc_payment`
--

CREATE TABLE IF NOT EXISTS `tcc_payment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tcc_profromatax`
--

CREATE TABLE IF NOT EXISTS `tcc_profromatax` (
  `pro_no` int(11) NOT NULL,
  `service_tax` int(11) NOT NULL,
  `higher_education_tax` int(11) NOT NULL,
  `education_tax` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  PRIMARY KEY (`pro_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tcc_programme`
--

CREATE TABLE IF NOT EXISTS `tcc_programme` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_department_name` varchar(50) NOT NULL,
  `phone_no` varchar(100) DEFAULT NULL,
  `on` date NOT NULL,
  `addr` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `at` time NOT NULL,
  `site` varchar(100) DEFAULT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tcc_prog_letter`
--

CREATE TABLE IF NOT EXISTS `tcc_prog_letter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tcc_report`
--

CREATE TABLE IF NOT EXISTS `tcc_report` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tcc_staff`
--

CREATE TABLE IF NOT EXISTS `tcc_staff` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `department_id` int(11) NOT NULL,
  `code` varchar(5) NOT NULL,
  `name` varchar(50) NOT NULL,
  `daily_income` int(11) NOT NULL,
  `position` varchar(100) NOT NULL,
  `lab_id` int(11) NOT NULL,
  `email` varchar(75) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tcc_staff_2ae7390` (`department_id`),
  KEY `tcc_staff_b5ebef3a` (`lab_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tcc_suspence`
--

CREATE TABLE IF NOT EXISTS `tcc_suspence` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_id` int(11) NOT NULL,
  `rate` int(11) DEFAULT NULL,
  `sus_id` int(11) DEFAULT NULL,
  `work_charge` int(11) DEFAULT NULL,
  `labour_charge` int(11) DEFAULT NULL,
  `boring_charge_external` int(11) DEFAULT NULL,
  `boring_charge_internal` int(11) DEFAULT NULL,
  `car_taxi_charge` int(11) DEFAULT NULL,
  `lab_testing_staff` varchar(90) NOT NULL,
  `field_testing_staff` varchar(90) NOT NULL,
  `test_date` date DEFAULT NULL,
  `suspence_bill_no` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tcc_suspence_751f44ae` (`job_id`),
  KEY `tcc_suspence_c13e1de8` (`sus_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tcc_suspenceeditjob`
--

CREATE TABLE IF NOT EXISTS `tcc_suspenceeditjob` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_id` int(11) NOT NULL,
  `field_id` int(11) NOT NULL,
  `test_id` int(11) DEFAULT NULL,
  `other` varchar(600) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tcc_suspenceeditjob_751f44ae` (`job_id`),
  KEY `tcc_suspenceeditjob_b49f3317` (`field_id`),
  KEY `tcc_suspenceeditjob_a88de8dc` (`test_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tcc_suspencejob`
--

CREATE TABLE IF NOT EXISTS `tcc_suspencejob` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_id` int(11) NOT NULL,
  `field_id` int(11) NOT NULL,
  `test_id` int(11) DEFAULT NULL,
  `other` varchar(600) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tcc_suspencejob_751f44ae` (`job_id`),
  KEY `tcc_suspencejob_b49f3317` (`field_id`),
  KEY `tcc_suspencejob_a88de8dc` (`test_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tcc_tada`
--

CREATE TABLE IF NOT EXISTS `tcc_tada` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_id` int(11) NOT NULL,
  `departure_time_up` time NOT NULL,
  `arrival_time_up` time NOT NULL,
  `departure_time_down` time NOT NULL,
  `arrival_time_down` time NOT NULL,
  `tada_amount` int(11) DEFAULT NULL,
  `reach_site` varchar(60) NOT NULL,
  `test_date` varchar(15) NOT NULL,
  `end_date` varchar(15) NOT NULL,
  `testing_staff_code` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tcc_tada_751f44ae` (`job_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tcc_test`
--

CREATE TABLE IF NOT EXISTS `tcc_test` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `material_id` int(11) NOT NULL,
  `name` varchar(300) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `unit` varchar(15) NOT NULL,
  `cost` int(11) DEFAULT NULL,
  `tags` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tcc_test_fab9ba43` (`material_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tcc_testtotal`
--

CREATE TABLE IF NOT EXISTS `tcc_testtotal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_id` int(11) NOT NULL,
  `unit_price` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tcc_testtotal_751f44ae` (`job_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tcc_testtotalperf`
--

CREATE TABLE IF NOT EXISTS `tcc_testtotalperf` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_id` int(11) NOT NULL,
  `unit_price` int(11) DEFAULT NULL,
  `rate` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tcc_testtotalperf_751f44ae` (`job_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tcc_transport`
--

CREATE TABLE IF NOT EXISTS `tcc_transport` (
  `vehicle_id` int(11) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_no` int(11) NOT NULL,
  `bill_no` int(11) DEFAULT NULL,
  `kilometer` varchar(150) NOT NULL,
  `amounts` varchar(180) NOT NULL,
  `total` int(11) DEFAULT NULL,
  `date` date NOT NULL,
  `test_date` varchar(300) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tcc_transport_4bffff7` (`vehicle_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tcc_transportation`
--

CREATE TABLE IF NOT EXISTS `tcc_transportation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vehicleno` varchar(150) NOT NULL,
  `rate` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tcc_userprofile`
--

CREATE TABLE IF NOT EXISTS `tcc_userprofile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `middle_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `pin_code` int(11) DEFAULT NULL,
  `state` varchar(30) NOT NULL,
  `website` varchar(200) DEFAULT NULL,
  `email_address` varchar(70) DEFAULT NULL,
  `contact_no` varchar(500) NOT NULL,
  `type_of_organisation` varchar(20) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tcc_userprofile_fbfc09f1` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `group_id_refs_id_3cea63fe` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `permission_id_refs_id_a7792de1` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `content_type_id_refs_id_728de91f` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `user_id_refs_id_831107f1` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `group_id_refs_id_f0ee9890` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `user_id_refs_id_f2045483` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `permission_id_refs_id_67e79cb` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `content_type_id_refs_id_288599e6` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `user_id_refs_id_c8665aa` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `registration_registrationprofile`
--
ALTER TABLE `registration_registrationprofile`
  ADD CONSTRAINT `user_id_refs_id_cecd7f3c` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `report_admixture`
--
ALTER TABLE `report_admixture`
  ADD CONSTRAINT `Report_id_id_refs_id_178d7e6d` FOREIGN KEY (`Report_id_id`) REFERENCES `report_report` (`id`);

--
-- Constraints for table `report_brick`
--
ALTER TABLE `report_brick`
  ADD CONSTRAINT `Report_id_id_refs_id_81070aeb` FOREIGN KEY (`Report_id_id`) REFERENCES `report_report` (`id`);

--
-- Constraints for table `report_cement_opc_33`
--
ALTER TABLE `report_cement_opc_33`
  ADD CONSTRAINT `Report_id_id_refs_id_6e703514` FOREIGN KEY (`Report_id_id`) REFERENCES `report_report` (`id`);

--
-- Constraints for table `report_cement_opc_43`
--
ALTER TABLE `report_cement_opc_43`
  ADD CONSTRAINT `Report_id_id_refs_id_3bb63219` FOREIGN KEY (`Report_id_id`) REFERENCES `report_report` (`id`);

--
-- Constraints for table `report_cement_opc_53`
--
ALTER TABLE `report_cement_opc_53`
  ADD CONSTRAINT `Report_id_id_refs_id_f58fbfe2` FOREIGN KEY (`Report_id_id`) REFERENCES `report_report` (`id`);

--
-- Constraints for table `report_cement_ppc`
--
ALTER TABLE `report_cement_ppc`
  ADD CONSTRAINT `Report_id_id_refs_id_991514a5` FOREIGN KEY (`Report_id_id`) REFERENCES `report_report` (`id`);

--
-- Constraints for table `report_chem_analysis`
--
ALTER TABLE `report_chem_analysis`
  ADD CONSTRAINT `Report_id_id_refs_id_e61a4e92` FOREIGN KEY (`Report_id_id`) REFERENCES `report_report` (`id`);

--
-- Constraints for table `report_concrete_paver`
--
ALTER TABLE `report_concrete_paver`
  ADD CONSTRAINT `Report_id_id_refs_id_7f8b59f7` FOREIGN KEY (`Report_id_id`) REFERENCES `report_report` (`id`);

--
-- Constraints for table `report_cube`
--
ALTER TABLE `report_cube`
  ADD CONSTRAINT `Report_id_id_refs_id_484f3450` FOREIGN KEY (`Report_id_id`) REFERENCES `report_report` (`id`);

--
-- Constraints for table `report_drinking_water`
--
ALTER TABLE `report_drinking_water`
  ADD CONSTRAINT `Report_id_id_refs_id_b4bc957` FOREIGN KEY (`Report_id_id`) REFERENCES `report_report` (`id`);

--
-- Constraints for table `report_ground_water`
--
ALTER TABLE `report_ground_water`
  ADD CONSTRAINT `Report_id_id_refs_id_9e97ac72` FOREIGN KEY (`Report_id_id`) REFERENCES `report_report` (`id`);

--
-- Constraints for table `report_interlock_tiles`
--
ALTER TABLE `report_interlock_tiles`
  ADD CONSTRAINT `Report_id_id_refs_id_50c3ff35` FOREIGN KEY (`Report_id_id`) REFERENCES `report_report` (`id`);

--
-- Constraints for table `report_is_432_ms_grade_1_a_20mm_dia`
--
ALTER TABLE `report_is_432_ms_grade_1_a_20mm_dia`
  ADD CONSTRAINT `Report_id_id_refs_id_7f0ea38` FOREIGN KEY (`Report_id_id`) REFERENCES `report_report` (`id`);

--
-- Constraints for table `report_is_2062_2006`
--
ALTER TABLE `report_is_2062_2006`
  ADD CONSTRAINT `Report_id_id_refs_id_c2d48c49` FOREIGN KEY (`Report_id_id`) REFERENCES `report_report` (`id`);

--
-- Constraints for table `report_ms_1786_fe_415`
--
ALTER TABLE `report_ms_1786_fe_415`
  ADD CONSTRAINT `Report_id_id_refs_id_129c2d8d` FOREIGN KEY (`Report_id_id`) REFERENCES `report_report` (`id`);

--
-- Constraints for table `report_ms_1786_fe_500`
--
ALTER TABLE `report_ms_1786_fe_500`
  ADD CONSTRAINT `Report_id_id_refs_id_55eca296` FOREIGN KEY (`Report_id_id`) REFERENCES `report_report` (`id`);

--
-- Constraints for table `report_ms_steel_plate`
--
ALTER TABLE `report_ms_steel_plate`
  ADD CONSTRAINT `Report_id_id_refs_id_14e2fc64` FOREIGN KEY (`Report_id_id`) REFERENCES `report_report` (`id`);

--
-- Constraints for table `report_pc`
--
ALTER TABLE `report_pc`
  ADD CONSTRAINT `Report_id_id_refs_id_9e201356` FOREIGN KEY (`Report_id_id`) REFERENCES `report_report` (`id`);

--
-- Constraints for table `report_rebound_hammer_testing`
--
ALTER TABLE `report_rebound_hammer_testing`
  ADD CONSTRAINT `Report_id_id_refs_id_4b8f0d56` FOREIGN KEY (`Report_id_id`) REFERENCES `report_report` (`id`);

--
-- Constraints for table `report_report`
--
ALTER TABLE `report_report`
  ADD CONSTRAINT `job_id_refs_id_68468e2e` FOREIGN KEY (`job_id`) REFERENCES `tcc_job` (`id`);

--
-- Constraints for table `report_soil_building`
--
ALTER TABLE `report_soil_building`
  ADD CONSTRAINT `Report_id_id_refs_id_667e7c72` FOREIGN KEY (`Report_id_id`) REFERENCES `report_report` (`id`);

--
-- Constraints for table `report_soil_ohsr`
--
ALTER TABLE `report_soil_ohsr`
  ADD CONSTRAINT `Report_id_id_refs_id_5e62fe18` FOREIGN KEY (`Report_id_id`) REFERENCES `report_report` (`id`);

--
-- Constraints for table `report_soil_sample`
--
ALTER TABLE `report_soil_sample`
  ADD CONSTRAINT `Report_id_id_refs_id_b5d0c46a` FOREIGN KEY (`Report_id_id`) REFERENCES `report_report` (`id`);

--
-- Constraints for table `report_steel`
--
ALTER TABLE `report_steel`
  ADD CONSTRAINT `Report_id_id_refs_id_7963eccf` FOREIGN KEY (`Report_id_id`) REFERENCES `report_report` (`id`);

--
-- Constraints for table `report_water`
--
ALTER TABLE `report_water`
  ADD CONSTRAINT `Report_id_id_refs_id_36b26aa9` FOREIGN KEY (`Report_id_id`) REFERENCES `report_report` (`id`);

--
-- Constraints for table `tagging_taggeditem`
--
ALTER TABLE `tagging_taggeditem`
  ADD CONSTRAINT `content_type_id_refs_id_f1f84eed` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `tag_id_refs_id_9f51000d` FOREIGN KEY (`tag_id`) REFERENCES `tagging_tag` (`id`);

--
-- Constraints for table `tcc_amount`
--
ALTER TABLE `tcc_amount`
  ADD CONSTRAINT `job_id_refs_id_6018e7df` FOREIGN KEY (`job_id`) REFERENCES `tcc_job` (`id`);

--
-- Constraints for table `tcc_clientadd`
--
ALTER TABLE `tcc_clientadd`
  ADD CONSTRAINT `client_id_refs_id_7f3a75eb` FOREIGN KEY (`client_id`) REFERENCES `tcc_userprofile` (`id`),
  ADD CONSTRAINT `user_id_refs_id_8335da6c` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `tcc_clienteditjob`
--
ALTER TABLE `tcc_clienteditjob`
  ADD CONSTRAINT `job_id_refs_id_eea896a0` FOREIGN KEY (`job_id`) REFERENCES `tcc_editjob` (`id`),
  ADD CONSTRAINT `material_id_refs_id_cac842a5` FOREIGN KEY (`material_id`) REFERENCES `tcc_material` (`id`);

--
-- Constraints for table `tcc_clienteditjob_test`
--
ALTER TABLE `tcc_clienteditjob_test`
  ADD CONSTRAINT `clienteditjob_id_refs_id_8826c265` FOREIGN KEY (`clienteditjob_id`) REFERENCES `tcc_clienteditjob` (`id`),
  ADD CONSTRAINT `test_id_refs_id_92a6bad2` FOREIGN KEY (`test_id`) REFERENCES `tcc_test` (`id`);

--
-- Constraints for table `tcc_clientjob`
--
ALTER TABLE `tcc_clientjob`
  ADD CONSTRAINT `job_id_refs_id_cf851ff0` FOREIGN KEY (`job_id`) REFERENCES `tcc_job` (`id`),
  ADD CONSTRAINT `material_id_refs_id_d47d0f5b` FOREIGN KEY (`material_id`) REFERENCES `tcc_material` (`id`);

--
-- Constraints for table `tcc_clientjob_test`
--
ALTER TABLE `tcc_clientjob_test`
  ADD CONSTRAINT `clientjob_id_refs_id_8691d49b` FOREIGN KEY (`clientjob_id`) REFERENCES `tcc_clientjob` (`id`),
  ADD CONSTRAINT `test_id_refs_id_fbfdbbd2` FOREIGN KEY (`test_id`) REFERENCES `tcc_test` (`id`);

--
-- Constraints for table `tcc_department`
--
ALTER TABLE `tcc_department`
  ADD CONSTRAINT `organisation_id_refs_id_52a18e23` FOREIGN KEY (`organisation_id`) REFERENCES `tcc_organisation` (`id`);

--
-- Constraints for table `tcc_editclientadd`
--
ALTER TABLE `tcc_editclientadd`
  ADD CONSTRAINT `client_id_refs_id_fd489edd` FOREIGN KEY (`client_id`) REFERENCES `tcc_userprofile` (`id`),
  ADD CONSTRAINT `user_id_refs_id_277f0ac4` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `tcc_editjob`
--
ALTER TABLE `tcc_editjob`
  ADD CONSTRAINT `client_id_refs_id_475d7782` FOREIGN KEY (`client_id`) REFERENCES `tcc_editclientadd` (`id`),
  ADD CONSTRAINT `report_type_id_refs_id_715128a7` FOREIGN KEY (`report_type_id`) REFERENCES `tcc_report` (`id`),
  ADD CONSTRAINT `type_of_work_id_refs_id_3ff866ab` FOREIGN KEY (`type_of_work_id`) REFERENCES `tcc_govt` (`id`);

--
-- Constraints for table `tcc_job`
--
ALTER TABLE `tcc_job`
  ADD CONSTRAINT `report_type_id_refs_id_bd662a09` FOREIGN KEY (`report_type_id`) REFERENCES `tcc_report` (`id`),
  ADD CONSTRAINT `client_id_refs_id_fd23af76` FOREIGN KEY (`client_id`) REFERENCES `tcc_clientadd` (`id`),
  ADD CONSTRAINT `type_of_work_id_refs_id_4da5e95b` FOREIGN KEY (`type_of_work_id`) REFERENCES `tcc_govt` (`id`);

--
-- Constraints for table `tcc_lab`
--
ALTER TABLE `tcc_lab`
  ADD CONSTRAINT `department_id_refs_id_e7636d4d` FOREIGN KEY (`department_id`) REFERENCES `tcc_department` (`id`);

--
-- Constraints for table `tcc_material`
--
ALTER TABLE `tcc_material`
  ADD CONSTRAINT `lab_id_refs_id_a847ac02` FOREIGN KEY (`lab_id`) REFERENCES `tcc_lab` (`id`),
  ADD CONSTRAINT `distribution_id_refs_id_f63fce78` FOREIGN KEY (`distribution_id`) REFERENCES `tcc_distribution` (`id`),
  ADD CONSTRAINT `matcomment_id_refs_id_6c19ca25` FOREIGN KEY (`matcomment_id`) REFERENCES `tcc_matcomment` (`id`),
  ADD CONSTRAINT `report_id_refs_id_378be35e` FOREIGN KEY (`report_id`) REFERENCES `tcc_report` (`id`);

--
-- Constraints for table `tcc_nonpaymentjob`
--
ALTER TABLE `tcc_nonpaymentjob`
  ADD CONSTRAINT `client_id_refs_id_c048bcad` FOREIGN KEY (`client_id`) REFERENCES `tcc_userprofile` (`id`);

--
-- Constraints for table `tcc_staff`
--
ALTER TABLE `tcc_staff`
  ADD CONSTRAINT `lab_id_refs_id_67a3244` FOREIGN KEY (`lab_id`) REFERENCES `tcc_lab` (`id`),
  ADD CONSTRAINT `department_id_refs_id_6f4e591c` FOREIGN KEY (`department_id`) REFERENCES `tcc_department` (`id`);

--
-- Constraints for table `tcc_suspence`
--
ALTER TABLE `tcc_suspence`
  ADD CONSTRAINT `job_id_refs_id_25fd0307` FOREIGN KEY (`job_id`) REFERENCES `tcc_job` (`id`),
  ADD CONSTRAINT `sus_id_refs_id_4acb203f` FOREIGN KEY (`sus_id`) REFERENCES `tcc_suspencejob` (`id`);

--
-- Constraints for table `tcc_suspenceeditjob`
--
ALTER TABLE `tcc_suspenceeditjob`
  ADD CONSTRAINT `test_id_refs_id_84316b4f` FOREIGN KEY (`test_id`) REFERENCES `tcc_test` (`id`),
  ADD CONSTRAINT `field_id_refs_id_8efd9e88` FOREIGN KEY (`field_id`) REFERENCES `tcc_material` (`id`),
  ADD CONSTRAINT `job_id_refs_id_7e90c6bd` FOREIGN KEY (`job_id`) REFERENCES `tcc_editjob` (`id`);

--
-- Constraints for table `tcc_suspencejob`
--
ALTER TABLE `tcc_suspencejob`
  ADD CONSTRAINT `job_id_refs_id_cafb41b3` FOREIGN KEY (`job_id`) REFERENCES `tcc_job` (`id`),
  ADD CONSTRAINT `field_id_refs_id_f9dd1268` FOREIGN KEY (`field_id`) REFERENCES `tcc_material` (`id`),
  ADD CONSTRAINT `test_id_refs_id_faa2f6f` FOREIGN KEY (`test_id`) REFERENCES `tcc_test` (`id`);

--
-- Constraints for table `tcc_tada`
--
ALTER TABLE `tcc_tada`
  ADD CONSTRAINT `job_id_refs_id_67cf5ad5` FOREIGN KEY (`job_id`) REFERENCES `tcc_job` (`id`);

--
-- Constraints for table `tcc_test`
--
ALTER TABLE `tcc_test`
  ADD CONSTRAINT `material_id_refs_id_ec75c33c` FOREIGN KEY (`material_id`) REFERENCES `tcc_material` (`id`);

--
-- Constraints for table `tcc_testtotal`
--
ALTER TABLE `tcc_testtotal`
  ADD CONSTRAINT `job_id_refs_id_4aaa37b8` FOREIGN KEY (`job_id`) REFERENCES `tcc_job` (`id`);

--
-- Constraints for table `tcc_testtotalperf`
--
ALTER TABLE `tcc_testtotalperf`
  ADD CONSTRAINT `job_id_refs_id_56adbb8d` FOREIGN KEY (`job_id`) REFERENCES `tcc_editjob` (`id`);

--
-- Constraints for table `tcc_transport`
--
ALTER TABLE `tcc_transport`
  ADD CONSTRAINT `vehicle_id_refs_id_b0f5c5` FOREIGN KEY (`vehicle_id`) REFERENCES `tcc_transportation` (`id`);

--
-- Constraints for table `tcc_userprofile`
--
ALTER TABLE `tcc_userprofile`
  ADD CONSTRAINT `user_id_refs_id_3f595074` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
