-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 05, 2019 at 12:51 PM
-- Server version: 5.7.25-0ubuntu0.18.10.2
-- PHP Version: 7.2.15-0ubuntu0.18.10.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `InsaatDB`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add permission', 2, 'add_permission'),
(5, 'Can change permission', 2, 'change_permission'),
(6, 'Can delete permission', 2, 'delete_permission'),
(7, 'Can add group', 3, 'add_group'),
(8, 'Can change group', 3, 'change_group'),
(9, 'Can delete group', 3, 'delete_group'),
(10, 'Can add user', 4, 'add_user'),
(11, 'Can change user', 4, 'change_user'),
(12, 'Can delete user', 4, 'delete_user'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add bloklar', 7, 'add_bloklar'),
(20, 'Can change bloklar', 7, 'change_bloklar'),
(21, 'Can delete bloklar', 7, 'delete_bloklar'),
(22, 'Can add projeler', 8, 'add_projeler'),
(23, 'Can change projeler', 8, 'change_projeler'),
(24, 'Can delete projeler', 8, 'delete_projeler'),
(25, 'Can add daireler', 9, 'add_daireler'),
(26, 'Can change daireler', 9, 'change_daireler'),
(27, 'Can delete daireler', 9, 'delete_daireler'),
(28, 'Can add ariza_takip', 10, 'add_ariza_takip'),
(29, 'Can change ariza_takip', 10, 'change_ariza_takip'),
(30, 'Can delete ariza_takip', 10, 'delete_ariza_takip'),
(31, 'Can add satis', 11, 'add_satis'),
(32, 'Can change satis', 11, 'change_satis'),
(33, 'Can delete satis', 11, 'delete_satis'),
(34, 'Can add deneme', 12, 'add_deneme'),
(35, 'Can change deneme', 12, 'change_deneme'),
(36, 'Can delete deneme', 12, 'delete_deneme'),
(37, 'Can add abonelikler', 13, 'add_abonelikler'),
(38, 'Can change abonelikler', 13, 'change_abonelikler'),
(39, 'Can delete abonelikler', 13, 'delete_abonelikler'),
(40, 'Can add belge_ kaydi', 14, 'add_belge_kaydi'),
(41, 'Can change belge_ kaydi', 14, 'change_belge_kaydi'),
(42, 'Can delete belge_ kaydi', 14, 'delete_belge_kaydi'),
(43, 'Can add halkla_ iliskiler', 15, 'add_halkla_iliskiler'),
(44, 'Can change halkla_ iliskiler', 15, 'change_halkla_iliskiler'),
(45, 'Can delete halkla_ iliskiler', 15, 'delete_halkla_iliskiler'),
(46, 'Can add maliyet_ kat', 16, 'add_maliyet_kat'),
(47, 'Can change maliyet_ kat', 16, 'change_maliyet_kat'),
(48, 'Can delete maliyet_ kat', 16, 'delete_maliyet_kat'),
(49, 'Can add maliyet_ kayit', 17, 'add_maliyet_kayit'),
(50, 'Can change maliyet_ kayit', 17, 'change_maliyet_kayit'),
(51, 'Can delete maliyet_ kayit', 17, 'delete_maliyet_kayit'),
(52, 'Can add maliyet_ madde', 18, 'add_maliyet_madde'),
(53, 'Can change maliyet_ madde', 18, 'change_maliyet_madde'),
(54, 'Can delete maliyet_ madde', 18, 'delete_maliyet_madde'),
(55, 'Can add maliyet_ projeler', 19, 'add_maliyet_projeler'),
(56, 'Can change maliyet_ projeler', 19, 'change_maliyet_projeler'),
(57, 'Can delete maliyet_ projeler', 19, 'delete_maliyet_projeler'),
(58, 'Can add portfoy_ kayit', 20, 'add_portfoy_kayit'),
(59, 'Can change portfoy_ kayit', 20, 'change_portfoy_kayit'),
(60, 'Can delete portfoy_ kayit', 20, 'delete_portfoy_kayit'),
(61, 'Can add santiye_ takip', 21, 'add_santiye_takip'),
(62, 'Can change santiye_ takip', 21, 'change_santiye_takip'),
(63, 'Can delete santiye_ takip', 21, 'delete_santiye_takip'),
(64, 'Can add santiyeler', 22, 'add_santiyeler'),
(65, 'Can change santiyeler', 22, 'change_santiyeler'),
(66, 'Can delete santiyeler', 22, 'delete_santiyeler'),
(67, 'Can add tapu_ alis', 23, 'add_tapu_alis'),
(68, 'Can change tapu_ alis', 23, 'change_tapu_alis'),
(69, 'Can delete tapu_ alis', 23, 'delete_tapu_alis'),
(70, 'Can add tapu_ kat_ irtifaki', 24, 'add_tapu_kat_irtifaki'),
(71, 'Can change tapu_ kat_ irtifaki', 24, 'change_tapu_kat_irtifaki'),
(72, 'Can delete tapu_ kat_ irtifaki', 24, 'delete_tapu_kat_irtifaki'),
(73, 'Can add tapu_ kat_ mulkiyeti', 25, 'add_tapu_kat_mulkiyeti'),
(74, 'Can change tapu_ kat_ mulkiyeti', 25, 'change_tapu_kat_mulkiyeti'),
(75, 'Can delete tapu_ kat_ mulkiyeti', 25, 'delete_tapu_kat_mulkiyeti'),
(76, 'Can add tapu_ satis', 26, 'add_tapu_satis'),
(77, 'Can change tapu_ satis', 26, 'change_tapu_satis'),
(78, 'Can delete tapu_ satis', 26, 'delete_tapu_satis'),
(79, 'Can add yonetici', 27, 'add_yonetici'),
(80, 'Can change yonetici', 27, 'change_yonetici'),
(81, 'Can delete yonetici', 27, 'delete_yonetici'),
(82, 'Can add v_satis', 28, 'add_v_satis'),
(83, 'Can change v_satis', 28, 'change_v_satis'),
(84, 'Can delete v_satis', 28, 'delete_v_satis'),
(85, 'Can add v_tapu_satis', 29, 'add_v_tapu_satis'),
(86, 'Can change v_tapu_satis', 29, 'change_v_tapu_satis'),
(87, 'Can delete v_tapu_satis', 29, 'delete_v_tapu_satis'),
(88, 'Can add v_detay', 30, 'add_v_detay'),
(89, 'Can change v_detay', 30, 'change_v_detay'),
(90, 'Can delete v_detay', 30, 'delete_v_detay'),
(91, 'Can add v_ariza_takip', 31, 'add_v_ariza_takip'),
(92, 'Can change v_ariza_takip', 31, 'change_v_ariza_takip'),
(93, 'Can delete v_ariza_takip', 31, 'delete_v_ariza_takip'),
(94, 'Can add v_detay_2', 32, 'add_v_detay_2'),
(95, 'Can change v_detay_2', 32, 'change_v_detay_2'),
(96, 'Can delete v_detay_2', 32, 'delete_v_detay_2'),
(97, 'Can add v_santiye_malzemeler', 33, 'add_v_santiye_malzemeler'),
(98, 'Can change v_santiye_malzemeler', 33, 'change_v_santiye_malzemeler'),
(99, 'Can delete v_santiye_malzemeler', 33, 'delete_v_santiye_malzemeler'),
(100, 'Can add belge_ kaydi_ file', 34, 'add_belge_kaydi_file'),
(101, 'Can change belge_ kaydi_ file', 34, 'change_belge_kaydi_file'),
(102, 'Can delete belge_ kaydi_ file', 34, 'delete_belge_kaydi_file'),
(103, 'Can add bina_ kontrol', 35, 'add_bina_kontrol'),
(104, 'Can change bina_ kontrol', 35, 'change_bina_kontrol'),
(105, 'Can delete bina_ kontrol', 35, 'delete_bina_kontrol'),
(106, 'Can add bina_ kontrol_ file', 36, 'add_bina_kontrol_file'),
(107, 'Can change bina_ kontrol_ file', 36, 'change_bina_kontrol_file'),
(108, 'Can delete bina_ kontrol_ file', 36, 'delete_bina_kontrol_file'),
(109, 'Can add il', 37, 'add_il'),
(110, 'Can change il', 37, 'change_il'),
(111, 'Can delete il', 37, 'delete_il'),
(112, 'Can add ilce', 38, 'add_ilce'),
(113, 'Can change ilce', 38, 'change_ilce'),
(114, 'Can delete ilce', 38, 'delete_ilce');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) COLLATE utf8_turkish_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8_turkish_ci NOT NULL,
  `first_name` varchar(30) COLLATE utf8_turkish_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8_turkish_ci NOT NULL,
  `email` varchar(254) COLLATE utf8_turkish_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$100000$qHuMPDzvOwgX$luPE0P2pWRIN6drgkxFVmtiNH9OkqUNiOLAuyv8Am+I=', '2019-03-03 00:05:27.485324', 1, 'muhendisbey', '', '', '', 1, 1, '2018-11-30 20:47:39.298749');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8_turkish_ci,
  `object_repr` varchar(200) COLLATE utf8_turkish_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext COLLATE utf8_turkish_ci NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2018-11-30 21:05:43.657745', '1', 'proje1', 1, '[{\"added\": {}}]', 8, 1),
(2, '2018-11-30 21:08:37.787880', '1', 'esen1', 1, '[{\"added\": {}}]', 7, 1),
(3, '2018-11-30 21:11:42.858333', '4', '2', 1, '[{\"added\": {}}]', 9, 1),
(4, '2018-12-01 14:43:56.251897', '1', 'proje1', 1, '[{\"added\": {}}]', 8, 1),
(5, '2018-12-01 14:45:25.799967', '1', 'proje1 deneme1', 1, '[{\"added\": {}}]', 7, 1),
(6, '2018-12-01 14:45:49.887437', '1', 'proje1 deneme1 No:2', 1, '[{\"added\": {}}]', 9, 1),
(7, '2018-12-01 14:48:25.821411', '2', 'proje1 deneme1 No:3', 1, '[{\"added\": {}}]', 9, 1),
(8, '2018-12-01 14:48:33.561079', '3', 'proje1 deneme1 No:3', 1, '[{\"added\": {}}]', 9, 1),
(9, '2018-12-25 23:18:53.160372', '1', 'mustafa 2018-12-26', 1, '[{\"added\": {}}]', 27, 1),
(10, '2018-12-26 19:19:21.666514', '1', 'proje1', 2, '[]', 8, 1),
(11, '2018-12-26 19:19:25.370103', '2', 'proje2', 1, '[{\"added\": {}}]', 8, 1),
(12, '2018-12-26 19:19:29.497305', '3', 'proje3', 1, '[{\"added\": {}}]', 8, 1),
(13, '2018-12-26 19:19:36.169396', '4', 'proje4', 1, '[{\"added\": {}}]', 8, 1),
(14, '2018-12-26 19:19:41.017524', '5', 'proje5', 1, '[{\"added\": {}}]', 8, 1),
(15, '2018-12-31 18:53:31.591342', '1', 'proje1 deneme1', 2, '[]', 7, 1),
(16, '2018-12-31 18:53:56.759661', '2', 'proje1 deneme2', 1, '[{\"added\": {}}]', 7, 1),
(17, '2018-12-31 18:54:01.623071', '1', 'proje1 deneme1', 2, '[]', 7, 1),
(18, '2018-12-31 19:57:05.503247', '3', 'proje1 deneme1 No:4', 2, '[{\"changed\": {\"fields\": [\"no\"]}}]', 9, 1),
(19, '2018-12-31 19:57:15.833788', '4', 'proje1 deneme1 No:5', 1, '[{\"added\": {}}]', 9, 1),
(20, '2019-01-05 11:51:26.020011', '1', 'Mustafa SEYHAN Daire No:proje1 deneme1 No:2', 1, '[{\"added\": {}}]', 11, 1),
(21, '2019-01-05 11:54:41.224294', '2', 'Mustafa SEYHAN Daire No:proje2 blok 11 No:16', 1, '[{\"added\": {}}]', 11, 1),
(22, '2019-01-05 12:11:01.402519', '3', 'hakkı deneme Daire No:proje2 blok 11 No:20', 1, '[{\"added\": {}}]', 11, 1),
(23, '2019-01-05 13:19:49.869324', '1', 'msuataf 12000', 1, '[{\"added\": {}}]', 26, 1),
(24, '2019-01-05 16:11:18.507859', '1', 'proje2 blok 11 No:13 Ekleyen:1', 1, '[{\"added\": {}}]', 10, 1),
(25, '2019-01-05 16:12:07.248066', '1', 'ilk şant,ye', 1, '[{\"added\": {}}]', 22, 1),
(26, '2019-01-05 16:12:44.987728', '1', '123123 deneme malzeme', 1, '[{\"added\": {}}]', 21, 1),
(27, '2019-01-08 10:50:07.593140', '13', 'Mustafa SEYHAN Daire No:proje3 AS No:20', 2, '[{\"changed\": {\"fields\": [\"sozlesme\"]}}]', 11, 1),
(28, '2019-01-13 13:47:36.546742', '2', '123123 deneme malzeme', 1, '[{\"added\": {}}]', 21, 1),
(29, '2019-01-13 13:47:48.382327', '3', '123123 deneme malzeme', 1, '[{\"added\": {}}]', 21, 1),
(30, '2019-01-13 14:04:13.773667', '4', '123123 deneme malzeme', 1, '[{\"added\": {}}]', 21, 1),
(31, '2019-01-13 20:04:11.753219', '2', 'proje deneme blok 2 No:2 Ekleyen:1', 1, '[{\"added\": {}}]', 10, 1),
(32, '2019-01-13 20:04:22.737515', '3', 'proje deneme blok 2 No:3 Ekleyen:1', 1, '[{\"added\": {}}]', 10, 1),
(33, '2019-01-13 20:05:03.774554', '3', 'proje deneme blok 2 No:3 Ekleyen:1', 2, '[{\"changed\": {\"fields\": [\"durum\"]}}]', 10, 1),
(34, '2019-01-13 20:05:10.296099', '1', 'proje deneme blok 2 No:7 Ekleyen:1', 2, '[{\"changed\": {\"fields\": [\"durum\", \"cozumnotu\"]}}]', 10, 1),
(35, '2019-01-16 10:49:53.303622', '1', 'msuataf 12000', 3, '', 26, 1),
(36, '2019-01-16 11:08:56.015740', '2', 'Mustafa SEYHAN 12000', 1, '[{\"added\": {}}]', 26, 1),
(37, '2019-01-16 11:09:05.734035', '3', 'Mustafa SEYHAN 12000', 1, '[{\"added\": {}}]', 26, 1),
(38, '2019-01-16 11:25:17.675334', '3', 'Mustafa SEYHAN 12000', 2, '[{\"changed\": {\"fields\": [\"meslek\"]}}]', 26, 1),
(39, '2019-01-16 11:36:31.701714', '1', 'proje deneme blok 2 No:7 Ekleyen:mustafa 2019-01-14 10:13:13.360812+00:00', 2, '[]', 10, 1),
(40, '2019-01-16 11:36:48.963710', '6', 'proje deneme blok 2 No:4 Ekleyen:mustafa 2019-01-14 10:13:13.360812+00:00', 2, '[]', 10, 1),
(41, '2019-01-16 14:07:20.847398', '1', 'ali gök 190000', 1, '[{\"added\": {}}]', 23, 1),
(42, '2019-01-23 16:01:14.828226', '1', 'deneme Bağımsız Sayısı 5', 1, '[{\"added\": {}}]', 24, 1),
(43, '2019-01-23 16:01:22.124054', '2', 'deneme 2 Bağımsız Sayısı 0', 1, '[{\"added\": {}}]', 24, 1),
(44, '2019-01-23 16:01:30.099996', '3', 'deneme Bağımsız Sayısı 2', 1, '[{\"added\": {}}]', 24, 1),
(45, '2019-01-23 16:01:40.753719', '4', 'deneme 5 Bağımsız Sayısı 2', 1, '[{\"added\": {}}]', 24, 1),
(46, '2019-01-23 20:01:44.407972', '1', 'deneme', 1, '[{\"added\": {}}]', 25, 1),
(47, '2019-01-23 20:01:50.838158', '2', 'asdasd', 1, '[{\"added\": {}}]', 25, 1),
(48, '2019-01-23 20:01:58.374219', '3', 'asdasd', 1, '[{\"added\": {}}]', 25, 1),
(49, '2019-01-23 20:37:56.511565', '1', '23432', 1, '[{\"added\": {}}]', 13, 1),
(50, '2019-01-23 20:38:14.027255', '2', '23432', 1, '[{\"added\": {}}]', 13, 1),
(51, '2019-01-23 20:38:31.709183', '3', '23432', 1, '[{\"added\": {}}]', 13, 1),
(52, '2019-01-23 22:16:56.011776', '1', 'asda asd', 1, '[{\"added\": {}}]', 15, 1),
(53, '2019-01-23 22:17:06.608057', '2', 'asda asd', 1, '[{\"added\": {}}]', 15, 1),
(54, '2019-01-24 18:07:35.381038', '1', 'mustafa 2019-01-24 17:18:37.667913+00:00', 1, '[{\"added\": {}}]', 14, 1),
(55, '2019-01-24 18:07:42.295571', '2', 'mustafa 2019-01-24 17:18:37.667913+00:00', 1, '[{\"added\": {}}]', 14, 1),
(56, '2019-01-24 18:07:49.740923', '3', 'mustafa 2019-01-24 17:18:37.667913+00:00', 1, '[{\"added\": {}}]', 14, 1),
(57, '2019-01-25 23:28:44.396424', '1', 'mustafa 2019-01-24 17:18:37.667913+00:00 deneme', 1, '[{\"added\": {}}]', 35, 1),
(58, '2019-01-25 23:28:52.287795', '2', 'mustafa 2019-01-24 17:18:37.667913+00:00 ASDASD', 1, '[{\"added\": {}}]', 35, 1),
(59, '2019-01-25 23:28:59.409709', '3', 'mustafa 2019-01-24 17:18:37.667913+00:00 ASDASD', 1, '[{\"added\": {}}]', 35, 1),
(60, '2019-01-26 01:59:50.544749', '2', 'ali 2019-01-26 04:59:30+03:00', 1, '[{\"added\": {}}]', 27, 1),
(61, '2019-01-27 10:04:38.287008', '3', 'yetkisiz 2019-01-27 13:04:34+03:00', 1, '[{\"added\": {}}]', 27, 1),
(62, '2019-01-27 10:10:38.043622', '3', 'yetkisiz 2019-01-27 13:04:34+03:00', 2, '[{\"changed\": {\"fields\": [\"durum\"]}}]', 27, 1),
(63, '2019-01-27 10:12:14.582456', '1', 'mustafa 2019-01-27 12:57:19+03:00', 2, '[{\"changed\": {\"fields\": [\"durum\"]}}]', 27, 1),
(64, '2019-03-03 00:08:12.398262', '1', 'Konya', 1, '[{\"added\": {}}]', 37, 1),
(65, '2019-03-03 00:09:03.907008', '1', 'Konya -> SELÇUKLU', 1, '[{\"added\": {}}]', 38, 1),
(66, '2019-03-03 00:09:11.972772', '2', 'Konya -> MERAM', 1, '[{\"added\": {}}]', 38, 1),
(67, '2019-03-03 00:09:23.697008', '3', 'Konya -> SARAYÖNÜ', 1, '[{\"added\": {}}]', 38, 1),
(68, '2019-03-03 00:09:29.904375', '4', 'Konya -> KARATAY', 1, '[{\"added\": {}}]', 38, 1),
(69, '2019-03-03 00:09:38.196030', '5', 'Konya -> BEYŞEHİR', 1, '[{\"added\": {}}]', 38, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `model` varchar(100) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(13, 'insaatWeb', 'abonelikler'),
(10, 'insaatWeb', 'ariza_takip'),
(14, 'insaatWeb', 'belge_kaydi'),
(34, 'insaatWeb', 'belge_kaydi_file'),
(35, 'insaatWeb', 'bina_kontrol'),
(36, 'insaatWeb', 'bina_kontrol_file'),
(7, 'insaatWeb', 'bloklar'),
(9, 'insaatWeb', 'daireler'),
(12, 'insaatWeb', 'deneme'),
(15, 'insaatWeb', 'halkla_iliskiler'),
(37, 'insaatWeb', 'il'),
(38, 'insaatWeb', 'ilce'),
(16, 'insaatWeb', 'maliyet_kat'),
(17, 'insaatWeb', 'maliyet_kayit'),
(18, 'insaatWeb', 'maliyet_madde'),
(19, 'insaatWeb', 'maliyet_projeler'),
(20, 'insaatWeb', 'portfoy_kayit'),
(8, 'insaatWeb', 'projeler'),
(21, 'insaatWeb', 'santiye_takip'),
(22, 'insaatWeb', 'santiyeler'),
(11, 'insaatWeb', 'satis'),
(23, 'insaatWeb', 'tapu_alis'),
(24, 'insaatWeb', 'tapu_kat_irtifaki'),
(25, 'insaatWeb', 'tapu_kat_mulkiyeti'),
(26, 'insaatWeb', 'tapu_satis'),
(31, 'insaatWeb', 'v_ariza_takip'),
(30, 'insaatWeb', 'v_detay'),
(32, 'insaatWeb', 'v_detay_2'),
(33, 'insaatWeb', 'v_santiye_malzemeler'),
(28, 'insaatWeb', 'v_satis'),
(29, 'insaatWeb', 'v_tapu_satis'),
(27, 'insaatWeb', 'yonetici'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2018-11-30 20:46:02.097291'),
(2, 'auth', '0001_initial', '2018-11-30 20:46:03.033084'),
(3, 'admin', '0001_initial', '2018-11-30 20:46:03.232537'),
(4, 'admin', '0002_logentry_remove_auto_add', '2018-11-30 20:46:03.258093'),
(5, 'contenttypes', '0002_remove_content_type_name', '2018-11-30 20:46:03.449545'),
(6, 'auth', '0002_alter_permission_name_max_length', '2018-11-30 20:46:03.498655'),
(7, 'auth', '0003_alter_user_email_max_length', '2018-11-30 20:46:03.639490'),
(8, 'auth', '0004_alter_user_username_opts', '2018-11-30 20:46:03.665282'),
(9, 'auth', '0005_alter_user_last_login_null', '2018-11-30 20:46:03.736506'),
(10, 'auth', '0006_require_contenttypes_0002', '2018-11-30 20:46:03.742059'),
(11, 'auth', '0007_alter_validators_add_error_messages', '2018-11-30 20:46:03.765589'),
(12, 'auth', '0008_alter_user_username_max_length', '2018-11-30 20:46:03.850418'),
(13, 'auth', '0009_alter_user_last_name_max_length', '2018-11-30 20:46:03.971768'),
(14, 'insaatWeb', '0001_initial', '2018-11-30 20:46:04.181107'),
(15, 'sessions', '0001_initial', '2018-11-30 20:46:04.225583'),
(16, 'insaatWeb', '0002_daireler', '2018-11-30 21:01:34.697766'),
(17, 'insaatWeb', '0003_auto_20181201_1629', '2018-12-01 13:33:19.709832'),
(18, 'insaatWeb', '0004_auto_20181201_1633', '2018-12-01 13:33:19.983738'),
(19, 'insaatWeb', '0005_auto_20181201_1643', '2018-12-01 13:43:08.978683'),
(20, 'insaatWeb', '0006_satis', '2018-12-01 13:43:41.394961'),
(21, 'insaatWeb', '0007_deneme', '2018-12-01 13:47:18.843856'),
(22, 'insaatWeb', '0008_auto_20181201_1650', '2018-12-01 13:50:23.388504'),
(23, 'insaatWeb', '0009_auto_20181201_1656', '2018-12-01 13:57:01.794539'),
(24, 'insaatWeb', '0010_auto_20181201_1700', '2018-12-01 14:00:59.190023'),
(25, 'insaatWeb', '0011_auto_20181201_1702', '2018-12-01 14:02:34.923425'),
(26, 'insaatWeb', '0012_auto_20181201_1704', '2018-12-01 14:04:56.440459'),
(27, 'insaatWeb', '0013_auto_20181201_1705', '2018-12-01 14:05:34.734473'),
(28, 'insaatWeb', '0014_auto_20181201_1706', '2018-12-01 14:06:26.984413'),
(29, 'insaatWeb', '0015_auto_20181201_1710', '2018-12-01 14:10:14.555856'),
(30, 'insaatWeb', '0016_auto_20181201_1710', '2018-12-01 14:10:29.252282'),
(31, 'insaatWeb', '0017_auto_20181201_1747', '2018-12-01 14:47:38.984397'),
(32, 'insaatWeb', '0018_auto_20181225_1410', '2018-12-25 11:10:31.047446'),
(33, 'insaatWeb', '0019_auto_20181225_1412', '2018-12-25 11:12:13.989111'),
(34, 'insaatWeb', '0020_auto_20181225_1413', '2018-12-25 11:13:06.411539'),
(35, 'insaatWeb', '0021_auto_20181226_0302', '2018-12-26 00:02:18.270612'),
(36, 'insaatWeb', '0022_v_satis', '2019-01-05 12:29:23.174073'),
(37, 'insaatWeb', '0023_auto_20190105_1538', '2019-01-05 12:38:45.208315'),
(38, 'insaatWeb', '0024_auto_20190105_1749', '2019-01-05 14:49:14.061964'),
(39, 'insaatWeb', '0025_auto_20190105_1754', '2019-01-05 14:54:27.552156'),
(40, 'insaatWeb', '0026_v_detay', '2019-01-05 15:08:23.332995'),
(41, 'insaatWeb', '0027_v_ariza_takip_v_detay_2_v_santiye_malzemeler', '2019-01-05 16:00:17.068781'),
(42, 'insaatWeb', '0028_satis_sozlesme', '2019-01-06 12:23:39.124138'),
(43, 'insaatWeb', '0029_auto_20190111_1931', '2019-01-11 16:31:09.040394'),
(44, 'insaatWeb', '0030_ariza_takip_resim', '2019-01-13 19:11:10.923854'),
(45, 'insaatWeb', '0031_auto_20190116_1351', '2019-01-16 10:51:06.310042'),
(46, 'insaatWeb', '0032_auto_20190116_1408', '2019-01-16 11:08:20.803581'),
(47, 'insaatWeb', '0033_auto_20190116_1840', '2019-01-16 15:40:42.803347'),
(48, 'insaatWeb', '0034_auto_20190123_2242', '2019-01-23 19:42:57.310382'),
(49, 'insaatWeb', '0035_auto_20190124_0001', '2019-01-23 21:01:49.192577'),
(50, 'insaatWeb', '0036_auto_20190124_0125', '2019-01-23 22:26:03.423973'),
(51, 'insaatWeb', '0037_belge_kaydi_file', '2019-01-24 19:26:14.964626'),
(52, 'insaatWeb', '0038_bina_kontrol', '2019-01-25 23:11:04.551543'),
(53, 'insaatWeb', '0039_bina_kontrol_file', '2019-01-25 23:24:28.795310'),
(54, 'insaatWeb', '0040_auto_20190126_0332', '2019-01-26 00:32:28.979088'),
(55, 'insaatWeb', '0041_auto_20190127_1256', '2019-01-27 09:57:03.168099'),
(56, 'insaatWeb', '0042_il_ilce', '2019-03-03 00:04:48.138057');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8_turkish_ci NOT NULL,
  `session_data` longtext COLLATE utf8_turkish_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('008l5n0dsap1o30ly083x6geedz1l0de', 'NjQwMjMyOTRjMjMyNjIxZTZhYmJiOWQxODExMTQ4ODI0NmZkOWYwNzp7ImFkaSI6Im11c3RhZmEiLCJrYWRpIjoibXVzdGFmYSIsInNpZnJlIjoiMTIzMTIzIiwibG9nIjp0cnVlLCJzYXRpc3BhemFybGFtYSI6dHJ1ZSwibXVzdGVyaXBvcnRmb3kiOnRydWUsInNhbnRpeWV0YWtpcCI6dHJ1ZSwiYXJpemF0YWtpcCI6dHJ1ZSwidGFwdXNpY2lsIjp0cnVlLCJhYm9uZWxpayI6dHJ1ZSwiaGFsa2xhaWxpc2tpbGVyIjp0cnVlLCJiZWxnZWtheWRpIjp0cnVlLCJtYWxpeWV0Ijp0cnVlLCJiaW5ha29udHJvbCI6dHJ1ZSwicHJvamVla2xlIjp0cnVlLCJwcm9qZWR1emVubGUiOnRydWUsInByb2plc2lsIjp0cnVlLCJibG9rZWtsZSI6dHJ1ZSwiYmxva2R1emVubGUiOnRydWUsImJsb2tzaWwiOnRydWUsImRhaXJlZWtsZSI6dHJ1ZSwiZGFpcmVkdXplbmxlIjp0cnVlLCJkYWlyZXNpbCI6dHJ1ZSwic2F0aXNla2xlIjp0cnVlLCJzYXRpc2R1emVubGUiOnRydWUsInNhdGlzc2lsIjp0cnVlLCJwb3J0Zm95ZWtsZSI6dHJ1ZSwicG9ydGZveWR1emVubGUiOnRydWUsInBvcnRmb3lzaWwiOnRydWUsInNhbnRpeWVla2xlIjp0cnVlLCJzYW50aXllZHV6ZW5sZSI6dHJ1ZSwic2FudGl5ZXNpbCI6dHJ1ZSwic2FudGl5ZW1hbHplbWVla2xlIjp0cnVlLCJzYW50aXllbWFsemVtZWR1emVubGUiOnRydWUsInNhbnRpeWVtYWx6ZW1lc2lsIjp0cnVlLCJhcml6YWtheWRpZWtsZSI6dHJ1ZSwiYXJpemFrYXlkaWR1emVubGUiOnRydWUsImFyaXpha2FkaXNpbCI6dHJ1ZSwiYXJpemF0YWtpcGtvbnRyb2x1Ijp0cnVlLCJ0YXB1c2ljaWxla2xlIjp0cnVlLCJ0YXB1c2ljaWxkdXplbmxlIjp0cnVlLCJ0YXB1c2ljaWxzaWwiOnRydWUsImFib25lbGlrZWtsZSI6dHJ1ZSwiYWJvbmVsaWtkdXplbmxlIjp0cnVlLCJhYm9uZWxpa3NpbCI6dHJ1ZSwiaGFsa2xhaWxpc2tpbGVyZWtsZSI6dHJ1ZSwiaGFsa2xhaWxpc2tpbGVyZHV6ZW5sZSI6dHJ1ZSwiaGFsa2xhaWxpc2tpbGVyc2lsIjp0cnVlLCJiZWxnZWtheWRpZWtsZSI6dHJ1ZSwiYmVsZ2VrYXlkaWR1emVubGUiOnRydWUsImJlbGdla2F5ZGlzaWwiOnRydWUsIm1hbGl5ZXRla2xlIjp0cnVlLCJtYWxpeWV0ZHV6ZW5sZSI6dHJ1ZSwibWFsaXlldHNpbCI6dHJ1ZSwiYmluYWtvbnRyb2xla2xlIjp0cnVlLCJiaW5ha29udHJvbGR1emVubGUiOnRydWUsImJpbmFrb250b3Jsc2lsIjp0cnVlLCJ5b25ldGljaWVrbGUiOnRydWUsInlvbmV0aWNpZHV6ZW5sZSI6dHJ1ZSwieW9uZXRpY2lzaWwiOnRydWUsIl9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2ZjY0YjQ1N2UxZjI1MmVlYmRiYjE2OTJhMDU1MDUyOWY0MTk2YjI2In0=', '2019-01-09 19:19:08.108538'),
('0jbs0my2318r8cri7rsqy1iv1qlq1j54', 'YzEzNzE2NzIzYjZiNGIyODBlOGU2MDQ2YzQxNWQwMzM4OTY2MTY5Nzp7ImlkIjoxLCJhZGkiOiJtdXN0YWZhIiwia2FkaSI6Im11c3RhZmEiLCJzaWZyZSI6IjEyMyIsImxvZyI6dHJ1ZSwic2F0aXNwYXphcmxhbWEiOnRydWUsIm11c3Rlcmlwb3J0Zm95Ijp0cnVlLCJzYW50aXlldGFraXAiOnRydWUsImFyaXphdGFraXAiOnRydWUsInRhcHVzaWNpbCI6dHJ1ZSwiYWJvbmVsaWsiOnRydWUsImhhbGtsYWlsaXNraWxlciI6dHJ1ZSwiYmVsZ2VrYXlkaSI6dHJ1ZSwibWFsaXlldCI6dHJ1ZSwiYmluYWtvbnRyb2wiOnRydWUsInByb2plZWtsZSI6ZmFsc2UsInByb2plZHV6ZW5sZSI6ZmFsc2UsInByb2plc2lsIjpmYWxzZSwiYmxva2VrbGUiOmZhbHNlLCJibG9rZHV6ZW5sZSI6ZmFsc2UsImJsb2tzaWwiOmZhbHNlLCJkYWlyZWVrbGUiOmZhbHNlLCJkYWlyZWR1emVubGUiOmZhbHNlLCJkYWlyZXNpbCI6ZmFsc2UsInNhdGlzZWtsZSI6ZmFsc2UsInNhdGlzZHV6ZW5sZSI6ZmFsc2UsInNhdGlzc2lsIjpmYWxzZSwicG9ydGZveWVrbGUiOmZhbHNlLCJwb3J0Zm95ZHV6ZW5sZSI6ZmFsc2UsInBvcnRmb3lzaWwiOmZhbHNlLCJzYW50aXllZWtsZSI6dHJ1ZSwic2FudGl5ZWR1emVubGUiOnRydWUsInNhbnRpeWVzaWwiOnRydWUsInNhbnRpeWVtYWx6ZW1lZWtsZSI6dHJ1ZSwic2FudGl5ZW1hbHplbWVkdXplbmxlIjp0cnVlLCJzYW50aXllbWFsemVtZXNpbCI6dHJ1ZSwiYXJpemFrYXlkaWVrbGUiOmZhbHNlLCJhcml6YWtheWRpZHV6ZW5sZSI6ZmFsc2UsImFyaXpha2F5ZGlzaWwiOmZhbHNlLCJhcml6YXRha2lwa29udHJvbHUiOnRydWUsInRhcHVzaWNpbGVrbGUiOmZhbHNlLCJ0YXB1c2ljaWxkdXplbmxlIjpmYWxzZSwidGFwdXNpY2lsc2lsIjpmYWxzZSwiYWJvbmVsaWtla2xlIjpmYWxzZSwiYWJvbmVsaWtkdXplbmxlIjpmYWxzZSwiYWJvbmVsaWtzaWwiOmZhbHNlLCJoYWxrbGFpbGlza2lsZXJla2xlIjpmYWxzZSwiaGFsa2xhaWxpc2tpbGVyZHV6ZW5sZSI6ZmFsc2UsImhhbGtsYWlsaXNraWxlcnNpbCI6ZmFsc2UsImJlbGdla2F5ZGlla2xlIjpmYWxzZSwiYmVsZ2VrYXlkaWR1emVubGUiOmZhbHNlLCJiZWxnZWtheWRpc2lsIjpmYWxzZSwibWFsaXlldGVrbGUiOmZhbHNlLCJtYWxpeWV0ZHV6ZW5sZSI6ZmFsc2UsIm1hbGl5ZXRzaWwiOmZhbHNlLCJiaW5ha29udHJvbGVrbGUiOmZhbHNlLCJiaW5ha29udHJvbGR1emVubGUiOmZhbHNlLCJiaW5ha29udHJvbHNpbCI6ZmFsc2UsInlvbmV0aWNpZWtsZSI6ZmFsc2UsInlvbmV0aWNpZHV6ZW5sZSI6ZmFsc2UsInlvbmV0aWNpc2lsIjpmYWxzZSwibWVudTEiOjAsIm1lbnUyIjowfQ==', '2019-03-15 12:40:04.179448'),
('2962zivbh49g5svker15mt09zv5tfedf', 'OGQyN2VmNzY0NjYzODVkMDIzMTM3MGQwNWM3MzE2YmRlMjRiY2RhZTp7ImFkaSI6Im11c3RhZmEiLCJrYWRpIjoibXVzdGFmYSIsInNpZnJlIjoiMTIzMTIzIiwibG9nIjp0cnVlLCJzYXRpc3BhemFybGFtYSI6dHJ1ZSwibXVzdGVyaXBvcnRmb3kiOnRydWUsInNhbnRpeWV0YWtpcCI6dHJ1ZSwiYXJpemF0YWtpcCI6dHJ1ZSwidGFwdXNpY2lsIjp0cnVlLCJhYm9uZWxpayI6dHJ1ZSwiaGFsa2xhaWxpc2tpbGVyIjp0cnVlLCJiZWxnZWtheWRpIjp0cnVlLCJtYWxpeWV0Ijp0cnVlLCJiaW5ha29udHJvbCI6dHJ1ZSwicHJvamVla2xlIjp0cnVlLCJwcm9qZWR1emVubGUiOnRydWUsInByb2plc2lsIjp0cnVlLCJibG9rZWtsZSI6dHJ1ZSwiYmxva2R1emVubGUiOnRydWUsImJsb2tzaWwiOnRydWUsImRhaXJlZWtsZSI6dHJ1ZSwiZGFpcmVkdXplbmxlIjp0cnVlLCJkYWlyZXNpbCI6dHJ1ZSwic2F0aXNla2xlIjp0cnVlLCJzYXRpc2R1emVubGUiOnRydWUsInNhdGlzc2lsIjp0cnVlLCJwb3J0Zm95ZWtsZSI6dHJ1ZSwicG9ydGZveWR1emVubGUiOnRydWUsInBvcnRmb3lzaWwiOnRydWUsInNhbnRpeWVla2xlIjp0cnVlLCJzYW50aXllZHV6ZW5sZSI6dHJ1ZSwic2FudGl5ZXNpbCI6dHJ1ZSwic2FudGl5ZW1hbHplbWVla2xlIjp0cnVlLCJzYW50aXllbWFsemVtZWR1emVubGUiOnRydWUsInNhbnRpeWVtYWx6ZW1lc2lsIjp0cnVlLCJhcml6YWtheWRpZWtsZSI6dHJ1ZSwiYXJpemFrYXlkaWR1emVubGUiOnRydWUsImFyaXpha2FkaXNpbCI6dHJ1ZSwiYXJpemF0YWtpcGtvbnRyb2x1Ijp0cnVlLCJ0YXB1c2ljaWxla2xlIjp0cnVlLCJ0YXB1c2ljaWxkdXplbmxlIjp0cnVlLCJ0YXB1c2ljaWxzaWwiOnRydWUsImFib25lbGlrZWtsZSI6dHJ1ZSwiYWJvbmVsaWtkdXplbmxlIjp0cnVlLCJhYm9uZWxpa3NpbCI6dHJ1ZSwiaGFsa2xhaWxpc2tpbGVyZWtsZSI6dHJ1ZSwiaGFsa2xhaWxpc2tpbGVyZHV6ZW5sZSI6dHJ1ZSwiaGFsa2xhaWxpc2tpbGVyc2lsIjp0cnVlLCJiZWxnZWtheWRpZWtsZSI6dHJ1ZSwiYmVsZ2VrYXlkaWR1emVubGUiOnRydWUsImJlbGdla2F5ZGlzaWwiOnRydWUsIm1hbGl5ZXRla2xlIjp0cnVlLCJtYWxpeWV0ZHV6ZW5sZSI6dHJ1ZSwibWFsaXlldHNpbCI6dHJ1ZSwiYmluYWtvbnRyb2xla2xlIjp0cnVlLCJiaW5ha29udHJvbGR1emVubGUiOnRydWUsImJpbmFrb250b3Jsc2lsIjp0cnVlLCJ5b25ldGljaWVrbGUiOnRydWUsInlvbmV0aWNpZHV6ZW5sZSI6dHJ1ZSwieW9uZXRpY2lzaWwiOnRydWV9', '2019-01-14 13:32:38.048140'),
('30ueq2obdbi0t5qx0x0sdn2le643ihzy', 'MThmMjJiMGRkMDBiYWYwMGFjMmRjNGFlMDlhYWFiODI2NTE4YmVlNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2ZjY0YjQ1N2UxZjI1MmVlYmRiYjE2OTJhMDU1MDUyOWY0MTk2YjI2In0=', '2019-01-08 11:11:23.288639'),
('32wgyfhrmf56dsye3bi8exgmf65ny3fu', 'NGNjNGJlZmJhYTNhN2ViNzU4MTEyZTdhYjUzMTkwMWE4MmIxZTEwODp7ImlkIjoxLCJhZGkiOiJtdXN0YWZhIiwia2FkaSI6Im11c3RhZmEiLCJzaWZyZSI6IjEyMzEyMyIsImxvZyI6dHJ1ZSwic2F0aXNwYXphcmxhbWEiOnRydWUsIm11c3Rlcmlwb3J0Zm95Ijp0cnVlLCJzYW50aXlldGFraXAiOnRydWUsImFyaXphdGFraXAiOnRydWUsInRhcHVzaWNpbCI6dHJ1ZSwiYWJvbmVsaWsiOnRydWUsImhhbGtsYWlsaXNraWxlciI6dHJ1ZSwiYmVsZ2VrYXlkaSI6dHJ1ZSwibWFsaXlldCI6dHJ1ZSwiYmluYWtvbnRyb2wiOnRydWUsInByb2plZWtsZSI6dHJ1ZSwicHJvamVkdXplbmxlIjp0cnVlLCJwcm9qZXNpbCI6dHJ1ZSwiYmxva2VrbGUiOnRydWUsImJsb2tkdXplbmxlIjp0cnVlLCJibG9rc2lsIjp0cnVlLCJkYWlyZWVrbGUiOnRydWUsImRhaXJlZHV6ZW5sZSI6dHJ1ZSwiZGFpcmVzaWwiOnRydWUsInNhdGlzZWtsZSI6dHJ1ZSwic2F0aXNkdXplbmxlIjp0cnVlLCJzYXRpc3NpbCI6dHJ1ZSwicG9ydGZveWVrbGUiOnRydWUsInBvcnRmb3lkdXplbmxlIjp0cnVlLCJwb3J0Zm95c2lsIjp0cnVlLCJzYW50aXllZWtsZSI6dHJ1ZSwic2FudGl5ZWR1emVubGUiOnRydWUsInNhbnRpeWVzaWwiOnRydWUsInNhbnRpeWVtYWx6ZW1lZWtsZSI6dHJ1ZSwic2FudGl5ZW1hbHplbWVkdXplbmxlIjp0cnVlLCJzYW50aXllbWFsemVtZXNpbCI6dHJ1ZSwiYXJpemFrYXlkaWVrbGUiOnRydWUsImFyaXpha2F5ZGlkdXplbmxlIjp0cnVlLCJhcml6YWthZGlzaWwiOnRydWUsImFyaXphdGFraXBrb250cm9sdSI6dHJ1ZSwidGFwdXNpY2lsZWtsZSI6dHJ1ZSwidGFwdXNpY2lsZHV6ZW5sZSI6dHJ1ZSwidGFwdXNpY2lsc2lsIjp0cnVlLCJhYm9uZWxpa2VrbGUiOnRydWUsImFib25lbGlrZHV6ZW5sZSI6dHJ1ZSwiYWJvbmVsaWtzaWwiOnRydWUsImhhbGtsYWlsaXNraWxlcmVrbGUiOnRydWUsImhhbGtsYWlsaXNraWxlcmR1emVubGUiOnRydWUsImhhbGtsYWlsaXNraWxlcnNpbCI6dHJ1ZSwiYmVsZ2VrYXlkaWVrbGUiOnRydWUsImJlbGdla2F5ZGlkdXplbmxlIjp0cnVlLCJiZWxnZWtheWRpc2lsIjp0cnVlLCJtYWxpeWV0ZWtsZSI6dHJ1ZSwibWFsaXlldGR1emVubGUiOnRydWUsIm1hbGl5ZXRzaWwiOnRydWUsImJpbmFrb250cm9sZWtsZSI6dHJ1ZSwiYmluYWtvbnRyb2xkdXplbmxlIjp0cnVlLCJiaW5ha29udG9ybHNpbCI6dHJ1ZSwieW9uZXRpY2lla2xlIjp0cnVlLCJ5b25ldGljaWR1emVubGUiOnRydWUsInlvbmV0aWNpc2lsIjp0cnVlLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNmY2NGI0NTdlMWYyNTJlZWJkYmIxNjkyYTA1NTA1MjlmNDE5NmIyNiJ9', '2019-01-30 10:43:43.975079'),
('37a3kicgaq9yxaufhxwmfh1buj3y019i', 'OGQyN2VmNzY0NjYzODVkMDIzMTM3MGQwNWM3MzE2YmRlMjRiY2RhZTp7ImFkaSI6Im11c3RhZmEiLCJrYWRpIjoibXVzdGFmYSIsInNpZnJlIjoiMTIzMTIzIiwibG9nIjp0cnVlLCJzYXRpc3BhemFybGFtYSI6dHJ1ZSwibXVzdGVyaXBvcnRmb3kiOnRydWUsInNhbnRpeWV0YWtpcCI6dHJ1ZSwiYXJpemF0YWtpcCI6dHJ1ZSwidGFwdXNpY2lsIjp0cnVlLCJhYm9uZWxpayI6dHJ1ZSwiaGFsa2xhaWxpc2tpbGVyIjp0cnVlLCJiZWxnZWtheWRpIjp0cnVlLCJtYWxpeWV0Ijp0cnVlLCJiaW5ha29udHJvbCI6dHJ1ZSwicHJvamVla2xlIjp0cnVlLCJwcm9qZWR1emVubGUiOnRydWUsInByb2plc2lsIjp0cnVlLCJibG9rZWtsZSI6dHJ1ZSwiYmxva2R1emVubGUiOnRydWUsImJsb2tzaWwiOnRydWUsImRhaXJlZWtsZSI6dHJ1ZSwiZGFpcmVkdXplbmxlIjp0cnVlLCJkYWlyZXNpbCI6dHJ1ZSwic2F0aXNla2xlIjp0cnVlLCJzYXRpc2R1emVubGUiOnRydWUsInNhdGlzc2lsIjp0cnVlLCJwb3J0Zm95ZWtsZSI6dHJ1ZSwicG9ydGZveWR1emVubGUiOnRydWUsInBvcnRmb3lzaWwiOnRydWUsInNhbnRpeWVla2xlIjp0cnVlLCJzYW50aXllZHV6ZW5sZSI6dHJ1ZSwic2FudGl5ZXNpbCI6dHJ1ZSwic2FudGl5ZW1hbHplbWVla2xlIjp0cnVlLCJzYW50aXllbWFsemVtZWR1emVubGUiOnRydWUsInNhbnRpeWVtYWx6ZW1lc2lsIjp0cnVlLCJhcml6YWtheWRpZWtsZSI6dHJ1ZSwiYXJpemFrYXlkaWR1emVubGUiOnRydWUsImFyaXpha2FkaXNpbCI6dHJ1ZSwiYXJpemF0YWtpcGtvbnRyb2x1Ijp0cnVlLCJ0YXB1c2ljaWxla2xlIjp0cnVlLCJ0YXB1c2ljaWxkdXplbmxlIjp0cnVlLCJ0YXB1c2ljaWxzaWwiOnRydWUsImFib25lbGlrZWtsZSI6dHJ1ZSwiYWJvbmVsaWtkdXplbmxlIjp0cnVlLCJhYm9uZWxpa3NpbCI6dHJ1ZSwiaGFsa2xhaWxpc2tpbGVyZWtsZSI6dHJ1ZSwiaGFsa2xhaWxpc2tpbGVyZHV6ZW5sZSI6dHJ1ZSwiaGFsa2xhaWxpc2tpbGVyc2lsIjp0cnVlLCJiZWxnZWtheWRpZWtsZSI6dHJ1ZSwiYmVsZ2VrYXlkaWR1emVubGUiOnRydWUsImJlbGdla2F5ZGlzaWwiOnRydWUsIm1hbGl5ZXRla2xlIjp0cnVlLCJtYWxpeWV0ZHV6ZW5sZSI6dHJ1ZSwibWFsaXlldHNpbCI6dHJ1ZSwiYmluYWtvbnRyb2xla2xlIjp0cnVlLCJiaW5ha29udHJvbGR1emVubGUiOnRydWUsImJpbmFrb250b3Jsc2lsIjp0cnVlLCJ5b25ldGljaWVrbGUiOnRydWUsInlvbmV0aWNpZHV6ZW5sZSI6dHJ1ZSwieW9uZXRpY2lzaWwiOnRydWV9', '2019-01-14 13:32:00.127184'),
('3iws27fq9fp3c2lrze7r3e6hdbzqq85m', 'OGQyN2VmNzY0NjYzODVkMDIzMTM3MGQwNWM3MzE2YmRlMjRiY2RhZTp7ImFkaSI6Im11c3RhZmEiLCJrYWRpIjoibXVzdGFmYSIsInNpZnJlIjoiMTIzMTIzIiwibG9nIjp0cnVlLCJzYXRpc3BhemFybGFtYSI6dHJ1ZSwibXVzdGVyaXBvcnRmb3kiOnRydWUsInNhbnRpeWV0YWtpcCI6dHJ1ZSwiYXJpemF0YWtpcCI6dHJ1ZSwidGFwdXNpY2lsIjp0cnVlLCJhYm9uZWxpayI6dHJ1ZSwiaGFsa2xhaWxpc2tpbGVyIjp0cnVlLCJiZWxnZWtheWRpIjp0cnVlLCJtYWxpeWV0Ijp0cnVlLCJiaW5ha29udHJvbCI6dHJ1ZSwicHJvamVla2xlIjp0cnVlLCJwcm9qZWR1emVubGUiOnRydWUsInByb2plc2lsIjp0cnVlLCJibG9rZWtsZSI6dHJ1ZSwiYmxva2R1emVubGUiOnRydWUsImJsb2tzaWwiOnRydWUsImRhaXJlZWtsZSI6dHJ1ZSwiZGFpcmVkdXplbmxlIjp0cnVlLCJkYWlyZXNpbCI6dHJ1ZSwic2F0aXNla2xlIjp0cnVlLCJzYXRpc2R1emVubGUiOnRydWUsInNhdGlzc2lsIjp0cnVlLCJwb3J0Zm95ZWtsZSI6dHJ1ZSwicG9ydGZveWR1emVubGUiOnRydWUsInBvcnRmb3lzaWwiOnRydWUsInNhbnRpeWVla2xlIjp0cnVlLCJzYW50aXllZHV6ZW5sZSI6dHJ1ZSwic2FudGl5ZXNpbCI6dHJ1ZSwic2FudGl5ZW1hbHplbWVla2xlIjp0cnVlLCJzYW50aXllbWFsemVtZWR1emVubGUiOnRydWUsInNhbnRpeWVtYWx6ZW1lc2lsIjp0cnVlLCJhcml6YWtheWRpZWtsZSI6dHJ1ZSwiYXJpemFrYXlkaWR1emVubGUiOnRydWUsImFyaXpha2FkaXNpbCI6dHJ1ZSwiYXJpemF0YWtpcGtvbnRyb2x1Ijp0cnVlLCJ0YXB1c2ljaWxla2xlIjp0cnVlLCJ0YXB1c2ljaWxkdXplbmxlIjp0cnVlLCJ0YXB1c2ljaWxzaWwiOnRydWUsImFib25lbGlrZWtsZSI6dHJ1ZSwiYWJvbmVsaWtkdXplbmxlIjp0cnVlLCJhYm9uZWxpa3NpbCI6dHJ1ZSwiaGFsa2xhaWxpc2tpbGVyZWtsZSI6dHJ1ZSwiaGFsa2xhaWxpc2tpbGVyZHV6ZW5sZSI6dHJ1ZSwiaGFsa2xhaWxpc2tpbGVyc2lsIjp0cnVlLCJiZWxnZWtheWRpZWtsZSI6dHJ1ZSwiYmVsZ2VrYXlkaWR1emVubGUiOnRydWUsImJlbGdla2F5ZGlzaWwiOnRydWUsIm1hbGl5ZXRla2xlIjp0cnVlLCJtYWxpeWV0ZHV6ZW5sZSI6dHJ1ZSwibWFsaXlldHNpbCI6dHJ1ZSwiYmluYWtvbnRyb2xla2xlIjp0cnVlLCJiaW5ha29udHJvbGR1emVubGUiOnRydWUsImJpbmFrb250b3Jsc2lsIjp0cnVlLCJ5b25ldGljaWVrbGUiOnRydWUsInlvbmV0aWNpZHV6ZW5sZSI6dHJ1ZSwieW9uZXRpY2lzaWwiOnRydWV9', '2019-01-14 13:32:57.581638'),
('3sd1gtf2o8n3jxooh1hc33krpk653zkd', 'NGNjNGJlZmJhYTNhN2ViNzU4MTEyZTdhYjUzMTkwMWE4MmIxZTEwODp7ImlkIjoxLCJhZGkiOiJtdXN0YWZhIiwia2FkaSI6Im11c3RhZmEiLCJzaWZyZSI6IjEyMzEyMyIsImxvZyI6dHJ1ZSwic2F0aXNwYXphcmxhbWEiOnRydWUsIm11c3Rlcmlwb3J0Zm95Ijp0cnVlLCJzYW50aXlldGFraXAiOnRydWUsImFyaXphdGFraXAiOnRydWUsInRhcHVzaWNpbCI6dHJ1ZSwiYWJvbmVsaWsiOnRydWUsImhhbGtsYWlsaXNraWxlciI6dHJ1ZSwiYmVsZ2VrYXlkaSI6dHJ1ZSwibWFsaXlldCI6dHJ1ZSwiYmluYWtvbnRyb2wiOnRydWUsInByb2plZWtsZSI6dHJ1ZSwicHJvamVkdXplbmxlIjp0cnVlLCJwcm9qZXNpbCI6dHJ1ZSwiYmxva2VrbGUiOnRydWUsImJsb2tkdXplbmxlIjp0cnVlLCJibG9rc2lsIjp0cnVlLCJkYWlyZWVrbGUiOnRydWUsImRhaXJlZHV6ZW5sZSI6dHJ1ZSwiZGFpcmVzaWwiOnRydWUsInNhdGlzZWtsZSI6dHJ1ZSwic2F0aXNkdXplbmxlIjp0cnVlLCJzYXRpc3NpbCI6dHJ1ZSwicG9ydGZveWVrbGUiOnRydWUsInBvcnRmb3lkdXplbmxlIjp0cnVlLCJwb3J0Zm95c2lsIjp0cnVlLCJzYW50aXllZWtsZSI6dHJ1ZSwic2FudGl5ZWR1emVubGUiOnRydWUsInNhbnRpeWVzaWwiOnRydWUsInNhbnRpeWVtYWx6ZW1lZWtsZSI6dHJ1ZSwic2FudGl5ZW1hbHplbWVkdXplbmxlIjp0cnVlLCJzYW50aXllbWFsemVtZXNpbCI6dHJ1ZSwiYXJpemFrYXlkaWVrbGUiOnRydWUsImFyaXpha2F5ZGlkdXplbmxlIjp0cnVlLCJhcml6YWthZGlzaWwiOnRydWUsImFyaXphdGFraXBrb250cm9sdSI6dHJ1ZSwidGFwdXNpY2lsZWtsZSI6dHJ1ZSwidGFwdXNpY2lsZHV6ZW5sZSI6dHJ1ZSwidGFwdXNpY2lsc2lsIjp0cnVlLCJhYm9uZWxpa2VrbGUiOnRydWUsImFib25lbGlrZHV6ZW5sZSI6dHJ1ZSwiYWJvbmVsaWtzaWwiOnRydWUsImhhbGtsYWlsaXNraWxlcmVrbGUiOnRydWUsImhhbGtsYWlsaXNraWxlcmR1emVubGUiOnRydWUsImhhbGtsYWlsaXNraWxlcnNpbCI6dHJ1ZSwiYmVsZ2VrYXlkaWVrbGUiOnRydWUsImJlbGdla2F5ZGlkdXplbmxlIjp0cnVlLCJiZWxnZWtheWRpc2lsIjp0cnVlLCJtYWxpeWV0ZWtsZSI6dHJ1ZSwibWFsaXlldGR1emVubGUiOnRydWUsIm1hbGl5ZXRzaWwiOnRydWUsImJpbmFrb250cm9sZWtsZSI6dHJ1ZSwiYmluYWtvbnRyb2xkdXplbmxlIjp0cnVlLCJiaW5ha29udG9ybHNpbCI6dHJ1ZSwieW9uZXRpY2lla2xlIjp0cnVlLCJ5b25ldGljaWR1emVubGUiOnRydWUsInlvbmV0aWNpc2lsIjp0cnVlLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNmY2NGI0NTdlMWYyNTJlZWJkYmIxNjkyYTA1NTA1MjlmNDE5NmIyNiJ9', '2019-01-27 19:19:49.006020'),
('4bazx7ee3vhuhs91x3c1uczuc24kc2mj', 'OGQyN2VmNzY0NjYzODVkMDIzMTM3MGQwNWM3MzE2YmRlMjRiY2RhZTp7ImFkaSI6Im11c3RhZmEiLCJrYWRpIjoibXVzdGFmYSIsInNpZnJlIjoiMTIzMTIzIiwibG9nIjp0cnVlLCJzYXRpc3BhemFybGFtYSI6dHJ1ZSwibXVzdGVyaXBvcnRmb3kiOnRydWUsInNhbnRpeWV0YWtpcCI6dHJ1ZSwiYXJpemF0YWtpcCI6dHJ1ZSwidGFwdXNpY2lsIjp0cnVlLCJhYm9uZWxpayI6dHJ1ZSwiaGFsa2xhaWxpc2tpbGVyIjp0cnVlLCJiZWxnZWtheWRpIjp0cnVlLCJtYWxpeWV0Ijp0cnVlLCJiaW5ha29udHJvbCI6dHJ1ZSwicHJvamVla2xlIjp0cnVlLCJwcm9qZWR1emVubGUiOnRydWUsInByb2plc2lsIjp0cnVlLCJibG9rZWtsZSI6dHJ1ZSwiYmxva2R1emVubGUiOnRydWUsImJsb2tzaWwiOnRydWUsImRhaXJlZWtsZSI6dHJ1ZSwiZGFpcmVkdXplbmxlIjp0cnVlLCJkYWlyZXNpbCI6dHJ1ZSwic2F0aXNla2xlIjp0cnVlLCJzYXRpc2R1emVubGUiOnRydWUsInNhdGlzc2lsIjp0cnVlLCJwb3J0Zm95ZWtsZSI6dHJ1ZSwicG9ydGZveWR1emVubGUiOnRydWUsInBvcnRmb3lzaWwiOnRydWUsInNhbnRpeWVla2xlIjp0cnVlLCJzYW50aXllZHV6ZW5sZSI6dHJ1ZSwic2FudGl5ZXNpbCI6dHJ1ZSwic2FudGl5ZW1hbHplbWVla2xlIjp0cnVlLCJzYW50aXllbWFsemVtZWR1emVubGUiOnRydWUsInNhbnRpeWVtYWx6ZW1lc2lsIjp0cnVlLCJhcml6YWtheWRpZWtsZSI6dHJ1ZSwiYXJpemFrYXlkaWR1emVubGUiOnRydWUsImFyaXpha2FkaXNpbCI6dHJ1ZSwiYXJpemF0YWtpcGtvbnRyb2x1Ijp0cnVlLCJ0YXB1c2ljaWxla2xlIjp0cnVlLCJ0YXB1c2ljaWxkdXplbmxlIjp0cnVlLCJ0YXB1c2ljaWxzaWwiOnRydWUsImFib25lbGlrZWtsZSI6dHJ1ZSwiYWJvbmVsaWtkdXplbmxlIjp0cnVlLCJhYm9uZWxpa3NpbCI6dHJ1ZSwiaGFsa2xhaWxpc2tpbGVyZWtsZSI6dHJ1ZSwiaGFsa2xhaWxpc2tpbGVyZHV6ZW5sZSI6dHJ1ZSwiaGFsa2xhaWxpc2tpbGVyc2lsIjp0cnVlLCJiZWxnZWtheWRpZWtsZSI6dHJ1ZSwiYmVsZ2VrYXlkaWR1emVubGUiOnRydWUsImJlbGdla2F5ZGlzaWwiOnRydWUsIm1hbGl5ZXRla2xlIjp0cnVlLCJtYWxpeWV0ZHV6ZW5sZSI6dHJ1ZSwibWFsaXlldHNpbCI6dHJ1ZSwiYmluYWtvbnRyb2xla2xlIjp0cnVlLCJiaW5ha29udHJvbGR1emVubGUiOnRydWUsImJpbmFrb250b3Jsc2lsIjp0cnVlLCJ5b25ldGljaWVrbGUiOnRydWUsInlvbmV0aWNpZHV6ZW5sZSI6dHJ1ZSwieW9uZXRpY2lzaWwiOnRydWV9', '2019-01-14 13:39:43.508504'),
('4qvpdj2v7o4s97bvz9siduylmpcmiz37', 'NGQwOWRlNjE3YTI0ZTYzMDk1MDQ2MjFjZGU4NWQ1N2MxOGZhMTkzOTp7ImlkIjoxLCJhZGkiOiJtdXN0YWZhIiwia2FkaSI6Im11c3RhZmEiLCJzaWZyZSI6IjEyMzEyMyIsImxvZyI6dHJ1ZSwic2F0aXNwYXphcmxhbWEiOnRydWUsIm11c3Rlcmlwb3J0Zm95Ijp0cnVlLCJzYW50aXlldGFraXAiOnRydWUsImFyaXphdGFraXAiOnRydWUsInRhcHVzaWNpbCI6dHJ1ZSwiYWJvbmVsaWsiOnRydWUsImhhbGtsYWlsaXNraWxlciI6dHJ1ZSwiYmVsZ2VrYXlkaSI6dHJ1ZSwibWFsaXlldCI6dHJ1ZSwiYmluYWtvbnRyb2wiOnRydWUsInByb2plZWtsZSI6ZmFsc2UsInByb2plZHV6ZW5sZSI6ZmFsc2UsInByb2plc2lsIjpmYWxzZSwiYmxva2VrbGUiOmZhbHNlLCJibG9rZHV6ZW5sZSI6ZmFsc2UsImJsb2tzaWwiOmZhbHNlLCJkYWlyZWVrbGUiOmZhbHNlLCJkYWlyZWR1emVubGUiOmZhbHNlLCJkYWlyZXNpbCI6ZmFsc2UsInNhdGlzZWtsZSI6ZmFsc2UsInNhdGlzZHV6ZW5sZSI6ZmFsc2UsInNhdGlzc2lsIjpmYWxzZSwicG9ydGZveWVrbGUiOmZhbHNlLCJwb3J0Zm95ZHV6ZW5sZSI6ZmFsc2UsInBvcnRmb3lzaWwiOmZhbHNlLCJzYW50aXllZWtsZSI6dHJ1ZSwic2FudGl5ZWR1emVubGUiOnRydWUsInNhbnRpeWVzaWwiOnRydWUsInNhbnRpeWVtYWx6ZW1lZWtsZSI6dHJ1ZSwic2FudGl5ZW1hbHplbWVkdXplbmxlIjp0cnVlLCJzYW50aXllbWFsemVtZXNpbCI6dHJ1ZSwiYXJpemFrYXlkaWVrbGUiOmZhbHNlLCJhcml6YWtheWRpZHV6ZW5sZSI6ZmFsc2UsImFyaXpha2F5ZGlzaWwiOmZhbHNlLCJhcml6YXRha2lwa29udHJvbHUiOnRydWUsInRhcHVzaWNpbGVrbGUiOmZhbHNlLCJ0YXB1c2ljaWxkdXplbmxlIjpmYWxzZSwidGFwdXNpY2lsc2lsIjpmYWxzZSwiYWJvbmVsaWtla2xlIjpmYWxzZSwiYWJvbmVsaWtkdXplbmxlIjpmYWxzZSwiYWJvbmVsaWtzaWwiOmZhbHNlLCJoYWxrbGFpbGlza2lsZXJla2xlIjpmYWxzZSwiaGFsa2xhaWxpc2tpbGVyZHV6ZW5sZSI6ZmFsc2UsImhhbGtsYWlsaXNraWxlcnNpbCI6ZmFsc2UsImJlbGdla2F5ZGlla2xlIjpmYWxzZSwiYmVsZ2VrYXlkaWR1emVubGUiOmZhbHNlLCJiZWxnZWtheWRpc2lsIjpmYWxzZSwibWFsaXlldGVrbGUiOmZhbHNlLCJtYWxpeWV0ZHV6ZW5sZSI6ZmFsc2UsIm1hbGl5ZXRzaWwiOmZhbHNlLCJiaW5ha29udHJvbGVrbGUiOmZhbHNlLCJiaW5ha29udHJvbGR1emVubGUiOmZhbHNlLCJiaW5ha29udHJvbHNpbCI6ZmFsc2UsInlvbmV0aWNpZWtsZSI6ZmFsc2UsInlvbmV0aWNpZHV6ZW5sZSI6ZmFsc2UsInlvbmV0aWNpc2lsIjpmYWxzZSwibWVudTEiOjExLCJtZW51MiI6MH0=', '2019-02-10 13:38:45.716592'),
('50kyxv2w0pur902qba3lmefr4qgxxnw0', 'NDBlZDczMzZiMDgwZGRmZWY5Y2E4MjhkNjdlNWE4OWNiZTEzNDVhMjp7Im1lbnUxIjozLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNmY2NGI0NTdlMWYyNTJlZWJkYmIxNjkyYTA1NTA1MjlmNDE5NmIyNiIsImlkIjoxLCJhZGkiOiJtdXN0YWZhIiwia2FkaSI6Im11c3RhZmEiLCJzaWZyZSI6IjEyMyIsImxvZyI6dHJ1ZSwic2F0aXNwYXphcmxhbWEiOnRydWUsIm11c3Rlcmlwb3J0Zm95Ijp0cnVlLCJzYW50aXlldGFraXAiOnRydWUsImFyaXphdGFraXAiOnRydWUsInRhcHVzaWNpbCI6dHJ1ZSwiYWJvbmVsaWsiOnRydWUsImhhbGtsYWlsaXNraWxlciI6dHJ1ZSwiYmVsZ2VrYXlkaSI6dHJ1ZSwibWFsaXlldCI6dHJ1ZSwiYmluYWtvbnRyb2wiOnRydWUsInByb2plZWtsZSI6dHJ1ZSwicHJvamVkdXplbmxlIjp0cnVlLCJwcm9qZXNpbCI6dHJ1ZSwiYmxva2VrbGUiOmZhbHNlLCJibG9rZHV6ZW5sZSI6ZmFsc2UsImJsb2tzaWwiOmZhbHNlLCJkYWlyZWVrbGUiOmZhbHNlLCJkYWlyZWR1emVubGUiOmZhbHNlLCJkYWlyZXNpbCI6ZmFsc2UsInNhdGlzZWtsZSI6ZmFsc2UsInNhdGlzZHV6ZW5sZSI6ZmFsc2UsInNhdGlzc2lsIjpmYWxzZSwicG9ydGZveWVrbGUiOmZhbHNlLCJwb3J0Zm95ZHV6ZW5sZSI6ZmFsc2UsInBvcnRmb3lzaWwiOmZhbHNlLCJzYW50aXllZWtsZSI6dHJ1ZSwic2FudGl5ZWR1emVubGUiOnRydWUsInNhbnRpeWVzaWwiOnRydWUsInNhbnRpeWVtYWx6ZW1lZWtsZSI6dHJ1ZSwic2FudGl5ZW1hbHplbWVkdXplbmxlIjp0cnVlLCJzYW50aXllbWFsemVtZXNpbCI6dHJ1ZSwiYXJpemFrYXlkaWVrbGUiOmZhbHNlLCJhcml6YWtheWRpZHV6ZW5sZSI6ZmFsc2UsImFyaXpha2F5ZGlzaWwiOmZhbHNlLCJhcml6YXRha2lwa29udHJvbHUiOnRydWUsInRhcHVzaWNpbGVrbGUiOmZhbHNlLCJ0YXB1c2ljaWxkdXplbmxlIjpmYWxzZSwidGFwdXNpY2lsc2lsIjpmYWxzZSwiYWJvbmVsaWtla2xlIjpmYWxzZSwiYWJvbmVsaWtkdXplbmxlIjpmYWxzZSwiYWJvbmVsaWtzaWwiOmZhbHNlLCJoYWxrbGFpbGlza2lsZXJla2xlIjpmYWxzZSwiaGFsa2xhaWxpc2tpbGVyZHV6ZW5sZSI6ZmFsc2UsImhhbGtsYWlsaXNraWxlcnNpbCI6ZmFsc2UsImJlbGdla2F5ZGlla2xlIjpmYWxzZSwiYmVsZ2VrYXlkaWR1emVubGUiOmZhbHNlLCJiZWxnZWtheWRpc2lsIjpmYWxzZSwibWFsaXlldGVrbGUiOmZhbHNlLCJtYWxpeWV0ZHV6ZW5sZSI6ZmFsc2UsIm1hbGl5ZXRzaWwiOmZhbHNlLCJiaW5ha29udHJvbGVrbGUiOmZhbHNlLCJiaW5ha29udHJvbGR1emVubGUiOmZhbHNlLCJiaW5ha29udHJvbHNpbCI6ZmFsc2UsInlvbmV0aWNpZWtsZSI6ZmFsc2UsInlvbmV0aWNpZHV6ZW5sZSI6ZmFsc2UsInlvbmV0aWNpc2lsIjpmYWxzZSwibWVudTIiOjB9', '2019-03-19 07:24:19.331830'),
('5bpoab6434mzd7a5832ar7tw4rueamog', 'Y2IwNDhjOWYxNjk2MGFkZTJmOGY2YWU4MjExYzViOWQyNTVjNzNkNTp7ImxvZyI6dHJ1ZSwiaWQiOjEsImFkaSI6Im11c3RhZmEiLCJrYWRpIjoibXVzdGFmYSIsInNpZnJlIjoiMTIzIiwic2F0aXNwYXphcmxhbWEiOnRydWUsIm11c3Rlcmlwb3J0Zm95Ijp0cnVlLCJzYW50aXlldGFraXAiOnRydWUsImFyaXphdGFraXAiOnRydWUsInRhcHVzaWNpbCI6dHJ1ZSwiYWJvbmVsaWsiOnRydWUsImhhbGtsYWlsaXNraWxlciI6dHJ1ZSwiYmVsZ2VrYXlkaSI6dHJ1ZSwibWFsaXlldCI6dHJ1ZSwiYmluYWtvbnRyb2wiOnRydWUsInByb2plZWtsZSI6ZmFsc2UsInByb2plZHV6ZW5sZSI6ZmFsc2UsInByb2plc2lsIjpmYWxzZSwiYmxva2VrbGUiOmZhbHNlLCJibG9rZHV6ZW5sZSI6ZmFsc2UsImJsb2tzaWwiOmZhbHNlLCJkYWlyZWVrbGUiOmZhbHNlLCJkYWlyZWR1emVubGUiOmZhbHNlLCJkYWlyZXNpbCI6ZmFsc2UsInNhdGlzZWtsZSI6ZmFsc2UsInNhdGlzZHV6ZW5sZSI6ZmFsc2UsInNhdGlzc2lsIjpmYWxzZSwicG9ydGZveWVrbGUiOmZhbHNlLCJwb3J0Zm95ZHV6ZW5sZSI6ZmFsc2UsInBvcnRmb3lzaWwiOmZhbHNlLCJzYW50aXllZWtsZSI6dHJ1ZSwic2FudGl5ZWR1emVubGUiOnRydWUsInNhbnRpeWVzaWwiOnRydWUsInNhbnRpeWVtYWx6ZW1lZWtsZSI6dHJ1ZSwic2FudGl5ZW1hbHplbWVkdXplbmxlIjp0cnVlLCJzYW50aXllbWFsemVtZXNpbCI6dHJ1ZSwiYXJpemFrYXlkaWVrbGUiOmZhbHNlLCJhcml6YWtheWRpZHV6ZW5sZSI6ZmFsc2UsImFyaXpha2F5ZGlzaWwiOmZhbHNlLCJhcml6YXRha2lwa29udHJvbHUiOnRydWUsInRhcHVzaWNpbGVrbGUiOmZhbHNlLCJ0YXB1c2ljaWxkdXplbmxlIjpmYWxzZSwidGFwdXNpY2lsc2lsIjpmYWxzZSwiYWJvbmVsaWtla2xlIjpmYWxzZSwiYWJvbmVsaWtkdXplbmxlIjpmYWxzZSwiYWJvbmVsaWtzaWwiOmZhbHNlLCJoYWxrbGFpbGlza2lsZXJla2xlIjpmYWxzZSwiaGFsa2xhaWxpc2tpbGVyZHV6ZW5sZSI6ZmFsc2UsImhhbGtsYWlsaXNraWxlcnNpbCI6ZmFsc2UsImJlbGdla2F5ZGlla2xlIjpmYWxzZSwiYmVsZ2VrYXlkaWR1emVubGUiOmZhbHNlLCJiZWxnZWtheWRpc2lsIjpmYWxzZSwibWFsaXlldGVrbGUiOmZhbHNlLCJtYWxpeWV0ZHV6ZW5sZSI6ZmFsc2UsIm1hbGl5ZXRzaWwiOmZhbHNlLCJiaW5ha29udHJvbGVrbGUiOmZhbHNlLCJiaW5ha29udHJvbGR1emVubGUiOmZhbHNlLCJiaW5ha29udHJvbHNpbCI6ZmFsc2UsInlvbmV0aWNpZWtsZSI6ZmFsc2UsInlvbmV0aWNpZHV6ZW5sZSI6ZmFsc2UsInlvbmV0aWNpc2lsIjpmYWxzZSwibWVudTEiOjEsIm1lbnUyIjowfQ==', '2019-03-15 12:58:06.844241'),
('684e9wo97ojbdfu2c4ldmueg4ksbxnpx', 'YzEzNzE2NzIzYjZiNGIyODBlOGU2MDQ2YzQxNWQwMzM4OTY2MTY5Nzp7ImlkIjoxLCJhZGkiOiJtdXN0YWZhIiwia2FkaSI6Im11c3RhZmEiLCJzaWZyZSI6IjEyMyIsImxvZyI6dHJ1ZSwic2F0aXNwYXphcmxhbWEiOnRydWUsIm11c3Rlcmlwb3J0Zm95Ijp0cnVlLCJzYW50aXlldGFraXAiOnRydWUsImFyaXphdGFraXAiOnRydWUsInRhcHVzaWNpbCI6dHJ1ZSwiYWJvbmVsaWsiOnRydWUsImhhbGtsYWlsaXNraWxlciI6dHJ1ZSwiYmVsZ2VrYXlkaSI6dHJ1ZSwibWFsaXlldCI6dHJ1ZSwiYmluYWtvbnRyb2wiOnRydWUsInByb2plZWtsZSI6ZmFsc2UsInByb2plZHV6ZW5sZSI6ZmFsc2UsInByb2plc2lsIjpmYWxzZSwiYmxva2VrbGUiOmZhbHNlLCJibG9rZHV6ZW5sZSI6ZmFsc2UsImJsb2tzaWwiOmZhbHNlLCJkYWlyZWVrbGUiOmZhbHNlLCJkYWlyZWR1emVubGUiOmZhbHNlLCJkYWlyZXNpbCI6ZmFsc2UsInNhdGlzZWtsZSI6ZmFsc2UsInNhdGlzZHV6ZW5sZSI6ZmFsc2UsInNhdGlzc2lsIjpmYWxzZSwicG9ydGZveWVrbGUiOmZhbHNlLCJwb3J0Zm95ZHV6ZW5sZSI6ZmFsc2UsInBvcnRmb3lzaWwiOmZhbHNlLCJzYW50aXllZWtsZSI6dHJ1ZSwic2FudGl5ZWR1emVubGUiOnRydWUsInNhbnRpeWVzaWwiOnRydWUsInNhbnRpeWVtYWx6ZW1lZWtsZSI6dHJ1ZSwic2FudGl5ZW1hbHplbWVkdXplbmxlIjp0cnVlLCJzYW50aXllbWFsemVtZXNpbCI6dHJ1ZSwiYXJpemFrYXlkaWVrbGUiOmZhbHNlLCJhcml6YWtheWRpZHV6ZW5sZSI6ZmFsc2UsImFyaXpha2F5ZGlzaWwiOmZhbHNlLCJhcml6YXRha2lwa29udHJvbHUiOnRydWUsInRhcHVzaWNpbGVrbGUiOmZhbHNlLCJ0YXB1c2ljaWxkdXplbmxlIjpmYWxzZSwidGFwdXNpY2lsc2lsIjpmYWxzZSwiYWJvbmVsaWtla2xlIjpmYWxzZSwiYWJvbmVsaWtkdXplbmxlIjpmYWxzZSwiYWJvbmVsaWtzaWwiOmZhbHNlLCJoYWxrbGFpbGlza2lsZXJla2xlIjpmYWxzZSwiaGFsa2xhaWxpc2tpbGVyZHV6ZW5sZSI6ZmFsc2UsImhhbGtsYWlsaXNraWxlcnNpbCI6ZmFsc2UsImJlbGdla2F5ZGlla2xlIjpmYWxzZSwiYmVsZ2VrYXlkaWR1emVubGUiOmZhbHNlLCJiZWxnZWtheWRpc2lsIjpmYWxzZSwibWFsaXlldGVrbGUiOmZhbHNlLCJtYWxpeWV0ZHV6ZW5sZSI6ZmFsc2UsIm1hbGl5ZXRzaWwiOmZhbHNlLCJiaW5ha29udHJvbGVrbGUiOmZhbHNlLCJiaW5ha29udHJvbGR1emVubGUiOmZhbHNlLCJiaW5ha29udHJvbHNpbCI6ZmFsc2UsInlvbmV0aWNpZWtsZSI6ZmFsc2UsInlvbmV0aWNpZHV6ZW5sZSI6ZmFsc2UsInlvbmV0aWNpc2lsIjpmYWxzZSwibWVudTEiOjAsIm1lbnUyIjowfQ==', '2019-03-16 23:38:00.506238'),
('bcd69wj3fsx8u7hkz04dqagck5v73xm7', 'Nzg0MTU5ZDAxNTY5ZGUxMWYyNzViNWVkYjhhOThiNDJmYzBmNTcyNDp7ImlkIjoxLCJhZGkiOiJtdXN0YWZhIiwia2FkaSI6Im11c3RhZmEiLCJzaWZyZSI6IjEyMzEyMyIsImxvZyI6dHJ1ZSwic2F0aXNwYXphcmxhbWEiOnRydWUsIm11c3Rlcmlwb3J0Zm95Ijp0cnVlLCJzYW50aXlldGFraXAiOnRydWUsImFyaXphdGFraXAiOnRydWUsInRhcHVzaWNpbCI6dHJ1ZSwiYWJvbmVsaWsiOnRydWUsImhhbGtsYWlsaXNraWxlciI6dHJ1ZSwiYmVsZ2VrYXlkaSI6dHJ1ZSwibWFsaXlldCI6dHJ1ZSwiYmluYWtvbnRyb2wiOnRydWUsInByb2plZWtsZSI6ZmFsc2UsInByb2plZHV6ZW5sZSI6ZmFsc2UsInByb2plc2lsIjpmYWxzZSwiYmxva2VrbGUiOmZhbHNlLCJibG9rZHV6ZW5sZSI6ZmFsc2UsImJsb2tzaWwiOmZhbHNlLCJkYWlyZWVrbGUiOmZhbHNlLCJkYWlyZWR1emVubGUiOmZhbHNlLCJkYWlyZXNpbCI6ZmFsc2UsInNhdGlzZWtsZSI6ZmFsc2UsInNhdGlzZHV6ZW5sZSI6ZmFsc2UsInNhdGlzc2lsIjpmYWxzZSwicG9ydGZveWVrbGUiOmZhbHNlLCJwb3J0Zm95ZHV6ZW5sZSI6ZmFsc2UsInBvcnRmb3lzaWwiOmZhbHNlLCJzYW50aXllZWtsZSI6dHJ1ZSwic2FudGl5ZWR1emVubGUiOnRydWUsInNhbnRpeWVzaWwiOnRydWUsInNhbnRpeWVtYWx6ZW1lZWtsZSI6dHJ1ZSwic2FudGl5ZW1hbHplbWVkdXplbmxlIjp0cnVlLCJzYW50aXllbWFsemVtZXNpbCI6dHJ1ZSwiYXJpemFrYXlkaWVrbGUiOmZhbHNlLCJhcml6YWtheWRpZHV6ZW5sZSI6ZmFsc2UsImFyaXpha2F5ZGlzaWwiOmZhbHNlLCJhcml6YXRha2lwa29udHJvbHUiOnRydWUsInRhcHVzaWNpbGVrbGUiOmZhbHNlLCJ0YXB1c2ljaWxkdXplbmxlIjpmYWxzZSwidGFwdXNpY2lsc2lsIjpmYWxzZSwiYWJvbmVsaWtla2xlIjpmYWxzZSwiYWJvbmVsaWtkdXplbmxlIjpmYWxzZSwiYWJvbmVsaWtzaWwiOmZhbHNlLCJoYWxrbGFpbGlza2lsZXJla2xlIjpmYWxzZSwiaGFsa2xhaWxpc2tpbGVyZHV6ZW5sZSI6ZmFsc2UsImhhbGtsYWlsaXNraWxlcnNpbCI6ZmFsc2UsImJlbGdla2F5ZGlla2xlIjpmYWxzZSwiYmVsZ2VrYXlkaWR1emVubGUiOmZhbHNlLCJiZWxnZWtheWRpc2lsIjpmYWxzZSwibWFsaXlldGVrbGUiOmZhbHNlLCJtYWxpeWV0ZHV6ZW5sZSI6ZmFsc2UsIm1hbGl5ZXRzaWwiOmZhbHNlLCJiaW5ha29udHJvbGVrbGUiOmZhbHNlLCJiaW5ha29udHJvbGR1emVubGUiOmZhbHNlLCJiaW5ha29udHJvbHNpbCI6ZmFsc2UsInlvbmV0aWNpZWtsZSI6ZmFsc2UsInlvbmV0aWNpZHV6ZW5sZSI6ZmFsc2UsInlvbmV0aWNpc2lsIjpmYWxzZSwibWVudTEiOjAsIm1lbnUyIjowfQ==', '2019-02-10 13:38:57.303663'),
('blb0kiatd7wtzdhcxiy4sizz51nytpit', 'OGQyN2VmNzY0NjYzODVkMDIzMTM3MGQwNWM3MzE2YmRlMjRiY2RhZTp7ImFkaSI6Im11c3RhZmEiLCJrYWRpIjoibXVzdGFmYSIsInNpZnJlIjoiMTIzMTIzIiwibG9nIjp0cnVlLCJzYXRpc3BhemFybGFtYSI6dHJ1ZSwibXVzdGVyaXBvcnRmb3kiOnRydWUsInNhbnRpeWV0YWtpcCI6dHJ1ZSwiYXJpemF0YWtpcCI6dHJ1ZSwidGFwdXNpY2lsIjp0cnVlLCJhYm9uZWxpayI6dHJ1ZSwiaGFsa2xhaWxpc2tpbGVyIjp0cnVlLCJiZWxnZWtheWRpIjp0cnVlLCJtYWxpeWV0Ijp0cnVlLCJiaW5ha29udHJvbCI6dHJ1ZSwicHJvamVla2xlIjp0cnVlLCJwcm9qZWR1emVubGUiOnRydWUsInByb2plc2lsIjp0cnVlLCJibG9rZWtsZSI6dHJ1ZSwiYmxva2R1emVubGUiOnRydWUsImJsb2tzaWwiOnRydWUsImRhaXJlZWtsZSI6dHJ1ZSwiZGFpcmVkdXplbmxlIjp0cnVlLCJkYWlyZXNpbCI6dHJ1ZSwic2F0aXNla2xlIjp0cnVlLCJzYXRpc2R1emVubGUiOnRydWUsInNhdGlzc2lsIjp0cnVlLCJwb3J0Zm95ZWtsZSI6dHJ1ZSwicG9ydGZveWR1emVubGUiOnRydWUsInBvcnRmb3lzaWwiOnRydWUsInNhbnRpeWVla2xlIjp0cnVlLCJzYW50aXllZHV6ZW5sZSI6dHJ1ZSwic2FudGl5ZXNpbCI6dHJ1ZSwic2FudGl5ZW1hbHplbWVla2xlIjp0cnVlLCJzYW50aXllbWFsemVtZWR1emVubGUiOnRydWUsInNhbnRpeWVtYWx6ZW1lc2lsIjp0cnVlLCJhcml6YWtheWRpZWtsZSI6dHJ1ZSwiYXJpemFrYXlkaWR1emVubGUiOnRydWUsImFyaXpha2FkaXNpbCI6dHJ1ZSwiYXJpemF0YWtpcGtvbnRyb2x1Ijp0cnVlLCJ0YXB1c2ljaWxla2xlIjp0cnVlLCJ0YXB1c2ljaWxkdXplbmxlIjp0cnVlLCJ0YXB1c2ljaWxzaWwiOnRydWUsImFib25lbGlrZWtsZSI6dHJ1ZSwiYWJvbmVsaWtkdXplbmxlIjp0cnVlLCJhYm9uZWxpa3NpbCI6dHJ1ZSwiaGFsa2xhaWxpc2tpbGVyZWtsZSI6dHJ1ZSwiaGFsa2xhaWxpc2tpbGVyZHV6ZW5sZSI6dHJ1ZSwiaGFsa2xhaWxpc2tpbGVyc2lsIjp0cnVlLCJiZWxnZWtheWRpZWtsZSI6dHJ1ZSwiYmVsZ2VrYXlkaWR1emVubGUiOnRydWUsImJlbGdla2F5ZGlzaWwiOnRydWUsIm1hbGl5ZXRla2xlIjp0cnVlLCJtYWxpeWV0ZHV6ZW5sZSI6dHJ1ZSwibWFsaXlldHNpbCI6dHJ1ZSwiYmluYWtvbnRyb2xla2xlIjp0cnVlLCJiaW5ha29udHJvbGR1emVubGUiOnRydWUsImJpbmFrb250b3Jsc2lsIjp0cnVlLCJ5b25ldGljaWVrbGUiOnRydWUsInlvbmV0aWNpZHV6ZW5sZSI6dHJ1ZSwieW9uZXRpY2lzaWwiOnRydWV9', '2019-01-14 15:33:17.745935'),
('flhfs4y71nd435gx2y8auth693xv832b', 'MDNiNzA1ODczNDRjN2RlYTc1Yzc5NDQ3NjE4MTBjMjRlZjNhZjI2MTp7ImlkIjoxLCJhZGkiOiJtdXN0YWZhIiwia2FkaSI6Im11c3RhZmEiLCJzaWZyZSI6IjEyMzEyMyIsImxvZyI6dHJ1ZSwic2F0aXNwYXphcmxhbWEiOnRydWUsIm11c3Rlcmlwb3J0Zm95Ijp0cnVlLCJzYW50aXlldGFraXAiOnRydWUsImFyaXphdGFraXAiOnRydWUsInRhcHVzaWNpbCI6dHJ1ZSwiYWJvbmVsaWsiOnRydWUsImhhbGtsYWlsaXNraWxlciI6dHJ1ZSwiYmVsZ2VrYXlkaSI6dHJ1ZSwibWFsaXlldCI6dHJ1ZSwiYmluYWtvbnRyb2wiOnRydWUsInByb2plZWtsZSI6dHJ1ZSwicHJvamVkdXplbmxlIjp0cnVlLCJwcm9qZXNpbCI6dHJ1ZSwiYmxva2VrbGUiOnRydWUsImJsb2tkdXplbmxlIjp0cnVlLCJibG9rc2lsIjp0cnVlLCJkYWlyZWVrbGUiOnRydWUsImRhaXJlZHV6ZW5sZSI6dHJ1ZSwiZGFpcmVzaWwiOnRydWUsInNhdGlzZWtsZSI6dHJ1ZSwic2F0aXNkdXplbmxlIjp0cnVlLCJzYXRpc3NpbCI6dHJ1ZSwicG9ydGZveWVrbGUiOnRydWUsInBvcnRmb3lkdXplbmxlIjp0cnVlLCJwb3J0Zm95c2lsIjp0cnVlLCJzYW50aXllZWtsZSI6dHJ1ZSwic2FudGl5ZWR1emVubGUiOnRydWUsInNhbnRpeWVzaWwiOnRydWUsInNhbnRpeWVtYWx6ZW1lZWtsZSI6dHJ1ZSwic2FudGl5ZW1hbHplbWVkdXplbmxlIjp0cnVlLCJzYW50aXllbWFsemVtZXNpbCI6dHJ1ZSwiYXJpemFrYXlkaWVrbGUiOnRydWUsImFyaXpha2F5ZGlkdXplbmxlIjp0cnVlLCJhcml6YWthZGlzaWwiOnRydWUsImFyaXphdGFraXBrb250cm9sdSI6dHJ1ZSwidGFwdXNpY2lsZWtsZSI6dHJ1ZSwidGFwdXNpY2lsZHV6ZW5sZSI6dHJ1ZSwidGFwdXNpY2lsc2lsIjp0cnVlLCJhYm9uZWxpa2VrbGUiOnRydWUsImFib25lbGlrZHV6ZW5sZSI6dHJ1ZSwiYWJvbmVsaWtzaWwiOnRydWUsImhhbGtsYWlsaXNraWxlcmVrbGUiOnRydWUsImhhbGtsYWlsaXNraWxlcmR1emVubGUiOnRydWUsImhhbGtsYWlsaXNraWxlcnNpbCI6dHJ1ZSwiYmVsZ2VrYXlkaWVrbGUiOnRydWUsImJlbGdla2F5ZGlkdXplbmxlIjp0cnVlLCJiZWxnZWtheWRpc2lsIjp0cnVlLCJtYWxpeWV0ZWtsZSI6dHJ1ZSwibWFsaXlldGR1emVubGUiOnRydWUsIm1hbGl5ZXRzaWwiOnRydWUsImJpbmFrb250cm9sZWtsZSI6dHJ1ZSwiYmluYWtvbnRyb2xkdXplbmxlIjp0cnVlLCJiaW5ha29udG9ybHNpbCI6dHJ1ZSwieW9uZXRpY2lla2xlIjp0cnVlLCJ5b25ldGljaWR1emVubGUiOnRydWUsInlvbmV0aWNpc2lsIjp0cnVlfQ==', '2019-02-01 11:50:52.961935'),
('hiqry04nkrlzo5e7vfd7temd16frowrf', 'MjUwZDE2MmQ5YWQ2ODFhYjI2OTc5NzM3YTA5ZDg2MjZjMDg5ZTdmZjp7ImxvZyI6dHJ1ZSwiYWRpIjoibXVzdGFmYSIsImthZGkiOiJtdXN0YWZhIiwic2lmcmUiOiIxMjMxMjMiLCJzYXRpc3BhemFybGFtYSI6dHJ1ZSwibXVzdGVyaXBvcnRmb3kiOnRydWUsInNhbnRpeWV0YWtpcCI6dHJ1ZSwiYXJpemF0YWtpcCI6dHJ1ZSwidGFwdXNpY2lsIjp0cnVlLCJhYm9uZWxpayI6dHJ1ZSwiaGFsa2xhaWxpc2tpbGVyIjp0cnVlLCJiZWxnZWtheWRpIjp0cnVlLCJtYWxpeWV0Ijp0cnVlLCJiaW5ha29udHJvbCI6dHJ1ZSwicHJvamVla2xlIjp0cnVlLCJwcm9qZWR1emVubGUiOnRydWUsInByb2plc2lsIjp0cnVlLCJibG9rZWtsZSI6dHJ1ZSwiYmxva2R1emVubGUiOnRydWUsImJsb2tzaWwiOnRydWUsImRhaXJlZWtsZSI6dHJ1ZSwiZGFpcmVkdXplbmxlIjp0cnVlLCJkYWlyZXNpbCI6dHJ1ZSwic2F0aXNla2xlIjp0cnVlLCJzYXRpc2R1emVubGUiOnRydWUsInNhdGlzc2lsIjp0cnVlLCJwb3J0Zm95ZWtsZSI6dHJ1ZSwicG9ydGZveWR1emVubGUiOnRydWUsInBvcnRmb3lzaWwiOnRydWUsInNhbnRpeWVla2xlIjp0cnVlLCJzYW50aXllZHV6ZW5sZSI6dHJ1ZSwic2FudGl5ZXNpbCI6dHJ1ZSwic2FudGl5ZW1hbHplbWVla2xlIjp0cnVlLCJzYW50aXllbWFsemVtZWR1emVubGUiOnRydWUsInNhbnRpeWVtYWx6ZW1lc2lsIjp0cnVlLCJhcml6YWtheWRpZWtsZSI6dHJ1ZSwiYXJpemFrYXlkaWR1emVubGUiOnRydWUsImFyaXpha2FkaXNpbCI6dHJ1ZSwiYXJpemF0YWtpcGtvbnRyb2x1Ijp0cnVlLCJ0YXB1c2ljaWxla2xlIjp0cnVlLCJ0YXB1c2ljaWxkdXplbmxlIjp0cnVlLCJ0YXB1c2ljaWxzaWwiOnRydWUsImFib25lbGlrZWtsZSI6dHJ1ZSwiYWJvbmVsaWtkdXplbmxlIjp0cnVlLCJhYm9uZWxpa3NpbCI6dHJ1ZSwiaGFsa2xhaWxpc2tpbGVyZWtsZSI6dHJ1ZSwiaGFsa2xhaWxpc2tpbGVyZHV6ZW5sZSI6dHJ1ZSwiaGFsa2xhaWxpc2tpbGVyc2lsIjp0cnVlLCJiZWxnZWtheWRpZWtsZSI6dHJ1ZSwiYmVsZ2VrYXlkaWR1emVubGUiOnRydWUsImJlbGdla2F5ZGlzaWwiOnRydWUsIm1hbGl5ZXRla2xlIjp0cnVlLCJtYWxpeWV0ZHV6ZW5sZSI6dHJ1ZSwibWFsaXlldHNpbCI6dHJ1ZSwiYmluYWtvbnRyb2xla2xlIjp0cnVlLCJiaW5ha29udHJvbGR1emVubGUiOnRydWUsImJpbmFrb250b3Jsc2lsIjp0cnVlLCJ5b25ldGljaWVrbGUiOnRydWUsInlvbmV0aWNpZHV6ZW5sZSI6dHJ1ZSwieW9uZXRpY2lzaWwiOnRydWUsIl9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2ZjY0YjQ1N2UxZjI1MmVlYmRiYjE2OTJhMDU1MDUyOWY0MTk2YjI2In0=', '2019-01-14 18:52:41.127456'),
('mmvi3rph8wbqlxu8h0p1xrtook3wic4r', 'YmY2ZTQzOThjZWZlMDc5MzlmNzMzMDM1ODIyMTIwNTVlOGNkOTNiYjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2ZjY0YjQ1N2UxZjI1MmVlYmRiYjE2OTJhMDU1MDUyOWY0MTk2YjI2IiwiYWRpIjoibXVzdGFmYSIsImthZGkiOiJtdXN0YWZhIiwic2lmcmUiOiIxMjMxMjMiLCJsb2ciOnRydWUsInNhdGlzcGF6YXJsYW1hIjp0cnVlLCJtdXN0ZXJpcG9ydGZveSI6dHJ1ZSwic2FudGl5ZXRha2lwIjp0cnVlLCJhcml6YXRha2lwIjp0cnVlLCJ0YXB1c2ljaWwiOnRydWUsImFib25lbGlrIjp0cnVlLCJoYWxrbGFpbGlza2lsZXIiOnRydWUsImJlbGdla2F5ZGkiOnRydWUsIm1hbGl5ZXQiOnRydWUsImJpbmFrb250cm9sIjp0cnVlLCJwcm9qZWVrbGUiOnRydWUsInByb2plZHV6ZW5sZSI6dHJ1ZSwicHJvamVzaWwiOnRydWUsImJsb2tla2xlIjp0cnVlLCJibG9rZHV6ZW5sZSI6dHJ1ZSwiYmxva3NpbCI6dHJ1ZSwiZGFpcmVla2xlIjp0cnVlLCJkYWlyZWR1emVubGUiOnRydWUsImRhaXJlc2lsIjp0cnVlLCJzYXRpc2VrbGUiOnRydWUsInNhdGlzZHV6ZW5sZSI6dHJ1ZSwic2F0aXNzaWwiOnRydWUsInBvcnRmb3lla2xlIjp0cnVlLCJwb3J0Zm95ZHV6ZW5sZSI6dHJ1ZSwicG9ydGZveXNpbCI6dHJ1ZSwic2FudGl5ZWVrbGUiOnRydWUsInNhbnRpeWVkdXplbmxlIjp0cnVlLCJzYW50aXllc2lsIjp0cnVlLCJzYW50aXllbWFsemVtZWVrbGUiOnRydWUsInNhbnRpeWVtYWx6ZW1lZHV6ZW5sZSI6dHJ1ZSwic2FudGl5ZW1hbHplbWVzaWwiOnRydWUsImFyaXpha2F5ZGlla2xlIjp0cnVlLCJhcml6YWtheWRpZHV6ZW5sZSI6dHJ1ZSwiYXJpemFrYWRpc2lsIjp0cnVlLCJhcml6YXRha2lwa29udHJvbHUiOnRydWUsInRhcHVzaWNpbGVrbGUiOnRydWUsInRhcHVzaWNpbGR1emVubGUiOnRydWUsInRhcHVzaWNpbHNpbCI6dHJ1ZSwiYWJvbmVsaWtla2xlIjp0cnVlLCJhYm9uZWxpa2R1emVubGUiOnRydWUsImFib25lbGlrc2lsIjp0cnVlLCJoYWxrbGFpbGlza2lsZXJla2xlIjp0cnVlLCJoYWxrbGFpbGlza2lsZXJkdXplbmxlIjp0cnVlLCJoYWxrbGFpbGlza2lsZXJzaWwiOnRydWUsImJlbGdla2F5ZGlla2xlIjp0cnVlLCJiZWxnZWtheWRpZHV6ZW5sZSI6dHJ1ZSwiYmVsZ2VrYXlkaXNpbCI6dHJ1ZSwibWFsaXlldGVrbGUiOnRydWUsIm1hbGl5ZXRkdXplbmxlIjp0cnVlLCJtYWxpeWV0c2lsIjp0cnVlLCJiaW5ha29udHJvbGVrbGUiOnRydWUsImJpbmFrb250cm9sZHV6ZW5sZSI6dHJ1ZSwiYmluYWtvbnRvcmxzaWwiOnRydWUsInlvbmV0aWNpZWtsZSI6dHJ1ZSwieW9uZXRpY2lkdXplbmxlIjp0cnVlLCJ5b25ldGljaXNpbCI6dHJ1ZX0=', '2019-01-24 22:14:00.677918'),
('n0xzryq602rptukeo24opry127z182c5', 'YzEzNzE2NzIzYjZiNGIyODBlOGU2MDQ2YzQxNWQwMzM4OTY2MTY5Nzp7ImlkIjoxLCJhZGkiOiJtdXN0YWZhIiwia2FkaSI6Im11c3RhZmEiLCJzaWZyZSI6IjEyMyIsImxvZyI6dHJ1ZSwic2F0aXNwYXphcmxhbWEiOnRydWUsIm11c3Rlcmlwb3J0Zm95Ijp0cnVlLCJzYW50aXlldGFraXAiOnRydWUsImFyaXphdGFraXAiOnRydWUsInRhcHVzaWNpbCI6dHJ1ZSwiYWJvbmVsaWsiOnRydWUsImhhbGtsYWlsaXNraWxlciI6dHJ1ZSwiYmVsZ2VrYXlkaSI6dHJ1ZSwibWFsaXlldCI6dHJ1ZSwiYmluYWtvbnRyb2wiOnRydWUsInByb2plZWtsZSI6ZmFsc2UsInByb2plZHV6ZW5sZSI6ZmFsc2UsInByb2plc2lsIjpmYWxzZSwiYmxva2VrbGUiOmZhbHNlLCJibG9rZHV6ZW5sZSI6ZmFsc2UsImJsb2tzaWwiOmZhbHNlLCJkYWlyZWVrbGUiOmZhbHNlLCJkYWlyZWR1emVubGUiOmZhbHNlLCJkYWlyZXNpbCI6ZmFsc2UsInNhdGlzZWtsZSI6ZmFsc2UsInNhdGlzZHV6ZW5sZSI6ZmFsc2UsInNhdGlzc2lsIjpmYWxzZSwicG9ydGZveWVrbGUiOmZhbHNlLCJwb3J0Zm95ZHV6ZW5sZSI6ZmFsc2UsInBvcnRmb3lzaWwiOmZhbHNlLCJzYW50aXllZWtsZSI6dHJ1ZSwic2FudGl5ZWR1emVubGUiOnRydWUsInNhbnRpeWVzaWwiOnRydWUsInNhbnRpeWVtYWx6ZW1lZWtsZSI6dHJ1ZSwic2FudGl5ZW1hbHplbWVkdXplbmxlIjp0cnVlLCJzYW50aXllbWFsemVtZXNpbCI6dHJ1ZSwiYXJpemFrYXlkaWVrbGUiOmZhbHNlLCJhcml6YWtheWRpZHV6ZW5sZSI6ZmFsc2UsImFyaXpha2F5ZGlzaWwiOmZhbHNlLCJhcml6YXRha2lwa29udHJvbHUiOnRydWUsInRhcHVzaWNpbGVrbGUiOmZhbHNlLCJ0YXB1c2ljaWxkdXplbmxlIjpmYWxzZSwidGFwdXNpY2lsc2lsIjpmYWxzZSwiYWJvbmVsaWtla2xlIjpmYWxzZSwiYWJvbmVsaWtkdXplbmxlIjpmYWxzZSwiYWJvbmVsaWtzaWwiOmZhbHNlLCJoYWxrbGFpbGlza2lsZXJla2xlIjpmYWxzZSwiaGFsa2xhaWxpc2tpbGVyZHV6ZW5sZSI6ZmFsc2UsImhhbGtsYWlsaXNraWxlcnNpbCI6ZmFsc2UsImJlbGdla2F5ZGlla2xlIjpmYWxzZSwiYmVsZ2VrYXlkaWR1emVubGUiOmZhbHNlLCJiZWxnZWtheWRpc2lsIjpmYWxzZSwibWFsaXlldGVrbGUiOmZhbHNlLCJtYWxpeWV0ZHV6ZW5sZSI6ZmFsc2UsIm1hbGl5ZXRzaWwiOmZhbHNlLCJiaW5ha29udHJvbGVrbGUiOmZhbHNlLCJiaW5ha29udHJvbGR1emVubGUiOmZhbHNlLCJiaW5ha29udHJvbHNpbCI6ZmFsc2UsInlvbmV0aWNpZWtsZSI6ZmFsc2UsInlvbmV0aWNpZHV6ZW5sZSI6ZmFsc2UsInlvbmV0aWNpc2lsIjpmYWxzZSwibWVudTEiOjAsIm1lbnUyIjowfQ==', '2019-03-06 13:10:14.669240'),
('nakr0236k90ykgyrddqaqof5blmqoyrq', 'MDNiNzA1ODczNDRjN2RlYTc1Yzc5NDQ3NjE4MTBjMjRlZjNhZjI2MTp7ImlkIjoxLCJhZGkiOiJtdXN0YWZhIiwia2FkaSI6Im11c3RhZmEiLCJzaWZyZSI6IjEyMzEyMyIsImxvZyI6dHJ1ZSwic2F0aXNwYXphcmxhbWEiOnRydWUsIm11c3Rlcmlwb3J0Zm95Ijp0cnVlLCJzYW50aXlldGFraXAiOnRydWUsImFyaXphdGFraXAiOnRydWUsInRhcHVzaWNpbCI6dHJ1ZSwiYWJvbmVsaWsiOnRydWUsImhhbGtsYWlsaXNraWxlciI6dHJ1ZSwiYmVsZ2VrYXlkaSI6dHJ1ZSwibWFsaXlldCI6dHJ1ZSwiYmluYWtvbnRyb2wiOnRydWUsInByb2plZWtsZSI6dHJ1ZSwicHJvamVkdXplbmxlIjp0cnVlLCJwcm9qZXNpbCI6dHJ1ZSwiYmxva2VrbGUiOnRydWUsImJsb2tkdXplbmxlIjp0cnVlLCJibG9rc2lsIjp0cnVlLCJkYWlyZWVrbGUiOnRydWUsImRhaXJlZHV6ZW5sZSI6dHJ1ZSwiZGFpcmVzaWwiOnRydWUsInNhdGlzZWtsZSI6dHJ1ZSwic2F0aXNkdXplbmxlIjp0cnVlLCJzYXRpc3NpbCI6dHJ1ZSwicG9ydGZveWVrbGUiOnRydWUsInBvcnRmb3lkdXplbmxlIjp0cnVlLCJwb3J0Zm95c2lsIjp0cnVlLCJzYW50aXllZWtsZSI6dHJ1ZSwic2FudGl5ZWR1emVubGUiOnRydWUsInNhbnRpeWVzaWwiOnRydWUsInNhbnRpeWVtYWx6ZW1lZWtsZSI6dHJ1ZSwic2FudGl5ZW1hbHplbWVkdXplbmxlIjp0cnVlLCJzYW50aXllbWFsemVtZXNpbCI6dHJ1ZSwiYXJpemFrYXlkaWVrbGUiOnRydWUsImFyaXpha2F5ZGlkdXplbmxlIjp0cnVlLCJhcml6YWthZGlzaWwiOnRydWUsImFyaXphdGFraXBrb250cm9sdSI6dHJ1ZSwidGFwdXNpY2lsZWtsZSI6dHJ1ZSwidGFwdXNpY2lsZHV6ZW5sZSI6dHJ1ZSwidGFwdXNpY2lsc2lsIjp0cnVlLCJhYm9uZWxpa2VrbGUiOnRydWUsImFib25lbGlrZHV6ZW5sZSI6dHJ1ZSwiYWJvbmVsaWtzaWwiOnRydWUsImhhbGtsYWlsaXNraWxlcmVrbGUiOnRydWUsImhhbGtsYWlsaXNraWxlcmR1emVubGUiOnRydWUsImhhbGtsYWlsaXNraWxlcnNpbCI6dHJ1ZSwiYmVsZ2VrYXlkaWVrbGUiOnRydWUsImJlbGdla2F5ZGlkdXplbmxlIjp0cnVlLCJiZWxnZWtheWRpc2lsIjp0cnVlLCJtYWxpeWV0ZWtsZSI6dHJ1ZSwibWFsaXlldGR1emVubGUiOnRydWUsIm1hbGl5ZXRzaWwiOnRydWUsImJpbmFrb250cm9sZWtsZSI6dHJ1ZSwiYmluYWtvbnRyb2xkdXplbmxlIjp0cnVlLCJiaW5ha29udG9ybHNpbCI6dHJ1ZSwieW9uZXRpY2lla2xlIjp0cnVlLCJ5b25ldGljaWR1emVubGUiOnRydWUsInlvbmV0aWNpc2lsIjp0cnVlfQ==', '2019-01-28 10:11:56.127291'),
('p02766olb3dustsxtb4yfvgypr396o0v', 'OGQyN2VmNzY0NjYzODVkMDIzMTM3MGQwNWM3MzE2YmRlMjRiY2RhZTp7ImFkaSI6Im11c3RhZmEiLCJrYWRpIjoibXVzdGFmYSIsInNpZnJlIjoiMTIzMTIzIiwibG9nIjp0cnVlLCJzYXRpc3BhemFybGFtYSI6dHJ1ZSwibXVzdGVyaXBvcnRmb3kiOnRydWUsInNhbnRpeWV0YWtpcCI6dHJ1ZSwiYXJpemF0YWtpcCI6dHJ1ZSwidGFwdXNpY2lsIjp0cnVlLCJhYm9uZWxpayI6dHJ1ZSwiaGFsa2xhaWxpc2tpbGVyIjp0cnVlLCJiZWxnZWtheWRpIjp0cnVlLCJtYWxpeWV0Ijp0cnVlLCJiaW5ha29udHJvbCI6dHJ1ZSwicHJvamVla2xlIjp0cnVlLCJwcm9qZWR1emVubGUiOnRydWUsInByb2plc2lsIjp0cnVlLCJibG9rZWtsZSI6dHJ1ZSwiYmxva2R1emVubGUiOnRydWUsImJsb2tzaWwiOnRydWUsImRhaXJlZWtsZSI6dHJ1ZSwiZGFpcmVkdXplbmxlIjp0cnVlLCJkYWlyZXNpbCI6dHJ1ZSwic2F0aXNla2xlIjp0cnVlLCJzYXRpc2R1emVubGUiOnRydWUsInNhdGlzc2lsIjp0cnVlLCJwb3J0Zm95ZWtsZSI6dHJ1ZSwicG9ydGZveWR1emVubGUiOnRydWUsInBvcnRmb3lzaWwiOnRydWUsInNhbnRpeWVla2xlIjp0cnVlLCJzYW50aXllZHV6ZW5sZSI6dHJ1ZSwic2FudGl5ZXNpbCI6dHJ1ZSwic2FudGl5ZW1hbHplbWVla2xlIjp0cnVlLCJzYW50aXllbWFsemVtZWR1emVubGUiOnRydWUsInNhbnRpeWVtYWx6ZW1lc2lsIjp0cnVlLCJhcml6YWtheWRpZWtsZSI6dHJ1ZSwiYXJpemFrYXlkaWR1emVubGUiOnRydWUsImFyaXpha2FkaXNpbCI6dHJ1ZSwiYXJpemF0YWtpcGtvbnRyb2x1Ijp0cnVlLCJ0YXB1c2ljaWxla2xlIjp0cnVlLCJ0YXB1c2ljaWxkdXplbmxlIjp0cnVlLCJ0YXB1c2ljaWxzaWwiOnRydWUsImFib25lbGlrZWtsZSI6dHJ1ZSwiYWJvbmVsaWtkdXplbmxlIjp0cnVlLCJhYm9uZWxpa3NpbCI6dHJ1ZSwiaGFsa2xhaWxpc2tpbGVyZWtsZSI6dHJ1ZSwiaGFsa2xhaWxpc2tpbGVyZHV6ZW5sZSI6dHJ1ZSwiaGFsa2xhaWxpc2tpbGVyc2lsIjp0cnVlLCJiZWxnZWtheWRpZWtsZSI6dHJ1ZSwiYmVsZ2VrYXlkaWR1emVubGUiOnRydWUsImJlbGdla2F5ZGlzaWwiOnRydWUsIm1hbGl5ZXRla2xlIjp0cnVlLCJtYWxpeWV0ZHV6ZW5sZSI6dHJ1ZSwibWFsaXlldHNpbCI6dHJ1ZSwiYmluYWtvbnRyb2xla2xlIjp0cnVlLCJiaW5ha29udHJvbGR1emVubGUiOnRydWUsImJpbmFrb250b3Jsc2lsIjp0cnVlLCJ5b25ldGljaWVrbGUiOnRydWUsInlvbmV0aWNpZHV6ZW5sZSI6dHJ1ZSwieW9uZXRpY2lzaWwiOnRydWV9', '2019-01-14 14:32:20.489830'),
('pflouhlfucm0rwhsph8ql34gs2fexlk3', 'OGQyN2VmNzY0NjYzODVkMDIzMTM3MGQwNWM3MzE2YmRlMjRiY2RhZTp7ImFkaSI6Im11c3RhZmEiLCJrYWRpIjoibXVzdGFmYSIsInNpZnJlIjoiMTIzMTIzIiwibG9nIjp0cnVlLCJzYXRpc3BhemFybGFtYSI6dHJ1ZSwibXVzdGVyaXBvcnRmb3kiOnRydWUsInNhbnRpeWV0YWtpcCI6dHJ1ZSwiYXJpemF0YWtpcCI6dHJ1ZSwidGFwdXNpY2lsIjp0cnVlLCJhYm9uZWxpayI6dHJ1ZSwiaGFsa2xhaWxpc2tpbGVyIjp0cnVlLCJiZWxnZWtheWRpIjp0cnVlLCJtYWxpeWV0Ijp0cnVlLCJiaW5ha29udHJvbCI6dHJ1ZSwicHJvamVla2xlIjp0cnVlLCJwcm9qZWR1emVubGUiOnRydWUsInByb2plc2lsIjp0cnVlLCJibG9rZWtsZSI6dHJ1ZSwiYmxva2R1emVubGUiOnRydWUsImJsb2tzaWwiOnRydWUsImRhaXJlZWtsZSI6dHJ1ZSwiZGFpcmVkdXplbmxlIjp0cnVlLCJkYWlyZXNpbCI6dHJ1ZSwic2F0aXNla2xlIjp0cnVlLCJzYXRpc2R1emVubGUiOnRydWUsInNhdGlzc2lsIjp0cnVlLCJwb3J0Zm95ZWtsZSI6dHJ1ZSwicG9ydGZveWR1emVubGUiOnRydWUsInBvcnRmb3lzaWwiOnRydWUsInNhbnRpeWVla2xlIjp0cnVlLCJzYW50aXllZHV6ZW5sZSI6dHJ1ZSwic2FudGl5ZXNpbCI6dHJ1ZSwic2FudGl5ZW1hbHplbWVla2xlIjp0cnVlLCJzYW50aXllbWFsemVtZWR1emVubGUiOnRydWUsInNhbnRpeWVtYWx6ZW1lc2lsIjp0cnVlLCJhcml6YWtheWRpZWtsZSI6dHJ1ZSwiYXJpemFrYXlkaWR1emVubGUiOnRydWUsImFyaXpha2FkaXNpbCI6dHJ1ZSwiYXJpemF0YWtpcGtvbnRyb2x1Ijp0cnVlLCJ0YXB1c2ljaWxla2xlIjp0cnVlLCJ0YXB1c2ljaWxkdXplbmxlIjp0cnVlLCJ0YXB1c2ljaWxzaWwiOnRydWUsImFib25lbGlrZWtsZSI6dHJ1ZSwiYWJvbmVsaWtkdXplbmxlIjp0cnVlLCJhYm9uZWxpa3NpbCI6dHJ1ZSwiaGFsa2xhaWxpc2tpbGVyZWtsZSI6dHJ1ZSwiaGFsa2xhaWxpc2tpbGVyZHV6ZW5sZSI6dHJ1ZSwiaGFsa2xhaWxpc2tpbGVyc2lsIjp0cnVlLCJiZWxnZWtheWRpZWtsZSI6dHJ1ZSwiYmVsZ2VrYXlkaWR1emVubGUiOnRydWUsImJlbGdla2F5ZGlzaWwiOnRydWUsIm1hbGl5ZXRla2xlIjp0cnVlLCJtYWxpeWV0ZHV6ZW5sZSI6dHJ1ZSwibWFsaXlldHNpbCI6dHJ1ZSwiYmluYWtvbnRyb2xla2xlIjp0cnVlLCJiaW5ha29udHJvbGR1emVubGUiOnRydWUsImJpbmFrb250b3Jsc2lsIjp0cnVlLCJ5b25ldGljaWVrbGUiOnRydWUsInlvbmV0aWNpZHV6ZW5sZSI6dHJ1ZSwieW9uZXRpY2lzaWwiOnRydWV9', '2019-01-09 00:21:58.490773'),
('prr7xdaj7mijtgmsyon1qzrphcy5pmi8', 'N2YzZjM5ODIxYjRjY2RiZDg0Y2FkZjVmMjdiYzE2NTFmNTQ5MGFiZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2ZjY0YjQ1N2UxZjI1MmVlYmRiYjE2OTJhMDU1MDUyOWY0MTk2YjI2Iiwia2FkaSI6Im11c3RhZmEiLCJsb2ciOnRydWUsInNhdGlzcGF6YXJsYW1hIjp0cnVlLCJtdXN0ZXJpcG9ydGZveSI6dHJ1ZSwic2FudGl5ZXRha2lwIjp0cnVlLCJhcml6YXRha2lwIjp0cnVlLCJ0YXB1c2ljaWwiOnRydWUsImFib25lbGlrIjp0cnVlLCJoYWxrbGFpbGlza2lsZXIiOnRydWUsImJlbGdla2F5ZGkiOnRydWUsIm1hbGl5ZXQiOnRydWUsImJpbmFrb250cm9sIjp0cnVlLCJwcm9qZWVrbGUiOnRydWUsInByb2plZHV6ZW5sZSI6dHJ1ZSwicHJvamVzaWwiOnRydWUsImJsb2tla2xlIjp0cnVlLCJibG9rZHV6ZW5sZSI6dHJ1ZSwiYmxva3NpbCI6dHJ1ZSwiZGFpcmVla2xlIjp0cnVlLCJkYWlyZWR1emVubGUiOnRydWUsImRhaXJlc2lsIjp0cnVlLCJzYXRpc2VrbGUiOnRydWUsInNhdGlzZHV6ZW5sZSI6dHJ1ZSwic2F0aXNzaWwiOnRydWUsInBvcnRmb3lla2xlIjp0cnVlLCJwb3J0Zm95ZHV6ZW5sZSI6dHJ1ZSwicG9ydGZveXNpbCI6dHJ1ZSwic2FudGl5ZWVrbGUiOnRydWUsInNhbnRpeWVkdXplbmxlIjp0cnVlLCJzYW50aXllc2lsIjp0cnVlLCJzYW50aXllbWFsemVtZWVrbGUiOnRydWUsInNhbnRpeWVtYWx6ZW1lZHV6ZW5sZSI6dHJ1ZSwic2FudGl5ZW1hbHplbWVzaWwiOnRydWUsImFyaXpha2F5ZGlla2xlIjp0cnVlLCJhcml6YWtheWRpZHV6ZW5sZSI6dHJ1ZSwiYXJpemFrYWRpc2lsIjp0cnVlLCJhcml6YXRha2lwa29udHJvbHUiOnRydWUsInRhcHVzaWNpbGVrbGUiOnRydWUsInRhcHVzaWNpbGR1emVubGUiOnRydWUsInRhcHVzaWNpbHNpbCI6dHJ1ZSwiYWJvbmVsaWtla2xlIjp0cnVlLCJhYm9uZWxpa2R1emVubGUiOnRydWUsImFib25lbGlrc2lsIjp0cnVlLCJoYWxrbGFpbGlza2lsZXJla2xlIjp0cnVlLCJoYWxrbGFpbGlza2lsZXJkdXplbmxlIjp0cnVlLCJoYWxrbGFpbGlza2lsZXJzaWwiOnRydWUsImJlbGdla2F5ZGlla2xlIjp0cnVlLCJiZWxnZWtheWRpZHV6ZW5sZSI6dHJ1ZSwiYmVsZ2VrYXlkaXNpbCI6dHJ1ZSwibWFsaXlldGVrbGUiOnRydWUsIm1hbGl5ZXRkdXplbmxlIjp0cnVlLCJtYWxpeWV0c2lsIjp0cnVlLCJiaW5ha29udHJvbGVrbGUiOnRydWUsImJpbmFrb250cm9sZHV6ZW5sZSI6dHJ1ZSwiYmluYWtvbnRvcmxzaWwiOnRydWUsInlvbmV0aWNpZWtsZSI6dHJ1ZSwieW9uZXRpY2lkdXplbmxlIjp0cnVlLCJ5b25ldGljaXNpbCI6dHJ1ZSwiZ2lyaXMiOiIyMDE4LTEyLTI2IDAwOjAwOjAwKzAwOjAwIiwiYWRpIjoibXVzdGFmYSIsInNpZnJlIjoiMTIzMTIzIn0=', '2019-01-09 00:09:19.771835'),
('pvichigga5pi2yxjjzj0jmve0l4rk26x', 'NWYzZmJkM2JlOTM3YmY0OGYyZmU3MWFjNjFlODk2M2UzYTQ2MWZlNjp7ImlkIjoxLCJhZGkiOiJtdXN0YWZhIiwia2FkaSI6Im11c3RhZmEiLCJzaWZyZSI6IjEyMyIsImxvZyI6dHJ1ZSwic2F0aXNwYXphcmxhbWEiOnRydWUsIm11c3Rlcmlwb3J0Zm95Ijp0cnVlLCJzYW50aXlldGFraXAiOnRydWUsImFyaXphdGFraXAiOnRydWUsInRhcHVzaWNpbCI6dHJ1ZSwiYWJvbmVsaWsiOnRydWUsImhhbGtsYWlsaXNraWxlciI6dHJ1ZSwiYmVsZ2VrYXlkaSI6dHJ1ZSwibWFsaXlldCI6dHJ1ZSwiYmluYWtvbnRyb2wiOnRydWUsInByb2plZWtsZSI6ZmFsc2UsInByb2plZHV6ZW5sZSI6ZmFsc2UsInByb2plc2lsIjpmYWxzZSwiYmxva2VrbGUiOmZhbHNlLCJibG9rZHV6ZW5sZSI6ZmFsc2UsImJsb2tzaWwiOmZhbHNlLCJkYWlyZWVrbGUiOmZhbHNlLCJkYWlyZWR1emVubGUiOmZhbHNlLCJkYWlyZXNpbCI6ZmFsc2UsInNhdGlzZWtsZSI6ZmFsc2UsInNhdGlzZHV6ZW5sZSI6ZmFsc2UsInNhdGlzc2lsIjpmYWxzZSwicG9ydGZveWVrbGUiOmZhbHNlLCJwb3J0Zm95ZHV6ZW5sZSI6ZmFsc2UsInBvcnRmb3lzaWwiOmZhbHNlLCJzYW50aXllZWtsZSI6dHJ1ZSwic2FudGl5ZWR1emVubGUiOnRydWUsInNhbnRpeWVzaWwiOnRydWUsInNhbnRpeWVtYWx6ZW1lZWtsZSI6dHJ1ZSwic2FudGl5ZW1hbHplbWVkdXplbmxlIjp0cnVlLCJzYW50aXllbWFsemVtZXNpbCI6dHJ1ZSwiYXJpemFrYXlkaWVrbGUiOmZhbHNlLCJhcml6YWtheWRpZHV6ZW5sZSI6ZmFsc2UsImFyaXpha2F5ZGlzaWwiOmZhbHNlLCJhcml6YXRha2lwa29udHJvbHUiOnRydWUsInRhcHVzaWNpbGVrbGUiOmZhbHNlLCJ0YXB1c2ljaWxkdXplbmxlIjpmYWxzZSwidGFwdXNpY2lsc2lsIjpmYWxzZSwiYWJvbmVsaWtla2xlIjpmYWxzZSwiYWJvbmVsaWtkdXplbmxlIjpmYWxzZSwiYWJvbmVsaWtzaWwiOmZhbHNlLCJoYWxrbGFpbGlza2lsZXJla2xlIjpmYWxzZSwiaGFsa2xhaWxpc2tpbGVyZHV6ZW5sZSI6ZmFsc2UsImhhbGtsYWlsaXNraWxlcnNpbCI6ZmFsc2UsImJlbGdla2F5ZGlla2xlIjpmYWxzZSwiYmVsZ2VrYXlkaWR1emVubGUiOmZhbHNlLCJiZWxnZWtheWRpc2lsIjpmYWxzZSwibWFsaXlldGVrbGUiOmZhbHNlLCJtYWxpeWV0ZHV6ZW5sZSI6ZmFsc2UsIm1hbGl5ZXRzaWwiOmZhbHNlLCJiaW5ha29udHJvbGVrbGUiOmZhbHNlLCJiaW5ha29udHJvbGR1emVubGUiOmZhbHNlLCJiaW5ha29udHJvbHNpbCI6ZmFsc2UsInlvbmV0aWNpZWtsZSI6ZmFsc2UsInlvbmV0aWNpZHV6ZW5sZSI6ZmFsc2UsInlvbmV0aWNpc2lsIjpmYWxzZSwibWVudTEiOjEsIm1lbnUyIjowfQ==', '2019-02-19 22:18:37.325048'),
('sodtbhumvcmlcd354y8fgiyrn9g9vqeh', 'NWJmNGNhOWE4NDcyMDE0ZTU1YjRkZjY5NmFmZjdhZjMzZjg1ODI2Nzp7ImlkIjoxLCJhZGkiOiJtdXN0YWZhIiwia2FkaSI6Im11c3RhZmEiLCJzaWZyZSI6IjEyMzEyMyIsImxvZyI6dHJ1ZSwic2F0aXNwYXphcmxhbWEiOnRydWUsIm11c3Rlcmlwb3J0Zm95Ijp0cnVlLCJzYW50aXlldGFraXAiOnRydWUsImFyaXphdGFraXAiOnRydWUsInRhcHVzaWNpbCI6dHJ1ZSwiYWJvbmVsaWsiOnRydWUsImhhbGtsYWlsaXNraWxlciI6dHJ1ZSwiYmVsZ2VrYXlkaSI6dHJ1ZSwibWFsaXlldCI6dHJ1ZSwiYmluYWtvbnRyb2wiOnRydWUsInByb2plZWtsZSI6dHJ1ZSwicHJvamVkdXplbmxlIjp0cnVlLCJwcm9qZXNpbCI6dHJ1ZSwiYmxva2VrbGUiOnRydWUsImJsb2tkdXplbmxlIjp0cnVlLCJibG9rc2lsIjp0cnVlLCJkYWlyZWVrbGUiOnRydWUsImRhaXJlZHV6ZW5sZSI6dHJ1ZSwiZGFpcmVzaWwiOnRydWUsInNhdGlzZWtsZSI6dHJ1ZSwic2F0aXNkdXplbmxlIjp0cnVlLCJzYXRpc3NpbCI6dHJ1ZSwicG9ydGZveWVrbGUiOnRydWUsInBvcnRmb3lkdXplbmxlIjp0cnVlLCJwb3J0Zm95c2lsIjp0cnVlLCJzYW50aXllZWtsZSI6dHJ1ZSwic2FudGl5ZWR1emVubGUiOnRydWUsInNhbnRpeWVzaWwiOnRydWUsInNhbnRpeWVtYWx6ZW1lZWtsZSI6dHJ1ZSwic2FudGl5ZW1hbHplbWVkdXplbmxlIjp0cnVlLCJzYW50aXllbWFsemVtZXNpbCI6dHJ1ZSwiYXJpemFrYXlkaWVrbGUiOnRydWUsImFyaXpha2F5ZGlkdXplbmxlIjp0cnVlLCJhcml6YWthZGlzaWwiOnRydWUsImFyaXphdGFraXBrb250cm9sdSI6dHJ1ZSwidGFwdXNpY2lsZWtsZSI6dHJ1ZSwidGFwdXNpY2lsZHV6ZW5sZSI6dHJ1ZSwidGFwdXNpY2lsc2lsIjp0cnVlLCJhYm9uZWxpa2VrbGUiOnRydWUsImFib25lbGlrZHV6ZW5sZSI6dHJ1ZSwiYWJvbmVsaWtzaWwiOnRydWUsImhhbGtsYWlsaXNraWxlcmVrbGUiOnRydWUsImhhbGtsYWlsaXNraWxlcmR1emVubGUiOnRydWUsImhhbGtsYWlsaXNraWxlcnNpbCI6dHJ1ZSwiYmVsZ2VrYXlkaWVrbGUiOnRydWUsImJlbGdla2F5ZGlkdXplbmxlIjp0cnVlLCJiZWxnZWtheWRpc2lsIjp0cnVlLCJtYWxpeWV0ZWtsZSI6dHJ1ZSwibWFsaXlldGR1emVubGUiOnRydWUsIm1hbGl5ZXRzaWwiOnRydWUsImJpbmFrb250cm9sZWtsZSI6dHJ1ZSwiYmluYWtvbnRyb2xkdXplbmxlIjp0cnVlLCJiaW5ha29udG9ybHNpbCI6dHJ1ZSwieW9uZXRpY2lla2xlIjp0cnVlLCJ5b25ldGljaWR1emVubGUiOnRydWUsInlvbmV0aWNpc2lsIjp0cnVlLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNmY2NGI0NTdlMWYyNTJlZWJkYmIxNjkyYTA1NTA1MjlmNDE5NmIyNiIsImFyaXpha2F5ZGlzaWwiOnRydWUsImJpbmFrb250cm9sc2lsIjp0cnVlfQ==', '2019-02-10 09:57:19.550996'),
('tauekehdxqh91cy4z7q4jpnhsm70p3br', 'MThmMjJiMGRkMDBiYWYwMGFjMmRjNGFlMDlhYWFiODI2NTE4YmVlNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2ZjY0YjQ1N2UxZjI1MmVlYmRiYjE2OTJhMDU1MDUyOWY0MTk2YjI2In0=', '2018-12-14 20:47:43.935602'),
('ts9m9c0h3tf32b5jg40at1s58klzdjj3', 'NGNjNGJlZmJhYTNhN2ViNzU4MTEyZTdhYjUzMTkwMWE4MmIxZTEwODp7ImlkIjoxLCJhZGkiOiJtdXN0YWZhIiwia2FkaSI6Im11c3RhZmEiLCJzaWZyZSI6IjEyMzEyMyIsImxvZyI6dHJ1ZSwic2F0aXNwYXphcmxhbWEiOnRydWUsIm11c3Rlcmlwb3J0Zm95Ijp0cnVlLCJzYW50aXlldGFraXAiOnRydWUsImFyaXphdGFraXAiOnRydWUsInRhcHVzaWNpbCI6dHJ1ZSwiYWJvbmVsaWsiOnRydWUsImhhbGtsYWlsaXNraWxlciI6dHJ1ZSwiYmVsZ2VrYXlkaSI6dHJ1ZSwibWFsaXlldCI6dHJ1ZSwiYmluYWtvbnRyb2wiOnRydWUsInByb2plZWtsZSI6dHJ1ZSwicHJvamVkdXplbmxlIjp0cnVlLCJwcm9qZXNpbCI6dHJ1ZSwiYmxva2VrbGUiOnRydWUsImJsb2tkdXplbmxlIjp0cnVlLCJibG9rc2lsIjp0cnVlLCJkYWlyZWVrbGUiOnRydWUsImRhaXJlZHV6ZW5sZSI6dHJ1ZSwiZGFpcmVzaWwiOnRydWUsInNhdGlzZWtsZSI6dHJ1ZSwic2F0aXNkdXplbmxlIjp0cnVlLCJzYXRpc3NpbCI6dHJ1ZSwicG9ydGZveWVrbGUiOnRydWUsInBvcnRmb3lkdXplbmxlIjp0cnVlLCJwb3J0Zm95c2lsIjp0cnVlLCJzYW50aXllZWtsZSI6dHJ1ZSwic2FudGl5ZWR1emVubGUiOnRydWUsInNhbnRpeWVzaWwiOnRydWUsInNhbnRpeWVtYWx6ZW1lZWtsZSI6dHJ1ZSwic2FudGl5ZW1hbHplbWVkdXplbmxlIjp0cnVlLCJzYW50aXllbWFsemVtZXNpbCI6dHJ1ZSwiYXJpemFrYXlkaWVrbGUiOnRydWUsImFyaXpha2F5ZGlkdXplbmxlIjp0cnVlLCJhcml6YWthZGlzaWwiOnRydWUsImFyaXphdGFraXBrb250cm9sdSI6dHJ1ZSwidGFwdXNpY2lsZWtsZSI6dHJ1ZSwidGFwdXNpY2lsZHV6ZW5sZSI6dHJ1ZSwidGFwdXNpY2lsc2lsIjp0cnVlLCJhYm9uZWxpa2VrbGUiOnRydWUsImFib25lbGlrZHV6ZW5sZSI6dHJ1ZSwiYWJvbmVsaWtzaWwiOnRydWUsImhhbGtsYWlsaXNraWxlcmVrbGUiOnRydWUsImhhbGtsYWlsaXNraWxlcmR1emVubGUiOnRydWUsImhhbGtsYWlsaXNraWxlcnNpbCI6dHJ1ZSwiYmVsZ2VrYXlkaWVrbGUiOnRydWUsImJlbGdla2F5ZGlkdXplbmxlIjp0cnVlLCJiZWxnZWtheWRpc2lsIjp0cnVlLCJtYWxpeWV0ZWtsZSI6dHJ1ZSwibWFsaXlldGR1emVubGUiOnRydWUsIm1hbGl5ZXRzaWwiOnRydWUsImJpbmFrb250cm9sZWtsZSI6dHJ1ZSwiYmluYWtvbnRyb2xkdXplbmxlIjp0cnVlLCJiaW5ha29udG9ybHNpbCI6dHJ1ZSwieW9uZXRpY2lla2xlIjp0cnVlLCJ5b25ldGljaWR1emVubGUiOnRydWUsInlvbmV0aWNpc2lsIjp0cnVlLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNmY2NGI0NTdlMWYyNTJlZWJkYmIxNjkyYTA1NTA1MjlmNDE5NmIyNiJ9', '2019-02-01 12:00:22.707715'),
('v4mtlrmcse4063or4zxolwkqelws670m', 'MDNiNzA1ODczNDRjN2RlYTc1Yzc5NDQ3NjE4MTBjMjRlZjNhZjI2MTp7ImlkIjoxLCJhZGkiOiJtdXN0YWZhIiwia2FkaSI6Im11c3RhZmEiLCJzaWZyZSI6IjEyMzEyMyIsImxvZyI6dHJ1ZSwic2F0aXNwYXphcmxhbWEiOnRydWUsIm11c3Rlcmlwb3J0Zm95Ijp0cnVlLCJzYW50aXlldGFraXAiOnRydWUsImFyaXphdGFraXAiOnRydWUsInRhcHVzaWNpbCI6dHJ1ZSwiYWJvbmVsaWsiOnRydWUsImhhbGtsYWlsaXNraWxlciI6dHJ1ZSwiYmVsZ2VrYXlkaSI6dHJ1ZSwibWFsaXlldCI6dHJ1ZSwiYmluYWtvbnRyb2wiOnRydWUsInByb2plZWtsZSI6dHJ1ZSwicHJvamVkdXplbmxlIjp0cnVlLCJwcm9qZXNpbCI6dHJ1ZSwiYmxva2VrbGUiOnRydWUsImJsb2tkdXplbmxlIjp0cnVlLCJibG9rc2lsIjp0cnVlLCJkYWlyZWVrbGUiOnRydWUsImRhaXJlZHV6ZW5sZSI6dHJ1ZSwiZGFpcmVzaWwiOnRydWUsInNhdGlzZWtsZSI6dHJ1ZSwic2F0aXNkdXplbmxlIjp0cnVlLCJzYXRpc3NpbCI6dHJ1ZSwicG9ydGZveWVrbGUiOnRydWUsInBvcnRmb3lkdXplbmxlIjp0cnVlLCJwb3J0Zm95c2lsIjp0cnVlLCJzYW50aXllZWtsZSI6dHJ1ZSwic2FudGl5ZWR1emVubGUiOnRydWUsInNhbnRpeWVzaWwiOnRydWUsInNhbnRpeWVtYWx6ZW1lZWtsZSI6dHJ1ZSwic2FudGl5ZW1hbHplbWVkdXplbmxlIjp0cnVlLCJzYW50aXllbWFsemVtZXNpbCI6dHJ1ZSwiYXJpemFrYXlkaWVrbGUiOnRydWUsImFyaXpha2F5ZGlkdXplbmxlIjp0cnVlLCJhcml6YWthZGlzaWwiOnRydWUsImFyaXphdGFraXBrb250cm9sdSI6dHJ1ZSwidGFwdXNpY2lsZWtsZSI6dHJ1ZSwidGFwdXNpY2lsZHV6ZW5sZSI6dHJ1ZSwidGFwdXNpY2lsc2lsIjp0cnVlLCJhYm9uZWxpa2VrbGUiOnRydWUsImFib25lbGlrZHV6ZW5sZSI6dHJ1ZSwiYWJvbmVsaWtzaWwiOnRydWUsImhhbGtsYWlsaXNraWxlcmVrbGUiOnRydWUsImhhbGtsYWlsaXNraWxlcmR1emVubGUiOnRydWUsImhhbGtsYWlsaXNraWxlcnNpbCI6dHJ1ZSwiYmVsZ2VrYXlkaWVrbGUiOnRydWUsImJlbGdla2F5ZGlkdXplbmxlIjp0cnVlLCJiZWxnZWtheWRpc2lsIjp0cnVlLCJtYWxpeWV0ZWtsZSI6dHJ1ZSwibWFsaXlldGR1emVubGUiOnRydWUsIm1hbGl5ZXRzaWwiOnRydWUsImJpbmFrb250cm9sZWtsZSI6dHJ1ZSwiYmluYWtvbnRyb2xkdXplbmxlIjp0cnVlLCJiaW5ha29udG9ybHNpbCI6dHJ1ZSwieW9uZXRpY2lla2xlIjp0cnVlLCJ5b25ldGljaWR1emVubGUiOnRydWUsInlvbmV0aWNpc2lsIjp0cnVlfQ==', '2019-02-01 11:46:11.238134');
INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('voc03n7lf5d2y28bmln9z7egkb66jfe3', 'YmY2ZTQzOThjZWZlMDc5MzlmNzMzMDM1ODIyMTIwNTVlOGNkOTNiYjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2ZjY0YjQ1N2UxZjI1MmVlYmRiYjE2OTJhMDU1MDUyOWY0MTk2YjI2IiwiYWRpIjoibXVzdGFmYSIsImthZGkiOiJtdXN0YWZhIiwic2lmcmUiOiIxMjMxMjMiLCJsb2ciOnRydWUsInNhdGlzcGF6YXJsYW1hIjp0cnVlLCJtdXN0ZXJpcG9ydGZveSI6dHJ1ZSwic2FudGl5ZXRha2lwIjp0cnVlLCJhcml6YXRha2lwIjp0cnVlLCJ0YXB1c2ljaWwiOnRydWUsImFib25lbGlrIjp0cnVlLCJoYWxrbGFpbGlza2lsZXIiOnRydWUsImJlbGdla2F5ZGkiOnRydWUsIm1hbGl5ZXQiOnRydWUsImJpbmFrb250cm9sIjp0cnVlLCJwcm9qZWVrbGUiOnRydWUsInByb2plZHV6ZW5sZSI6dHJ1ZSwicHJvamVzaWwiOnRydWUsImJsb2tla2xlIjp0cnVlLCJibG9rZHV6ZW5sZSI6dHJ1ZSwiYmxva3NpbCI6dHJ1ZSwiZGFpcmVla2xlIjp0cnVlLCJkYWlyZWR1emVubGUiOnRydWUsImRhaXJlc2lsIjp0cnVlLCJzYXRpc2VrbGUiOnRydWUsInNhdGlzZHV6ZW5sZSI6dHJ1ZSwic2F0aXNzaWwiOnRydWUsInBvcnRmb3lla2xlIjp0cnVlLCJwb3J0Zm95ZHV6ZW5sZSI6dHJ1ZSwicG9ydGZveXNpbCI6dHJ1ZSwic2FudGl5ZWVrbGUiOnRydWUsInNhbnRpeWVkdXplbmxlIjp0cnVlLCJzYW50aXllc2lsIjp0cnVlLCJzYW50aXllbWFsemVtZWVrbGUiOnRydWUsInNhbnRpeWVtYWx6ZW1lZHV6ZW5sZSI6dHJ1ZSwic2FudGl5ZW1hbHplbWVzaWwiOnRydWUsImFyaXpha2F5ZGlla2xlIjp0cnVlLCJhcml6YWtheWRpZHV6ZW5sZSI6dHJ1ZSwiYXJpemFrYWRpc2lsIjp0cnVlLCJhcml6YXRha2lwa29udHJvbHUiOnRydWUsInRhcHVzaWNpbGVrbGUiOnRydWUsInRhcHVzaWNpbGR1emVubGUiOnRydWUsInRhcHVzaWNpbHNpbCI6dHJ1ZSwiYWJvbmVsaWtla2xlIjp0cnVlLCJhYm9uZWxpa2R1emVubGUiOnRydWUsImFib25lbGlrc2lsIjp0cnVlLCJoYWxrbGFpbGlza2lsZXJla2xlIjp0cnVlLCJoYWxrbGFpbGlza2lsZXJkdXplbmxlIjp0cnVlLCJoYWxrbGFpbGlza2lsZXJzaWwiOnRydWUsImJlbGdla2F5ZGlla2xlIjp0cnVlLCJiZWxnZWtheWRpZHV6ZW5sZSI6dHJ1ZSwiYmVsZ2VrYXlkaXNpbCI6dHJ1ZSwibWFsaXlldGVrbGUiOnRydWUsIm1hbGl5ZXRkdXplbmxlIjp0cnVlLCJtYWxpeWV0c2lsIjp0cnVlLCJiaW5ha29udHJvbGVrbGUiOnRydWUsImJpbmFrb250cm9sZHV6ZW5sZSI6dHJ1ZSwiYmluYWtvbnRvcmxzaWwiOnRydWUsInlvbmV0aWNpZWtsZSI6dHJ1ZSwieW9uZXRpY2lkdXplbmxlIjp0cnVlLCJ5b25ldGljaXNpbCI6dHJ1ZX0=', '2019-01-19 16:15:15.792106'),
('xfn1qxd06e4f9zec5jx42v3rgfz5ah9w', 'MDNiNzA1ODczNDRjN2RlYTc1Yzc5NDQ3NjE4MTBjMjRlZjNhZjI2MTp7ImlkIjoxLCJhZGkiOiJtdXN0YWZhIiwia2FkaSI6Im11c3RhZmEiLCJzaWZyZSI6IjEyMzEyMyIsImxvZyI6dHJ1ZSwic2F0aXNwYXphcmxhbWEiOnRydWUsIm11c3Rlcmlwb3J0Zm95Ijp0cnVlLCJzYW50aXlldGFraXAiOnRydWUsImFyaXphdGFraXAiOnRydWUsInRhcHVzaWNpbCI6dHJ1ZSwiYWJvbmVsaWsiOnRydWUsImhhbGtsYWlsaXNraWxlciI6dHJ1ZSwiYmVsZ2VrYXlkaSI6dHJ1ZSwibWFsaXlldCI6dHJ1ZSwiYmluYWtvbnRyb2wiOnRydWUsInByb2plZWtsZSI6dHJ1ZSwicHJvamVkdXplbmxlIjp0cnVlLCJwcm9qZXNpbCI6dHJ1ZSwiYmxva2VrbGUiOnRydWUsImJsb2tkdXplbmxlIjp0cnVlLCJibG9rc2lsIjp0cnVlLCJkYWlyZWVrbGUiOnRydWUsImRhaXJlZHV6ZW5sZSI6dHJ1ZSwiZGFpcmVzaWwiOnRydWUsInNhdGlzZWtsZSI6dHJ1ZSwic2F0aXNkdXplbmxlIjp0cnVlLCJzYXRpc3NpbCI6dHJ1ZSwicG9ydGZveWVrbGUiOnRydWUsInBvcnRmb3lkdXplbmxlIjp0cnVlLCJwb3J0Zm95c2lsIjp0cnVlLCJzYW50aXllZWtsZSI6dHJ1ZSwic2FudGl5ZWR1emVubGUiOnRydWUsInNhbnRpeWVzaWwiOnRydWUsInNhbnRpeWVtYWx6ZW1lZWtsZSI6dHJ1ZSwic2FudGl5ZW1hbHplbWVkdXplbmxlIjp0cnVlLCJzYW50aXllbWFsemVtZXNpbCI6dHJ1ZSwiYXJpemFrYXlkaWVrbGUiOnRydWUsImFyaXpha2F5ZGlkdXplbmxlIjp0cnVlLCJhcml6YWthZGlzaWwiOnRydWUsImFyaXphdGFraXBrb250cm9sdSI6dHJ1ZSwidGFwdXNpY2lsZWtsZSI6dHJ1ZSwidGFwdXNpY2lsZHV6ZW5sZSI6dHJ1ZSwidGFwdXNpY2lsc2lsIjp0cnVlLCJhYm9uZWxpa2VrbGUiOnRydWUsImFib25lbGlrZHV6ZW5sZSI6dHJ1ZSwiYWJvbmVsaWtzaWwiOnRydWUsImhhbGtsYWlsaXNraWxlcmVrbGUiOnRydWUsImhhbGtsYWlsaXNraWxlcmR1emVubGUiOnRydWUsImhhbGtsYWlsaXNraWxlcnNpbCI6dHJ1ZSwiYmVsZ2VrYXlkaWVrbGUiOnRydWUsImJlbGdla2F5ZGlkdXplbmxlIjp0cnVlLCJiZWxnZWtheWRpc2lsIjp0cnVlLCJtYWxpeWV0ZWtsZSI6dHJ1ZSwibWFsaXlldGR1emVubGUiOnRydWUsIm1hbGl5ZXRzaWwiOnRydWUsImJpbmFrb250cm9sZWtsZSI6dHJ1ZSwiYmluYWtvbnRyb2xkdXplbmxlIjp0cnVlLCJiaW5ha29udG9ybHNpbCI6dHJ1ZSwieW9uZXRpY2lla2xlIjp0cnVlLCJ5b25ldGljaWR1emVubGUiOnRydWUsInlvbmV0aWNpc2lsIjp0cnVlfQ==', '2019-02-06 15:32:42.258995'),
('z2zk2bbtkkyvn1r2350fmc3c4gzt4s60', 'OGQyN2VmNzY0NjYzODVkMDIzMTM3MGQwNWM3MzE2YmRlMjRiY2RhZTp7ImFkaSI6Im11c3RhZmEiLCJrYWRpIjoibXVzdGFmYSIsInNpZnJlIjoiMTIzMTIzIiwibG9nIjp0cnVlLCJzYXRpc3BhemFybGFtYSI6dHJ1ZSwibXVzdGVyaXBvcnRmb3kiOnRydWUsInNhbnRpeWV0YWtpcCI6dHJ1ZSwiYXJpemF0YWtpcCI6dHJ1ZSwidGFwdXNpY2lsIjp0cnVlLCJhYm9uZWxpayI6dHJ1ZSwiaGFsa2xhaWxpc2tpbGVyIjp0cnVlLCJiZWxnZWtheWRpIjp0cnVlLCJtYWxpeWV0Ijp0cnVlLCJiaW5ha29udHJvbCI6dHJ1ZSwicHJvamVla2xlIjp0cnVlLCJwcm9qZWR1emVubGUiOnRydWUsInByb2plc2lsIjp0cnVlLCJibG9rZWtsZSI6dHJ1ZSwiYmxva2R1emVubGUiOnRydWUsImJsb2tzaWwiOnRydWUsImRhaXJlZWtsZSI6dHJ1ZSwiZGFpcmVkdXplbmxlIjp0cnVlLCJkYWlyZXNpbCI6dHJ1ZSwic2F0aXNla2xlIjp0cnVlLCJzYXRpc2R1emVubGUiOnRydWUsInNhdGlzc2lsIjp0cnVlLCJwb3J0Zm95ZWtsZSI6dHJ1ZSwicG9ydGZveWR1emVubGUiOnRydWUsInBvcnRmb3lzaWwiOnRydWUsInNhbnRpeWVla2xlIjp0cnVlLCJzYW50aXllZHV6ZW5sZSI6dHJ1ZSwic2FudGl5ZXNpbCI6dHJ1ZSwic2FudGl5ZW1hbHplbWVla2xlIjp0cnVlLCJzYW50aXllbWFsemVtZWR1emVubGUiOnRydWUsInNhbnRpeWVtYWx6ZW1lc2lsIjp0cnVlLCJhcml6YWtheWRpZWtsZSI6dHJ1ZSwiYXJpemFrYXlkaWR1emVubGUiOnRydWUsImFyaXpha2FkaXNpbCI6dHJ1ZSwiYXJpemF0YWtpcGtvbnRyb2x1Ijp0cnVlLCJ0YXB1c2ljaWxla2xlIjp0cnVlLCJ0YXB1c2ljaWxkdXplbmxlIjp0cnVlLCJ0YXB1c2ljaWxzaWwiOnRydWUsImFib25lbGlrZWtsZSI6dHJ1ZSwiYWJvbmVsaWtkdXplbmxlIjp0cnVlLCJhYm9uZWxpa3NpbCI6dHJ1ZSwiaGFsa2xhaWxpc2tpbGVyZWtsZSI6dHJ1ZSwiaGFsa2xhaWxpc2tpbGVyZHV6ZW5sZSI6dHJ1ZSwiaGFsa2xhaWxpc2tpbGVyc2lsIjp0cnVlLCJiZWxnZWtheWRpZWtsZSI6dHJ1ZSwiYmVsZ2VrYXlkaWR1emVubGUiOnRydWUsImJlbGdla2F5ZGlzaWwiOnRydWUsIm1hbGl5ZXRla2xlIjp0cnVlLCJtYWxpeWV0ZHV6ZW5sZSI6dHJ1ZSwibWFsaXlldHNpbCI6dHJ1ZSwiYmluYWtvbnRyb2xla2xlIjp0cnVlLCJiaW5ha29udHJvbGR1emVubGUiOnRydWUsImJpbmFrb250b3Jsc2lsIjp0cnVlLCJ5b25ldGljaWVrbGUiOnRydWUsInlvbmV0aWNpZHV6ZW5sZSI6dHJ1ZSwieW9uZXRpY2lzaWwiOnRydWV9', '2019-01-14 14:12:26.246721'),
('ze695lxlx0kwy5azwm9z2cm87fe4s2ip', 'ODE3MGM3ZTRiNTU0MTRlYjRkZTQ2ZjVlYjRlY2RiYTdlZWRhMDQ1Mzp7Im1lbnUxIjoyLCJpZCI6MSwiYWRpIjoibXVzdGFmYSIsImthZGkiOiJtdXN0YWZhIiwic2lmcmUiOiIxMjMiLCJsb2ciOnRydWUsInNhdGlzcGF6YXJsYW1hIjp0cnVlLCJtdXN0ZXJpcG9ydGZveSI6dHJ1ZSwic2FudGl5ZXRha2lwIjp0cnVlLCJhcml6YXRha2lwIjp0cnVlLCJ0YXB1c2ljaWwiOnRydWUsImFib25lbGlrIjp0cnVlLCJoYWxrbGFpbGlza2lsZXIiOnRydWUsImJlbGdla2F5ZGkiOnRydWUsIm1hbGl5ZXQiOnRydWUsImJpbmFrb250cm9sIjp0cnVlLCJwcm9qZWVrbGUiOmZhbHNlLCJwcm9qZWR1emVubGUiOmZhbHNlLCJwcm9qZXNpbCI6ZmFsc2UsImJsb2tla2xlIjpmYWxzZSwiYmxva2R1emVubGUiOmZhbHNlLCJibG9rc2lsIjpmYWxzZSwiZGFpcmVla2xlIjpmYWxzZSwiZGFpcmVkdXplbmxlIjpmYWxzZSwiZGFpcmVzaWwiOmZhbHNlLCJzYXRpc2VrbGUiOmZhbHNlLCJzYXRpc2R1emVubGUiOmZhbHNlLCJzYXRpc3NpbCI6ZmFsc2UsInBvcnRmb3lla2xlIjpmYWxzZSwicG9ydGZveWR1emVubGUiOmZhbHNlLCJwb3J0Zm95c2lsIjpmYWxzZSwic2FudGl5ZWVrbGUiOnRydWUsInNhbnRpeWVkdXplbmxlIjp0cnVlLCJzYW50aXllc2lsIjp0cnVlLCJzYW50aXllbWFsemVtZWVrbGUiOnRydWUsInNhbnRpeWVtYWx6ZW1lZHV6ZW5sZSI6dHJ1ZSwic2FudGl5ZW1hbHplbWVzaWwiOnRydWUsImFyaXpha2F5ZGlla2xlIjpmYWxzZSwiYXJpemFrYXlkaWR1emVubGUiOmZhbHNlLCJhcml6YWtheWRpc2lsIjpmYWxzZSwiYXJpemF0YWtpcGtvbnRyb2x1Ijp0cnVlLCJ0YXB1c2ljaWxla2xlIjpmYWxzZSwidGFwdXNpY2lsZHV6ZW5sZSI6ZmFsc2UsInRhcHVzaWNpbHNpbCI6ZmFsc2UsImFib25lbGlrZWtsZSI6ZmFsc2UsImFib25lbGlrZHV6ZW5sZSI6ZmFsc2UsImFib25lbGlrc2lsIjpmYWxzZSwiaGFsa2xhaWxpc2tpbGVyZWtsZSI6ZmFsc2UsImhhbGtsYWlsaXNraWxlcmR1emVubGUiOmZhbHNlLCJoYWxrbGFpbGlza2lsZXJzaWwiOmZhbHNlLCJiZWxnZWtheWRpZWtsZSI6ZmFsc2UsImJlbGdla2F5ZGlkdXplbmxlIjpmYWxzZSwiYmVsZ2VrYXlkaXNpbCI6ZmFsc2UsIm1hbGl5ZXRla2xlIjpmYWxzZSwibWFsaXlldGR1emVubGUiOmZhbHNlLCJtYWxpeWV0c2lsIjpmYWxzZSwiYmluYWtvbnRyb2xla2xlIjpmYWxzZSwiYmluYWtvbnRyb2xkdXplbmxlIjpmYWxzZSwiYmluYWtvbnRyb2xzaWwiOmZhbHNlLCJ5b25ldGljaWVrbGUiOmZhbHNlLCJ5b25ldGljaWR1emVubGUiOmZhbHNlLCJ5b25ldGljaXNpbCI6ZmFsc2UsIm1lbnUyIjowfQ==', '2019-03-08 19:14:07.585200');

-- --------------------------------------------------------

--
-- Table structure for table `insaatWeb_abonelikler`
--

CREATE TABLE `insaatWeb_abonelikler` (
  `id` int(11) NOT NULL,
  `ekleyen_id` int(11) NOT NULL,
  `tur` smallint(6) NOT NULL,
  `aboneno` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `adres` longtext COLLATE utf8_turkish_ci NOT NULL,
  `masraf` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `projeadi` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `aciklama` longtext COLLATE utf8_turkish_ci NOT NULL,
  `adapafta` varchar(30) COLLATE utf8_turkish_ci NOT NULL,
  `tarih` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `insaatWeb_abonelikler`
--

INSERT INTO `insaatWeb_abonelikler` (`id`, `ekleyen_id`, `tur`, `aboneno`, `adres`, `masraf`, `projeadi`, `aciklama`, `adapafta`, `tarih`) VALUES
(1, 1, 0, '23432', 'kosova neighborhood davet street\r\ngürışık apartment number: 3/8\r\nseçuklu / konya 42100', '12000', 'deneme', 'sdfsdf', '132/1545', '2019-01-23'),
(3, 1, 2, '23432', 'kosova neighborhood davet street\r\ngürışık apartment number: 3/8\r\nseçuklu / konya 42100', '1200000', 'deneme', 'sdfdsf', '132/1545', '2019-01-23'),
(4, 1, 0, '23432', 'kosova neighborhood davet street\r\ngürışık apartment number: 3/8\r\nseçuklu / konya 42100', '12000', 'deneme ', 'weewrew', '132/1545', '2019-01-24'),
(6, 1, 1, '23432', 'kosova neighborhood davet street\r\ngürışık apartment number: 3/8\r\nseçuklu / konya 42100', '12000', '', '', '132/1545', '2019-01-24');

-- --------------------------------------------------------

--
-- Table structure for table `insaatWeb_ariza_takip`
--

CREATE TABLE `insaatWeb_ariza_takip` (
  `id` int(11) NOT NULL,
  `ekleyen_id` int(11) NOT NULL,
  `guncelleyen` int(11) NOT NULL,
  `durum` smallint(6) NOT NULL,
  `sorun` longtext COLLATE utf8_turkish_ci NOT NULL,
  `cozumnotu` longtext COLLATE utf8_turkish_ci NOT NULL,
  `eklenmetarihi` date NOT NULL,
  `guncellenmetarihi` date NOT NULL,
  `daireid_id` int(11) NOT NULL,
  `resim` varchar(100) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `insaatWeb_ariza_takip`
--

INSERT INTO `insaatWeb_ariza_takip` (`id`, `ekleyen_id`, `guncelleyen`, `durum`, `sorun`, `cozumnotu`, `eklenmetarihi`, `guncellenmetarihi`, `daireid_id`, `resim`) VALUES
(1, 1, 1, -1, 'qweqwe qwe qw wq', 'qwe qwe qw', '2019-01-13', '2019-01-24', 191, 'ariza_img/Mydino_Oyun_Özeti.docx'),
(2, 1, 1, 0, '123123', '', '2019-01-13', '2019-01-13', 176, ''),
(3, 1, 1, -1, '123123', '1231', '2019-01-13', '2019-01-13', 177, ''),
(5, 1, 1, 1, 'asdasd', 'asdasdasd', '2019-01-14', '2019-01-13', 191, 'ariza_img/Screenshot_from_2018-12-01_17-53-17.png'),
(6, 1, 1, 1, 'qeqwe', 'qwe', '2019-01-14', '2019-01-14', 178, ''),
(7, 1, 1, 0, 'qweqwe', 'qweqwe', '2019-01-14', '2019-01-14', 178, ''),
(8, 1, 1, 0, 'deneme arızası', '', '2019-01-16', '2019-01-16', 180, 'ariza_img/Screenshot_from_2018-12-01_17-53-17_U8nIF5t.png'),
(9, 1, 1, 0, 'duvar yıkıldı', '', '2019-03-04', '2019-03-04', 200, '');

-- --------------------------------------------------------

--
-- Table structure for table `insaatWeb_belge_kaydi`
--

CREATE TABLE `insaatWeb_belge_kaydi` (
  `id` int(11) NOT NULL,
  `ekleyen_id` int(11) NOT NULL,
  `tur` smallint(6) NOT NULL,
  `tarih` date NOT NULL,
  `konu` varchar(200) COLLATE utf8_turkish_ci NOT NULL,
  `kime` varchar(200) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `insaatWeb_belge_kaydi`
--

INSERT INTO `insaatWeb_belge_kaydi` (`id`, `ekleyen_id`, `tur`, `tarih`, `konu`, `kime`) VALUES
(7, 1, 1, '2019-01-24', 'mustafa', 'asdasdasd'),
(9, 1, 1, '2019-01-24', 'asd', 'asd'),
(11, 1, 1, '2019-01-24', 'lk', 'Mustafa'),
(12, 1, 0, '2019-01-24', 'asd', 'asd'),
(13, 1, 1, '2019-01-24', 'jh', 'hg'),
(14, 1, 1, '2019-01-24', 'jh', 'hg'),
(15, 1, 1, '2019-01-24', 'asd', 'asd');

-- --------------------------------------------------------

--
-- Table structure for table `insaatWeb_belge_kaydi_file`
--

CREATE TABLE `insaatWeb_belge_kaydi_file` (
  `id` int(11) NOT NULL,
  `belge` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `kayit_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `insaatWeb_belge_kaydi_file`
--

INSERT INTO `insaatWeb_belge_kaydi_file` (`id`, `belge`, `kayit_id`) VALUES
(6, 'belge_kaydi/Screenshot_from_2018-12-01_17-53-17.png', 7),
(7, 'belge_kaydi/Screenshot_from_2018-12-01_17-53-17_On2RqKF.png', 9),
(18, 'belge_kaydi/djangogirls-20181225T150443Z-001_HOJvZBJ.zip', 12),
(19, 'belge_kaydi/5.-sinif-bilgi-yarismasi-sorulari.pdf', 12),
(20, 'belge_kaydi/5.-sinif-bilgi-yarismasi-sorulari-1.pdf', 12);

-- --------------------------------------------------------

--
-- Table structure for table `insaatWeb_bina_kontrol`
--

CREATE TABLE `insaatWeb_bina_kontrol` (
  `id` int(11) NOT NULL,
  `projeadi` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `hakkinda` longtext COLLATE utf8_turkish_ci NOT NULL,
  `tarih` date NOT NULL,
  `eklenmetarihi` date NOT NULL,
  `ekleyen_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `insaatWeb_bina_kontrol`
--

INSERT INTO `insaatWeb_bina_kontrol` (`id`, `projeadi`, `hakkinda`, `tarih`, `eklenmetarihi`, `ekleyen_id`) VALUES
(3, 'ASDASD', 'ASDASD', '2019-01-26', '2019-01-26', 1),
(4, 'sda', 'asdasd', '2019-01-27', '2019-01-26', 1),
(5, 'yeni eklenen', 'qsqs', '2019-01-25', '2019-01-26', 1),
(6, 'yeni eklenen333', 'qsqs', '2019-01-25', '2019-01-26', 1);

-- --------------------------------------------------------

--
-- Table structure for table `insaatWeb_bina_kontrol_file`
--

CREATE TABLE `insaatWeb_bina_kontrol_file` (
  `id` int(11) NOT NULL,
  `belge` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `kayit_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `insaatWeb_bina_kontrol_file`
--

INSERT INTO `insaatWeb_bina_kontrol_file` (`id`, `belge`, `kayit_id`) VALUES
(3, 'bina_kontrol/eiuygula1.pdf', 6),
(4, 'bina_kontrol/filename.xlsx', 6);

-- --------------------------------------------------------

--
-- Table structure for table `insaatWeb_bloklar`
--

CREATE TABLE `insaatWeb_bloklar` (
  `id` int(11) NOT NULL,
  `adi` varchar(200) COLLATE utf8_turkish_ci NOT NULL,
  `metrekare` int(11) NOT NULL,
  `odasayisi` varchar(8) COLLATE utf8_turkish_ci NOT NULL,
  `katsayisi` int(11) NOT NULL,
  `birkattakidairesayisi` int(11) NOT NULL,
  `blokkenarsol` varchar(200) COLLATE utf8_turkish_ci NOT NULL,
  `blokkenarsag` varchar(200) COLLATE utf8_turkish_ci NOT NULL,
  `blokkenaryukari` varchar(200) COLLATE utf8_turkish_ci NOT NULL,
  `blokkenarasagi` varchar(200) COLLATE utf8_turkish_ci NOT NULL,
  `projeid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `insaatWeb_bloklar`
--

INSERT INTO `insaatWeb_bloklar` (`id`, `adi`, `metrekare`, `odasayisi`, `katsayisi`, `birkattakidairesayisi`, `blokkenarsol`, `blokkenarsag`, `blokkenaryukari`, `blokkenarasagi`, `projeid_id`) VALUES
(21, 'blok 2', 123, '1+0', 3, 2, '', '', '', '', 8),
(22, 'blok 3', 234, '2+1', 5, 2, '', '', '', '', 8),
(23, 'blok 5', 234, '2+1', 4, 2, '', '', '', '', 8),
(24, 'a blok', 123, '2+2', 4, 2, '', '', '', '', 11);

-- --------------------------------------------------------

--
-- Table structure for table `insaatWeb_daireler`
--

CREATE TABLE `insaatWeb_daireler` (
  `id` int(11) NOT NULL,
  `no` int(11) NOT NULL,
  `fiyat` int(11) NOT NULL,
  `blokid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `insaatWeb_daireler`
--

INSERT INTO `insaatWeb_daireler` (`id`, `no`, `fiyat`, `blokid_id`) VALUES
(175, 1, 12376, 21),
(176, 2, 12376, 21),
(177, 3, 12376, 21),
(178, 4, 12376, 21),
(179, 5, 12376, 21),
(180, 6, 12376, 21),
(181, 1, 143, 22),
(182, 2, 143, 22),
(183, 3, 143, 22),
(184, 4, 143, 22),
(185, 5, 143, 22),
(186, 6, 143, 22),
(187, 7, 143, 22),
(188, 8, 143, 22),
(189, 9, 143, 22),
(190, 10, 143, 22),
(191, 7, 123123, 21),
(192, 8, 123, 21),
(193, 1, 123000, 23),
(194, 2, 123000, 23),
(195, 3, 123000, 23),
(196, 4, 123000, 23),
(197, 5, 123000, 23),
(198, 6, 123000, 23),
(199, 7, 123000, 23),
(200, 8, 123000, 23),
(201, 9, 123, 23),
(202, 1, 230000, 24),
(203, 2, 230000, 24),
(204, 3, 230000, 24),
(205, 4, 230000, 24),
(206, 5, 230000, 24),
(207, 6, 230000, 24),
(208, 7, 230000, 24),
(209, 8, 230000, 24),
(210, 9, 227000, 24);

-- --------------------------------------------------------

--
-- Table structure for table `insaatWeb_halkla_iliskiler`
--

CREATE TABLE `insaatWeb_halkla_iliskiler` (
  `id` int(11) NOT NULL,
  `ekleyen_id` int(11) NOT NULL,
  `tarih` datetime(6) NOT NULL,
  `gelen` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `gorustugu` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `arayan` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `telefon` varchar(34) COLLATE utf8_turkish_ci NOT NULL,
  `konu` longtext COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `insaatWeb_halkla_iliskiler`
--

INSERT INTO `insaatWeb_halkla_iliskiler` (`id`, `ekleyen_id`, `tarih`, `gelen`, `gorustugu`, `arayan`, `telefon`, `konu`) VALUES
(1, 1, '2019-01-24 00:00:00.000000', 'asda', 'asd', 'asd', 'asd', 'asd'),
(2, 1, '2019-01-24 00:00:00.000000', 'asda', 'asd', 'asd', 'asd', 'asd');

-- --------------------------------------------------------

--
-- Table structure for table `insaatWeb_il`
--

CREATE TABLE `insaatWeb_il` (
  `id` int(11) NOT NULL,
  `il` varchar(100) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `insaatWeb_il`
--

INSERT INTO `insaatWeb_il` (`id`, `il`) VALUES
(1, 'Konya');

-- --------------------------------------------------------

--
-- Table structure for table `insaatWeb_ilce`
--

CREATE TABLE `insaatWeb_ilce` (
  `id` int(11) NOT NULL,
  `ilce` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `kayit_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `insaatWeb_ilce`
--

INSERT INTO `insaatWeb_ilce` (`id`, `ilce`, `kayit_id`) VALUES
(1, 'SELÇUKLU', 1),
(2, 'MERAM', 1),
(3, 'SARAYÖNÜ', 1),
(4, 'KARATAY', 1),
(5, 'BEYŞEHİR', 1);

-- --------------------------------------------------------

--
-- Table structure for table `insaatWeb_maliyet_kat`
--

CREATE TABLE `insaatWeb_maliyet_kat` (
  `id` int(11) NOT NULL,
  `adi` varchar(100) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `insaatWeb_maliyet_kayit`
--

CREATE TABLE `insaatWeb_maliyet_kayit` (
  `id` int(11) NOT NULL,
  `ekleyen_id` int(11) NOT NULL,
  `maddeid` int(11) NOT NULL,
  `birimfiyat` double NOT NULL,
  `adet` double NOT NULL,
  `hakkinda` varchar(400) COLLATE utf8_turkish_ci NOT NULL,
  `kat_id` int(11) NOT NULL,
  `projeid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `insaatWeb_maliyet_madde`
--

CREATE TABLE `insaatWeb_maliyet_madde` (
  `id` int(11) NOT NULL,
  `adi` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `kat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `insaatWeb_maliyet_projeler`
--

CREATE TABLE `insaatWeb_maliyet_projeler` (
  `id` int(11) NOT NULL,
  `adi` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `reelmaliyet` varchar(400) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `insaatWeb_portfoy_kayit`
--

CREATE TABLE `insaatWeb_portfoy_kayit` (
  `id` int(11) NOT NULL,
  `adisoyadi` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `telefonev` varchar(34) COLLATE utf8_turkish_ci NOT NULL,
  `telefoncep` varchar(34) COLLATE utf8_turkish_ci NOT NULL,
  `meslek` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `hakkinda` longtext COLLATE utf8_turkish_ci NOT NULL,
  `fiyataraligimin` int(11) NOT NULL,
  `fiyataraligimax` int(11) NOT NULL,
  `ilce` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `odasayisi` varchar(200) COLLATE utf8_turkish_ci NOT NULL,
  `emlakturu` varchar(200) COLLATE utf8_turkish_ci NOT NULL,
  `satinalmaturu` smallint(6) NOT NULL,
  `tarih` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `insaatWeb_portfoy_kayit`
--

INSERT INTO `insaatWeb_portfoy_kayit` (`id`, `adisoyadi`, `telefonev`, `telefoncep`, `meslek`, `hakkinda`, `fiyataraligimin`, `fiyataraligimax`, `ilce`, `odasayisi`, `emlakturu`, `satinalmaturu`, `tarih`) VALUES
(4, 'Mustafa SEYHAN', '1233123', '12312312', 'halkl', '', 123, 123123, 'asd', '[\'2+2\', \'5+1\', \'5+2\']', '[\'Residence\']', 2, '2019-01-12'),
(6, 'Mustafa SEYHAN', '1233123', '12312312', 'halkl', 'hadi nakalo', 123, 123123, 'asd', '[\'1\', \'1+1\', \'3+1\', \'4+2\', \'5+1\', \'6+3\']', '[\'Bina\', \'İş Yeri\']', 2, '2019-01-13'),
(7, 'mustafa', '5555555555', '5555555555', 'öğrenci', '', 500000, 5000000, 'SELÇUKLU', '[\'4+1\']', '[\'Bina\']', 2, '2019-03-04'),
(8, 'mustafa', '5555555555', '5555555555', 'öğrenci', '', 500000, 5000000, 'Konya -> SARAYÖNÜ', '[\'2+1\', \'3+2\']', '[\'Residence\', \'Villa\', \'İş Yeri\']', 2, '2019-03-05'),
(9, 'mustafa', '5555555555', '5555555555', 'öğrenci', '', 500000, 5000000, 'Konya - MERAM', '[\'3+2\']', '[\'Villa\']', 2, '2019-03-05');

-- --------------------------------------------------------

--
-- Table structure for table `insaatWeb_projeler`
--

CREATE TABLE `insaatWeb_projeler` (
  `id` int(11) NOT NULL,
  `adi` varchar(200) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `insaatWeb_projeler`
--

INSERT INTO `insaatWeb_projeler` (`id`, `adi`) VALUES
(8, 'proje deneme'),
(9, 'proje10'),
(10, 'deneme'),
(11, 'deeneme');

-- --------------------------------------------------------

--
-- Table structure for table `insaatWeb_santiyeler`
--

CREATE TABLE `insaatWeb_santiyeler` (
  `id` int(11) NOT NULL,
  `adi` varchar(200) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `insaatWeb_santiyeler`
--

INSERT INTO `insaatWeb_santiyeler` (`id`, `adi`) VALUES
(2, 'deneme1'),
(3, 'santiye2'),
(4, '123'),
(5, 'ideko');

-- --------------------------------------------------------

--
-- Table structure for table `insaatWeb_santiye_takip`
--

CREATE TABLE `insaatWeb_santiye_takip` (
  `id` int(11) NOT NULL,
  `faturano` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `irsaliyeno` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `tedarikci` varchar(600) COLLATE utf8_turkish_ci NOT NULL,
  `malzemeadi` varchar(400) COLLATE utf8_turkish_ci NOT NULL,
  `malzememiktari` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `tarih` date NOT NULL,
  `editorid_id` int(11) NOT NULL,
  `santiyeid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `insaatWeb_santiye_takip`
--

INSERT INTO `insaatWeb_santiye_takip` (`id`, `faturano`, `irsaliyeno`, `tedarikci`, `malzemeadi`, `malzememiktari`, `tarih`, `editorid_id`, `santiyeid_id`) VALUES
(3, '123123', '123213', '123123', 'deneme malzeme', ' 128 2340ton', '2019-01-13', 1, 3),
(10, '123123', '123213', '123123', 'deneme malzeme', 'werwer TON', '2019-01-13', 1, 3),
(11, '123123', '123213', '123123', 'deneme malzeme', '2340ton ADET', '2019-01-13', 1, 2),
(12, '123123', '123213', '123123', 'werwer', '123 TON', '2019-01-16', 1, 2),
(13, '234', '234', 'ererer', 'erer', '23 PAKET', '2019-03-05', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `insaatWeb_satis`
--

CREATE TABLE `insaatWeb_satis` (
  `id` int(11) NOT NULL,
  `odenen` int(11) NOT NULL,
  `tckimlik` varchar(22) COLLATE utf8_turkish_ci NOT NULL,
  `adisoyadi` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `telefon` varchar(34) COLLATE utf8_turkish_ci NOT NULL,
  `hakkinda` longtext COLLATE utf8_turkish_ci NOT NULL,
  `tarih` date NOT NULL,
  `daireid_id` int(11) NOT NULL,
  `sozlesme` varchar(100) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `insaatWeb_satis`
--

INSERT INTO `insaatWeb_satis` (`id`, `odenen`, `tckimlik`, `adisoyadi`, `telefon`, `hakkinda`, `tarih`, `daireid_id`, `sozlesme`) VALUES
(20, 3000, '30032207108', 'Mustafa SEYHAN', '05357350700', 'yaıcı', '2019-01-10', 178, 'satis_sozlesmeleri/sozlesme-8-21-4.png'),
(21, -1, '30032207108', 'Mustafa SEYHAN', '05357350700', '', '2019-01-10', 180, 'satis_sozlesmeleri/sozlesme-8-21-6.png'),
(22, 1300000, '30000000000', 'ali', '55555565555', 'doktor', '2019-03-04', 210, ''),
(23, -1, '123213', 'mustafa', '55555565555', '', '2019-03-04', 209, '');

-- --------------------------------------------------------

--
-- Table structure for table `insaatWeb_tapu_alis`
--

CREATE TABLE `insaatWeb_tapu_alis` (
  `id` int(11) NOT NULL,
  `ekleyen_id` int(11) NOT NULL,
  `gayrimenkul` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `tapusahibi` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `tarih` date NOT NULL,
  `adapafta` varchar(30) COLLATE utf8_turkish_ci NOT NULL,
  `gayrimenkulalisbedeli` varchar(40) COLLATE utf8_turkish_ci NOT NULL,
  `masraf` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `oncekisahibi` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `oncekisahibihakkinda` longtext COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `insaatWeb_tapu_alis`
--

INSERT INTO `insaatWeb_tapu_alis` (`id`, `ekleyen_id`, `gayrimenkul`, `tapusahibi`, `tarih`, `adapafta`, `gayrimenkulalisbedeli`, `masraf`, `oncekisahibi`, `oncekisahibihakkinda`) VALUES
(2, 1, 'Bina', 'ali gök', '2019-01-16', '132/1545', '190000', '12000', 'mustafa', 'asdas'),
(3, 1, 'İş Yeri', 'sdkfhklsdjfsd ', '2019-01-16', '132/1545', '190000', '12000', 'mustafa', ''),
(4, 1, 'İş Yeri', 'ali gök', '2019-01-16', '132/1545', '190000', '12000', 'mustafa', ''),
(5, 1, 'İş Yeri', 'ali gök', '2019-01-16', '132/1545', '190000', '12000', 'mustafa', '');

-- --------------------------------------------------------

--
-- Table structure for table `insaatWeb_tapu_kat_irtifaki`
--

CREATE TABLE `insaatWeb_tapu_kat_irtifaki` (
  `id` int(11) NOT NULL,
  `ekleyen_id` int(11) NOT NULL,
  `projeadi` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `projebagimsizsayisi` int(11) NOT NULL,
  `tarih` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `insaatWeb_tapu_kat_irtifaki`
--

INSERT INTO `insaatWeb_tapu_kat_irtifaki` (`id`, `ekleyen_id`, `projeadi`, `projebagimsizsayisi`, `tarih`) VALUES
(3, 1, 'deneme', 2, '2019-01-23'),
(4, 1, 'deneme 5', 2, '2019-01-23');

-- --------------------------------------------------------

--
-- Table structure for table `insaatWeb_tapu_kat_mulkiyeti`
--

CREATE TABLE `insaatWeb_tapu_kat_mulkiyeti` (
  `id` int(11) NOT NULL,
  `ekleyen_id` int(11) NOT NULL,
  `projeadi` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `aciklama` longtext COLLATE utf8_turkish_ci NOT NULL,
  `tarih` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `insaatWeb_tapu_kat_mulkiyeti`
--

INSERT INTO `insaatWeb_tapu_kat_mulkiyeti` (`id`, `ekleyen_id`, `projeadi`, `aciklama`, `tarih`) VALUES
(2, 1, 'asdasd', 'asdasd', '2019-01-23'),
(3, 1, 'asdasd', 'asdasd', '2019-01-23'),
(4, 1, 'deneme ', 'asas', '2019-01-23');

-- --------------------------------------------------------

--
-- Table structure for table `insaatWeb_tapu_satis`
--

CREATE TABLE `insaatWeb_tapu_satis` (
  `id` int(11) NOT NULL,
  `ekleyen_id` int(11) NOT NULL,
  `daireid_id` int(11) NOT NULL,
  `daireadi` varchar(200) COLLATE utf8_turkish_ci NOT NULL,
  `adisoyadi` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `meslek` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `adres` longtext COLLATE utf8_turkish_ci NOT NULL,
  `telefon` varchar(34) COLLATE utf8_turkish_ci NOT NULL,
  `masraf` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `tarih` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `insaatWeb_tapu_satis`
--

INSERT INTO `insaatWeb_tapu_satis` (`id`, `ekleyen_id`, `daireid_id`, `daireadi`, `adisoyadi`, `meslek`, `adres`, `telefon`, `masraf`, `tarih`) VALUES
(3, 1, 176, 'deneme', 'Mustafa SEYHAN', 'halkl', 'kosova neighborhood davet street\r\ngürışık apartment number: 3/8\r\nseçuklu / konya 42100', '05357350700', '12000', '2019-01-16'),
(9, 1, 178, 'deneme', 'Mustafa SEYHAN', 'halkl', 'kosova neighborhood davet street\r\ngürışık apartment number: 3/8\r\nseçuklu / konya 42100\"', '05357350700', '12000', '2019-01-16'),
(10, 1, 180, '', 'Mustafa SEYHAN', 'halkl', 'kosova neighborhood davet street\r\ngürışık apartment number: 3/8\r\nseçuklu / konya 42100', '05357350700', '12000', '2019-01-16');

-- --------------------------------------------------------

--
-- Table structure for table `insaatWeb_yonetici`
--

CREATE TABLE `insaatWeb_yonetici` (
  `id` int(11) NOT NULL,
  `adi` varchar(200) COLLATE utf8_turkish_ci NOT NULL,
  `kadi` varchar(200) COLLATE utf8_turkish_ci NOT NULL,
  `sifre` varchar(200) COLLATE utf8_turkish_ci NOT NULL,
  `giris` datetime(6) NOT NULL,
  `satispazarlama` tinyint(1) NOT NULL,
  `musteriportfoy` tinyint(1) NOT NULL,
  `santiyetakip` tinyint(1) NOT NULL,
  `arizatakip` tinyint(1) NOT NULL,
  `tapusicil` tinyint(1) NOT NULL,
  `abonelik` tinyint(1) NOT NULL,
  `halklailiskiler` tinyint(1) NOT NULL,
  `belgekaydi` tinyint(1) NOT NULL,
  `maliyet` tinyint(1) NOT NULL,
  `binakontrol` tinyint(1) NOT NULL,
  `projeekle` tinyint(1) NOT NULL,
  `projeduzenle` tinyint(1) NOT NULL,
  `projesil` tinyint(1) NOT NULL,
  `blokekle` tinyint(1) NOT NULL,
  `blokduzenle` tinyint(1) NOT NULL,
  `bloksil` tinyint(1) NOT NULL,
  `daireekle` tinyint(1) NOT NULL,
  `daireduzenle` tinyint(1) NOT NULL,
  `dairesil` tinyint(1) NOT NULL,
  `satisekle` tinyint(1) NOT NULL,
  `satisduzenle` tinyint(1) NOT NULL,
  `satissil` tinyint(1) NOT NULL,
  `portfoyekle` tinyint(1) NOT NULL,
  `portfoyduzenle` tinyint(1) NOT NULL,
  `portfoysil` tinyint(1) NOT NULL,
  `santiyeekle` tinyint(1) NOT NULL,
  `santiyeduzenle` tinyint(1) NOT NULL,
  `santiyesil` tinyint(1) NOT NULL,
  `santiyemalzemeekle` tinyint(1) NOT NULL,
  `santiyemalzemeduzenle` tinyint(1) NOT NULL,
  `santiyemalzemesil` tinyint(1) NOT NULL,
  `arizakaydiekle` tinyint(1) NOT NULL,
  `arizakaydiduzenle` tinyint(1) NOT NULL,
  `arizakaydisil` tinyint(1) NOT NULL,
  `arizatakipkontrolu` tinyint(1) NOT NULL,
  `tapusicilekle` tinyint(1) NOT NULL,
  `tapusicilduzenle` tinyint(1) NOT NULL,
  `tapusicilsil` tinyint(1) NOT NULL,
  `abonelikekle` tinyint(1) NOT NULL,
  `abonelikduzenle` tinyint(1) NOT NULL,
  `aboneliksil` tinyint(1) NOT NULL,
  `halklailiskilerekle` tinyint(1) NOT NULL,
  `halklailiskilerduzenle` tinyint(1) NOT NULL,
  `halklailiskilersil` tinyint(1) NOT NULL,
  `belgekaydiekle` tinyint(1) NOT NULL,
  `belgekaydiduzenle` tinyint(1) NOT NULL,
  `belgekaydisil` tinyint(1) NOT NULL,
  `maliyetekle` tinyint(1) NOT NULL,
  `maliyetduzenle` tinyint(1) NOT NULL,
  `maliyetsil` tinyint(1) NOT NULL,
  `binakontrolekle` tinyint(1) NOT NULL,
  `binakontrolduzenle` tinyint(1) NOT NULL,
  `binakontrolsil` tinyint(1) NOT NULL,
  `yoneticiekle` tinyint(1) NOT NULL,
  `yoneticiduzenle` tinyint(1) NOT NULL,
  `yoneticisil` tinyint(1) NOT NULL,
  `durum` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `insaatWeb_yonetici`
--

INSERT INTO `insaatWeb_yonetici` (`id`, `adi`, `kadi`, `sifre`, `giris`, `satispazarlama`, `musteriportfoy`, `santiyetakip`, `arizatakip`, `tapusicil`, `abonelik`, `halklailiskiler`, `belgekaydi`, `maliyet`, `binakontrol`, `projeekle`, `projeduzenle`, `projesil`, `blokekle`, `blokduzenle`, `bloksil`, `daireekle`, `daireduzenle`, `dairesil`, `satisekle`, `satisduzenle`, `satissil`, `portfoyekle`, `portfoyduzenle`, `portfoysil`, `santiyeekle`, `santiyeduzenle`, `santiyesil`, `santiyemalzemeekle`, `santiyemalzemeduzenle`, `santiyemalzemesil`, `arizakaydiekle`, `arizakaydiduzenle`, `arizakaydisil`, `arizatakipkontrolu`, `tapusicilekle`, `tapusicilduzenle`, `tapusicilsil`, `abonelikekle`, `abonelikduzenle`, `aboneliksil`, `halklailiskilerekle`, `halklailiskilerduzenle`, `halklailiskilersil`, `belgekaydiekle`, `belgekaydiduzenle`, `belgekaydisil`, `maliyetekle`, `maliyetduzenle`, `maliyetsil`, `binakontrolekle`, `binakontrolduzenle`, `binakontrolsil`, `yoneticiekle`, `yoneticiduzenle`, `yoneticisil`, `durum`) VALUES
(1, 'mustafa', 'mustafa', '123', '2019-03-04 20:36:31.574661', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, 'ali', 'ali', '123123', '2019-01-26 01:59:30.000000', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(3, 'yetkisiz', 'yetkisiz', '12313', '2019-01-27 10:04:34.000000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4, 'deneme1', 'nevzat', '123123', '2019-01-27 11:46:44.361675', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(5, 'deneme2', 'nevzat', '123123', '2019-01-27 11:48:06.430433', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(6, 'deneme2', 'nevzat', '123123', '2019-01-27 11:52:04.339673', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 1, 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, 1, 1, 0, 1, 0, 1, 0, 1, 1, 0, 1, 0, 1, 1, 1, 1, 0, 1, 1, 0, 1, 1, 1, 0, 1, 1, 0),
(7, 'deneme1', 'nevzat', '123123', '2019-01-27 11:56:08.044307', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(8, 'deneme3', 'asd', 'asd', '2019-01-27 11:57:32.362345', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, 0, 1, 1, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_ariza_takip`
-- (See below for the actual view)
--
CREATE TABLE `v_ariza_takip` (
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_detay`
-- (See below for the actual view)
--
CREATE TABLE `v_detay` (
`id` varchar(36)
,`projeid` int(11)
,`projeadi` varchar(200)
,`blokid` int(11)
,`blokadi` varchar(200)
,`katsayisi` int(11)
,`birkattakidairesayisi` int(11)
,`odasayisi` varchar(8)
,`metrekare` int(11)
,`blokkenarsol` varchar(200)
,`blokkenarsag` varchar(200)
,`blokkenaryukari` varchar(200)
,`blokkenarasagi` varchar(200)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_detay_2`
-- (See below for the actual view)
--
CREATE TABLE `v_detay_2` (
`id` varchar(36)
,`daireid` int(11)
,`blokid_id` int(11)
,`fiyat` int(11)
,`satisid` int(11)
,`odenen` int(11)
,`daireno` int(11)
,`adisoyadi` varchar(100)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_santiye_malzemeler`
-- (See below for the actual view)
--
CREATE TABLE `v_santiye_malzemeler` (
`id` varchar(36)
,`santiye_takip_id` int(11)
,`editoradi` varchar(200)
,`santiyeadi` varchar(200)
,`santiyeid` int(11)
,`malzemeadi` varchar(400)
,`malzememiktari` varchar(100)
,`tarih` date
,`tedarikci` varchar(600)
,`irsaliyeno` varchar(100)
,`faturano` varchar(100)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_satis`
-- (See below for the actual view)
--
CREATE TABLE `v_satis` (
`id` varchar(36)
,`projeid` int(11)
,`projeadi` varchar(200)
,`blokid` int(11)
,`blokadi` varchar(200)
,`daireid` int(11)
,`daireno` int(11)
,`fiyat` int(11)
,`satisid` int(11)
,`odenen` int(11)
,`adisoyadi` varchar(100)
,`hakkinda` longtext
,`tckimlik` varchar(22)
,`telefon` varchar(34)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_tapu_satis`
-- (See below for the actual view)
--
CREATE TABLE `v_tapu_satis` (
);

-- --------------------------------------------------------

--
-- Structure for view `v_ariza_takip`
--
DROP TABLE IF EXISTS `v_ariza_takip`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_ariza_takip`  AS  select uuid() AS `id`,`insaatWeb_ariza_takip`.`id` AS `ariza_takip_id`,`insaatWeb_ariza_takip`.`durum` AS `durum`,`insaatWeb_ariza_takip`.`sorun` AS `sorun`,`insaatWeb_yonetici`.`adi` AS `ekleyen`,`insaatWeb_ariza_takip`.`eklenmetarihi` AS `eklenmetarihi`,`yonetici_1`.`adi` AS `guncelleyen`,`insaatWeb_ariza_takip`.`guncellenmetarihi` AS `guncellenmetarihi`,concat(`insaatWeb_projeler`.`adi`,' - ',`insaatWeb_bloklar`.`adi`,' -  Daire No: ',`insaatWeb_daireler`.`no`) AS `title`,`insaatWeb_satis`.`adisoyadi` AS `adisoyadi`,`insaatWeb_ariza_takip`.`cozumnotu` AS `cozumNotu`,`insaatWeb_projeler`.`id` AS `projeid`,`insaatWeb_bloklar`.`id` AS `blokid`,`insaatWeb_ariza_takip`.`daireid_id` AS `daireid_id` from ((((`insaatWeb_ariza_takip` left join ((`insaatWeb_projeler` join `insaatWeb_bloklar` on((`insaatWeb_projeler`.`id` = `insaatWeb_bloklar`.`projeid_id`))) join `insaatWeb_daireler` on((`insaatWeb_bloklar`.`id` = `insaatWeb_daireler`.`blokid_id`))) on((`insaatWeb_daireler`.`id` = `insaatWeb_ariza_takip`.`daireid_id`))) left join `insaatWeb_yonetici` `yonetici_1` on((`insaatWeb_ariza_takip`.`guncelleyen` = `yonetici_1`.`id`))) left join `insaatWeb_yonetici` on((`insaatWeb_ariza_takip`.`ekleyen` = `insaatWeb_yonetici`.`id`))) left join `insaatWeb_satis` on((`insaatWeb_daireler`.`id` = `insaatWeb_satis`.`daireid_id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `v_detay`
--
DROP TABLE IF EXISTS `v_detay`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_detay`  AS  select uuid() AS `id`,`insaatWeb_projeler`.`id` AS `projeid`,`insaatWeb_projeler`.`adi` AS `projeadi`,`insaatWeb_bloklar`.`id` AS `blokid`,`insaatWeb_bloklar`.`adi` AS `blokadi`,`insaatWeb_bloklar`.`katsayisi` AS `katsayisi`,`insaatWeb_bloklar`.`birkattakidairesayisi` AS `birkattakidairesayisi`,`insaatWeb_bloklar`.`odasayisi` AS `odasayisi`,`insaatWeb_bloklar`.`metrekare` AS `metrekare`,`insaatWeb_bloklar`.`blokkenarsol` AS `blokkenarsol`,`insaatWeb_bloklar`.`blokkenarsag` AS `blokkenarsag`,`insaatWeb_bloklar`.`blokkenaryukari` AS `blokkenaryukari`,`insaatWeb_bloklar`.`blokkenarasagi` AS `blokkenarasagi` from (`insaatWeb_projeler` left join `insaatWeb_bloklar` on((`insaatWeb_projeler`.`id` = `insaatWeb_bloklar`.`projeid_id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `v_detay_2`
--
DROP TABLE IF EXISTS `v_detay_2`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_detay_2`  AS  select uuid() AS `id`,`insaatWeb_daireler`.`id` AS `daireid`,`insaatWeb_daireler`.`blokid_id` AS `blokid_id`,`insaatWeb_daireler`.`fiyat` AS `fiyat`,`insaatWeb_satis`.`id` AS `satisid`,`insaatWeb_satis`.`odenen` AS `odenen`,`insaatWeb_daireler`.`no` AS `daireno`,`insaatWeb_satis`.`adisoyadi` AS `adisoyadi` from (`insaatWeb_daireler` left join `insaatWeb_satis` on((`insaatWeb_daireler`.`id` = `insaatWeb_satis`.`daireid_id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `v_santiye_malzemeler`
--
DROP TABLE IF EXISTS `v_santiye_malzemeler`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_santiye_malzemeler`  AS  select uuid() AS `id`,`insaatWeb_santiye_takip`.`id` AS `santiye_takip_id`,`insaatWeb_yonetici`.`adi` AS `editoradi`,`insaatWeb_santiyeler`.`adi` AS `santiyeadi`,`insaatWeb_santiyeler`.`id` AS `santiyeid`,`insaatWeb_santiye_takip`.`malzemeadi` AS `malzemeadi`,`insaatWeb_santiye_takip`.`malzememiktari` AS `malzememiktari`,`insaatWeb_santiye_takip`.`tarih` AS `tarih`,`insaatWeb_santiye_takip`.`tedarikci` AS `tedarikci`,`insaatWeb_santiye_takip`.`irsaliyeno` AS `irsaliyeno`,`insaatWeb_santiye_takip`.`faturano` AS `faturano` from ((`insaatWeb_santiye_takip` left join `insaatWeb_yonetici` on((`insaatWeb_santiye_takip`.`editorid_id` = `insaatWeb_yonetici`.`id`))) left join `insaatWeb_santiyeler` on((`insaatWeb_santiye_takip`.`santiyeid_id` = `insaatWeb_santiyeler`.`id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `v_satis`
--
DROP TABLE IF EXISTS `v_satis`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_satis`  AS  select uuid() AS `id`,`insaatWeb_projeler`.`id` AS `projeid`,`insaatWeb_projeler`.`adi` AS `projeadi`,`insaatWeb_bloklar`.`id` AS `blokid`,`insaatWeb_bloklar`.`adi` AS `blokadi`,`insaatWeb_daireler`.`id` AS `daireid`,`insaatWeb_daireler`.`no` AS `daireno`,`insaatWeb_daireler`.`fiyat` AS `fiyat`,`insaatWeb_satis`.`id` AS `satisid`,`insaatWeb_satis`.`odenen` AS `odenen`,`insaatWeb_satis`.`adisoyadi` AS `adisoyadi`,`insaatWeb_satis`.`hakkinda` AS `hakkinda`,`insaatWeb_satis`.`tckimlik` AS `tckimlik`,`insaatWeb_satis`.`telefon` AS `telefon` from (`insaatWeb_projeler` left join (`insaatWeb_bloklar` left join (`insaatWeb_daireler` left join `insaatWeb_satis` on((`insaatWeb_daireler`.`id` = `insaatWeb_satis`.`daireid_id`))) on((`insaatWeb_daireler`.`blokid_id` = `insaatWeb_bloklar`.`id`))) on((`insaatWeb_bloklar`.`projeid_id` = `insaatWeb_projeler`.`id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `v_tapu_satis`
--
DROP TABLE IF EXISTS `v_tapu_satis`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_tapu_satis`  AS  select uuid() AS `id`,concat(`insaatWeb_projeler`.`adi`,' - ',`insaatWeb_bloklar`.`adi`,' No: ',`insaatWeb_daireler`.`no`) AS `daire`,`insaatWeb_yonetici`.`adi` AS `ekleyen`,`insaatWeb_tapu_satis`.`id` AS `tapu_satis_id`,`insaatWeb_tapu_satis`.`adisoyadi` AS `adisoyadi`,`insaatWeb_tapu_satis`.`meslek` AS `meslek`,`insaatWeb_tapu_satis`.`adres` AS `adres`,`insaatWeb_tapu_satis`.`telefon` AS `telefon`,`insaatWeb_tapu_satis`.`masraf` AS `masraf`,`insaatWeb_tapu_satis`.`tarih` AS `tarih`,`insaatWeb_tapu_satis`.`daireid` AS `daireid` from ((`insaatWeb_tapu_satis` left join ((`insaatWeb_projeler` join `insaatWeb_bloklar` on((`insaatWeb_projeler`.`id` = `insaatWeb_bloklar`.`projeid_id`))) join `insaatWeb_daireler` on((`insaatWeb_bloklar`.`id` = `insaatWeb_daireler`.`blokid_id`))) on((`insaatWeb_daireler`.`id` = `insaatWeb_tapu_satis`.`daireid`))) left join `insaatWeb_yonetici` on((`insaatWeb_tapu_satis`.`ekleyen` = `insaatWeb_yonetici`.`id`))) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `insaatWeb_abonelikler`
--
ALTER TABLE `insaatWeb_abonelikler`
  ADD PRIMARY KEY (`id`),
  ADD KEY `insaatWeb_abonelikler_ekleyen_id_3d34c817` (`ekleyen_id`);

--
-- Indexes for table `insaatWeb_ariza_takip`
--
ALTER TABLE `insaatWeb_ariza_takip`
  ADD PRIMARY KEY (`id`),
  ADD KEY `insaatWeb_ariza_taki_daireid_id_36a7eccb_fk_insaatWeb` (`daireid_id`),
  ADD KEY `insaatWeb_ariza_takip_ekleyen_id_1dfc8b9a` (`ekleyen_id`);

--
-- Indexes for table `insaatWeb_belge_kaydi`
--
ALTER TABLE `insaatWeb_belge_kaydi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `insaatWeb_belge_kaydi_ekleyen_id_4bef89b4` (`ekleyen_id`);

--
-- Indexes for table `insaatWeb_belge_kaydi_file`
--
ALTER TABLE `insaatWeb_belge_kaydi_file`
  ADD PRIMARY KEY (`id`),
  ADD KEY `insaatWeb_belge_kayd_kayit_id_330a9bf5_fk_insaatWeb` (`kayit_id`);

--
-- Indexes for table `insaatWeb_bina_kontrol`
--
ALTER TABLE `insaatWeb_bina_kontrol`
  ADD PRIMARY KEY (`id`),
  ADD KEY `insaatWeb_bina_kontr_ekleyen_id_4ef3388d_fk_insaatWeb` (`ekleyen_id`);

--
-- Indexes for table `insaatWeb_bina_kontrol_file`
--
ALTER TABLE `insaatWeb_bina_kontrol_file`
  ADD PRIMARY KEY (`id`),
  ADD KEY `insaatWeb_bina_kontr_kayit_id_0553edb6_fk_insaatWeb` (`kayit_id`);

--
-- Indexes for table `insaatWeb_bloklar`
--
ALTER TABLE `insaatWeb_bloklar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `insaatWeb_bloklar_projeid_id_6cd235f9_fk_insaatWeb_projeler_id` (`projeid_id`);

--
-- Indexes for table `insaatWeb_daireler`
--
ALTER TABLE `insaatWeb_daireler`
  ADD PRIMARY KEY (`id`),
  ADD KEY `insaatWeb_daireler_blokid_id_a65848c9_fk_insaatWeb_bloklar_id` (`blokid_id`);

--
-- Indexes for table `insaatWeb_halkla_iliskiler`
--
ALTER TABLE `insaatWeb_halkla_iliskiler`
  ADD PRIMARY KEY (`id`),
  ADD KEY `insaatWeb_halkla_iliskiler_ekleyen_id_e4b8b324` (`ekleyen_id`);

--
-- Indexes for table `insaatWeb_il`
--
ALTER TABLE `insaatWeb_il`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `insaatWeb_ilce`
--
ALTER TABLE `insaatWeb_ilce`
  ADD PRIMARY KEY (`id`),
  ADD KEY `insaatWeb_ilce_kayit_id_60037cd3_fk_insaatWeb_il_id` (`kayit_id`);

--
-- Indexes for table `insaatWeb_maliyet_kat`
--
ALTER TABLE `insaatWeb_maliyet_kat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `insaatWeb_maliyet_kayit`
--
ALTER TABLE `insaatWeb_maliyet_kayit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `insaatWeb_maliyet_ka_kat_id_d7d35dbe_fk_insaatWeb` (`kat_id`),
  ADD KEY `insaatWeb_maliyet_ka_projeid_id_df65d23d_fk_insaatWeb` (`projeid_id`),
  ADD KEY `insaatWeb_maliyet_kayit_ekleyen_id_146f46dd` (`ekleyen_id`);

--
-- Indexes for table `insaatWeb_maliyet_madde`
--
ALTER TABLE `insaatWeb_maliyet_madde`
  ADD PRIMARY KEY (`id`),
  ADD KEY `insaatWeb_maliyet_ma_kat_id_b9d61fa2_fk_insaatWeb` (`kat_id`);

--
-- Indexes for table `insaatWeb_maliyet_projeler`
--
ALTER TABLE `insaatWeb_maliyet_projeler`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `insaatWeb_portfoy_kayit`
--
ALTER TABLE `insaatWeb_portfoy_kayit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `insaatWeb_projeler`
--
ALTER TABLE `insaatWeb_projeler`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `insaatWeb_santiyeler`
--
ALTER TABLE `insaatWeb_santiyeler`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `insaatWeb_santiye_takip`
--
ALTER TABLE `insaatWeb_santiye_takip`
  ADD PRIMARY KEY (`id`),
  ADD KEY `insaatWeb_santiye_ta_editorid_id_39198e63_fk_insaatWeb` (`editorid_id`),
  ADD KEY `insaatWeb_santiye_ta_santiyeid_id_fc0def2a_fk_insaatWeb` (`santiyeid_id`);

--
-- Indexes for table `insaatWeb_satis`
--
ALTER TABLE `insaatWeb_satis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `insaatWeb_satis_daireid_id_6b963d15_fk_insaatWeb_daireler_id` (`daireid_id`);

--
-- Indexes for table `insaatWeb_tapu_alis`
--
ALTER TABLE `insaatWeb_tapu_alis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `insaatWeb_tapu_alis_ekleyen_id_bbf1d622` (`ekleyen_id`);

--
-- Indexes for table `insaatWeb_tapu_kat_irtifaki`
--
ALTER TABLE `insaatWeb_tapu_kat_irtifaki`
  ADD PRIMARY KEY (`id`),
  ADD KEY `insaatWeb_tapu_kat_irtifaki_ekleyen_id_4957a54a` (`ekleyen_id`);

--
-- Indexes for table `insaatWeb_tapu_kat_mulkiyeti`
--
ALTER TABLE `insaatWeb_tapu_kat_mulkiyeti`
  ADD PRIMARY KEY (`id`),
  ADD KEY `insaatWeb_tapu_kat_mulkiyeti_ekleyen_id_c046c9cc` (`ekleyen_id`);

--
-- Indexes for table `insaatWeb_tapu_satis`
--
ALTER TABLE `insaatWeb_tapu_satis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `insaatWeb_tapu_satis_daireid_id_8dc9ca19` (`daireid_id`),
  ADD KEY `insaatWeb_tapu_satis_ekleyen_id_efaf512e` (`ekleyen_id`);

--
-- Indexes for table `insaatWeb_yonetici`
--
ALTER TABLE `insaatWeb_yonetici`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;
--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;
--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT for table `insaatWeb_abonelikler`
--
ALTER TABLE `insaatWeb_abonelikler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `insaatWeb_ariza_takip`
--
ALTER TABLE `insaatWeb_ariza_takip`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `insaatWeb_belge_kaydi`
--
ALTER TABLE `insaatWeb_belge_kaydi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `insaatWeb_belge_kaydi_file`
--
ALTER TABLE `insaatWeb_belge_kaydi_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `insaatWeb_bina_kontrol`
--
ALTER TABLE `insaatWeb_bina_kontrol`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `insaatWeb_bina_kontrol_file`
--
ALTER TABLE `insaatWeb_bina_kontrol_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `insaatWeb_bloklar`
--
ALTER TABLE `insaatWeb_bloklar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `insaatWeb_daireler`
--
ALTER TABLE `insaatWeb_daireler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=211;
--
-- AUTO_INCREMENT for table `insaatWeb_halkla_iliskiler`
--
ALTER TABLE `insaatWeb_halkla_iliskiler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `insaatWeb_il`
--
ALTER TABLE `insaatWeb_il`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `insaatWeb_ilce`
--
ALTER TABLE `insaatWeb_ilce`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `insaatWeb_maliyet_kat`
--
ALTER TABLE `insaatWeb_maliyet_kat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `insaatWeb_maliyet_kayit`
--
ALTER TABLE `insaatWeb_maliyet_kayit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `insaatWeb_maliyet_madde`
--
ALTER TABLE `insaatWeb_maliyet_madde`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `insaatWeb_maliyet_projeler`
--
ALTER TABLE `insaatWeb_maliyet_projeler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `insaatWeb_portfoy_kayit`
--
ALTER TABLE `insaatWeb_portfoy_kayit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `insaatWeb_projeler`
--
ALTER TABLE `insaatWeb_projeler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `insaatWeb_santiyeler`
--
ALTER TABLE `insaatWeb_santiyeler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `insaatWeb_santiye_takip`
--
ALTER TABLE `insaatWeb_santiye_takip`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `insaatWeb_satis`
--
ALTER TABLE `insaatWeb_satis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `insaatWeb_tapu_alis`
--
ALTER TABLE `insaatWeb_tapu_alis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `insaatWeb_tapu_kat_irtifaki`
--
ALTER TABLE `insaatWeb_tapu_kat_irtifaki`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `insaatWeb_tapu_kat_mulkiyeti`
--
ALTER TABLE `insaatWeb_tapu_kat_mulkiyeti`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `insaatWeb_tapu_satis`
--
ALTER TABLE `insaatWeb_tapu_satis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `insaatWeb_yonetici`
--
ALTER TABLE `insaatWeb_yonetici`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

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
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `insaatWeb_abonelikler`
--
ALTER TABLE `insaatWeb_abonelikler`
  ADD CONSTRAINT `insaatWeb_abonelikle_ekleyen_id_3d34c817_fk_insaatWeb` FOREIGN KEY (`ekleyen_id`) REFERENCES `insaatWeb_yonetici` (`id`);

--
-- Constraints for table `insaatWeb_ariza_takip`
--
ALTER TABLE `insaatWeb_ariza_takip`
  ADD CONSTRAINT `insaatWeb_ariza_taki_daireid_id_36a7eccb_fk_insaatWeb` FOREIGN KEY (`daireid_id`) REFERENCES `insaatWeb_daireler` (`id`),
  ADD CONSTRAINT `insaatWeb_ariza_taki_ekleyen_id_1dfc8b9a_fk_insaatWeb` FOREIGN KEY (`ekleyen_id`) REFERENCES `insaatWeb_yonetici` (`id`);

--
-- Constraints for table `insaatWeb_belge_kaydi`
--
ALTER TABLE `insaatWeb_belge_kaydi`
  ADD CONSTRAINT `insaatWeb_belge_kayd_ekleyen_id_4bef89b4_fk_insaatWeb` FOREIGN KEY (`ekleyen_id`) REFERENCES `insaatWeb_yonetici` (`id`);

--
-- Constraints for table `insaatWeb_belge_kaydi_file`
--
ALTER TABLE `insaatWeb_belge_kaydi_file`
  ADD CONSTRAINT `insaatWeb_belge_kayd_kayit_id_330a9bf5_fk_insaatWeb` FOREIGN KEY (`kayit_id`) REFERENCES `insaatWeb_belge_kaydi` (`id`);

--
-- Constraints for table `insaatWeb_bina_kontrol`
--
ALTER TABLE `insaatWeb_bina_kontrol`
  ADD CONSTRAINT `insaatWeb_bina_kontr_ekleyen_id_4ef3388d_fk_insaatWeb` FOREIGN KEY (`ekleyen_id`) REFERENCES `insaatWeb_yonetici` (`id`);

--
-- Constraints for table `insaatWeb_bina_kontrol_file`
--
ALTER TABLE `insaatWeb_bina_kontrol_file`
  ADD CONSTRAINT `insaatWeb_bina_kontr_kayit_id_0553edb6_fk_insaatWeb` FOREIGN KEY (`kayit_id`) REFERENCES `insaatWeb_bina_kontrol` (`id`);

--
-- Constraints for table `insaatWeb_bloklar`
--
ALTER TABLE `insaatWeb_bloklar`
  ADD CONSTRAINT `insaatWeb_bloklar_projeid_id_6cd235f9_fk_insaatWeb_projeler_id` FOREIGN KEY (`projeid_id`) REFERENCES `insaatWeb_projeler` (`id`);

--
-- Constraints for table `insaatWeb_daireler`
--
ALTER TABLE `insaatWeb_daireler`
  ADD CONSTRAINT `insaatWeb_daireler_blokid_id_a65848c9_fk_insaatWeb_bloklar_id` FOREIGN KEY (`blokid_id`) REFERENCES `insaatWeb_bloklar` (`id`);

--
-- Constraints for table `insaatWeb_halkla_iliskiler`
--
ALTER TABLE `insaatWeb_halkla_iliskiler`
  ADD CONSTRAINT `insaatWeb_halkla_ili_ekleyen_id_e4b8b324_fk_insaatWeb` FOREIGN KEY (`ekleyen_id`) REFERENCES `insaatWeb_yonetici` (`id`);

--
-- Constraints for table `insaatWeb_ilce`
--
ALTER TABLE `insaatWeb_ilce`
  ADD CONSTRAINT `insaatWeb_ilce_kayit_id_60037cd3_fk_insaatWeb_il_id` FOREIGN KEY (`kayit_id`) REFERENCES `insaatWeb_il` (`id`);

--
-- Constraints for table `insaatWeb_maliyet_kayit`
--
ALTER TABLE `insaatWeb_maliyet_kayit`
  ADD CONSTRAINT `insaatWeb_maliyet_ka_ekleyen_id_146f46dd_fk_insaatWeb` FOREIGN KEY (`ekleyen_id`) REFERENCES `insaatWeb_yonetici` (`id`),
  ADD CONSTRAINT `insaatWeb_maliyet_ka_kat_id_d7d35dbe_fk_insaatWeb` FOREIGN KEY (`kat_id`) REFERENCES `insaatWeb_maliyet_kat` (`id`),
  ADD CONSTRAINT `insaatWeb_maliyet_ka_projeid_id_df65d23d_fk_insaatWeb` FOREIGN KEY (`projeid_id`) REFERENCES `insaatWeb_maliyet_projeler` (`id`);

--
-- Constraints for table `insaatWeb_maliyet_madde`
--
ALTER TABLE `insaatWeb_maliyet_madde`
  ADD CONSTRAINT `insaatWeb_maliyet_ma_kat_id_b9d61fa2_fk_insaatWeb` FOREIGN KEY (`kat_id`) REFERENCES `insaatWeb_maliyet_kat` (`id`);

--
-- Constraints for table `insaatWeb_santiye_takip`
--
ALTER TABLE `insaatWeb_santiye_takip`
  ADD CONSTRAINT `insaatWeb_santiye_ta_editorid_id_39198e63_fk_insaatWeb` FOREIGN KEY (`editorid_id`) REFERENCES `insaatWeb_yonetici` (`id`),
  ADD CONSTRAINT `insaatWeb_santiye_ta_santiyeid_id_fc0def2a_fk_insaatWeb` FOREIGN KEY (`santiyeid_id`) REFERENCES `insaatWeb_santiyeler` (`id`);

--
-- Constraints for table `insaatWeb_satis`
--
ALTER TABLE `insaatWeb_satis`
  ADD CONSTRAINT `insaatWeb_satis_daireid_id_6b963d15_fk_insaatWeb_daireler_id` FOREIGN KEY (`daireid_id`) REFERENCES `insaatWeb_daireler` (`id`);

--
-- Constraints for table `insaatWeb_tapu_alis`
--
ALTER TABLE `insaatWeb_tapu_alis`
  ADD CONSTRAINT `insaatWeb_tapu_alis_ekleyen_id_bbf1d622_fk_insaatWeb_yonetici_id` FOREIGN KEY (`ekleyen_id`) REFERENCES `insaatWeb_yonetici` (`id`);

--
-- Constraints for table `insaatWeb_tapu_kat_irtifaki`
--
ALTER TABLE `insaatWeb_tapu_kat_irtifaki`
  ADD CONSTRAINT `insaatWeb_tapu_kat_i_ekleyen_id_4957a54a_fk_insaatWeb` FOREIGN KEY (`ekleyen_id`) REFERENCES `insaatWeb_yonetici` (`id`);

--
-- Constraints for table `insaatWeb_tapu_kat_mulkiyeti`
--
ALTER TABLE `insaatWeb_tapu_kat_mulkiyeti`
  ADD CONSTRAINT `insaatWeb_tapu_kat_m_ekleyen_id_c046c9cc_fk_insaatWeb` FOREIGN KEY (`ekleyen_id`) REFERENCES `insaatWeb_yonetici` (`id`);

--
-- Constraints for table `insaatWeb_tapu_satis`
--
ALTER TABLE `insaatWeb_tapu_satis`
  ADD CONSTRAINT `insaatWeb_tapu_satis_daireid_id_8dc9ca19_fk_insaatWeb` FOREIGN KEY (`daireid_id`) REFERENCES `insaatWeb_daireler` (`id`),
  ADD CONSTRAINT `insaatWeb_tapu_satis_ekleyen_id_efaf512e_fk_insaatWeb` FOREIGN KEY (`ekleyen_id`) REFERENCES `insaatWeb_yonetici` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
