-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 23, 2022 at 12:42 PM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `e_voting`
--
CREATE DATABASE IF NOT EXISTS `e_voting` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `e_voting`;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=53 ;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add add candi model', 7, 'add_addcandimodel'),
(26, 'Can change add candi model', 7, 'change_addcandimodel'),
(27, 'Can delete add candi model', 7, 'delete_addcandimodel'),
(28, 'Can view add candi model', 7, 'view_addcandimodel'),
(29, 'Can add add party model', 8, 'add_addpartymodel'),
(30, 'Can change add party model', 8, 'change_addpartymodel'),
(31, 'Can delete add party model', 8, 'delete_addpartymodel'),
(32, 'Can view add party model', 8, 'view_addpartymodel'),
(33, 'Can add add election', 9, 'add_addelection'),
(34, 'Can change add election', 9, 'change_addelection'),
(35, 'Can delete add election', 9, 'delete_addelection'),
(36, 'Can view add election', 9, 'view_addelection'),
(37, 'Can add voter register model', 10, 'add_voterregistermodel'),
(38, 'Can change voter register model', 10, 'change_voterregistermodel'),
(39, 'Can delete voter register model', 10, 'delete_voterregistermodel'),
(40, 'Can view voter register model', 10, 'view_voterregistermodel'),
(41, 'Can add candidate election model', 11, 'add_candidateelectionmodel'),
(42, 'Can change candidate election model', 11, 'change_candidateelectionmodel'),
(43, 'Can delete candidate election model', 11, 'delete_candidateelectionmodel'),
(44, 'Can view candidate election model', 11, 'view_candidateelectionmodel'),
(45, 'Can add contact model', 12, 'add_contactmodel'),
(46, 'Can change contact model', 12, 'change_contactmodel'),
(47, 'Can delete contact model', 12, 'delete_contactmodel'),
(48, 'Can view contact model', 12, 'view_contactmodel'),
(49, 'Can add vote model', 13, 'add_votemodel'),
(50, 'Can change vote model', 13, 'change_votemodel'),
(51, 'Can delete vote model', 13, 'delete_votemodel'),
(52, 'Can view vote model', 13, 'view_votemodel');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `candidate_details`
--

CREATE TABLE IF NOT EXISTS `candidate_details` (
  `candi_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext NOT NULL,
  `partyname` varchar(200) NOT NULL,
  `fathername` longtext NOT NULL,
  `phone` bigint(20) NOT NULL,
  `gmail` varchar(254) NOT NULL,
  `caste` varchar(100) NOT NULL,
  `quali` varchar(200) DEFAULT NULL,
  `aadhar` varchar(100) NOT NULL,
  `castecertificate` varchar(100) NOT NULL,
  `passphoto` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  PRIMARY KEY (`candi_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `candidate_details`
--

INSERT INTO `candidate_details` (`candi_id`, `name`, `partyname`, `fathername`, `phone`, `gmail`, `caste`, `quali`, `aadhar`, `castecertificate`, `passphoto`, `password`) VALUES
(2, 'mamatha', 'Bjp', 'sailu', 6300474325, 'mamatha@gmail.com', 'Bc-A', NULL, 'images/course_6_TgM33A8.jpg', 'images/featured.jpg', 'images/course_7.jpg', ''),
(3, 'Boyapally Shirisha', 'congress', 'Boyapally Sailu', 7569330831, 'siri@gmail.com', 'Bc-B', NULL, 'images/course_5_6A2konq.jpg', 'images/elearn.jpg', 'images/courses.jpg', ''),
(4, 'Bhagyasree', 'YSR Ap', 'Revappa', 9848599461, 'bhagya@gmail.com', 'Bc-B', ' below SSC', 'images/course_5_r2TGPWe.jpg', 'images/course_3_FXyJsFZ.jpg', 'images/course_1.jpg', '123457'),
(5, 'mahesh', 'karunanidhi', 'niranjan', 9848127627, 'mahesh@gmail.com', 'Bc-B', 'M.sc', 'images/consulting-website-template.jpg', 'images/carousel-55.jpg', 'images/team-2.jpg', '@@@'),
(6, 'surya', 'CPI', 'father', 5678907866, 'mamathaboyapally3375@gmail.com', 'Bc-A', 'Dipolma', 'images/blog-4_wybA60r.jpg', 'images/carousel-55_Mt4Hzbd.jpg', 'images/about-2.jpg', '@@@'),
(7, 'srinath', 'cpim', 'father', 6789012345, 'mamathaboyapally3375@gmail.com', 'bc-b', 'M.sc', 'images/carousel-44_ltXRFFI.jpg', 'images/coursesd.1.jpg', 'images/testimonial-4.jpg', '@@@'),
(8, 'srinath', 'cpim', 'father', 6789012345, 'mamathaboyapally3375@gmail.com', 'bc-b', 'M.sc', 'images/carousel-44_DnJwkSE.jpg', 'images/coursesd.1_5aun5yT.jpg', 'images/testimonial-4_1H2Xhpl.jpg', '@@@'),
(9, 'fg', 'gdfgghgh', 'fjhjhjhjkk', 6300474325, 'hjjhjhk@gmail.com', 'Bc-a', 'Inter', 'images/consulting-website-template_FUnM8s0.jpg', 'images/blog-4_qGt81Uw.jpg', 'images/business-man_fJrMO09.png', '@123'),
(10, 'SADDAM', 'congress', 'dadffgdfgsdsd', 9573970379, 'saddamoddin18@gmail.com', 'gddfgfg', 'Degree', 'images/business-man_9fwtYEu.png', 'images/business-man_tmisRdx.png', 'images/business-man_Dmv3hwn.png', 'SADDAM@18'),
(11, 'ganesh', 'Trs', 'sailu', 6300474325, 'Gane@gmail.com', 'BC-a', 'SSC', 'images/brandimg_ep1BdWm.png', 'images/brandimg_LlqRHkq.png', 'images/drawing_joKbP2E.jpg', 'Saddam@123'),
(12, 'SADDAM', 'congress', 'dadffgdfgsdsd', 9573970379, 'saddamoddin18@gmail.com', 'gddfgfg', 'Degree', 'images/business-man_mZ8xKdP.png', 'images/business-man_PzmeG5W.png', 'images/business-man_29xyt99.png', 'SADDAM@18'),
(13, 'SADDAM', 'congress', 'dadffgdfgsdsd', 9573970379, 'saddamoddin18@gmail.com', 'gddfgfg', 'Degree', 'images/business-man_8gAlmBi.png', 'images/business-man_tAv3elw.png', 'images/business-man_7jy67EK.png', 'SADDAM@18'),
(14, 'karthik', 'bjps', 'venkatat', 8978412647, 'karthik@gmail.com', 'Bc-A', 'Dipolma', 'images/book-half_KOFUVOF.svg', 'images/brandimg_Q2H47Ai.png', 'images/testimonial-1.jpg', '@@@@@@'),
(15, 'mamatha', 'partyname', 'sailu', 9391701134, 'mamathaboyapally3375@gmail.com', 'Bc-A', 'Dipolma', 'images/blog-4_OwVoKhf.jpg', 'images/consulting-website-template_pGpODQ7.jpg', 'images/about-1_1qNR1yy.jpg', '@12345'),
(16, 'mamatha', 'partyname', 'sailu', 9391701134, 'mamathaboyapally3375@gmail.com', 'Bc-A', 'Dipolma', 'images/blog-4_BegMX2c.jpg', 'images/consulting-website-template_oSz3m2h.jpg', 'images/about-1_vq4r8Dj.jpg', '@12345'),
(17, 'ganesh', 'party', 'sailu', 6300474325, 'mamathaboyapally3375@gmail.com', 'Bc-A', 'Inter', 'images/carousel-44_NC5ftHD.jpg', 'images/consulting-website-template_nyxB2Ml.jpg', 'images/about-1_tQ9YNbZ.jpg', '@123'),
(18, 'mamatha', 'partyname', 'sailu', 9391701134, 'mamathaboyapally3375@gmail.com', 'Bc-A', 'Dipolma', 'images/book-half_IcwaZHP.svg', 'images/carousel-55_4YsiOwz.jpg', 'images/business-man_UZ1yMHw.png', '123456'),
(19, 'mamatha', 'partyname', 'sailu', 9391701134, 'mamathaboyapally3375@gmail.com', 'Bc-A', 'Dipolma', 'images/book-half_JsWuCJu.svg', 'images/carousel-55_SVQQ4Ug.jpg', 'images/business-man_AbmBW3e.png', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `candidate_in_election`
--

CREATE TABLE IF NOT EXISTS `candidate_in_election` (
  `candidate_id` int(11) NOT NULL AUTO_INCREMENT,
  `election` varchar(200) NOT NULL,
  `party` varchar(200) NOT NULL,
  `candidate` varchar(200) NOT NULL,
  `partylogo` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`candidate_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `candidate_in_election`
--

INSERT INTO `candidate_in_election` (`candidate_id`, `election`, `party`, `candidate`, `partylogo`) VALUES
(5, 'Zill Parishad Elections', 'bjp', 'Bhagyasree', 'images/brandimg_h8GCCY6.png'),
(6, 'Zill Parishad Elections', 'YSERCP', 'surya', 'images/about-11.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `contact_details`
--

CREATE TABLE IF NOT EXISTS `contact_details` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(254) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `message` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `contact_details`
--

INSERT INTO `contact_details` (`id`, `name`, `email`, `subject`, `message`) VALUES
(1, 'mamatha', 'gane@gmail.com', 'e-voting results', 'when was the Bjp elections'),
(2, 'mamatha', 'gane@gmail.com', 'e-voting results', 'when was the Bjp elections'),
(3, 'mamatha', 'gane@gmail.com', 'e-voting results', 'when was the Bjp elections'),
(4, 'mamatha', 'gane@gmail.com', 'e-voting results', 'when was the Bjp elections'),
(5, 'mamatha', 'gane@gmail.com', 'e-voting results', 'when was the Bjp elections'),
(6, 'ganesh', 'gane@gmail.com', 'e-voting results', 'TRS munipality elections'),
(7, 'mamatha', 'mammu@gmail.com', 'asdfsfdggh', 'afsfdgfgsgfhgsdhjhf');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(7, 'adminapp', 'addcandimodel'),
(9, 'adminapp', 'addelection'),
(8, 'adminapp', 'addpartymodel'),
(11, 'adminapp', 'candidateelectionmodel'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(12, 'mainapp', 'contactmodel'),
(6, 'sessions', 'session'),
(13, 'voterapp', 'votemodel'),
(10, 'voterapp', 'voterregistermodel');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=54 ;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-03-03 11:20:33.380243'),
(2, 'auth', '0001_initial', '2022-03-03 11:20:42.270735'),
(3, 'admin', '0001_initial', '2022-03-03 11:20:44.357907'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-03-03 11:20:44.402326'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-03-03 11:20:44.441239'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-03-03 11:20:45.454409'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-03-03 11:20:46.119363'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-03-03 11:20:46.747789'),
(9, 'auth', '0004_alter_user_username_opts', '2022-03-03 11:20:46.777277'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-03-03 11:20:47.262045'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-03-03 11:20:47.290780'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-03-03 11:20:47.334849'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-03-03 11:20:48.026565'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-03-03 11:20:48.716317'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-03-03 11:20:49.388881'),
(16, 'auth', '0011_update_proxy_permissions', '2022-03-03 11:20:49.436024'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-03-03 11:20:50.001684'),
(18, 'sessions', '0001_initial', '2022-03-03 11:20:50.536563'),
(19, 'adminapp', '0001_initial', '2022-03-03 11:21:46.363517'),
(20, 'voterapp', '0001_initial', '2022-03-03 11:31:43.695819'),
(21, 'adminapp', '0002_alter_addelection_table', '2022-03-03 11:35:09.206555'),
(22, 'adminapp', '0003_alter_addelection_date', '2022-03-03 11:43:29.128132'),
(23, 'adminapp', '0004_candidateelectionmodel', '2022-03-03 12:22:55.166578'),
(24, 'adminapp', '0005_alter_addcandimodel_candi_id', '2022-03-04 06:55:31.521590'),
(25, 'adminapp', '0006_alter_addpartymodel_party_id', '2022-03-04 08:04:27.756538'),
(26, 'adminapp', '0007_alter_addcandimodel_quali', '2022-03-07 09:30:22.213538'),
(27, 'adminapp', '0008_addpartymodel_status', '2022-03-08 05:30:36.091357'),
(28, 'voterapp', '0002_voterregistermodel_status', '2022-03-08 06:17:42.057415'),
(29, 'voterapp', '0003_voterregistermodel_voter_type', '2022-03-09 07:02:15.606458'),
(30, 'adminapp', '0009_alter_addelection_date', '2022-03-09 09:52:36.617713'),
(39, 'adminapp', '0010_remove_addelection_date_addelection_election_party_and_more', '2022-03-17 06:57:06.180790'),
(40, 'adminapp', '0011_remove_addelection_election_party_addelection_date_and_more', '2022-03-17 06:57:08.136644'),
(41, 'adminapp', '0012_remove_candidateelectionmodel_date', '2022-03-17 06:57:08.547542'),
(42, 'adminapp', '0013_alter_addpartymodel_position', '2022-03-17 06:57:09.178747'),
(43, 'adminapp', '0014_alter_addpartymodel_partylogo_and_more', '2022-03-17 06:57:10.092066'),
(44, 'adminapp', '0015_alter_addpartymodel_partylogo_and_more', '2022-03-17 06:57:10.136800'),
(45, 'adminapp', '0016_alter_addpartymodel_partylogo', '2022-03-17 06:57:10.180818'),
(46, 'adminapp', '0017_alter_addpartymodel_position_alter_addelection_table_and_more', '2022-03-17 06:57:10.983082'),
(47, 'adminapp', '0002_alter_addpartymodel_partylogo', '2022-03-17 08:59:30.754562'),
(48, 'mainapp', '0001_initial', '2022-03-21 07:21:42.441016'),
(49, 'mainapp', '0002_alter_contactmodel_table', '2022-03-21 07:24:31.356424'),
(50, 'voterapp', '0004_alter_voterregistermodel_table', '2022-03-21 07:26:28.389331'),
(51, 'adminapp', '0003_alter_addcandimodel_table', '2022-03-22 08:01:11.699641'),
(52, 'adminapp', '0004_candidateelectionmodel_partylogo', '2022-03-22 10:42:37.105597'),
(53, 'voterapp', '0005_votemodel', '2022-03-22 11:59:08.487081');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('h6tci8ewiyw8bfznpy82o8aqhmdv1anj', 'eyJjYW5kaV9pZCI6NCwidm90ZXJfaWQiOjF9:1nWzt7:EXm1mCZ-GdR_0Z4OvmvENR_5-B4a4K8wI9LXj-tqeA4', '2022-04-06 12:14:53.278684');

-- --------------------------------------------------------

--
-- Table structure for table `election_details`
--

CREATE TABLE IF NOT EXISTS `election_details` (
  `election_id` int(11) NOT NULL AUTO_INCREMENT,
  `election_type` longtext NOT NULL,
  `area` varchar(200) NOT NULL,
  `date` varchar(200) NOT NULL,
  PRIMARY KEY (`election_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `election_details`
--

INSERT INTO `election_details` (`election_id`, `election_type`, `area`, `date`) VALUES
(1, 'Zill Parishad Elections', 'Kurmalguda', '2022-03-10');

-- --------------------------------------------------------

--
-- Table structure for table `party_details`
--

CREATE TABLE IF NOT EXISTS `party_details` (
  `party_id` int(11) NOT NULL AUTO_INCREMENT,
  `partyname` varchar(200) NOT NULL,
  `partyhead` longtext NOT NULL,
  `position` varchar(200) NOT NULL,
  `partylogo` varchar(100) NOT NULL,
  `status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`party_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `party_details`
--

INSERT INTO `party_details` (`party_id`, `partyname`, `partyhead`, `position`, `partylogo`, `status`) VALUES
(22, 'mamamtha', 'mamamthha', 'Local', 'images/book-half_cmQZlXb.svg', 'pending'),
(23, 'bjp', 'Jagan', 'Local', 'images/brandimg_h8GCCY6.png', 'pending'),
(24, 'bhagrya', '12345', 'Local', 'images/book-half_dVnVc32.svg', 'pending'),
(25, 'bhagrya', '12345', 'Local', 'images/book-half_QkhmpJk.svg', 'pending'),
(26, 'mamatha', '122345556566', 'Local', 'images/brandimg_xaHrqS3.png', 'pending'),
(27, '1234555', 'modi', 'Local', 'images/consulting-website-template_2MsBaJJ.jpg', 'pending'),
(28, 'YSERCP', 'Jagan', 'Local', 'images/about-11.jpg', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `voter_details`
--

CREATE TABLE IF NOT EXISTS `voter_details` (
  `voter_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext NOT NULL,
  `phone` bigint(20) NOT NULL,
  `gender` longtext NOT NULL,
  `Aadhar` varchar(100) DEFAULT NULL,
  `voterid` varchar(100) NOT NULL,
  `age` int(11) NOT NULL,
  `gmail` varchar(100) NOT NULL,
  `passphoto` varchar(100) DEFAULT NULL,
  `password` varchar(100) NOT NULL,
  `status` varchar(100) DEFAULT NULL,
  `voter_type` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`voter_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `voter_details`
--

INSERT INTO `voter_details` (`voter_id`, `name`, `phone`, `gender`, `Aadhar`, `voterid`, `age`, `gmail`, `passphoto`, `password`, `status`, `voter_type`) VALUES
(1, 'ganesh', 6300474325, 'Male', 'images/about_2_0mZ41Z9.jpg', '22asdf@', 21, 'gane@gmail.com', 'images/course_author_2.jpg', '@123', 'Accepted', 'voter-type'),
(2, 'Abhi', 8686876108, 'Male', 'images/course_2_1n9d3GN.jpg', '23asdf@', 25, 'abhistone98@gmail.com', 'images/course_author_2_7qlgiTB.jpg', '@@@', 'Accepted', 'voter-type'),
(3, 'Mahesh', 9848127627, 'Male', 'images/course_8_NzsEcVX.jpg', '24asdf@', 25, 'mahesh@gmail.com', 'images/teacher_3.jpg', 'admin', 'Accepted', 'Indian'),
(4, 'john', 9, 'Male', 'images/blog-4_pqTJTPK.jpg', '123456', 25, 'mamathaboyapally3375@gmail.com', 'images/business-man.png', 'john', 'Accepted', 'Indian'),
(5, 'mamatha', 9848599461, 'Female', 'images/blog-4_73lJa2I.jpg', '123456', 22, 'srisagandala143@gmail.com', 'images/business-man_zvxFCOT.png', 'asdf', 'Accepted', 'Indian'),
(6, 'saddam', 7890865743, 'Male', 'images/carousel-44.jpg', '45asdf@', 23, 'saddamoddin18@gmail.com', 'images/business-man_5fybbNK.png', '@!@#$', 'Accepted', 'Indian');

-- --------------------------------------------------------

--
-- Table structure for table `voting_details`
--

CREATE TABLE IF NOT EXISTS `voting_details` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `voter_id` int(11) NOT NULL,
  `election` varchar(50) NOT NULL,
  `partyname` varchar(100) NOT NULL,
  `candidate` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `voting_details`
--

INSERT INTO `voting_details` (`id`, `voter_id`, `election`, `partyname`, `candidate`, `status`) VALUES
(1, 1, ' Zill Parishad Elections', 'bjp', ' Bhagyasree', 1);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
