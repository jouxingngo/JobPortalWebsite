-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 11, 2025 at 02:41 AM
-- Server version: 8.0.30
-- PHP Version: 8.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jobportal_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('adsfs@gmail.com|127.0.0.1', 'i:1;', 1744250086),
('adsfs@gmail.com|127.0.0.1:timer', 'i:1744250086;', 1744250086),
('asdf@gmail.com|127.0.0.1', 'i:1;', 1744250105),
('asdf@gmail.com|127.0.0.1:timer', 'i:1744250105;', 1744250105),
('asdfasd@gmail.com|127.0.0.1', 'i:1;', 1744250002),
('asdfasd@gmail.com|127.0.0.1:timer', 'i:1744250002;', 1744250002),
('asdfdasd@gmail.com|127.0.0.1', 'i:2;', 1744250048),
('asdfdasd@gmail.com|127.0.0.1:timer', 'i:1744250048;', 1744250048),
('jane@example.com|127.0.0.1', 'i:2;', 1744252855),
('jane@example.com|127.0.0.1:timer', 'i:1744252855;', 1744252855),
('jou@gmail.com|127.0.0.1', 'i:1;', 1744249956),
('jou@gmail.com|127.0.0.1:timer', 'i:1744249955;', 1744249955);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `icon`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Data Science', 'data-science', 'icon/2025/04/08/WBitqfr6Q5KdKQaxVZYZ2P7EHm2OmsUXbxVWGvzT.png', NULL, '2025-04-07 03:06:14', '2025-04-07 16:36:35'),
(2, 'Marketing', 'marketing', 'icon/2025/04/07/UEUguKV4T6DUTFswUYFUjp4vj3HQrYBOXRTr8Ymm.png', NULL, '2025-04-07 03:07:50', '2025-04-07 03:07:50'),
(3, 'asdf', 'asdf', 'icon/2025/04/07/wxHdqhwtLfZGFxMeBt2xkxtHzWCYoaWgCJNnTCI7.png', '2025-04-07 03:29:49', '2025-04-07 03:24:45', '2025-04-07 03:29:49'),
(4, 'Copywriting', 'copywriting', 'icon/2025/04/08/I9s0x31uiBOb5tuK9qZGBMbk3sEXNDCcEv6eEQSM.png', NULL, '2025-04-07 03:36:34', '2025-04-07 16:36:17'),
(5, 'Product Design', 'product-design', 'icon/2025/04/08/7t7wBA1lcIcCqTieENvpI8R5pEyaAk8sRXHtTgp6.png', NULL, '2025-04-07 16:35:57', '2025-04-07 16:35:57'),
(6, 'Blockchain', 'blockchain', 'icon/2025/04/08/VUucDPfp2UfAq32ie7dvUCzQObmxkez2EhsNTzJd.png', NULL, '2025-04-07 16:37:08', '2025-04-07 16:37:08'),
(7, 'Software QA', 'software-qa', 'icon/2025/04/08/4djNeihvIGBy8mqY0pW7zDyad84byuly6Mehss6w.png', NULL, '2025-04-07 16:37:20', '2025-04-07 16:37:20'),
(8, 'Development', 'development', 'icon/2025/04/08/Q8SfSAqGpDwQDYP2HkixY40yGiHPrsSnvdOTwI7H.png', NULL, '2025-04-07 16:37:33', '2025-04-07 16:37:33'),
(9, 'Virtual Assistant', 'virtual-assistant', 'icon/2025/04/08/6UVnQNe2uHn7wKNLwltjyNHTiLDgf8VLKnw9F8QL.png', NULL, '2025-04-07 16:37:52', '2025-04-07 16:37:52');

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `about` text NOT NULL,
  `employer_id` bigint UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `name`, `logo`, `slug`, `about`, `employer_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(3, 'Grab Singa', 'logos/2025/04/11/zSgsfWc5yxlZ5fQQV4urCzC8ABkEcyPpQRBaYNsT.svg', 'grab-singa', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce eget elementum leo. Integer finibus tellus nec augue pretium, non scelerisque tortor feugiat. Nulla facilisi. Curabitur efficitur, risus nec vulputate hendrerit, lacus ex egestas leo, in faucibus justo nunc ac augue.\r\n\r\nVestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Proin ac lorem vehicula, feugiat risus id, tincidunt libero. Quisque blandit fermentum orci, non sollicitudin sem gravida a. Sed nec purus nec lorem tincidunt aliquam.', 4, NULL, '2025-04-10 17:41:14', '2025-04-10 17:41:14'),
(4, 'VISA Cabang', 'logos/2025/04/11/5AiJFu1EkJyXB1DYCeB5S5U94SiRl17R6BubcNwa.svg', 'visa-cabang', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce eget elementum leo. Integer finibus tellus nec augue pretium, non scelerisque tortor feugiat. Nulla facilisi. Curabitur efficitur, risus nec vulputate hendrerit, lacus ex egestas leo, in faucibus justo nunc ac augue.\r\n\r\nVestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Proin ac lorem vehicula, feugiat risus id, tincidunt libero. Quisque blandit fermentum orci, non sollicitudin sem gravida a. Sed nec purus nec lorem tincidunt aliquam.', 2, NULL, '2025-04-10 17:42:08', '2025-04-10 17:42:08'),
(5, 'BCA Jakarta', 'logos/2025/04/11/C7kTXbzjXW7DGYJOkmhwQM6lmZ4VpPB3o0HZ7HfE.svg', 'bca-jakarta', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce eget elementum leo. Integer finibus tellus nec augue pretium, non scelerisque tortor feugiat. Nulla facilisi. Curabitur efficitur, risus nec vulputate hendrerit, lacus ex egestas leo, in faucibus justo nunc ac augue.\r\n\r\nVestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Proin ac lorem vehicula, feugiat risus id, tincidunt libero. Quisque blandit fermentum orci, non sollicitudin sem gravida a. Sed nec purus nec lorem tincidunt aliquam.', 6, NULL, '2025-04-10 17:47:09', '2025-04-10 17:47:09'),
(6, 'Mandiri Prioritas', 'logos/2025/04/11/Qjb0fNgUbMgRrcsc7tizarixSc9KmmH5wJihIylH.svg', 'mandiri-prioritas', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce eget elementum leo. Integer finibus tellus nec augue pretium, non scelerisque tortor feugiat. Nulla facilisi. Curabitur efficitur, risus nec vulputate hendrerit, lacus ex egestas leo, in faucibus justo nunc ac augue.\r\n\r\nVestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Proin ac lorem vehicula, feugiat risus id, tincidunt libero. Quisque blandit fermentum orci, non sollicitudin sem gravida a. Sed nec purus nec lorem tincidunt aliquam.', 7, NULL, '2025-04-10 17:50:31', '2025-04-10 17:50:31');

-- --------------------------------------------------------

--
-- Table structure for table `company_jobs`
--

CREATE TABLE `company_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `skill_level` varchar(255) NOT NULL,
  `salary` bigint UNSIGNED NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `about` text NOT NULL,
  `is_open` tinyint(1) NOT NULL,
  `company_id` bigint UNSIGNED NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `company_jobs`
--

INSERT INTO `company_jobs` (`id`, `name`, `slug`, `type`, `location`, `skill_level`, `salary`, `thumbnail`, `about`, `is_open`, `company_id`, `category_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(4, 'UI UX DEsigner Gaming Rapid Development', 'ui-ux-designer-gaming-rapid-development', 'Full-Time', 'Bali, Indoensia', 'Intermediate', 18500000, 'thumbnails/2025/04/11/xajMLZuWg8cit8evntFmNQcbOh7P3JJ6vhOYprxf.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce eget elementum leo. Integer finibus tellus nec augue pretium, non scelerisque tortor feugiat. Nulla facilisi. Curabitur efficitur, risus nec vulputate hendrerit, lacus ex egestas leo, in faucibus justo nunc ac augue.\r\n\r\nVestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Proin ac lorem vehicula, feugiat risus id, tincidunt libero. Quisque blandit fermentum orci, non sollicitudin sem gravida a. Sed nec purus nec lorem tincidunt aliquam.', 1, 4, 5, NULL, '2025-04-10 17:43:49', '2025-04-10 17:43:49'),
(5, 'UI UX DEsigner Gaming Rapid Development', 'ui-ux-designer-gaming-rapid-development', 'Full-Time', 'Bali, Indonesia', 'Expert', 250000, 'thumbnails/2025/04/11/HOt2uRMfOa6e9d4XlCEiDgzz9BwO9kco5nqOa355.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce eget elementum leo. Integer finibus tellus nec augue pretium, non scelerisque tortor feugiat. Nulla facilisi. Curabitur efficitur, risus nec vulputate hendrerit, lacus ex egestas leo, in faucibus justo nunc ac augue.', 1, 3, 5, NULL, '2025-04-10 17:44:58', '2025-04-10 17:44:58'),
(6, 'UI UX DEsigner Gaming Rapid Development', 'ui-ux-designer-gaming-rapid-development', 'Part-Time', 'Bali, Indonesia', 'Beginner', 4500000, 'thumbnails/2025/04/11/OsGzTLeYEkT566ccDUjFqWAAiQdMPAdNz5vlkRQv.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce eget elementum leo. Integer finibus tellus nec augue pretium, non scelerisque tortor feugiat. Nulla facilisi. Curabitur efficitur, risus nec vulputate hendrerit, lacus ex egestas leo, in faucibus justo nunc ac augue.', 1, 3, 5, NULL, '2025-04-10 17:45:52', '2025-04-10 17:45:52'),
(7, 'Web Developer', 'web-developer', 'Full-Time', 'Palu, Indonesia', 'Expert', 41000000, 'thumbnails/2025/04/11/OeNMEdIwXMHwTksstBXl3gl8WRLHWCoQ7k5RCjmr.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce eget elementum leo. Integer finibus tellus nec augue pretium, non scelerisque tortor feugiat. Nulla facilisi. Curabitur efficitur, risus nec vulputate hendrerit, lacus ex egestas leo, in faucibus justo nunc ac augue.\r\n\r\nVestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Proin ac lorem vehicula, feugiat risus id, tincidunt libero. Quisque blandit fermentum orci, non sollicitudin sem gravida a. Sed nec purus nec lorem tincidunt aliquam.', 1, 5, 8, NULL, '2025-04-10 17:47:50', '2025-04-10 17:47:50'),
(8, 'Product Designer', 'product-designer', 'Part-Time', 'Bali, Indonesia', 'Intermediate', 12000000, 'thumbnails/2025/04/11/SBFl8blY97K7rV80GbJUaEP0Egpkf0ZBDLDbHV5E.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce eget elementum leo. Integer finibus tellus nec augue pretium, non scelerisque tortor feugiat. Nulla facilisi. Curabitur efficitur, risus nec vulputate hendrerit, lacus ex egestas leo, in faucibus justo nunc ac augue.', 1, 5, 5, NULL, '2025-04-10 17:48:30', '2025-04-10 17:48:30'),
(9, 'Sales Acquisitions', 'sales-acquisitions', 'Full-Time', 'Bali, Indonesia', 'Expert', 23000000, 'thumbnails/2025/04/11/ynmn8zdu0mw5renH0wA2jLgbEB1aCRa1jvnRXeVH.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce eget elementum leo. Integer finibus tellus nec augue pretium, non scelerisque tortor feugiat. Nulla facilisi. Curabitur efficitur, risus nec vulputate hendrerit, lacus ex egestas leo, in faucibus justo nunc ac augue.', 1, 6, 2, NULL, '2025-04-10 17:51:14', '2025-04-10 17:51:14');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_candidates`
--

CREATE TABLE `job_candidates` (
  `id` bigint UNSIGNED NOT NULL,
  `resume` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `is_hired` tinyint(1) NOT NULL,
  `candidate_id` bigint UNSIGNED NOT NULL,
  `company_job_id` bigint UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_qualifications`
--

CREATE TABLE `job_qualifications` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `company_job_id` bigint UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `job_qualifications`
--

INSERT INTO `job_qualifications` (`id`, `name`, `company_job_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(9, 'Menggunakan Matematika untuk bisnis', 4, NULL, '2025-04-10 17:43:49', '2025-04-10 17:43:49'),
(10, 'Menggunakan Matematika untuk bisnis', 4, NULL, '2025-04-10 17:43:49', '2025-04-10 17:43:49'),
(11, 'Menggunakan Matematika untuk bisnis', 4, NULL, '2025-04-10 17:43:49', '2025-04-10 17:43:49'),
(12, 'Menggunakan Matematika untuk bisnis', 4, NULL, '2025-04-10 17:43:49', '2025-04-10 17:43:49'),
(13, 'Menggunakan Matematika untuk bisnis', 5, NULL, '2025-04-10 17:44:58', '2025-04-10 17:44:58'),
(14, 'Menggunakan Matematika untuk bisnis', 5, NULL, '2025-04-10 17:44:58', '2025-04-10 17:44:58'),
(15, 'Menggunakan Matematika untuk bisnis', 5, NULL, '2025-04-10 17:44:58', '2025-04-10 17:44:58'),
(16, 'Menggunakan Matematika untuk bisnis', 5, NULL, '2025-04-10 17:44:58', '2025-04-10 17:44:58'),
(17, 'Menggunakan Matematika untuk bisnis', 6, NULL, '2025-04-10 17:45:52', '2025-04-10 17:45:52'),
(18, 'Menggunakan Matematika untuk bisnis', 6, NULL, '2025-04-10 17:45:52', '2025-04-10 17:45:52'),
(19, 'Menggunakan Matematika untuk bisnis', 6, NULL, '2025-04-10 17:45:52', '2025-04-10 17:45:52'),
(20, 'Menggunakan Matematika untuk bisnis', 6, NULL, '2025-04-10 17:45:52', '2025-04-10 17:45:52'),
(21, 'Menggunakan Matematika untuk bisnis', 7, NULL, '2025-04-10 17:47:50', '2025-04-10 17:47:50'),
(22, 'Menggunakan Matematika untuk bisnis', 7, NULL, '2025-04-10 17:47:50', '2025-04-10 17:47:50'),
(23, 'Menggunakan Matematika untuk bisnis', 7, NULL, '2025-04-10 17:47:50', '2025-04-10 17:47:50'),
(24, 'Menggunakan Matematika untuk bisnis', 7, NULL, '2025-04-10 17:47:50', '2025-04-10 17:47:50'),
(25, 'Menggunakan Matematika untuk bisnis', 8, NULL, '2025-04-10 17:48:30', '2025-04-10 17:48:30'),
(26, 'Menggunakan Matematika untuk bisnis', 8, NULL, '2025-04-10 17:48:30', '2025-04-10 17:48:30'),
(27, 'Menggunakan Matematika untuk bisnis', 8, NULL, '2025-04-10 17:48:30', '2025-04-10 17:48:30'),
(28, 'Menggunakan Matematika untuk bisnis', 8, NULL, '2025-04-10 17:48:30', '2025-04-10 17:48:30'),
(29, 'Menggunakan Matematika untuk bisnis', 9, NULL, '2025-04-10 17:51:14', '2025-04-10 17:51:14'),
(30, 'Menggunakan Matematika untuk bisnis', 9, NULL, '2025-04-10 17:51:14', '2025-04-10 17:51:14'),
(31, 'Menggunakan Matematika untuk bisnis', 9, NULL, '2025-04-10 17:51:14', '2025-04-10 17:51:14'),
(32, 'Menggunakan Matematika untuk bisnis', 9, NULL, '2025-04-10 17:51:14', '2025-04-10 17:51:14');

-- --------------------------------------------------------

--
-- Table structure for table `job_responsibilities`
--

CREATE TABLE `job_responsibilities` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `company_job_id` bigint UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `job_responsibilities`
--

INSERT INTO `job_responsibilities` (`id`, `name`, `company_job_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(5, 'Dapat melakukan riset dengan baik', 4, NULL, '2025-04-10 17:43:49', '2025-04-10 17:43:49'),
(6, 'Dapat melakukan riset dengan baik', 4, NULL, '2025-04-10 17:43:49', '2025-04-10 17:43:49'),
(7, 'Dapat melakukan riset dengan baik', 4, NULL, '2025-04-10 17:43:49', '2025-04-10 17:43:49'),
(8, 'Dapat melakukan riset dengan baik', 4, NULL, '2025-04-10 17:43:49', '2025-04-10 17:43:49'),
(9, 'Dapat melakukan riset dengan baik', 5, NULL, '2025-04-10 17:44:58', '2025-04-10 17:44:58'),
(10, 'Dapat melakukan riset dengan baik', 5, NULL, '2025-04-10 17:44:58', '2025-04-10 17:44:58'),
(11, 'Dapat melakukan riset dengan baik', 5, NULL, '2025-04-10 17:44:58', '2025-04-10 17:44:58'),
(12, 'Dapat melakukan riset dengan baik', 5, NULL, '2025-04-10 17:44:58', '2025-04-10 17:44:58'),
(13, 'Dapat melakukan riset dengan baik', 6, NULL, '2025-04-10 17:45:52', '2025-04-10 17:45:52'),
(14, 'Dapat melakukan riset dengan baik', 6, NULL, '2025-04-10 17:45:52', '2025-04-10 17:45:52'),
(15, 'Dapat melakukan riset dengan baik', 6, NULL, '2025-04-10 17:45:52', '2025-04-10 17:45:52'),
(16, 'Dapat melakukan riset dengan baik', 6, NULL, '2025-04-10 17:45:52', '2025-04-10 17:45:52'),
(17, 'Dapat melakukan riset dengan baik', 7, NULL, '2025-04-10 17:47:50', '2025-04-10 17:47:50'),
(18, 'Dapat melakukan riset dengan baik', 7, NULL, '2025-04-10 17:47:50', '2025-04-10 17:47:50'),
(19, 'Dapat melakukan riset dengan baik', 7, NULL, '2025-04-10 17:47:50', '2025-04-10 17:47:50'),
(20, 'Dapat melakukan riset dengan baik', 7, NULL, '2025-04-10 17:47:50', '2025-04-10 17:47:50'),
(21, 'Dapat melakukan riset dengan baik', 8, NULL, '2025-04-10 17:48:30', '2025-04-10 17:48:30'),
(22, 'Dapat melakukan riset dengan baik', 8, NULL, '2025-04-10 17:48:30', '2025-04-10 17:48:30'),
(23, 'Dapat melakukan riset dengan baik', 8, NULL, '2025-04-10 17:48:30', '2025-04-10 17:48:30'),
(24, 'Dapat melakukan riset dengan baik', 8, NULL, '2025-04-10 17:48:30', '2025-04-10 17:48:30'),
(25, 'Dapat melakukan riset dengan baik', 9, NULL, '2025-04-10 17:51:14', '2025-04-10 17:51:14'),
(26, 'Dapat melakukan riset dengan baik', 9, NULL, '2025-04-10 17:51:14', '2025-04-10 17:51:14'),
(27, 'Dapat melakukan riset dengan baik', 9, NULL, '2025-04-10 17:51:14', '2025-04-10 17:51:14'),
(28, 'Dapat melakukan riset dengan baik', 9, NULL, '2025-04-10 17:51:14', '2025-04-10 17:51:14');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_04_04_024500_create_permission_tables', 1),
(5, '2025_04_04_024936_create_categories_table', 1),
(6, '2025_04_04_025006_create_companies_table', 1),
(7, '2025_04_04_025028_create_company_jobs_table', 1),
(8, '2025_04_04_025040_create_job_responsibilities_table', 1),
(9, '2025_04_04_025048_create_job_candidates_table', 1),
(10, '2025_04_04_025057_create_job_qualifications_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(3, 'App\\Models\\User', 1),
(1, 'App\\Models\\User', 2),
(2, 'App\\Models\\User', 3),
(1, 'App\\Models\\User', 4),
(2, 'App\\Models\\User', 5),
(1, 'App\\Models\\User', 6),
(1, 'App\\Models\\User', 7);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'manage categories', 'web', '2025-04-04 19:29:18', '2025-04-04 19:29:18'),
(2, 'manage company', 'web', '2025-04-04 19:29:18', '2025-04-04 19:29:18'),
(3, 'manage jobs', 'web', '2025-04-04 19:29:18', '2025-04-04 19:29:18'),
(4, 'manage candidates', 'web', '2025-04-04 19:29:18', '2025-04-04 19:29:18'),
(5, 'apply job', 'web', '2025-04-04 19:29:18', '2025-04-04 19:29:18');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'employer', 'web', '2025-04-04 19:29:18', '2025-04-04 19:29:18'),
(2, 'employee', 'web', '2025-04-04 19:29:18', '2025-04-04 19:29:18'),
(3, 'super_admin', 'web', '2025-04-04 19:29:18', '2025-04-04 19:29:18');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(2, 1),
(3, 1),
(4, 1),
(5, 2);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text,
  `payload` longtext NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('zTRDhj4qQQtBrr1hrZRRPoCdDHdZFZz7g0dheb4t', 4, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiVThsSFJRUE9tZVBJdnlmcXY0Y1Y1U0N4QVNjUmVkZnhnZnY4NzNqbCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjQ7fQ==', 1744339059);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `occupation` varchar(255) NOT NULL,
  `experience` bigint UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `avatar`, `occupation`, `experience`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'images/default-avatar.png', 'Superadmin', 100, 'super@admin.com', NULL, '$2y$12$nl9iOOfAaBj6rtORH/HcVOSiLvX0H7y0qT/FRnee3rqcYvpY2E57y', NULL, '2025-04-04 19:29:19', '2025-04-04 19:29:19'),
(2, 'John Doe', 'avatars/2UEWGwtgdlVSC2b01EjO5llAYb3ppK7517xlpYP8.jpg', 'HR Manager', 12, 'johndoe@example.com', NULL, '$2y$12$S04b/6HF2iomTFHmQbH1o.4yVK2WmmTbpUoF06em8FeD5sYdi/d4S', NULL, '2025-04-07 17:05:10', '2025-04-07 17:05:23'),
(3, 'Jane Doe', 'avatars/lQ4N6oGKgnw1fyx132GFg7GXQMOEkeU8baAyDTBe.jpg', 'Programmer', 5, 'janedoe@example.com', NULL, '$2y$12$ic8jp.BqNFeVQJWs7iPi0uN9cz/0wbHRdT5EiqtQiLDH1vGUh0yYW', NULL, '2025-04-09 18:16:52', '2025-04-09 18:16:52'),
(4, 'Employer', 'avatars/6kGDmcFiJcR1hcQNdedfgCVr5rTyJoyYwkdbWpA4.jpg', 'HRD', 12, 'employer@example.com', NULL, '$2y$12$IBHuYhJzXajy4a6oqbGfIuZMOGE4LTsds6MW3oT5JQmecJ.09LiO.', NULL, '2025-04-09 23:06:12', '2025-04-09 23:06:12'),
(5, 'Employee', 'avatars/zacA8XN2POCn2pqhuHcCgWE6wDQMh9lrpbsZ6X7l.png', 'Programmer', 12, 'employee@example.com', NULL, '$2y$12$qIAXoVz309iUz.sMQpwL8.JC3mZvIfbYZZDIFfCg/y2k8qU7vbGTO', NULL, '2025-04-09 23:14:01', '2025-04-09 23:14:01'),
(6, 'Employer2', 'avatars/UyK3JCe5YanaLjeGUzE3vJOqSLefxHssAoSzN99r.png', 'HRD BCA', 22, 'employer2@example.com', NULL, '$2y$12$Dpy8k.7btykY2MVzgVz07eRJ6qaV9NIsFCvmKMW6TemJprVh41sNS', NULL, '2025-04-10 17:46:55', '2025-04-10 17:46:55'),
(7, 'Employer3', 'avatars/4iUwlyYWx7JRwVlep2oyhq9V4B4q5eGRBYrcPog5.png', 'HRD Mandiri', 21, 'employer3@example.com', NULL, '$2y$12$j4lO8OIdXctPJa2puJu1u.SZdeNy2d2PWAY/WovoBfmAeOiCqjKce', NULL, '2025-04-10 17:49:40', '2025-04-10 17:49:40');

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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `companies_employer_id_foreign` (`employer_id`);

--
-- Indexes for table `company_jobs`
--
ALTER TABLE `company_jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `company_jobs_company_id_foreign` (`company_id`),
  ADD KEY `company_jobs_category_id_foreign` (`category_id`);

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
-- Indexes for table `job_candidates`
--
ALTER TABLE `job_candidates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_candidates_candidate_id_foreign` (`candidate_id`),
  ADD KEY `job_candidates_company_job_id_foreign` (`company_job_id`);

--
-- Indexes for table `job_qualifications`
--
ALTER TABLE `job_qualifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_qualifications_company_job_id_foreign` (`company_job_id`);

--
-- Indexes for table `job_responsibilities`
--
ALTER TABLE `job_responsibilities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_responsibilities_company_job_id_foreign` (`company_job_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `company_jobs`
--
ALTER TABLE `company_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job_candidates`
--
ALTER TABLE `job_candidates`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `job_qualifications`
--
ALTER TABLE `job_qualifications`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `job_responsibilities`
--
ALTER TABLE `job_responsibilities`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `companies`
--
ALTER TABLE `companies`
  ADD CONSTRAINT `companies_employer_id_foreign` FOREIGN KEY (`employer_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `company_jobs`
--
ALTER TABLE `company_jobs`
  ADD CONSTRAINT `company_jobs_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `company_jobs_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `job_candidates`
--
ALTER TABLE `job_candidates`
  ADD CONSTRAINT `job_candidates_candidate_id_foreign` FOREIGN KEY (`candidate_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `job_candidates_company_job_id_foreign` FOREIGN KEY (`company_job_id`) REFERENCES `company_jobs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `job_qualifications`
--
ALTER TABLE `job_qualifications`
  ADD CONSTRAINT `job_qualifications_company_job_id_foreign` FOREIGN KEY (`company_job_id`) REFERENCES `company_jobs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `job_responsibilities`
--
ALTER TABLE `job_responsibilities`
  ADD CONSTRAINT `job_responsibilities_company_job_id_foreign` FOREIGN KEY (`company_job_id`) REFERENCES `company_jobs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
