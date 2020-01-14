-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 14, 2020 at 07:10 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mahad`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', '2019-12-25 01:40:33', '2019-12-25 01:40:33'),
(2, NULL, 1, 'Category 2', 'category-2', '2019-12-25 01:40:33', '2019-12-25 01:40:33');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(23, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(24, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(25, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 4),
(26, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, NULL, 6),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(30, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, NULL, 2),
(31, 5, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, NULL, 3),
(32, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 4),
(33, 5, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 5),
(34, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 6),
(35, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(37, 5, 'meta_description', 'text_area', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 9),
(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 10),
(39, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(40, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 12),
(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 13),
(42, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, NULL, 14),
(43, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, NULL, 15),
(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(45, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, NULL, 2),
(46, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 3),
(47, 6, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 4),
(48, 6, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 5),
(49, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(50, 6, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 7),
(51, 6, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 8),
(52, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(53, 6, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, NULL, 10),
(54, 6, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, NULL, 11),
(55, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, NULL, 12),
(56, 8, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(57, 8, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 2),
(58, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 3),
(59, 8, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 4),
(60, 8, 'description', 'text', 'Description', 0, 1, 1, 1, 1, 1, '{}', 5),
(61, 8, 'slug', 'text', 'Slug', 0, 1, 1, 1, 1, 1, '{}', 6),
(62, 9, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(63, 9, 'body', 'rich_text_box', 'Body', 0, 1, 1, 1, 1, 1, '{}', 2),
(64, 9, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 3),
(65, 9, 'slug', 'text', 'Slug', 0, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 5),
(66, 9, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 1, 0, 1, '{}', 6),
(67, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(68, 9, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 4);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2019-12-25 01:40:24', '2019-12-25 01:40:24'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2019-12-25 01:40:24', '2019-12-25 01:40:24'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2019-12-25 01:40:24', '2019-12-25 01:40:24'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2019-12-25 01:40:32', '2019-12-25 01:40:32'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2019-12-25 01:40:33', '2019-12-25 01:40:33'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2019-12-25 01:40:34', '2019-12-25 01:40:34'),
(8, 'items', 'items', 'Item', 'Items', 'voyager-watch', 'App\\Item', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-12-26 02:40:31', '2019-12-26 02:40:31'),
(9, 'ourpages', 'ourpages', 'Ourpage', 'Ourpages', NULL, 'App\\Ourpage', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-12-27 05:05:28', '2019-12-27 05:05:28'),
(10, 'contact', 'contact', 'Contact', 'Contacts', NULL, 'App\\Contact', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-01-11 23:26:27', '2020-01-11 23:26:27');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `created_at`, `updated_at`, `name`, `description`, `slug`) VALUES
(1, '2019-12-26 02:41:24', '2019-12-26 02:41:24', 'Area of expertise', 'HELOE', 'area-of-expertise');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2019-12-25 01:40:26', '2019-12-25 01:40:26'),
(2, 'main_menu', '2019-12-25 02:11:27', '2019-12-25 02:11:27');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2019-12-25 01:40:26', '2019-12-25 01:40:26', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 5, '2019-12-25 01:40:26', '2019-12-25 01:40:26', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2019-12-25 01:40:26', '2019-12-25 01:40:26', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2019-12-25 01:40:27', '2019-12-25 01:40:27', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2019-12-25 01:40:27', '2019-12-25 01:40:27', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 10, '2019-12-25 01:40:27', '2019-12-25 01:40:27', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 11, '2019-12-25 01:40:27', '2019-12-25 01:40:27', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 12, '2019-12-25 01:40:27', '2019-12-25 01:40:27', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 13, '2019-12-25 01:40:27', '2019-12-25 01:40:27', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 14, '2019-12-25 01:40:27', '2019-12-25 01:40:27', 'voyager.settings.index', NULL),
(11, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 8, '2019-12-25 01:40:32', '2019-12-25 01:40:32', 'voyager.categories.index', NULL),
(12, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 6, '2019-12-25 01:40:34', '2019-12-25 01:40:34', 'voyager.posts.index', NULL),
(13, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 7, '2019-12-25 01:40:35', '2019-12-25 01:40:35', 'voyager.pages.index', NULL),
(14, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 13, '2019-12-25 01:40:38', '2019-12-25 01:40:38', 'voyager.hooks', NULL),
(15, 2, 'Home', '/', '_self', NULL, '#000000', NULL, 1, '2019-12-25 02:11:40', '2019-12-25 02:14:06', NULL, ''),
(16, 2, 'About', '/about', '_self', NULL, '#000000', NULL, 2, '2019-12-25 02:12:15', '2019-12-25 02:14:06', NULL, ''),
(17, 2, 'Services', '', '_self', NULL, '#000000', NULL, 3, '2019-12-25 02:12:31', '2020-01-09 01:45:49', NULL, ''),
(18, 2, 'Procedures', '', '_self', NULL, '#000000', NULL, 4, '2019-12-25 02:12:41', '2020-01-09 01:45:49', NULL, ''),
(19, 2, 'Contact', '/contact', '_self', NULL, '#000000', NULL, 5, '2019-12-25 02:12:47', '2020-01-09 01:45:49', NULL, ''),
(20, 2, 'About Company', '/pages/about-company', '_self', NULL, '#000000', 16, 1, '2019-12-25 02:12:56', '2019-12-25 23:22:52', NULL, ''),
(21, 2, 'Message From Chairman', '/about/message-from-chairman', '_self', NULL, '#000000', 16, 2, '2019-12-25 02:13:03', '2019-12-27 05:19:56', NULL, ''),
(22, 2, 'Message From Executive Director', '', '_self', NULL, '#000000', 16, 5, '2019-12-25 02:13:20', '2019-12-27 00:04:06', NULL, ''),
(24, 2, 'Message From Business Development Director', '/about/message-from-business-development-director', '_self', NULL, '#000000', 16, 4, '2019-12-25 02:14:01', '2019-12-29 23:27:18', NULL, ''),
(25, 1, 'Items', '', '_self', 'voyager-watch', NULL, NULL, 15, '2019-12-26 02:40:32', '2019-12-26 02:40:32', 'voyager.items.index', NULL),
(26, 2, 'Message From Managing Director', '/about/message-from-managing-director', '_self', NULL, '#000000', 16, 3, '2019-12-27 00:03:57', '2019-12-29 23:06:04', NULL, ''),
(27, 1, 'Ourpages', '', '_self', NULL, NULL, NULL, 16, '2019-12-27 05:05:29', '2019-12-27 05:05:29', 'voyager.ourpages.index', NULL),
(28, 2, 'Message From Vekha Bahadur Ghimire', '/about/message-from-vekha-bahadur-ghimire', '_self', NULL, '#000000', 22, 1, '2019-12-30 00:29:18', '2019-12-30 00:32:00', NULL, ''),
(29, 2, 'Message From Prakash Sapkota', '', '_self', NULL, '#000000', 22, 2, '2019-12-30 00:29:58', '2019-12-30 00:30:06', NULL, ''),
(30, 2, 'Required Documents', '/procedures/required-documents', '_self', NULL, '#000000', 18, 1, '2020-01-07 23:06:54', '2020-01-08 02:31:58', NULL, ''),
(31, 2, 'Recruitment', '/procedures/recruitment', '_self', NULL, '#000000', 18, 2, '2020-01-08 00:08:38', '2020-01-08 00:08:57', NULL, ''),
(33, 1, 'Contacts', '', '_self', NULL, NULL, NULL, 17, '2020-01-11 23:26:27', '2020-01-11 23:26:27', 'voyager.contact.index', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(28, '2019_12_25_062305_products', 3),
(29, '2019_12_25_062709_cretae_products_table', 4),
(31, '2014_10_12_000000_create_users_table', 5),
(32, '2014_10_12_100000_create_password_resets_table', 5),
(33, '2016_01_01_000000_add_voyager_user_fields', 5),
(34, '2016_01_01_000000_create_data_types_table', 5),
(35, '2016_01_01_000000_create_pages_table', 5),
(36, '2016_01_01_000000_create_posts_table', 5),
(37, '2016_02_15_204651_create_categories_table', 5),
(38, '2016_05_19_173453_create_menu_table', 5),
(39, '2016_10_21_190000_create_roles_table', 5),
(40, '2016_10_21_190000_create_settings_table', 5),
(41, '2016_11_30_135954_create_permission_table', 5),
(42, '2016_11_30_141208_create_permission_role_table', 5),
(43, '2016_12_26_201236_data_types__add__server_side', 5),
(44, '2017_01_13_000000_add_route_to_menu_items_table', 5),
(45, '2017_01_14_005015_create_translations_table', 5),
(46, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 5),
(47, '2017_03_06_000000_add_controller_to_data_types_table', 5),
(48, '2017_04_11_000000_alter_post_nullable_fields_table', 5),
(49, '2017_04_21_000000_add_order_to_data_rows_table', 5),
(50, '2017_07_05_210000_add_policyname_to_data_types_table', 5),
(51, '2017_08_05_000000_add_group_to_settings_table', 5),
(52, '2017_11_26_013050_add_user_role_relationship', 5),
(53, '2017_11_26_015000_create_user_roles_table', 5),
(54, '2018_03_11_000000_add_user_settings', 5),
(55, '2018_03_14_000000_add_details_to_data_types_table', 5),
(56, '2018_03_16_000000_make_settings_value_nullable', 5),
(57, '2019_12_25_063009_create_products_table', 5),
(58, '2019_12_25_071313_add_tag_to_products_table', 6),
(59, '2019_12_26_070142_create_items_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `ourpages`
--

CREATE TABLE `ourpages` (
  `id` int(10) UNSIGNED NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ourpages`
--

INSERT INTO `ourpages` (`id`, `body`, `image`, `slug`, `created_at`, `updated_at`, `title`) VALUES
(1, '<p>It is my privilege to introduce Mahad Manpower Pvt. Ltd. Established in the year 2002 A.D. as a leading human resources Manpower of Nepal with a faith in people&rsquo;s heart. Also, I am delighted to have a positive response from valuable clients and appreciation from the candidates.</p>\r\n<p>Mahad Manpower Pvt. Ltd. works with the objective of providing quality human resources to the companies located abroad. At the same time, we are doing our best to minimize the unemployment crisis in the country and to add the foreign currency to the national treasury.</p>\r\n<p>Mahad Manpower Pvt. Ltd. is proficient and experienced in supplying enthusiastic, reliable and energetic workforce-professionals, skilled and semi skilled etc all around the world. Our vision is to be a quality conscious company assuring better performance of the workers having sincerity, honesty, loyalty and hardworking ability. Since more than a decade.&nbsp;</p>\r\n<p>Last but not the least, I grab this opportunity to thank all those esteemed and prestigious clients who have trusted Mahad Manpower Pvt. Ltd. to supply them with quality manpower. With all those well wishers, Mahad Manpower Pvt. Ltd. has been able to hold a leading position today in Nepal and abroad.</p>\r\n<p>I assure same ahead in the future too.</p>\r\n<p>Thanking you all with kindest Regards,</p>\r\n<p><strong>Ishor Shrestha</strong></p>\r\n<p>Chairman</p>\r\n<p>+977 9851032179</p>', 'ourpages\\December2019\\9Rhb4a9poz45FGhtps4S.jpg', 'message-from-chairman', '2019-12-27 05:15:00', '2019-12-29 22:56:43', 'Message From Chairman'),
(2, '<p>We take pleasure in introducing ourselves as an emerging and trust worthy Manpower licensed by the Labor Ministry Government of Nepal. We have proven record of extensive experience in meeting the manpower requirements of the Middle East.</p>\r\n<p>Mahad Manpower Pvt. Ltd. is proficient and experienced in supplying enthusiastic, reliable and energetic workforce-professionals, skilled and semi skilled etc all around the world. Our vision is to be a quality conscious company assuring better performance of the workers having sincerity, honesty, loyalty and hardworking ability. since more than a decade, I always consider the fact that the human potentiality should be utilized to the maximum extent for the betterment of the world. Hence, our priority is always to bridge up the and the human resources. In short, we undertake the responsibility to provide the right man for the job.</p>\r\n<p><strong>Sait Bahadur Rai</strong></p>\r\n<p>Managing Director</p>\r\n<p>+977 9851069298</p>', NULL, 'message-from-managing-director', '2019-12-29 22:56:00', '2019-12-29 23:03:10', 'Message From Managing director'),
(3, '<p>I&rsquo;d like to convey you my personal regards and welcome you to witness the potentials and value of choosing to work with us as your manpower recruitment partner.&nbsp;</p>\r\n<p>I welcome you to Mahad Manpower Pvt. Ltd. which will guarantee you experience and facility like never before with world class recruitment services with emphasis on quality, understanding and careful analysis into each candidate&rsquo;s adaptability to bring about our satisfaction.</p>\r\n<p>The best thing about Mahad Manpower Pvt. Ltd. is that you have the advantage of securing your corporate goals through utilization of its resource base, professionals, and strategic alliances we have formed partners from all around the world. Evermore concerned on working on behalf of you, we assure, you&rsquo;ll find our services unbeatable and second to none.</p>\r\n<p><strong>Mariyanti T Jhin </strong></p>\r\n<p>Business Development Director</p>\r\n<p>+017 400 7933</p>', NULL, 'message-from-business-development-director', '2019-12-29 23:22:43', '2019-12-29 23:22:43', 'Message From Business Development Director'),
(4, '<p>I am grateful for your deep interest and time you spent in getting to know about Mahad Manpower Pvt. Ltd.</p>\r\n<p>I welcome you to Mahad Manpower Pvt. Ltd. which will guarantee you experience and facility like never before with world class recruitment services with emphasis on quality, understanding and careful analysis into each candidate&rsquo;s adaptability to bring about our satisfaction.</p>\r\n<p>The best thing about Mahad Manpower Pvt. Ltd. is that you have the advantage of securing your corporate goals through utilization of its resource base, professionals, and strategic alliances we have formed partners from all around the world. Evermore concerned on working on behalf of you, we assure, you&rsquo;ll find our services unbeatable and second to none.</p>\r\n<p><strong>Vekha Bahadur Ghimire</strong></p>\r\n<p>Executive Director</p>\r\n<p>+977 9851055194, +60 126677914</p>', NULL, 'message-from-executive-director', '2019-12-30 00:26:30', '2019-12-30 00:26:30', 'Message From Executive Director');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 'Message From Chairman', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2019-12-25 01:40:36', '2019-12-27 04:45:49');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2019-12-25 01:40:27', '2019-12-25 01:40:27'),
(2, 'browse_bread', NULL, '2019-12-25 01:40:27', '2019-12-25 01:40:27'),
(3, 'browse_database', NULL, '2019-12-25 01:40:27', '2019-12-25 01:40:27'),
(4, 'browse_media', NULL, '2019-12-25 01:40:27', '2019-12-25 01:40:27'),
(5, 'browse_compass', NULL, '2019-12-25 01:40:27', '2019-12-25 01:40:27'),
(6, 'browse_menus', 'menus', '2019-12-25 01:40:27', '2019-12-25 01:40:27'),
(7, 'read_menus', 'menus', '2019-12-25 01:40:27', '2019-12-25 01:40:27'),
(8, 'edit_menus', 'menus', '2019-12-25 01:40:28', '2019-12-25 01:40:28'),
(9, 'add_menus', 'menus', '2019-12-25 01:40:28', '2019-12-25 01:40:28'),
(10, 'delete_menus', 'menus', '2019-12-25 01:40:28', '2019-12-25 01:40:28'),
(11, 'browse_roles', 'roles', '2019-12-25 01:40:28', '2019-12-25 01:40:28'),
(12, 'read_roles', 'roles', '2019-12-25 01:40:28', '2019-12-25 01:40:28'),
(13, 'edit_roles', 'roles', '2019-12-25 01:40:28', '2019-12-25 01:40:28'),
(14, 'add_roles', 'roles', '2019-12-25 01:40:28', '2019-12-25 01:40:28'),
(15, 'delete_roles', 'roles', '2019-12-25 01:40:28', '2019-12-25 01:40:28'),
(16, 'browse_users', 'users', '2019-12-25 01:40:28', '2019-12-25 01:40:28'),
(17, 'read_users', 'users', '2019-12-25 01:40:28', '2019-12-25 01:40:28'),
(18, 'edit_users', 'users', '2019-12-25 01:40:28', '2019-12-25 01:40:28'),
(19, 'add_users', 'users', '2019-12-25 01:40:28', '2019-12-25 01:40:28'),
(20, 'delete_users', 'users', '2019-12-25 01:40:28', '2019-12-25 01:40:28'),
(21, 'browse_settings', 'settings', '2019-12-25 01:40:28', '2019-12-25 01:40:28'),
(22, 'read_settings', 'settings', '2019-12-25 01:40:29', '2019-12-25 01:40:29'),
(23, 'edit_settings', 'settings', '2019-12-25 01:40:29', '2019-12-25 01:40:29'),
(24, 'add_settings', 'settings', '2019-12-25 01:40:29', '2019-12-25 01:40:29'),
(25, 'delete_settings', 'settings', '2019-12-25 01:40:29', '2019-12-25 01:40:29'),
(26, 'browse_categories', 'categories', '2019-12-25 01:40:32', '2019-12-25 01:40:32'),
(27, 'read_categories', 'categories', '2019-12-25 01:40:32', '2019-12-25 01:40:32'),
(28, 'edit_categories', 'categories', '2019-12-25 01:40:32', '2019-12-25 01:40:32'),
(29, 'add_categories', 'categories', '2019-12-25 01:40:32', '2019-12-25 01:40:32'),
(30, 'delete_categories', 'categories', '2019-12-25 01:40:32', '2019-12-25 01:40:32'),
(31, 'browse_posts', 'posts', '2019-12-25 01:40:34', '2019-12-25 01:40:34'),
(32, 'read_posts', 'posts', '2019-12-25 01:40:34', '2019-12-25 01:40:34'),
(33, 'edit_posts', 'posts', '2019-12-25 01:40:34', '2019-12-25 01:40:34'),
(34, 'add_posts', 'posts', '2019-12-25 01:40:34', '2019-12-25 01:40:34'),
(35, 'delete_posts', 'posts', '2019-12-25 01:40:34', '2019-12-25 01:40:34'),
(36, 'browse_pages', 'pages', '2019-12-25 01:40:35', '2019-12-25 01:40:35'),
(37, 'read_pages', 'pages', '2019-12-25 01:40:35', '2019-12-25 01:40:35'),
(38, 'edit_pages', 'pages', '2019-12-25 01:40:35', '2019-12-25 01:40:35'),
(39, 'add_pages', 'pages', '2019-12-25 01:40:35', '2019-12-25 01:40:35'),
(40, 'delete_pages', 'pages', '2019-12-25 01:40:36', '2019-12-25 01:40:36'),
(41, 'browse_hooks', NULL, '2019-12-25 01:40:38', '2019-12-25 01:40:38'),
(42, 'browse_items', 'items', '2019-12-26 02:40:32', '2019-12-26 02:40:32'),
(43, 'read_items', 'items', '2019-12-26 02:40:32', '2019-12-26 02:40:32'),
(44, 'edit_items', 'items', '2019-12-26 02:40:32', '2019-12-26 02:40:32'),
(45, 'add_items', 'items', '2019-12-26 02:40:32', '2019-12-26 02:40:32'),
(46, 'delete_items', 'items', '2019-12-26 02:40:32', '2019-12-26 02:40:32'),
(47, 'browse_ourpages', 'ourpages', '2019-12-27 05:05:29', '2019-12-27 05:05:29'),
(48, 'read_ourpages', 'ourpages', '2019-12-27 05:05:29', '2019-12-27 05:05:29'),
(49, 'edit_ourpages', 'ourpages', '2019-12-27 05:05:29', '2019-12-27 05:05:29'),
(50, 'add_ourpages', 'ourpages', '2019-12-27 05:05:29', '2019-12-27 05:05:29'),
(51, 'delete_ourpages', 'ourpages', '2019-12-27 05:05:29', '2019-12-27 05:05:29'),
(52, 'browse_contact', 'contact', '2020-01-11 23:26:27', '2020-01-11 23:26:27'),
(53, 'read_contact', 'contact', '2020-01-11 23:26:27', '2020-01-11 23:26:27'),
(54, 'edit_contact', 'contact', '2020-01-11 23:26:27', '2020-01-11 23:26:27'),
(55, 'add_contact', 'contact', '2020-01-11 23:26:27', '2020-01-11 23:26:27'),
(56, 'delete_contact', 'contact', '2020-01-11 23:26:27', '2020-01-11 23:26:27');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(5, 2, 1, 'About Us', NULL, NULL, '<p>Mahad Manpower Pvt. Ltd. has achieved consistent growth over the past 10 years ensuring to become a global leader with the support of our highly qualified panel of experts in screening and recruiting of both White &amp; Blue Collar skilled, semi-skilled &amp; unskilled personnel in the field of Engineering, Oil and Gas, Shutdowns / Turnarounds (Maintenance), Electrical &amp; Instrumentation, EPC, Construction, Water Treatment &amp; Sewage Projects, Petrochemicals, Power &amp; Utilities, Hospitality, Catering etc.</p>\r\n<p>We offer wide variety of services like Talent Acquisition, Project Recruitments, Manpower Services, Technical Hiring &amp; Sourcing, Head Hunting etc. Mahad Manpower Pvt. Ltd. target over 2000+ placements every year around the globe specially in GCC. We are one of the fast growing recruitment firm globally recognized market leaders in varied Industry Sectors providing from Candidates to major blue chip companies.</p>\r\n<p>We assure that, our team of experts are highly qualified &amp; committed in providing all types of reliable recruitment solutions for hiring the best talent and services in fulfilling the Client Requirements.</p>\r\n<p>We are feeling pleasure introducing our organization Mahad Manpower Pvt. Ltd. as a Manpower requirement agent of the nation, and feel much privileged to reach to you through this company profile. On this very auspicious occasion of introducing ourselves as a company, we, on behalf of board of directors and staffs, would like to extend our sincere gratitude to you all the well wishers or affiliated individuals and institutions for all the kind and support.</p>\r\n<p>Mahad Manpower Pvt. Ltd. is conceived and planned by its executive team having expertise and experiences of more then ten years in supplying the Nepali workers and human resources of various categories ranking in four parts as professionals, skilled technicians, semi-skilled to unskilled human resource particularly in the field of engineering, building construction and contracting ,office personnel management, transportation, hotels and catering staffs, hospitals, garments and textile and many more.&nbsp;</p>', 'posts\\December2019\\jUvZuwcpyr2427BzJYSa.jpg', 'about', NULL, NULL, 'PUBLISHED', 0, '2019-12-25 02:09:11', '2019-12-26 23:47:09'),
(6, 2, 1, 'Area Of Expertise', NULL, NULL, '<p>Our Consultants are dedicated to their own sectors and have access to a unique overview.&nbsp;</p>\r\n<p>Our sourcing professionals have extensive backgrounds and proficiency in a varied scope of global industries.</p>\r\n<p>We hire best talent and enhance the success of our client.</p>\r\n<p>Successfully managed the overall end to end recruitments in the industry sectors listed below:</p>\r\n<p>&bull; Agriculture &amp; Landscaping</p>\r\n<p>&bull; Aviation &amp; Logistics</p>\r\n<p>&bull; Catering Management</p>\r\n<p>&bull; Engineering &amp; Construction</p>\r\n<p>&bull; Facility Management &amp; Services</p>\r\n<p>&bull; Hospitality</p>\r\n<p>&bull; IT &amp; Telecom</p>\r\n<p>&bull; MEP</p>\r\n<p>&bull; Oil &amp; Gas, Petrochemical</p>\r\n<p>&bull; Power &amp; Energy</p>\r\n<p>&bull; Pharmaceuticals &amp; Healthcare</p>', 'posts\\December2019\\4iah02rlcx6fNjK1AOo2.png', 'area-of-expert', NULL, NULL, 'PUBLISHED', 0, '2019-12-25 02:27:34', '2019-12-26 23:26:06'),
(7, 2, 1, 'Core Services', NULL, NULL, '<p><span style=\"color: #454545; font-family: \'Work Sans\', sans-serif; font-size: 15px; background-color: #fafafa;\">Our Consultants provides their own best core services on your needs</span></p>\r\n<p>&bull; Talent Acquisition</p>\r\n<p>&bull; Project/Overseas Recruitment</p>\r\n<p>&bull; Manpower Services</p>\r\n<p>&bull; Technical Hiring &amp; Sourcing</p>\r\n<p>&bull; Head Hunting</p>\r\n<p>&bull; Interview Facility</p>\r\n<p>&bull; Centre Assistance for Technical Trade Testing</p>', 'posts\\December2019\\3VeG2w5YFewmYwSDz25z.jpg', 'core-services', NULL, NULL, 'PUBLISHED', 0, '2019-12-25 02:31:52', '2019-12-26 00:18:02'),
(8, 2, 1, 'Other Services', NULL, NULL, '<p>Our Consultant provides the other services along with the core and the expertise</p>\r\n<p>&bull; Air Ticketing</p>\r\n<p>&bull; Certificate Attestation</p>\r\n<p>&bull; Counseling/Feedback Session</p>\r\n<p>&bull; Emigration Services</p>\r\n<p>&bull; Visa Services &amp; Endorsements</p>', 'posts\\December2019\\aX3wD9SpxthutxLvktE7.jpg', 'other-services', NULL, NULL, 'PUBLISHED', 0, '2019-12-26 00:35:04', '2019-12-26 03:41:55'),
(9, 2, 1, 'REQUIRED DOCUMENTS', NULL, NULL, '<p>Requirements of documents from workers seeking employment vary from one country to another. Requirement of documents also depend on whether the embassy of the manpower importing country has a diplomatic mission in Nepal or not. Basically, we demand two types of documents before making a final decision for sending workers overseas. We follow the standard government provisions to avoid unnecessary hassles to the workers.</p>\r\n<p>Principle Documents:</p>\r\n<p>1. Demand Letter</p>\r\n<p>2. Power of Attorney</p>\r\n<p>3. Employment Contract</p>\r\n<p>4. Service Agreement between Company &amp; our Company</p>\r\n<p>5. Guarantee Letter</p>\r\n<p><strong>Demand Letter:</strong></p>\r\n<p>Addressed to authorizing Mahad Manpower Pvt. Ltd. (Govt. Lic. No. 981/067/068) Kathmandu, Nepal mentioning the number of workers required in each categories with salary, duty hour, food, accommodation &amp; other benefits to workers.</p>\r\n<p><strong>Power of Attorney:</strong></p>\r\n<p>Addressed to authorizing Mahad Manpower Pvt. Ltd. (Govt. Lic. No. 981/067/068) Kathmandu, Nepal to be true and lawful attorney and agent of Nepal.</p>\r\n<p><strong>Service Agreement:</strong></p>\r\n<p>Employing Company should provide us service agreement between company and recruitment agency in Nepal.</p>\r\n<p><strong>Employment Contract:</strong></p>\r\n<p>One copy each signed and Sealed by the employer &amp; employee.</p>\r\n<p><strong>Guarantee Letter:</strong></p>\r\n<p>Signed and stamped copy by the employer company should be mention that not to be deploy to other countries for work purpose.</p>\r\n<p>Note: Documents Should be duly sealed by the Ministry of Foreign Affairs, Chamber of Commerce or concerned Government Authority &amp; Nepalese Embassy of the respective country.</p>\r\n<p>&nbsp;</p>', 'posts\\January2020\\LQfzhLEML7jbtgLrbnfG.jpg', 'required-documents', NULL, NULL, 'PUBLISHED', 0, '2020-01-07 23:41:38', '2020-01-07 23:52:45'),
(10, 2, 1, 'Recruitment', NULL, NULL, '<h3>Recruitment Process</h3>\r\n<p>Our well qualified and experienced consultants and experts are assigned for the thorough inspection of the application at various stages making the process reliable.</p>\r\n<h3>Sourcing method</h3>\r\n<p>Owing to our extensive client list and the nature and scale of projects we have been and are associated with, we have several candidates registering themselves with us everyday, via our online career portal, fax, e-mail or by walk in. This information is collated, sorted and saved in a professionally managed and updated databank that provides a vast source of resources that can be easily accessed.</p>\r\n<p>For specific client requirements, we regularly advertise in the leading local newspapers after getting the required documents for Labour Ministry permission. Responses we receive from these exercises undergo a preliminary short listing. Candidates are then contacted and asked to come in for an assessment by our technical consultants.</p>\r\n<h3>Methods of authenticating applicant qualifications</h3>\r\n<p>We are well networked with all the top educational institutions within the regions we source personnel form, enabling us to verify applicant qualifications. This ensures that the candidates selected based on their qualification and experience can cope with the job requirement, if not exceed expectations.</p>\r\n<h3>Testing for Engineers, Supervisors, Foreman, Technicians &amp; Skilled Workers</h3>\r\n<p>For the above categories, we have implemented a stringent aptitude and attitude test that includes a technical questionnaire. Candidates are required to score a minimum of 75% on this test to qualify for the next round of assessment. This ensures that the candidates we select have a high level of proficiency in their respective fields, assuring clients of the quality standards we conform to.</p>\r\n<h3>Screening &amp; Short-listing by Technical Consultants</h3>\r\n<p>All screening and assessment for the databank or final round of interviews is conducted by our highly experienced technical consultants and if required, candidates are sent for trade-testing. Short-listed applicants are graded on their professional and general knowledge, presentation and attitude.</p>\r\n<h3>Final Selection by Clients</h3>\r\n<p>Once candidates have been selected for the final round of interviews, their applications are presented to the client for final selection. If required, we can carry out the final selection process on behalf of the client, based on a detailed brief on the requirements from the client. Our selection process follows rigorous theoretical and practical trade tests, ensuring that candidates are qualified only on merit. Official trade test reports can also be provided if required.</p>\r\n<h3>Medical Examination Facilities</h3>\r\n<p>We undertake conducting the necessary medical examinations for candidates and doctors are registered with medical institutions that are approved by the consulate of the country that the candidate is recruited for. This minimizes paperwork for our clients, making the recruitment process more convenient.</p>\r\n<h3>Mobilization Period</h3>\r\n<p>A minimum of two weeks is required, to mobilize candidates after selection and receipt of visa for actual deployment. Your visit in our office for more information will be highly praised.</p>', 'posts\\January2020\\X71tJrDAVvwKMYpkKQD7.jpg', 'recruitment', NULL, NULL, 'PUBLISHED', 0, '2020-01-08 00:07:44', '2020-01-08 00:24:05'),
(11, 2, 1, 'Qatar', NULL, NULL, '<p>- Sahab International Trading &amp; Maketing Co</p>\r\n<p>- Multicon Trading Wll</p>\r\n<p>- Softlink Intl. Trading &amp; Contracting Wll</p>\r\n<p>- Front International Contracting &amp; Cleaning Wll</p>\r\n<p>- Uniplast Wll</p>\r\n<p>- AL- Feroz Int&rsquo;l</p>\r\n<p>- Trading Wll</p>\r\n<p>- Ramix Concrete Company LLC</p>', NULL, 'qatar', NULL, NULL, 'PUBLISHED', 0, '2020-01-08 23:49:39', '2020-01-08 23:49:39'),
(12, 2, 1, 'UAE', NULL, NULL, '<p>- Ferropan Oilfield Service &amp; Supplies LLC</p>\r\n<p>- Nirvana General Contracting LLC</p>\r\n<p>- Enkay Uniforms LLC</p>\r\n<p>- Neelkamal Plastic Factroy LLC</p>\r\n<p>- Bentoya Kitchen LLC</p>\r\n<p>- Rawafed Recruitment Services LLC</p>\r\n<p>- Gulf Oasis Manpower Supply</p>\r\n<p>- Titanium Gents Saloon Branch</p>\r\n<p>- Ahmed Jaber Abdulla Mohammed SHD</p>\r\n<p>- Bento-ya Kitchen LLC</p>\r\n<p>- BMJ Industries FZ LLC</p>\r\n<p>- Best Professionals Technical Services LLC</p>', NULL, 'UAE', NULL, NULL, 'PUBLISHED', 0, '2020-01-09 04:14:37', '2020-01-09 04:34:46'),
(13, 2, 1, 'SAUDI ARABIA', NULL, NULL, '<p>- AL-Mira Center for Trading Co. Ltd.</p>\r\n<p>- AL-Mira Investment Group Co. Ltd.</p>\r\n<p>- Zahrat Al Banafsaj Restaurants EST</p>\r\n<p>- Indian Jungle Restaurant</p>\r\n<p>- Naif Thameral. Otaibi Transportation EST</p>\r\n<p>- AL Mehthel General Contracting EST</p>', NULL, 'saudi-arabia', NULL, NULL, 'PUBLISHED', 0, '2020-01-09 04:20:14', '2020-01-09 04:20:14'),
(14, 2, 1, 'MALAYSIA', NULL, NULL, '<p>- MVD Internation SDN BHD</p>\r\n<p>- Pentagon Protection Services SDN BHD</p>\r\n<p>- Allsafe Guards SDN BHD</p>\r\n<p>- Mac Security Consultants SDN BHD</p>\r\n<p>- Bomatec (Malayasia) SDN BHD</p>\r\n<p>- JS Security Services SDN BHD</p>\r\n<p>- MPV - Malaysia SDN BHD</p>\r\n<p>- Maxonic Marketing SDN BHD</p>\r\n<p>- BRC Industries SDN BHD</p>\r\n<p>- Meking Industries SB.</p>\r\n<p>- Linaco Manufacturing (M) SDN BHD</p>\r\n<p>- Beryl&rsquo;s Chocolate &amp; Confectionery SDN BHD</p>\r\n<p>- Holographic Label SDN BHD</p>\r\n<p>- North Soileng (M) SDN BHD</p>\r\n<p>- Universal Guard SDN BHD</p>\r\n<p>- Graduan Bersatu Padat SDN BHD</p>\r\n<p>- Impian Murni Enterprise</p>\r\n<p>- Versatile Protection SDN BHD</p>\r\n<p>- STS Albarakah SDN BHD</p>\r\n<p>- LKY Plantations SDN BHD</p>\r\n<p>- Kung fu Paradise SDN BHD</p>\r\n<p>- Implan Murni Enterprise</p>\r\n<p>- Chun YIP Metal Polishing SDN BHD</p>\r\n<p>- Zayana Maju Enterprise</p>\r\n<p>- LB LAND</p>\r\n<p>- Hasil Bumi Maju Enterprise</p>\r\n<p>- Prospeed Cleaning Services and Laundry SDN BHD</p>\r\n<p>- Fong Lye Restaurant (MVC) SDN BHD</p>', NULL, 'malaysia', NULL, NULL, 'PUBLISHED', 0, '2020-01-09 04:22:48', '2020-01-09 04:22:48');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tag` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2019-12-25 01:40:27', '2019-12-25 01:40:27'),
(2, 'user', 'Normal User', '2019-12-25 01:40:27', '2019-12-25 01:40:27');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '', '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '', '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2019-12-25 01:40:36', '2019-12-25 01:40:36'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2019-12-25 01:40:36', '2019-12-25 01:40:36'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2019-12-25 01:40:36', '2019-12-25 01:40:36'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2019-12-25 01:40:36', '2019-12-25 01:40:36'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2019-12-25 01:40:36', '2019-12-25 01:40:36'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2019-12-25 01:40:36', '2019-12-25 01:40:36'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2019-12-25 01:40:36', '2019-12-25 01:40:36'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2019-12-25 01:40:36', '2019-12-25 01:40:36'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2019-12-25 01:40:36', '2019-12-25 01:40:36'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2019-12-25 01:40:36', '2019-12-25 01:40:36'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2019-12-25 01:40:36', '2019-12-25 01:40:36'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2019-12-25 01:40:36', '2019-12-25 01:40:36'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2019-12-25 01:40:36', '2019-12-25 01:40:36'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2019-12-25 01:40:36', '2019-12-25 01:40:36'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2019-12-25 01:40:36', '2019-12-25 01:40:36'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2019-12-25 01:40:37', '2019-12-25 01:40:37'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2019-12-25 01:40:37', '2019-12-25 01:40:37'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2019-12-25 01:40:37', '2019-12-25 01:40:37'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2019-12-25 01:40:37', '2019-12-25 01:40:37'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2019-12-25 01:40:37', '2019-12-25 01:40:37'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2019-12-25 01:40:37', '2019-12-25 01:40:37'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2019-12-25 01:40:37', '2019-12-25 01:40:37'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2019-12-25 01:40:37', '2019-12-25 01:40:37'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2019-12-25 01:40:37', '2019-12-25 01:40:37'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2019-12-25 01:40:37', '2019-12-25 01:40:37'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2019-12-25 01:40:37', '2019-12-25 01:40:37'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2019-12-25 01:40:37', '2019-12-25 01:40:37'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2019-12-25 01:40:37', '2019-12-25 01:40:37'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2019-12-25 01:40:37', '2019-12-25 01:40:37'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2019-12-25 01:40:37', '2019-12-25 01:40:37');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(2, 1, 'nepal', 'admin@gmail.com', 'users/default.png', NULL, '$2y$10$4pPsUeWeFjAHo.MqYSqmlu9nU25MH6LUyBB14zn3EOvm5v/5YBrRi', 'Dd6Z6vDfNU9gUA531htvjgEy4UvGBV4FmsQxS6vA9JcsfjIpekdFwT9419Ho', NULL, '2019-12-25 01:41:51', '2019-12-25 01:41:51');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ourpages`
--
ALTER TABLE `ourpages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ourpages_slug_unique` (`slug`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_name_unique` (`name`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `ourpages`
--
ALTER TABLE `ourpages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
