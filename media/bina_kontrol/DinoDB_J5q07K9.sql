-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 21, 2018 at 06:48 PM
-- Server version: 5.7.24-0ubuntu0.18.10.1
-- PHP Version: 7.2.10-0ubuntu1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `DinoDB`
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
(19, 'Can add dino', 7, 'add_dino'),
(20, 'Can change dino', 7, 'change_dino'),
(21, 'Can delete dino', 7, 'delete_dino'),
(22, 'Can add dino seviye puan', 8, 'add_dinoseviyepuan'),
(23, 'Can change dino seviye puan', 8, 'change_dinoseviyepuan'),
(24, 'Can delete dino seviye puan', 8, 'delete_dinoseviyepuan'),
(25, 'Can add dino seviye yem fiyat', 9, 'add_dinoseviyeyemfiyat'),
(26, 'Can change dino seviye yem fiyat', 9, 'change_dinoseviyeyemfiyat'),
(27, 'Can delete dino seviye yem fiyat', 9, 'delete_dinoseviyeyemfiyat'),
(28, 'Can add dino seviye yumurta uretim', 10, 'add_dinoseviyeyumurtauretim'),
(29, 'Can change dino seviye yumurta uretim', 10, 'change_dinoseviyeyumurtauretim'),
(30, 'Can delete dino seviye yumurta uretim', 10, 'delete_dinoseviyeyumurtauretim'),
(31, 'Can add genel ayarlar', 11, 'add_genelayarlar'),
(32, 'Can change genel ayarlar', 11, 'change_genelayarlar'),
(33, 'Can delete genel ayarlar', 11, 'delete_genelayarlar'),
(34, 'Can add odeme talebi', 12, 'add_odemetalebi'),
(35, 'Can change odeme talebi', 12, 'change_odemetalebi'),
(36, 'Can delete odeme talebi', 12, 'delete_odemetalebi'),
(37, 'Can add uyeler', 13, 'add_uyeler'),
(38, 'Can change uyeler', 13, 'change_uyeler'),
(39, 'Can delete uyeler', 13, 'delete_uyeler');

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
(1, 'pbkdf2_sha256$100000$D0T7CF2PveKi$MVrdNpmQQbKRua2leEu3+ZD5Aj4+WgbRySl48hF2f6w=', '2018-12-21 12:24:44.407583', 1, 'muhendisbey', '', '', '', 1, 1, '2018-12-16 22:00:00.389230');

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
-- Table structure for table `dinoOyun_dino`
--

CREATE TABLE `dinoOyun_dino` (
  `id` int(11) NOT NULL,
  `lvl` int(11) NOT NULL,
  `kalan_sagligi` int(11) NOT NULL,
  `aclik_süresi` int(11) NOT NULL,
  `uyku_durumu` int(11) NOT NULL,
  `uyku_saati` datetime(6) NOT NULL,
  `yikama_saati` datetime(6) NOT NULL,
  `yem_miktari` int(11) NOT NULL,
  `uyelik_tarihi` datetime(6) NOT NULL,
  `son_giris_saati` datetime(6) NOT NULL,
  `referans_puani` int(11) NOT NULL,
  `harcanan_referans_puan` int(11) NOT NULL,
  `lvl_puani` int(11) NOT NULL,
  `yumurta_puani` int(11) NOT NULL,
  `yumurta_adet` double NOT NULL,
  `sistem_gönderilen_puan` int(11) NOT NULL,
  `bonus` datetime(6) NOT NULL,
  `sahibi_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `dinoOyun_dino`
--

INSERT INTO `dinoOyun_dino` (`id`, `lvl`, `kalan_sagligi`, `aclik_süresi`, `uyku_durumu`, `uyku_saati`, `yikama_saati`, `yem_miktari`, `uyelik_tarihi`, `son_giris_saati`, `referans_puani`, `harcanan_referans_puan`, `lvl_puani`, `yumurta_puani`, `yumurta_adet`, `sistem_gönderilen_puan`, `bonus`, `sahibi_id`) VALUES
(1, 2, 5400, 178, 0, '2018-12-21 01:27:11.943330', '2018-12-21 01:27:11.943323', 26, '2018-12-16 22:04:59.797510', '2018-12-21 01:29:46.566029', 1354, 8599, 8245, 1000, 23.62000000000001, 0, '2018-12-16 22:41:19.108235', 1),
(2, 2, 123, 162, 0, '2018-12-16 22:05:11.000000', '2018-12-16 22:05:13.000000', 121, '2018-12-16 22:05:29.752345', '2018-12-16 22:56:27.321059', 0, 3000, 5300, 2300, 50.21999999999999, 3000, '2018-12-16 22:05:18.000000', 2),
(3, 1, 5400, 178, 0, '2018-12-17 00:26:58.191862', '2018-12-17 00:26:58.191870', 4, '2018-12-17 00:26:58.193362', '2018-12-17 00:28:25.901783', 0, -100, 0, 100, 0.2, 0, '2018-12-17 00:26:58.191871', 5);

-- --------------------------------------------------------

--
-- Table structure for table `dinoOyun_dinoseviyepuan`
--

CREATE TABLE `dinoOyun_dinoseviyepuan` (
  `id` int(11) NOT NULL,
  `lvl` int(11) NOT NULL,
  `puan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `dinoOyun_dinoseviyepuan`
--

INSERT INTO `dinoOyun_dinoseviyepuan` (`id`, `lvl`, `puan`) VALUES
(1, 1, 0),
(2, 2, 5000),
(3, 3, 25000),
(4, 4, 100000),
(5, 5, 225000),
(6, 6, 500000),
(7, 7, 1000000),
(8, 8, 2000000),
(9, 9, 5000000),
(10, 10, 10000000),
(11, 11, 15000000),
(12, 12, 20000000),
(13, 13, 25000000),
(14, 14, 35000000),
(15, 15, 50000000);

-- --------------------------------------------------------

--
-- Table structure for table `dinoOyun_dinoseviyeyemfiyat`
--

CREATE TABLE `dinoOyun_dinoseviyeyemfiyat` (
  `id` int(11) NOT NULL,
  `lvl` int(11) NOT NULL,
  `fiyat` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `dinoOyun_dinoseviyeyemfiyat`
--

INSERT INTO `dinoOyun_dinoseviyeyemfiyat` (`id`, `lvl`, `fiyat`) VALUES
(1, 1, 225),
(2, 2, 270),
(3, 3, 315),
(4, 4, 360),
(5, 5, 400),
(6, 6, 450),
(7, 7, 500),
(8, 8, 550),
(9, 9, 600),
(10, 10, 650),
(11, 11, 700),
(12, 12, 750),
(13, 13, 800),
(14, 14, 850),
(15, 15, 900);

-- --------------------------------------------------------

--
-- Table structure for table `dinoOyun_dinoseviyeyumurtauretim`
--

CREATE TABLE `dinoOyun_dinoseviyeyumurtauretim` (
  `id` int(11) NOT NULL,
  `lvl` int(11) NOT NULL,
  `uretim` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `dinoOyun_dinoseviyeyumurtauretim`
--

INSERT INTO `dinoOyun_dinoseviyeyumurtauretim` (`id`, `lvl`, `uretim`) VALUES
(1, 1, 0.1),
(2, 2, 0.12),
(3, 3, 0.14),
(4, 4, 0.16),
(5, 5, 0.18),
(6, 6, 0.2),
(7, 7, 0.22),
(8, 8, 0.24),
(9, 9, 0.26),
(10, 10, 0.28),
(11, 11, 0.3),
(12, 12, 0.32),
(13, 13, 0.34),
(14, 14, 0.36),
(15, 15, 0.38);

-- --------------------------------------------------------

--
-- Table structure for table `dinoOyun_genelayarlar`
--

CREATE TABLE `dinoOyun_genelayarlar` (
  `id` int(11) NOT NULL,
  `full_dino_sagligi` int(11) NOT NULL,
  `full_dino_aclik` int(11) NOT NULL,
  `full_dino_uyku` int(11) NOT NULL,
  `saat_farki` int(11) NOT NULL,
  `yumurta_fiyati` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `dinoOyun_genelayarlar`
--

INSERT INTO `dinoOyun_genelayarlar` (`id`, `full_dino_sagligi`, `full_dino_aclik`, `full_dino_uyku`, `saat_farki`, `yumurta_fiyati`) VALUES
(1, 5400, 180, 240, 3, 100);

-- --------------------------------------------------------

--
-- Table structure for table `dinoOyun_odemetalebi`
--

CREATE TABLE `dinoOyun_odemetalebi` (
  `id` int(11) NOT NULL,
  `miktar` int(11) NOT NULL,
  `text` varchar(500) COLLATE utf8_turkish_ci NOT NULL,
  `sahibi_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dinoOyun_uyeler`
--

CREATE TABLE `dinoOyun_uyeler` (
  `id` int(11) NOT NULL,
  `adi` varchar(20) COLLATE utf8_turkish_ci NOT NULL,
  `soyadi` varchar(20) COLLATE utf8_turkish_ci NOT NULL,
  `e_mail` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `password` varchar(20) COLLATE utf8_turkish_ci NOT NULL,
  `referans` varchar(255) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `dinoOyun_uyeler`
--

INSERT INTO `dinoOyun_uyeler` (`id`, `adi`, `soyadi`, `e_mail`, `password`, `referans`) VALUES
(1, 'Mustafa', 'SEYHAN', 'a@mail.com', '123123', '25000101'),
(2, 'deneme1', 'SEYHAN', 'b@mail.com', '123123', '25000101'),
(5, 'mus', 'SEYHAN', 'c@mail.com', '123', '1');

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
(1, '2018-12-16 22:02:49.238109', '1', 'Mustafa SEYHAN E-mail: a@mail.com', 1, '[{\"added\": {}}]', 13, 1),
(2, '2018-12-16 22:03:22.047815', '2', 'deneme1 SEYHAN E-mail: b@mail.com', 1, '[{\"added\": {}}]', 13, 1),
(3, '2018-12-16 22:04:59.799918', '1', 'Mustafa SEYHAN E-mail: a@mail.com Level => 1', 1, '[{\"added\": {}}]', 7, 1),
(4, '2018-12-16 22:05:29.753486', '2', 'deneme1 SEYHAN E-mail: b@mail.com Level => 1', 1, '[{\"added\": {}}]', 7, 1),
(5, '2018-12-16 22:36:56.932829', '1', 'Mustafa SEYHAN E-mail: a@mail.com Level => 1', 2, '[{\"changed\": {\"fields\": [\"bonus\"]}}]', 7, 1),
(6, '2018-12-16 22:41:08.292681', '1', 'Mustafa SEYHAN E-mail: a@mail.com Level => 1', 2, '[{\"changed\": {\"fields\": [\"bonus\"]}}]', 7, 1),
(7, '2018-12-16 22:54:46.888999', '2', 'deneme1 SEYHAN E-mail: b@mail.com Level => 1', 2, '[{\"changed\": {\"fields\": [\"yumurta_puani\"]}}]', 7, 1),
(8, '2018-12-16 22:55:09.453938', '2', 'deneme1 SEYHAN E-mail: b@mail.com Level => 1', 2, '[{\"changed\": {\"fields\": [\"yumurta_adet\"]}}]', 7, 1),
(9, '2018-12-17 00:24:17.469029', '3', 'mus SEYHAN E-mail: c@mail.com', 3, '', 13, 1),
(10, '2018-12-17 00:26:33.532318', '4', 'msuatafa aaa E-mail: c@mail.com', 3, '', 13, 1);

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
(7, 'dinoOyun', 'dino'),
(8, 'dinoOyun', 'dinoseviyepuan'),
(9, 'dinoOyun', 'dinoseviyeyemfiyat'),
(10, 'dinoOyun', 'dinoseviyeyumurtauretim'),
(11, 'dinoOyun', 'genelayarlar'),
(12, 'dinoOyun', 'odemetalebi'),
(13, 'dinoOyun', 'uyeler'),
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
(1, 'contenttypes', '0001_initial', '2018-12-16 21:58:54.003683'),
(2, 'auth', '0001_initial', '2018-12-16 21:58:54.834907'),
(3, 'admin', '0001_initial', '2018-12-16 21:58:55.082071'),
(4, 'admin', '0002_logentry_remove_auto_add', '2018-12-16 21:58:55.103361'),
(5, 'contenttypes', '0002_remove_content_type_name', '2018-12-16 21:58:55.240814'),
(6, 'auth', '0002_alter_permission_name_max_length', '2018-12-16 21:58:55.300072'),
(7, 'auth', '0003_alter_user_email_max_length', '2018-12-16 21:58:55.388632'),
(8, 'auth', '0004_alter_user_username_opts', '2018-12-16 21:58:55.412594'),
(9, 'auth', '0005_alter_user_last_login_null', '2018-12-16 21:58:55.510372'),
(10, 'auth', '0006_require_contenttypes_0002', '2018-12-16 21:58:55.514664'),
(11, 'auth', '0007_alter_validators_add_error_messages', '2018-12-16 21:58:55.532025'),
(12, 'auth', '0008_alter_user_username_max_length', '2018-12-16 21:58:55.594399'),
(13, 'auth', '0009_alter_user_last_name_max_length', '2018-12-16 21:58:55.728513'),
(14, 'dinoOyun', '0001_initial', '2018-12-16 21:58:56.221696'),
(15, 'sessions', '0001_initial', '2018-12-16 21:58:56.267496'),
(16, 'dinoOyun', '0002_auto_20181217_0059', '2018-12-16 21:59:18.183031');

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
('45bhraoam94qzfqrd4fuxph38dk95723', 'YjQ3ZTlhODA1N2JmYzhjMDI1NDExYjZkZWVhMjQ4NGE3NjA2MmM0MTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NGEzYTg4OTdiNTlmNDMxNjI0MzNmOTZlYWY0MzZjZmJmNzUxYThlIiwidW5hbWUiOiJNdXN0YWZhIiwicGFzcyI6ZmFsc2UsIm1haWwiOmZhbHNlLCJsb2ciOnRydWV9', '2018-12-31 15:08:37.220828'),
('awrcyjmgfsqx2y1wfxev5ez6uv7fxo69', 'YTg0YjRjZjc5MmNiMjAzN2VmY2VjYjI5NzM2NDk5ODA1YTU3MmRmOTp7InVuYW1lIjoiTXVzdGFmYSIsInBhc3MiOiIxMjMxMjMiLCJtYWlsIjoiYUBtYWlsLmNvbSIsImxvZyI6dHJ1ZSwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjU0YTNhODg5N2I1OWY0MzE2MjQzM2Y5NmVhZjQzNmNmYmY3NTFhOGUifQ==', '2019-01-04 12:24:44.424453');

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
-- Indexes for table `dinoOyun_dino`
--
ALTER TABLE `dinoOyun_dino`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dinoOyun_dino_sahibi_id_3dce326f_fk_dinoOyun_uyeler_id` (`sahibi_id`);

--
-- Indexes for table `dinoOyun_dinoseviyepuan`
--
ALTER TABLE `dinoOyun_dinoseviyepuan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dinoOyun_dinoseviyeyemfiyat`
--
ALTER TABLE `dinoOyun_dinoseviyeyemfiyat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dinoOyun_dinoseviyeyumurtauretim`
--
ALTER TABLE `dinoOyun_dinoseviyeyumurtauretim`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dinoOyun_genelayarlar`
--
ALTER TABLE `dinoOyun_genelayarlar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dinoOyun_odemetalebi`
--
ALTER TABLE `dinoOyun_odemetalebi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dinoOyun_odemetalebi_sahibi_id_f077f212_fk_dinoOyun_uyeler_id` (`sahibi_id`);

--
-- Indexes for table `dinoOyun_uyeler`
--
ALTER TABLE `dinoOyun_uyeler`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
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
-- AUTO_INCREMENT for table `dinoOyun_dino`
--
ALTER TABLE `dinoOyun_dino`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `dinoOyun_dinoseviyepuan`
--
ALTER TABLE `dinoOyun_dinoseviyepuan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `dinoOyun_dinoseviyeyemfiyat`
--
ALTER TABLE `dinoOyun_dinoseviyeyemfiyat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `dinoOyun_dinoseviyeyumurtauretim`
--
ALTER TABLE `dinoOyun_dinoseviyeyumurtauretim`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `dinoOyun_genelayarlar`
--
ALTER TABLE `dinoOyun_genelayarlar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `dinoOyun_odemetalebi`
--
ALTER TABLE `dinoOyun_odemetalebi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dinoOyun_uyeler`
--
ALTER TABLE `dinoOyun_uyeler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
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
-- Constraints for table `dinoOyun_dino`
--
ALTER TABLE `dinoOyun_dino`
  ADD CONSTRAINT `dinoOyun_dino_sahibi_id_3dce326f_fk_dinoOyun_uyeler_id` FOREIGN KEY (`sahibi_id`) REFERENCES `dinoOyun_uyeler` (`id`);

--
-- Constraints for table `dinoOyun_odemetalebi`
--
ALTER TABLE `dinoOyun_odemetalebi`
  ADD CONSTRAINT `dinoOyun_odemetalebi_sahibi_id_f077f212_fk_dinoOyun_uyeler_id` FOREIGN KEY (`sahibi_id`) REFERENCES `dinoOyun_uyeler` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
