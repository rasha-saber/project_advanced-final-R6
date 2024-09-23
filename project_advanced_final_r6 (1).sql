-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 23, 2024 at 06:57 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project_advanced_final_r6`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('0ade7c2cf97f75d009975f4d720d1fa6c19f4897', 'i:1;', 1725996602),
('0ade7c2cf97f75d009975f4d720d1fa6c19f4897:timer', 'i:1725996602;', 1725996602),
('rashsaber19@gmail.com|127.0.0.1', 'i:1;', 1727071406),
('rashsaber19@gmail.com|127.0.0.1:timer', 'i:1727071405;', 1727071406);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `created_at`, `updated_at`) VALUES
(4, 'jak 00000000000000000', '2024-09-10 09:50:03', '2024-09-17 18:03:54'),
(6, 'Mrs. Lorena Blanda', '2024-09-10 09:50:03', '2024-09-10 09:50:03'),
(7, 'Kristofer Breitenberg', '2024-09-10 09:50:03', '2024-09-10 09:50:03'),
(8, 'Dr. Coleman Medhurst DVM', '2024-09-10 09:50:04', '2024-09-10 09:50:04'),
(9, 'Donnell Nader', '2024-09-10 09:50:04', '2024-09-10 09:50:04'),
(10, 'Katharina Homenick PhD', '2024-09-10 09:50:04', '2024-09-10 09:50:04'),
(11, 'Prof. Megane Reichert', '2024-09-10 09:50:21', '2024-09-10 09:50:21'),
(12, 'Prof. Carolanne Spencer', '2024-09-10 09:50:21', '2024-09-10 09:50:21'),
(13, 'Jamel Gaylord', '2024-09-10 09:50:21', '2024-09-10 09:50:21'),
(14, 'Hattie Rempel IV', '2024-09-10 09:50:21', '2024-09-10 09:50:21'),
(15, 'Khalil Emard', '2024-09-10 09:50:22', '2024-09-10 09:50:22'),
(16, 'Christina Larkin', '2024-09-10 09:50:22', '2024-09-10 09:50:22'),
(17, 'Miss Aimee Gislason', '2024-09-10 09:50:22', '2024-09-10 09:50:22'),
(18, 'Norbert Eichmann', '2024-09-10 09:50:22', '2024-09-10 09:50:22'),
(19, 'Sadye McLaughlin', '2024-09-10 09:50:22', '2024-09-10 09:50:22'),
(20, 'Dr. Angelica Klocko Sr.', '2024-09-10 09:50:22', '2024-09-10 09:50:22'),
(21, 'Dudley Cremin', '2024-09-10 09:50:27', '2024-09-10 09:50:27'),
(22, 'Rogers Abbott II', '2024-09-10 09:50:27', '2024-09-10 09:50:27'),
(23, 'Jenifer Murray', '2024-09-10 09:50:27', '2024-09-10 09:50:27'),
(24, 'Prof. Darrick Schiller PhD', '2024-09-10 09:50:27', '2024-09-10 09:50:27'),
(25, 'Maximilian Medhurst', '2024-09-10 09:50:27', '2024-09-10 09:50:27'),
(26, 'Bradly Watsica', '2024-09-10 09:50:27', '2024-09-10 09:50:27'),
(27, 'Mr. Oliver Boyle DVM', '2024-09-10 09:50:27', '2024-09-10 09:50:27'),
(28, 'Dr. Edwin Conn', '2024-09-10 09:50:27', '2024-09-10 09:50:27'),
(29, 'Prof. Edison Schamberger', '2024-09-10 09:50:27', '2024-09-10 09:50:27'),
(30, 'Romaine Emmerich MD', '2024-09-10 09:50:27', '2024-09-10 09:50:27'),
(31, 'Oran Breitenberg', '2024-09-10 09:50:31', '2024-09-10 09:50:31'),
(32, 'Rashad Cremin', '2024-09-10 09:50:31', '2024-09-10 09:50:31'),
(33, 'Barton Kuhic', '2024-09-10 09:50:31', '2024-09-10 09:50:31'),
(34, 'Queen Little', '2024-09-10 09:50:31', '2024-09-10 09:50:31'),
(35, 'Greg Becker', '2024-09-10 09:50:31', '2024-09-10 09:50:31'),
(36, 'Mr. Orville Barrows DDS', '2024-09-10 09:50:31', '2024-09-10 09:50:31'),
(37, 'Brain Emard', '2024-09-10 09:50:32', '2024-09-10 09:50:32'),
(38, 'Brandy Yundt', '2024-09-10 09:50:32', '2024-09-10 09:50:32'),
(39, 'Deondre Terry', '2024-09-10 09:50:32', '2024-09-10 09:50:32'),
(40, 'Tiffany Abernathy', '2024-09-10 09:50:32', '2024-09-10 09:50:32'),
(41, 'Mr. Orville Lueilwitz Jr.', '2024-09-10 09:50:36', '2024-09-10 09:50:36'),
(42, 'Miss Cordia Fisher', '2024-09-10 09:50:37', '2024-09-10 09:50:37'),
(43, 'Aron Lemke', '2024-09-10 09:50:37', '2024-09-10 09:50:37'),
(44, 'Miss Helga Breitenberg', '2024-09-10 09:50:37', '2024-09-10 09:50:37'),
(45, 'Ms. Lexi Stamm', '2024-09-10 09:50:37', '2024-09-10 09:50:37'),
(46, 'Tre Murphy', '2024-09-10 09:50:37', '2024-09-10 09:50:37'),
(47, 'Ron Walker', '2024-09-10 09:50:37', '2024-09-10 09:50:37'),
(48, 'Dr. Autumn Bechtelar DDS', '2024-09-10 09:50:37', '2024-09-10 09:50:37'),
(49, 'Mr. Houston Monahan', '2024-09-10 09:50:37', '2024-09-10 09:50:37'),
(50, 'Dr. Ubaldo Gutkowski V', '2024-09-10 09:50:37', '2024-09-10 09:50:37'),
(51, 'Hans Frami', '2024-09-10 09:50:42', '2024-09-10 09:50:42'),
(52, 'Crystal Hirthe', '2024-09-10 09:50:42', '2024-09-10 09:50:42'),
(53, 'Mr. Matt McKenzie', '2024-09-10 09:50:42', '2024-09-10 09:50:42'),
(54, 'Mustafa Williamson', '2024-09-10 09:50:42', '2024-09-10 09:50:42'),
(56, 'Christophe Volkman', '2024-09-10 09:50:42', '2024-09-10 09:50:42'),
(57, 'Chauncey Abernathy', '2024-09-10 09:50:42', '2024-09-10 09:50:42'),
(58, 'Fae Goyette', '2024-09-10 09:50:42', '2024-09-10 09:50:42'),
(59, 'Mattie McGlynn', '2024-09-10 09:50:42', '2024-09-10 09:50:42'),
(60, 'Tyreek Hoppe', '2024-09-10 09:50:42', '2024-09-10 09:50:42'),
(62, 'Mr. Francisco Ccccccccccccccassin', '2024-09-11 06:18:58', '2024-09-11 06:18:58'),
(67, 'FGF', '2024-09-17 18:01:28', '2024-09-17 18:01:28'),
(68, 'AEFHTGHJKLOO', '2024-09-20 10:05:16', '2024-09-20 10:43:41');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sender_name` varchar(255) NOT NULL,
  `sender_email` varchar(255) NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `body` text NOT NULL,
  `is_read` enum('read','unread') NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `sender_name`, `sender_email`, `subject`, `body`, `is_read`, `created_at`, `updated_at`) VALUES
(10, 'Mrs. Odie White DVM', 'shannon.wintheiser@koss.com', 'Aut vel aut et corporis a porro nihil.', 'Assumenda ut saepe sed ea consequatur amet consectetur. Consequatur corporis aut odio. Et et saepe nihil accusantium fugiat esse labore non.', 'read', '2024-09-10 09:50:05', '2024-09-10 12:01:42'),
(11, 'Izaiah Schulist', 'brandi.grady@runolfsdottir.com', 'Labore cumque voluptatum reprehenderit ea rem voluptatem.', 'Illo sint tempora vero quidem maxime. Accusamus ut a autem voluptatem. Quos qui amet at atque ea animi dolorum.', 'read', '2024-09-10 09:50:23', '2024-09-10 12:40:50'),
(13, 'Dr. Elinor Lueilwitz I', 'jairo52@hotmail.com', 'Vitae officiis distinctio et et ipsam optio quia.', 'Aut non rem et cum sint. Voluptatem quae voluptate facere dolor sequi aut libero cumque.', 'read', '2024-09-10 09:50:23', '2024-09-10 09:50:23'),
(14, 'Marvin Wyman MD', 'nikolas24@gmail.com', 'Eos qui inventore placeat eveniet et.', 'Quis aut voluptatem est amet optio enim quaerat consequuntur. Porro earum aut unde ut nihil nihil dolor. Qui sit est repudiandae voluptatem qui. Voluptatem minus eaque sed quae est velit consequatur.', 'read', '2024-09-10 09:50:23', '2024-09-10 12:50:11'),
(17, 'Angelita Stamm IV', 'mitchell08@fritsch.biz', 'Sit nam voluptas placeat suscipit quidem rem.', 'Similique quos in perspiciatis sapiente earum eos quis. Quia dignissimos saepe nihil est et aut iusto. Et placeat nobis corporis molestiae et. Eum ratione qui culpa.', 'read', '2024-09-10 09:50:23', '2024-09-10 09:50:23'),
(19, 'Leonor Bechtelar Jr.', 'ryan.deanna@weimann.org', 'Quaerat expedita sequi deserunt fuga et id.', 'Aperiam praesentium mollitia laborum odio ut tempore optio. Qui est magni nostrum enim reiciendis quidem rem. Mollitia quas ut commodi perspiciatis exercitationem iusto.', 'read', '2024-09-10 09:50:23', '2024-09-10 09:50:23'),
(21, 'Tristian Mraz', 'hackett.christine@hotmail.com', 'Optio neque vero reiciendis enim aut.', 'Ut alias nesciunt cupiditate. Error corporis voluptas officia quas dolor harum consequuntur. Quisquam ut laudantium dolorum totam nobis omnis totam. Minima quia eum doloribus illum qui praesentium.', 'read', '2024-09-10 09:50:28', '2024-09-10 17:20:23'),
(26, 'Angel Dare MD', 'brown.claire@graham.info', 'Maxime dolorum sequi officia.', 'Incidunt assumenda neque adipisci sunt adipisci consequatur. Eum non sint provident ab delectus.', 'read', '2024-09-10 09:50:28', '2024-09-10 09:50:28'),
(30, 'Chelsie Wunsch', 'jeremy.kunze@swaniawski.biz', 'Deserunt doloremque voluptatem quo in.', 'Quaerat est dolores repellendus. Sed omnis et et non. Possimus sed enim doloribus enim. Perferendis velit dolores aliquam facere culpa aliquid quisquam.', 'read', '2024-09-10 09:50:28', '2024-09-10 09:50:28'),
(32, 'Kaci Stehr', 'katharina.ullrich@yahoo.com', 'Ut rerum laboriosam commodi.', 'Accusamus rerum quia et minima cumque laboriosam quo corrupti. Sit quis commodi esse illo voluptatibus. Neque expedita ut debitis suscipit.', 'read', '2024-09-10 09:50:33', '2024-09-23 03:29:16'),
(33, 'Harvey Robel', 'ottilie.hane@yahoo.com', 'Optio omnis iusto voluptas.', 'Corrupti quia quod excepturi commodi maiores. Fugiat et eos quibusdam totam doloribus vel. Et nihil sunt debitis reprehenderit quis. Dolores sunt qui officiis velit.', 'read', '2024-09-10 09:50:33', '2024-09-10 17:46:34'),
(37, 'Tia Simonis', 'ywehner@wisoky.com', 'Est tenetur et quisquam quidem.', 'Iste veniam labore magni et architecto. Nobis dicta totam perferendis vel atque enim voluptatum. Distinctio cum et voluptas distinctio quia voluptas. Repellat porro qui dolores optio.', 'read', '2024-09-10 09:50:33', '2024-09-10 18:00:10'),
(38, 'Prof. Gwendolyn Metz', 'barton.jacobi@gmail.com', 'Minima quia aut fuga voluptatibus dolorum.', 'Ut praesentium voluptates aut exercitationem deleniti voluptas. Corrupti ex possimus non facilis aperiam. Nam quia et est. Est modi aliquid voluptatum esse veritatis ipsam id.', 'read', '2024-09-10 09:50:33', '2024-09-10 09:50:33'),
(40, 'Tania Buckridge', 'anika59@yahoo.com', 'Aut nisi rem necessitatibus sed ea voluptatem.', 'Voluptas libero ipsam atque et consequuntur cum aperiam. Qui consequatur repellendus officiis quo nam quia. Corrupti et distinctio ut inventore consectetur numquam magni.', 'read', '2024-09-10 09:50:33', '2024-09-10 09:50:33'),
(45, 'Dr. Quinton Jerde Jr.', 'bayer.flossie@oconner.org', 'Voluptas deleniti maxime non sed sed.', 'Odio doloremque aperiam dicta facere excepturi eos. Ullam laboriosam laudantium non omnis dolor. Rerum quis necessitatibus tempora ab vero. Quia non enim odit.', 'read', '2024-09-10 09:50:38', '2024-09-10 12:52:29'),
(46, 'Moshe Rice PhD', 'okonopelski@schowalter.org', 'Aut explicabo nisi esse.', 'Voluptas eligendi officiis corporis aut esse. Commodi deleniti et voluptatem itaque voluptas fuga itaque. In ducimus et aut asperiores consequatur tempore repellendus. Dolores cupiditate veritatis non inventore.', 'read', '2024-09-10 09:50:38', '2024-09-10 09:50:38'),
(47, 'Marian Kunde Sr.', 'wziemann@hammes.info', 'Dicta placeat rerum aut exercitationem ut dignissimos.', 'Mollitia autem nulla ut. Dolores explicabo sequi amet magnam maiores enim. Iste sequi aut voluptas doloribus repellat at quo ratione. Id voluptates modi culpa distinctio sequi.', 'read', '2024-09-10 09:50:38', '2024-09-11 06:19:03'),
(49, 'Ashtyn Labadie', 'newell88@hotmail.com', 'Quod reiciendis vero aperiam corporis perferendis sit soluta.', 'Maxime sed voluptatibus consectetur omnis dolores. Sint quasi qui ut porro dignissimos debitis et cupiditate. Blanditiis et ut perspiciatis est omnis. Cum ut perferendis nisi deleniti sit eius.', 'read', '2024-09-10 09:50:38', '2024-09-12 17:14:43'),
(50, 'Earl Bartell', 'amina51@yahoo.com', 'Ea doloribus excepturi necessitatibus maiores fuga.', 'Facere non ullam qui fuga nulla delectus enim. Expedita nihil voluptatem et autem recusandae eaque natus. Quaerat modi sapiente consectetur quis. Veniam ducimus occaecati culpa ullam corrupti enim molestiae.', 'read', '2024-09-10 09:50:38', '2024-09-20 10:53:55'),
(51, 'Laurine Bahringer', 'jamir16@gerlach.org', 'Praesentium aut modi veniam sed sapiente aut est.', 'Voluptas soluta temporibus in dolorum dolore. Quo ipsam voluptatem voluptate rerum perspiciatis in. Sit animi nostrum voluptas voluptas sit. Qui quos eligendi quas dolor cupiditate non est provident.', 'unread', '2024-09-10 09:50:43', '2024-09-10 09:50:43'),
(52, 'Katelyn Heaney', 'hmarquardt@balistreri.net', 'Nam voluptas eaque sed dolorum officia sed.', 'Culpa quia harum id aut enim sunt. Voluptas quaerat unde modi sint labore.', 'read', '2024-09-10 09:50:43', '2024-09-10 09:50:43'),
(53, 'Ena Kulas', 'elyssa98@yahoo.com', 'Cupiditate inventore alias officiis praesentium.', 'Dolorem enim aut harum tenetur sapiente. Sit rerum vero et. Rerum explicabo nisi quia et.', 'read', '2024-09-10 09:50:43', '2024-09-10 09:50:43'),
(54, 'Ms. Keely Sporer Jr.', 'kgusikowski@bechtelar.com', 'Nobis repellat unde earum quis hic nesciunt.', 'Esse amet est eos impedit doloribus. Minus atque possimus magnam ut et. Maxime non non enim sit id.', 'read', '2024-09-10 09:50:43', '2024-09-10 09:50:43'),
(55, 'Talia Barrows', 'allison92@walker.com', 'Voluptate ad praesentium qui suscipit ipsa.', 'Culpa consequuntur dolor necessitatibus qui. Iure ipsa officiis consequatur quia laborum. Odit distinctio ea aperiam omnis aut commodi dignissimos. Dolorem nemo cum est asperiores harum et quis.', 'read', '2024-09-10 09:50:44', '2024-09-10 09:50:44'),
(57, 'Prof. Rogelio Turcotte', 'wisozk.winona@gmail.com', 'Qui sed illum quo sunt qui suscipit id.', 'Hic sit neque placeat iste at cupiditate. Ratione eos cumque itaque quisquam et aliquid a. Alias itaque maxime voluptatem est. At tenetur saepe numquam necessitatibus.', 'read', '2024-09-10 09:50:44', '2024-09-23 03:27:49'),
(61, 'omima', 'omima.moursi@gmail.com', 'hello dear', 'i need to see you ASA', 'read', '2024-09-10 18:27:54', '2024-09-10 18:30:00'),
(62, '4444444444', 'rashasaber19@gmail.com', '44444444444', '44444444444444444444444444444444444444444444444444444', 'unread', '2024-09-12 17:24:22', '2024-09-12 17:24:22'),
(63, '9999999999999', 'SHsaber19@gmail.com', '9999999999999', '999999999999999999999999999999999', 'read', '2024-09-17 17:55:59', '2024-09-20 10:49:17'),
(64, '22222222222', '222saber19@gmail.com', '22222222222', '22222222222222222222222222222222222222222222222', 'unread', '2024-09-23 03:37:54', '2024-09-23 03:37:54');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_09_02_142339_create_testimonials_table', 1),
(5, '2024_09_02_142637_create_categories_table', 1),
(6, '2024_09_02_142708_create_topics_table', 1),
(7, '2024_09_02_142922_create_messages_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('rvNHRgMT75GfDABS3XV6TBtpoi8q00zlj7BfnhrH', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36 Avast/128.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoibmhXRGkwU29jU3VpNUpXQ09QRnVtcGN4V3drR0VsemNCVmtrMFdQTyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9yZWdpc3RlciI7fXM6MzoidXJsIjthOjE6e3M6ODoiaW50ZW5kZWQiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9ob21lIjt9fQ==', 1727074008);

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT 0,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `name`, `content`, `published`, `image`, `created_at`, `updated_at`) VALUES
(4, 'Rollin Braun', 'A numquam eius voluptatem mollitia commodi. Harum assumenda nam iure quasi perferendis sequi voluptas. Quia hic aut adipisci veniam. Laudantium nulla ex magnam animi nostrum asperiores veniam sit.', 1, '1725966034.png', '2024-09-10 09:50:04', '2024-09-10 09:50:04'),
(5, 'Asia Kulas', 'Tempore sit reiciendis nulla nihil voluptas sint quia. Cum quas rerum officia consectetur. Sed veniam et dolorem consequatur similique. Et officia sapiente earum sunt.', 0, '1725408428.jpg', '2024-09-10 09:50:04', '2024-09-10 09:50:04'),
(6, 'Murray Zulauf PhD', 'Ea deleniti cumque illo dolor minus amet. Est qui sunt nihil illo. Nemo incidunt et est eligendi.', 0, '1725966280.png', '2024-09-10 09:50:04', '2024-09-10 09:50:04'),
(7, 'Dr. Elmo O\'Connell', 'Dolore fuga sed occaecati voluptate qui quo rerum. Voluptas et voluptas vel illum.', 0, '1725965708.png', '2024-09-10 09:50:04', '2024-09-10 09:50:04'),
(8, 'Leilani Crona', 'A nobis voluptatum dolores. Est repellat repellendus eaque voluptatum. Laboriosam non fugit voluptatem. Laudantium mollitia optio repudiandae fuga.', 1, '1725965708.png', '2024-09-10 09:50:04', '2024-09-10 09:50:04'),
(9, 'Ms. Rosalee Nitzsche Sr.', 'Voluptatem quae nihil molestiae qui aut sed qui. Quo quae ipsam dolor. Maxime aut qui voluptate nisi sint rerum velit. Quo quasi aspernatur accusantium ipsum impedit ut quibusdam.', 0, '1725640424.png', '2024-09-10 09:50:04', '2024-09-10 09:50:04'),
(10, 'Brayan Rodriguez', 'Cumque consequuntur qui consequuntur consectetur voluptatem dolorem dolores. Ullam fugiat itaque expedita ipsa quisquam. In delectus molestiae ipsa quis. Alias quod impedit dicta corrupti quod.', 1, '1725408105.jpg', '2024-09-10 09:50:04', '2024-09-10 09:50:04'),
(11, 'Miss Adelle Lang III', 'A quae molestiae consequatur ad ducimus et debitis. Sed voluptates harum est est corporis aut. Nam distinctio deserunt eveniet et sunt nostrum modi voluptatem.', 0, '1725965658.png', '2024-09-10 09:50:22', '2024-09-10 09:50:22'),
(12, 'Cortez Wisozk', 'Expedita earum reiciendis nihil eum excepturi aut. Est ut voluptatum autem aspernatur velit facere. Facere soluta quasi aut sed et cupiditate. Omnis omnis nesciunt enim ut.', 1, '1725965801.png', '2024-09-10 09:50:22', '2024-09-10 09:50:22'),
(14, 'Mr. Colten Abshire', 'Rem delectus accusamus minus perferendis. Ad consequatur aut beatae unde. Qui distinctio et illum sed praesentium.', 0, '1725890001.png', '2024-09-10 09:50:22', '2024-09-10 09:50:22'),
(15, 'Werner Kling', 'Nesciunt qui perferendis assumenda tenetur aut sint dicta. Eaque ratione voluptas sint consectetur tenetur in.', 0, '1725640493.jpg', '2024-09-10 09:50:22', '2024-09-10 09:50:22'),
(16, 'Marcella Swaniawski', 'Qui vitae eaque minus ut incidunt qui suscipit id. Occaecati qui quis provident. Illo voluptatem odio odio ex dolorem. Sapiente inventore nihil nisi magnam libero autem.', 0, '1725889953.png', '2024-09-10 09:50:22', '2024-09-10 09:50:22'),
(17, 'Joel Murazik', 'Atque facilis magnam fugiat praesentium quos quam nostrum. Ut sint quia enim sequi ea non maiores. Pariatur illo deleniti ex temporibus.', 1, '1725918317.png', '2024-09-10 09:50:22', '2024-09-10 09:50:22'),
(18, 'Amos Doyle', 'Ipsam et maxime eum porro. Cumque numquam suscipit atque est ut exercitationem eos est. Eum vel placeat est nobis voluptatem dignissimos ut.', 1, '1725918317.png', '2024-09-10 09:50:22', '2024-09-10 09:50:22'),
(19, 'Camilla Ziemann', 'Sit amet dolor et. Blanditiis porro ad nulla et voluptatibus nam. Debitis itaque rerum qui ut.', 0, '1725966034.png', '2024-09-10 09:50:22', '2024-09-10 09:50:22'),
(20, 'Marcelina Boyle', 'Adipisci excepturi explicabo molestiae repudiandae molestiae fugit qui. Harum et porro qui quia velit iure culpa. Non voluptatem sit autem provident earum debitis.', 0, '1725965927.jpg', '2024-09-10 09:50:23', '2024-09-10 09:50:23'),
(21, 'Mr. Jerrold Von Sr.', 'Voluptate deleniti voluptas quia sit sit est perferendis. Mollitia iste iure aut cum aut ex. Voluptatum odit velit qui voluptatem enim nisi maiores.', 1, '1725640452.jpg', '2024-09-10 09:50:27', '2024-09-10 09:50:27'),
(22, 'Mrs. Aliya McDermott', 'Molestiae nostrum blanditiis voluptatem aut vel. Enim numquam molestias reiciendis dolorem. Cupiditate culpa et voluptatem labore quaerat.', 1, '1725408428.jpg', '2024-09-10 09:50:27', '2024-09-10 09:50:27'),
(23, 'Vaughn Wilkinson', 'Vitae quae consequuntur sit ipsum. Incidunt aut voluptatem dolorem optio ab quae. Et rerum dolorem provident modi.', 0, '1725966004.png', '2024-09-10 09:50:27', '2024-09-10 09:50:27'),
(24, 'Edwina Huel', 'Ullam error nihil laborum voluptatum. Accusantium necessitatibus eos quidem perferendis. Blanditiis consectetur ut unde. Quis qui impedit ipsa esse delectus est culpa.', 1, '1725965801.png', '2024-09-10 09:50:27', '2024-09-10 09:50:27'),
(25, 'Tommie Swaniawski', 'Repellat quia saepe et. Sunt et alias aperiam consequatur qui. Qui nesciunt consequatur et dolor et saepe. Quos dicta non est. Voluptatum ut dolor sed voluptas quam dolores.', 1, '1725640452.jpg', '2024-09-10 09:50:27', '2024-09-10 09:50:27'),
(26, 'Arnaldo Leannon I', 'Officia accusantium non nulla rerum ipsum. Autem quasi aut eveniet et quam suscipit. Id placeat non assumenda assumenda sequi at amet sit. Molestias voluptatem consequuntur maiores.', 1, '1725966348.jpg', '2024-09-10 09:50:27', '2024-09-10 09:50:27'),
(27, 'Holden Leffler', 'Quo sit unde temporibus accusamus necessitatibus velit iusto autem. Dolores sequi rerum minima dolorum deleniti. Consequatur maiores nemo modi provident.', 1, '1725890023.png', '2024-09-10 09:50:27', '2024-09-10 09:50:27'),
(28, 'Theresa Emmerich', 'Mollitia dolores nihil aliquam eius omnis temporibus aut. Expedita aut ex reiciendis consequatur distinctio. Tenetur tempora quasi excepturi ratione magnam consequuntur ipsam.', 1, '1725640452.jpg', '2024-09-10 09:50:27', '2024-09-10 09:50:27'),
(29, 'Madelyn Fahey', 'Harum magnam quos quisquam aliquam. Porro sint ab cum optio est aut. Ipsa itaque perferendis sit. Cumque eius cumque non aut nemo et voluptatem.', 0, '1725966121.png', '2024-09-10 09:50:28', '2024-09-10 09:50:28'),
(30, 'Rosa Waters', 'Beatae non illum voluptas perspiciatis rem tempore nemo. Natus aliquam quam voluptatibus et. Explicabo enim suscipit qui rem deserunt tenetur. Quis expedita beatae dignissimos ducimus qui.', 1, '1725966348.jpg', '2024-09-10 09:50:28', '2024-09-10 09:50:28'),
(31, 'Clint Reynolds', 'Quaerat aperiam quia ad cupiditate dignissimos. Sint iusto cum et et sequi dolorum facere. Quia mollitia et sint consequuntur voluptatum qui sunt.', 0, '1725966004.png', '2024-09-10 09:50:32', '2024-09-10 09:50:32'),
(32, 'Ms. Dorothy Kuhlman Sr.', 'Facilis labore omnis aut omnis dolor et sint. Placeat sunt natus non assumenda voluptatem hic totam. Nemo autem in quas. Et veniam neque sint reprehenderit. Qui iste unde vitae sed.', 0, '1725408428.jpg', '2024-09-10 09:50:32', '2024-09-10 09:50:32'),
(33, 'Brando Zemlak IV', 'Omnis magnam asperiores eos aliquam dolores error quidem. Cum maiores harum voluptate illum. Quam a nostrum quidem eum.', 0, 'rocky-xiong-UE04nFCgDUE-unsplash.jpg', '2024-09-10 09:50:32', '2024-09-10 09:50:32'),
(34, 'Sylvia Kautzer', 'Eveniet et dolorem possimus ducimus nihil. Dolores autem culpa eaque enim dicta. Numquam similique non ut fuga quia id amet.', 1, '1725965927.jpg', '2024-09-10 09:50:32', '2024-09-10 09:50:32'),
(35, 'Christian Ruecker', 'Est dolor ut ut aut et nostrum. Sed facilis voluptatem odit ut porro possimus officiis. Nulla error eius quis vel.', 0, '1725408137.png', '2024-09-10 09:50:32', '2024-09-10 09:50:32'),
(36, 'Mr. Douglas Schuster', 'Asperiores sint magnam rem. Fugiat aut nemo neque eos veritatis sequi. Cumque ut quaerat est consequatur.', 0, '1725965801.png', '2024-09-10 09:50:32', '2024-09-10 09:50:32'),
(37, 'Cole Hodkiewicz I', 'Nemo id ut ut cum. Provident dolor voluptate placeat eum totam. Expedita sint et ut officiis quis. Suscipit et fugit distinctio sequi est velit laborum ut.', 0, '1725890023.png', '2024-09-10 09:50:32', '2024-09-10 09:50:32'),
(38, 'Arely Jacobs', 'Consequatur sunt et dolorem laudantium doloribus consequatur. Quae deleniti repellendus aut. Inventore consequuntur quae totam optio adipisci.', 1, '1725408137.png', '2024-09-10 09:50:32', '2024-09-10 09:50:32'),
(39, 'Marilyne Johns', 'Dolores dolor qui dicta qui. Sunt sint nam officia. Ut aut incidunt delectus dolor. Quo vero et ea. Officiis vitae nesciunt ipsum sed rerum qui. Assumenda sint qui ut sunt natus.', 0, '1725408105.jpg', '2024-09-10 09:50:32', '2024-09-10 09:50:32'),
(40, 'Waino Feil', 'In rerum odit maiores sed. Est veniam consequuntur dolores. Corrupti blanditiis mollitia non.', 0, '1725966280.png', '2024-09-10 09:50:32', '2024-09-10 09:50:32'),
(41, 'Dejah West', 'Sed ut atque voluptatem repudiandae quas animi sequi. Aperiam minus expedita non.', 0, '1725890023.png', '2024-09-10 09:50:38', '2024-09-10 09:50:38'),
(42, 'Greta O\'Conner MD', 'Alias adipisci ullam laudantium corporis omnis. Fugiat eaque fugiat molestiae esse. Voluptatibus et quibusdam magni ratione repudiandae doloremque.', 1, '1725890001.png', '2024-09-10 09:50:38', '2024-09-10 09:50:38'),
(43, 'Mrs. Cassidy Upton IV', 'Quam dolores pariatur aut velit soluta. Dolore velit debitis ratione. Hic enim et debitis vel repellat labore qui. Et sed deleniti fugit ad qui. Et delectus ducimus sed ipsa beatae dolores veniam.', 1, '1725889906.png', '2024-09-10 09:50:38', '2024-09-10 09:50:38'),
(44, 'Donnell Berge', 'Enim fugiat iusto provident quisquam. Commodi eos voluptates voluptatibus aut molestiae. Reprehenderit adipisci dolores quia. Recusandae ut eius assumenda facere laborum.', 0, '1725966121.png', '2024-09-10 09:50:38', '2024-09-10 09:50:38'),
(45, 'Ms. Pearl Donnelly', 'Similique sapiente reiciendis molestiae. Dicta similique voluptatem et expedita inventore ut et. Cum sed harum esse rerum atque. Atque dignissimos aut hic ea et officiis.', 1, '1725640438.jpg', '2024-09-10 09:50:38', '2024-09-10 09:50:38'),
(46, 'Berry Ferry IV', 'Quaerat facere officia beatae et tenetur. Repellendus iste nulla repellendus sed dolorem sit quos. Sunt nobis distinctio labore quaerat omnis rerum et. Voluptatem quaerat suscipit odit qui quia.', 0, '1725408428.jpg', '2024-09-10 09:50:38', '2024-09-10 09:50:38'),
(47, 'Dr. Marcel Bauch', 'Qui modi sunt vero amet. Quos totam similique similique cupiditate veritatis dolorem earum saepe. In nesciunt perspiciatis nemo nemo ut exercitationem nostrum.', 1, '1725889953.png', '2024-09-10 09:50:38', '2024-09-10 09:50:38'),
(48, 'Mr. Stone Hodkiewicz II', 'Rerum sed id qui necessitatibus qui impedit. Minima iste qui quis molestiae aliquam dolorem. Magni repellat possimus sit modi.', 1, '1725966121.png', '2024-09-10 09:50:38', '2024-09-10 09:50:38'),
(49, 'Maybell Kertzmann', 'Voluptatem nihil at ad eum omnis veniam minima adipisci. In rem ut exercitationem quia tenetur. Adipisci laboriosam pariatur autem iure quia.', 1, '1725890001.png', '2024-09-10 09:50:38', '2024-09-10 09:50:38'),
(50, 'Burdette Eichmann', 'Ut repudiandae quis consequuntur id quod ad earum. Et ea iste libero ipsum ut fuga ullam delectus.', 0, '1725408124.png', '2024-09-10 09:50:38', '2024-09-10 09:50:38'),
(51, 'Brain Yost', 'Hic facere ratione quibusdam sunt. Est incidunt dolorum non eum temporibus. Voluptates saepe ipsum similique quibusdam. Aliquid atque cum est.', 0, '1725640438.jpg', '2024-09-10 09:50:43', '2024-09-10 09:50:43'),
(52, 'Kayleigh Hauck', 'Nesciunt voluptatibus hic vitae illo tempora. Exercitationem officiis explicabo quibusdam fuga occaecati magnam. Qui quibusdam iusto quasi. Aliquam tempore sint qui eveniet quas placeat accusamus.', 1, '1725965895.png', '2024-09-10 09:50:43', '2024-09-10 09:50:43'),
(53, 'Imogene Crist DDS', 'Quis perspiciatis labore blanditiis. Fuga animi quo non sint nihil et. Nemo fugit sit nemo id voluptatum maiores vel aut. Sed nobis assumenda nobis corrupti autem.', 0, '1725889953.png', '2024-09-10 09:50:43', '2024-09-10 09:50:43'),
(54, 'Mya Spencer', 'Architecto magnam ea dolorum unde. Quo inventore quibusdam et doloremque quia porro sed. Placeat voluptatum voluptas quos unde velit voluptatem at. Ut hic beatae ea dicta.', 0, '1725408428.jpg', '2024-09-10 09:50:43', '2024-09-10 09:50:43'),
(55, 'Heather Flatley I', 'At quidem at unde at quasi et. Porro corporis doloremque est ad qui tempora. Quae quam nihil quam qui numquam doloribus. Id doloribus excepturi ullam voluptatum et.', 1, '1725408124.png', '2024-09-10 09:50:43', '2024-09-10 09:50:43'),
(56, 'Dorothea Bogan Sr.', 'Quasi nemo esse natus atque. Optio consequatur in fuga et officia. Quaerat exercitationem veritatis atque cum saepe reiciendis quia occaecati. Facere et voluptas quas sit. Minima eos sed deserunt.', 0, '1725889953.png', '2024-09-10 09:50:43', '2024-09-10 09:50:43'),
(57, 'Dr. Nicholas Barrows', 'Est optio quaerat quo. Quae enim totam dolorem impedit exercitationem. Consectetur quis velit ratione ut nisi cupiditate. Sapiente quasi et dolores modi.', 0, '1725966184.png', '2024-09-10 09:50:43', '2024-09-10 09:50:43'),
(58, 'Trevor Cole', 'Dolor cum veritatis animi consequuntur optio totam. Eos voluptatum et dolor rerum. Qui hic earum consequuntur sequi. Facere sunt ipsam sed.', 0, '1725965895.png', '2024-09-10 09:50:43', '2024-09-10 09:50:43'),
(59, 'Oren Kutch Jr.', 'Nam aspernatur nesciunt qui magni fuga. Aut et nemo mollitia sequi non accusantium iure. Illo repellendus commodi illo voluptates.', 0, '1725640438.jpg', '2024-09-10 09:50:43', '2024-09-10 09:50:43'),
(60, 'Adele Tromp Jr.', 'Velit est et fugit accusantium ut et. Sapiente nobis eum quisquam dicta officiis dolorem est. Excepturi sunt maiores dolore nihil.', 0, '1725889906.png', '2024-09-10 09:50:43', '2024-09-10 09:50:43'),
(61, 'big', '7777777777777777777777777777777777777666666666666', 1, '1726003248.jpg', '2024-09-10 18:20:22', '2024-09-10 18:20:48'),
(62, 'rasha', 'sdssdf', 1, '1726171316.png', '2024-09-12 17:01:56', '2024-09-12 17:01:56'),
(63, '1111111111111111111111111', '1111111111111111111111111111111', 0, '1726171676.jpg', '2024-09-12 17:07:36', '2024-09-12 17:07:56');

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE `topics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `badge_count` int(11) NOT NULL DEFAULT 0,
  `published` tinyint(1) NOT NULL DEFAULT 0,
  `trending` tinyint(1) NOT NULL DEFAULT 0,
  `image` varchar(255) DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`id`, `title`, `content`, `views`, `badge_count`, `published`, `trending`, `image`, `category_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(2, 'officiis4444444444444444', 'Sequi sequi aut exercitationem. Soluta sint rem voluptatem id eos. Soluta eum deserunt soluta sint dolor libero molestiae eum. Iste tempora in odio in odio magnam in. Officia nisi eos harum et.4444444444444444444444', 0, 25, 0, 1, '1726442876.jpg', 51, NULL, '2024-09-10 09:50:04', '2024-09-15 20:27:56'),
(3, 'officiis', 'Et ipsum laudantium et minima. Ut neque sed deleniti nostrum enim corrupti rerum soluta. Et harum veritatis voluptatum sunt iure. Laboriosam accusantium odit eum rerum atque ea consequatur.', 182, 63, 1, 1, '1725915231.png', 9, '2024-09-12 17:14:15', '2024-09-10 09:50:04', '2024-09-23 03:31:36'),
(5, 'recusandae', 'Excepturi consequatur sint iste error non quia accusantium sint. Dicta quis asperiores enim repellendus quisquam repellat. Sit harum laboriosam distinctio omnis. Ipsa qui enim asperiores et.', 63, 74, 1, 1, '1725966954.png', 6, NULL, '2024-09-10 09:50:04', '2024-09-12 17:22:07'),
(7, 'quos', 'Non velit qui voluptatem accusamus excepturi voluptatum. Sit excepturi excepturi quam ullam. Accusamus ratione eligendi qui et porro sed.', 53, 70, 0, 0, '1725903688.png', 10, NULL, '2024-09-10 09:50:04', '2024-09-10 09:50:04'),
(8, 'temporibus', 'Soluta quaerat quae sed. Aspernatur recusandae qui reiciendis voluptatem natus. Incidunt voluptatum ut tempore et repudiandae laborum. Et aut voluptates laboriosam asperiores esse voluptatem.', 12, 29, 1, 1, '1725915741.png', 8, NULL, '2024-09-10 09:50:04', '2024-09-10 09:50:04'),
(9, 'veritatis', 'Quo quasi numquam eos explicabo mollitia at. Qui qui qui ipsum nisi. Ut laudantium sint amet officia neque est.', 111, 14, 1, 0, '1725385283.jpg', 4, NULL, '2024-09-10 09:50:04', '2024-09-23 03:33:47'),
(11, 'sunt', 'Est molestias animi fuga sit. Et et dolorem ipsum consectetur et nesciunt ad. Iusto suscipit facilis quisquam recusandae ipsa magni earum. Pariatur repellat aut rem consequatur.', 19, 89, 1, 1, '1725902963.png', 7, NULL, '2024-09-10 09:50:22', '2024-09-10 09:50:22'),
(12, 'AAA', 'Doloremque iste et quam dolor. Placeat eveniet qui error maxime voluptatem illum. Porro ut recusandae quaerat accusamus consequatur et corporis quaerat.', 0, 76, 1, 0, '1727072190.jpg', 28, NULL, '2024-09-10 09:50:22', '2024-09-23 03:16:30'),
(13, 'qui', 'Fugit reiciendis consectetur autem pariatur quidem. Voluptatibus et recusandae eius. Excepturi tempore et nisi qui qui sint nihil quibusdam. Numquam quis voluptatum qui accusantium qui.', 44, 12, 1, 0, '1725902917.png', 6, NULL, '2024-09-10 09:50:22', '2024-09-23 03:36:11'),
(15, 'quisquam', 'Aut nihil non autem maiores qui veniam sit. Atque et itaque similique id in est. Molestias exercitationem omnis velit sequi tempore velit dolores dolorem.', 20, 0, 0, 1, '1725966917.png', 7, NULL, '2024-09-10 09:50:22', '2024-09-12 17:22:35'),
(16, 'eum', 'Quos molestias id quo quos enim qui. Ut eius eos in id sit dicta. Error nisi non odit dolorem nihil recusandae omnis qui.', 80, 98, 0, 1, '1725966981.jpg', 6, NULL, '2024-09-10 09:50:22', '2024-09-12 17:22:12'),
(18, 'est', 'Veritatis eum velit sint est. Ducimus quia et et in. Non aliquid blanditiis quos et aliquid. Quaerat velit animi voluptatem eos.', 69, 48, 0, 1, '1725796383.png', 6, NULL, '2024-09-10 09:50:22', '2024-09-10 09:50:22'),
(20, 'quidem', 'Eos neque eum quod. Vitae non corporis magnam eos sint quod quas. Facere amet labore alias similique veniam qui corporis. Odit fugiat ea adipisci facere ducimus id maiores aliquam. Quia quod et et.', 48, 90, 0, 1, '1725917016.png', 10, NULL, '2024-09-10 09:50:22', '2024-09-10 09:50:22'),
(21, 'quis', 'Eveniet ea amet natus corporis non beatae ad. Possimus ut beatae temporibus dicta adipisci porro illo. Qui exercitationem neque excepturi ipsa.', 87, 43, 0, 1, '1725915741.png', 9, NULL, '2024-09-10 09:50:27', '2024-09-10 09:50:27'),
(22, 'aut', 'Nihil impedit dolorem aut similique minima. Inventore unde debitis delectus vero cum. Eos sit nemo accusamus dolores.', 123, 78, 1, 1, '1725915250.png', 4, NULL, '2024-09-10 09:50:27', '2024-09-17 18:24:29'),
(23, 'nihil', 'Accusantium voluptas aspernatur omnis aut commodi sapiente quam est. Et voluptas ea quibusdam omnis eligendi. Autem quidem enim sint et molestiae. Et consequuntur laboriosam est totam.', 89, 17, 1, 0, '1725915741.png', 8, NULL, '2024-09-10 09:50:27', '2024-09-23 03:36:26'),
(24, 'voluptatem', 'Necessitatibus quo necessitatibus aut iure error. Consequatur ut ducimus illo amet et. Consequatur autem sed consectetur error. Aperiam asperiores voluptatem quos minus.', 32, 74, 0, 1, '1725901150.png', 4, NULL, '2024-09-10 09:50:27', '2024-09-23 03:36:19'),
(25, 'aliquid', 'Consequuntur magni sunt ea officia enim omnis accusamus. Labore rerum ex nesciunt voluptas ut magnam. Vitae facere optio aut sint ut.', 19, 68, 0, 1, '1725916216.jpg', 9, NULL, '2024-09-10 09:50:27', '2024-09-12 17:23:22'),
(26, 'quasi', 'Similique et sit recusandae inventore ducimus. Omnis molestiae quo nobis. Et quibusdam commodi et id deleniti corrupti. Perspiciatis consequatur voluptas omnis tempora fugit molestiae libero.', 55, 31, 1, 1, '1725963566.png', 6, NULL, '2024-09-10 09:50:27', '2024-09-10 09:50:27'),
(27, 'nihil', 'Possimus maiores quod velit modi. Non non mollitia qui a vel vel. Nostrum ratione consequuntur ut magni et maiores. Cupiditate fugit qui architecto doloremque reprehenderit.', 41, 14, 0, 1, '1725796383.png', 4, NULL, '2024-09-10 09:50:27', '2024-09-10 09:50:27'),
(28, 'ut', 'Vel repellendus non voluptatem ut veniam. Eum atque quia et assumenda accusantium consequatur praesentium. Quia est est optio provident ea eum non.', 7, 35, 1, 0, '1725966917.png', 6, NULL, '2024-09-10 09:50:27', '2024-09-10 09:50:27'),
(30, 'est', 'Eos rem aut laborum quae ipsam quidem nihil occaecati. Inventore necessitatibus quas molestiae rerum. Tempora repudiandae maxime natus velit sit debitis quos.', 78, 0, 0, 1, '1725963682.jpg', 9, NULL, '2024-09-10 09:50:27', '2024-09-12 17:23:10'),
(31, 'ex', 'Consequuntur vero nam et incidunt sit et. Qui suscipit optio sit earum consequatur. Aut cum qui dolor ullam incidunt.', 86, 64, 1, 0, '1725966935.png', 4, NULL, '2024-09-10 09:50:32', '2024-09-10 09:50:32'),
(32, 'voluptatibus', 'Mollitia iusto at aut voluptatum in maiores. Debitis et eum minima architecto provident architecto. Repellat ratione distinctio sed adipisci quo enim inventore vitae. Eum quae impedit ut.', 7, 26, 1, 1, 'colleagues-working-cozy-office-medium-shot.png', 7, NULL, '2024-09-10 09:50:32', '2024-09-10 09:50:32'),
(34, 'neque', 'Reprehenderit odit dolorem voluptatem magni. Non necessitatibus dolor quam et. Nulla sunt omnis aliquid accusantium.', 0, 54, 1, 0, '1725902917.png', 10, NULL, '2024-09-10 09:50:32', '2024-09-10 09:50:32'),
(35, 'voluptatum', 'Ut est impedit ut debitis rerum a. Ratione placeat minima quia. Dicta earum quos laboriosam blanditiis reprehenderit quo.', 34, 1, 0, 1, '1725901150.png', 6, NULL, '2024-09-10 09:50:32', '2024-09-10 09:50:32'),
(36, 'voluptatem', 'Dolor possimus dolorum eos voluptas odio alias. Quisquam ea non quae animi id cumque reiciendis. Harum saepe qui consequatur cum. Cupiditate eum error et vitae veniam facilis.', 24, 76, 0, 1, '1725915269.jpg', 7, NULL, '2024-09-10 09:50:32', '2024-09-10 09:50:32'),
(38, 'omnis', 'Voluptate aspernatur ut cupiditate est natus dolorem autem. Veritatis est qui officia eos cum tempore enim. Ut quo consequatur dolores perspiciatis sit qui.', 158, 12, 1, 1, '1725796383.png', 9, NULL, '2024-09-10 09:50:32', '2024-09-23 03:30:50'),
(41, 'asperiores', 'Autem ut repudiandae omnis error nihil. Eos aut accusamus non nihil. Harum optio consectetur sint et in repudiandae.', 34, 83, 0, 0, '1725966981.jpg', 6, NULL, '2024-09-10 09:50:37', '2024-09-10 09:50:37'),
(42, 'et', 'Assumenda distinctio deserunt dignissimos consectetur pariatur omnis quibusdam. Ea consectetur voluptate aut.', 88, 29, 0, 1, '1725796433.jpg', 6, NULL, '2024-09-10 09:50:37', '2024-09-10 09:50:37'),
(44, 'quia', 'Aliquam dolorem nisi nostrum sunt adipisci. Ad numquam laboriosam omnis at placeat ipsam ipsam. Nisi assumenda voluptas et adipisci. Excepturi quo officiis nihil explicabo.', 39, 86, 1, 0, '1725902941.png', 7, NULL, '2024-09-10 09:50:37', '2024-09-10 09:50:37'),
(45, 'reiciendis', 'Debitis voluptatem enim quibusdam quae qui placeat facilis. Vero voluptatem ut dolor ratione sint. Omnis voluptatem rerum modi excepturi. Beatae eos dolorem qui blanditiis consectetur.', 133, 33, 1, 1, '1725385239.jpg', 7, NULL, '2024-09-10 09:50:37', '2024-09-17 18:08:23'),
(47, 'error', 'Itaque quia culpa distinctio dolorem quia. Dolorum perferendis voluptatem reiciendis ut voluptatem facilis atque.', 55, 70, 1, 0, '1725901150.png', 9, NULL, '2024-09-10 09:50:37', '2024-09-10 09:50:37'),
(48, 'qui', 'Non beatae quo est tenetur vitae ad. Velit vel quidem vel reiciendis. Rem rerum deserunt dolorem libero corporis molestiae hic. Sint omnis eveniet ab minima. Dicta omnis quidem optio dolor sed.', 27, 80, 0, 1, '1725902941.png', 10, NULL, '2024-09-10 09:50:37', '2024-09-10 09:50:37'),
(49, 'modi', 'Eius accusamus vitae a dicta ea nihil. Qui similique libero corrupti quia aliquid. Consequatur est officiis consectetur dolor veritatis.', 47, 55, 0, 0, '1725902979.png', 10, NULL, '2024-09-10 09:50:38', '2024-09-10 09:50:38'),
(51, 'architecto', 'Voluptas aut tempore aspernatur alias consequuntur eveniet fugiat. Temporibus odit aperiam sit quo fuga ut dolorem cumque. Et ut doloribus velit nihil quisquam.', 46, 33, 1, 0, '1725796383.png', 8, NULL, '2024-09-10 09:50:42', '2024-09-23 03:36:32'),
(53, 'architecto', 'Eveniet commodi nihil cupiditate asperiores. Quam pariatur dolore quia voluptatem dolorum. Aperiam impedit esse excepturi. Omnis magni pariatur est mollitia.', 10, 75, 0, 1, '1725915568.png', 9, NULL, '2024-09-10 09:50:43', '2024-09-23 03:41:53'),
(56, 'perspiciatis', 'Aut quas rerum aliquid dolorem aperiam. Veniam veritatis animi delectus est nesciunt dolores. Iste iure aut enim consequatur autem odio.', 23, 48, 0, 1, '1725966935.png', 8, NULL, '2024-09-10 09:50:43', '2024-09-10 12:56:19'),
(57, 'vitae', 'Facere et et et incidunt sequi excepturi alias. Numquam voluptates modi quasi vel voluptatem. Commodi dolorem consequatur et hic dolor omnis. Quia qui maiores quam illum.', 61, 48, 1, 1, '1725916216.jpg', 8, NULL, '2024-09-10 09:50:43', '2024-09-23 03:42:34'),
(60, '111111111111111111111', 'Quia voluptas iste distinctio pariatur deserunt consectetur. Ratione nihil possimus reiciendis. Sed et et dicta dolorem maxime. Molestiae aut ut repellendus odit ut voluptates enim.', 0, 19, 1, 1, '1725984724.png', 9, NULL, '2024-09-10 09:50:43', '2024-09-10 13:12:04'),
(61, 'dance', 'test', 31, 0, 1, 1, '1726002888.png', 16, NULL, '2024-09-10 18:14:48', '2024-09-23 03:43:32');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `username`, `email`, `email_verified_at`, `password`, `active`, `remember_token`, `created_at`, `updated_at`) VALUES
(7, 'rasha', 'saber', 'RashaSaber', 'rashsfaber19@gmail.com', '2024-09-10 13:10:53', '$2y$12$6LKiLMI6i11FYo65iHH7j.AdtM25yODDbccL0prh7odlUqvJh34a2', 1, NULL, '2024-09-10 11:12:19', '2024-09-10 18:49:30'),
(9, 'rasha', 'saer', 'R_S', 'rashasaber19@gmail.com', '2024-09-10 16:29:02', '$2y$12$VXBdnqMh9a7Bw9q0jmMsqei3fGIFTEGf.Dx29Pv9RGoJUaP/HybjC', 1, NULL, '2024-09-10 16:26:34', '2024-09-10 16:29:02'),
(11, 'Mimaa155', 'moursi155', 'lozaa1155', 'mi5maa955@gmail.com', '2024-09-10 18:11:35', '$2y$12$wpZJbPeuXUeZ8Owxprq/duo8iE2Xrc7TRKU9hfeKuVdaKEHZXn4be', 1, NULL, '2024-09-10 18:11:35', '2024-09-17 18:16:38'),
(13, 'ssssssssss', 'ssss', 'ssssssss', 'ssshsaber19@gmail.com', '2024-09-12 17:13:07', '$2y$12$PVlJQoHmG0ugseWlyyRskO/DTlL7B2I9c79CSyyGmNxWydvzm4ZVK', 1, NULL, '2024-09-12 17:13:07', '2024-09-12 17:13:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_category_name_unique` (`category_name`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `topics_category_id_foreign` (`category_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `topics`
--
ALTER TABLE `topics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `topics`
--
ALTER TABLE `topics`
  ADD CONSTRAINT `topics_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
