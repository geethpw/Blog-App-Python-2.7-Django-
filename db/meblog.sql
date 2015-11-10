-- phpMyAdmin SQL Dump
-- version 4.5.0.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 10, 2015 at 11:50 AM
-- Server version: 10.0.17-MariaDB
-- PHP Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `meblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(19, 'Can add post', 7, 'add_post'),
(20, 'Can change post', 7, 'change_post'),
(21, 'Can delete post', 7, 'delete_post'),
(22, 'Can add categories', 8, 'add_categories'),
(23, 'Can change categories', 8, 'change_categories'),
(24, 'Can delete categories', 8, 'delete_categories');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$20000$vaOFxJDSTa36$sCAZWKcyOAcNsXoKy7ik3X2coiWJ8f19c3p9BF1dze0=', '2015-11-10 10:46:59.000000', 1, 'admin', 'Admin', 'Meblog', 'admin@domain.com', 1, 1, '2015-11-03 07:39:41.356000'),
(2, 'pbkdf2_sha256$20000$QnHDecX11Pb7$duxXXeDpJ6nhfUADKAHZkkCpCojk4C2QC7hsMlhyylo=', NULL, 0, 'test', '', '', 'test@test.com', 0, 1, '2015-11-04 07:40:17.000000');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user_user_permissions`
--

INSERT INTO `auth_user_user_permissions` (`id`, `user_id`, `permission_id`) VALUES
(3, 2, 19),
(4, 2, 20);

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2015-11-03 07:42:23.633000', '1', 'Google Cloud Platform', 1, '', 7, 1),
(2, '2015-11-04 07:40:17.874000', '2', 'test', 1, '', 4, 1),
(3, '2015-11-04 07:40:49.155000', '2', 'test', 2, 'Changed user_permissions.', 4, 1),
(4, '2015-11-04 07:41:03.230000', '2', 'test', 2, 'Changed email.', 4, 1),
(5, '2015-11-04 09:07:38.720000', '4', 'WSGI', 2, 'Changed published_date.', 7, 1),
(6, '2015-11-04 09:09:35.342000', '5', 'asdf', 1, '', 7, 1),
(7, '2015-11-04 09:11:41.608000', '5', 'asdf', 3, '', 7, 1),
(8, '2015-11-04 09:11:47.888000', '4', 'WSGI', 2, 'Changed published_date.', 7, 1),
(9, '2015-11-05 05:54:31.813000', '1', 'Categories object', 1, '', 8, 1),
(10, '2015-11-05 05:58:59.462000', '15', 'Java 8 Lambda Expressions', 2, 'Changed category.', 7, 1),
(11, '2015-11-05 05:59:05.600000', '4', 'WSGI', 2, 'Changed category.', 7, 1),
(12, '2015-11-05 05:59:09.927000', '1', 'Google Cloud Platform', 2, 'Changed category.', 7, 1),
(13, '2015-11-05 06:39:38.656000', '2', 'Programming', 1, '', 8, 1),
(14, '2015-11-05 06:39:56.966000', '3', 'LifeStyle', 1, '', 8, 1),
(15, '2015-11-05 06:40:08.934000', '4', 'Formula 1', 1, '', 8, 1),
(16, '2015-11-05 06:40:33.180000', '15', 'Java 8 Lambda Expressions', 2, 'Changed category.', 7, 1),
(17, '2015-11-05 06:40:57.412000', '4', 'Sport', 2, 'Changed category_name.', 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(8, 'meblog', 'categories'),
(7, 'meblog', 'post'),
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2015-11-03 07:32:05.583000'),
(2, 'auth', '0001_initial', '2015-11-03 07:32:13.282000'),
(3, 'admin', '0001_initial', '2015-11-03 07:32:15.444000'),
(4, 'contenttypes', '0002_remove_content_type_name', '2015-11-03 07:32:16.616000'),
(5, 'auth', '0002_alter_permission_name_max_length', '2015-11-03 07:32:17.552000'),
(6, 'auth', '0003_alter_user_email_max_length', '2015-11-03 07:32:18.205000'),
(7, 'auth', '0004_alter_user_username_opts', '2015-11-03 07:32:18.236000'),
(8, 'auth', '0005_alter_user_last_login_null', '2015-11-03 07:32:19.049000'),
(9, 'auth', '0006_require_contenttypes_0002', '2015-11-03 07:32:19.080000'),
(10, 'sessions', '0001_initial', '2015-11-03 07:32:19.644000'),
(11, 'meblog', '0001_initial', '2015-11-03 07:37:37.294000'),
(12, 'meblog', '0002_auto_20151105_1118', '2015-11-05 05:48:36.706000');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('0ks92byiucdrlz99jsl31kjfku8j2j0y', 'MDYyYTg0ZjQ2MGYwYzA0YjhiNDI3NDc0MTg4NjVhMzdhZGFmNjUyMzp7Il9hdXRoX3VzZXJfaGFzaCI6IjJkMTQyMTZmYTVmZGYzODM5MThhMmMzNTUzOTZlZDJmZWIzZjljYjEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2015-11-23 04:35:16.668000'),
('146kqh7fl8qxnux5eikgb060vmhfgnu7', 'MDYyYTg0ZjQ2MGYwYzA0YjhiNDI3NDc0MTg4NjVhMzdhZGFmNjUyMzp7Il9hdXRoX3VzZXJfaGFzaCI6IjJkMTQyMTZmYTVmZGYzODM5MThhMmMzNTUzOTZlZDJmZWIzZjljYjEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2015-11-18 11:54:23.955000'),
('uel11awxyujwr6i958wtv0o1g7bej0ao', 'MDYyYTg0ZjQ2MGYwYzA0YjhiNDI3NDc0MTg4NjVhMzdhZGFmNjUyMzp7Il9hdXRoX3VzZXJfaGFzaCI6IjJkMTQyMTZmYTVmZGYzODM5MThhMmMzNTUzOTZlZDJmZWIzZjljYjEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2015-11-24 10:46:59.000000');

-- --------------------------------------------------------

--
-- Table structure for table `meblog_categories`
--

CREATE TABLE `meblog_categories` (
  `id` int(11) NOT NULL,
  `category_name` varchar(200) NOT NULL,
  `author_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meblog_categories`
--

INSERT INTO `meblog_categories` (`id`, `category_name`, `author_id`) VALUES
(1, 'Computer Science', 1),
(2, 'Programming', 1),
(4, 'Sport', 1),
(6, 'Movies', 1),
(7, 'Finance and Business', 1);

-- --------------------------------------------------------

--
-- Table structure for table `meblog_post`
--

CREATE TABLE `meblog_post` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `text` longtext NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `published_date` datetime(6) DEFAULT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meblog_post`
--

INSERT INTO `meblog_post` (`id`, `title`, `text`, `created_date`, `published_date`, `author_id`, `category_id`) VALUES
(1, 'Google Cloud Platform', 'Google Cloud Platform <br/> enables developers to build, test and deploy applications on Google''s highly-scalable and reliable infrastructure. Choose from computing, storage and application services for your web, mobile and backend solutions.', '2015-11-03 07:42:06.000000', '2015-11-05 11:12:17.860000', 1, 1),
(4, 'WSGI', 'The Web Server Gateway Interface (WSGI) is a specification for simple and universal interface between web servers and web applications or frameworks for the Python programming language. It was originally specified in PEP 333[1] authored by Phillip J. Eby, and published on 7 December 2003. It has since been adopted as a standard for Python web application development. The latest version of the specification is v1.0.1, also known as PEP 3333, published on 26 September 2010.', '2015-11-04 09:06:29.000000', '2015-11-06 05:51:08.893000', 1, 1),
(15, 'Java 8 Lambda Expressions', 'One issue with anonymous classes is that if the implementation of your anonymous class is very simple, such as an interface that contains only one method, then the syntax of anonymous classes may seem unwieldy and unclear. In these cases, you''re usually trying to pass functionality as an argument to another method, such as what action should be taken when someone clicks a button. Lambda expressions enable you to do this, to treat functionality as method argument, or code as data.\r\n\r\nThe previous section, Anonymous Classes, shows you how to implement a base class without giving it a name. Although this is often more concise than a named class, for classes with only one method, even an anonymous class seems a bit excessive and cumbersome. Lambda expressions let you express instances of single-method classes more compactly.\r\n\r\nThis section covers the following topics:', '2015-11-04 11:28:00.000000', '2015-11-05 03:52:55.000000', 1, 2),
(16, 'Victorious All Blacks return to New Zealand for Rugby World Cup celebrations', 'Thousands of fans turned out at Auckland airport on Wednesday to welcome home the Rugby World Cup-winning All Blacks.\r\n\r\nGround crew for national carrier Air New Zealand performed a haka as the aircraft carrying the team taxied to its gate around 7am local time.\r\n\r\n\r\nIn a final claimed by some to be the tournament’s best ever, the All Blacks fended off Australia 34-17 at Twickenham on Saturday.\r\n\r\nOn Wednesday morning, more than 2,000 fans, many having waited since 4 am, cheered wildly when the team appeared in the terminal, led by captain Richie McCaw carrying the trophy.\r\n\r\nMcCaw called the support “amazing” and coach Steve Hansen described the welcome as “overwhelming”.', '2015-11-05 10:04:49.768000', '2015-11-05 10:11:27.797000', 1, 4);

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
  ADD UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissi_permission_id_23962d04_fk_auth_permission_id` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `content_type_id` (`content_type_id`,`codename`);

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
  ADD UNIQUE KEY `user_id` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_30a071c9_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_perm_permission_id_3d7071f0_fk_auth_permission_id` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin__content_type_id_5151027a_fk_django_content_type_id` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_1c5f563_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_3ec8c61c_uniq` (`app_label`,`model`);

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
  ADD KEY `django_session_de54fa62` (`expire_date`);

--
-- Indexes for table `meblog_categories`
--
ALTER TABLE `meblog_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meblog_categories_author_id_6dca99f_fk_auth_user_id` (`author_id`);

--
-- Indexes for table `meblog_post`
--
ALTER TABLE `meblog_post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meblog_post_author_id_568d1cb7_fk_auth_user_id` (`author_id`),
  ADD KEY `meblog_post_category_id_5405fd1a_uniq` (`category_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `meblog_categories`
--
ALTER TABLE `meblog_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `meblog_post`
--
ALTER TABLE `meblog_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissi_permission_id_23962d04_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_58c48ba9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permissi_content_type_id_51277a81_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_30a071c9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_24702650_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_perm_permission_id_3d7071f0_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_7cd7acb6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin__content_type_id_5151027a_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_1c5f563_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `meblog_categories`
--
ALTER TABLE `meblog_categories`
  ADD CONSTRAINT `meblog_categories_author_id_6dca99f_fk_auth_user_id` FOREIGN KEY (`author_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `meblog_post`
--
ALTER TABLE `meblog_post`
  ADD CONSTRAINT `meblog_post_author_id_568d1cb7_fk_auth_user_id` FOREIGN KEY (`author_id`) REFERENCES `auth_user` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
