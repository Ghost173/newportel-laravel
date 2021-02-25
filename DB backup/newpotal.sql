-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 26, 2021 at 01:11 AM
-- Server version: 8.0.23-0ubuntu0.20.04.1
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `newpotal`
--

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

CREATE TABLE `ads` (
  `id` bigint UNSIGNED NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ads` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ads`
--

INSERT INTO `ads` (`id`, `link`, `ads`, `type`, `created_at`, `updated_at`) VALUES
(2, 'https://1tamilgun.com/categories/hd-movies/page/3/4', 'image/sponsers/60314e57e4e05.jpg', 2, NULL, NULL),
(4, 'https://www.youtube.com/watch?v=EYaKy4gE098&feature=youtu.be&ab_channel=sillyscreenofficial2.0', 'image/sponsers/6031672401158.png', 2, NULL, NULL),
(5, 'https://mail.google.com/mail/u/0/?tab=rm&ogbl#inbox/FMfcgxwLscxQFzrnfWdTNBjbqtbSgtsz', 'image/sponsers/603168016ad96.jpeg', 2, NULL, NULL),
(6, 'https://www.youtube.com/watch?v=EYaKy4gE098&feature=youtu.be&ab_channel=sillyscreenofficial2.0', 'image/sponsers/6031685a1118d.png', 2, NULL, NULL),
(7, 'http://127.0.0.1:8000/', 'image/sponsers/60316a591e7e9.jpg', 1, NULL, NULL),
(8, 'https://www.youtube.com/watch?v=EYaKy4gE098&feature=youtu.be&ab_channel=sillyscreenofficial2.0', 'image/sponsers/60316aeaec261.jpg', 1, NULL, NULL),
(9, 'https://1tamilgun.com/categories/hd-movies/page/3/', 'image/sponsers/60316b5e97a44.jpg', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `category_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_ta` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `soft_delete` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_en`, `category_ta`, `soft_delete`, `created_at`, `updated_at`) VALUES
(7, 'International news', 'சர்வதேச செய்தி', '0', NULL, NULL),
(8, 'Sports news', 'விளையாட்டு செய்திகள்', '0', NULL, NULL),
(9, 'Business news', 'வணிகச் செய்திகள்', '0', NULL, NULL),
(10, 'Entertainment', 'பொழுதுபோக்கு', '0', NULL, NULL),
(11, 'LifeStyle', 'வாழ்க்கை முறை', '0', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` bigint UNSIGNED NOT NULL,
  `district_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `district_ta` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `district_en`, `district_ta`, `created_at`, `updated_at`) VALUES
(5, 'north', 'வடக்கு', NULL, NULL),
(6, 'south', 'தெற்கு', NULL, NULL),
(7, 'east', 'கிழக்கு', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `livetcs`
--

CREATE TABLE `livetcs` (
  `id` bigint UNSIGNED NOT NULL,
  `embed_code` text COLLATE utf8mb4_unicode_ci,
  `status` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `livetcs`
--

INSERT INTO `livetcs` (`id`, `embed_code`, `status`, `created_at`, `updated_at`) VALUES
(1, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/9bxciZxkTdo\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2021_01_14_131556_create_sessions_table', 1),
(7, '2021_01_20_192109_create_categories_table', 2),
(8, '2021_01_20_192152_create_sub_categories_table', 2),
(9, '2021_01_23_171023_create_districts_table', 3),
(10, '2021_01_23_171225_create_subdistricts_table', 3),
(11, '2021_01_24_175541_create_posts_table', 4),
(12, '2021_02_02_155554_create_socials_table', 5),
(14, '2021_02_04_165618_create_seos_table', 6),
(15, '2021_02_04_192438_create_prayers_table', 7),
(16, '2021_02_06_151733_create_livetcs_table', 8),
(17, '2021_02_06_160841_create_notices_table', 9),
(18, '2021_02_06_182237_create_websites_table', 10),
(19, '2021_02_07_072544_create_photos_table', 11),
(20, '2021_02_07_155951_create_videos_table', 12),
(21, '2021_02_20_133505_create_ads_table', 13),
(22, '2021_02_24_131227_create_website_settings_table', 14);

-- --------------------------------------------------------

--
-- Table structure for table `notices`
--

CREATE TABLE `notices` (
  `id` bigint UNSIGNED NOT NULL,
  `notice` text COLLATE utf8mb4_unicode_ci,
  `status` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notices`
--

INSERT INTO `notices` (`id`, `notice`, `status`, `created_at`, `updated_at`) VALUES
(1, '<p>we are open for all doll <u>apple <b><font color=\"#000000\" style=\"background-color: rgb(255, 255, 0);\">welcome</font></b></u></p>', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('admin@mail.com', '$2y$10$w1WDXOlROqP8WKjrYdgidObOFpImvO4WU2FQSmVn5/Xu9ER5IZLRy', '2021-01-19 14:30:37');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` bigint UNSIGNED NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `photo`, `title`, `type`, `created_at`, `updated_at`) VALUES
(1, 'image/photogalley/601fcf569ff86.jpg', 'best of emp', '0', '2021-02-07 06:00:30', NULL),
(2, 'image/photogalley/601fcfa2d046b.jpg', 'our best views pic', '0', '2021-02-07 06:01:46', NULL),
(4, 'image/photogalley/602d4aa47570d.jpg', 'meee', '0', '2021-02-17 11:26:04', NULL),
(5, 'image/photogalley/602d4abaad58e.jpg', 'TC-TeleMed Billing View(Billing)', '0', '2021-02-17 11:26:26', NULL),
(6, 'image/photogalley/602d4ad6790cb.png', 'OABP-16700 story TCs review', '1', '2021-02-17 11:26:54', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint UNSIGNED NOT NULL,
  `category_id` int NOT NULL,
  `subcategory_id` int DEFAULT NULL,
  `district_id` int NOT NULL,
  `subdistrict_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  `title_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_ta` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details_en` text COLLATE utf8mb4_unicode_ci,
  `details_ta` text COLLATE utf8mb4_unicode_ci,
  `tags_en` text COLLATE utf8mb4_unicode_ci,
  `tags_ta` text COLLATE utf8mb4_unicode_ci,
  `headline` int DEFAULT NULL,
  `first_section` int DEFAULT NULL,
  `first_thumnail` int DEFAULT NULL,
  `bigthumnail` int DEFAULT NULL,
  `post_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_month` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `subcategory_id`, `district_id`, `subdistrict_id`, `user_id`, `title_en`, `title_ta`, `image`, `details_en`, `details_ta`, `tags_en`, `tags_ta`, `headline`, `first_section`, `first_thumnail`, `bigthumnail`, `post_date`, `post_month`, `created_at`, `updated_at`) VALUES
(10, 7, 8, 5, 4, 1, 'Department of Archeology Research at Uruthirapuriswarar Temple!', 'உருத்திரபுரீஸ்வரர் ஆலயத்திலும் தொல்லியல் திணைக்களம் ஆராய்ச்சி!', 'image/postimage/60167a00a1b47.jpeg', '<p>According to locals, a Buddhist monk visited the area at noon yesterday (Saturday) and police arrived in the area a few hours after the monk\'s departure and later in the evening the army visited the area. Our regional correspondent said that the situation in the area continues to be tense due to the incident.<br></p>', '<p>இந்நிலையில் நேற்றைய தினம் (சனிக்கிழமை) அப்பகுதிக்கு பௌத்த தேரர் ஒருவர் நண்பகல் வேளையில் வருகை தந்ததாகவும் பிக்கு சென்ற சில மணித்தியாலங்களின் பின்னர் அப்பகுதிக்கு பொலிஸார் வந்ததாகவும் பின்னர் மாலை வேளையில் இராணுவத்தினர் வருகை தந்து அவ்விடத்தை பார்த்து சென்றதாகவும் அப்பகுதி மக்கள் தெரிவித்துள்ளனர். குறித்த சம்பவத்தினால் அப்பகுதியில் தொடர்ந்து&nbsp; பரபரப்பான நிலை காணப்படுவதாக எமது பிராந்திய செய்தியாளர் தெரிவித்துள்ளார்.<br></p>', 'Uruthirapuriswarar Temple', 'தொல்லியல் திணைக்களம் ஆராய்ச்சி style=', NULL, NULL, NULL, NULL, '31-01-21', 'January', '2021-01-31 04:06:00', '2021-02-13 15:19:38'),
(11, 7, 7, 5, 4, 1, 'Praesent dignissim felis pulvinar risus semper feugiat.', 'Praesent dignissim felis pulvinar risus semper feugiat.', 'image/postimage/6028116bd51f3.jpg', '<p>Praesent dignissim felis pulvinar risus semper feugiat.Praesent dignissim felis pulvinar risus semper feugiat.Praesent dignissim felis pulvinar risus semper feugiat.Praesent dignissim felis pulvinar risus semper feugiat.Praesent dignissim felis pulvinar risus semper feugiat.Praesent dignissim felis pulvinar risus semper feugiat.Praesent dignissim felis pulvinar risus semper feugiat.Praesent dignissim felis pulvinar risus semper feugiat.Praesent dignissim felis pulvinar risus semper feugiat.Praesent dignissim felis pulvinar risus semper feugiat.Praesent dignissim felis pulvinar risus semper feugiat.Praesent dignissim felis pulvinar risus semper feugiat.Praesent dignissim felis pulvinar risus semper feugiat.Praesent dignissim felis pulvinar risus semper feugiat.Praesent dignissim felis pulvinar risus semper feugiat.Praesent dignissim felis pulvinar risus semper feugiat.<br></p>', '<p>Praesent dignissim felis pulvinar risus semper feugiat.Praesent dignissim felis pulvinar risus semper feugiat.Praesent dignissim felis pulvinar risus semper feugiat.Praesent dignissim felis pulvinar risus semper feugiat.Praesent dignissim felis pulvinar risus semper feugiat.Praesent dignissim felis pulvinar risus semper feugiat.Praesent dignissim felis pulvinar risus semper feugiat.Praesent dignissim felis pulvinar risus semper feugiat.Praesent dignissim felis pulvinar risus semper feugiat.Praesent dignissim felis pulvinar risus semper feugiat.Praesent dignissim felis pulvinar risus semper feugiat.Praesent dignissim felis pulvinar risus semper feugiat.Praesent dignissim felis pulvinar risus semper feugiat.Praesent dignissim felis pulvinar risus semper feugiat.Praesent dignissim felis pulvinar risus semper feugiat.Praesent dignissim felis pulvinar risus semper feugiat.<br></p>', 'Praesent dignissim felis pulvinar risus semper feugiat.', 'Praesent dignissim felis pulvinar risus semper feugiat.', NULL, NULL, NULL, NULL, '13-02-21', 'February', '2021-02-13 12:20:35', NULL),
(12, 7, 8, 6, 6, 1, 'Aenean pretium turpis vel congue pulvinar.', 'ந்நிலையில் நேற்றைய தினம் (சனிக்கிழமை) அப்பகுதிக்கு பௌத்த தேரர் ஒருவர்', 'image/postimage/6028118db49b4.png', '<p>Aenean pretium turpis vel congue pulvinar.Aenean pretium turpis vel congue pulvinar.Aenean pretium turpis vel congue pulvinar.Aenean pretium turpis vel congue pulvinar.Aenean pretium turpis vel congue pulvinar.Aenean pretium turpis vel congue pulvinar.Aenean pretium turpis vel congue pulvinar.Aenean pretium turpis vel congue pulvinar.Aenean pretium turpis vel congue pulvinar.Aenean pretium turpis vel congue pulvinar.Aenean pretium turpis vel congue pulvinar.Aenean pretium turpis vel congue pulvinar.Aenean pretium turpis vel congue pulvinar.Aenean pretium turpis vel congue pulvinar.Aenean pretium turpis vel congue pulvinar.Aenean pretium turpis vel congue pulvinar.Aenean pretium turpis vel congue pulvinar.Aenean pretium turpis vel congue pulvinar.<br></p>', '<p>&lt;p&gt;இந்நிலையில் நேற்றைய தினம் (சனிக்கிழமை) அப்பகுதிக்கு பௌத்த தேரர் ஒருவர் நண்பகல் வேளையில் வருகை தந்ததாகவும் பிக்கு சென்ற சில மணித்தியாலங்களின் பின்னர் அப்பகுதிக்கு பொலிஸார் வந்ததாகவும் பின்னர் மாலை வேளையில் இராணுவத்தினர் வருகை தந்து அவ்விடத்தை பார்த்து சென்றதாகவும் அப்பகுதி மக்கள் தெரிவித்துள்ளனர். குறித்த சம்பவத்தினால் அப்பகுதியில் தொடர்ந்து&amp;nbsp; பரபரப்பான நிலை காணப்படுவதாக எமது பிராந்திய செய்தியாளர் தெரிவித்துள்ளார்.&lt;br&gt;&lt;/p&gt;<br></p>', 'Aenean pretium turpis vel congue pulvinar.', 'Aenean pretium turpis vel congue pulvinar.', NULL, 1, NULL, NULL, '13-02-21', 'February', '2021-02-13 12:21:09', '2021-02-13 15:30:00'),
(13, 7, 9, 7, 8, 1, 'Etiam suscipit ligula et dignissim aliquam.', 'Etiam suscipit ligula et dignissim aliquam.', 'image/postimage/602811b05294e.jpeg', '<p>Etiam suscipit ligula et dignissim aliquam.Etiam suscipit ligula et dignissim aliquam.Etiam suscipit ligula et dignissim aliquam.Etiam suscipit ligula et dignissim aliquam.Etiam suscipit ligula et dignissim aliquam.Etiam suscipit ligula et dignissim aliquam.Etiam suscipit ligula et dignissim aliquam.Etiam suscipit ligula et dignissim aliquam.Etiam suscipit ligula et dignissim aliquam.Etiam suscipit ligula et dignissim aliquam.Etiam suscipit ligula et dignissim aliquam.Etiam suscipit ligula et dignissim aliquam.Etiam suscipit ligula et dignissim aliquam.Etiam suscipit ligula et dignissim aliquam.Etiam suscipit ligula et dignissim aliquam.Etiam suscipit ligula et dignissim aliquam.Etiam suscipit ligula et dignissim aliquam.Etiam suscipit ligula et dignissim aliquam.Etiam suscipit ligula et dignissim aliquam.Etiam suscipit ligula et dignissim aliquam.Etiam suscipit ligula et dignissim aliquam.Etiam suscipit ligula et dignissim aliquam.Etiam suscipit ligula et dignissim aliquam.<br></p>', '<p>Etiam suscipit ligula et dignissim aliquam.Etiam suscipit ligula et dignissim aliquam.Etiam suscipit ligula et dignissim aliquam.Etiam suscipit ligula et dignissim aliquam.Etiam suscipit ligula et dignissim aliquam.Etiam suscipit ligula et dignissim aliquam.Etiam suscipit ligula et dignissim aliquam.Etiam suscipit ligula et dignissim aliquam.Etiam suscipit ligula et dignissim aliquam.Etiam suscipit ligula et dignissim aliquam.Etiam suscipit ligula et dignissim aliquam.Etiam suscipit ligula et dignissim aliquam.Etiam suscipit ligula et dignissim aliquam.Etiam suscipit ligula et dignissim aliquam.Etiam suscipit ligula et dignissim aliquam.Etiam suscipit ligula et dignissim aliquam.Etiam suscipit ligula et dignissim aliquam.Etiam suscipit ligula et dignissim aliquam.Etiam suscipit ligula et dignissim aliquam.Etiam suscipit ligula et dignissim aliquam.Etiam suscipit ligula et dignissim aliquam.Etiam suscipit ligula et dignissim aliquam.Etiam suscipit ligula et dignissim aliquam.<br></p>', 'Etiam suscipit ligula et dignissim aliquam.', 'Etiam suscipit ligula et dignissim aliquam.', NULL, 1, NULL, 1, '13-02-21', 'February', '2021-02-13 12:21:44', '2021-02-13 15:22:43'),
(14, 7, 10, 6, 7, 1, 'Maecenas id urna fringilla, convallis ante eget, maximus leo.', 'ந்நிலையில் நேற்றைய தினம் (சனிக்கிழமை) அப்பகுதிக்கு பௌத்த தேரர் ஒருவர்', 'image/postimage/6028123d03013.jpg', '<p>Maecenas id urna fringilla, convallis ante eget, maximus leo.Maecenas id urna fringilla, convallis ante eget, maximus leo.Maecenas id urna fringilla, convallis ante eget, maximus leo.Maecenas id urna fringilla, convallis ante eget, maximus leo.Maecenas id urna fringilla, convallis ante eget, maximus leo.Maecenas id urna fringilla, convallis ante eget, maximus leo.Maecenas id urna fringilla, convallis ante eget, maximus leo.Maecenas id urna fringilla, convallis ante eget, maximus leo.Maecenas id urna fringilla, convallis ante eget, maximus leo.Maecenas id urna fringilla, convallis ante eget, maximus leo.Maecenas id urna fringilla, convallis ante eget, maximus leo.Maecenas id urna fringilla, convallis ante eget, maximus leo.Maecenas id urna fringilla, convallis ante eget, maximus leo.Maecenas id urna fringilla, convallis ante eget, maximus leo.Maecenas id urna fringilla, convallis ante eget, maximus leo.Maecenas id urna fringilla, convallis ante eget, maximus leo.Maecenas id urna fringilla, convallis ante eget, maximus leo.Maecenas id urna fringilla, convallis ante eget, maximus leo.<br></p>', '<p>&lt;p&gt;இந்நிலையில் நேற்றைய தினம் (சனிக்கிழமை) அப்பகுதிக்கு பௌத்த தேரர் ஒருவர் நண்பகல் வேளையில் வருகை தந்ததாகவும் பிக்கு சென்ற சில மணித்தியாலங்களின் பின்னர் அப்பகுதிக்கு பொலிஸார் வந்ததாகவும் பின்னர் மாலை வேளையில் இராணுவத்தினர் வருகை தந்து அவ்விடத்தை பார்த்து சென்றதாகவும் அப்பகுதி மக்கள் தெரிவித்துள்ளனர். குறித்த சம்பவத்தினால் அப்பகுதியில் தொடர்ந்து&amp;nbsp; பரபரப்பான நிலை காணப்படுவதாக எமது பிராந்திய செய்தியாளர் தெரிவித்துள்ளார்.&lt;br&gt;&lt;/p&gt;<br></p>', 'Maecenas id urna fringilla, convallis ante eget, maximus leo.', 'Maecenas id urna fringilla, convallis ante eget, maximus leo.', NULL, 1, NULL, NULL, '13-02-21', 'February', '2021-02-13 12:24:05', '2021-02-13 15:29:43'),
(15, 8, 12, 5, 5, 1, 'Suspendisse semper nisi vitae ligula congue malesuada condimentum et velit.', 'Suspendisse semper nisi vitae ligula congue malesuada condimentum et velit.', 'image/postimage/6028125959099.jpg', '<p>Suspendisse semper nisi vitae ligula congue malesuada condimentum et velit.Suspendisse semper nisi vitae ligula congue malesuada condimentum et velit.Suspendisse semper nisi vitae ligula congue malesuada condimentum et velit.Suspendisse semper nisi vitae ligula congue malesuada condimentum et velit.Suspendisse semper nisi vitae ligula congue malesuada condimentum et velit.Suspendisse semper nisi vitae ligula congue malesuada condimentum et velit.Suspendisse semper nisi vitae ligula congue malesuada condimentum et velit.Suspendisse semper nisi vitae ligula congue malesuada condimentum et velit.Suspendisse semper nisi vitae ligula congue malesuada condimentum et velit.Suspendisse semper nisi vitae ligula congue malesuada condimentum et velit.Suspendisse semper nisi vitae ligula congue malesuada condimentum et velit.Suspendisse semper nisi vitae ligula congue malesuada condimentum et velit.Suspendisse semper nisi vitae ligula congue malesuada condimentum et velit.Suspendisse semper nisi vitae ligula congue malesuada condimentum et velit.<br></p>', '<p>Suspendisse semper nisi vitae ligula congue malesuada condimentum et velit.Suspendisse semper nisi vitae ligula congue malesuada condimentum et velit.Suspendisse semper nisi vitae ligula congue malesuada condimentum et velit.Suspendisse semper nisi vitae ligula congue malesuada condimentum et velit.Suspendisse semper nisi vitae ligula congue malesuada condimentum et velit.Suspendisse semper nisi vitae ligula congue malesuada condimentum et velit.Suspendisse semper nisi vitae ligula congue malesuada condimentum et velit.Suspendisse semper nisi vitae ligula congue malesuada condimentum et velit.Suspendisse semper nisi vitae ligula congue malesuada condimentum et velit.Suspendisse semper nisi vitae ligula congue malesuada condimentum et velit.Suspendisse semper nisi vitae ligula congue malesuada condimentum et velit.Suspendisse semper nisi vitae ligula congue malesuada condimentum et velit.Suspendisse semper nisi vitae ligula congue malesuada condimentum et velit.Suspendisse semper nisi vitae ligula congue malesuada condimentum et velit.<br></p>', 'Suspendisse semper nisi vitae ligula congue malesuada condimentum et velit.', 'Suspendisse semper nisi vitae ligula congue malesuada condimentum et velit.', 1, NULL, NULL, NULL, '13-02-21', 'February', '2021-02-13 12:24:33', '2021-02-14 09:53:32'),
(16, 8, 13, 6, 6, 1, 'Nullam ut erat lobortis, venenatis tellus nec, semper urna.', 'Nullam ut erat lobortis, venenatis tellus nec, semper urna.', 'image/postimage/602812794ff62.png', '<p>Nullam ut erat lobortis, venenatis tellus nec, semper urna.Nullam ut erat lobortis, venenatis tellus nec, semper urna.Nullam ut erat lobortis, venenatis tellus nec, semper urna.Nullam ut erat lobortis, venenatis tellus nec, semper urna.Nullam ut erat lobortis, venenatis tellus nec, semper urna.Nullam ut erat lobortis, venenatis tellus nec, semper urna.Nullam ut erat lobortis, venenatis tellus nec, semper urna.Nullam ut erat lobortis, venenatis tellus nec, semper urna.Nullam ut erat lobortis, venenatis tellus nec, semper urna.Nullam ut erat lobortis, venenatis tellus nec, semper urna.Nullam ut erat lobortis, venenatis tellus nec, semper urna.Nullam ut erat lobortis, venenatis tellus nec, semper urna.Nullam ut erat lobortis, venenatis tellus nec, semper urna.Nullam ut erat lobortis, venenatis tellus nec, semper urna.Nullam ut erat lobortis, venenatis tellus nec, semper urna.Nullam ut erat lobortis, venenatis tellus nec, semper urna.Nullam ut erat lobortis, venenatis tellus nec, semper urna.Nullam ut erat lobortis, venenatis tellus nec, semper urna.<br></p>', '<p>Nullam ut erat lobortis, venenatis tellus nec, semper urna.Nullam ut erat lobortis, venenatis tellus nec, semper urna.Nullam ut erat lobortis, venenatis tellus nec, semper urna.Nullam ut erat lobortis, venenatis tellus nec, semper urna.Nullam ut erat lobortis, venenatis tellus nec, semper urna.Nullam ut erat lobortis, venenatis tellus nec, semper urna.Nullam ut erat lobortis, venenatis tellus nec, semper urna.Nullam ut erat lobortis, venenatis tellus nec, semper urna.Nullam ut erat lobortis, venenatis tellus nec, semper urna.Nullam ut erat lobortis, venenatis tellus nec, semper urna.Nullam ut erat lobortis, venenatis tellus nec, semper urna.Nullam ut erat lobortis, venenatis tellus nec, semper urna.Nullam ut erat lobortis, venenatis tellus nec, semper urna.Nullam ut erat lobortis, venenatis tellus nec, semper urna.Nullam ut erat lobortis, venenatis tellus nec, semper urna.Nullam ut erat lobortis, venenatis tellus nec, semper urna.Nullam ut erat lobortis, venenatis tellus nec, semper urna.Nullam ut erat lobortis, venenatis tellus nec, semper urna.<br></p>', 'Nullam ut erat lobortis, venenatis tellus nec, semper urna.', 'Nullam ut erat lobortis, venenatis tellus nec, semper urna.', 1, 1, 1, 1, '13-02-21', 'February', '2021-02-13 12:25:05', '2021-02-13 12:29:49'),
(17, 9, 15, 5, 5, 1, 'Ut in leo bibendum, mattis felis nec, euismod nulla.', 'Ut in leo bibendum, mattis felis nec, euismod nulla.', 'image/postimage/6028129b2b1b2.jpeg', '<p>Ut in leo bibendum, mattis felis nec, euismod nulla.Ut in leo bibendum, mattis felis nec, euismod nulla.Ut in leo bibendum, mattis felis nec, euismod nulla.Ut in leo bibendum, mattis felis nec, euismod nulla.Ut in leo bibendum, mattis felis nec, euismod nulla.Ut in leo bibendum, mattis felis nec, euismod nulla.Ut in leo bibendum, mattis felis nec, euismod nulla.Ut in leo bibendum, mattis felis nec, euismod nulla.Ut in leo bibendum, mattis felis nec, euismod nulla.Ut in leo bibendum, mattis felis nec, euismod nulla.Ut in leo bibendum, mattis felis nec, euismod nulla.Ut in leo bibendum, mattis felis nec, euismod nulla.Ut in leo bibendum, mattis felis nec, euismod nulla.Ut in leo bibendum, mattis felis nec, euismod nulla.Ut in leo bibendum, mattis felis nec, euismod nulla.Ut in leo bibendum, mattis felis nec, euismod nulla.Ut in leo bibendum, mattis felis nec, euismod nulla.Ut in leo bibendum, mattis felis nec, euismod nulla.Ut in leo bibendum, mattis felis nec, euismod nulla.Ut in leo bibendum, mattis felis nec, euismod nulla.Ut in leo bibendum, mattis felis nec, euismod nulla.Ut in leo bibendum, mattis felis nec, euismod nulla.Ut in leo bibendum, mattis felis nec, euismod nulla.<br></p>', '<p>Ut in leo bibendum, mattis felis nec, euismod nulla.Ut in leo bibendum, mattis felis nec, euismod nulla.Ut in leo bibendum, mattis felis nec, euismod nulla.Ut in leo bibendum, mattis felis nec, euismod nulla.Ut in leo bibendum, mattis felis nec, euismod nulla.Ut in leo bibendum, mattis felis nec, euismod nulla.Ut in leo bibendum, mattis felis nec, euismod nulla.Ut in leo bibendum, mattis felis nec, euismod nulla.Ut in leo bibendum, mattis felis nec, euismod nulla.Ut in leo bibendum, mattis felis nec, euismod nulla.Ut in leo bibendum, mattis felis nec, euismod nulla.Ut in leo bibendum, mattis felis nec, euismod nulla.Ut in leo bibendum, mattis felis nec, euismod nulla.Ut in leo bibendum, mattis felis nec, euismod nulla.Ut in leo bibendum, mattis felis nec, euismod nulla.Ut in leo bibendum, mattis felis nec, euismod nulla.Ut in leo bibendum, mattis felis nec, euismod nulla.Ut in leo bibendum, mattis felis nec, euismod nulla.Ut in leo bibendum, mattis felis nec, euismod nulla.Ut in leo bibendum, mattis felis nec, euismod nulla.Ut in leo bibendum, mattis felis nec, euismod nulla.Ut in leo bibendum, mattis felis nec, euismod nulla.Ut in leo bibendum, mattis felis nec, euismod nulla.</p><p><br></p><p><br></p><p>Ut in leo bibendum, mattis felis nec, euismod nulla.Ut in leo bibendum, mattis felis nec, euismod nulla.Ut in leo bibendum, mattis felis nec, euismod nulla.Ut in leo bibendum, mattis felis nec, euismod nulla.Ut in leo bibendum, mattis felis nec, euismod nulla.Ut in leo bibendum, mattis felis nec, euismod nulla.Ut in leo bibendum, mattis felis nec, euismod nulla.Ut in leo bibendum, mattis felis nec, euismod nulla.Ut in leo bibendum, mattis felis nec, euismod nulla.Ut in leo bibendum, mattis felis nec, euismod nulla.Ut in leo bibendum, mattis felis nec, euismod nulla.Ut in leo bibendum, mattis felis nec, euismod nulla.Ut in leo bibendum, mattis felis nec, euismod nulla.Ut in leo bibendum, mattis felis nec, euismod nulla.Ut in leo bibendum, mattis felis nec, euismod nulla.Ut in leo bibendum, mattis felis nec, euismod nulla.Ut in leo bibendum, mattis felis nec, euismod nulla.Ut in leo bibendum, mattis felis nec, euismod nulla.Ut in leo bibendum, mattis felis nec, euismod nulla.Ut in leo bibendum, mattis felis nec, euismod nulla.Ut in leo bibendum, mattis felis nec, euismod nulla.Ut in leo bibendum, mattis felis nec, euismod nulla.Ut in leo bibendum, mattis felis nec, euismod nulla.</p><hr><p><br></p><p><br></p><p>Ut in leo bibendum, mattis felis nec, euismod nulla.Ut in leo bibendum, mattis felis nec, euismod nulla.Ut in leo bibendum, mattis felis nec, euismod nulla.Ut in leo bibendum, mattis felis nec, euismod nulla.Ut in leo bibendum, mattis felis nec, euismod nulla.Ut in leo bibendum, mattis felis nec, euismod nulla.Ut in leo bibendum, mattis felis nec, euismod nulla.Ut in leo bibendum, mattis felis nec, euismod nulla.Ut in leo bibendum, mattis felis nec, euismod nulla.Ut in leo bibendum, mattis felis nec, euismod nulla.Ut in leo bibendum, mattis felis nec, euismod nulla.Ut in leo bibendum, mattis felis nec, euismod nulla.Ut in leo bibendum, mattis felis nec, euismod nulla.Ut in leo bibendum, mattis felis nec, euismod nulla.Ut in leo bibendum, mattis felis nec, euismod nulla.Ut in leo bibendum, mattis felis nec, euismod nulla.Ut in leo bibendum, mattis felis nec, euismod nulla.Ut in leo bibendum, mattis felis nec, euismod nulla.Ut in leo bibendum, mattis felis nec, euismod nulla.Ut in leo bibendum, mattis felis nec, euismod nulla.Ut in leo bibendum, mattis felis nec, euismod nulla.Ut in leo bibendum, mattis felis nec, euismod nulla.Ut in leo bibendum, mattis felis nec, euismod nulla.<br></p>', 'Ut in leo bibendum, mattis felis nec, euismod nulla.', 'Ut in leo bibendum, mattis felis nec, euismod nulla.', 1, 1, 1, 1, '13-02-21', 'February', '2021-02-13 12:25:39', '2021-02-13 12:29:25'),
(18, 10, 17, 6, 7, 1, 'Aenean euismod massa quis turpis euismod volutpat.', 'Aenean euismod massa quis turpis euismod volutpat.', 'image/postimage/602812c568255.png', '<p>Aenean euismod massa quis turpis euismod volutpat.Aenean euismod massa quis turpis euismod volutpat.Aenean euismod massa quis turpis euismod volutpat.Aenean euismod massa quis turpis euismod volutpat.Aenean euismod massa quis turpis euismod volutpat.Aenean euismod massa quis turpis euismod volutpat.Aenean euismod massa quis turpis euismod volutpat.Aenean euismod massa quis turpis euismod volutpat.Aenean euismod massa quis turpis euismod volutpat.Aenean euismod massa quis turpis euismod volutpat.Aenean euismod massa quis turpis euismod volutpat.Aenean euismod massa quis turpis euismod volutpat.Aenean euismod massa quis turpis euismod volutpat.Aenean euismod massa quis turpis euismod volutpat.Aenean euismod massa quis turpis euismod volutpat.Aenean euismod massa quis turpis euismod volutpat.Aenean euismod massa quis turpis euismod volutpat.Aenean euismod massa quis turpis euismod volutpat.Aenean euismod massa quis turpis euismod volutpat.Aenean euismod massa quis turpis euismod volutpat.Aenean euismod massa quis turpis euismod volutpat.Aenean euismod massa quis turpis euismod volutpat.Aenean euismod massa quis turpis euismod volutpat.Aenean euismod massa quis turpis euismod volutpat.Aenean euismod massa quis turpis euismod volutpat.Aenean euismod massa quis turpis euismod volutpat.Aenean euismod massa quis turpis euismod volutpat.Aenean euismod massa quis turpis euismod volutpat.Aenean euismod massa quis turpis euismod volutpat.Aenean euismod massa quis turpis euismod volutpat.Aenean euismod massa quis turpis euismod volutpat.Aenean euismod massa quis turpis euismod volutpat.Aenean euismod massa quis turpis euismod volutpat.Aenean euismod massa quis turpis euismod volutpat.Aenean euismod massa quis turpis euismod volutpat.Aenean euismod massa quis turpis euismod volutpat.Aenean euismod massa quis turpis euismod volutpat.</p><p><br></p><p>Aenean euismod massa quis turpis euismod volutpat.Aenean euismod massa quis turpis euismod volutpat.Aenean euismod massa quis turpis euismod volutpat.Aenean euismod massa quis turpis euismod volutpat.Aenean euismod massa quis turpis euismod volutpat.Aenean euismod massa quis turpis euismod volutpat.Aenean euismod massa quis turpis euismod volutpat.Aenean euismod massa quis turpis euismod volutpat.Aenean euismod massa quis turpis euismod volutpat.Aenean euismod massa quis turpis euismod volutpat.Aenean euismod massa quis turpis euismod volutpat.Aenean euismod massa quis turpis euismod volutpat.Aenean euismod massa quis turpis euismod volutpat.Aenean euismod massa quis turpis euismod volutpat.Aenean euismod massa quis turpis euismod volutpat.Aenean euismod massa quis turpis euismod volutpat.Aenean euismod massa quis turpis euismod volutpat.Aenean euismod massa quis turpis euismod volutpat.Aenean euismod massa quis turpis euismod volutpat.Aenean euismod massa quis turpis euismod volutpat.Aenean euismod massa quis turpis euismod volutpat.Aenean euismod massa quis turpis euismod volutpat.Aenean euismod massa quis turpis euismod volutpat.Aenean euismod massa quis turpis euismod volutpat.Aenean euismod massa quis turpis euismod volutpat.Aenean euismod massa quis turpis euismod volutpat.Aenean euismod massa quis turpis euismod volutpat.Aenean euismod massa quis turpis euismod volutpat.Aenean euismod massa quis turpis euismod volutpat.Aenean euismod massa quis turpis euismod volutpat.Aenean euismod massa quis turpis euismod volutpat.Aenean euismod massa quis turpis euismod volutpat.Aenean euismod massa quis turpis euismod volutpat.Aenean euismod massa quis turpis euismod volutpat.Aenean euismod massa quis turpis euismod volutpat.Aenean euismod massa quis turpis euismod volutpat.Aenean euismod massa quis turpis euismod volutpat.<br></p>', '<p>வவுனியா மணிபுரத்தில் கிராமிய பொதுச்சந்தை திறந்து வைப்பு!வவுனியா மணிபுரத்தில் கிராமிய பொதுச்சந்தை திறந்து வைப்பு!வவுனியா மணிபுரத்தில் கிராமிய பொதுச்சந்தை திறந்து வைப்பு!வவுனியா மணிபுரத்தில் கிராமிய பொதுச்சந்தை திறந்து வைப்பு!வவுனியா மணிபுரத்தில் கிராமிய பொதுச்சந்தை திறந்து வைப்பு!வவுனியா மணிபுரத்தில் கிராமிய பொதுச்சந்தை திறந்து வைப்பு!வவுனியா மணிபுரத்தில் கிராமிய பொதுச்சந்தை திறந்து வைப்பு!வவுனியா மணிபுரத்தில் கிராமிய பொதுச்சந்தை திறந்து வைப்பு!வவுனியா மணிபுரத்தில் கிராமிய பொதுச்சந்தை திறந்து வைப்பு!வவுனியா மணிபுரத்தில் கிராமிய பொதுச்சந்தை திறந்து வைப்பு!வவுனியா மணிபுரத்தில் கிராமிய பொதுச்சந்தை திறந்து வைப்பு!வவுனியா மணிபுரத்தில் கிராமிய பொதுச்சந்தை திறந்து வைப்பு!வவுனியா மணிபுரத்தில் கிராமிய பொதுச்சந்தை திறந்து வைப்பு!வவுனியா மணிபுரத்தில் கிராமிய பொதுச்சந்தை திறந்து வைப்பு!வவுனியா மணிபுரத்தில் கிராமிய பொதுச்சந்தை திறந்து வைப்பு!வவுனியா மணிபுரத்தில் கிராமிய பொதுச்சந்தை திறந்து வைப்பு!வவுனியா மணிபுரத்தில் கிராமிய பொதுச்சந்தை திறந்து வைப்பு!வவுனியா மணிபுரத்தில் கிராமிய பொதுச்சந்தை திறந்து வைப்பு!வவுனியா மணிபுரத்தில் கிராமிய பொதுச்சந்தை திறந்து வைப்பு!வவுனியா மணிபுரத்தில் கிராமிய பொதுச்சந்தை திறந்து வைப்பு!வவுனியா மணிபுரத்தில் கிராமிய பொதுச்சந்தை திறந்து வைப்பு!வவுனியா மணிபுரத்தில் கிராமிய பொதுச்சந்தை திறந்து வைப்பு!வவுனியா மணிபுரத்தில் கிராமிய பொதுச்சந்தை திறந்து வைப்பு!வவுனியா மணிபுரத்தில் கிராமிய பொதுச்சந்தை திறந்து வைப்பு!வவுனியா மணிபுரத்தில் கிராமிய பொதுச்சந்தை திறந்து வைப்பு!வவுனியா மணிபுரத்தில் கிராமிய பொதுச்சந்தை திறந்து வைப்பு!வவுனியா மணிபுரத்தில் கிராமிய பொதுச்சந்தை திறந்து வைப்பு!வவுனியா மணிபுரத்தில் கிராமிய பொதுச்சந்தை திறந்து வைப்பு!வவுனியா மணிபுரத்தில் கிராமிய பொதுச்சந்தை திறந்து வைப்பு!வவுனியா மணிபுரத்தில் கிராமிய பொதுச்சந்தை திறந்து வைப்பு!வவுனியா மணிபுரத்தில் கிராமிய பொதுச்சந்தை திறந்து வைப்பு!வவுனியா மணிபுரத்தில் கிராமிய பொதுச்சந்தை திறந்து வைப்பு!வவுனியா மணிபுரத்தில் கிராமிய பொதுச்சந்தை திறந்து வைப்பு!வவுனியா மணிபுரத்தில் கிராமிய பொதுச்சந்தை திறந்து வைப்பு!<br></p>', 'Aenean euismod massa quis turpis euismod volutpat.', 'Aenean euismod massa quis turpis euismod volutpat.', 1, 1, 1, 1, '13-02-21', 'February', '2021-02-13 12:26:21', '2021-02-14 14:34:40'),
(19, 11, 19, 5, 5, 1, 'Donec ac elit suscipit, dignissim dolor vel, convallis sem.', 'Donec ac elit suscipit, dignissim dolor vel, convallis sem.', 'image/postimage/602812e84028f.jpeg', '<p>Donec ac elit suscipit, dignissim dolor vel, convallis sem.Donec ac elit suscipit, dignissim dolor vel, convallis sem.Donec ac elit suscipit, dignissim dolor vel, convallis sem.Donec ac elit suscipit, dignissim dolor vel, convallis sem.Donec ac elit suscipit, dignissim dolor vel, convallis sem.Donec ac elit suscipit, dignissim dolor vel, convallis sem.Donec ac elit suscipit, dignissim dolor vel, convallis sem.Donec ac elit suscipit, dignissim dolor vel, convallis sem.Donec ac elit suscipit, dignissim dolor vel, convallis sem.Donec ac elit suscipit, dignissim dolor vel, convallis sem.Donec ac elit suscipit, dignissim dolor vel, convallis sem.Donec ac elit suscipit, dignissim dolor vel, convallis sem.Donec ac elit suscipit, dignissim dolor vel, convallis sem.Donec ac elit suscipit, dignissim dolor vel, convallis sem.Donec ac elit suscipit, dignissim dolor vel, convallis sem.Donec ac elit suscipit, dignissim dolor vel, convallis sem.Donec ac elit suscipit, dignissim dolor vel, convallis sem.Donec ac elit suscipit, dignissim dolor vel, convallis sem.Donec ac elit suscipit, dignissim dolor vel, convallis sem.Donec ac elit suscipit, dignissim dolor vel, convallis sem.Donec ac elit suscipit, dignissim dolor vel, convallis sem.Donec ac elit suscipit, dignissim dolor vel, convallis sem.Donec ac elit suscipit, dignissim dolor vel, convallis sem.Donec ac elit suscipit, dignissim dolor vel, convallis sem.Donec ac elit suscipit, dignissim dolor vel, convallis sem.Donec ac elit suscipit, dignissim dolor vel, convallis sem.Donec ac elit suscipit, dignissim dolor vel, convallis sem.Donec ac elit suscipit, dignissim dolor vel, convallis sem.Donec ac elit suscipit, dignissim dolor vel, convallis sem.Donec ac elit suscipit, dignissim dolor vel, convallis sem.Donec ac elit suscipit, dignissim dolor vel, convallis sem.Donec ac elit suscipit, dignissim dolor vel, convallis sem.Donec ac elit suscipit, dignissim dolor vel, convallis sem.Donec ac elit suscipit, dignissim dolor vel, convallis sem.Donec ac elit suscipit, dignissim dolor vel, convallis sem.Donec ac elit suscipit, dignissim dolor vel, convallis sem.<br></p>', '<p>Donec ac elit suscipit, dignissim dolor vel, convallis sem.Donec ac elit suscipit, dignissim dolor vel, convallis sem.Donec ac elit suscipit, dignissim dolor vel, convallis sem.Donec ac elit suscipit, dignissim dolor vel, convallis sem.Donec ac elit suscipit, dignissim dolor vel, convallis sem.Donec ac elit suscipit, dignissim dolor vel, convallis sem.Donec ac elit suscipit, dignissim dolor vel, convallis sem.Donec ac elit suscipit, dignissim dolor vel, convallis sem.Donec ac elit suscipit, dignissim dolor vel, convallis sem.Donec ac elit suscipit, dignissim dolor vel, convallis sem.Donec ac elit suscipit, dignissim dolor vel, convallis sem.Donec ac elit suscipit, dignissim dolor vel, convallis sem.Donec ac elit suscipit, dignissim dolor vel, convallis sem.Donec ac elit suscipit, dignissim dolor vel, convallis sem.Donec ac elit suscipit, dignissim dolor vel, convallis sem.Donec ac elit suscipit, dignissim dolor vel, convallis sem.Donec ac elit suscipit, dignissim dolor vel, convallis sem.Donec ac elit suscipit, dignissim dolor vel, convallis sem.Donec ac elit suscipit, dignissim dolor vel, convallis sem.Donec ac elit suscipit, dignissim dolor vel, convallis sem.Donec ac elit suscipit, dignissim dolor vel, convallis sem.Donec ac elit suscipit, dignissim dolor vel, convallis sem.Donec ac elit suscipit, dignissim dolor vel, convallis sem.Donec ac elit suscipit, dignissim dolor vel, convallis sem.Donec ac elit suscipit, dignissim dolor vel, convallis sem.Donec ac elit suscipit, dignissim dolor vel, convallis sem.Donec ac elit suscipit, dignissim dolor vel, convallis sem.Donec ac elit suscipit, dignissim dolor vel, convallis sem.Donec ac elit suscipit, dignissim dolor vel, convallis sem.Donec ac elit suscipit, dignissim dolor vel, convallis sem.Donec ac elit suscipit, dignissim dolor vel, convallis sem.Donec ac elit suscipit, dignissim dolor vel, convallis sem.Donec ac elit suscipit, dignissim dolor vel, convallis sem.Donec ac elit suscipit, dignissim dolor vel, convallis sem.Donec ac elit suscipit, dignissim dolor vel, convallis sem.Donec ac elit suscipit, dignissim dolor vel, convallis sem.</p><p>Donec ac elit suscipit, dignissim dolor vel, convallis sem.Donec ac elit suscipit, dignissim dolor vel, convallis sem.Donec ac elit suscipit, dignissim dolor vel, convallis sem.Donec ac elit suscipit, dignissim dolor vel, convallis sem.Donec ac elit suscipit, dignissim dolor vel, convallis sem.Donec ac elit suscipit, dignissim dolor vel, convallis sem.Donec ac elit suscipit, dignissim dolor vel, convallis sem.Donec ac elit suscipit, dignissim dolor vel, convallis sem.Donec ac elit suscipit, dignissim dolor vel, convallis sem.Donec ac elit suscipit, dignissim dolor vel, convallis sem.Donec ac elit suscipit, dignissim dolor vel, convallis sem.Donec ac elit suscipit, dignissim dolor vel, convallis sem.Donec ac elit suscipit, dignissim dolor vel, convallis sem.Donec ac elit suscipit, dignissim dolor vel, convallis sem.Donec ac elit suscipit, dignissim dolor vel, convallis sem.Donec ac elit suscipit, dignissim dolor vel, convallis sem.Donec ac elit suscipit, dignissim dolor vel, convallis sem.Donec ac elit suscipit, dignissim dolor vel, convallis sem.Donec ac elit suscipit, dignissim dolor vel, convallis sem.Donec ac elit suscipit, dignissim dolor vel, convallis sem.Donec ac elit suscipit, dignissim dolor vel, convallis sem.Donec ac elit suscipit, dignissim dolor vel, convallis sem.Donec ac elit suscipit, dignissim dolor vel, convallis sem.Donec ac elit suscipit, dignissim dolor vel, convallis sem.Donec ac elit suscipit, dignissim dolor vel, convallis sem.Donec ac elit suscipit, dignissim dolor vel, convallis sem.Donec ac elit suscipit, dignissim dolor vel, convallis sem.Donec ac elit suscipit, dignissim dolor vel, convallis sem.Donec ac elit suscipit, dignissim dolor vel, convallis sem.Donec ac elit suscipit, dignissim dolor vel, convallis sem.Donec ac elit suscipit, dignissim dolor vel, convallis sem.Donec ac elit suscipit, dignissim dolor vel, convallis sem.Donec ac elit suscipit, dignissim dolor vel, convallis sem.Donec ac elit suscipit, dignissim dolor vel, convallis sem.Donec ac elit suscipit, dignissim dolor vel, convallis sem.Donec ac elit suscipit, dignissim dolor vel, convallis sem.<br></p>', 'Donec ac elit suscipit, dignissim dolor vel, convallis sem.', 'Donec ac elit suscipit, dignissim dolor vel, convallis sem.', 1, 1, 1, 1, '13-02-21', 'February', '2021-02-13 12:26:56', '2021-02-13 12:29:15'),
(20, 11, 19, 5, 4, 1, 'Sed eu risus et justo auctor imperdiet nec vitae ligula.', 'Sed eu risus et justo auctor imperdiet nec vitae ligula.', 'image/postimage/6028130ea9f40.jpeg', '<p>Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.</p><p>Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.</p><p>Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.<br></p>', '<p>Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.</p><p>Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.</p><p>Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.Sed eu risus et justo auctor imperdiet nec vitae ligula.</p>', 'Sed eu risus et justo auctor imperdiet nec vitae ligula.', 'Sed eu risus et justo auctor imperdiet nec vitae ligula.', NULL, NULL, NULL, 1, '13-02-21', 'February', '2021-02-13 12:27:34', '2021-02-13 15:18:15');
INSERT INTO `posts` (`id`, `category_id`, `subcategory_id`, `district_id`, `subdistrict_id`, `user_id`, `title_en`, `title_ta`, `image`, `details_en`, `details_ta`, `tags_en`, `tags_ta`, `headline`, `first_section`, `first_thumnail`, `bigthumnail`, `post_date`, `post_month`, `created_at`, `updated_at`) VALUES
(21, 7, 11, 5, 5, 1, 'Etiam blandit nibh at diam egestas, vel viverra turpis tincidunt.', 'ந்நிலையில் நேற்றைய தினம் (சனிக்கிழமை) அப்பகுதிக்கு பௌத்த தேரர் ஒருவர்', 'image/postimage/60281332af442.jpg', '<p>Etiam blandit nibh at diam egestas, vel viverra turpis tincidunt.Etiam blandit nibh at diam egestas, vel viverra turpis tincidunt.Etiam blandit nibh at diam egestas, vel viverra turpis tincidunt.Etiam blandit nibh at diam egestas, vel viverra turpis tincidunt.Etiam blandit nibh at diam egestas, vel viverra turpis tincidunt.Etiam blandit nibh at diam egestas, vel viverra turpis tincidunt.Etiam blandit nibh at diam egestas, vel viverra turpis tincidunt.Etiam blandit nibh at diam egestas, vel viverra turpis tincidunt.Etiam blandit nibh at diam egestas, vel viverra turpis tincidunt.Etiam blandit nibh at diam egestas, vel viverra turpis tincidunt.Etiam blandit nibh at diam egestas, vel viverra turpis tincidunt.Etiam blandit nibh at diam egestas, vel viverra turpis tincidunt.Etiam blandit nibh at diam egestas, vel viverra turpis tincidunt.Etiam blandit nibh at diam egestas, vel viverra turpis tincidunt.Etiam blandit nibh at diam egestas, vel viverra turpis tincidunt.Etiam blandit nibh at diam egestas, vel viverra turpis tincidunt.Etiam blandit nibh at diam egestas, vel viverra turpis tincidunt.Etiam blandit nibh at diam egestas, vel viverra turpis tincidunt.Etiam blandit nibh at diam egestas, vel viverra turpis tincidunt.Etiam blandit nibh at diam egestas, vel viverra turpis tincidunt.Etiam blandit nibh at diam egestas, vel viverra turpis tincidunt.Etiam blandit nibh at diam egestas, vel viverra turpis tincidunt.Etiam blandit nibh at diam egestas, vel viverra turpis tincidunt.Etiam blandit nibh at diam egestas, vel viverra turpis tincidunt.Etiam blandit nibh at diam egestas, vel viverra turpis tincidunt.Etiam blandit nibh at diam egestas, vel viverra turpis tincidunt.Etiam blandit nibh at diam egestas, vel viverra turpis tincidunt.Etiam blandit nibh at diam egestas, vel viverra turpis tincidunt.Etiam blandit nibh at diam egestas, vel viverra turpis tincidunt.Etiam blandit nibh at diam egestas, vel viverra turpis tincidunt.Etiam blandit nibh at diam egestas, vel viverra turpis tincidunt.Etiam blandit nibh at diam egestas, vel viverra turpis tincidunt.Etiam blandit nibh at diam egestas, vel viverra turpis tincidunt.Etiam blandit nibh at diam egestas, vel viverra turpis tincidunt.Etiam blandit nibh at diam egestas, vel viverra turpis tincidunt.Etiam blandit nibh at diam egestas, vel viverra turpis tincidunt.Etiam blandit nibh at diam egestas, vel viverra turpis tincidunt.Etiam blandit nibh at diam egestas, vel viverra turpis tincidunt.Etiam blandit nibh at diam egestas, vel viverra turpis tincidunt.Etiam blandit nibh at diam egestas, vel viverra turpis tincidunt.Etiam blandit nibh at diam egestas, vel viverra turpis tincidunt.Etiam blandit nibh at diam egestas, vel viverra turpis tincidunt.Etiam blandit nibh at diam egestas, vel viverra turpis tincidunt.Etiam blandit nibh at diam egestas, vel viverra turpis tincidunt.Etiam blandit nibh at diam egestas, vel viverra turpis tincidunt.Etiam blandit nibh at diam egestas, vel viverra turpis tincidunt.Etiam blandit nibh at diam egestas, vel viverra turpis tincidunt.Etiam blandit nibh at diam egestas, vel viverra turpis tincidunt.Etiam blandit nibh at diam egestas, vel viverra turpis tincidunt.Etiam blandit nibh at diam egestas, vel viverra turpis tincidunt.Etiam blandit nibh at diam egestas, vel viverra turpis tincidunt.Etiam blandit nibh at diam egestas, vel viverra turpis tincidunt.Etiam blandit nibh at diam egestas, vel viverra turpis tincidunt.Etiam blandit nibh at diam egestas, vel viverra turpis tincidunt.Etiam blandit nibh at diam egestas, vel viverra turpis tincidunt.Etiam blandit nibh at diam egestas, vel viverra turpis tincidunt.<br></p>', '<p>&lt;p&gt;இந்நிலையில் நேற்றைய தினம் (சனிக்கிழமை) அப்பகுதிக்கு பௌத்த தேரர் ஒருவர் நண்பகல் வேளையில் வருகை தந்ததாகவும் பிக்கு சென்ற சில மணித்தியாலங்களின் பின்னர் அப்பகுதிக்கு பொலிஸார் வந்ததாகவும் பின்னர் மாலை வேளையில் இராணுவத்தினர் வருகை தந்து அவ்விடத்தை பார்த்து சென்றதாகவும் அப்பகுதி மக்கள் தெரிவித்துள்ளனர். குறித்த சம்பவத்தினால் அப்பகுதியில் தொடர்ந்து&amp;nbsp; பரபரப்பான நிலை காணப்படுவதாக எமது பிராந்திய செய்தியாளர் தெரிவித்துள்ளார்.&lt;br&gt;&lt;/p&gt;<br></p>', 'Etiam blandit nibh at diam egestas, vel viverra turpis tincidunt.', 'Etiam blandit nibh at diam egestas, vel viverra turpis tincidunt.', 1, 1, 1, NULL, '13-02-21', 'February', '2021-02-13 12:28:10', '2021-02-13 15:29:13'),
(22, 8, 13, 5, 4, 1, 'Etiam facilisis libero quis leo posuere consequat.', 'தனியார் வைத்தியசாலைகளில் பணிபுரியும் வைத்தியர்கள் மற்றும் ஊழியர்களுக்கு கொவிட் தடுப்பூசி!', 'image/postimage/6029411edfc1e.png', '<p>Etiam facilisis libero quis leo posuere consequat.Etiam facilisis libero quis leo posuere consequat.Etiam facilisis libero quis leo posuere consequat.Etiam facilisis libero quis leo posuere consequat.Etiam facilisis libero quis leo posuere consequat.Etiam facilisis libero quis leo posuere consequat.Etiam facilisis libero quis leo posuere consequat.Etiam facilisis libero quis leo posuere consequat.Etiam facilisis libero quis leo posuere consequat.Etiam facilisis libero quis leo posuere consequat.Etiam facilisis libero quis leo posuere consequat.Etiam facilisis libero quis leo posuere consequat.Etiam facilisis libero quis leo posuere consequat.Etiam facilisis libero quis leo posuere consequat.Etiam facilisis libero quis leo posuere consequat.Etiam facilisis libero quis leo posuere consequat.Etiam facilisis libero quis leo posuere consequat.Etiam facilisis libero quis leo posuere consequat.Etiam facilisis libero quis leo posuere consequat.Etiam facilisis libero quis leo posuere consequat.Etiam facilisis libero quis leo posuere consequat.Etiam facilisis libero quis leo posuere consequat.Etiam facilisis libero quis leo posuere consequat.Etiam facilisis libero quis leo posuere consequat.Etiam facilisis libero quis leo posuere consequat.Etiam facilisis libero quis leo posuere consequat.Etiam facilisis libero quis leo posuere consequat.Etiam facilisis libero quis leo posuere consequat.Etiam facilisis libero quis leo posuere consequat.Etiam facilisis libero quis leo posuere consequat.Etiam facilisis libero quis leo posuere consequat.Etiam facilisis libero quis leo posuere consequat.Etiam facilisis libero quis leo posuere consequat.Etiam facilisis libero quis leo posuere consequat.Etiam facilisis libero quis leo posuere consequat.Etiam facilisis libero quis leo posuere consequat.Etiam facilisis libero quis leo posuere consequat.Etiam facilisis libero quis leo posuere consequat.Etiam facilisis libero quis leo posuere consequat.Etiam facilisis libero quis leo posuere consequat.Etiam facilisis libero quis leo posuere consequat.Etiam facilisis libero quis leo posuere consequat.Etiam facilisis libero quis leo posuere consequat.Etiam facilisis libero quis leo posuere consequat.Etiam facilisis libero quis leo posuere consequat.Etiam facilisis libero quis leo posuere consequat.Etiam facilisis libero quis leo posuere consequat.Etiam facilisis libero quis leo posuere consequat.Etiam facilisis libero quis leo posuere consequat.Etiam facilisis libero quis leo posuere consequat.Etiam facilisis libero quis leo posuere consequat.Etiam facilisis libero quis leo posuere consequat.Etiam facilisis libero quis leo posuere consequat.Etiam facilisis libero quis leo posuere consequat.Etiam facilisis libero quis leo posuere consequat.Etiam facilisis libero quis leo posuere consequat.Etiam facilisis libero quis leo posuere consequat.Etiam facilisis libero quis leo posuere consequat.Etiam facilisis libero quis leo posuere consequat.Etiam facilisis libero quis leo posuere consequat.Etiam facilisis libero quis leo posuere consequat.Etiam facilisis libero quis leo posuere consequat.Etiam facilisis libero quis leo posuere consequat.Etiam facilisis libero quis leo posuere consequat.Etiam facilisis libero quis leo posuere consequat.Etiam facilisis libero quis leo posuere consequat.Etiam facilisis libero quis leo posuere consequat.Etiam facilisis libero quis leo posuere consequat.Etiam facilisis libero quis leo posuere consequat.Etiam facilisis libero quis leo posuere consequat.Etiam facilisis libero quis leo posuere consequat.Etiam facilisis libero quis leo posuere consequat.Etiam facilisis libero quis leo posuere consequat.Etiam facilisis libero quis leo posuere consequat.Etiam facilisis libero quis leo posuere consequat.Etiam facilisis libero quis leo posuere consequat.Etiam facilisis libero quis leo posuere consequat.Etiam facilisis libero quis leo posuere consequat.Etiam facilisis libero quis leo posuere consequat.Etiam facilisis libero quis leo posuere consequat.Etiam facilisis libero quis leo posuere consequat.Etiam facilisis libero quis leo posuere consequat.Etiam facilisis libero quis leo posuere consequat.Etiam facilisis libero quis leo posuere consequat.Etiam facilisis libero quis leo posuere consequat.Etiam facilisis libero quis leo posuere consequat.Etiam facilisis libero quis leo posuere consequat.Etiam facilisis libero quis leo posuere consequat.Etiam facilisis libero quis leo posuere consequat.Etiam facilisis libero quis leo posuere consequat.Etiam facilisis libero quis leo posuere consequat.Etiam facilisis libero quis leo posuere consequat.Etiam facilisis libero quis leo posuere consequat.Etiam facilisis libero quis leo posuere consequat.Etiam facilisis libero quis leo posuere consequat.Etiam facilisis libero quis leo posuere consequat.Etiam facilisis libero quis leo posuere consequat.Etiam facilisis libero quis leo posuere consequat.Etiam facilisis libero quis leo posuere consequat.Etiam facilisis libero quis leo posuere consequat.Etiam facilisis libero quis leo posuere consequat.Etiam facilisis libero quis leo posuere consequat.Etiam facilisis libero quis leo posuere consequat.Etiam facilisis libero quis leo posuere consequat.Etiam facilisis libero quis leo posuere consequat.Etiam facilisis libero quis leo posuere consequat.Etiam facilisis libero quis leo posuere consequat.Etiam facilisis libero quis leo posuere consequat.Etiam facilisis libero quis leo posuere consequat.<br></p>', '<p>தனியார் வைத்தியசாலைகளில் பணிபுரியும் வைத்தியர்கள் மற்றும் ஊழியர்களுக்கு கொவிட் தடுப்பூசி!தனியார் வைத்தியசாலைகளில் பணிபுரியும் வைத்தியர்கள் மற்றும் ஊழியர்களுக்கு கொவிட் தடுப்பூசி!தனியார் வைத்தியசாலைகளில் பணிபுரியும் வைத்தியர்கள் மற்றும் ஊழியர்களுக்கு கொவிட் தடுப்பூசி!தனியார் வைத்தியசாலைகளில் பணிபுரியும் வைத்தியர்கள் மற்றும் ஊழியர்களுக்கு கொவிட் தடுப்பூசி!தனியார் வைத்தியசாலைகளில் பணிபுரியும் வைத்தியர்கள் மற்றும் ஊழியர்களுக்கு கொவிட் தடுப்பூசி!தனியார் வைத்தியசாலைகளில் பணிபுரியும் வைத்தியர்கள் மற்றும் ஊழியர்களுக்கு கொவிட் தடுப்பூசி!தனியார் வைத்தியசாலைகளில் பணிபுரியும் வைத்தியர்கள் மற்றும் ஊழியர்களுக்கு கொவிட் தடுப்பூசி!தனியார் வைத்தியசாலைகளில் பணிபுரியும் வைத்தியர்கள் மற்றும் ஊழியர்களுக்கு கொவிட் தடுப்பூசி!தனியார் வைத்தியசாலைகளில் பணிபுரியும் வைத்தியர்கள் மற்றும் ஊழியர்களுக்கு கொவிட் தடுப்பூசி!தனியார் வைத்தியசாலைகளில் பணிபுரியும் வைத்தியர்கள் மற்றும் ஊழியர்களுக்கு கொவிட் தடுப்பூசி!தனியார் வைத்தியசாலைகளில் பணிபுரியும் வைத்தியர்கள் மற்றும் ஊழியர்களுக்கு கொவிட் தடுப்பூசி!தனியார் வைத்தியசாலைகளில் பணிபுரியும் வைத்தியர்கள் மற்றும் ஊழியர்களுக்கு கொவிட் தடுப்பூசி!தனியார் வைத்தியசாலைகளில் பணிபுரியும் வைத்தியர்கள் மற்றும் ஊழியர்களுக்கு கொவிட் தடுப்பூசி!தனியார் வைத்தியசாலைகளில் பணிபுரியும் வைத்தியர்கள் மற்றும் ஊழியர்களுக்கு கொவிட் தடுப்பூசி!தனியார் வைத்தியசாலைகளில் பணிபுரியும் வைத்தியர்கள் மற்றும் ஊழியர்களுக்கு கொவிட் தடுப்பூசி!தனியார் வைத்தியசாலைகளில் பணிபுரியும் வைத்தியர்கள் மற்றும் ஊழியர்களுக்கு கொவிட் தடுப்பூசி!தனியார் வைத்தியசாலைகளில் பணிபுரியும் வைத்தியர்கள் மற்றும் ஊழியர்களுக்கு கொவிட் தடுப்பூசி!தனியார் வைத்தியசாலைகளில் பணிபுரியும் வைத்தியர்கள் மற்றும் ஊழியர்களுக்கு கொவிட் தடுப்பூசி!தனியார் வைத்தியசாலைகளில் பணிபுரியும் வைத்தியர்கள் மற்றும் ஊழியர்களுக்கு கொவிட் தடுப்பூசி!தனியார் வைத்தியசாலைகளில் பணிபுரியும் வைத்தியர்கள் மற்றும் ஊழியர்களுக்கு கொவிட் தடுப்பூசி!தனியார் வைத்தியசாலைகளில் பணிபுரியும் வைத்தியர்கள் மற்றும் ஊழியர்களுக்கு கொவிட் தடுப்பூசி!தனியார் வைத்தியசாலைகளில் பணிபுரியும் வைத்தியர்கள் மற்றும் ஊழியர்களுக்கு கொவிட் தடுப்பூசி!தனியார் வைத்தியசாலைகளில் பணிபுரியும் வைத்தியர்கள் மற்றும் ஊழியர்களுக்கு கொவிட் தடுப்பூசி!தனியார் வைத்தியசாலைகளில் பணிபுரியும் வைத்தியர்கள் மற்றும் ஊழியர்களுக்கு கொவிட் தடுப்பூசி!தனியார் வைத்தியசாலைகளில் பணிபுரியும் வைத்தியர்கள் மற்றும் ஊழியர்களுக்கு கொவிட் தடுப்பூசி!தனியார் வைத்தியசாலைகளில் பணிபுரியும் வைத்தியர்கள் மற்றும் ஊழியர்களுக்கு கொவிட் தடுப்பூசி!தனியார் வைத்தியசாலைகளில் பணிபுரியும் வைத்தியர்கள் மற்றும் ஊழியர்களுக்கு கொவிட் தடுப்பூசி!தனியார் வைத்தியசாலைகளில் பணிபுரியும் வைத்தியர்கள் மற்றும் ஊழியர்களுக்கு கொவிட் தடுப்பூசி!தனியார் வைத்தியசாலைகளில் பணிபுரியும் வைத்தியர்கள் மற்றும் ஊழியர்களுக்கு கொவிட் தடுப்பூசி!தனியார் வைத்தியசாலைகளில் பணிபுரியும் வைத்தியர்கள் மற்றும் ஊழியர்களுக்கு கொவிட் தடுப்பூசி!தனியார் வைத்தியசாலைகளில் பணிபுரியும் வைத்தியர்கள் மற்றும் ஊழியர்களுக்கு கொவிட் தடுப்பூசி!தனியார் வைத்தியசாலைகளில் பணிபுரியும் வைத்தியர்கள் மற்றும் ஊழியர்களுக்கு கொவிட் தடுப்பூசி!தனியார் வைத்தியசாலைகளில் பணிபுரியும் வைத்தியர்கள் மற்றும் ஊழியர்களுக்கு கொவிட் தடுப்பூசி!தனியார் வைத்தியசாலைகளில் பணிபுரியும் வைத்தியர்கள் மற்றும் ஊழியர்களுக்கு கொவிட் தடுப்பூசி!தனியார் வைத்தியசாலைகளில் பணிபுரியும் வைத்தியர்கள் மற்றும் ஊழியர்களுக்கு கொவிட் தடுப்பூசி!தனியார் வைத்தியசாலைகளில் பணிபுரியும் வைத்தியர்கள் மற்றும் ஊழியர்களுக்கு கொவிட் தடுப்பூசி!தனியார் வைத்தியசாலைகளில் பணிபுரியும் வைத்தியர்கள் மற்றும் ஊழியர்களுக்கு கொவிட் தடுப்பூசி!தனியார் வைத்தியசாலைகளில் பணிபுரியும் வைத்தியர்கள் மற்றும் ஊழியர்களுக்கு கொவிட் தடுப்பூசி!தனியார் வைத்தியசாலைகளில் பணிபுரியும் வைத்தியர்கள் மற்றும் ஊழியர்களுக்கு கொவிட் தடுப்பூசி!தனியார் வைத்தியசாலைகளில் பணிபுரியும் வைத்தியர்கள் மற்றும் ஊழியர்களுக்கு கொவிட் தடுப்பூசி!தனியார் வைத்தியசாலைகளில் பணிபுரியும் வைத்தியர்கள் மற்றும் ஊழியர்களுக்கு கொவிட் தடுப்பூசி!தனியார் வைத்தியசாலைகளில் பணிபுரியும் வைத்தியர்கள் மற்றும் ஊழியர்களுக்கு கொவிட் தடுப்பூசி!தனியார் வைத்தியசாலைகளில் பணிபுரியும் வைத்தியர்கள் மற்றும் ஊழியர்களுக்கு கொவிட் தடுப்பூசி!தனியார் வைத்தியசாலைகளில் பணிபுரியும் வைத்தியர்கள் மற்றும் ஊழியர்களுக்கு கொவிட் தடுப்பூசி!தனியார் வைத்தியசாலைகளில் பணிபுரியும் வைத்தியர்கள் மற்றும் ஊழியர்களுக்கு கொவிட் தடுப்பூசி!தனியார் வைத்தியசாலைகளில் பணிபுரியும் வைத்தியர்கள் மற்றும் ஊழியர்களுக்கு கொவிட் தடுப்பூசி!தனியார் வைத்தியசாலைகளில் பணிபுரியும் வைத்தியர்கள் மற்றும் ஊழியர்களுக்கு கொவிட் தடுப்பூசி!தனியார் வைத்தியசாலைகளில் பணிபுரியும் வைத்தியர்கள் மற்றும் ஊழியர்களுக்கு கொவிட் தடுப்பூசி!தனியார் வைத்தியசாலைகளில் பணிபுரியும் வைத்தியர்கள் மற்றும் ஊழியர்களுக்கு கொவிட் தடுப்பூசி!தனியார் வைத்தியசாலைகளில் பணிபுரியும் வைத்தியர்கள் மற்றும் ஊழியர்களுக்கு கொவிட் தடுப்பூசி!தனியார் வைத்தியசாலைகளில் பணிபுரியும் வைத்தியர்கள் மற்றும் ஊழியர்களுக்கு கொவிட் தடுப்பூசி!தனியார் வைத்தியசாலைகளில் பணிபுரியும் வைத்தியர்கள் மற்றும் ஊழியர்களுக்கு கொவிட் தடுப்பூசி!தனியார் வைத்தியசாலைகளில் பணிபுரியும் வைத்தியர்கள் மற்றும் ஊழியர்களுக்கு கொவிட் தடுப்பூசி!தனியார் வைத்தியசாலைகளில் பணிபுரியும் வைத்தியர்கள் மற்றும் ஊழியர்களுக்கு கொவிட் தடுப்பூசி!தனியார் வைத்தியசாலைகளில் பணிபுரியும் வைத்தியர்கள் மற்றும் ஊழியர்களுக்கு கொவிட் தடுப்பூசி!தனியார் வைத்தியசாலைகளில் பணிபுரியும் வைத்தியர்கள் மற்றும் ஊழியர்களுக்கு கொவிட் தடுப்பூசி!தனியார் வைத்தியசாலைகளில் பணிபுரியும் வைத்தியர்கள் மற்றும் ஊழியர்களுக்கு கொவிட் தடுப்பூசி!தனியார் வைத்தியசாலைகளில் பணிபுரியும் வைத்தியர்கள் மற்றும் ஊழியர்களுக்கு கொவிட் தடுப்பூசி!தனியார் வைத்தியசாலைகளில் பணிபுரியும் வைத்தியர்கள் மற்றும் ஊழியர்களுக்கு கொவிட் தடுப்பூசி!தனியார் வைத்தியசாலைகளில் பணிபுரியும் வைத்தியர்கள் மற்றும் ஊழியர்களுக்கு கொவிட் தடுப்பூசி!தனியார் வைத்தியசாலைகளில் பணிபுரியும் வைத்தியர்கள் மற்றும் ஊழியர்களுக்கு கொவிட் தடுப்பூசி!தனியார் வைத்தியசாலைகளில் பணிபுரியும் வைத்தியர்கள் மற்றும் ஊழியர்களுக்கு கொவிட் தடுப்பூசி!தனியார் வைத்தியசாலைகளில் பணிபுரியும் வைத்தியர்கள் மற்றும் ஊழியர்களுக்கு கொவிட் தடுப்பூசி!தனியார் வைத்தியசாலைகளில் பணிபுரியும் வைத்தியர்கள் மற்றும் ஊழியர்களுக்கு கொவிட் தடுப்பூசி!தனியார் வைத்தியசாலைகளில் பணிபுரியும் வைத்தியர்கள் மற்றும் ஊழியர்களுக்கு கொவிட் தடுப்பூசி!தனியார் வைத்தியசாலைகளில் பணிபுரியும் வைத்தியர்கள் மற்றும் ஊழியர்களுக்கு கொவிட் தடுப்பூசி!<br></p><h1 class=\"entry-title\" style=\"font-size: 20px; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; line-height: 24px; font-family: &quot;Mukta Malar&quot;; color: rgb(45, 45, 45); padding: 12px 0px; position: relative; border-bottom: 1px solid rgb(201, 0, 0); background-color: rgb(255, 255, 255);\">தனியார் வைத்தியசாலைகளில் பணிபுரியும் வைத்தியர்கள் மற்றும் ஊழியர்களுக்கு கொவிட் தடுப்பூசி!</h1>', 'Etiam facilisis libero quis leo posuere consequat.', 'தனியார் வைத்தியசாலைகளில் பணிபுரியும் வைத்தியர்கள் மற்றும் ஊழியர்களுக்கு கொவிட் தடுப்பூசி!', NULL, 1, NULL, NULL, '14-02-21', 'February', '2021-02-14 09:56:22', '2021-02-14 10:02:37'),
(23, 9, 15, 5, 5, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!', 'image/postimage/602979bd6e178.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p><div><br></div>', '<p>நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!&nbsp;<span style=\"font-weight: initial;\">நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!&nbsp;</span><span style=\"font-weight: initial;\">நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!&nbsp;</span><span style=\"font-weight: initial;\">நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!&nbsp;</span><span style=\"font-weight: initial;\">நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!&nbsp;</span><span style=\"font-weight: initial;\">நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!&nbsp;</span><span style=\"font-weight: initial;\">நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!&nbsp;</span><span style=\"font-weight: initial;\">நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!&nbsp;</span><span style=\"font-weight: initial;\">நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!&nbsp;</span><span style=\"font-weight: initial;\">நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!&nbsp;</span><span style=\"font-weight: initial;\">நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!&nbsp;</span><span style=\"font-weight: initial;\">நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!&nbsp;</span><span style=\"font-weight: initial;\">நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!&nbsp;</span><span style=\"font-weight: initial;\">நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!&nbsp;</span><span style=\"font-weight: initial;\">நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!&nbsp;</span><span style=\"font-weight: initial;\">நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!&nbsp;</span><span style=\"font-weight: initial;\">நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!&nbsp;</span><span style=\"font-weight: initial;\">நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!&nbsp;</span><span style=\"font-weight: initial;\">நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!&nbsp;</span><span style=\"font-weight: initial;\">நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!&nbsp;</span><span style=\"font-weight: initial;\">நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!&nbsp;</span><span style=\"font-weight: initial;\">நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!&nbsp;</span><span style=\"font-weight: initial;\">நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!&nbsp;</span><span style=\"font-weight: initial;\">நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!&nbsp;</span><span style=\"font-weight: initial;\">நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!&nbsp;</span><span style=\"font-weight: initial;\">நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!&nbsp;</span><span style=\"font-weight: initial;\">நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!&nbsp;</span><span style=\"font-weight: initial;\">நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!&nbsp;</span><span style=\"font-weight: initial;\">நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!&nbsp;</span><span style=\"font-weight: initial;\">நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!&nbsp;</span><span style=\"font-weight: initial;\">நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!&nbsp;</span><span style=\"font-weight: initial;\">நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!&nbsp;</span><span style=\"font-weight: initial;\">நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!&nbsp;</span><span style=\"font-weight: initial;\">நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!&nbsp;</span><span style=\"font-weight: initial;\">நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!&nbsp;</span><span style=\"font-weight: initial;\">நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!&nbsp;</span><span style=\"font-weight: initial;\">நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!&nbsp;</span><br></p>', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!', NULL, NULL, NULL, NULL, '14-02-21', 'February', '2021-02-14 13:57:57', NULL),
(24, 9, 14, 6, 7, 1, 'Vestibulum vel ante vitae purus euismod molestie rutrum egestas nisl.', 'நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!', 'image/postimage/602979ed0d6a8.png', '<p>Vestibulum vel ante vitae purus euismod molestie rutrum egestas nisl.<span style=\"font-weight: initial;\">Vestibulum vel ante vitae purus euismod molestie rutrum egestas nisl.</span><span style=\"font-weight: initial;\">Vestibulum vel ante vitae purus euismod molestie rutrum egestas nisl.</span><span style=\"font-weight: initial;\">Vestibulum vel ante vitae purus euismod molestie rutrum egestas nisl.</span><span style=\"font-weight: initial;\">Vestibulum vel ante vitae purus euismod molestie rutrum egestas nisl.</span><span style=\"font-weight: initial;\">Vestibulum vel ante vitae purus euismod molestie rutrum egestas nisl.</span><span style=\"font-weight: initial;\">Vestibulum vel ante vitae purus euismod molestie rutrum egestas nisl.</span><span style=\"font-weight: initial;\">Vestibulum vel ante vitae purus euismod molestie rutrum egestas nisl.</span><span style=\"font-weight: initial;\">Vestibulum vel ante vitae purus euismod molestie rutrum egestas nisl.</span><span style=\"font-weight: initial;\">Vestibulum vel ante vitae purus euismod molestie rutrum egestas nisl.</span><span style=\"font-weight: initial;\">Vestibulum vel ante vitae purus euismod molestie rutrum egestas nisl.</span><span style=\"font-weight: initial;\">Vestibulum vel ante vitae purus euismod molestie rutrum egestas nisl.</span><span style=\"font-weight: initial;\">Vestibulum vel ante vitae purus euismod molestie rutrum egestas nisl.</span><span style=\"font-weight: initial;\">Vestibulum vel ante vitae purus euismod molestie rutrum egestas nisl.</span><span style=\"font-weight: initial;\">Vestibulum vel ante vitae purus euismod molestie rutrum egestas nisl.</span><span style=\"font-weight: initial;\">Vestibulum vel ante vitae purus euismod molestie rutrum egestas nisl.</span><span style=\"font-weight: initial;\">Vestibulum vel ante vitae purus euismod molestie rutrum egestas nisl.</span><span style=\"font-weight: initial;\">Vestibulum vel ante vitae purus euismod molestie rutrum egestas nisl.</span><span style=\"font-weight: initial;\">Vestibulum vel ante vitae purus euismod molestie rutrum egestas nisl.</span><span style=\"font-weight: initial;\">Vestibulum vel ante vitae purus euismod molestie rutrum egestas nisl.</span><span style=\"font-weight: initial;\">Vestibulum vel ante vitae purus euismod molestie rutrum egestas nisl.</span><span style=\"font-weight: initial;\">Vestibulum vel ante vitae purus euismod molestie rutrum egestas nisl.</span><span style=\"font-weight: initial;\">Vestibulum vel ante vitae purus euismod molestie rutrum egestas nisl.</span><span style=\"font-weight: initial;\">Vestibulum vel ante vitae purus euismod molestie rutrum egestas nisl.</span><span style=\"font-weight: initial;\">Vestibulum vel ante vitae purus euismod molestie rutrum egestas nisl.</span><span style=\"font-weight: initial;\">Vestibulum vel ante vitae purus euismod molestie rutrum egestas nisl.</span><span style=\"font-weight: initial;\">Vestibulum vel ante vitae purus euismod molestie rutrum egestas nisl.</span><span style=\"font-weight: initial;\">Vestibulum vel ante vitae purus euismod molestie rutrum egestas nisl.</span><span style=\"font-weight: initial;\">Vestibulum vel ante vitae purus euismod molestie rutrum egestas nisl.</span><span style=\"font-weight: initial;\">Vestibulum vel ante vitae purus euismod molestie rutrum egestas nisl.</span><span style=\"font-weight: initial;\">Vestibulum vel ante vitae purus euismod molestie rutrum egestas nisl.</span><span style=\"font-weight: initial;\">Vestibulum vel ante vitae purus euismod molestie rutrum egestas nisl.</span><span style=\"font-weight: initial;\">Vestibulum vel ante vitae purus euismod molestie rutrum egestas nisl.</span><span style=\"font-weight: initial;\">Vestibulum vel ante vitae purus euismod molestie rutrum egestas nisl.</span><span style=\"font-weight: initial;\">Vestibulum vel ante vitae purus euismod molestie rutrum egestas nisl.</span><span style=\"font-weight: initial;\">Vestibulum vel ante vitae purus euismod molestie rutrum egestas nisl.</span><span style=\"font-weight: initial;\">Vestibulum vel ante vitae purus euismod molestie rutrum egestas nisl.</span><span style=\"font-weight: initial;\">Vestibulum vel ante vitae purus euismod molestie rutrum egestas nisl.</span><span style=\"font-weight: initial;\">Vestibulum vel ante vitae purus euismod molestie rutrum egestas nisl.</span><span style=\"font-weight: initial;\">Vestibulum vel ante vitae purus euismod molestie rutrum egestas nisl.</span><span style=\"font-weight: initial;\">Vestibulum vel ante vitae purus euismod molestie rutrum egestas nisl.</span><span style=\"font-weight: initial;\">Vestibulum vel ante vitae purus euismod molestie rutrum egestas nisl.</span><span style=\"font-weight: initial;\">Vestibulum vel ante vitae purus euismod molestie rutrum egestas nisl.</span><span style=\"font-weight: initial;\">Vestibulum vel ante vitae purus euismod molestie rutrum egestas nisl.</span><span style=\"font-weight: initial;\">Vestibulum vel ante vitae purus euismod molestie rutrum egestas nisl.</span><span style=\"font-weight: initial;\">Vestibulum vel ante vitae purus euismod molestie rutrum egestas nisl.</span><span style=\"font-weight: initial;\">Vestibulum vel ante vitae purus euismod molestie rutrum egestas nisl.</span><span style=\"font-weight: initial;\">Vestibulum vel ante vitae purus euismod molestie rutrum egestas nisl.</span><span style=\"font-weight: initial;\">Vestibulum vel ante vitae purus euismod molestie rutrum egestas nisl.</span><span style=\"font-weight: initial;\">Vestibulum vel ante vitae purus euismod molestie rutrum egestas nisl.v</span><br></p>', '<p>நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!<br></p>', 'Vestibulum vel ante vitae purus euismod molestie rutrum egestas nisl.', 'நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!', NULL, NULL, NULL, NULL, '14-02-21', 'February', '2021-02-14 13:58:45', NULL),
(25, 9, 14, 6, 7, 1, 'Cras id felis porttitor, hendrerit magna ut, commodo urna.', 'நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!', 'image/postimage/60297a6069335.png', '<p>Cras id felis porttitor, hendrerit magna ut, commodo urna.Cras id felis porttitor, hendrerit magna ut, commodo urna.Cras id felis porttitor, hendrerit magna ut, commodo urna.Cras id felis porttitor, hendrerit magna ut, commodo urna.Cras id felis porttitor, hendrerit magna ut, commodo urna.Cras id felis porttitor, hendrerit magna ut, commodo urna.Cras id felis porttitor, hendrerit magna ut, commodo urna.Cras id felis porttitor, hendrerit magna ut, commodo urna.Cras id felis porttitor, hendrerit magna ut, commodo urna.Cras id felis porttitor, hendrerit magna ut, commodo urna.Cras id felis porttitor, hendrerit magna ut, commodo urna.Cras id felis porttitor, hendrerit magna ut, commodo urna.Cras id felis porttitor, hendrerit magna ut, commodo urna.Cras id felis porttitor, hendrerit magna ut, commodo urna.Cras id felis porttitor, hendrerit magna ut, commodo urna.Cras id felis porttitor, hendrerit magna ut, commodo urna.Cras id felis porttitor, hendrerit magna ut, commodo urna.Cras id felis porttitor, hendrerit magna ut, commodo urna.Cras id felis porttitor, hendrerit magna ut, commodo urna.Cras id felis porttitor, hendrerit magna ut, commodo urna.Cras id felis porttitor, hendrerit magna ut, commodo urna.Cras id felis porttitor, hendrerit magna ut, commodo urna.Cras id felis porttitor, hendrerit magna ut, commodo urna.Cras id felis porttitor, hendrerit magna ut, commodo urna.Cras id felis porttitor, hendrerit magna ut, commodo urna.Cras id felis porttitor, hendrerit magna ut, commodo urna.Cras id felis porttitor, hendrerit magna ut, commodo urna.Cras id felis porttitor, hendrerit magna ut, commodo urna.Cras id felis porttitor, hendrerit magna ut, commodo urna.Cras id felis porttitor, hendrerit magna ut, commodo urna.Cras id felis porttitor, hendrerit magna ut, commodo urna.Cras id felis porttitor, hendrerit magna ut, commodo urna.Cras id felis porttitor, hendrerit magna ut, commodo urna.Cras id felis porttitor, hendrerit magna ut, commodo urna.Cras id felis porttitor, hendrerit magna ut, commodo urna.Cras id felis porttitor, hendrerit magna ut, commodo urna.Cras id felis porttitor, hendrerit magna ut, commodo urna.Cras id felis porttitor, hendrerit magna ut, commodo urna.Cras id felis porttitor, hendrerit magna ut, commodo urna.Cras id felis porttitor, hendrerit magna ut, commodo urna.Cras id felis porttitor, hendrerit magna ut, commodo urna.Cras id felis porttitor, hendrerit magna ut, commodo urna.Cras id felis porttitor, hendrerit magna ut, commodo urna.Cras id felis porttitor, hendrerit magna ut, commodo urna.Cras id felis porttitor, hendrerit magna ut, commodo urna.Cras id felis porttitor, hendrerit magna ut, commodo urna.Cras id felis porttitor, hendrerit magna ut, commodo urna.Cras id felis porttitor, hendrerit magna ut, commodo urna.Cras id felis porttitor, hendrerit magna ut, commodo urna.Cras id felis porttitor, hendrerit magna ut, commodo urna.<br></p>', '<p>நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!<br></p>', 'Cras id felis porttitor, hendrerit magna ut, commodo urna.', 'நிவாரணத்தினை நம்பி சென்று ஏமாற்றம் அடைந்தவர் இன்று பாராளுமன்ற உறுப்பினர்!', 1, 1, 1, 1, '14-02-21', 'February', '2021-02-14 14:00:40', '2021-02-14 14:28:55'),
(26, 10, 17, 6, 7, 1, 'Curabitur accumsan purus in nisl semper lobortis.', 'முன்னாள் போராளிக்கு வாழ்வாதார உதவி வழங்கி வைப்பு', 'image/postimage/6029832d4fe5d.jpg', '<p>Curabitur accumsan purus in nisl semper lobortis.Curabitur accumsan purus in nisl semper lobortis.Curabitur accumsan purus in nisl semper lobortis.Curabitur accumsan purus in nisl semper lobortis.Curabitur accumsan purus in nisl semper lobortis.Curabitur accumsan purus in nisl semper lobortis.Curabitur accumsan purus in nisl semper lobortis.Curabitur accumsan purus in nisl semper lobortis.Curabitur accumsan purus in nisl semper lobortis.Curabitur accumsan purus in nisl semper lobortis.Curabitur accumsan purus in nisl semper lobortis.Curabitur accumsan purus in nisl semper lobortis.Curabitur accumsan purus in nisl semper lobortis.Curabitur accumsan purus in nisl semper lobortis.Curabitur accumsan purus in nisl semper lobortis.Curabitur accumsan purus in nisl semper lobortis.Curabitur accumsan purus in nisl semper lobortis.Curabitur accumsan purus in nisl semper lobortis.Curabitur accumsan purus in nisl semper lobortis.Curabitur accumsan purus in nisl semper lobortis.Curabitur accumsan purus in nisl semper lobortis.Curabitur accumsan purus in nisl semper lobortis.Curabitur accumsan purus in nisl semper lobortis.Curabitur accumsan purus in nisl semper lobortis.Curabitur accumsan purus in nisl semper lobortis.Curabitur accumsan purus in nisl semper lobortis.Curabitur accumsan purus in nisl semper lobortis.Curabitur accumsan purus in nisl semper lobortis.Curabitur accumsan purus in nisl semper lobortis.Curabitur accumsan purus in nisl semper lobortis.Curabitur accumsan purus in nisl semper lobortis.Curabitur accumsan purus in nisl semper lobortis.Curabitur accumsan purus in nisl semper lobortis.Curabitur accumsan purus in nisl semper lobortis.Curabitur accumsan purus in nisl semper lobortis.Curabitur accumsan purus in nisl semper lobortis.Curabitur accumsan purus in nisl semper lobortis.Curabitur accumsan purus in nisl semper lobortis.Curabitur accumsan purus in nisl semper lobortis.Curabitur accumsan purus in nisl semper lobortis.Curabitur accumsan purus in nisl semper lobortis.Curabitur accumsan purus in nisl semper lobortis.Curabitur accumsan purus in nisl semper lobortis.Curabitur accumsan purus in nisl semper lobortis.Curabitur accumsan purus in nisl semper lobortis.Curabitur accumsan purus in nisl semper lobortis.Curabitur accumsan purus in nisl semper lobortis.Curabitur accumsan purus in nisl semper lobortis.Curabitur accumsan purus in nisl semper lobortis.Curabitur accumsan purus in nisl semper lobortis.Curabitur accumsan purus in nisl semper lobortis.Curabitur accumsan purus in nisl semper lobortis.Curabitur accumsan purus in nisl semper lobortis.Curabitur accumsan purus in nisl semper lobortis.Curabitur accumsan purus in nisl semper lobortis.Curabitur accumsan purus in nisl semper lobortis.Curabitur accumsan purus in nisl semper lobortis.Curabitur accumsan purus in nisl semper lobortis.Curabitur accumsan purus in nisl semper lobortis.Curabitur accumsan purus in nisl semper lobortis.Curabitur accumsan purus in nisl semper lobortis.Curabitur accumsan purus in nisl semper lobortis.Curabitur accumsan purus in nisl semper lobortis.Curabitur accumsan purus in nisl semper lobortis.Curabitur accumsan purus in nisl semper lobortis.Curabitur accumsan purus in nisl semper lobortis.<br></p>', '<p>முன்னாள் போராளிக்கு வாழ்வாதார உதவி வழங்கி வைப்புமுன்னாள் போராளிக்கு வாழ்வாதார உதவி வழங்கி வைப்புமுன்னாள் போராளிக்கு வாழ்வாதார உதவி வழங்கி வைப்புமுன்னாள் போராளிக்கு வாழ்வாதார உதவி வழங்கி வைப்புமுன்னாள் போராளிக்கு வாழ்வாதார உதவி வழங்கி வைப்புமுன்னாள் போராளிக்கு வாழ்வாதார உதவி வழங்கி வைப்புமுன்னாள் போராளிக்கு வாழ்வாதார உதவி வழங்கி வைப்புமுன்னாள் போராளிக்கு வாழ்வாதார உதவி வழங்கி வைப்புமுன்னாள் போராளிக்கு வாழ்வாதார உதவி வழங்கி வைப்புமுன்னாள் போராளிக்கு வாழ்வாதார உதவி வழங்கி வைப்புமுன்னாள் போராளிக்கு வாழ்வாதார உதவி வழங்கி வைப்புமுன்னாள் போராளிக்கு வாழ்வாதார உதவி வழங்கி வைப்புமுன்னாள் போராளிக்கு வாழ்வாதார உதவி வழங்கி வைப்புமுன்னாள் போராளிக்கு வாழ்வாதார உதவி வழங்கி வைப்புமுன்னாள் போராளிக்கு வாழ்வாதார உதவி வழங்கி வைப்புமுன்னாள் போராளிக்கு வாழ்வாதார உதவி வழங்கி வைப்புமுன்னாள் போராளிக்கு வாழ்வாதார உதவி வழங்கி வைப்புமுன்னாள் போராளிக்கு வாழ்வாதார உதவி வழங்கி வைப்புமுன்னாள் போராளிக்கு வாழ்வாதார உதவி வழங்கி வைப்புமுன்னாள் போராளிக்கு வாழ்வாதார உதவி வழங்கி வைப்புமுன்னாள் போராளிக்கு வாழ்வாதார உதவி வழங்கி வைப்புமுன்னாள் போராளிக்கு வாழ்வாதார உதவி வழங்கி வைப்புமுன்னாள் போராளிக்கு வாழ்வாதார உதவி வழங்கி வைப்புமுன்னாள் போராளிக்கு வாழ்வாதார உதவி வழங்கி வைப்புமுன்னாள் போராளிக்கு வாழ்வாதார உதவி வழங்கி வைப்புமுன்னாள் போராளிக்கு வாழ்வாதார உதவி வழங்கி வைப்புமுன்னாள் போராளிக்கு வாழ்வாதார உதவி வழங்கி வைப்புமுன்னாள் போராளிக்கு வாழ்வாதார உதவி வழங்கி வைப்புமுன்னாள் போராளிக்கு வாழ்வாதார உதவி வழங்கி வைப்புமுன்னாள் போராளிக்கு வாழ்வாதார உதவி வழங்கி வைப்புமுன்னாள் போராளிக்கு வாழ்வாதார உதவி வழங்கி வைப்புமுன்னாள் போராளிக்கு வாழ்வாதார உதவி வழங்கி வைப்புமுன்னாள் போராளிக்கு வாழ்வாதார உதவி வழங்கி வைப்புமுன்னாள் போராளிக்கு வாழ்வாதார உதவி வழங்கி வைப்புமுன்னாள் போராளிக்கு வாழ்வாதார உதவி வழங்கி வைப்புமுன்னாள் போராளிக்கு வாழ்வாதார உதவி வழங்கி வைப்புமுன்னாள் போராளிக்கு வாழ்வாதார உதவி வழங்கி வைப்புமுன்னாள் போராளிக்கு வாழ்வாதார உதவி வழங்கி வைப்பு<br></p>', 'Curabitur accumsan purus in nisl semper lobortis.', 'முன்னாள் போராளிக்கு வாழ்வாதார உதவி வழங்கி வைப்பு', NULL, NULL, NULL, NULL, '14-02-21', 'February', '2021-02-14 14:38:13', NULL);
INSERT INTO `posts` (`id`, `category_id`, `subcategory_id`, `district_id`, `subdistrict_id`, `user_id`, `title_en`, `title_ta`, `image`, `details_en`, `details_ta`, `tags_en`, `tags_ta`, `headline`, `first_section`, `first_thumnail`, `bigthumnail`, `post_date`, `post_month`, `created_at`, `updated_at`) VALUES
(27, 10, 17, 5, 5, 1, 'Nam non arcu sed eros scelerisque congue.', 'கோடிகளுக்கு அதிபதியான லுலு எனும் எட்டு வயது நாய் !', 'image/postimage/6029837a10471.jpg', '<p>Nam non arcu sed eros scelerisque congue.Nam non arcu sed eros scelerisque congue.Nam non arcu sed eros scelerisque congue.Nam non arcu sed eros scelerisque congue.Nam non arcu sed eros scelerisque congue.Nam non arcu sed eros scelerisque congue.Nam non arcu sed eros scelerisque congue.Nam non arcu sed eros scelerisque congue.Nam non arcu sed eros scelerisque congue.Nam non arcu sed eros scelerisque congue.Nam non arcu sed eros scelerisque congue.Nam non arcu sed eros scelerisque congue.Nam non arcu sed eros scelerisque congue.Nam non arcu sed eros scelerisque congue.Nam non arcu sed eros scelerisque congue.Nam non arcu sed eros scelerisque congue.Nam non arcu sed eros scelerisque congue.Nam non arcu sed eros scelerisque congue.Nam non arcu sed eros scelerisque congue.Nam non arcu sed eros scelerisque congue.Nam non arcu sed eros scelerisque congue.Nam non arcu sed eros scelerisque congue.Nam non arcu sed eros scelerisque congue.Nam non arcu sed eros scelerisque congue.Nam non arcu sed eros scelerisque congue.Nam non arcu sed eros scelerisque congue.Nam non arcu sed eros scelerisque congue.Nam non arcu sed eros scelerisque congue.Nam non arcu sed eros scelerisque congue.Nam non arcu sed eros scelerisque congue.Nam non arcu sed eros scelerisque congue.Nam non arcu sed eros scelerisque congue.Nam non arcu sed eros scelerisque congue.Nam non arcu sed eros scelerisque congue.Nam non arcu sed eros scelerisque congue.Nam non arcu sed eros scelerisque congue.Nam non arcu sed eros scelerisque congue.Nam non arcu sed eros scelerisque congue.Nam non arcu sed eros scelerisque congue.Nam non arcu sed eros scelerisque congue.Nam non arcu sed eros scelerisque congue.Nam non arcu sed eros scelerisque congue.Nam non arcu sed eros scelerisque congue.Nam non arcu sed eros scelerisque congue.Nam non arcu sed eros scelerisque congue.Nam non arcu sed eros scelerisque congue.Nam non arcu sed eros scelerisque congue.Nam non arcu sed eros scelerisque congue.Nam non arcu sed eros scelerisque congue.Nam non arcu sed eros scelerisque congue.Nam non arcu sed eros scelerisque congue.Nam non arcu sed eros scelerisque congue.Nam non arcu sed eros scelerisque congue.Nam non arcu sed eros scelerisque congue.Nam non arcu sed eros scelerisque congue.Nam non arcu sed eros scelerisque congue.v<br></p>', '<p>கோடிகளுக்கு அதிபதியான லுலு எனும் எட்டு வயது நாய் !கோடிகளுக்கு அதிபதியான லுலு எனும் எட்டு வயது நாய் !கோடிகளுக்கு அதிபதியான லுலு எனும் எட்டு வயது நாய் !கோடிகளுக்கு அதிபதியான லுலு எனும் எட்டு வயது நாய் !கோடிகளுக்கு அதிபதியான லுலு எனும் எட்டு வயது நாய் !கோடிகளுக்கு அதிபதியான லுலு எனும் எட்டு வயது நாய் !கோடிகளுக்கு அதிபதியான லுலு எனும் எட்டு வயது நாய் !கோடிகளுக்கு அதிபதியான லுலு எனும் எட்டு வயது நாய் !கோடிகளுக்கு அதிபதியான லுலு எனும் எட்டு வயது நாய் !கோடிகளுக்கு அதிபதியான லுலு எனும் எட்டு வயது நாய் !கோடிகளுக்கு அதிபதியான லுலு எனும் எட்டு வயது நாய் !கோடிகளுக்கு அதிபதியான லுலு எனும் எட்டு வயது நாய் !கோடிகளுக்கு அதிபதியான லுலு எனும் எட்டு வயது நாய் !கோடிகளுக்கு அதிபதியான லுலு எனும் எட்டு வயது நாய் !கோடிகளுக்கு அதிபதியான லுலு எனும் எட்டு வயது நாய் !கோடிகளுக்கு அதிபதியான லுலு எனும் எட்டு வயது நாய் !கோடிகளுக்கு அதிபதியான லுலு எனும் எட்டு வயது நாய் !கோடிகளுக்கு அதிபதியான லுலு எனும் எட்டு வயது நாய் !கோடிகளுக்கு அதிபதியான லுலு எனும் எட்டு வயது நாய் !கோடிகளுக்கு அதிபதியான லுலு எனும் எட்டு வயது நாய் !கோடிகளுக்கு அதிபதியான லுலு எனும் எட்டு வயது நாய் !கோடிகளுக்கு அதிபதியான லுலு எனும் எட்டு வயது நாய் !கோடிகளுக்கு அதிபதியான லுலு எனும் எட்டு வயது நாய் !கோடிகளுக்கு அதிபதியான லுலு எனும் எட்டு வயது நாய் !கோடிகளுக்கு அதிபதியான லுலு எனும் எட்டு வயது நாய் !கோடிகளுக்கு அதிபதியான லுலு எனும் எட்டு வயது நாய் !கோடிகளுக்கு அதிபதியான லுலு எனும் எட்டு வயது நாய் !கோடிகளுக்கு அதிபதியான லுலு எனும் எட்டு வயது நாய் !கோடிகளுக்கு அதிபதியான லுலு எனும் எட்டு வயது நாய் !கோடிகளுக்கு அதிபதியான லுலு எனும் எட்டு வயது நாய் !கோடிகளுக்கு அதிபதியான லுலு எனும் எட்டு வயது நாய் !கோடிகளுக்கு அதிபதியான லுலு எனும் எட்டு வயது நாய் !கோடிகளுக்கு அதிபதியான லுலு எனும் எட்டு வயது நாய் !கோடிகளுக்கு அதிபதியான லுலு எனும் எட்டு வயது நாய் !கோடிகளுக்கு அதிபதியான லுலு எனும் எட்டு வயது நாய் !கோடிகளுக்கு அதிபதியான லுலு எனும் எட்டு வயது நாய் !கோடிகளுக்கு அதிபதியான லுலு எனும் எட்டு வயது நாய் !கோடிகளுக்கு அதிபதியான லுலு எனும் எட்டு வயது நாய் !கோடிகளுக்கு அதிபதியான லுலு எனும் எட்டு வயது நாய் !கோடிகளுக்கு அதிபதியான லுலு எனும் எட்டு வயது நாய் !கோடிகளுக்கு அதிபதியான லுலு எனும் எட்டு வயது நாய் !கோடிகளுக்கு அதிபதியான லுலு எனும் எட்டு வயது நாய் !கோடிகளுக்கு அதிபதியான லுலு எனும் எட்டு வயது நாய் !கோடிகளுக்கு அதிபதியான லுலு எனும் எட்டு வயது நாய் !கோடிகளுக்கு அதிபதியான லுலு எனும் எட்டு வயது நாய் !கோடிகளுக்கு அதிபதியான லுலு எனும் எட்டு வயது நாய் !கோடிகளுக்கு அதிபதியான லுலு எனும் எட்டு வயது நாய் !<br></p>', 'Nam non arcu sed eros scelerisque congue.', 'கோடிகளுக்கு அதிபதியான லுலு எனும் எட்டு வயது நாய் !', NULL, NULL, NULL, NULL, '14-02-21', 'February', '2021-02-14 14:39:30', NULL),
(28, 9, 14, 5, 5, 1, 'What is Lorem Ipsum?', 'What is Lorem Ipsum?', 'image/postimage/603015efcb0ae.jpg', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><hr><p><br></p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<br></p>', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><hr><p><span style=\"font-size: 0.875rem; font-weight: initial;\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span><br></p>', 'What is Lorem Ipsum?', 'What is Lorem Ipsum?', NULL, NULL, NULL, NULL, '19-02-21', 'February', '2021-02-19 14:17:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `prayers`
--

CREATE TABLE `prayers` (
  `id` bigint UNSIGNED NOT NULL,
  `item1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'item1',
  `item2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'item2',
  `item3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'item3',
  `item4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'item4',
  `item5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'item5',
  `item6` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'item6',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `prayers`
--

INSERT INTO `prayers` (`id`, `item1`, `item2`, `item3`, `item4`, `item5`, `item6`, `created_at`, `updated_at`) VALUES
(1, 'item1updated', 'item2updated', 'item3', 'item4updated', 'item5', 'item6updated', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `seos`
--

CREATE TABLE `seos` (
  `id` bigint UNSIGNED NOT NULL,
  `meta_auther` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keyword` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `google_analytics` text COLLATE utf8mb4_unicode_ci,
  `google_verification` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alexa_analytics` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seos`
--

INSERT INTO `seos` (`id`, `meta_auther`, `meta_title`, `meta_keyword`, `meta_description`, `google_analytics`, `google_verification`, `alexa_analytics`, `created_at`, `updated_at`) VALUES
(1, 'tamnil world news', 'tamnil world news', 'tamnil world news. bestnews. livetv, news live', 'tamnil world newstamnil world newstamnil world newstamnil world news', 'tamnil world newstamnil world newstamnil world newstamnil world news', 'tamnil world newstamnil world newstamnil world news', 'tamnil world newstamnil world newstamnil world newstamnil world news', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('5reTxxk0d9yfKFpjnrZIkgLZP69OYGaJpzwihQnY', 3, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36', 'YTo3OntzOjM6InVybCI7YTowOnt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NjoiX3Rva2VuIjtzOjQwOiJWYVdFYUpaS1phNEpCcDdseGExRUh3U05YaWlnZ2JxNnJIYlNlSThtIjtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEwJEtVblF3eGVOZEFPOWFObVgyLkV6N2Vrbm4vazc1R3ZYNUx2M0dVYzZoNURlVzdzRmVqR0x1IjtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMCRLVW5Rd3hlTmRBTzlhTm1YMi5Fejdla25uL2s3NUd2WDVMdjNHVWM2aDVEZVc3c0ZlakdMdSI7czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6Mzt9', 1614274519),
('BlFEwg4PHxqM3s5GfbhEhGctv2xox9aqSu3dksyy', NULL, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ3ZpYlFQSHF2dnp5Zkp4Z1FFZGxISGhDQUVadVZ6Tlo2VWRoZzJYZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC93ZWIvc2V0dGluZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1614193642),
('jvRndnq32rHPswCdV28MKk6xUR5z7TOJIdUHUDII', 1, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiSHhIUjBjenZpMUJ6OGE1T3NUREhpVmUweG1Ud3RUUGJYN2lBVVl2NiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC93ZWIvc2V0dGluZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMCRLVW5Rd3hlTmRBTzlhTm1YMi5Fejdla25uL2s3NUd2WDVMdjNHVWM2aDVEZVc3c0ZlakdMdSI7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTAkS1VuUXd4ZU5kQU85YU5tWDIuRXo3ZWtubi9rNzVHdlg1THYzR1VjNmg1RGVXN3NGZWpHTHUiO30=', 1614196232),
('OYDqeofMbvallI3KTNlDucRsdjRzJSMQJMlmfqKW', 1, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36', 'YTo3OntzOjM6InVybCI7YTowOnt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zdWJkaXN0cmljdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NjoiX3Rva2VuIjtzOjQwOiJVM2M1bEpyZlRBdGxxOFpqR200MmFUcXZmQm4wUDJKQUExYmxNRGpvIjtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEwJEtVblF3eGVOZEFPOWFObVgyLkV6N2Vrbm4vazc1R3ZYNUx2M0dVYzZoNURlVzdzRmVqR0x1IjtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMCRLVW5Rd3hlTmRBTzlhTm1YMi5Fejdla25uL2s3NUd2WDVMdjNHVWM2aDVEZVc3c0ZlakdMdSI7czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTt9', 1614281618),
('vAS3ymtqmRPIWNQg6sR1vAxv7DgxdJRgW4Ye0Z4k', 1, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiOXhaZk5VODExNUdXczU2ZThtdHVqMnNyMzdkd3FQUVFIMFNVdEdIMiI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjMzOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvd2ViL3NldHRpbmciO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkS1VuUXd4ZU5kQU85YU5tWDIuRXo3ZWtubi9rNzVHdlg1THYzR1VjNmg1RGVXN3NGZWpHTHUiO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJEtVblF3eGVOZEFPOWFObVgyLkV6N2Vrbm4vazc1R3ZYNUx2M0dVYzZoNURlVzdzRmVqR0x1Ijt9', 1614179974);

-- --------------------------------------------------------

--
-- Table structure for table `socials`
--

CREATE TABLE `socials` (
  `id` bigint UNSIGNED NOT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `socials`
--

INSERT INTO `socials` (`id`, `facebook`, `twitter`, `youtube`, `linkedin`, `instagram`, `created_at`, `updated_at`) VALUES
(1, 'https://www.facebook.com/', 'https://www.Twitter.com/', 'https://www.youtube.com/', 'https://www.linkedin.com/', 'https://www.instagram.com/', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subdistricts`
--

CREATE TABLE `subdistricts` (
  `id` bigint UNSIGNED NOT NULL,
  `district_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subdistrict_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subdistrict_ta` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subdistricts`
--

INSERT INTO `subdistricts` (`id`, `district_id`, `subdistrict_en`, `subdistrict_ta`, `created_at`, `updated_at`) VALUES
(1, '1', 'sub1ineng', 'sub1intam', NULL, NULL),
(2, '1', 'sub2engedited', 'sub2tamedited', NULL, NULL),
(4, '5', 'jaffna', 'யாழ்ப்பாணம் யாழ்ப்பாணம் Jaffna யாழ்ப்பாண Jaffna', NULL, NULL),
(5, '5', 'Vavuniya', 'வவுனியா', NULL, NULL),
(6, '6', 'galle', 'காலி', NULL, NULL),
(7, '6', 'matara', 'மாதாரா', NULL, NULL),
(8, '7', 'trincomalee', 'திருகோணமலை', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `category_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subcategory_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subcategory_ta` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `category_id`, `subcategory_en`, `subcategory_ta`, `created_at`, `updated_at`) VALUES
(7, '7', 'Asia', 'ஆசியா', NULL, NULL),
(8, '7', 'Europe', 'ஐரோப்பா', NULL, NULL),
(9, '7', 'America', 'அமெரிக்கா', NULL, NULL),
(10, '7', 'India', 'இந்தியா', NULL, NULL),
(11, '7', 'China', 'சீனா', NULL, NULL),
(12, '8', 'Cricket', 'மட்டைப்பந்து', NULL, NULL),
(13, '8', 'Football', 'கால்பந்து', NULL, NULL),
(14, '9', 'Local', 'உள்ளூர்', NULL, NULL),
(15, '9', 'Global', 'குளோபல்', NULL, NULL),
(16, '10', 'Bollywood', 'பாலிவுட்', NULL, NULL),
(17, '10', 'Hollywood', 'ஹாலிவுட்', NULL, NULL),
(18, '11', 'Fashion', 'ஃபேஷன்', NULL, NULL),
(19, '11', 'Health', 'ஆரோக்கியம்', NULL, NULL),
(20, '11', 'Travel', 'பயணம்', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` int DEFAULT NULL,
  `category` int DEFAULT NULL,
  `district` int DEFAULT NULL,
  `post` int DEFAULT NULL,
  `settings` int DEFAULT NULL,
  `websites` int DEFAULT NULL,
  `gallery` int DEFAULT NULL,
  `ads` int DEFAULT NULL,
  `role` int DEFAULT NULL,
  `current_team_id` bigint UNSIGNED DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `mobile`, `address`, `image`, `gender`, `position`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `type`, `category`, `district`, `post`, `settings`, `websites`, `gallery`, `ads`, `role`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@mail.com', NULL, '$2y$10$KUnQwxeNdAO9aNmX2.Ez7eknn/k75GvX5Lv3GUc6h5DeW7sFejGLu', '0771844319', '2271  Sundown Lane', '202102251551s1.png', 'male', 'super admineddd', NULL, NULL, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL, NULL, '2021-01-14 07:50:25', '2021-02-25 10:23:44'),
(2, 'test1', 'test1@mail.com', NULL, '$2y$10$RspKVL1lIBPJTGHjO3GyyekwB7g5iM0J9LeA.TNDeYaAaq9dcQImO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-19 14:38:39', '2021-01-19 14:38:39'),
(3, 'test2', 'test2@mail.com', NULL, '$2y$10$etojUm/ortEq9bgYFWV4Uu1WFBeZMmDbPOKdndcrtvkVjW6zvaH6.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2021-02-25 12:08:49'),
(4, 'test3', 'test3@mail.com', NULL, '$2y$10$f0OsK/yS5j7Q2GmTnh82.Ow9iovd7Z0119lTGqnpY5xV5sLcN2t7O', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, NULL, NULL),
(5, 'test4@mail.com', 'test4@mail.com', NULL, '$2y$10$v/Bhg7LP4cPUPBJuXEaiB..zoSYDCQernjRAmyGd0g3lQg8mV2DMS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-02-23 15:00:12', '2021-02-23 15:00:12');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` bigint UNSIGNED NOT NULL,
  `embed_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `embed_code`, `title`, `type`, `created_at`, `updated_at`) VALUES
(1, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/IQwf6m11-qU\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe> style=', 'new youtube edited', '0', NULL, NULL),
(2, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/KeYtcafGf30\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe> style=', 'mariogame edited', '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `websites`
--

CREATE TABLE `websites` (
  `id` bigint UNSIGNED NOT NULL,
  `website_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `websites`
--

INSERT INTO `websites` (`id`, `website_name`, `website_link`, `created_at`, `updated_at`) VALUES
(1, 'mine', 'https://www.webmatrix.online/', NULL, NULL),
(2, 'youtube', 'https://www.youtube.com/', NULL, NULL),
(3, 'locall', 'http://127.0.0.1:8000/', NULL, NULL),
(5, 'lol', 'http://127.0.0.1:8000/website/add', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `website_settings`
--

CREATE TABLE `website_settings` (
  `id` bigint UNSIGNED NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `website_settings`
--

INSERT INTO `website_settings` (`id`, `logo`, `address`, `phone`, `email`, `created_at`, `updated_at`) VALUES
(1, 'image/logo/6036a98602c3c.png', '<p>line1</p><p>line2&nbsp;</p><p>country/state</p>', '771234567890', 'RANGER-Manual-Direct-GCL-SUB1-Ineligible@mail.com', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `livetcs`
--
ALTER TABLE `livetcs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notices`
--
ALTER TABLE `notices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prayers`
--
ALTER TABLE `prayers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seos`
--
ALTER TABLE `seos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `socials`
--
ALTER TABLE `socials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subdistricts`
--
ALTER TABLE `subdistricts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `websites`
--
ALTER TABLE `websites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `website_settings`
--
ALTER TABLE `website_settings`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ads`
--
ALTER TABLE `ads`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `livetcs`
--
ALTER TABLE `livetcs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `notices`
--
ALTER TABLE `notices`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `prayers`
--
ALTER TABLE `prayers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `seos`
--
ALTER TABLE `seos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `socials`
--
ALTER TABLE `socials`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `subdistricts`
--
ALTER TABLE `subdistricts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `websites`
--
ALTER TABLE `websites`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `website_settings`
--
ALTER TABLE `website_settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
