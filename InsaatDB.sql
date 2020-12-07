-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 07, 2020 at 02:34 PM
-- Server version: 5.5.68-MariaDB
-- PHP Version: 7.3.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
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
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
(25, 'Can add v_ariza_takip', 7, 'add_v_ariza_takip'),
(26, 'Can change v_ariza_takip', 7, 'change_v_ariza_takip'),
(27, 'Can delete v_ariza_takip', 7, 'delete_v_ariza_takip'),
(28, 'Can view v_ariza_takip', 7, 'view_v_ariza_takip'),
(29, 'Can add v_detay', 8, 'add_v_detay'),
(30, 'Can change v_detay', 8, 'change_v_detay'),
(31, 'Can delete v_detay', 8, 'delete_v_detay'),
(32, 'Can view v_detay', 8, 'view_v_detay'),
(33, 'Can add v_detay_2', 9, 'add_v_detay_2'),
(34, 'Can change v_detay_2', 9, 'change_v_detay_2'),
(35, 'Can delete v_detay_2', 9, 'delete_v_detay_2'),
(36, 'Can view v_detay_2', 9, 'view_v_detay_2'),
(37, 'Can add v_santiye_malzemeler', 10, 'add_v_santiye_malzemeler'),
(38, 'Can change v_santiye_malzemeler', 10, 'change_v_santiye_malzemeler'),
(39, 'Can delete v_santiye_malzemeler', 10, 'delete_v_santiye_malzemeler'),
(40, 'Can view v_santiye_malzemeler', 10, 'view_v_santiye_malzemeler'),
(41, 'Can add v_satis', 11, 'add_v_satis'),
(42, 'Can change v_satis', 11, 'change_v_satis'),
(43, 'Can delete v_satis', 11, 'delete_v_satis'),
(44, 'Can view v_satis', 11, 'view_v_satis'),
(45, 'Can add v_tapu_satis', 12, 'add_v_tapu_satis'),
(46, 'Can change v_tapu_satis', 12, 'change_v_tapu_satis'),
(47, 'Can delete v_tapu_satis', 12, 'delete_v_tapu_satis'),
(48, 'Can view v_tapu_satis', 12, 'view_v_tapu_satis'),
(49, 'Can add abonelikler', 13, 'add_abonelikler'),
(50, 'Can change abonelikler', 13, 'change_abonelikler'),
(51, 'Can delete abonelikler', 13, 'delete_abonelikler'),
(52, 'Can view abonelikler', 13, 'view_abonelikler'),
(53, 'Can add ariza_ takip', 14, 'add_ariza_takip'),
(54, 'Can change ariza_ takip', 14, 'change_ariza_takip'),
(55, 'Can delete ariza_ takip', 14, 'delete_ariza_takip'),
(56, 'Can view ariza_ takip', 14, 'view_ariza_takip'),
(57, 'Can add belge_ kaydi', 15, 'add_belge_kaydi'),
(58, 'Can change belge_ kaydi', 15, 'change_belge_kaydi'),
(59, 'Can delete belge_ kaydi', 15, 'delete_belge_kaydi'),
(60, 'Can view belge_ kaydi', 15, 'view_belge_kaydi'),
(61, 'Can add belge_ kaydi_ file', 16, 'add_belge_kaydi_file'),
(62, 'Can change belge_ kaydi_ file', 16, 'change_belge_kaydi_file'),
(63, 'Can delete belge_ kaydi_ file', 16, 'delete_belge_kaydi_file'),
(64, 'Can view belge_ kaydi_ file', 16, 'view_belge_kaydi_file'),
(65, 'Can add bina_ kontrol', 17, 'add_bina_kontrol'),
(66, 'Can change bina_ kontrol', 17, 'change_bina_kontrol'),
(67, 'Can delete bina_ kontrol', 17, 'delete_bina_kontrol'),
(68, 'Can view bina_ kontrol', 17, 'view_bina_kontrol'),
(69, 'Can add bina_ kontrol_ file', 18, 'add_bina_kontrol_file'),
(70, 'Can change bina_ kontrol_ file', 18, 'change_bina_kontrol_file'),
(71, 'Can delete bina_ kontrol_ file', 18, 'delete_bina_kontrol_file'),
(72, 'Can view bina_ kontrol_ file', 18, 'view_bina_kontrol_file'),
(73, 'Can add bloklar', 19, 'add_bloklar'),
(74, 'Can change bloklar', 19, 'change_bloklar'),
(75, 'Can delete bloklar', 19, 'delete_bloklar'),
(76, 'Can view bloklar', 19, 'view_bloklar'),
(77, 'Can add daireler', 20, 'add_daireler'),
(78, 'Can change daireler', 20, 'change_daireler'),
(79, 'Can delete daireler', 20, 'delete_daireler'),
(80, 'Can view daireler', 20, 'view_daireler'),
(81, 'Can add halkla_ iliskiler', 21, 'add_halkla_iliskiler'),
(82, 'Can change halkla_ iliskiler', 21, 'change_halkla_iliskiler'),
(83, 'Can delete halkla_ iliskiler', 21, 'delete_halkla_iliskiler'),
(84, 'Can view halkla_ iliskiler', 21, 'view_halkla_iliskiler'),
(85, 'Can add il', 22, 'add_il'),
(86, 'Can change il', 22, 'change_il'),
(87, 'Can delete il', 22, 'delete_il'),
(88, 'Can view il', 22, 'view_il'),
(89, 'Can add ilce', 23, 'add_ilce'),
(90, 'Can change ilce', 23, 'change_ilce'),
(91, 'Can delete ilce', 23, 'delete_ilce'),
(92, 'Can view ilce', 23, 'view_ilce'),
(93, 'Can add portfoy_ kayit', 24, 'add_portfoy_kayit'),
(94, 'Can change portfoy_ kayit', 24, 'change_portfoy_kayit'),
(95, 'Can delete portfoy_ kayit', 24, 'delete_portfoy_kayit'),
(96, 'Can view portfoy_ kayit', 24, 'view_portfoy_kayit'),
(97, 'Can add projeler', 25, 'add_projeler'),
(98, 'Can change projeler', 25, 'change_projeler'),
(99, 'Can delete projeler', 25, 'delete_projeler'),
(100, 'Can view projeler', 25, 'view_projeler'),
(101, 'Can add santiye_ takip', 26, 'add_santiye_takip'),
(102, 'Can change santiye_ takip', 26, 'change_santiye_takip'),
(103, 'Can delete santiye_ takip', 26, 'delete_santiye_takip'),
(104, 'Can view santiye_ takip', 26, 'view_santiye_takip'),
(105, 'Can add santiyeler', 27, 'add_santiyeler'),
(106, 'Can change santiyeler', 27, 'change_santiyeler'),
(107, 'Can delete santiyeler', 27, 'delete_santiyeler'),
(108, 'Can view santiyeler', 27, 'view_santiyeler'),
(109, 'Can add satis', 28, 'add_satis'),
(110, 'Can change satis', 28, 'change_satis'),
(111, 'Can delete satis', 28, 'delete_satis'),
(112, 'Can view satis', 28, 'view_satis'),
(113, 'Can add tapu_ alis', 29, 'add_tapu_alis'),
(114, 'Can change tapu_ alis', 29, 'change_tapu_alis'),
(115, 'Can delete tapu_ alis', 29, 'delete_tapu_alis'),
(116, 'Can view tapu_ alis', 29, 'view_tapu_alis'),
(117, 'Can add tapu_ kat_ irtifaki', 30, 'add_tapu_kat_irtifaki'),
(118, 'Can change tapu_ kat_ irtifaki', 30, 'change_tapu_kat_irtifaki'),
(119, 'Can delete tapu_ kat_ irtifaki', 30, 'delete_tapu_kat_irtifaki'),
(120, 'Can view tapu_ kat_ irtifaki', 30, 'view_tapu_kat_irtifaki'),
(121, 'Can add tapu_ kat_ mulkiyeti', 31, 'add_tapu_kat_mulkiyeti'),
(122, 'Can change tapu_ kat_ mulkiyeti', 31, 'change_tapu_kat_mulkiyeti'),
(123, 'Can delete tapu_ kat_ mulkiyeti', 31, 'delete_tapu_kat_mulkiyeti'),
(124, 'Can view tapu_ kat_ mulkiyeti', 31, 'view_tapu_kat_mulkiyeti'),
(125, 'Can add tapu_ satis', 32, 'add_tapu_satis'),
(126, 'Can change tapu_ satis', 32, 'change_tapu_satis'),
(127, 'Can delete tapu_ satis', 32, 'delete_tapu_satis'),
(128, 'Can view tapu_ satis', 32, 'view_tapu_satis'),
(129, 'Can add yonetici', 33, 'add_yonetici'),
(130, 'Can change yonetici', 33, 'change_yonetici'),
(131, 'Can delete yonetici', 33, 'delete_yonetici'),
(132, 'Can view yonetici', 33, 'view_yonetici'),
(133, 'Can add maliyet_ projeler', 34, 'add_maliyet_projeler'),
(134, 'Can change maliyet_ projeler', 34, 'change_maliyet_projeler'),
(135, 'Can delete maliyet_ projeler', 34, 'delete_maliyet_projeler'),
(136, 'Can view maliyet_ projeler', 34, 'view_maliyet_projeler'),
(137, 'Can add maliyet_ kategori', 35, 'add_maliyet_kategori'),
(138, 'Can change maliyet_ kategori', 35, 'change_maliyet_kategori'),
(139, 'Can delete maliyet_ kategori', 35, 'delete_maliyet_kategori'),
(140, 'Can view maliyet_ kategori', 35, 'view_maliyet_kategori'),
(141, 'Can add maliyet_ kayit', 36, 'add_maliyet_kayit'),
(142, 'Can change maliyet_ kayit', 36, 'change_maliyet_kayit'),
(143, 'Can delete maliyet_ kayit', 36, 'delete_maliyet_kayit'),
(144, 'Can view maliyet_ kayit', 36, 'view_maliyet_kayit'),
(145, 'Can add maliyet_ madde', 37, 'add_maliyet_madde'),
(146, 'Can change maliyet_ madde', 37, 'change_maliyet_madde'),
(147, 'Can delete maliyet_ madde', 37, 'delete_maliyet_madde'),
(148, 'Can view maliyet_ madde', 37, 'view_maliyet_madde');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$150000$Apkndffo58kj$uWJmnAICMsXo7GN6P49mFstVF9qyzp4499Y5jW2WgvM=', '2020-02-28 12:55:51.327065', 1, 'muhendisbey', '', '', '', 1, 1, '2020-02-28 12:55:17.148392'),
(2, 'pbkdf2_sha256$100000$U2zjABcXmbe0$ytBx0E7JOo/PdywGRTHKPR0RVdBrVYjE40MK/OGHZ18=', '2020-04-03 12:50:45.000000', 1, 'admin', '', '', '', 1, 1, '2020-04-03 12:50:36.000000');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2020-02-28 12:58:09.526181', '1', 'Ayşenur Tartan 2020-02-28 16:17:57+03:00', 1, '[{\"added\": {}}]', 33, 1),
(2, '2020-02-28 13:02:42.104873', '1', 'Ankara', 1, '[{\"added\": {}}]', 22, 1),
(3, '2020-02-28 13:03:29.978797', '1', 'Ankara - Mamak', 1, '[{\"added\": {}}]', 23, 1),
(4, '2020-02-28 13:03:47.428489', '2', 'Ankara - Polatlı', 1, '[{\"added\": {}}]', 23, 1),
(5, '2020-02-28 13:03:59.967163', '3', 'Ankara - Çubuk', 1, '[{\"added\": {}}]', 23, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
(14, 'insaatWeb', 'ariza_takip'),
(15, 'insaatWeb', 'belge_kaydi'),
(16, 'insaatWeb', 'belge_kaydi_file'),
(17, 'insaatWeb', 'bina_kontrol'),
(18, 'insaatWeb', 'bina_kontrol_file'),
(19, 'insaatWeb', 'bloklar'),
(20, 'insaatWeb', 'daireler'),
(21, 'insaatWeb', 'halkla_iliskiler'),
(22, 'insaatWeb', 'il'),
(23, 'insaatWeb', 'ilce'),
(35, 'insaatWeb', 'maliyet_kategori'),
(36, 'insaatWeb', 'maliyet_kayit'),
(37, 'insaatWeb', 'maliyet_madde'),
(34, 'insaatWeb', 'maliyet_projeler'),
(24, 'insaatWeb', 'portfoy_kayit'),
(25, 'insaatWeb', 'projeler'),
(27, 'insaatWeb', 'santiyeler'),
(26, 'insaatWeb', 'santiye_takip'),
(28, 'insaatWeb', 'satis'),
(29, 'insaatWeb', 'tapu_alis'),
(30, 'insaatWeb', 'tapu_kat_irtifaki'),
(31, 'insaatWeb', 'tapu_kat_mulkiyeti'),
(32, 'insaatWeb', 'tapu_satis'),
(7, 'insaatWeb', 'v_ariza_takip'),
(8, 'insaatWeb', 'v_detay'),
(9, 'insaatWeb', 'v_detay_2'),
(10, 'insaatWeb', 'v_santiye_malzemeler'),
(11, 'insaatWeb', 'v_satis'),
(12, 'insaatWeb', 'v_tapu_satis'),
(33, 'insaatWeb', 'yonetici'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-02-28 11:51:23.428890'),
(2, 'auth', '0001_initial', '2020-02-28 11:51:25.254403'),
(3, 'admin', '0001_initial', '2020-02-28 11:51:27.025004'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-02-28 11:51:27.337072'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-02-28 11:51:27.353761'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-02-28 11:51:27.506830'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-02-28 11:51:27.590653'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-02-28 11:51:27.680437'),
(9, 'auth', '0004_alter_user_username_opts', '2020-02-28 11:51:27.698090'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-02-28 11:51:27.792193'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-02-28 11:51:27.799620'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-02-28 11:51:27.820447'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-02-28 11:51:27.930128'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-02-28 11:51:28.009972'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-02-28 11:51:28.093668'),
(16, 'auth', '0011_update_proxy_permissions', '2020-02-28 11:51:28.114371'),
(17, 'insaatWeb', '0001_initial', '2020-02-28 11:51:42.680534'),
(18, 'insaatWeb', '0002_maliyet_projeler', '2020-02-28 11:51:43.213024'),
(19, 'insaatWeb', '0003_maliyet_kategori', '2020-02-28 11:51:43.377828'),
(20, 'insaatWeb', '0004_auto_20190319_1318', '2020-02-28 11:51:43.735387'),
(21, 'sessions', '0001_initial', '2020-02-28 11:51:44.646616');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('29x7512uss21qsssmztf9hjrwtstaupm', 'YTMwOTFhOGFkMDQ5Mzk0OTM0MmNkNGM2ZDBiMTJkYjkwMGE2ZjIzYjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmYjdhODY5NmUxZWYyNzgxYzdmMDNjNjdlZjdjZGM2MWQ3Y2JhYTc1IiwiaWQiOjEsImFkaSI6IkF5XHUwMTVmZW51ciBUYXJ0YW4iLCJrYWRpIjoiYWRtaW4iLCJzaWZyZSI6ImFkbWluIiwibG9nIjp0cnVlLCJzYXRpc3BhemFybGFtYSI6dHJ1ZSwibXVzdGVyaXBvcnRmb3kiOnRydWUsInNhbnRpeWV0YWtpcCI6dHJ1ZSwiYXJpemF0YWtpcCI6dHJ1ZSwidGFwdXNpY2lsIjp0cnVlLCJhYm9uZWxpayI6dHJ1ZSwiaGFsa2xhaWxpc2tpbGVyIjp0cnVlLCJiZWxnZWtheWRpIjp0cnVlLCJtYWxpeWV0Ijp0cnVlLCJiaW5ha29udHJvbCI6dHJ1ZSwicHJvamVla2xlIjp0cnVlLCJwcm9qZWR1emVubGUiOnRydWUsInByb2plc2lsIjp0cnVlLCJibG9rZWtsZSI6dHJ1ZSwiYmxva2R1emVubGUiOnRydWUsImJsb2tzaWwiOnRydWUsImRhaXJlZWtsZSI6dHJ1ZSwiZGFpcmVkdXplbmxlIjp0cnVlLCJkYWlyZXNpbCI6dHJ1ZSwic2F0aXNla2xlIjp0cnVlLCJzYXRpc2R1emVubGUiOnRydWUsInNhdGlzc2lsIjp0cnVlLCJwb3J0Zm95ZWtsZSI6dHJ1ZSwicG9ydGZveWR1emVubGUiOnRydWUsInBvcnRmb3lzaWwiOnRydWUsInNhbnRpeWVla2xlIjp0cnVlLCJzYW50aXllZHV6ZW5sZSI6dHJ1ZSwic2FudGl5ZXNpbCI6dHJ1ZSwic2FudGl5ZW1hbHplbWVla2xlIjp0cnVlLCJzYW50aXllbWFsemVtZWR1emVubGUiOnRydWUsInNhbnRpeWVtYWx6ZW1lc2lsIjp0cnVlLCJhcml6YWtheWRpZWtsZSI6dHJ1ZSwiYXJpemFrYXlkaWR1emVubGUiOnRydWUsImFyaXpha2F5ZGlzaWwiOnRydWUsImFyaXphdGFraXBrb250cm9sdSI6dHJ1ZSwidGFwdXNpY2lsZWtsZSI6dHJ1ZSwidGFwdXNpY2lsZHV6ZW5sZSI6dHJ1ZSwidGFwdXNpY2lsc2lsIjp0cnVlLCJhYm9uZWxpa2VrbGUiOnRydWUsImFib25lbGlrZHV6ZW5sZSI6dHJ1ZSwiYWJvbmVsaWtzaWwiOnRydWUsImhhbGtsYWlsaXNraWxlcmVrbGUiOnRydWUsImhhbGtsYWlsaXNraWxlcmR1emVubGUiOnRydWUsImhhbGtsYWlsaXNraWxlcnNpbCI6dHJ1ZSwiYmVsZ2VrYXlkaWVrbGUiOnRydWUsImJlbGdla2F5ZGlkdXplbmxlIjp0cnVlLCJiZWxnZWtheWRpc2lsIjp0cnVlLCJtYWxpeWV0ZWtsZSI6dHJ1ZSwibWFsaXlldGR1emVubGUiOnRydWUsIm1hbGl5ZXRzaWwiOnRydWUsImJpbmFrb250cm9sZWtsZSI6dHJ1ZSwiYmluYWtvbnRyb2xkdXplbmxlIjp0cnVlLCJiaW5ha29udHJvbHNpbCI6dHJ1ZSwieW9uZXRpY2lla2xlIjp0cnVlLCJ5b25ldGljaWR1emVubGUiOnRydWUsInlvbmV0aWNpc2lsIjp0cnVlLCJtZW51MSI6MTAsIm1lbnUyIjowfQ==', '2020-03-13 14:34:01.949441'),
('2u5qdwoanlpyde58igwvydyqf16wv6mh', 'N2Y4ZjRlZmE1NGZhMjc4M2E4MGM3MThkOTE3YTNlZDJkNWI1OWUyNTp7ImlkIjoxLCJhZGkiOiJBeVx1MDE1ZmVudXIgVGFydGFuIiwia2FkaSI6ImFkbWluIiwic2lmcmUiOiJhZG1pbiIsImxvZyI6dHJ1ZSwic2F0aXNwYXphcmxhbWEiOnRydWUsIm11c3Rlcmlwb3J0Zm95Ijp0cnVlLCJzYW50aXlldGFraXAiOnRydWUsImFyaXphdGFraXAiOnRydWUsInRhcHVzaWNpbCI6dHJ1ZSwiYWJvbmVsaWsiOnRydWUsImhhbGtsYWlsaXNraWxlciI6dHJ1ZSwiYmVsZ2VrYXlkaSI6dHJ1ZSwibWFsaXlldCI6dHJ1ZSwiYmluYWtvbnRyb2wiOnRydWUsInByb2plZWtsZSI6dHJ1ZSwicHJvamVkdXplbmxlIjp0cnVlLCJwcm9qZXNpbCI6dHJ1ZSwiYmxva2VrbGUiOnRydWUsImJsb2tkdXplbmxlIjp0cnVlLCJibG9rc2lsIjp0cnVlLCJkYWlyZWVrbGUiOnRydWUsImRhaXJlZHV6ZW5sZSI6dHJ1ZSwiZGFpcmVzaWwiOnRydWUsInNhdGlzZWtsZSI6dHJ1ZSwic2F0aXNkdXplbmxlIjp0cnVlLCJzYXRpc3NpbCI6dHJ1ZSwicG9ydGZveWVrbGUiOnRydWUsInBvcnRmb3lkdXplbmxlIjp0cnVlLCJwb3J0Zm95c2lsIjp0cnVlLCJzYW50aXllZWtsZSI6dHJ1ZSwic2FudGl5ZWR1emVubGUiOnRydWUsInNhbnRpeWVzaWwiOnRydWUsInNhbnRpeWVtYWx6ZW1lZWtsZSI6dHJ1ZSwic2FudGl5ZW1hbHplbWVkdXplbmxlIjp0cnVlLCJzYW50aXllbWFsemVtZXNpbCI6dHJ1ZSwiYXJpemFrYXlkaWVrbGUiOnRydWUsImFyaXpha2F5ZGlkdXplbmxlIjp0cnVlLCJhcml6YWtheWRpc2lsIjp0cnVlLCJhcml6YXRha2lwa29udHJvbHUiOnRydWUsInRhcHVzaWNpbGVrbGUiOnRydWUsInRhcHVzaWNpbGR1emVubGUiOnRydWUsInRhcHVzaWNpbHNpbCI6dHJ1ZSwiYWJvbmVsaWtla2xlIjp0cnVlLCJhYm9uZWxpa2R1emVubGUiOnRydWUsImFib25lbGlrc2lsIjp0cnVlLCJoYWxrbGFpbGlza2lsZXJla2xlIjp0cnVlLCJoYWxrbGFpbGlza2lsZXJkdXplbmxlIjp0cnVlLCJoYWxrbGFpbGlza2lsZXJzaWwiOnRydWUsImJlbGdla2F5ZGlla2xlIjp0cnVlLCJiZWxnZWtheWRpZHV6ZW5sZSI6dHJ1ZSwiYmVsZ2VrYXlkaXNpbCI6dHJ1ZSwibWFsaXlldGVrbGUiOnRydWUsIm1hbGl5ZXRkdXplbmxlIjp0cnVlLCJtYWxpeWV0c2lsIjp0cnVlLCJiaW5ha29udHJvbGVrbGUiOnRydWUsImJpbmFrb250cm9sZHV6ZW5sZSI6dHJ1ZSwiYmluYWtvbnRyb2xzaWwiOnRydWUsInlvbmV0aWNpZWtsZSI6dHJ1ZSwieW9uZXRpY2lkdXplbmxlIjp0cnVlLCJ5b25ldGljaXNpbCI6dHJ1ZSwibWVudTEiOjQsIm1lbnUyIjowfQ==', '2020-11-08 10:18:36.000000'),
('adgletl8hsg5wloavc4j7z0umwptvx5m', 'NDI5NGY2M2Q5NjdkZmZjNzlkMDMyM2RhMmQ2YzM0MmZhYzZlMWNkNDp7ImlkIjoxLCJhZGkiOm51bGwsImthZGkiOiJhZG1pbiIsInNpZnJlIjoiYWRtaW4iLCJsb2ciOmZhbHNlLCJzYXRpc3BhemFybGFtYSI6dHJ1ZSwibXVzdGVyaXBvcnRmb3kiOnRydWUsInNhbnRpeWV0YWtpcCI6dHJ1ZSwiYXJpemF0YWtpcCI6dHJ1ZSwidGFwdXNpY2lsIjp0cnVlLCJhYm9uZWxpayI6dHJ1ZSwiaGFsa2xhaWxpc2tpbGVyIjp0cnVlLCJiZWxnZWtheWRpIjp0cnVlLCJtYWxpeWV0Ijp0cnVlLCJiaW5ha29udHJvbCI6dHJ1ZSwicHJvamVla2xlIjp0cnVlLCJwcm9qZWR1emVubGUiOnRydWUsInByb2plc2lsIjp0cnVlLCJibG9rZWtsZSI6dHJ1ZSwiYmxva2R1emVubGUiOnRydWUsImJsb2tzaWwiOnRydWUsImRhaXJlZWtsZSI6dHJ1ZSwiZGFpcmVkdXplbmxlIjp0cnVlLCJkYWlyZXNpbCI6dHJ1ZSwic2F0aXNla2xlIjp0cnVlLCJzYXRpc2R1emVubGUiOnRydWUsInNhdGlzc2lsIjp0cnVlLCJwb3J0Zm95ZWtsZSI6dHJ1ZSwicG9ydGZveWR1emVubGUiOnRydWUsInBvcnRmb3lzaWwiOnRydWUsInNhbnRpeWVla2xlIjp0cnVlLCJzYW50aXllZHV6ZW5sZSI6dHJ1ZSwic2FudGl5ZXNpbCI6dHJ1ZSwic2FudGl5ZW1hbHplbWVla2xlIjp0cnVlLCJzYW50aXllbWFsemVtZWR1emVubGUiOnRydWUsInNhbnRpeWVtYWx6ZW1lc2lsIjp0cnVlLCJhcml6YWtheWRpZWtsZSI6dHJ1ZSwiYXJpemFrYXlkaWR1emVubGUiOnRydWUsImFyaXpha2F5ZGlzaWwiOnRydWUsImFyaXphdGFraXBrb250cm9sdSI6dHJ1ZSwidGFwdXNpY2lsZWtsZSI6dHJ1ZSwidGFwdXNpY2lsZHV6ZW5sZSI6dHJ1ZSwidGFwdXNpY2lsc2lsIjp0cnVlLCJhYm9uZWxpa2VrbGUiOnRydWUsImFib25lbGlrZHV6ZW5sZSI6dHJ1ZSwiYWJvbmVsaWtzaWwiOnRydWUsImhhbGtsYWlsaXNraWxlcmVrbGUiOnRydWUsImhhbGtsYWlsaXNraWxlcmR1emVubGUiOnRydWUsImhhbGtsYWlsaXNraWxlcnNpbCI6dHJ1ZSwiYmVsZ2VrYXlkaWVrbGUiOnRydWUsImJlbGdla2F5ZGlkdXplbmxlIjp0cnVlLCJiZWxnZWtheWRpc2lsIjp0cnVlLCJtYWxpeWV0ZWtsZSI6dHJ1ZSwibWFsaXlldGR1emVubGUiOnRydWUsIm1hbGl5ZXRzaWwiOnRydWUsImJpbmFrb250cm9sZWtsZSI6dHJ1ZSwiYmluYWtvbnRyb2xkdXplbmxlIjp0cnVlLCJiaW5ha29udHJvbHNpbCI6dHJ1ZSwieW9uZXRpY2lla2xlIjp0cnVlLCJ5b25ldGljaWR1emVubGUiOnRydWUsInlvbmV0aWNpc2lsIjp0cnVlLCJtZW51MSI6MCwibWVudTIiOjB9', '2020-05-28 21:11:29.000000'),
('bnar1baq9eytrhxkuarqg6wtptwv2rii', 'NmI3MTM4Mzg2ZjY2ZmM5ZDYxMzc5YzVhMjZmMzA4MDk5ZWNmZmQwMjp7ImlkIjoxLCJhZGkiOiJBeVx1MDE1ZmVudXIgVGFydGFuIiwia2FkaSI6ImFkbWluIiwic2lmcmUiOiJhZG1pbiIsImxvZyI6dHJ1ZSwic2F0aXNwYXphcmxhbWEiOnRydWUsIm11c3Rlcmlwb3J0Zm95Ijp0cnVlLCJzYW50aXlldGFraXAiOnRydWUsImFyaXphdGFraXAiOnRydWUsInRhcHVzaWNpbCI6dHJ1ZSwiYWJvbmVsaWsiOnRydWUsImhhbGtsYWlsaXNraWxlciI6dHJ1ZSwiYmVsZ2VrYXlkaSI6dHJ1ZSwibWFsaXlldCI6dHJ1ZSwiYmluYWtvbnRyb2wiOnRydWUsInByb2plZWtsZSI6dHJ1ZSwicHJvamVkdXplbmxlIjp0cnVlLCJwcm9qZXNpbCI6dHJ1ZSwiYmxva2VrbGUiOnRydWUsImJsb2tkdXplbmxlIjp0cnVlLCJibG9rc2lsIjp0cnVlLCJkYWlyZWVrbGUiOnRydWUsImRhaXJlZHV6ZW5sZSI6dHJ1ZSwiZGFpcmVzaWwiOnRydWUsInNhdGlzZWtsZSI6dHJ1ZSwic2F0aXNkdXplbmxlIjp0cnVlLCJzYXRpc3NpbCI6dHJ1ZSwicG9ydGZveWVrbGUiOnRydWUsInBvcnRmb3lkdXplbmxlIjp0cnVlLCJwb3J0Zm95c2lsIjp0cnVlLCJzYW50aXllZWtsZSI6dHJ1ZSwic2FudGl5ZWR1emVubGUiOnRydWUsInNhbnRpeWVzaWwiOnRydWUsInNhbnRpeWVtYWx6ZW1lZWtsZSI6dHJ1ZSwic2FudGl5ZW1hbHplbWVkdXplbmxlIjp0cnVlLCJzYW50aXllbWFsemVtZXNpbCI6dHJ1ZSwiYXJpemFrYXlkaWVrbGUiOnRydWUsImFyaXpha2F5ZGlkdXplbmxlIjp0cnVlLCJhcml6YWtheWRpc2lsIjp0cnVlLCJhcml6YXRha2lwa29udHJvbHUiOnRydWUsInRhcHVzaWNpbGVrbGUiOnRydWUsInRhcHVzaWNpbGR1emVubGUiOnRydWUsInRhcHVzaWNpbHNpbCI6dHJ1ZSwiYWJvbmVsaWtla2xlIjp0cnVlLCJhYm9uZWxpa2R1emVubGUiOnRydWUsImFib25lbGlrc2lsIjp0cnVlLCJoYWxrbGFpbGlza2lsZXJla2xlIjp0cnVlLCJoYWxrbGFpbGlza2lsZXJkdXplbmxlIjp0cnVlLCJoYWxrbGFpbGlza2lsZXJzaWwiOnRydWUsImJlbGdla2F5ZGlla2xlIjp0cnVlLCJiZWxnZWtheWRpZHV6ZW5sZSI6dHJ1ZSwiYmVsZ2VrYXlkaXNpbCI6dHJ1ZSwibWFsaXlldGVrbGUiOnRydWUsIm1hbGl5ZXRkdXplbmxlIjp0cnVlLCJtYWxpeWV0c2lsIjp0cnVlLCJiaW5ha29udHJvbGVrbGUiOnRydWUsImJpbmFrb250cm9sZHV6ZW5sZSI6dHJ1ZSwiYmluYWtvbnRyb2xzaWwiOnRydWUsInlvbmV0aWNpZWtsZSI6dHJ1ZSwieW9uZXRpY2lkdXplbmxlIjp0cnVlLCJ5b25ldGljaXNpbCI6dHJ1ZSwibWVudTEiOjAsIm1lbnUyIjowfQ==', '2020-11-07 19:13:48.000000'),
('ivem22z6olilzxpjwyjxmwycbbf3o1zf', 'YmU4OTg4YjVlMjVkOGM0YTFmOGFkY2E3ZTU0ZjE5ZjEwZDU2Y2JjMzp7ImlkIjoxLCJhZGkiOm51bGwsImthZGkiOiJhZG1pbiIsInNpZnJlIjoiYWRtaW4iLCJsb2ciOmZhbHNlLCJzYXRpc3BhemFybGFtYSI6dHJ1ZSwibXVzdGVyaXBvcnRmb3kiOnRydWUsInNhbnRpeWV0YWtpcCI6dHJ1ZSwiYXJpemF0YWtpcCI6dHJ1ZSwidGFwdXNpY2lsIjp0cnVlLCJhYm9uZWxpayI6dHJ1ZSwiaGFsa2xhaWxpc2tpbGVyIjp0cnVlLCJiZWxnZWtheWRpIjp0cnVlLCJtYWxpeWV0Ijp0cnVlLCJiaW5ha29udHJvbCI6dHJ1ZSwicHJvamVla2xlIjp0cnVlLCJwcm9qZWR1emVubGUiOnRydWUsInByb2plc2lsIjp0cnVlLCJibG9rZWtsZSI6dHJ1ZSwiYmxva2R1emVubGUiOnRydWUsImJsb2tzaWwiOnRydWUsImRhaXJlZWtsZSI6dHJ1ZSwiZGFpcmVkdXplbmxlIjp0cnVlLCJkYWlyZXNpbCI6dHJ1ZSwic2F0aXNla2xlIjp0cnVlLCJzYXRpc2R1emVubGUiOnRydWUsInNhdGlzc2lsIjp0cnVlLCJwb3J0Zm95ZWtsZSI6dHJ1ZSwicG9ydGZveWR1emVubGUiOnRydWUsInBvcnRmb3lzaWwiOnRydWUsInNhbnRpeWVla2xlIjp0cnVlLCJzYW50aXllZHV6ZW5sZSI6dHJ1ZSwic2FudGl5ZXNpbCI6dHJ1ZSwic2FudGl5ZW1hbHplbWVla2xlIjp0cnVlLCJzYW50aXllbWFsemVtZWR1emVubGUiOnRydWUsInNhbnRpeWVtYWx6ZW1lc2lsIjp0cnVlLCJhcml6YWtheWRpZWtsZSI6dHJ1ZSwiYXJpemFrYXlkaWR1emVubGUiOnRydWUsImFyaXpha2F5ZGlzaWwiOnRydWUsImFyaXphdGFraXBrb250cm9sdSI6dHJ1ZSwidGFwdXNpY2lsZWtsZSI6dHJ1ZSwidGFwdXNpY2lsZHV6ZW5sZSI6dHJ1ZSwidGFwdXNpY2lsc2lsIjp0cnVlLCJhYm9uZWxpa2VrbGUiOnRydWUsImFib25lbGlrZHV6ZW5sZSI6dHJ1ZSwiYWJvbmVsaWtzaWwiOnRydWUsImhhbGtsYWlsaXNraWxlcmVrbGUiOnRydWUsImhhbGtsYWlsaXNraWxlcmR1emVubGUiOnRydWUsImhhbGtsYWlsaXNraWxlcnNpbCI6dHJ1ZSwiYmVsZ2VrYXlkaWVrbGUiOnRydWUsImJlbGdla2F5ZGlkdXplbmxlIjp0cnVlLCJiZWxnZWtheWRpc2lsIjp0cnVlLCJtYWxpeWV0ZWtsZSI6dHJ1ZSwibWFsaXlldGR1emVubGUiOnRydWUsIm1hbGl5ZXRzaWwiOnRydWUsImJpbmFrb250cm9sZWtsZSI6dHJ1ZSwiYmluYWtvbnRyb2xkdXplbmxlIjp0cnVlLCJiaW5ha29udHJvbHNpbCI6dHJ1ZSwieW9uZXRpY2lla2xlIjp0cnVlLCJ5b25ldGljaWR1emVubGUiOnRydWUsInlvbmV0aWNpc2lsIjp0cnVlLCJtZW51MSI6MTEsIm1lbnUyIjowfQ==', '2020-06-23 11:09:41.000000'),
('pfl3j4t9lm8xet7jjmgas8crqbhks415', 'NDI5NGY2M2Q5NjdkZmZjNzlkMDMyM2RhMmQ2YzM0MmZhYzZlMWNkNDp7ImlkIjoxLCJhZGkiOm51bGwsImthZGkiOiJhZG1pbiIsInNpZnJlIjoiYWRtaW4iLCJsb2ciOmZhbHNlLCJzYXRpc3BhemFybGFtYSI6dHJ1ZSwibXVzdGVyaXBvcnRmb3kiOnRydWUsInNhbnRpeWV0YWtpcCI6dHJ1ZSwiYXJpemF0YWtpcCI6dHJ1ZSwidGFwdXNpY2lsIjp0cnVlLCJhYm9uZWxpayI6dHJ1ZSwiaGFsa2xhaWxpc2tpbGVyIjp0cnVlLCJiZWxnZWtheWRpIjp0cnVlLCJtYWxpeWV0Ijp0cnVlLCJiaW5ha29udHJvbCI6dHJ1ZSwicHJvamVla2xlIjp0cnVlLCJwcm9qZWR1emVubGUiOnRydWUsInByb2plc2lsIjp0cnVlLCJibG9rZWtsZSI6dHJ1ZSwiYmxva2R1emVubGUiOnRydWUsImJsb2tzaWwiOnRydWUsImRhaXJlZWtsZSI6dHJ1ZSwiZGFpcmVkdXplbmxlIjp0cnVlLCJkYWlyZXNpbCI6dHJ1ZSwic2F0aXNla2xlIjp0cnVlLCJzYXRpc2R1emVubGUiOnRydWUsInNhdGlzc2lsIjp0cnVlLCJwb3J0Zm95ZWtsZSI6dHJ1ZSwicG9ydGZveWR1emVubGUiOnRydWUsInBvcnRmb3lzaWwiOnRydWUsInNhbnRpeWVla2xlIjp0cnVlLCJzYW50aXllZHV6ZW5sZSI6dHJ1ZSwic2FudGl5ZXNpbCI6dHJ1ZSwic2FudGl5ZW1hbHplbWVla2xlIjp0cnVlLCJzYW50aXllbWFsemVtZWR1emVubGUiOnRydWUsInNhbnRpeWVtYWx6ZW1lc2lsIjp0cnVlLCJhcml6YWtheWRpZWtsZSI6dHJ1ZSwiYXJpemFrYXlkaWR1emVubGUiOnRydWUsImFyaXpha2F5ZGlzaWwiOnRydWUsImFyaXphdGFraXBrb250cm9sdSI6dHJ1ZSwidGFwdXNpY2lsZWtsZSI6dHJ1ZSwidGFwdXNpY2lsZHV6ZW5sZSI6dHJ1ZSwidGFwdXNpY2lsc2lsIjp0cnVlLCJhYm9uZWxpa2VrbGUiOnRydWUsImFib25lbGlrZHV6ZW5sZSI6dHJ1ZSwiYWJvbmVsaWtzaWwiOnRydWUsImhhbGtsYWlsaXNraWxlcmVrbGUiOnRydWUsImhhbGtsYWlsaXNraWxlcmR1emVubGUiOnRydWUsImhhbGtsYWlsaXNraWxlcnNpbCI6dHJ1ZSwiYmVsZ2VrYXlkaWVrbGUiOnRydWUsImJlbGdla2F5ZGlkdXplbmxlIjp0cnVlLCJiZWxnZWtheWRpc2lsIjp0cnVlLCJtYWxpeWV0ZWtsZSI6dHJ1ZSwibWFsaXlldGR1emVubGUiOnRydWUsIm1hbGl5ZXRzaWwiOnRydWUsImJpbmFrb250cm9sZWtsZSI6dHJ1ZSwiYmluYWtvbnRyb2xkdXplbmxlIjp0cnVlLCJiaW5ha29udHJvbHNpbCI6dHJ1ZSwieW9uZXRpY2lla2xlIjp0cnVlLCJ5b25ldGljaWR1emVubGUiOnRydWUsInlvbmV0aWNpc2lsIjp0cnVlLCJtZW51MSI6MCwibWVudTIiOjB9', '2020-11-07 19:12:21.000000'),
('po2hyxyub07uu6ijz4eiqa960sbxovlo', 'MjRkMjRjNTg5YWFkNzcyNGM3YTExMWI5YmZjODFkNTg0NGVjOTkyYTp7ImlkIjoxLCJhZGkiOiJBeVx1MDE1ZmVudXIgVGFydGFuIiwia2FkaSI6ImFkbWluIiwic2lmcmUiOiJhZG1pbiIsImxvZyI6dHJ1ZSwic2F0aXNwYXphcmxhbWEiOnRydWUsIm11c3Rlcmlwb3J0Zm95Ijp0cnVlLCJzYW50aXlldGFraXAiOnRydWUsImFyaXphdGFraXAiOnRydWUsInRhcHVzaWNpbCI6dHJ1ZSwiYWJvbmVsaWsiOnRydWUsImhhbGtsYWlsaXNraWxlciI6dHJ1ZSwiYmVsZ2VrYXlkaSI6dHJ1ZSwibWFsaXlldCI6dHJ1ZSwiYmluYWtvbnRyb2wiOnRydWUsInByb2plZWtsZSI6dHJ1ZSwicHJvamVkdXplbmxlIjp0cnVlLCJwcm9qZXNpbCI6dHJ1ZSwiYmxva2VrbGUiOnRydWUsImJsb2tkdXplbmxlIjp0cnVlLCJibG9rc2lsIjp0cnVlLCJkYWlyZWVrbGUiOnRydWUsImRhaXJlZHV6ZW5sZSI6dHJ1ZSwiZGFpcmVzaWwiOnRydWUsInNhdGlzZWtsZSI6dHJ1ZSwic2F0aXNkdXplbmxlIjp0cnVlLCJzYXRpc3NpbCI6dHJ1ZSwicG9ydGZveWVrbGUiOnRydWUsInBvcnRmb3lkdXplbmxlIjp0cnVlLCJwb3J0Zm95c2lsIjp0cnVlLCJzYW50aXllZWtsZSI6dHJ1ZSwic2FudGl5ZWR1emVubGUiOnRydWUsInNhbnRpeWVzaWwiOnRydWUsInNhbnRpeWVtYWx6ZW1lZWtsZSI6dHJ1ZSwic2FudGl5ZW1hbHplbWVkdXplbmxlIjp0cnVlLCJzYW50aXllbWFsemVtZXNpbCI6dHJ1ZSwiYXJpemFrYXlkaWVrbGUiOnRydWUsImFyaXpha2F5ZGlkdXplbmxlIjp0cnVlLCJhcml6YWtheWRpc2lsIjp0cnVlLCJhcml6YXRha2lwa29udHJvbHUiOnRydWUsInRhcHVzaWNpbGVrbGUiOnRydWUsInRhcHVzaWNpbGR1emVubGUiOnRydWUsInRhcHVzaWNpbHNpbCI6dHJ1ZSwiYWJvbmVsaWtla2xlIjp0cnVlLCJhYm9uZWxpa2R1emVubGUiOnRydWUsImFib25lbGlrc2lsIjp0cnVlLCJoYWxrbGFpbGlza2lsZXJla2xlIjp0cnVlLCJoYWxrbGFpbGlza2lsZXJkdXplbmxlIjp0cnVlLCJoYWxrbGFpbGlza2lsZXJzaWwiOnRydWUsImJlbGdla2F5ZGlla2xlIjp0cnVlLCJiZWxnZWtheWRpZHV6ZW5sZSI6dHJ1ZSwiYmVsZ2VrYXlkaXNpbCI6dHJ1ZSwibWFsaXlldGVrbGUiOnRydWUsIm1hbGl5ZXRkdXplbmxlIjp0cnVlLCJtYWxpeWV0c2lsIjp0cnVlLCJiaW5ha29udHJvbGVrbGUiOnRydWUsImJpbmFrb250cm9sZHV6ZW5sZSI6dHJ1ZSwiYmluYWtvbnRyb2xzaWwiOnRydWUsInlvbmV0aWNpZWtsZSI6dHJ1ZSwieW9uZXRpY2lkdXplbmxlIjp0cnVlLCJ5b25ldGljaXNpbCI6dHJ1ZSwibWVudTEiOjExLCJtZW51MiI6MH0=', '2020-06-22 08:50:27.000000'),
('s0ioppqilflp01hlzxm2xp31h80lkohe', 'MjRkMjRjNTg5YWFkNzcyNGM3YTExMWI5YmZjODFkNTg0NGVjOTkyYTp7ImlkIjoxLCJhZGkiOiJBeVx1MDE1ZmVudXIgVGFydGFuIiwia2FkaSI6ImFkbWluIiwic2lmcmUiOiJhZG1pbiIsImxvZyI6dHJ1ZSwic2F0aXNwYXphcmxhbWEiOnRydWUsIm11c3Rlcmlwb3J0Zm95Ijp0cnVlLCJzYW50aXlldGFraXAiOnRydWUsImFyaXphdGFraXAiOnRydWUsInRhcHVzaWNpbCI6dHJ1ZSwiYWJvbmVsaWsiOnRydWUsImhhbGtsYWlsaXNraWxlciI6dHJ1ZSwiYmVsZ2VrYXlkaSI6dHJ1ZSwibWFsaXlldCI6dHJ1ZSwiYmluYWtvbnRyb2wiOnRydWUsInByb2plZWtsZSI6dHJ1ZSwicHJvamVkdXplbmxlIjp0cnVlLCJwcm9qZXNpbCI6dHJ1ZSwiYmxva2VrbGUiOnRydWUsImJsb2tkdXplbmxlIjp0cnVlLCJibG9rc2lsIjp0cnVlLCJkYWlyZWVrbGUiOnRydWUsImRhaXJlZHV6ZW5sZSI6dHJ1ZSwiZGFpcmVzaWwiOnRydWUsInNhdGlzZWtsZSI6dHJ1ZSwic2F0aXNkdXplbmxlIjp0cnVlLCJzYXRpc3NpbCI6dHJ1ZSwicG9ydGZveWVrbGUiOnRydWUsInBvcnRmb3lkdXplbmxlIjp0cnVlLCJwb3J0Zm95c2lsIjp0cnVlLCJzYW50aXllZWtsZSI6dHJ1ZSwic2FudGl5ZWR1emVubGUiOnRydWUsInNhbnRpeWVzaWwiOnRydWUsInNhbnRpeWVtYWx6ZW1lZWtsZSI6dHJ1ZSwic2FudGl5ZW1hbHplbWVkdXplbmxlIjp0cnVlLCJzYW50aXllbWFsemVtZXNpbCI6dHJ1ZSwiYXJpemFrYXlkaWVrbGUiOnRydWUsImFyaXpha2F5ZGlkdXplbmxlIjp0cnVlLCJhcml6YWtheWRpc2lsIjp0cnVlLCJhcml6YXRha2lwa29udHJvbHUiOnRydWUsInRhcHVzaWNpbGVrbGUiOnRydWUsInRhcHVzaWNpbGR1emVubGUiOnRydWUsInRhcHVzaWNpbHNpbCI6dHJ1ZSwiYWJvbmVsaWtla2xlIjp0cnVlLCJhYm9uZWxpa2R1emVubGUiOnRydWUsImFib25lbGlrc2lsIjp0cnVlLCJoYWxrbGFpbGlza2lsZXJla2xlIjp0cnVlLCJoYWxrbGFpbGlza2lsZXJkdXplbmxlIjp0cnVlLCJoYWxrbGFpbGlza2lsZXJzaWwiOnRydWUsImJlbGdla2F5ZGlla2xlIjp0cnVlLCJiZWxnZWtheWRpZHV6ZW5sZSI6dHJ1ZSwiYmVsZ2VrYXlkaXNpbCI6dHJ1ZSwibWFsaXlldGVrbGUiOnRydWUsIm1hbGl5ZXRkdXplbmxlIjp0cnVlLCJtYWxpeWV0c2lsIjp0cnVlLCJiaW5ha29udHJvbGVrbGUiOnRydWUsImJpbmFrb250cm9sZHV6ZW5sZSI6dHJ1ZSwiYmluYWtvbnRyb2xzaWwiOnRydWUsInlvbmV0aWNpZWtsZSI6dHJ1ZSwieW9uZXRpY2lkdXplbmxlIjp0cnVlLCJ5b25ldGljaXNpbCI6dHJ1ZSwibWVudTEiOjExLCJtZW51MiI6MH0=', '2020-12-01 21:35:53.000000'),
('skhcdxflbz708zqcx03zhxxb0a4m7byl', 'NDU0N2ExYWRlZGQyNDc0MzY5ZmZjZDI4ZDkwNmQ2OWU1MzIwMmYyODp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjODRlY2I3YWUyZDI2YWQ3ZmY5MWY5OTc0NTk5NGQ0NDY2ZmE2MTAxIiwiaWQiOjEsImFkaSI6IkF5XHUwMTVmZW51ciBUYXJ0YW4iLCJrYWRpIjoiYWRtaW4iLCJzaWZyZSI6ImFkbWluIiwibG9nIjp0cnVlLCJzYXRpc3BhemFybGFtYSI6dHJ1ZSwibXVzdGVyaXBvcnRmb3kiOnRydWUsInNhbnRpeWV0YWtpcCI6dHJ1ZSwiYXJpemF0YWtpcCI6dHJ1ZSwidGFwdXNpY2lsIjp0cnVlLCJhYm9uZWxpayI6dHJ1ZSwiaGFsa2xhaWxpc2tpbGVyIjp0cnVlLCJiZWxnZWtheWRpIjp0cnVlLCJtYWxpeWV0Ijp0cnVlLCJiaW5ha29udHJvbCI6dHJ1ZSwicHJvamVla2xlIjp0cnVlLCJwcm9qZWR1emVubGUiOnRydWUsInByb2plc2lsIjp0cnVlLCJibG9rZWtsZSI6dHJ1ZSwiYmxva2R1emVubGUiOnRydWUsImJsb2tzaWwiOnRydWUsImRhaXJlZWtsZSI6dHJ1ZSwiZGFpcmVkdXplbmxlIjp0cnVlLCJkYWlyZXNpbCI6dHJ1ZSwic2F0aXNla2xlIjp0cnVlLCJzYXRpc2R1emVubGUiOnRydWUsInNhdGlzc2lsIjp0cnVlLCJwb3J0Zm95ZWtsZSI6dHJ1ZSwicG9ydGZveWR1emVubGUiOnRydWUsInBvcnRmb3lzaWwiOnRydWUsInNhbnRpeWVla2xlIjp0cnVlLCJzYW50aXllZHV6ZW5sZSI6dHJ1ZSwic2FudGl5ZXNpbCI6dHJ1ZSwic2FudGl5ZW1hbHplbWVla2xlIjp0cnVlLCJzYW50aXllbWFsemVtZWR1emVubGUiOnRydWUsInNhbnRpeWVtYWx6ZW1lc2lsIjp0cnVlLCJhcml6YWtheWRpZWtsZSI6dHJ1ZSwiYXJpemFrYXlkaWR1emVubGUiOnRydWUsImFyaXpha2F5ZGlzaWwiOnRydWUsImFyaXphdGFraXBrb250cm9sdSI6dHJ1ZSwidGFwdXNpY2lsZWtsZSI6dHJ1ZSwidGFwdXNpY2lsZHV6ZW5sZSI6dHJ1ZSwidGFwdXNpY2lsc2lsIjp0cnVlLCJhYm9uZWxpa2VrbGUiOnRydWUsImFib25lbGlrZHV6ZW5sZSI6dHJ1ZSwiYWJvbmVsaWtzaWwiOnRydWUsImhhbGtsYWlsaXNraWxlcmVrbGUiOnRydWUsImhhbGtsYWlsaXNraWxlcmR1emVubGUiOnRydWUsImhhbGtsYWlsaXNraWxlcnNpbCI6dHJ1ZSwiYmVsZ2VrYXlkaWVrbGUiOnRydWUsImJlbGdla2F5ZGlkdXplbmxlIjp0cnVlLCJiZWxnZWtheWRpc2lsIjp0cnVlLCJtYWxpeWV0ZWtsZSI6dHJ1ZSwibWFsaXlldGR1emVubGUiOnRydWUsIm1hbGl5ZXRzaWwiOnRydWUsImJpbmFrb250cm9sZWtsZSI6dHJ1ZSwiYmluYWtvbnRyb2xkdXplbmxlIjp0cnVlLCJiaW5ha29udHJvbHNpbCI6dHJ1ZSwieW9uZXRpY2lla2xlIjp0cnVlLCJ5b25ldGljaWR1emVubGUiOnRydWUsInlvbmV0aWNpc2lsIjp0cnVlLCJtZW51MSI6MSwibWVudTIiOjB9', '2020-04-17 14:17:51.000000'),
('wu4jqrbdpb48em61zhkqxxz4x1bhx8u7', 'NmI3MTM4Mzg2ZjY2ZmM5ZDYxMzc5YzVhMjZmMzA4MDk5ZWNmZmQwMjp7ImlkIjoxLCJhZGkiOiJBeVx1MDE1ZmVudXIgVGFydGFuIiwia2FkaSI6ImFkbWluIiwic2lmcmUiOiJhZG1pbiIsImxvZyI6dHJ1ZSwic2F0aXNwYXphcmxhbWEiOnRydWUsIm11c3Rlcmlwb3J0Zm95Ijp0cnVlLCJzYW50aXlldGFraXAiOnRydWUsImFyaXphdGFraXAiOnRydWUsInRhcHVzaWNpbCI6dHJ1ZSwiYWJvbmVsaWsiOnRydWUsImhhbGtsYWlsaXNraWxlciI6dHJ1ZSwiYmVsZ2VrYXlkaSI6dHJ1ZSwibWFsaXlldCI6dHJ1ZSwiYmluYWtvbnRyb2wiOnRydWUsInByb2plZWtsZSI6dHJ1ZSwicHJvamVkdXplbmxlIjp0cnVlLCJwcm9qZXNpbCI6dHJ1ZSwiYmxva2VrbGUiOnRydWUsImJsb2tkdXplbmxlIjp0cnVlLCJibG9rc2lsIjp0cnVlLCJkYWlyZWVrbGUiOnRydWUsImRhaXJlZHV6ZW5sZSI6dHJ1ZSwiZGFpcmVzaWwiOnRydWUsInNhdGlzZWtsZSI6dHJ1ZSwic2F0aXNkdXplbmxlIjp0cnVlLCJzYXRpc3NpbCI6dHJ1ZSwicG9ydGZveWVrbGUiOnRydWUsInBvcnRmb3lkdXplbmxlIjp0cnVlLCJwb3J0Zm95c2lsIjp0cnVlLCJzYW50aXllZWtsZSI6dHJ1ZSwic2FudGl5ZWR1emVubGUiOnRydWUsInNhbnRpeWVzaWwiOnRydWUsInNhbnRpeWVtYWx6ZW1lZWtsZSI6dHJ1ZSwic2FudGl5ZW1hbHplbWVkdXplbmxlIjp0cnVlLCJzYW50aXllbWFsemVtZXNpbCI6dHJ1ZSwiYXJpemFrYXlkaWVrbGUiOnRydWUsImFyaXpha2F5ZGlkdXplbmxlIjp0cnVlLCJhcml6YWtheWRpc2lsIjp0cnVlLCJhcml6YXRha2lwa29udHJvbHUiOnRydWUsInRhcHVzaWNpbGVrbGUiOnRydWUsInRhcHVzaWNpbGR1emVubGUiOnRydWUsInRhcHVzaWNpbHNpbCI6dHJ1ZSwiYWJvbmVsaWtla2xlIjp0cnVlLCJhYm9uZWxpa2R1emVubGUiOnRydWUsImFib25lbGlrc2lsIjp0cnVlLCJoYWxrbGFpbGlza2lsZXJla2xlIjp0cnVlLCJoYWxrbGFpbGlza2lsZXJkdXplbmxlIjp0cnVlLCJoYWxrbGFpbGlza2lsZXJzaWwiOnRydWUsImJlbGdla2F5ZGlla2xlIjp0cnVlLCJiZWxnZWtheWRpZHV6ZW5sZSI6dHJ1ZSwiYmVsZ2VrYXlkaXNpbCI6dHJ1ZSwibWFsaXlldGVrbGUiOnRydWUsIm1hbGl5ZXRkdXplbmxlIjp0cnVlLCJtYWxpeWV0c2lsIjp0cnVlLCJiaW5ha29udHJvbGVrbGUiOnRydWUsImJpbmFrb250cm9sZHV6ZW5sZSI6dHJ1ZSwiYmluYWtvbnRyb2xzaWwiOnRydWUsInlvbmV0aWNpZWtsZSI6dHJ1ZSwieW9uZXRpY2lkdXplbmxlIjp0cnVlLCJ5b25ldGljaXNpbCI6dHJ1ZSwibWVudTEiOjAsIm1lbnUyIjowfQ==', '2020-05-28 19:10:00.000000'),
('y1dqk8xeijb5dq5x5423rgst1fmqzhyz', 'OWE1Y2YwMWVlY2E2YjZjMzYwMzlmZDRkY2NkYjdmYjQ2YWMyZGU1MTp7ImlkIjoxLCJhZGkiOiJBeVx1MDE1ZmVudXIgVGFydGFuIiwia2FkaSI6ImFkbWluIiwic2lmcmUiOiJhZG1pbiIsImxvZyI6dHJ1ZSwic2F0aXNwYXphcmxhbWEiOnRydWUsIm11c3Rlcmlwb3J0Zm95Ijp0cnVlLCJzYW50aXlldGFraXAiOnRydWUsImFyaXphdGFraXAiOnRydWUsInRhcHVzaWNpbCI6dHJ1ZSwiYWJvbmVsaWsiOnRydWUsImhhbGtsYWlsaXNraWxlciI6dHJ1ZSwiYmVsZ2VrYXlkaSI6dHJ1ZSwibWFsaXlldCI6dHJ1ZSwiYmluYWtvbnRyb2wiOnRydWUsInByb2plZWtsZSI6dHJ1ZSwicHJvamVkdXplbmxlIjp0cnVlLCJwcm9qZXNpbCI6dHJ1ZSwiYmxva2VrbGUiOnRydWUsImJsb2tkdXplbmxlIjp0cnVlLCJibG9rc2lsIjp0cnVlLCJkYWlyZWVrbGUiOnRydWUsImRhaXJlZHV6ZW5sZSI6dHJ1ZSwiZGFpcmVzaWwiOnRydWUsInNhdGlzZWtsZSI6dHJ1ZSwic2F0aXNkdXplbmxlIjp0cnVlLCJzYXRpc3NpbCI6dHJ1ZSwicG9ydGZveWVrbGUiOnRydWUsInBvcnRmb3lkdXplbmxlIjp0cnVlLCJwb3J0Zm95c2lsIjp0cnVlLCJzYW50aXllZWtsZSI6dHJ1ZSwic2FudGl5ZWR1emVubGUiOnRydWUsInNhbnRpeWVzaWwiOnRydWUsInNhbnRpeWVtYWx6ZW1lZWtsZSI6dHJ1ZSwic2FudGl5ZW1hbHplbWVkdXplbmxlIjp0cnVlLCJzYW50aXllbWFsemVtZXNpbCI6dHJ1ZSwiYXJpemFrYXlkaWVrbGUiOnRydWUsImFyaXpha2F5ZGlkdXplbmxlIjp0cnVlLCJhcml6YWtheWRpc2lsIjp0cnVlLCJhcml6YXRha2lwa29udHJvbHUiOnRydWUsInRhcHVzaWNpbGVrbGUiOnRydWUsInRhcHVzaWNpbGR1emVubGUiOnRydWUsInRhcHVzaWNpbHNpbCI6dHJ1ZSwiYWJvbmVsaWtla2xlIjp0cnVlLCJhYm9uZWxpa2R1emVubGUiOnRydWUsImFib25lbGlrc2lsIjp0cnVlLCJoYWxrbGFpbGlza2lsZXJla2xlIjp0cnVlLCJoYWxrbGFpbGlza2lsZXJkdXplbmxlIjp0cnVlLCJoYWxrbGFpbGlza2lsZXJzaWwiOnRydWUsImJlbGdla2F5ZGlla2xlIjp0cnVlLCJiZWxnZWtheWRpZHV6ZW5sZSI6dHJ1ZSwiYmVsZ2VrYXlkaXNpbCI6dHJ1ZSwibWFsaXlldGVrbGUiOnRydWUsIm1hbGl5ZXRkdXplbmxlIjp0cnVlLCJtYWxpeWV0c2lsIjp0cnVlLCJiaW5ha29udHJvbGVrbGUiOnRydWUsImJpbmFrb250cm9sZHV6ZW5sZSI6dHJ1ZSwiYmluYWtvbnRyb2xzaWwiOnRydWUsInlvbmV0aWNpZWtsZSI6dHJ1ZSwieW9uZXRpY2lkdXplbmxlIjp0cnVlLCJ5b25ldGljaXNpbCI6dHJ1ZSwibWVudTEiOjIsIm1lbnUyIjowfQ==', '2020-11-07 19:20:39.000000'),
('ya31q8ezwhoobw14x49hl4kh203ez82g', 'NmI3MTM4Mzg2ZjY2ZmM5ZDYxMzc5YzVhMjZmMzA4MDk5ZWNmZmQwMjp7ImlkIjoxLCJhZGkiOiJBeVx1MDE1ZmVudXIgVGFydGFuIiwia2FkaSI6ImFkbWluIiwic2lmcmUiOiJhZG1pbiIsImxvZyI6dHJ1ZSwic2F0aXNwYXphcmxhbWEiOnRydWUsIm11c3Rlcmlwb3J0Zm95Ijp0cnVlLCJzYW50aXlldGFraXAiOnRydWUsImFyaXphdGFraXAiOnRydWUsInRhcHVzaWNpbCI6dHJ1ZSwiYWJvbmVsaWsiOnRydWUsImhhbGtsYWlsaXNraWxlciI6dHJ1ZSwiYmVsZ2VrYXlkaSI6dHJ1ZSwibWFsaXlldCI6dHJ1ZSwiYmluYWtvbnRyb2wiOnRydWUsInByb2plZWtsZSI6dHJ1ZSwicHJvamVkdXplbmxlIjp0cnVlLCJwcm9qZXNpbCI6dHJ1ZSwiYmxva2VrbGUiOnRydWUsImJsb2tkdXplbmxlIjp0cnVlLCJibG9rc2lsIjp0cnVlLCJkYWlyZWVrbGUiOnRydWUsImRhaXJlZHV6ZW5sZSI6dHJ1ZSwiZGFpcmVzaWwiOnRydWUsInNhdGlzZWtsZSI6dHJ1ZSwic2F0aXNkdXplbmxlIjp0cnVlLCJzYXRpc3NpbCI6dHJ1ZSwicG9ydGZveWVrbGUiOnRydWUsInBvcnRmb3lkdXplbmxlIjp0cnVlLCJwb3J0Zm95c2lsIjp0cnVlLCJzYW50aXllZWtsZSI6dHJ1ZSwic2FudGl5ZWR1emVubGUiOnRydWUsInNhbnRpeWVzaWwiOnRydWUsInNhbnRpeWVtYWx6ZW1lZWtsZSI6dHJ1ZSwic2FudGl5ZW1hbHplbWVkdXplbmxlIjp0cnVlLCJzYW50aXllbWFsemVtZXNpbCI6dHJ1ZSwiYXJpemFrYXlkaWVrbGUiOnRydWUsImFyaXpha2F5ZGlkdXplbmxlIjp0cnVlLCJhcml6YWtheWRpc2lsIjp0cnVlLCJhcml6YXRha2lwa29udHJvbHUiOnRydWUsInRhcHVzaWNpbGVrbGUiOnRydWUsInRhcHVzaWNpbGR1emVubGUiOnRydWUsInRhcHVzaWNpbHNpbCI6dHJ1ZSwiYWJvbmVsaWtla2xlIjp0cnVlLCJhYm9uZWxpa2R1emVubGUiOnRydWUsImFib25lbGlrc2lsIjp0cnVlLCJoYWxrbGFpbGlza2lsZXJla2xlIjp0cnVlLCJoYWxrbGFpbGlza2lsZXJkdXplbmxlIjp0cnVlLCJoYWxrbGFpbGlza2lsZXJzaWwiOnRydWUsImJlbGdla2F5ZGlla2xlIjp0cnVlLCJiZWxnZWtheWRpZHV6ZW5sZSI6dHJ1ZSwiYmVsZ2VrYXlkaXNpbCI6dHJ1ZSwibWFsaXlldGVrbGUiOnRydWUsIm1hbGl5ZXRkdXplbmxlIjp0cnVlLCJtYWxpeWV0c2lsIjp0cnVlLCJiaW5ha29udHJvbGVrbGUiOnRydWUsImJpbmFrb250cm9sZHV6ZW5sZSI6dHJ1ZSwiYmluYWtvbnRyb2xzaWwiOnRydWUsInlvbmV0aWNpZWtsZSI6dHJ1ZSwieW9uZXRpY2lkdXplbmxlIjp0cnVlLCJ5b25ldGljaXNpbCI6dHJ1ZSwibWVudTEiOjAsIm1lbnUyIjowfQ==', '2020-11-07 19:15:33.000000');

-- --------------------------------------------------------

--
-- Table structure for table `insaatWeb_abonelikler`
--

CREATE TABLE `insaatWeb_abonelikler` (
  `id` int(11) NOT NULL,
  `tur` smallint(6) NOT NULL,
  `aboneno` varchar(100) NOT NULL,
  `adres` longtext NOT NULL,
  `masraf` varchar(100) NOT NULL,
  `aciklama` longtext NOT NULL,
  `adapafta` varchar(30) NOT NULL,
  `tarih` date NOT NULL,
  `ekleyen_id` int(11) NOT NULL,
  `projeadi_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `insaatWeb_abonelikler`
--

INSERT INTO `insaatWeb_abonelikler` (`id`, `tur`, `aboneno`, `adres`, `masraf`, `aciklama`, `adapafta`, `tarih`, `ekleyen_id`, `projeadi_id`) VALUES
(1, 0, '12', 'konya', '400', 'Deneme Kaydı', '1/1', '2020-05-14', 1, 1),
(2, 0, '13', 'Ankara', '3000', 'Deneme', '2/1', '2020-05-14', 1, 2),
(3, 1, '345', 'Ankara', '400', 'Deneme', '4/1', '2020-05-14', 1, 3),
(4, 2, '134', 'Konya', '5000', 'Deneme', '5/2', '2020-05-14', 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `insaatWeb_ariza_takip`
--

CREATE TABLE `insaatWeb_ariza_takip` (
  `id` int(11) NOT NULL,
  `guncelleyen` int(11) NOT NULL,
  `durum` smallint(6) NOT NULL,
  `sorun` longtext NOT NULL,
  `cozumnotu` longtext NOT NULL,
  `eklenmetarihi` date NOT NULL,
  `guncellenmetarihi` date NOT NULL,
  `resim` varchar(100) NOT NULL,
  `daireid_id` int(11) NOT NULL,
  `ekleyen_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `insaatWeb_ariza_takip`
--

INSERT INTO `insaatWeb_ariza_takip` (`id`, `guncelleyen`, `durum`, `sorun`, `cozumnotu`, `eklenmetarihi`, `guncellenmetarihi`, `resim`, `daireid_id`, `ekleyen_id`) VALUES
(1, 1, -1, 'Giriş mermeri kırılmış', '', '2020-05-14', '2020-05-14', '', 39, 1),
(2, 1, 0, 'Pencere Canı Kırılmış', 'Servis gidip halledecek ', '2020-05-14', '2020-10-25', '', 36, 1),
(3, 1, 1, 'Tavan Alçısı Çatlamış', '', '2020-05-14', '2020-05-14', '', 104, 1),
(4, 1, 1, 'Mutfak mermeri eksik', '', '2020-05-14', '2020-06-08', '', 87, 1);

-- --------------------------------------------------------

--
-- Table structure for table `insaatWeb_belge_kaydi`
--

CREATE TABLE `insaatWeb_belge_kaydi` (
  `id` int(11) NOT NULL,
  `tur` smallint(6) NOT NULL,
  `tarih` date NOT NULL,
  `konu` varchar(200) NOT NULL,
  `kime` varchar(200) NOT NULL,
  `ekleyen_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `insaatWeb_belge_kaydi`
--

INSERT INTO `insaatWeb_belge_kaydi` (`id`, `tur`, `tarih`, `konu`, `kime`, `ekleyen_id`) VALUES
(1, 0, '2020-05-14', 'Tapu kaydı', 'Kartopu Beton Arme', 1),
(2, 0, '2020-05-14', 'Deneme', 'Hayal Dünyası', 1),
(3, 1, '2020-05-14', 'Malzeme ödeme seneti', 'Konya çimento', 1);

-- --------------------------------------------------------

--
-- Table structure for table `insaatWeb_belge_kaydi_file`
--

CREATE TABLE `insaatWeb_belge_kaydi_file` (
  `id` int(11) NOT NULL,
  `belge` varchar(100) NOT NULL,
  `kayit_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `insaatWeb_bina_kontrol`
--

CREATE TABLE `insaatWeb_bina_kontrol` (
  `id` int(11) NOT NULL,
  `hakkinda` longtext NOT NULL,
  `tarih` date NOT NULL,
  `eklenmetarihi` date NOT NULL,
  `ekleyen_id` int(11) NOT NULL,
  `projeadi_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `insaatWeb_bina_kontrol`
--

INSERT INTO `insaatWeb_bina_kontrol` (`id`, `hakkinda`, `tarih`, `eklenmetarihi`, `ekleyen_id`, `projeadi_id`) VALUES
(1, 'Sorunsuz kontrol sağlanmıştır.', '2020-05-01', '2020-05-14', 1, 1),
(2, 'Kontrol sırasında eksikler saptanmıştır', '2020-05-02', '2020-05-14', 1, 2),
(3, 'Kapılar monte edilmiştir', '2020-05-02', '2020-05-14', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `insaatWeb_bina_kontrol_file`
--

CREATE TABLE `insaatWeb_bina_kontrol_file` (
  `id` int(11) NOT NULL,
  `belge` varchar(100) NOT NULL,
  `kayit_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `insaatWeb_bloklar`
--

CREATE TABLE `insaatWeb_bloklar` (
  `id` int(11) NOT NULL,
  `adi` varchar(200) NOT NULL,
  `metrekare` int(11) NOT NULL,
  `odasayisi` varchar(8) NOT NULL,
  `katsayisi` int(11) NOT NULL,
  `birkattakidairesayisi` int(11) NOT NULL,
  `blokkenarsol` varchar(200) NOT NULL,
  `blokkenarsag` varchar(200) NOT NULL,
  `blokkenaryukari` varchar(200) NOT NULL,
  `blokkenarasagi` varchar(200) NOT NULL,
  `projeid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `insaatWeb_bloklar`
--

INSERT INTO `insaatWeb_bloklar` (`id`, `adi`, `metrekare`, `odasayisi`, `katsayisi`, `birkattakidairesayisi`, `blokkenarsol`, `blokkenarsag`, `blokkenaryukari`, `blokkenarasagi`, `projeid_id`) VALUES
(1, 'A Blok', 160, '3+1', 10, 4, '', '', '', '', 1),
(2, 'B Blok', 180, '4+1', 10, 3, '', '', '', '', 1),
(3, 'C Blok', 120, '2+2', 5, 4, '', '', '', '', 1),
(4, 'D Blok', 130, '2+1', 5, 3, '', '', '', '', 1),
(5, 'E', 125, '4+2', 12, 3, '', '', '', '', 1),
(6, 'a', 120, '3+1', 18, 2, '', '', '', '', 2),
(7, 'Blok ', 300, '1+0', 1, 1, '', '', '', '', 5);

-- --------------------------------------------------------

--
-- Table structure for table `insaatWeb_daireler`
--

CREATE TABLE `insaatWeb_daireler` (
  `id` int(11) NOT NULL,
  `no` int(11) NOT NULL,
  `fiyat` int(11) NOT NULL,
  `blokid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `insaatWeb_daireler`
--

INSERT INTO `insaatWeb_daireler` (`id`, `no`, `fiyat`, `blokid_id`) VALUES
(1, 1, 400000, 1),
(2, 2, 400000, 1),
(3, 3, 400000, 1),
(4, 4, 400000, 1),
(5, 5, 400000, 1),
(6, 6, 400000, 1),
(7, 7, 400000, 1),
(8, 8, 400000, 1),
(9, 9, 400000, 1),
(10, 10, 400000, 1),
(11, 11, 400000, 1),
(12, 12, 400000, 1),
(13, 13, 400000, 1),
(14, 14, 400000, 1),
(15, 15, 400000, 1),
(16, 16, 400000, 1),
(17, 17, 400000, 1),
(18, 18, 400000, 1),
(19, 19, 400000, 1),
(20, 20, 400000, 1),
(21, 21, 400000, 1),
(22, 22, 400000, 1),
(23, 23, 400000, 1),
(24, 24, 400000, 1),
(25, 25, 400000, 1),
(26, 26, 400000, 1),
(27, 27, 400000, 1),
(28, 28, 400000, 1),
(29, 29, 400000, 1),
(30, 30, 400000, 1),
(31, 31, 400000, 1),
(32, 32, 400000, 1),
(33, 33, 400000, 1),
(34, 34, 400000, 1),
(35, 35, 400000, 1),
(36, 36, 400000, 1),
(37, 37, 400000, 1),
(38, 38, 400000, 1),
(39, 39, 400000, 1),
(40, 40, 400000, 1),
(41, 1, 340000, 2),
(42, 2, 340000, 2),
(43, 3, 340000, 2),
(44, 4, 340000, 2),
(45, 5, 340000, 2),
(46, 6, 340000, 2),
(47, 7, 340000, 2),
(48, 8, 340000, 2),
(49, 9, 340000, 2),
(50, 10, 340000, 2),
(51, 11, 340000, 2),
(52, 12, 340000, 2),
(53, 13, 340000, 2),
(54, 14, 340000, 2),
(55, 15, 340000, 2),
(56, 16, 340000, 2),
(57, 17, 340000, 2),
(58, 18, 340000, 2),
(59, 19, 340000, 2),
(60, 20, 340000, 2),
(61, 21, 340000, 2),
(62, 22, 340000, 2),
(63, 23, 340000, 2),
(64, 24, 340000, 2),
(65, 25, 340000, 2),
(66, 26, 340000, 2),
(67, 27, 340000, 2),
(68, 28, 340000, 2),
(69, 29, 340000, 2),
(70, 30, 340000, 2),
(71, 1, 180000, 3),
(72, 2, 180000, 3),
(73, 3, 180000, 3),
(74, 4, 180000, 3),
(75, 5, 180000, 3),
(76, 6, 180000, 3),
(77, 7, 180000, 3),
(78, 8, 180000, 3),
(79, 9, 180000, 3),
(80, 10, 180000, 3),
(81, 11, 180000, 3),
(82, 12, 180000, 3),
(83, 13, 180000, 3),
(84, 14, 180000, 3),
(85, 15, 180000, 3),
(86, 16, 180000, 3),
(87, 17, 180000, 3),
(88, 18, 180000, 3),
(89, 19, 180000, 3),
(90, 20, 180000, 3),
(91, 1, 160000, 4),
(92, 2, 160000, 4),
(93, 3, 160000, 4),
(94, 4, 160000, 4),
(95, 5, 160000, 4),
(96, 6, 160000, 4),
(97, 7, 160000, 4),
(98, 8, 160000, 4),
(99, 9, 160000, 4),
(100, 10, 160000, 4),
(101, 11, 160000, 4),
(102, 12, 160000, 4),
(103, 13, 160000, 4),
(104, 14, 160000, 4),
(105, 15, 160000, 4),
(106, 1, 300000, 5),
(107, 2, 300000, 5),
(108, 3, 300000, 5),
(109, 4, 300000, 5),
(110, 5, 300000, 5),
(111, 6, 300000, 5),
(112, 7, 300000, 5),
(113, 8, 300000, 5),
(114, 9, 300000, 5),
(115, 10, 300000, 5),
(116, 11, 300000, 5),
(117, 12, 300000, 5),
(118, 13, 300000, 5),
(119, 14, 300000, 5),
(120, 15, 300000, 5),
(121, 16, 300000, 5),
(122, 17, 300000, 5),
(123, 18, 300000, 5),
(124, 19, 300000, 5),
(125, 20, 300000, 5),
(126, 21, 300000, 5),
(127, 22, 300000, 5),
(128, 23, 300000, 5),
(129, 24, 300000, 5),
(130, 25, 300000, 5),
(131, 26, 300000, 5),
(132, 27, 300000, 5),
(133, 28, 300000, 5),
(134, 29, 300000, 5),
(135, 30, 300000, 5),
(136, 31, 300000, 5),
(137, 32, 300000, 5),
(138, 33, 300000, 5),
(139, 34, 300000, 5),
(140, 35, 300000, 5),
(141, 36, 300000, 5),
(142, 1, 200000, 6),
(143, 2, 200000, 6),
(144, 3, 200000, 6),
(145, 4, 200000, 6),
(146, 5, 200000, 6),
(147, 6, 200000, 6),
(148, 7, 200000, 6),
(149, 8, 200000, 6),
(150, 9, 200000, 6),
(151, 10, 200000, 6),
(152, 11, 200000, 6),
(153, 12, 200000, 6),
(154, 13, 200000, 6),
(155, 14, 200000, 6),
(156, 15, 200000, 6),
(157, 16, 200000, 6),
(158, 17, 200000, 6),
(159, 18, 200000, 6),
(160, 19, 200000, 6),
(161, 20, 200000, 6),
(162, 21, 200000, 6),
(163, 22, 200000, 6),
(164, 23, 200000, 6),
(165, 24, 200000, 6),
(166, 25, 200000, 6),
(167, 26, 200000, 6),
(168, 27, 200000, 6),
(169, 28, 200000, 6),
(170, 29, 200000, 6),
(171, 30, 200000, 6),
(172, 31, 200000, 6),
(173, 32, 200000, 6),
(174, 33, 200000, 6),
(175, 34, 200000, 6),
(176, 35, 200000, 6),
(177, 36, 200000, 6),
(178, 1, 0, 7);

-- --------------------------------------------------------

--
-- Table structure for table `insaatWeb_halkla_iliskiler`
--

CREATE TABLE `insaatWeb_halkla_iliskiler` (
  `id` int(11) NOT NULL,
  `tarih` datetime(6) NOT NULL,
  `gelen` varchar(100) NOT NULL,
  `gorustugu` varchar(100) NOT NULL,
  `arayan` varchar(100) NOT NULL,
  `telefon` varchar(34) NOT NULL,
  `konu` longtext NOT NULL,
  `ekleyen_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `insaatWeb_halkla_iliskiler`
--

INSERT INTO `insaatWeb_halkla_iliskiler` (`id`, `tarih`, `gelen`, `gorustugu`, `arayan`, `telefon`, `konu`, `ekleyen_id`) VALUES
(1, '2020-07-04 00:02:00.000000', 'Ayşenur Tartan', 'Ali Haktan', 'Mehmet Yakar', '5456788787', 'Daire Satışı', 1),
(2, '2020-01-05 05:00:00.000000', 'Fatih Susar', 'Mehmet Akar', 'Kamile Şevket', '5434562323', 'Arsa Satışı', 1),
(3, '2020-10-06 02:05:00.000000', 'ali', 'veli', 'hasan', '05412780115', 'kat mğlkiyeti', 1);

-- --------------------------------------------------------

--
-- Table structure for table `insaatWeb_il`
--

CREATE TABLE `insaatWeb_il` (
  `id` int(11) NOT NULL,
  `il` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `insaatWeb_il`
--

INSERT INTO `insaatWeb_il` (`id`, `il`) VALUES
(1, 'Ankara');

-- --------------------------------------------------------

--
-- Table structure for table `insaatWeb_ilce`
--

CREATE TABLE `insaatWeb_ilce` (
  `id` int(11) NOT NULL,
  `ilce` varchar(100) NOT NULL,
  `kayit_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `insaatWeb_ilce`
--

INSERT INTO `insaatWeb_ilce` (`id`, `ilce`, `kayit_id`) VALUES
(1, 'Mamak', 1),
(2, 'Polatlı', 1),
(3, 'Çubuk', 1);

-- --------------------------------------------------------

--
-- Table structure for table `insaatWeb_maliyet_kategori`
--

CREATE TABLE `insaatWeb_maliyet_kategori` (
  `id` int(11) NOT NULL,
  `adi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `insaatWeb_maliyet_kayit`
--

CREATE TABLE `insaatWeb_maliyet_kayit` (
  `id` int(11) NOT NULL,
  `birimfiyat` double NOT NULL,
  `adet` double NOT NULL,
  `hakkinda` varchar(400) NOT NULL,
  `ekleyen_id` int(11) NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `maddeid_id` int(11) NOT NULL,
  `projeid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `insaatWeb_maliyet_madde`
--

CREATE TABLE `insaatWeb_maliyet_madde` (
  `id` int(11) NOT NULL,
  `adi` varchar(100) NOT NULL,
  `kategori_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `insaatWeb_maliyet_projeler`
--

CREATE TABLE `insaatWeb_maliyet_projeler` (
  `id` int(11) NOT NULL,
  `reelmaliyet` varchar(400) NOT NULL,
  `projeadi_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `insaatWeb_portfoy_kayit`
--

CREATE TABLE `insaatWeb_portfoy_kayit` (
  `id` int(11) NOT NULL,
  `adisoyadi` varchar(100) NOT NULL,
  `telefonev` varchar(34) NOT NULL,
  `telefoncep` varchar(34) NOT NULL,
  `meslek` varchar(100) NOT NULL,
  `hakkinda` longtext NOT NULL,
  `fiyataraligimin` int(11) NOT NULL,
  `fiyataraligimax` int(11) NOT NULL,
  `ilce` varchar(100) NOT NULL,
  `odasayisi` varchar(200) NOT NULL,
  `emlakturu` varchar(200) NOT NULL,
  `satinalmaturu` smallint(6) NOT NULL,
  `tarih` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `insaatWeb_portfoy_kayit`
--

INSERT INTO `insaatWeb_portfoy_kayit` (`id`, `adisoyadi`, `telefonev`, `telefoncep`, `meslek`, `hakkinda`, `fiyataraligimin`, `fiyataraligimax`, `ilce`, `odasayisi`, `emlakturu`, `satinalmaturu`, `tarih`) VALUES
(1, 'Ayşenur TARTAN', '3322475740', '5357350700', 'Bilgisayar Mühendisi', 'Projelerle ilgilenen yoğun bir hanımefendi.', 300000, 800000, 'Ankara - Polatlı', '[\'1+1\', \'3+1\', \'4+1\', \'4+2\', \'4+3\', \'4+4\', \'5+1\']', '[\'Daire\', \'Residence\', \'Villa\']', 2, '2020-05-14'),
(2, 'ali yeşil', '233333', '333333', 'doktor', 'hakkında', 200000, 500000, 'Ankara - Polatlı', '[\'3+2\', \'4+2\', \'5+1\', \'5+2\']', '[\'Daire\', \'Bina\']', 1, '2020-06-08');

-- --------------------------------------------------------

--
-- Table structure for table `insaatWeb_projeler`
--

CREATE TABLE `insaatWeb_projeler` (
  `id` int(11) NOT NULL,
  `adi` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `insaatWeb_projeler`
--

INSERT INTO `insaatWeb_projeler` (`id`, `adi`) VALUES
(1, 'Şehri Azad'),
(2, 'Kültür Siteleri'),
(3, 'Meram Kent Siteleri'),
(4, 'Manolya Siteleri'),
(5, 'Yooist');

-- --------------------------------------------------------

--
-- Table structure for table `insaatWeb_santiyeler`
--

CREATE TABLE `insaatWeb_santiyeler` (
  `id` int(11) NOT NULL,
  `adi` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `insaatWeb_santiyeler`
--

INSERT INTO `insaatWeb_santiyeler` (`id`, `adi`) VALUES
(1, 'Şantiye 1'),
(2, 'Şantiye 2'),
(3, 'Şantiye 3'),
(4, 'Şantiye 4'),
(5, 'Şantiye 5');

-- --------------------------------------------------------

--
-- Table structure for table `insaatWeb_santiye_takip`
--

CREATE TABLE `insaatWeb_santiye_takip` (
  `id` int(11) NOT NULL,
  `faturano` varchar(100) NOT NULL,
  `irsaliyeno` varchar(100) NOT NULL,
  `tedarikci` varchar(600) NOT NULL,
  `malzemeadi` varchar(400) NOT NULL,
  `malzememiktari` varchar(100) NOT NULL,
  `tarih` date NOT NULL,
  `editorid_id` int(11) NOT NULL,
  `santiyeid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `insaatWeb_santiye_takip`
--

INSERT INTO `insaatWeb_santiye_takip` (`id`, `faturano`, `irsaliyeno`, `tedarikci`, `malzemeadi`, `malzememiktari`, `tarih`, `editorid_id`, `santiyeid_id`) VALUES
(1, '123', '123', 'Yatak Demir', 'Demir', '10 TON', '2020-05-14', 1, 1),
(2, '124', '124', 'Konya Beton', 'Alçı', '4 TON', '2020-05-14', 1, 1),
(3, '124', '124', 'Konya Beton', 'Çimento', '5 PAKET', '2020-05-14', 1, 1),
(4, '12', '12', 'hazır beton', 'çimento', '1000 PAKET', '2020-06-08', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `insaatWeb_satis`
--

CREATE TABLE `insaatWeb_satis` (
  `id` int(11) NOT NULL,
  `odenen` int(11) NOT NULL,
  `tckimlik` varchar(22) NOT NULL,
  `adisoyadi` varchar(100) NOT NULL,
  `telefon` varchar(34) NOT NULL,
  `hakkinda` longtext NOT NULL,
  `tarih` date NOT NULL,
  `sozlesme` varchar(100) NOT NULL,
  `daireid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `insaatWeb_satis`
--

INSERT INTO `insaatWeb_satis` (`id`, `odenen`, `tckimlik`, `adisoyadi`, `telefon`, `hakkinda`, `tarih`, `sozlesme`, `daireid_id`) VALUES
(1, -1, '31227265580', 'Ayşenur TArtan', '5457678787', '', '2020-05-14', '', 40),
(2, 120000, '56783762677', 'Satış Örneği', '3223456567', '', '2020-05-14', '', 37),
(3, 0, '25675511934', 'ali yeşil', '05412780115', 'hakkında bilgi', '2020-06-08', '', 141),
(4, -1, '25675511934', 'asdasd', '05412780115', 'asdasd', '2020-06-08', '', 136);

-- --------------------------------------------------------

--
-- Table structure for table `insaatWeb_tapu_alis`
--

CREATE TABLE `insaatWeb_tapu_alis` (
  `id` int(11) NOT NULL,
  `gayrimenkul` varchar(100) NOT NULL,
  `tapusahibi` varchar(100) NOT NULL,
  `tarih` date NOT NULL,
  `adapafta` varchar(30) NOT NULL,
  `gayrimenkulalisbedeli` varchar(40) NOT NULL,
  `masraf` varchar(100) NOT NULL,
  `oncekisahibi` varchar(100) NOT NULL,
  `oncekisahibihakkinda` longtext NOT NULL,
  `ekleyen_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `insaatWeb_tapu_alis`
--

INSERT INTO `insaatWeb_tapu_alis` (`id`, `gayrimenkul`, `tapusahibi`, `tarih`, `adapafta`, `gayrimenkulalisbedeli`, `masraf`, `oncekisahibi`, `oncekisahibihakkinda`, `ekleyen_id`) VALUES
(1, 'Daire', 'Ali Hük', '2020-05-14', '3/5', '300000', '20000', 'Ali Hük', 'Çiftçi', 1),
(2, 'Tarla', 'Ayten Maviş', '2020-05-14', '4/9', '600000', '12000', 'Ayten Maviş', 'Miras değerlendirildi', 1);

-- --------------------------------------------------------

--
-- Table structure for table `insaatWeb_tapu_kat_irtifaki`
--

CREATE TABLE `insaatWeb_tapu_kat_irtifaki` (
  `id` int(11) NOT NULL,
  `projeadi` varchar(100) NOT NULL,
  `projebagimsizsayisi` int(11) NOT NULL,
  `tarih` date NOT NULL,
  `ekleyen_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `insaatWeb_tapu_kat_irtifaki`
--

INSERT INTO `insaatWeb_tapu_kat_irtifaki` (`id`, `projeadi`, `projebagimsizsayisi`, `tarih`, `ekleyen_id`) VALUES
(1, 'irtifak 1', 3, '2020-05-14', 1),
(2, 'irtifak 2', 9, '2020-05-14', 1);

-- --------------------------------------------------------

--
-- Table structure for table `insaatWeb_tapu_kat_mulkiyeti`
--

CREATE TABLE `insaatWeb_tapu_kat_mulkiyeti` (
  `id` int(11) NOT NULL,
  `projeadi` varchar(100) NOT NULL,
  `aciklama` longtext NOT NULL,
  `tarih` date NOT NULL,
  `ekleyen_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `insaatWeb_tapu_kat_mulkiyeti`
--

INSERT INTO `insaatWeb_tapu_kat_mulkiyeti` (`id`, `projeadi`, `aciklama`, `tarih`, `ekleyen_id`) VALUES
(1, 'Mülkiyet', 'Projelik alan', '2020-05-14', 1);

-- --------------------------------------------------------

--
-- Table structure for table `insaatWeb_tapu_satis`
--

CREATE TABLE `insaatWeb_tapu_satis` (
  `id` int(11) NOT NULL,
  `daireadi` varchar(200) NOT NULL,
  `adisoyadi` varchar(100) NOT NULL,
  `meslek` varchar(100) NOT NULL,
  `adres` longtext NOT NULL,
  `telefon` varchar(34) NOT NULL,
  `masraf` varchar(100) NOT NULL,
  `tarih` date NOT NULL,
  `daireid_id` int(11) NOT NULL,
  `ekleyen_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `insaatWeb_tapu_satis`
--

INSERT INTO `insaatWeb_tapu_satis` (`id`, `daireadi`, `adisoyadi`, `meslek`, `adres`, `telefon`, `masraf`, `tarih`, `daireid_id`, `ekleyen_id`) VALUES
(1, 'Daire', 'Ayşenur TARTAN', 'Bilgisayar Mühendisi', 'Ankara', '5438768745', '5000', '2020-05-14', 35, 1),
(2, 'Daire', 'Hakan Nakkaş', 'Doktor', 'İstanbul', '5436787676', '4750', '2020-05-14', 70, 1);

-- --------------------------------------------------------

--
-- Table structure for table `insaatWeb_yonetici`
--

CREATE TABLE `insaatWeb_yonetici` (
  `id` int(11) NOT NULL,
  `adi` varchar(200) NOT NULL,
  `kadi` varchar(200) NOT NULL,
  `sifre` varchar(200) NOT NULL,
  `giris` datetime(6) NOT NULL,
  `durum` tinyint(1) NOT NULL,
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
  `yoneticisil` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `insaatWeb_yonetici`
--

INSERT INTO `insaatWeb_yonetici` (`id`, `adi`, `kadi`, `sifre`, `giris`, `durum`, `satispazarlama`, `musteriportfoy`, `santiyetakip`, `arizatakip`, `tapusicil`, `abonelik`, `halklailiskiler`, `belgekaydi`, `maliyet`, `binakontrol`, `projeekle`, `projeduzenle`, `projesil`, `blokekle`, `blokduzenle`, `bloksil`, `daireekle`, `daireduzenle`, `dairesil`, `satisekle`, `satisduzenle`, `satissil`, `portfoyekle`, `portfoyduzenle`, `portfoysil`, `santiyeekle`, `santiyeduzenle`, `santiyesil`, `santiyemalzemeekle`, `santiyemalzemeduzenle`, `santiyemalzemesil`, `arizakaydiekle`, `arizakaydiduzenle`, `arizakaydisil`, `arizatakipkontrolu`, `tapusicilekle`, `tapusicilduzenle`, `tapusicilsil`, `abonelikekle`, `abonelikduzenle`, `aboneliksil`, `halklailiskilerekle`, `halklailiskilerduzenle`, `halklailiskilersil`, `belgekaydiekle`, `belgekaydiduzenle`, `belgekaydisil`, `maliyetekle`, `maliyetduzenle`, `maliyetsil`, `binakontrolekle`, `binakontrolduzenle`, `binakontrolsil`, `yoneticiekle`, `yoneticiduzenle`, `yoneticisil`) VALUES
(1, 'Ayşenur Tartan', 'admin', 'admin', '2020-11-17 21:31:33.000000', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(2, 'Yetkisiz', 'yetkisiz', '123', '2020-06-08 08:45:31.000000', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 0, 1, 0, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 0, 1, 0, 1, 1, 1, 0, 1, 0, 1, 1, 1, 0, 1, 1, 0, 1),
(3, 'a', 'a', 'a', '2020-06-08 20:17:49.000000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_ariza_takip`
-- (See below for the actual view)
--
CREATE TABLE `v_ariza_takip` (
`id` varchar(36)
,`ariza_takip_id` int(11)
,`durum` smallint(6)
,`sorun` longtext
,`ekleyen` varchar(200)
,`eklenmetarihi` date
,`guncelleyen` varchar(200)
,`guncellenmetarihi` date
,`title` varchar(428)
,`adisoyadi` varchar(100)
,`cozumNotu` longtext
,`projeid` int(11)
,`blokid` int(11)
,`daireid_id` int(11)
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
`id` varchar(36)
,`daire` varchar(411)
,`ekleyen` varchar(200)
,`tapu_satis_id` int(11)
,`adisoyadi` varchar(100)
,`meslek` varchar(100)
,`adres` longtext
,`telefon` varchar(34)
,`masraf` varchar(100)
,`tarih` date
,`daireid_id` int(11)
);

-- --------------------------------------------------------

--
-- Structure for view `v_ariza_takip`
--
DROP TABLE IF EXISTS `v_ariza_takip`;

CREATE ALGORITHM=UNDEFINED DEFINER=`erpdatabaseuser`@`%` SQL SECURITY DEFINER VIEW `v_ariza_takip`  AS  select uuid() AS `id`,`insaatWeb_ariza_takip`.`id` AS `ariza_takip_id`,`insaatWeb_ariza_takip`.`durum` AS `durum`,`insaatWeb_ariza_takip`.`sorun` AS `sorun`,`insaatWeb_yonetici`.`adi` AS `ekleyen`,`insaatWeb_ariza_takip`.`eklenmetarihi` AS `eklenmetarihi`,`yonetici_1`.`adi` AS `guncelleyen`,`insaatWeb_ariza_takip`.`guncellenmetarihi` AS `guncellenmetarihi`,concat(`insaatWeb_projeler`.`adi`,' - ',`insaatWeb_bloklar`.`adi`,' -  Daire No: ',`insaatWeb_daireler`.`no`) AS `title`,`insaatWeb_satis`.`adisoyadi` AS `adisoyadi`,`insaatWeb_ariza_takip`.`cozumnotu` AS `cozumNotu`,`insaatWeb_projeler`.`id` AS `projeid`,`insaatWeb_bloklar`.`id` AS `blokid`,`insaatWeb_ariza_takip`.`daireid_id` AS `daireid_id` from ((((`insaatWeb_ariza_takip` left join ((`insaatWeb_projeler` join `insaatWeb_bloklar` on((`insaatWeb_projeler`.`id` = `insaatWeb_bloklar`.`projeid_id`))) join `insaatWeb_daireler` on((`insaatWeb_bloklar`.`id` = `insaatWeb_daireler`.`blokid_id`))) on((`insaatWeb_daireler`.`id` = `insaatWeb_ariza_takip`.`daireid_id`))) left join `insaatWeb_yonetici` `yonetici_1` on((`insaatWeb_ariza_takip`.`guncelleyen` = `yonetici_1`.`id`))) left join `insaatWeb_yonetici` on((`insaatWeb_ariza_takip`.`ekleyen_id` = `insaatWeb_yonetici`.`id`))) left join `insaatWeb_satis` on((`insaatWeb_daireler`.`id` = `insaatWeb_satis`.`daireid_id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `v_detay`
--
DROP TABLE IF EXISTS `v_detay`;

CREATE ALGORITHM=UNDEFINED DEFINER=`erpdatabaseuser`@`%` SQL SECURITY DEFINER VIEW `v_detay`  AS  select uuid() AS `id`,`insaatWeb_projeler`.`id` AS `projeid`,`insaatWeb_projeler`.`adi` AS `projeadi`,`insaatWeb_bloklar`.`id` AS `blokid`,`insaatWeb_bloklar`.`adi` AS `blokadi`,`insaatWeb_bloklar`.`katsayisi` AS `katsayisi`,`insaatWeb_bloklar`.`birkattakidairesayisi` AS `birkattakidairesayisi`,`insaatWeb_bloklar`.`odasayisi` AS `odasayisi`,`insaatWeb_bloklar`.`metrekare` AS `metrekare`,`insaatWeb_bloklar`.`blokkenarsol` AS `blokkenarsol`,`insaatWeb_bloklar`.`blokkenarsag` AS `blokkenarsag`,`insaatWeb_bloklar`.`blokkenaryukari` AS `blokkenaryukari`,`insaatWeb_bloklar`.`blokkenarasagi` AS `blokkenarasagi` from (`insaatWeb_projeler` left join `insaatWeb_bloklar` on((`insaatWeb_projeler`.`id` = `insaatWeb_bloklar`.`projeid_id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `v_detay_2`
--
DROP TABLE IF EXISTS `v_detay_2`;

CREATE ALGORITHM=UNDEFINED DEFINER=`erpdatabaseuser`@`%` SQL SECURITY DEFINER VIEW `v_detay_2`  AS  select uuid() AS `id`,`insaatWeb_daireler`.`id` AS `daireid`,`insaatWeb_daireler`.`blokid_id` AS `blokid_id`,`insaatWeb_daireler`.`fiyat` AS `fiyat`,`insaatWeb_satis`.`id` AS `satisid`,`insaatWeb_satis`.`odenen` AS `odenen`,`insaatWeb_daireler`.`no` AS `daireno`,`insaatWeb_satis`.`adisoyadi` AS `adisoyadi` from (`insaatWeb_daireler` left join `insaatWeb_satis` on((`insaatWeb_daireler`.`id` = `insaatWeb_satis`.`daireid_id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `v_santiye_malzemeler`
--
DROP TABLE IF EXISTS `v_santiye_malzemeler`;

CREATE ALGORITHM=UNDEFINED DEFINER=`erpdatabaseuser`@`%` SQL SECURITY DEFINER VIEW `v_santiye_malzemeler`  AS  select uuid() AS `id`,`insaatWeb_santiye_takip`.`id` AS `santiye_takip_id`,`insaatWeb_yonetici`.`adi` AS `editoradi`,`insaatWeb_santiyeler`.`adi` AS `santiyeadi`,`insaatWeb_santiyeler`.`id` AS `santiyeid`,`insaatWeb_santiye_takip`.`malzemeadi` AS `malzemeadi`,`insaatWeb_santiye_takip`.`malzememiktari` AS `malzememiktari`,`insaatWeb_santiye_takip`.`tarih` AS `tarih`,`insaatWeb_santiye_takip`.`tedarikci` AS `tedarikci`,`insaatWeb_santiye_takip`.`irsaliyeno` AS `irsaliyeno`,`insaatWeb_santiye_takip`.`faturano` AS `faturano` from ((`insaatWeb_santiye_takip` left join `insaatWeb_yonetici` on((`insaatWeb_santiye_takip`.`editorid_id` = `insaatWeb_yonetici`.`id`))) left join `insaatWeb_santiyeler` on((`insaatWeb_santiye_takip`.`santiyeid_id` = `insaatWeb_santiyeler`.`id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `v_satis`
--
DROP TABLE IF EXISTS `v_satis`;

CREATE ALGORITHM=UNDEFINED DEFINER=`erpdatabaseuser`@`%` SQL SECURITY DEFINER VIEW `v_satis`  AS  select uuid() AS `id`,`insaatWeb_projeler`.`id` AS `projeid`,`insaatWeb_projeler`.`adi` AS `projeadi`,`insaatWeb_bloklar`.`id` AS `blokid`,`insaatWeb_bloklar`.`adi` AS `blokadi`,`insaatWeb_daireler`.`id` AS `daireid`,`insaatWeb_daireler`.`no` AS `daireno`,`insaatWeb_daireler`.`fiyat` AS `fiyat`,`insaatWeb_satis`.`id` AS `satisid`,`insaatWeb_satis`.`odenen` AS `odenen`,`insaatWeb_satis`.`adisoyadi` AS `adisoyadi`,`insaatWeb_satis`.`hakkinda` AS `hakkinda`,`insaatWeb_satis`.`tckimlik` AS `tckimlik`,`insaatWeb_satis`.`telefon` AS `telefon` from (`insaatWeb_projeler` left join (`insaatWeb_bloklar` left join (`insaatWeb_daireler` left join `insaatWeb_satis` on((`insaatWeb_daireler`.`id` = `insaatWeb_satis`.`daireid_id`))) on((`insaatWeb_daireler`.`blokid_id` = `insaatWeb_bloklar`.`id`))) on((`insaatWeb_bloklar`.`projeid_id` = `insaatWeb_projeler`.`id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `v_tapu_satis`
--
DROP TABLE IF EXISTS `v_tapu_satis`;

CREATE ALGORITHM=UNDEFINED DEFINER=`erpdatabaseuser`@`%` SQL SECURITY DEFINER VIEW `v_tapu_satis`  AS  select uuid() AS `id`,concat(`insaatWeb_projeler`.`adi`,`insaatWeb_bloklar`.`adi`,`insaatWeb_daireler`.`no`) AS `daire`,`insaatWeb_yonetici`.`adi` AS `ekleyen`,`insaatWeb_tapu_satis`.`id` AS `tapu_satis_id`,`insaatWeb_tapu_satis`.`adisoyadi` AS `adisoyadi`,`insaatWeb_tapu_satis`.`meslek` AS `meslek`,`insaatWeb_tapu_satis`.`adres` AS `adres`,`insaatWeb_tapu_satis`.`telefon` AS `telefon`,`insaatWeb_tapu_satis`.`masraf` AS `masraf`,`insaatWeb_tapu_satis`.`tarih` AS `tarih`,`insaatWeb_tapu_satis`.`daireid_id` AS `daireid_id` from ((`insaatWeb_tapu_satis` left join ((`insaatWeb_projeler` join `insaatWeb_bloklar` on((`insaatWeb_projeler`.`id` = `insaatWeb_bloklar`.`projeid_id`))) join `insaatWeb_daireler` on((`insaatWeb_bloklar`.`id` = `insaatWeb_daireler`.`blokid_id`))) on((`insaatWeb_daireler`.`id` = `insaatWeb_tapu_satis`.`daireid_id`))) left join `insaatWeb_yonetici` on((`insaatWeb_tapu_satis`.`ekleyen_id` = `insaatWeb_yonetici`.`id`))) ;

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
  ADD KEY `insaatWeb_abonelikle_ekleyen_id_3d34c817_fk_insaatWeb` (`ekleyen_id`),
  ADD KEY `insaatWeb_abonelikle_projeadi_id_18011c2b_fk_insaatWeb` (`projeadi_id`);

--
-- Indexes for table `insaatWeb_ariza_takip`
--
ALTER TABLE `insaatWeb_ariza_takip`
  ADD PRIMARY KEY (`id`),
  ADD KEY `insaatWeb_ariza_taki_daireid_id_36a7eccb_fk_insaatWeb` (`daireid_id`),
  ADD KEY `insaatWeb_ariza_taki_ekleyen_id_1dfc8b9a_fk_insaatWeb` (`ekleyen_id`);

--
-- Indexes for table `insaatWeb_belge_kaydi`
--
ALTER TABLE `insaatWeb_belge_kaydi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `insaatWeb_belge_kayd_ekleyen_id_4bef89b4_fk_insaatWeb` (`ekleyen_id`);

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
  ADD KEY `insaatWeb_bina_kontr_ekleyen_id_4ef3388d_fk_insaatWeb` (`ekleyen_id`),
  ADD KEY `insaatWeb_bina_kontr_projeadi_id_b61a0ce1_fk_insaatWeb` (`projeadi_id`);

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
  ADD KEY `insaatWeb_halkla_ili_ekleyen_id_e4b8b324_fk_insaatWeb` (`ekleyen_id`);

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
-- Indexes for table `insaatWeb_maliyet_kategori`
--
ALTER TABLE `insaatWeb_maliyet_kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `insaatWeb_maliyet_kayit`
--
ALTER TABLE `insaatWeb_maliyet_kayit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `insaatWeb_maliyet_ka_maddeid_id_7a44893d_fk_insaatWeb` (`maddeid_id`),
  ADD KEY `insaatWeb_maliyet_ka_projeid_id_df65d23d_fk_insaatWeb` (`projeid_id`),
  ADD KEY `insaatWeb_maliyet_ka_ekleyen_id_146f46dd_fk_insaatWeb` (`ekleyen_id`),
  ADD KEY `insaatWeb_maliyet_ka_kategori_id_edfb2512_fk_insaatWeb` (`kategori_id`);

--
-- Indexes for table `insaatWeb_maliyet_madde`
--
ALTER TABLE `insaatWeb_maliyet_madde`
  ADD PRIMARY KEY (`id`),
  ADD KEY `insaatWeb_maliyet_ma_kategori_id_091b34ff_fk_insaatWeb` (`kategori_id`);

--
-- Indexes for table `insaatWeb_maliyet_projeler`
--
ALTER TABLE `insaatWeb_maliyet_projeler`
  ADD PRIMARY KEY (`id`),
  ADD KEY `insaatWeb_maliyet_pr_projeadi_id_ad4bd284_fk_insaatWeb` (`projeadi_id`);

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
  ADD KEY `insaatWeb_tapu_alis_ekleyen_id_bbf1d622_fk_insaatWeb_yonetici_id` (`ekleyen_id`);

--
-- Indexes for table `insaatWeb_tapu_kat_irtifaki`
--
ALTER TABLE `insaatWeb_tapu_kat_irtifaki`
  ADD PRIMARY KEY (`id`),
  ADD KEY `insaatWeb_tapu_kat_i_ekleyen_id_4957a54a_fk_insaatWeb` (`ekleyen_id`);

--
-- Indexes for table `insaatWeb_tapu_kat_mulkiyeti`
--
ALTER TABLE `insaatWeb_tapu_kat_mulkiyeti`
  ADD PRIMARY KEY (`id`),
  ADD KEY `insaatWeb_tapu_kat_m_ekleyen_id_c046c9cc_fk_insaatWeb` (`ekleyen_id`);

--
-- Indexes for table `insaatWeb_tapu_satis`
--
ALTER TABLE `insaatWeb_tapu_satis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `insaatWeb_tapu_satis_ekleyen_id_efaf512e_fk_insaatWeb` (`ekleyen_id`),
  ADD KEY `insaatWeb_tapu_satis_daireid_id_8dc9ca19_fk_insaatWeb` (`daireid_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `insaatWeb_abonelikler`
--
ALTER TABLE `insaatWeb_abonelikler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `insaatWeb_ariza_takip`
--
ALTER TABLE `insaatWeb_ariza_takip`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `insaatWeb_belge_kaydi`
--
ALTER TABLE `insaatWeb_belge_kaydi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `insaatWeb_belge_kaydi_file`
--
ALTER TABLE `insaatWeb_belge_kaydi_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `insaatWeb_bina_kontrol`
--
ALTER TABLE `insaatWeb_bina_kontrol`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `insaatWeb_bina_kontrol_file`
--
ALTER TABLE `insaatWeb_bina_kontrol_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `insaatWeb_bloklar`
--
ALTER TABLE `insaatWeb_bloklar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `insaatWeb_daireler`
--
ALTER TABLE `insaatWeb_daireler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=179;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `insaatWeb_maliyet_kategori`
--
ALTER TABLE `insaatWeb_maliyet_kategori`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `insaatWeb_projeler`
--
ALTER TABLE `insaatWeb_projeler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `insaatWeb_santiyeler`
--
ALTER TABLE `insaatWeb_santiyeler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `insaatWeb_santiye_takip`
--
ALTER TABLE `insaatWeb_santiye_takip`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `insaatWeb_satis`
--
ALTER TABLE `insaatWeb_satis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `insaatWeb_tapu_alis`
--
ALTER TABLE `insaatWeb_tapu_alis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `insaatWeb_tapu_kat_irtifaki`
--
ALTER TABLE `insaatWeb_tapu_kat_irtifaki`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `insaatWeb_tapu_kat_mulkiyeti`
--
ALTER TABLE `insaatWeb_tapu_kat_mulkiyeti`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `insaatWeb_tapu_satis`
--
ALTER TABLE `insaatWeb_tapu_satis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `insaatWeb_yonetici`
--
ALTER TABLE `insaatWeb_yonetici`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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

--
-- Constraints for table `insaatWeb_abonelikler`
--
ALTER TABLE `insaatWeb_abonelikler`
  ADD CONSTRAINT `insaatWeb_abonelikle_ekleyen_id_3d34c817_fk_insaatWeb` FOREIGN KEY (`ekleyen_id`) REFERENCES `insaatWeb_yonetici` (`id`),
  ADD CONSTRAINT `insaatWeb_abonelikle_projeadi_id_18011c2b_fk_insaatWeb` FOREIGN KEY (`projeadi_id`) REFERENCES `insaatWeb_projeler` (`id`);

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
  ADD CONSTRAINT `insaatWeb_bina_kontr_ekleyen_id_4ef3388d_fk_insaatWeb` FOREIGN KEY (`ekleyen_id`) REFERENCES `insaatWeb_yonetici` (`id`),
  ADD CONSTRAINT `insaatWeb_bina_kontr_projeadi_id_b61a0ce1_fk_insaatWeb` FOREIGN KEY (`projeadi_id`) REFERENCES `insaatWeb_projeler` (`id`);

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
  ADD CONSTRAINT `insaatWeb_maliyet_ka_kategori_id_edfb2512_fk_insaatWeb` FOREIGN KEY (`kategori_id`) REFERENCES `insaatWeb_maliyet_kategori` (`id`),
  ADD CONSTRAINT `insaatWeb_maliyet_ka_maddeid_id_7a44893d_fk_insaatWeb` FOREIGN KEY (`maddeid_id`) REFERENCES `insaatWeb_maliyet_madde` (`id`),
  ADD CONSTRAINT `insaatWeb_maliyet_ka_projeid_id_df65d23d_fk_insaatWeb` FOREIGN KEY (`projeid_id`) REFERENCES `insaatWeb_maliyet_projeler` (`id`);

--
-- Constraints for table `insaatWeb_maliyet_madde`
--
ALTER TABLE `insaatWeb_maliyet_madde`
  ADD CONSTRAINT `insaatWeb_maliyet_ma_kategori_id_091b34ff_fk_insaatWeb` FOREIGN KEY (`kategori_id`) REFERENCES `insaatWeb_maliyet_kategori` (`id`);

--
-- Constraints for table `insaatWeb_maliyet_projeler`
--
ALTER TABLE `insaatWeb_maliyet_projeler`
  ADD CONSTRAINT `insaatWeb_maliyet_pr_projeadi_id_ad4bd284_fk_insaatWeb` FOREIGN KEY (`projeadi_id`) REFERENCES `insaatWeb_projeler` (`id`);

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
