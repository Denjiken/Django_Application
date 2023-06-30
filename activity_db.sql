-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 29, 2023 at 02:04 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `activity_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `appusers_user`
--

CREATE TABLE `appusers_user` (
  `id` bigint(20) NOT NULL,
  `username` varchar(200) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `user_email` varchar(200) NOT NULL,
  `user_password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(25, 'Can add user', 7, 'add_user'),
(26, 'Can change user', 7, 'change_user'),
(27, 'Can delete user', 7, 'delete_user'),
(28, 'Can view user', 7, 'view_user'),
(29, 'Can add category', 8, 'add_category'),
(30, 'Can change category', 8, 'change_category'),
(31, 'Can delete category', 8, 'delete_category'),
(32, 'Can view category', 8, 'view_category'),
(33, 'Can add instructor', 9, 'add_instructor'),
(34, 'Can change instructor', 9, 'change_instructor'),
(35, 'Can delete instructor', 9, 'delete_instructor'),
(36, 'Can view instructor', 9, 'view_instructor'),
(37, 'Can add activities', 10, 'add_activities'),
(38, 'Can change activities', 10, 'change_activities'),
(39, 'Can delete activities', 10, 'delete_activities'),
(40, 'Can view activities', 10, 'view_activities'),
(41, 'Can add activites', 11, 'add_activites'),
(42, 'Can change activites', 11, 'change_activites'),
(43, 'Can delete activites', 11, 'delete_activites'),
(44, 'Can view activites', 11, 'view_activites'),
(45, 'Can add activity_categories', 12, 'add_activity_categories'),
(46, 'Can change activity_categories', 12, 'change_activity_categories'),
(47, 'Can delete activity_categories', 12, 'delete_activity_categories'),
(48, 'Can view activity_categories', 12, 'view_activity_categories');

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
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$600000$lcFnzPHjCtFNpUgfhEXI4z$WF+xdAZ9BKab2CW6uWQobZmMLg60FBfDyyI8YV03IRk=', '2023-06-28 05:43:52.548789', 1, 'admi', '', '', 'admin@gmail.com', 1, 1, '2023-06-28 05:39:44.334834');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(11, 'appusers', 'activites'),
(10, 'appusers', 'activities'),
(12, 'appusers', 'activity_categories'),
(8, 'appusers', 'category'),
(9, 'appusers', 'instructor'),
(7, 'appusers', 'user'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-06-28 05:00:18.273585'),
(2, 'auth', '0001_initial', '2023-06-28 05:00:31.042367'),
(3, 'admin', '0001_initial', '2023-06-28 05:00:33.800846'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-06-28 05:00:33.982436'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-06-28 05:00:34.248199'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-06-28 05:00:35.699616'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-06-28 05:00:36.865340'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-06-28 05:00:37.047694'),
(9, 'auth', '0004_alter_user_username_opts', '2023-06-28 05:00:37.116651'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-06-28 05:00:37.781732'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-06-28 05:00:37.892921'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-06-28 05:00:37.999953'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-06-28 05:00:38.109889'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-06-28 05:00:38.257801'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-06-28 05:00:38.410355'),
(16, 'auth', '0011_update_proxy_permissions', '2023-06-28 05:00:38.480297'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-06-28 05:00:38.623497'),
(18, 'sessions', '0001_initial', '2023-06-28 05:00:39.856266'),
(19, 'appusers', '0001_initial', '2023-06-28 05:40:07.338766'),
(20, 'appusers', '0002_category_instructor_activities', '2023-06-29 10:47:02.013559'),
(21, 'appusers', '0002_activity_categories_instructor_activites', '2023-06-29 11:11:15.946325');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('nv54il45b6hexgn81cvufr0ny5n9d915', '.eJxVjMsOwiAQRf-FtSGAPIpL9_0GMgODVA0kpV0Z_11JutDtOefeFwuwbyXsndawJHZhkp1-GUJ8UB0i3aHeGo-tbuuCfCT8sJ3PLdHzerR_BwV6GWtKevIWjdECHMVMWUnrPGb0ytpklBNe6By_CKJ1IM8GFRmEKaG0mb0_9Uw4cQ:1qENy4:StdhizJn-2jb-cEFJNY-d_rvu3hYcyy2fivfD1qscGo', '2023-07-12 05:43:52.611765');

-- --------------------------------------------------------

--
-- Table structure for table `registrations`
--

CREATE TABLE `registrations` (
  `registration_id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `activity_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registrations`
--

INSERT INTO `registrations` (`registration_id`, `student_id`, `activity_id`) VALUES
(12, 12, 12),
(13, 13, 13),
(14, 14, 14),
(15, 15, 15),
(16, 16, 16),
(17, 17, 17);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `student_id` int(11) NOT NULL,
  `student_name` varchar(50) DEFAULT NULL,
  `student_email` varchar(100) DEFAULT NULL,
  `student_year` enum('first year','second year','third year','fourth year','fifth year') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`student_id`, `student_name`, `student_email`, `student_year`) VALUES
(1, 'hjgdfgsjf', 'hsdggh@gmail.com', ''),
(2, 'hfkjhsdfh', 'hasgdhga@gmail.com', ''),
(3, 'hjgdfgsjf', 'vicentearman7@gmail.com', ''),
(4, 'anoytherden', 'denjiken@gmail.com', ''),
(5, 'vicente arman', 'dgfdsftyf@gmail.com', ''),
(6, 'vicente arman', 'vicentearman7@gmail.com', ''),
(7, 'anoytherden', 'root@localhost', ''),
(8, 'vicente arman', 'dgfdsftyf@gmail.com', ''),
(9, 'Arman Vicente', 'armanvicente4@gmail.com', ''),
(10, 'Vicente Arman', 'armanvicente4@gmail.com', ''),
(11, 'Arman Vicente', 'vicentearman7@gmail.com', ''),
(12, 'Arman Vicente', 'vicentearman7@gmail.com', ''),
(13, 'Arman Vicente', 'vicentearman7@gmail.com', ''),
(14, 'vicente arman', 'root@localhost', ''),
(15, 'Jaycris Vicente', 'jaycrisvicente@gmail.com', ''),
(16, 'Arman Vicente', 'armanvicente4@gmail.com', ''),
(17, 'vicente arman', 'hazuki@gmail.com', ''),
(18, 'Arman Vicente', 'hazuki@gmail.com', '');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `user_email` varchar(100) DEFAULT NULL,
  `user_password` varchar(255) DEFAULT NULL,
  `user_type` enum('instructor','student') NOT NULL DEFAULT 'instructor'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `first_name`, `last_name`, `user_email`, `user_password`, `user_type`) VALUES
(6477, 'arman', NULL, NULL, NULL, '$2y$10$l7vs.j.g9GQxlsOvERH4tubcjW1sTtScjiLPmxjiv//PB2tNWx8PS', 'instructor'),
(647763, 'arman', NULL, NULL, NULL, '$2y$10$z1kwaa6QrNi7xdzSMRKAnO8VUTt0qrphg1GmB3wDR0Vkhgs28Hwtu', 'student'),
(6477614, 'arman', NULL, NULL, NULL, 'hans', 'student'),
(6477617, 'kaneki', NULL, NULL, NULL, 'vicente', 'student'),
(6477619, 'kaneki', NULL, NULL, NULL, 'vicente', 'student'),
(6477630, 'kaneki', NULL, NULL, NULL, '$2y$10$O/9E/GCE6bL16llpRjR10OXXWiDyhFPh6mWdB.53u1EQE9FG29IRa', 'student'),
(64776485, 'arman', NULL, NULL, NULL, '$2y$10$gOuw/Ahmods4pYBx11Kil.fb4CaJJ2dwIB5dAaNbf4fWEpxrLPCc2', 'student'),
(1685577914, 'vicente', NULL, NULL, NULL, '$2y$10$6BJ37tbMT.VjB0lMC6fVA.lVix2cjIaufHQdTSSJAWV3.seZPL6ra', 'student'),
(1685577955, 'vicentearman', NULL, NULL, NULL, '$2y$10$DesR3kWkOtwT5wCMX8tNnugtXVVuUUJiuGb2zAPH2pKnf7iBc41Py', 'instructor'),
(1685580156, 'rdgfdydtrrstf', NULL, NULL, NULL, '$2y$10$ulRqa2Cf96BqgFnkTFcwiOvILIpvCsOt4VCG2vgsHfmg0HjdZ/WZu', 'instructor'),
(1685580292, 'haiseken', NULL, NULL, NULL, '$2y$10$TwGRode9P.FGgz9ouiqX8OTAeAVh0WGSnnr1XqSrE/sO1mPJRNi.K', 'instructor'),
(1685580454, 'kenehaise', NULL, NULL, NULL, '$2y$10$vzytGSrGNblvzcuJLgbCFufMtAg/O.WLGGTfGfBJAU7ajYw6IBV4q', 'student'),
(1685581466, 'whatif', NULL, NULL, NULL, '$2y$10$KQ6OECnEsI90QPwee5EddOGL6fFNcptM2QHzAzXYXMHlYzucYJsF2', 'instructor'),
(1685605802, 'Kaizu', NULL, NULL, NULL, '$2y$10$B5HAjHiBcTbM7bbDgJnb9ujT3OQIoxixxKjYqpeq8/5DhIuHoSSwW', 'student'),
(1685664766, 'Haiyyy', NULL, NULL, NULL, '$2y$10$qHvEbym2fiTWxh8x.l6j7O4M6sGr07KTh0p/LwyHo/scs5M5yhnNu', 'student'),
(1685665507, 'Haiyyyyy', NULL, NULL, NULL, '$2y$10$jmcmxFSMuUkuFxWxvktwf.T7viwyZZIO5Wr9I.3ybIMxWDnfw4HL2', 'student'),
(1685666120, 'Haiyyyyyy', NULL, NULL, NULL, '$2y$10$XgZiYRvd3olxlZiz1RRCQuudw8L2R9rd/MbxYCaQ1GAVOQwcDIZue', 'student'),
(1685666180, 'Haiyyyyyyy', NULL, NULL, NULL, '$2y$10$67W5qr6rbdM59QLRnzs/guDZQ45w3dIbAFL4Z5B/8seQwsQEF8zJi', 'instructor'),
(1685666229, 'hwyyyyyy', NULL, NULL, NULL, '$2y$10$W4yf8C6FrGrNorUycUqmR.3wKnXLbJSuiPUdY2l6kY7aUAjYC2wTq', 'instructor'),
(1685668683, 'hello', NULL, NULL, NULL, '$2y$10$VNRE/kpIELZRZMnJPqf8QeWcSkjo6AbHgB0GrRcITWu03TCnLKk2W', 'student'),
(1685668835, 'armando', NULL, NULL, NULL, '$2y$10$ofttSMvVFsrWu0CX/rRTUetMBAEe4icMTmp7LHJ3oJSLu1oIk0E72', 'student'),
(1685668933, 'kanekiii', NULL, NULL, NULL, '$2y$10$9OWZHQkeMyf50SAwR2y8le7.kDWLObPaQbj9BcWrpsr3bj7r9rBlW', 'instructor'),
(1685669183, 'kanekun', NULL, NULL, NULL, '$2y$10$PIxZ9h370eQfom.thIAZb.mZfA1iAO4182/dka0AW/F6LTRxWfDNu', 'student'),
(2147483647, 'arman', NULL, NULL, NULL, 'hans', 'student');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appusers_user`
--
ALTER TABLE `appusers_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_email` (`user_email`);

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
-- Indexes for table `registrations`
--
ALTER TABLE `registrations`
  ADD PRIMARY KEY (`registration_id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `activity_id` (`activity_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appusers_user`
--
ALTER TABLE `appusers_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `registrations`
--
ALTER TABLE `registrations`
  MODIFY `registration_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2147483648;

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
-- Constraints for table `registrations`
--
ALTER TABLE `registrations`
  ADD CONSTRAINT `registrations_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`),
  ADD CONSTRAINT `registrations_ibfk_2` FOREIGN KEY (`activity_id`) REFERENCES `activities` (`activity_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
