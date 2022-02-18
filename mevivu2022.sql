-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th2 18, 2022 lúc 11:44 AM
-- Phiên bản máy phục vụ: 10.4.14-MariaDB
-- Phiên bản PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `mevivu2022`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('e4c4b2e0-68fa-4d24-b6fd-4d53c0c4618f', 'App\\Notifications\\NotifyAdmin', 'App\\Models\\User', 1, '{\"notify\":{\"title\":\"C\\u00f3 m\\u1ed9t y\\u00eau c\\u1ea7u m\\u1edbi t\\u1eeb kh\\u00e1ch h\\u00e0ng\",\"link\":\"\\/requirements\\/68\",\"content\":{\"title\":\"s\\u1eeda website\",\"detail\":\"<p>dsadasda<\\/p>\",\"id_ofcustomer\":62,\"order_id\":\"1512\",\"updated_at\":\"2021-07-21T03:55:33.000000Z\",\"created_at\":\"2021-07-21T03:55:33.000000Z\",\"id\":68}},\"user\":{\"id\":1,\"fullname\":\"B\\u00f9i Th\\u1ebf V\\u0169\",\"phone\":\"0335828494\",\"level\":1,\"email\":\"btvu282@gmail.com\",\"api_id\":null,\"created_date\":\"2020-09-11 00:00:00\",\"status\":0,\"addedby\":null,\"created_at\":null,\"updated_at\":null}}', '2021-07-21 06:09:45', '2021-07-20 20:55:33', '2021-07-20 21:50:10'),
('8fcbe99d-46f0-43e1-86ea-fd216fa2fa95', 'App\\Notifications\\NotifyAdmin', 'App\\Models\\User', 1, '{\"notify\":{\"title\":\"C\\u00f3 m\\u1ed9t y\\u00eau c\\u1ea7u m\\u1edbi t\\u1eeb kh\\u00e1ch h\\u00e0ng\",\"link\":\"\\/requirements\\/69\",\"content\":{\"title\":\"fsdfsdfds\",\"detail\":\"<p>fdsfds<\\/p>\",\"id_ofcustomer\":62,\"order_id\":\"1512\",\"updated_at\":\"2021-07-21T05:47:25.000000Z\",\"created_at\":\"2021-07-21T05:47:25.000000Z\",\"id\":69}},\"user\":{\"id\":1,\"fullname\":\"B\\u00f9i Th\\u1ebf V\\u0169\",\"phone\":\"0335828494\",\"level\":1,\"email\":\"btvu282@gmail.com\",\"api_id\":null,\"created_date\":\"2020-09-11 00:00:00\",\"status\":0,\"addedby\":null,\"created_at\":null,\"updated_at\":null}}', '2021-07-21 06:09:45', '2021-07-20 22:47:25', '2021-07-20 22:47:25'),
('64278eb3-bdbe-4508-ae7d-bacec3433f58', 'App\\Notifications\\NotifySupporter', 'App\\Models\\User', 19, '{\"notify\":{\"title\":\"C\\u00f3 m\\u1ed9t y\\u00eau c\\u1ea7u m\\u1edbi t\\u1eeb kh\\u00e1ch h\\u00e0ng\",\"link\":\"\\/requirements-supporter\\/69\",\"content\":{\"id\":69,\"order_id\":1512,\"title\":\"fsdfsdfds\",\"detail\":\"<p>fdsfds<\\/p>\",\"status\":0,\"createdate\":\"2021-07-21 12:47:25\",\"file\":null,\"id_ofcustomer\":62,\"assign\":1,\"created_at\":\"2021-07-21T05:47:25.000000Z\",\"updated_at\":\"2021-07-21T06:10:56.000000Z\"}},\"user\":{\"id\":19,\"fullname\":\"Tr\\u1ea7n V\\u0103n Tr\\u01b0\\u1eddng\",\"phone\":\"0342909557\",\"level\":2,\"email\":\"ittranvantruong@gmail.com\",\"api_id\":null,\"created_date\":\"2020-10-06 16:30:29\",\"status\":0,\"addedby\":null,\"created_at\":null,\"updated_at\":\"2021-07-19T07:14:29.000000Z\"}}', '2021-07-21 06:20:55', '2021-07-20 23:10:59', '2021-07-20 23:10:59'),
('96206eea-387d-457d-90c4-df4edde10ee0', 'App\\Notifications\\NotifySupporter', 'App\\Models\\User', 19, '{\"notify\":{\"title\":\"C\\u00f3 m\\u1ed9t y\\u00eau c\\u1ea7u m\\u1edbi t\\u1eeb kh\\u00e1ch h\\u00e0ng\",\"link\":\"\\/requirements-supporter\\/68\",\"content\":{\"id\":68,\"order_id\":1512,\"title\":\"s\\u1eeda website\",\"detail\":\"<p>dsadasda<\\/p>\",\"status\":0,\"createdate\":\"2021-07-21 10:55:33\",\"file\":null,\"id_ofcustomer\":62,\"assign\":1,\"created_at\":\"2021-07-21T03:55:33.000000Z\",\"updated_at\":\"2021-07-21T06:44:37.000000Z\"}},\"user\":{\"id\":19,\"fullname\":\"Tr\\u1ea7n V\\u0103n Tr\\u01b0\\u1eddng\",\"phone\":\"0342909557\",\"level\":2,\"email\":\"ittranvantruong@gmail.com\",\"api_id\":null,\"created_date\":\"2020-10-06 16:30:29\",\"status\":0,\"addedby\":null,\"created_at\":null,\"updated_at\":\"2021-07-19T07:14:29.000000Z\"}}', '2021-07-21 06:45:34', '2021-07-20 23:44:41', '2021-07-20 23:44:41'),
('3fd5e5fb-6414-4dac-bccb-2f4a5d1d968a', 'App\\Notifications\\NotifySupporter', 'App\\Models\\User', 19, '{\"notify\":{\"title\":\"C\\u00f3 m\\u1ed9t y\\u00eau c\\u1ea7u m\\u1edbi t\\u1eeb kh\\u00e1ch h\\u00e0ng\",\"link\":\"\\/requirements-supporter\\/66\",\"content\":{\"id\":66,\"order_id\":1471,\"title\":\"fsdf\",\"detail\":\"<p>fdf<\\/p>\",\"status\":0,\"createdate\":\"2021-07-20 17:29:50\",\"file\":null,\"id_ofcustomer\":64,\"assign\":1,\"created_at\":\"2021-07-20T10:29:50.000000Z\",\"updated_at\":\"2021-07-21T06:46:08.000000Z\"}},\"user\":{\"id\":19,\"fullname\":\"Tr\\u1ea7n V\\u0103n Tr\\u01b0\\u1eddng\",\"phone\":\"0342909557\",\"level\":2,\"email\":\"ittranvantruong@gmail.com\",\"api_id\":null,\"created_date\":\"2020-10-06 16:30:29\",\"status\":0,\"addedby\":null,\"created_at\":null,\"updated_at\":\"2021-07-19T07:14:29.000000Z\"}}', '2021-07-21 06:46:26', '2021-07-20 23:46:11', '2021-07-20 23:46:11'),
('6adba39b-0ca6-4303-b01e-3ee8e7d878fb', 'App\\Notifications\\NotifyAdmin', 'App\\Models\\User', 1, '{\"notify\":{\"title\":\"C\\u00f3 m\\u1ed9t y\\u00eau c\\u1ea7u m\\u1edbi t\\u1eeb kh\\u00e1ch h\\u00e0ng\",\"link\":\"\\/requirements\\/70\",\"content\":{\"title\":\"Gi\\u00fap em s\\u1eeda website b\\u1ecb l\\u1ed7i\",\"detail\":\"<p>-kh&ocirc;ng hi\\u1ec3n th\\u1ecb header<\\/p>\",\"id_ofcustomer\":62,\"order_id\":\"1512\",\"updated_at\":\"2021-07-21T07:09:29.000000Z\",\"created_at\":\"2021-07-21T07:09:29.000000Z\",\"id\":70}},\"user\":{\"id\":1,\"fullname\":\"B\\u00f9i Th\\u1ebf V\\u0169\",\"phone\":\"0335828494\",\"level\":1,\"email\":\"btvu282@gmail.com\",\"api_id\":null,\"created_date\":\"2020-09-11 00:00:00\",\"status\":0,\"addedby\":null,\"created_at\":null,\"updated_at\":null}}', '2021-07-21 07:09:39', '2021-07-21 00:09:29', '2021-07-21 00:09:29'),
('b83a34a7-4358-4ade-9648-f97eb399ae71', 'App\\Notifications\\NotifySupporter', 'App\\Models\\User', 19, '{\"notify\":{\"title\":\"C\\u00f3 1 y\\u00eau c\\u1ea7u m\\u1edbi t\\u1eeb qu\\u1ea3n tr\\u1ecb vi\\u00ean\",\"link\":\"\\/requirements-supporter\\/70\",\"content\":{\"id\":70,\"order_id\":1512,\"title\":\"Gi\\u00fap em s\\u1eeda website b\\u1ecb l\\u1ed7i\",\"detail\":\"<p>-kh&ocirc;ng hi\\u1ec3n th\\u1ecb header<\\/p>\",\"status\":0,\"createdate\":\"2021-07-21 14:09:29\",\"file\":null,\"id_ofcustomer\":62,\"assign\":1,\"created_at\":\"2021-07-21T07:09:29.000000Z\",\"updated_at\":\"2021-07-21T07:09:56.000000Z\"}},\"user\":{\"id\":19,\"fullname\":\"Tr\\u1ea7n V\\u0103n Tr\\u01b0\\u1eddng\",\"phone\":\"0342909557\",\"level\":2,\"email\":\"ittranvantruong@gmail.com\",\"api_id\":null,\"created_date\":\"2020-10-06 16:30:29\",\"status\":0,\"addedby\":null,\"created_at\":null,\"updated_at\":\"2021-07-19T07:14:29.000000Z\"}}', '2021-07-21 07:10:12', '2021-07-21 00:09:59', '2021-07-21 00:09:59'),
('945d9a93-2718-404a-82f2-3d9a53194c26', 'App\\Notifications\\NotifyCustomer', 'App\\Models\\User', 62, '{\"notify\":{\"title\":\"C\\u00f3 1 y\\u00eau c\\u1ea7u c\\u1ee7a b\\u1ea1n \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c ph\\u1ea3n h\\u1ed3i\",\"link\":\"\\/requirements-customer\\/70\",\"content\":{\"id\":70,\"order_id\":1512,\"title\":\"Gi\\u00fap em s\\u1eeda website b\\u1ecb l\\u1ed7i\",\"detail\":\"<p>-kh&ocirc;ng hi\\u1ec3n th\\u1ecb header<\\/p>\",\"status\":1,\"createdate\":\"2021-07-21 14:09:29\",\"file\":null,\"id_ofcustomer\":62,\"assign\":1,\"created_at\":\"2021-07-21T07:09:29.000000Z\",\"updated_at\":\"2021-07-21T07:10:23.000000Z\"}},\"user\":{\"id\":62,\"fullname\":\"Cao Th\\u1ecb Th\\u00f9y Chuy\\u00ean\",\"phone\":\"0977049068\",\"level\":3,\"email\":null,\"api_id\":6025,\"created_date\":\"2021-07-20 10:52:46\",\"status\":0,\"addedby\":null,\"created_at\":\"2021-07-20T03:52:46.000000Z\",\"updated_at\":\"2021-07-21T06:53:06.000000Z\"}}', '2021-07-21 07:19:49', '2021-07-21 00:10:23', '2021-07-21 00:10:23'),
('fb34de25-2f6d-4c7b-97d0-a2b2f48474ef', 'App\\Notifications\\NotifySupporter', 'App\\Models\\User', 19, '{\"notify\":{\"title\":\"C\\u00f3 1 ph\\u1ea3n h\\u1ed3i m\\u1edbi t\\u1eeb kh\\u00e1ch h\\u00e0ng\",\"link\":\"\\/requirements-supporter\\/70\",\"content\":{\"id\":70,\"order_id\":1512,\"title\":\"Gi\\u00fap em s\\u1eeda website b\\u1ecb l\\u1ed7i\",\"detail\":\"<p>-kh&ocirc;ng hi\\u1ec3n th\\u1ecb header<\\/p>\",\"status\":0,\"createdate\":\"2021-07-21 14:09:29\",\"file\":null,\"id_ofcustomer\":62,\"assign\":1,\"created_at\":\"2021-07-21T07:09:29.000000Z\",\"updated_at\":\"2021-07-21T07:17:19.000000Z\"}},\"user\":{\"id\":19,\"fullname\":\"Tr\\u1ea7n V\\u0103n Tr\\u01b0\\u1eddng\",\"phone\":\"0342909557\",\"level\":2,\"email\":\"ittranvantruong@gmail.com\",\"api_id\":null,\"created_date\":\"2020-10-06 16:30:29\",\"status\":0,\"addedby\":null,\"created_at\":null,\"updated_at\":\"2021-07-19T07:14:29.000000Z\"}}', '2021-07-21 07:17:54', '2021-07-21 00:17:45', '2021-07-21 00:17:45'),
('4d0cc8c0-a07e-4bc3-aa0f-24c59919cf82', 'App\\Notifications\\NotifyAdmin', 'App\\Models\\User', 1, '{\"notify\":{\"title\":\"C\\u00f3 m\\u1ed9t y\\u00eau c\\u1ea7u m\\u1edbi t\\u1eeb kh\\u00e1ch h\\u00e0ng\",\"link\":\"\\/requirements\\/73\",\"content\":{\"title\":\"S\\u1eeda\",\"detail\":\"<p>dsada<\\/p>\",\"id_ofcustomer\":62,\"order_id\":\"1512\",\"updated_at\":\"2021-07-21T08:21:51.000000Z\",\"created_at\":\"2021-07-21T08:21:51.000000Z\",\"id\":73}},\"user\":{\"id\":1,\"fullname\":\"B\\u00f9i Th\\u1ebf V\\u0169\",\"phone\":\"0335828494\",\"level\":1,\"email\":\"btvu282@gmail.com\",\"api_id\":null,\"created_date\":\"2020-09-11 00:00:00\",\"status\":0,\"addedby\":null,\"created_at\":null,\"updated_at\":null}}', NULL, '2021-07-21 01:21:51', '2021-07-21 01:21:51'),
('8d79404f-3fff-4e94-ab52-7cca234a2071', 'App\\Notifications\\NotifyAdmin', 'App\\Models\\User', 1, '{\"notify\":{\"title\":\"C\\u00f3 m\\u1ed9t y\\u00eau c\\u1ea7u m\\u1edbi t\\u1eeb kh\\u00e1ch h\\u00e0ng\",\"link\":\"\\/requirements\\/74\",\"content\":{\"title\":\"Home Page\",\"detail\":\"<p>fdsfdsf<\\/p>\",\"id_ofcustomer\":62,\"order_id\":\"1512\",\"updated_at\":\"2021-07-21T08:28:41.000000Z\",\"created_at\":\"2021-07-21T08:28:41.000000Z\",\"id\":74}},\"user\":{\"id\":1,\"fullname\":\"B\\u00f9i Th\\u1ebf V\\u0169\",\"phone\":\"0335828494\",\"level\":1,\"email\":\"btvu282@gmail.com\",\"api_id\":null,\"created_date\":\"2020-09-11 00:00:00\",\"status\":0,\"addedby\":null,\"created_at\":null,\"updated_at\":null}}', NULL, '2021-07-21 01:28:41', '2021-07-21 01:28:41'),
('5c325643-4394-42f9-b0c8-deb225754f91', 'App\\Notifications\\NotifyAdmin', 'App\\Models\\User', 1, '{\"notify\":{\"title\":\"C\\u00f3 m\\u1ed9t y\\u00eau c\\u1ea7u m\\u1edbi t\\u1eeb kh\\u00e1ch h\\u00e0ng\",\"link\":\"\\/requirements\\/75\",\"content\":{\"title\":\"H\\u00f4m nay tr\\u1eddi r\\u1ea5t \\u0111\\u1eb9p\",\"detail\":\"<p>fsdfsdfsd<\\/p>\",\"id_ofcustomer\":62,\"order_id\":\"1512\",\"updated_at\":\"2021-07-21T08:35:44.000000Z\",\"created_at\":\"2021-07-21T08:35:44.000000Z\",\"id\":75}},\"user\":{\"id\":1,\"fullname\":\"B\\u00f9i Th\\u1ebf V\\u0169\",\"phone\":\"0335828494\",\"level\":1,\"email\":\"btvu282@gmail.com\",\"api_id\":null,\"created_date\":\"2020-09-11 00:00:00\",\"status\":0,\"addedby\":null,\"created_at\":null,\"updated_at\":null}}', NULL, '2021-07-21 01:35:44', '2021-07-21 01:35:44'),
('df9c55e6-038b-49b1-abf3-02d306ba49ba', 'App\\Notifications\\NotifyAdmin', 'App\\Models\\User', 1, '{\"notify\":{\"title\":\"C\\u00f3 m\\u1ed9t y\\u00eau c\\u1ea7u m\\u1edbi t\\u1eeb kh\\u00e1ch h\\u00e0ng\",\"link\":\"\\/requirements\\/76\",\"content\":{\"title\":\"H\\u00f4m nay tr\\u1eddi r\\u1ea5t \\u0111\\u1eb9p\",\"detail\":\"<p>fdsfsdf<\\/p>\",\"id_ofcustomer\":62,\"order_id\":\"1512\",\"updated_at\":\"2021-07-21T08:40:47.000000Z\",\"created_at\":\"2021-07-21T08:40:47.000000Z\",\"id\":76}},\"user\":{\"id\":1,\"fullname\":\"B\\u00f9i Th\\u1ebf V\\u0169\",\"phone\":\"0335828494\",\"level\":1,\"email\":\"btvu282@gmail.com\",\"api_id\":null,\"created_date\":\"2020-09-11 00:00:00\",\"status\":0,\"addedby\":null,\"created_at\":null,\"updated_at\":null}}', NULL, '2021-07-21 01:40:47', '2021-07-21 01:40:47'),
('a6870284-b433-45d7-b55b-ebf561253c6a', 'App\\Notifications\\NotifyAdmin', 'App\\Models\\User', 1, '{\"notify\":{\"title\":\"C\\u00f3 m\\u1ed9t y\\u00eau c\\u1ea7u m\\u1edbi t\\u1eeb kh\\u00e1ch h\\u00e0ng\",\"link\":\"\\/requirements\\/77\",\"content\":{\"title\":\"H\\u00f4m nay tr\\u1eddi r\\u1ea5t \\u0111\\u1eb9p\",\"detail\":\"<p>fdsfdsf<\\/p>\",\"id_ofcustomer\":62,\"order_id\":\"1512\",\"updated_at\":\"2021-07-21T08:52:43.000000Z\",\"created_at\":\"2021-07-21T08:52:43.000000Z\",\"id\":77}},\"user\":{\"id\":1,\"fullname\":\"B\\u00f9i Th\\u1ebf V\\u0169\",\"phone\":\"0335828494\",\"level\":1,\"email\":\"btvu282@gmail.com\",\"api_id\":null,\"created_date\":\"2020-09-11 00:00:00\",\"status\":0,\"addedby\":null,\"created_at\":null,\"updated_at\":null}}', NULL, '2021-07-21 01:52:43', '2021-07-21 01:52:43'),
('b8bdf691-1d48-4a01-8896-49960d0e9a5c', 'App\\Notifications\\NotifyAdmin', 'App\\Models\\User', 1, '{\"notify\":{\"title\":\"C\\u00f3 m\\u1ed9t y\\u00eau c\\u1ea7u m\\u1edbi t\\u1eeb kh\\u00e1ch h\\u00e0ng\",\"link\":\"\\/requirements\\/78\",\"content\":{\"title\":\"Home Page\",\"detail\":\"<p>\\u0111asad<\\/p>\",\"id_ofcustomer\":62,\"order_id\":\"1512\",\"updated_at\":\"2021-07-21T08:55:04.000000Z\",\"created_at\":\"2021-07-21T08:55:04.000000Z\",\"id\":78}},\"user\":{\"id\":1,\"fullname\":\"B\\u00f9i Th\\u1ebf V\\u0169\",\"phone\":\"0335828494\",\"level\":1,\"email\":\"btvu282@gmail.com\",\"api_id\":null,\"created_date\":\"2020-09-11 00:00:00\",\"status\":0,\"addedby\":null,\"created_at\":null,\"updated_at\":null}}', NULL, '2021-07-21 01:55:04', '2021-07-21 01:55:04'),
('fd9d10f4-c0a1-461c-97d8-49e044d40328', 'App\\Notifications\\NotifyAdmin', 'App\\Models\\User', 1, '{\"notify\":{\"title\":\"C\\u00f3 m\\u1ed9t y\\u00eau c\\u1ea7u m\\u1edbi t\\u1eeb kh\\u00e1ch h\\u00e0ng\",\"link\":\"\\/requirements\\/79\",\"content\":{\"title\":\"Home Page\",\"detail\":\"<p>fdsfsdfsdf<\\/p>\",\"id_ofcustomer\":62,\"order_id\":\"1512\",\"updated_at\":\"2021-07-21T09:48:44.000000Z\",\"created_at\":\"2021-07-21T09:48:44.000000Z\",\"id\":79}},\"user\":{\"id\":1,\"fullname\":\"B\\u00f9i Th\\u1ebf V\\u0169\",\"phone\":\"0335828494\",\"level\":1,\"email\":\"btvu282@gmail.com\",\"api_id\":null,\"created_date\":\"2020-09-11 00:00:00\",\"status\":0,\"addedby\":null,\"created_at\":null,\"updated_at\":null}}', NULL, '2021-07-21 02:48:44', '2021-07-21 02:48:44'),
('c4e7faf5-41d2-40e9-ac36-0ea978f390ac', 'App\\Notifications\\NotifyAdmin', 'App\\Models\\User', 1, '{\"notify\":{\"title\":\"C\\u00f3 m\\u1ed9t y\\u00eau c\\u1ea7u m\\u1edbi t\\u1eeb kh\\u00e1ch h\\u00e0ng\",\"link\":\"\\/requirements\\/80\",\"content\":{\"title\":\"Home Page\",\"detail\":\"<p>fsdfsdf<\\/p>\",\"id_ofcustomer\":62,\"order_id\":\"1512\",\"updated_at\":\"2021-07-21T09:51:50.000000Z\",\"created_at\":\"2021-07-21T09:51:50.000000Z\",\"id\":80}},\"user\":{\"id\":1,\"fullname\":\"B\\u00f9i Th\\u1ebf V\\u0169\",\"phone\":\"0335828494\",\"level\":1,\"email\":\"btvu282@gmail.com\",\"api_id\":null,\"created_date\":\"2020-09-11 00:00:00\",\"status\":0,\"addedby\":null,\"created_at\":null,\"updated_at\":null}}', NULL, '2021-07-21 02:51:50', '2021-07-21 02:51:50'),
('e2b5643f-2393-4d5e-90fa-8917466e0ef0', 'App\\Notifications\\NotifyAdmin', 'App\\Models\\User', 1, '{\"notify\":{\"title\":\"C\\u00f3 m\\u1ed9t y\\u00eau c\\u1ea7u m\\u1edbi t\\u1eeb kh\\u00e1ch h\\u00e0ng\",\"link\":\"\\/requirements\\/81\",\"content\":{\"title\":\"3213\",\"detail\":\"<p>dsadasd<\\/p>\",\"id_ofcustomer\":62,\"order_id\":\"1512\",\"updated_at\":\"2021-07-21T10:05:28.000000Z\",\"created_at\":\"2021-07-21T10:05:28.000000Z\",\"id\":81}},\"user\":{\"id\":1,\"fullname\":\"B\\u00f9i Th\\u1ebf V\\u0169\",\"phone\":\"0335828494\",\"level\":1,\"email\":\"btvu282@gmail.com\",\"api_id\":null,\"created_date\":\"2020-09-11 00:00:00\",\"status\":0,\"addedby\":null,\"created_at\":null,\"updated_at\":null}}', NULL, '2021-07-21 03:05:29', '2021-07-21 03:05:29'),
('a2af938f-6af3-481f-b39a-dc4c370c0b84', 'App\\Notifications\\NotifyAdmin', 'App\\Models\\User', 1, '{\"notify\":{\"title\":\"C\\u00f3 m\\u1ed9t y\\u00eau c\\u1ea7u m\\u1edbi t\\u1eeb kh\\u00e1ch h\\u00e0ng\",\"link\":\"\\/requirements\\/82\",\"content\":{\"title\":\"3213\",\"detail\":\"<p>dsadasd<\\/p>\",\"id_ofcustomer\":62,\"order_id\":\"1512\",\"updated_at\":\"2021-07-21T10:06:05.000000Z\",\"created_at\":\"2021-07-21T10:06:05.000000Z\",\"id\":82}},\"user\":{\"id\":1,\"fullname\":\"B\\u00f9i Th\\u1ebf V\\u0169\",\"phone\":\"0335828494\",\"level\":1,\"email\":\"btvu282@gmail.com\",\"api_id\":null,\"created_date\":\"2020-09-11 00:00:00\",\"status\":0,\"addedby\":null,\"created_at\":null,\"updated_at\":null}}', NULL, '2021-07-21 03:06:05', '2021-07-21 03:06:05'),
('a8f1bf0f-edf9-461b-bfd4-d2ae1aab69a8', 'App\\Notifications\\NotifyAdmin', 'App\\Models\\User', 1, '{\"notify\":{\"title\":\"C\\u00f3 m\\u1ed9t y\\u00eau c\\u1ea7u m\\u1edbi t\\u1eeb kh\\u00e1ch h\\u00e0ng\",\"link\":\"\\/requirements\\/83\",\"content\":{\"title\":\"fsfsd\",\"detail\":\"<p>\\u0111&acirc;sd<\\/p>\",\"id_ofcustomer\":62,\"order_id\":\"1512\",\"updated_at\":\"2021-07-21T10:07:26.000000Z\",\"created_at\":\"2021-07-21T10:07:26.000000Z\",\"id\":83}},\"user\":{\"id\":1,\"fullname\":\"B\\u00f9i Th\\u1ebf V\\u0169\",\"phone\":\"0335828494\",\"level\":1,\"email\":\"btvu282@gmail.com\",\"api_id\":null,\"created_date\":\"2020-09-11 00:00:00\",\"status\":0,\"addedby\":null,\"created_at\":null,\"updated_at\":null}}', NULL, '2021-07-21 03:07:26', '2021-07-21 03:07:26'),
('6f49722d-5467-4d26-8ae4-f4cd9ab9245e', 'App\\Notifications\\NotifyAdmin', 'App\\Models\\User', 1, '{\"notify\":{\"title\":\"C\\u00f3 m\\u1ed9t y\\u00eau c\\u1ea7u m\\u1edbi t\\u1eeb kh\\u00e1ch h\\u00e0ng\",\"link\":\"\\/requirements\\/84\",\"content\":{\"title\":\"\\u0111asad\",\"detail\":\"<p>\\u0111&acirc;sd<\\/p>\",\"id_ofcustomer\":62,\"order_id\":\"1512\",\"updated_at\":\"2021-07-21T10:09:23.000000Z\",\"created_at\":\"2021-07-21T10:09:23.000000Z\",\"id\":84}},\"user\":{\"id\":1,\"fullname\":\"B\\u00f9i Th\\u1ebf V\\u0169\",\"phone\":\"0335828494\",\"level\":1,\"email\":\"btvu282@gmail.com\",\"api_id\":null,\"created_date\":\"2020-09-11 00:00:00\",\"status\":0,\"addedby\":null,\"created_at\":null,\"updated_at\":null}}', NULL, '2021-07-21 03:09:23', '2021-07-21 03:09:23'),
('60b13bd3-de6b-43d5-ad68-83bd2957bb3a', 'App\\Notifications\\NotifyAdmin', 'App\\Models\\User', 1, '{\"notify\":{\"title\":\"C\\u00f3 m\\u1ed9t y\\u00eau c\\u1ea7u m\\u1edbi t\\u1eeb kh\\u00e1ch h\\u00e0ng\",\"link\":\"\\/requirements\\/85\",\"content\":{\"title\":\"fsdfds\",\"detail\":\"<p>fdsfsdfsd<\\/p>\",\"id_ofcustomer\":62,\"order_id\":\"1512\",\"updated_at\":\"2021-07-21T10:10:55.000000Z\",\"created_at\":\"2021-07-21T10:10:55.000000Z\",\"id\":85}},\"user\":{\"id\":1,\"fullname\":\"B\\u00f9i Th\\u1ebf V\\u0169\",\"phone\":\"0335828494\",\"level\":1,\"email\":\"btvu282@gmail.com\",\"api_id\":null,\"created_date\":\"2020-09-11 00:00:00\",\"status\":0,\"addedby\":null,\"created_at\":null,\"updated_at\":null}}', '2021-08-25 07:38:17', '2021-07-21 03:10:55', '2021-07-21 03:10:55'),
('47c52a4e-adeb-45e0-995d-95e114592110', 'App\\Notifications\\NotifyAdmin', 'App\\Models\\User', 1, '{\"notify\":{\"title\":\"C\\u00f3 m\\u1ed9t y\\u00eau c\\u1ea7u m\\u1edbi t\\u1eeb kh\\u00e1ch h\\u00e0ng\",\"link\":\"\\/requirements\\/86\",\"content\":{\"title\":\"Home Page\",\"detail\":\"<p>\\u0111asadsa<\\/p>\",\"id_ofcustomer\":62,\"order_id\":\"1512\",\"updated_at\":\"2021-07-21T10:27:18.000000Z\",\"created_at\":\"2021-07-21T10:27:18.000000Z\",\"id\":86}},\"user\":{\"id\":1,\"fullname\":\"B\\u00f9i Th\\u1ebf V\\u0169\",\"phone\":\"0335828494\",\"level\":1,\"email\":\"btvu282@gmail.com\",\"api_id\":null,\"created_date\":\"2020-09-11 00:00:00\",\"status\":0,\"addedby\":null,\"created_at\":null,\"updated_at\":null}}', '2021-07-21 10:27:47', '2021-07-21 03:27:18', '2021-07-21 03:27:18'),
('1e696304-603f-4dba-ac09-f0a8c54108e4', 'App\\Notifications\\NotifySupporter', 'App\\Models\\User', 19, '{\"notify\":{\"title\":\"C\\u00f3 1 y\\u00eau c\\u1ea7u m\\u1edbi t\\u1eeb qu\\u1ea3n tr\\u1ecb vi\\u00ean\",\"link\":\"\\/requirements-supporter\\/86\",\"content\":{\"id\":86,\"order_id\":1512,\"title\":\"Home Page\",\"detail\":\"<p>\\u0111asadsa<\\/p>\",\"status\":0,\"createdate\":\"2021-07-21 17:27:18\",\"file\":null,\"id_ofcustomer\":62,\"assign\":1,\"created_at\":\"2021-07-21T10:27:18.000000Z\",\"updated_at\":\"2021-07-21T10:27:54.000000Z\"}},\"user\":{\"id\":19,\"fullname\":\"Tr\\u1ea7n V\\u0103n Tr\\u01b0\\u1eddng\",\"phone\":\"0342909557\",\"level\":2,\"email\":\"ittranvantruong@gmail.com\",\"api_id\":null,\"created_date\":\"2020-10-06 16:30:29\",\"status\":0,\"addedby\":null,\"created_at\":null,\"updated_at\":\"2021-07-19T07:14:29.000000Z\"}}', '2021-07-21 10:37:30', '2021-07-21 03:27:57', '2021-07-21 03:27:57'),
('8eddefd9-e61b-4370-9235-a8100180e49e', 'App\\Notifications\\NotifyAdmin', 'App\\Models\\User', 1, '{\"notify\":{\"title\":\"C\\u00f3 m\\u1ed9t y\\u00eau c\\u1ea7u m\\u1edbi t\\u1eeb kh\\u00e1ch h\\u00e0ng\",\"link\":\"\\/requirements\\/87\",\"content\":{\"title\":\"Home Page\",\"detail\":\"<p>\\u0111&acirc;sdas<\\/p>\",\"id_ofcustomer\":62,\"order_id\":\"1512\",\"updated_at\":\"2021-07-21T10:37:08.000000Z\",\"created_at\":\"2021-07-21T10:37:08.000000Z\",\"id\":87}},\"user\":{\"id\":1,\"fullname\":\"B\\u00f9i Th\\u1ebf V\\u0169\",\"phone\":\"0335828494\",\"level\":1,\"email\":\"btvu282@gmail.com\",\"api_id\":null,\"created_date\":\"2020-09-11 00:00:00\",\"status\":0,\"addedby\":null,\"created_at\":null,\"updated_at\":null}}', '2021-07-21 10:37:18', '2021-07-21 03:37:08', '2021-07-21 03:37:08'),
('784ba193-11fb-4f00-b6e0-6d9fe9de93e0', 'App\\Notifications\\NotifySupporter', 'App\\Models\\User', 19, '{\"notify\":{\"title\":\"C\\u00f3 1 y\\u00eau c\\u1ea7u m\\u1edbi t\\u1eeb qu\\u1ea3n tr\\u1ecb vi\\u00ean\",\"link\":\"\\/requirements-supporter\\/87\",\"content\":{\"id\":87,\"order_id\":1512,\"title\":\"Home Page\",\"detail\":\"<p>\\u0111&acirc;sdas<\\/p>\",\"status\":0,\"createdate\":\"2021-07-21 17:37:08\",\"file\":null,\"id_ofcustomer\":62,\"assign\":1,\"created_at\":\"2021-07-21T10:37:08.000000Z\",\"updated_at\":\"2021-07-21T10:37:48.000000Z\"}},\"user\":{\"id\":19,\"fullname\":\"Tr\\u1ea7n V\\u0103n Tr\\u01b0\\u1eddng\",\"phone\":\"0342909557\",\"level\":2,\"email\":\"ittranvantruong@gmail.com\",\"api_id\":null,\"created_date\":\"2020-10-06 16:30:29\",\"status\":0,\"addedby\":null,\"created_at\":null,\"updated_at\":\"2021-07-19T07:14:29.000000Z\"}}', '2021-07-21 10:38:12', '2021-07-21 03:37:51', '2021-07-21 03:37:51'),
('2fe4b663-2c0e-484c-abeb-d5cb98043340', 'App\\Notifications\\NotifyCustomer', 'App\\Models\\User', 62, '{\"notify\":{\"title\":\"C\\u00f3 1 y\\u00eau c\\u1ea7u c\\u1ee7a b\\u1ea1n \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c ph\\u1ea3n h\\u1ed3i\",\"link\":\"\\/requirements-customer\\/87\",\"content\":{\"id\":87,\"order_id\":1512,\"title\":\"Home Page\",\"detail\":\"<p>\\u0111&acirc;sdas<\\/p>\",\"status\":1,\"createdate\":\"2021-07-21 17:37:08\",\"file\":null,\"id_ofcustomer\":62,\"assign\":1,\"created_at\":\"2021-07-21T10:37:08.000000Z\",\"updated_at\":\"2021-07-21T10:38:25.000000Z\"}},\"user\":{\"id\":62,\"fullname\":\"Cao Th\\u1ecb Th\\u00f9y Chuy\\u00ean\",\"phone\":\"0977049068\",\"level\":3,\"email\":null,\"api_id\":6025,\"created_date\":\"2021-07-20 10:52:46\",\"status\":0,\"addedby\":null,\"created_at\":\"2021-07-20T03:52:46.000000Z\",\"updated_at\":\"2021-07-21T10:22:22.000000Z\"}}', '2021-07-21 10:38:32', '2021-07-21 03:38:25', '2021-07-21 03:38:25'),
('29c7789b-ab9e-459d-9e1f-d57f9e269372', 'App\\Notifications\\NotifySupporter', 'App\\Models\\User', 19, '{\"notify\":{\"title\":\"C\\u00f3 1 ph\\u1ea3n h\\u1ed3i m\\u1edbi t\\u1eeb kh\\u00e1ch h\\u00e0ng\",\"link\":\"\\/requirements-supporter\\/87\",\"content\":{\"id\":87,\"order_id\":1512,\"title\":\"Home Page\",\"detail\":\"<p>\\u0111&acirc;sdas<\\/p>\",\"status\":0,\"createdate\":\"2021-07-21 17:37:08\",\"file\":null,\"id_ofcustomer\":62,\"assign\":1,\"created_at\":\"2021-07-21T10:37:08.000000Z\",\"updated_at\":\"2021-07-21T10:38:45.000000Z\"}},\"user\":{\"id\":19,\"fullname\":\"Tr\\u1ea7n V\\u0103n Tr\\u01b0\\u1eddng\",\"phone\":\"0342909557\",\"level\":2,\"email\":\"ittranvantruong@gmail.com\",\"api_id\":null,\"created_date\":\"2020-10-06 16:30:29\",\"status\":0,\"addedby\":null,\"created_at\":null,\"updated_at\":\"2021-07-19T07:14:29.000000Z\"}}', '2021-07-21 10:39:35', '2021-07-21 03:38:45', '2021-07-21 03:38:45'),
('43c59100-058f-489d-b4ac-9c445d04f9f9', 'App\\Notifications\\NotifySupporter', 'App\\Models\\User', 19, '{\"notify\":{\"title\":\"C\\u00f3 1 ph\\u1ea3n h\\u1ed3i m\\u1edbi t\\u1eeb kh\\u00e1ch h\\u00e0ng\",\"link\":\"\\/requirements-supporter\\/87\",\"content\":{\"id\":87,\"order_id\":1512,\"title\":\"Home Page\",\"detail\":\"<p>\\u0111&acirc;sdas<\\/p>\",\"status\":0,\"createdate\":\"2021-07-21 17:37:08\",\"file\":null,\"id_ofcustomer\":62,\"assign\":1,\"created_at\":\"2021-07-21T10:37:08.000000Z\",\"updated_at\":\"2021-07-21T10:38:45.000000Z\"}},\"user\":{\"id\":19,\"fullname\":\"Tr\\u1ea7n V\\u0103n Tr\\u01b0\\u1eddng\",\"phone\":\"0342909557\",\"level\":2,\"email\":\"ittranvantruong@gmail.com\",\"api_id\":null,\"created_date\":\"2020-10-06 16:30:29\",\"status\":0,\"addedby\":null,\"created_at\":null,\"updated_at\":\"2021-07-19T07:14:29.000000Z\"}}', '2021-07-21 10:40:00', '2021-07-21 03:39:43', '2021-07-21 03:39:43'),
('224fa7e2-0a2a-4032-9cc3-73e0bc7242b3', 'App\\Notifications\\NotifyCustomer', 'App\\Models\\User', 62, '{\"notify\":{\"title\":\"C\\u00f3 1 y\\u00eau c\\u1ea7u c\\u1ee7a b\\u1ea1n \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c ph\\u1ea3n h\\u1ed3i\",\"link\":\"\\/requirements-customer\\/68\",\"content\":{\"id\":68,\"order_id\":1512,\"title\":\"s\\u1eeda website\",\"detail\":\"<p>dsadasda<\\/p>\",\"status\":1,\"createdate\":\"2021-07-21 10:55:33\",\"file\":null,\"id_ofcustomer\":62,\"assign\":1,\"created_at\":\"2021-07-21T03:55:33.000000Z\",\"updated_at\":\"2021-07-22T03:34:18.000000Z\"}},\"user\":{\"id\":62,\"fullname\":\"Cao Th\\u1ecb Th\\u00f9y Chuy\\u00ean\",\"phone\":\"0977049068\",\"level\":3,\"email\":null,\"api_id\":6025,\"created_date\":\"2021-07-20 10:52:46\",\"status\":0,\"addedby\":null,\"created_at\":\"2021-07-20T03:52:46.000000Z\",\"updated_at\":\"2021-07-22T03:32:12.000000Z\"}}', '2021-07-22 03:36:24', '2021-07-21 20:34:19', '2021-07-21 20:34:19'),
('d7709ab7-93b3-4286-9032-67bee348320f', 'App\\Notifications\\NotifyCustomer', 'App\\Models\\User', 62, '{\"notify\":{\"title\":\"C\\u00f3 1 y\\u00eau c\\u1ea7u c\\u1ee7a b\\u1ea1n \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c ph\\u1ea3n h\\u1ed3i\",\"link\":\"\\/requirements-customer\\/68\",\"content\":{\"id\":68,\"order_id\":1512,\"title\":\"s\\u1eeda website\",\"detail\":\"<p>dsadasda<\\/p>\",\"status\":1,\"createdate\":\"2021-07-21 10:55:33\",\"file\":null,\"id_ofcustomer\":62,\"assign\":1,\"created_at\":\"2021-07-21T03:55:33.000000Z\",\"updated_at\":\"2021-07-22T03:34:18.000000Z\"}},\"user\":{\"id\":62,\"fullname\":\"Cao Th\\u1ecb Th\\u00f9y Chuy\\u00ean\",\"phone\":\"0977049068\",\"level\":3,\"email\":null,\"api_id\":6025,\"created_date\":\"2021-07-20 10:52:46\",\"status\":0,\"addedby\":null,\"created_at\":\"2021-07-20T03:52:46.000000Z\",\"updated_at\":\"2021-07-22T03:32:12.000000Z\"}}', '2021-07-22 03:36:24', '2021-07-21 20:35:57', '2021-07-21 20:35:57'),
('f394734d-25ff-4f7f-9c50-6962c78b8ffb', 'App\\Notifications\\NotifyCustomer', 'App\\Models\\User', 62, '{\"notify\":{\"title\":\"C\\u00f3 1 y\\u00eau c\\u1ea7u c\\u1ee7a b\\u1ea1n \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c ph\\u1ea3n h\\u1ed3i\",\"link\":\"\\/requirements-customer\\/68\",\"content\":{\"id\":68,\"order_id\":1512,\"title\":\"s\\u1eeda website\",\"detail\":\"<p>dsadasda<\\/p>\",\"status\":1,\"createdate\":\"2021-07-21 10:55:33\",\"file\":null,\"id_ofcustomer\":62,\"assign\":1,\"created_at\":\"2021-07-21T03:55:33.000000Z\",\"updated_at\":\"2021-07-22T03:34:18.000000Z\"}},\"user\":{\"id\":62,\"fullname\":\"Cao Th\\u1ecb Th\\u00f9y Chuy\\u00ean\",\"phone\":\"0977049068\",\"level\":3,\"email\":null,\"api_id\":6025,\"created_date\":\"2021-07-20 10:52:46\",\"status\":0,\"addedby\":null,\"created_at\":\"2021-07-20T03:52:46.000000Z\",\"updated_at\":\"2021-07-22T03:32:12.000000Z\"}}', '2021-07-22 04:05:50', '2021-07-21 20:36:54', '2021-07-21 20:36:54'),
('986a7c9c-e45e-41b7-898c-57a722938bd0', 'App\\Notifications\\NotifySupporter', 'App\\Models\\User', 19, '{\"notify\":{\"title\":\"C\\u00f3 1 ph\\u1ea3n h\\u1ed3i m\\u1edbi t\\u1eeb kh\\u00e1ch h\\u00e0ng\",\"link\":\"\\/requirements-supporter\\/68\",\"content\":{\"id\":68,\"order_id\":1512,\"title\":\"s\\u1eeda website\",\"detail\":\"<p>dsadasda<\\/p>\",\"status\":0,\"createdate\":\"2021-07-21 10:55:33\",\"file\":null,\"id_ofcustomer\":62,\"assign\":1,\"created_at\":\"2021-07-21T03:55:33.000000Z\",\"updated_at\":\"2021-07-22T04:08:13.000000Z\"}},\"user\":{\"id\":19,\"fullname\":\"Tr\\u1ea7n V\\u0103n Tr\\u01b0\\u1eddng\",\"phone\":\"0342909557\",\"level\":2,\"email\":\"ittranvantruong@gmail.com\",\"api_id\":null,\"created_date\":\"2020-10-06 16:30:29\",\"status\":0,\"addedby\":null,\"created_at\":null,\"updated_at\":\"2021-07-19T07:14:29.000000Z\"}}', '2021-07-22 04:08:34', '2021-07-21 21:08:13', '2021-07-21 21:08:13'),
('39075830-be22-4a2a-b666-1d8f3454cdfd', 'App\\Notifications\\NotifyCustomer', 'App\\Models\\User', 62, '{\"notify\":{\"title\":\"C\\u00f3 1 y\\u00eau c\\u1ea7u c\\u1ee7a b\\u1ea1n \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c ph\\u1ea3n h\\u1ed3i\",\"link\":\"\\/requirements-customer\\/68\",\"content\":{\"id\":68,\"order_id\":1512,\"title\":\"s\\u1eeda website\",\"detail\":\"<p>dsadasda<\\/p>\",\"status\":1,\"createdate\":\"2021-07-21 10:55:33\",\"file\":null,\"id_ofcustomer\":62,\"assign\":1,\"created_at\":\"2021-07-21T03:55:33.000000Z\",\"updated_at\":\"2021-07-22T04:08:32.000000Z\"}},\"user\":{\"id\":62,\"fullname\":\"Cao Th\\u1ecb Th\\u00f9y Chuy\\u00ean\",\"phone\":\"0977049068\",\"level\":3,\"email\":null,\"api_id\":6025,\"created_date\":\"2021-07-20 10:52:46\",\"status\":0,\"addedby\":null,\"created_at\":\"2021-07-20T03:52:46.000000Z\",\"updated_at\":\"2021-07-22T03:32:12.000000Z\"}}', '2021-07-22 04:08:48', '2021-07-21 21:08:32', '2021-07-21 21:08:32'),
('8e86fcdf-9df4-40fe-bdb8-076f77ec4510', 'App\\Notifications\\NotifyCustomer', 'App\\Models\\User', 62, '{\"notify\":{\"title\":\"C\\u00f3 1 y\\u00eau c\\u1ea7u c\\u1ee7a b\\u1ea1n \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c ph\\u1ea3n h\\u1ed3i\",\"link\":\"\\/requirements-customer\\/68\",\"content\":{\"id\":68,\"order_id\":1512,\"title\":\"s\\u1eeda website\",\"detail\":\"<p>dsadasda<\\/p>\",\"status\":1,\"createdate\":\"2021-07-21 10:55:33\",\"file\":null,\"id_ofcustomer\":62,\"assign\":1,\"created_at\":\"2021-07-21T03:55:33.000000Z\",\"updated_at\":\"2021-07-22T04:08:32.000000Z\"}},\"user\":{\"id\":62,\"fullname\":\"Cao Th\\u1ecb Th\\u00f9y Chuy\\u00ean\",\"phone\":\"0977049068\",\"level\":3,\"email\":null,\"api_id\":6025,\"created_date\":\"2021-07-20 10:52:46\",\"status\":0,\"addedby\":null,\"created_at\":\"2021-07-20T03:52:46.000000Z\",\"updated_at\":\"2021-07-22T03:32:12.000000Z\"}}', '2021-07-22 04:30:08', '2021-07-21 21:16:26', '2021-07-21 21:16:26'),
('0d8c60b7-994a-4de1-935b-086680bfbcd3', 'App\\Notifications\\NotifyCustomer', 'App\\Models\\User', 62, '{\"notify\":{\"title\":\"C\\u00f3 1 y\\u00eau c\\u1ea7u c\\u1ee7a b\\u1ea1n \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c ph\\u1ea3n h\\u1ed3i\",\"link\":\"\\/requirements-customer\\/68\",\"content\":{\"id\":68,\"order_id\":1512,\"title\":\"s\\u1eeda website\",\"detail\":\"<p>dsadasda<\\/p>\",\"status\":1,\"createdate\":\"2021-07-21 10:55:33\",\"file\":null,\"id_ofcustomer\":62,\"assign\":1,\"created_at\":\"2021-07-21T03:55:33.000000Z\",\"updated_at\":\"2021-07-22T04:08:32.000000Z\"}},\"user\":{\"id\":62,\"fullname\":\"Cao Th\\u1ecb Th\\u00f9y Chuy\\u00ean\",\"phone\":\"0977049068\",\"level\":3,\"email\":null,\"api_id\":6025,\"created_date\":\"2021-07-20 10:52:46\",\"status\":0,\"addedby\":null,\"created_at\":\"2021-07-20T03:52:46.000000Z\",\"updated_at\":\"2021-07-22T03:32:12.000000Z\"}}', '2021-07-22 04:30:08', '2021-07-21 21:17:55', '2021-07-21 21:17:55'),
('8ee302aa-7b7e-46f5-a13c-63eeabbe1d7a', 'App\\Notifications\\NotifyCustomer', 'App\\Models\\User', 62, '{\"notify\":{\"title\":\"C\\u00f3 1 y\\u00eau c\\u1ea7u c\\u1ee7a b\\u1ea1n \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c ph\\u1ea3n h\\u1ed3i\",\"link\":\"\\/requirements-customer\\/68\",\"content\":{\"id\":68,\"order_id\":1512,\"title\":\"s\\u1eeda website\",\"detail\":\"<p>dsadasda<\\/p>\",\"status\":1,\"createdate\":\"2021-07-21 10:55:33\",\"file\":null,\"id_ofcustomer\":62,\"assign\":1,\"created_at\":\"2021-07-21T03:55:33.000000Z\",\"updated_at\":\"2021-07-22T04:08:32.000000Z\"}},\"user\":{\"id\":62,\"fullname\":\"Cao Th\\u1ecb Th\\u00f9y Chuy\\u00ean\",\"phone\":\"0977049068\",\"level\":3,\"email\":null,\"api_id\":6025,\"created_date\":\"2021-07-20 10:52:46\",\"status\":0,\"addedby\":null,\"created_at\":\"2021-07-20T03:52:46.000000Z\",\"updated_at\":\"2021-07-22T03:32:12.000000Z\"}}', '2021-07-22 04:30:08', '2021-07-21 21:22:07', '2021-07-21 21:22:07'),
('a0394fe0-8185-4045-9be5-af07e3635a5f', 'App\\Notifications\\NotifySupporter', 'App\\Models\\User', 19, '{\"notify\":{\"title\":\"C\\u00f3 1 ph\\u1ea3n h\\u1ed3i m\\u1edbi t\\u1eeb kh\\u00e1ch h\\u00e0ng\",\"link\":\"\\/requirements-supporter\\/68\",\"content\":{\"id\":68,\"order_id\":1512,\"title\":\"s\\u1eeda website\",\"detail\":\"<p>dsadasda<\\/p>\",\"status\":0,\"createdate\":\"2021-07-21 10:55:33\",\"file\":null,\"id_ofcustomer\":62,\"assign\":1,\"created_at\":\"2021-07-21T03:55:33.000000Z\",\"updated_at\":\"2021-07-22T04:30:45.000000Z\"}},\"user\":{\"id\":19,\"fullname\":\"Tr\\u1ea7n V\\u0103n Tr\\u01b0\\u1eddng\",\"phone\":\"0342909557\",\"level\":2,\"email\":\"ittranvantruong@gmail.com\",\"api_id\":null,\"created_date\":\"2020-10-06 16:30:29\",\"status\":0,\"addedby\":null,\"created_at\":null,\"updated_at\":\"2021-07-19T07:14:29.000000Z\"}}', '2021-07-22 04:48:15', '2021-07-21 21:30:45', '2021-07-21 21:30:45'),
('f7aa072f-32be-45e7-b13d-6d98d5fd0a2c', 'App\\Notifications\\NotifySupporter', 'App\\Models\\User', 19, '{\"notify\":{\"title\":\"C\\u00f3 1 ph\\u1ea3n h\\u1ed3i m\\u1edbi t\\u1eeb kh\\u00e1ch h\\u00e0ng\",\"link\":\"\\/requirements-supporter\\/68\",\"content\":{\"id\":68,\"order_id\":1512,\"title\":\"s\\u1eeda website\",\"detail\":\"<p>dsadasda<\\/p>\",\"status\":0,\"createdate\":\"2021-07-21 10:55:33\",\"file\":null,\"id_ofcustomer\":62,\"assign\":1,\"created_at\":\"2021-07-21T03:55:33.000000Z\",\"updated_at\":\"2021-07-22T04:30:45.000000Z\"}},\"user\":{\"id\":19,\"fullname\":\"Tr\\u1ea7n V\\u0103n Tr\\u01b0\\u1eddng\",\"phone\":\"0342909557\",\"level\":2,\"email\":\"ittranvantruong@gmail.com\",\"api_id\":null,\"created_date\":\"2020-10-06 16:30:29\",\"status\":0,\"addedby\":null,\"created_at\":null,\"updated_at\":\"2021-07-19T07:14:29.000000Z\"}}', '2021-07-22 04:48:15', '2021-07-21 21:33:00', '2021-07-21 21:33:00'),
('e42d21b2-ef79-4273-a273-0beda9c6be83', 'App\\Notifications\\NotifyCustomer', 'App\\Models\\User', 62, '{\"notify\":{\"title\":\"C\\u00f3 1 y\\u00eau c\\u1ea7u c\\u1ee7a b\\u1ea1n \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c ph\\u1ea3n h\\u1ed3i\",\"link\":\"\\/requirements-customer\\/68\",\"content\":{\"id\":68,\"order_id\":1512,\"title\":\"s\\u1eeda website\",\"detail\":\"<p>dsadasda<\\/p>\",\"status\":1,\"createdate\":\"2021-07-21 10:55:33\",\"file\":null,\"id_ofcustomer\":62,\"assign\":1,\"created_at\":\"2021-07-21T03:55:33.000000Z\",\"updated_at\":\"2021-07-22T04:50:54.000000Z\"}},\"user\":{\"id\":62,\"fullname\":\"Cao Th\\u1ecb Th\\u00f9y Chuy\\u00ean\",\"phone\":\"0977049068\",\"level\":3,\"email\":null,\"api_id\":6025,\"created_date\":\"2021-07-20 10:52:46\",\"status\":0,\"addedby\":null,\"created_at\":\"2021-07-20T03:52:46.000000Z\",\"updated_at\":\"2021-07-22T03:32:12.000000Z\"}}', '2021-07-22 04:52:31', '2021-07-21 21:50:54', '2021-07-21 21:50:54'),
('0feb5ee2-ede4-4854-8a73-6837f3a9b856', 'App\\Notifications\\NotifySupporter', 'App\\Models\\User', 19, '{\"notify\":{\"title\":\"C\\u00f3 1 ph\\u1ea3n h\\u1ed3i m\\u1edbi t\\u1eeb kh\\u00e1ch h\\u00e0ng\",\"link\":\"\\/requirements-supporter\\/68\",\"content\":{\"id\":68,\"order_id\":1512,\"title\":\"s\\u1eeda website\",\"detail\":\"<p>dsadasda<\\/p>\",\"status\":0,\"createdate\":\"2021-07-21 10:55:33\",\"file\":null,\"id_ofcustomer\":62,\"assign\":1,\"created_at\":\"2021-07-21T03:55:33.000000Z\",\"updated_at\":\"2021-07-22T04:53:06.000000Z\"}},\"user\":{\"id\":19,\"fullname\":\"Tr\\u1ea7n V\\u0103n Tr\\u01b0\\u1eddng\",\"phone\":\"0342909557\",\"level\":2,\"email\":\"ittranvantruong@gmail.com\",\"api_id\":null,\"created_date\":\"2020-10-06 16:30:29\",\"status\":0,\"addedby\":null,\"created_at\":null,\"updated_at\":\"2021-07-19T07:14:29.000000Z\"}}', '2021-07-22 05:01:03', '2021-07-21 21:53:07', '2021-07-21 21:53:07'),
('872d44fd-2a07-465f-af9e-c868471c8917', 'App\\Notifications\\NotifyCustomer', 'App\\Models\\User', 62, '{\"notify\":{\"title\":\"C\\u00f3 1 y\\u00eau c\\u1ea7u c\\u1ee7a b\\u1ea1n \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c ph\\u1ea3n h\\u1ed3i\",\"link\":\"\\/requirements-customer\\/68\",\"content\":{\"id\":68,\"order_id\":1512,\"title\":\"s\\u1eeda website\",\"detail\":\"<p>dsadasda<\\/p>\",\"status\":1,\"createdate\":\"2021-07-21 10:55:33\",\"file\":null,\"id_ofcustomer\":62,\"assign\":1,\"created_at\":\"2021-07-21T03:55:33.000000Z\",\"updated_at\":\"2021-07-22T04:53:15.000000Z\"}},\"user\":{\"id\":62,\"fullname\":\"Cao Th\\u1ecb Th\\u00f9y Chuy\\u00ean\",\"phone\":\"0977049068\",\"level\":3,\"email\":null,\"api_id\":6025,\"created_date\":\"2021-07-20 10:52:46\",\"status\":0,\"addedby\":null,\"created_at\":\"2021-07-20T03:52:46.000000Z\",\"updated_at\":\"2021-07-22T03:32:12.000000Z\"}}', '2021-07-22 04:55:57', '2021-07-21 21:53:15', '2021-07-21 21:53:15'),
('ee0175b5-2747-4d04-963a-1e8141db2f21', 'App\\Notifications\\NotifySupporter', 'App\\Models\\User', 19, '{\"notify\":{\"title\":\"C\\u00f3 1 ph\\u1ea3n h\\u1ed3i m\\u1edbi t\\u1eeb kh\\u00e1ch h\\u00e0ng\",\"link\":\"\\/requirements-supporter\\/68\",\"content\":{\"id\":68,\"order_id\":1512,\"title\":\"s\\u1eeda website\",\"detail\":\"<p>dsadasda<\\/p>\",\"status\":0,\"createdate\":\"2021-07-21 10:55:33\",\"file\":null,\"id_ofcustomer\":62,\"assign\":1,\"created_at\":\"2021-07-21T03:55:33.000000Z\",\"updated_at\":\"2021-07-22T04:58:18.000000Z\"}},\"user\":{\"id\":19,\"fullname\":\"Tr\\u1ea7n V\\u0103n Tr\\u01b0\\u1eddng\",\"phone\":\"0342909557\",\"level\":2,\"email\":\"ittranvantruong@gmail.com\",\"api_id\":null,\"created_date\":\"2020-10-06 16:30:29\",\"status\":0,\"addedby\":null,\"created_at\":null,\"updated_at\":\"2021-07-19T07:14:29.000000Z\"}}', '2021-07-22 05:01:03', '2021-07-21 21:58:18', '2021-07-21 21:58:18'),
('0a25eb54-7306-47db-a01b-72aed64c9c5a', 'App\\Notifications\\NotifyCustomer', 'App\\Models\\User', 62, '{\"notify\":{\"title\":\"C\\u00f3 1 y\\u00eau c\\u1ea7u c\\u1ee7a b\\u1ea1n \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c ph\\u1ea3n h\\u1ed3i\",\"link\":\"\\/requirements-customer\\/68\",\"content\":{\"id\":68,\"order_id\":1512,\"title\":\"s\\u1eeda website\",\"detail\":\"<p>dsadasda<\\/p>\",\"status\":1,\"createdate\":\"2021-07-21 10:55:33\",\"file\":null,\"id_ofcustomer\":62,\"assign\":1,\"created_at\":\"2021-07-21T03:55:33.000000Z\",\"updated_at\":\"2021-07-22T05:01:10.000000Z\"}},\"user\":{\"id\":62,\"fullname\":\"Cao Th\\u1ecb Th\\u00f9y Chuy\\u00ean\",\"phone\":\"0977049068\",\"level\":3,\"email\":null,\"api_id\":6025,\"created_date\":\"2021-07-20 10:52:46\",\"status\":0,\"addedby\":null,\"created_at\":\"2021-07-20T03:52:46.000000Z\",\"updated_at\":\"2021-07-22T03:32:12.000000Z\"}}', '2021-07-22 06:25:06', '2021-07-21 22:01:10', '2021-07-21 22:01:10'),
('c05115a0-d53f-4648-82a1-15e2dd69bce2', 'App\\Notifications\\NotifyCustomer', 'App\\Models\\User', 62, '{\"notify\":{\"title\":\"C\\u00f3 1 y\\u00eau c\\u1ea7u c\\u1ee7a b\\u1ea1n \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c ph\\u1ea3n h\\u1ed3i\",\"link\":\"\\/requirements-customer\\/68\",\"content\":{\"id\":68,\"order_id\":1512,\"title\":\"s\\u1eeda website\",\"detail\":\"<p>dsadasda<\\/p>\",\"status\":1,\"createdate\":\"2021-07-21 10:55:33\",\"file\":null,\"id_ofcustomer\":62,\"assign\":1,\"created_at\":\"2021-07-21T03:55:33.000000Z\",\"updated_at\":\"2021-07-22T05:01:10.000000Z\"}},\"user\":{\"id\":62,\"fullname\":\"Cao Th\\u1ecb Th\\u00f9y Chuy\\u00ean\",\"phone\":\"0977049068\",\"level\":3,\"email\":null,\"api_id\":6025,\"created_date\":\"2021-07-20 10:52:46\",\"status\":0,\"addedby\":null,\"created_at\":\"2021-07-20T03:52:46.000000Z\",\"updated_at\":\"2021-07-22T03:32:12.000000Z\"}}', '2021-07-22 06:25:06', '2021-07-21 22:03:17', '2021-07-21 22:03:17'),
('1c4b52d6-8988-4737-9199-4f1444e4641c', 'App\\Notifications\\NotifyCustomer', 'App\\Models\\User', 62, '{\"notify\":{\"title\":\"C\\u00f3 1 y\\u00eau c\\u1ea7u c\\u1ee7a b\\u1ea1n \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c ph\\u1ea3n h\\u1ed3i\",\"link\":\"\\/requirements-customer\\/68\",\"content\":{\"id\":68,\"order_id\":1512,\"title\":\"s\\u1eeda website\",\"detail\":\"<p>dsadasda<\\/p>\",\"status\":1,\"createdate\":\"2021-07-21 10:55:33\",\"file\":null,\"id_ofcustomer\":62,\"assign\":1,\"created_at\":\"2021-07-21T03:55:33.000000Z\",\"updated_at\":\"2021-07-22T05:01:10.000000Z\"}},\"user\":{\"id\":62,\"fullname\":\"Cao Th\\u1ecb Th\\u00f9y Chuy\\u00ean\",\"phone\":\"0977049068\",\"level\":3,\"email\":null,\"api_id\":6025,\"created_date\":\"2021-07-20 10:52:46\",\"status\":0,\"addedby\":null,\"created_at\":\"2021-07-20T03:52:46.000000Z\",\"updated_at\":\"2021-07-22T03:32:12.000000Z\"}}', '2021-07-22 06:25:06', '2021-07-21 22:05:18', '2021-07-21 22:05:18'),
('52022ae1-9443-4549-8dbc-bfc2e25a9c97', 'App\\Notifications\\NotifySupporter', 'App\\Models\\User', 19, '{\"notify\":{\"title\":\"C\\u00f3 1 ph\\u1ea3n h\\u1ed3i m\\u1edbi t\\u1eeb kh\\u00e1ch h\\u00e0ng\",\"link\":\"\\/requirements-supporter\\/68\",\"content\":{\"id\":68,\"order_id\":1512,\"title\":\"s\\u1eeda website\",\"detail\":\"<p>dsadasda<\\/p>\",\"status\":0,\"createdate\":\"2021-07-21 10:55:33\",\"file\":null,\"id_ofcustomer\":62,\"assign\":1,\"created_at\":\"2021-07-21T03:55:33.000000Z\",\"updated_at\":\"2021-07-23T04:22:23.000000Z\"}},\"user\":{\"id\":19,\"fullname\":\"Tr\\u1ea7n V\\u0103n Tr\\u01b0\\u1eddng\",\"phone\":\"0342909557\",\"level\":2,\"email\":\"ittranvantruong@gmail.com\",\"api_id\":null,\"created_date\":\"2020-10-06 16:30:29\",\"status\":0,\"addedby\":null,\"created_at\":null,\"updated_at\":\"2021-07-19T07:14:29.000000Z\"}}', '2021-07-26 09:47:08', '2021-07-22 21:22:24', '2021-07-22 21:22:24'),
('ef375557-dc0f-4496-81a1-9d994d872b02', 'App\\Notifications\\NotifyAdmin', 'App\\Models\\User', 1, '{\"notify\":{\"title\":\"C\\u00f3 m\\u1ed9t y\\u00eau c\\u1ea7u m\\u1edbi t\\u1eeb kh\\u00e1ch h\\u00e0ng\",\"link\":\"\\/requirements\\/89\",\"content\":{\"order_id\":\"1512\",\"title\":\"fdsfsdf\",\"detail\":\"ewqewqewqe\",\"id_ofcustomer\":62,\"createdate\":\"2021-07-26T08:55:40.284437Z\",\"updated_at\":\"2021-07-26T08:55:40.000000Z\",\"created_at\":\"2021-07-26T08:55:40.000000Z\",\"id\":89}},\"user\":{\"id\":1,\"name\":null,\"fullname\":\"B\\u00f9i Th\\u1ebf V\\u0169\",\"phone\":\"0335828494\",\"level\":1,\"email\":\"btvu282@gmail.com\",\"api_id\":null,\"created_date\":\"2020-09-11 00:00:00\",\"status\":0,\"addedby\":null,\"created_at\":null,\"updated_at\":null}}', '2021-07-26 08:56:12', '2021-07-26 01:55:42', '2021-07-26 01:55:42'),
('3152abea-7d51-44c8-b84e-902637684edf', 'App\\Notifications\\NotifySupporter', 'App\\Models\\User', 19, '{\"notify\":{\"title\":\"C\\u00f3 1 ph\\u1ea3n h\\u1ed3i m\\u1edbi t\\u1eeb kh\\u00e1ch h\\u00e0ng\",\"link\":\"\\/requirements-supporter\\/68\",\"content\":{\"id\":68,\"order_id\":1512,\"title\":\"s\\u1eeda website\",\"detail\":\"<p>dsadasda<\\/p>\",\"status\":0,\"createdate\":\"2021-07-21 10:55:33\",\"file\":null,\"id_ofcustomer\":62,\"assign\":1,\"created_at\":\"2021-07-21T03:55:33.000000Z\",\"updated_at\":\"2021-07-23T04:22:23.000000Z\"}},\"user\":{\"id\":19,\"name\":null,\"fullname\":\"Tr\\u1ea7n V\\u0103n Tr\\u01b0\\u1eddng\",\"phone\":\"0342909557\",\"level\":2,\"email\":\"ittranvantruong@gmail.com\",\"api_id\":null,\"created_date\":\"2020-10-06 16:30:29\",\"status\":0,\"addedby\":null,\"created_at\":null,\"updated_at\":\"2021-07-19T07:14:29.000000Z\"}}', '2021-07-26 09:57:10', '2021-07-26 02:56:21', '2021-07-26 02:56:21'),
('bf27b9a9-df18-4a7f-ada1-73303a46a916', 'App\\Notifications\\NotifySupporter', 'App\\Models\\User', 19, '{\"notify\":{\"title\":\"C\\u00f3 1 ph\\u1ea3n h\\u1ed3i m\\u1edbi t\\u1eeb kh\\u00e1ch h\\u00e0ng\",\"link\":\"\\/requirements-supporter\\/68\",\"content\":{\"id\":68,\"order_id\":1512,\"title\":\"s\\u1eeda website\",\"detail\":\"<p>dsadasda<\\/p>\",\"status\":0,\"createdate\":\"2021-07-21 10:55:33\",\"file\":null,\"id_ofcustomer\":62,\"assign\":1,\"created_at\":\"2021-07-21T03:55:33.000000Z\",\"updated_at\":\"2021-07-23T04:22:23.000000Z\"}},\"user\":{\"id\":19,\"name\":null,\"fullname\":\"Tr\\u1ea7n V\\u0103n Tr\\u01b0\\u1eddng\",\"phone\":\"0342909557\",\"level\":2,\"email\":\"ittranvantruong@gmail.com\",\"api_id\":null,\"created_date\":\"2020-10-06 16:30:29\",\"status\":0,\"addedby\":null,\"created_at\":null,\"updated_at\":\"2021-07-19T07:14:29.000000Z\"}}', '2021-08-25 03:38:05', '2021-07-26 02:57:40', '2021-07-26 02:57:40'),
('3b027150-91f3-4d1e-91b1-9e64cc3256e1', 'App\\Notifications\\NotifyCustomer', 'App\\Models\\User', 64, '{\"notify\":{\"title\":\"C\\u00f3 1 y\\u00eau c\\u1ea7u c\\u1ee7a b\\u1ea1n \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c ph\\u1ea3n h\\u1ed3i\",\"link\":\"\\/requirements-customer\\/62\",\"content\":{\"id\":62,\"order_id\":1454,\"title\":\"Y\\u00eau c\\u1ea7u v\\u1edbi \\u0111\\u01a1n h\\u00e0ng 1454\",\"detail\":\"<p>dsfs<\\/p>\",\"status\":1,\"createdate\":\"2021-07-20 16:08:19\",\"file\":null,\"id_ofcustomer\":64,\"assign\":1,\"created_at\":\"2021-07-20T09:08:19.000000Z\",\"updated_at\":\"2021-07-21T02:49:16.000000Z\"}},\"user\":{\"id\":64,\"name\":null,\"fullname\":\"\\u00c2u Th\\u1ecb Thanh D\\u00e2n\",\"phone\":\"0346678265\",\"level\":3,\"email\":null,\"api_id\":5788,\"quantri_id\":null,\"created_date\":\"2021-07-20 13:37:15\",\"status\":0,\"addedby\":null,\"created_at\":\"2021-07-20T06:37:15.000000Z\",\"updated_at\":\"2021-07-20T06:37:15.000000Z\"}}', NULL, '2021-08-24 20:47:58', '2021-08-24 20:47:58'),
('6b1fc8ab-afc6-45fc-b75e-2024a6f03e86', 'App\\Notifications\\NotifyCustomer', 'App\\Models\\User', 64, '{\"notify\":{\"title\":\"C\\u00f3 1 y\\u00eau c\\u1ea7u c\\u1ee7a b\\u1ea1n \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c ph\\u1ea3n h\\u1ed3i\",\"link\":\"\\/requirements-customer\\/62\",\"content\":{\"id\":62,\"order_id\":1454,\"title\":\"Y\\u00eau c\\u1ea7u v\\u1edbi \\u0111\\u01a1n h\\u00e0ng 1454\",\"detail\":\"<p>dsfs<\\/p>\",\"status\":1,\"createdate\":\"2021-07-20 16:08:19\",\"file\":null,\"id_ofcustomer\":64,\"assign\":1,\"created_at\":\"2021-07-20T09:08:19.000000Z\",\"updated_at\":\"2021-07-21T02:49:16.000000Z\"}},\"user\":{\"id\":64,\"name\":null,\"fullname\":\"\\u00c2u Th\\u1ecb Thanh D\\u00e2n\",\"phone\":\"0346678265\",\"level\":3,\"email\":null,\"api_id\":5788,\"quantri_id\":null,\"created_date\":\"2021-07-20 13:37:15\",\"status\":0,\"addedby\":null,\"created_at\":\"2021-07-20T06:37:15.000000Z\",\"updated_at\":\"2021-07-20T06:37:15.000000Z\"}}', NULL, '2021-08-24 21:07:18', '2021-08-24 21:07:18'),
('7092c78b-6087-4eaa-afb3-a2ce1f5579a9', 'App\\Notifications\\NotifyCustomer', 'App\\Models\\User', 64, '{\"notify\":{\"title\":\"C\\u00f3 1 y\\u00eau c\\u1ea7u c\\u1ee7a b\\u1ea1n \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c ph\\u1ea3n h\\u1ed3i\",\"link\":\"\\/requirements-customer\\/62\",\"content\":{\"id\":62,\"order_id\":1454,\"title\":\"Y\\u00eau c\\u1ea7u v\\u1edbi \\u0111\\u01a1n h\\u00e0ng 1454\",\"detail\":\"<p>dsfs<\\/p>\",\"status\":1,\"createdate\":\"2021-07-20 16:08:19\",\"file\":null,\"id_ofcustomer\":64,\"assign\":1,\"created_at\":\"2021-07-20T09:08:19.000000Z\",\"updated_at\":\"2021-07-21T02:49:16.000000Z\"}},\"user\":{\"id\":64,\"name\":null,\"fullname\":\"\\u00c2u Th\\u1ecb Thanh D\\u00e2n\",\"phone\":\"0346678265\",\"level\":3,\"email\":null,\"api_id\":5788,\"quantri_id\":null,\"created_date\":\"2021-07-20 13:37:15\",\"status\":0,\"addedby\":null,\"created_at\":\"2021-07-20T06:37:15.000000Z\",\"updated_at\":\"2021-07-20T06:37:15.000000Z\"}}', NULL, '2021-08-24 21:08:08', '2021-08-24 21:08:08'),
('95926924-45ab-48a4-8db1-88ce309f340e', 'App\\Notifications\\NotifyCustomer', 'App\\Models\\User', 64, '{\"notify\":{\"title\":\"C\\u00f3 1 y\\u00eau c\\u1ea7u c\\u1ee7a b\\u1ea1n \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c ph\\u1ea3n h\\u1ed3i\",\"link\":\"\\/requirements-customer\\/62\",\"content\":{\"id\":62,\"order_id\":1454,\"title\":\"Y\\u00eau c\\u1ea7u v\\u1edbi \\u0111\\u01a1n h\\u00e0ng 1454\",\"detail\":\"<p>dsfs<\\/p>\",\"status\":1,\"createdate\":\"2021-07-20 16:08:19\",\"file\":null,\"id_ofcustomer\":64,\"assign\":1,\"created_at\":\"2021-07-20T09:08:19.000000Z\",\"updated_at\":\"2021-07-21T02:49:16.000000Z\"}},\"user\":{\"id\":64,\"name\":null,\"fullname\":\"\\u00c2u Th\\u1ecb Thanh D\\u00e2n\",\"phone\":\"0346678265\",\"level\":3,\"email\":null,\"api_id\":5788,\"quantri_id\":null,\"created_date\":\"2021-07-20 13:37:15\",\"status\":0,\"addedby\":null,\"created_at\":\"2021-07-20T06:37:15.000000Z\",\"updated_at\":\"2021-07-20T06:37:15.000000Z\"}}', NULL, '2021-08-24 21:45:30', '2021-08-24 21:45:30');
INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('83a5b5d0-5984-4be4-aba7-b3713fa127ec', 'App\\Notifications\\NotifyCustomer', 'App\\Models\\User', 64, '{\"notify\":{\"title\":\"C\\u00f3 1 y\\u00eau c\\u1ea7u c\\u1ee7a b\\u1ea1n \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c ph\\u1ea3n h\\u1ed3i\",\"link\":\"\\/requirements-customer\\/62\",\"content\":{\"id\":62,\"order_id\":1454,\"title\":\"Y\\u00eau c\\u1ea7u v\\u1edbi \\u0111\\u01a1n h\\u00e0ng 1454\",\"detail\":\"<p>dsfs<\\/p>\",\"status\":1,\"createdate\":\"2021-07-20 16:08:19\",\"file\":null,\"id_ofcustomer\":64,\"assign\":1,\"created_at\":\"2021-07-20T09:08:19.000000Z\",\"updated_at\":\"2021-07-21T02:49:16.000000Z\"}},\"user\":{\"id\":64,\"name\":null,\"fullname\":\"\\u00c2u Th\\u1ecb Thanh D\\u00e2n\",\"phone\":\"0346678265\",\"level\":3,\"email\":null,\"api_id\":5788,\"quantri_id\":null,\"created_date\":\"2021-07-20 13:37:15\",\"status\":0,\"addedby\":null,\"created_at\":\"2021-07-20T06:37:15.000000Z\",\"updated_at\":\"2021-07-20T06:37:15.000000Z\"}}', NULL, '2021-08-24 21:51:10', '2021-08-24 21:51:10'),
('fc559f47-50fc-40ca-a453-4a0a1c083a3a', 'App\\Notifications\\NotifyCustomer', 'App\\Models\\User', 64, '{\"notify\":{\"title\":\"C\\u00f3 1 y\\u00eau c\\u1ea7u c\\u1ee7a b\\u1ea1n \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c ph\\u1ea3n h\\u1ed3i\",\"link\":\"\\/requirements-customer\\/62\",\"content\":{\"id\":62,\"order_id\":1454,\"title\":\"Y\\u00eau c\\u1ea7u v\\u1edbi \\u0111\\u01a1n h\\u00e0ng 1454\",\"detail\":\"<p>dsfs<\\/p>\",\"status\":1,\"createdate\":\"2021-07-20 16:08:19\",\"file\":null,\"id_ofcustomer\":64,\"assign\":1,\"created_at\":\"2021-07-20T09:08:19.000000Z\",\"updated_at\":\"2021-07-21T02:49:16.000000Z\"}},\"user\":{\"id\":64,\"name\":null,\"fullname\":\"\\u00c2u Th\\u1ecb Thanh D\\u00e2n\",\"phone\":\"0346678265\",\"level\":3,\"email\":null,\"api_id\":5788,\"quantri_id\":null,\"created_date\":\"2021-07-20 13:37:15\",\"status\":0,\"addedby\":null,\"created_at\":\"2021-07-20T06:37:15.000000Z\",\"updated_at\":\"2021-07-20T06:37:15.000000Z\"}}', NULL, '2021-08-24 21:56:48', '2021-08-24 21:56:48'),
('9532de5d-6612-4836-8318-c4214e5aa3e1', 'App\\Notifications\\NotifyCustomer', 'App\\Models\\User', 64, '{\"notify\":{\"title\":\"C\\u00f3 1 y\\u00eau c\\u1ea7u c\\u1ee7a b\\u1ea1n \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c ph\\u1ea3n h\\u1ed3i\",\"link\":\"\\/requirements-customer\\/62\",\"content\":{\"id\":62,\"order_id\":1454,\"title\":\"Y\\u00eau c\\u1ea7u v\\u1edbi \\u0111\\u01a1n h\\u00e0ng 1454\",\"detail\":\"<p>dsfs<\\/p>\",\"status\":1,\"createdate\":\"2021-07-20 16:08:19\",\"file\":null,\"id_ofcustomer\":64,\"assign\":1,\"created_at\":\"2021-07-20T09:08:19.000000Z\",\"updated_at\":\"2021-07-21T02:49:16.000000Z\"}},\"user\":{\"id\":64,\"name\":null,\"fullname\":\"\\u00c2u Th\\u1ecb Thanh D\\u00e2n\",\"phone\":\"0346678265\",\"level\":3,\"email\":null,\"api_id\":5788,\"quantri_id\":null,\"created_date\":\"2021-07-20 13:37:15\",\"status\":0,\"addedby\":null,\"created_at\":\"2021-07-20T06:37:15.000000Z\",\"updated_at\":\"2021-07-20T06:37:15.000000Z\"}}', NULL, '2021-08-24 21:58:47', '2021-08-24 21:58:47'),
('052dbea1-0a8b-46cf-ad84-70fca3ffefd1', 'App\\Notifications\\NotifyCustomer', 'App\\Models\\User', 64, '{\"notify\":{\"title\":\"C\\u00f3 1 y\\u00eau c\\u1ea7u c\\u1ee7a b\\u1ea1n \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c ph\\u1ea3n h\\u1ed3i\",\"link\":\"\\/requirements-customer\\/62\",\"content\":{\"id\":62,\"order_id\":1454,\"title\":\"Y\\u00eau c\\u1ea7u v\\u1edbi \\u0111\\u01a1n h\\u00e0ng 1454\",\"detail\":\"<p>dsfs<\\/p>\",\"status\":1,\"createdate\":\"2021-07-20 16:08:19\",\"file\":null,\"id_ofcustomer\":64,\"assign\":1,\"created_at\":\"2021-07-20T09:08:19.000000Z\",\"updated_at\":\"2021-07-21T02:49:16.000000Z\"}},\"user\":{\"id\":64,\"name\":null,\"fullname\":\"\\u00c2u Th\\u1ecb Thanh D\\u00e2n\",\"phone\":\"0346678265\",\"level\":3,\"email\":null,\"api_id\":5788,\"quantri_id\":null,\"created_date\":\"2021-07-20 13:37:15\",\"status\":0,\"addedby\":null,\"created_at\":\"2021-07-20T06:37:15.000000Z\",\"updated_at\":\"2021-07-20T06:37:15.000000Z\"}}', NULL, '2021-08-24 22:00:45', '2021-08-24 22:00:45'),
('140a54a2-0426-4f40-861e-0f26afe6a3df', 'App\\Notifications\\NotifyCustomer', 'App\\Models\\User', 64, '{\"notify\":{\"title\":\"C\\u00f3 1 y\\u00eau c\\u1ea7u c\\u1ee7a b\\u1ea1n \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c ph\\u1ea3n h\\u1ed3i\",\"link\":\"\\/requirements-customer\\/62\",\"content\":{\"id\":62,\"order_id\":1454,\"title\":\"Y\\u00eau c\\u1ea7u v\\u1edbi \\u0111\\u01a1n h\\u00e0ng 1454\",\"detail\":\"<p>dsfs<\\/p>\",\"status\":1,\"createdate\":\"2021-07-20 16:08:19\",\"file\":null,\"id_ofcustomer\":64,\"assign\":1,\"created_at\":\"2021-07-20T09:08:19.000000Z\",\"updated_at\":\"2021-07-21T02:49:16.000000Z\"}},\"user\":{\"id\":64,\"name\":null,\"fullname\":\"\\u00c2u Th\\u1ecb Thanh D\\u00e2n\",\"phone\":\"0346678265\",\"level\":3,\"email\":null,\"api_id\":5788,\"quantri_id\":null,\"created_date\":\"2021-07-20 13:37:15\",\"status\":0,\"addedby\":null,\"created_at\":\"2021-07-20T06:37:15.000000Z\",\"updated_at\":\"2021-07-20T06:37:15.000000Z\"}}', NULL, '2021-08-24 22:04:36', '2021-08-24 22:04:36'),
('c7d65987-eaeb-485e-a815-8c7e879038ec', 'App\\Notifications\\NotifyCustomer', 'App\\Models\\User', 62, '{\"notify\":{\"title\":\"C\\u00f3 1 y\\u00eau c\\u1ea7u c\\u1ee7a b\\u1ea1n \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c ph\\u1ea3n h\\u1ed3i\",\"link\":\"\\/requirements-customer\\/70\",\"content\":{\"id\":70,\"order_id\":1512,\"title\":\"Gi\\u00fap em s\\u1eeda website b\\u1ecb l\\u1ed7i\",\"detail\":\"<p>-kh&ocirc;ng hi\\u1ec3n th\\u1ecb header<\\/p>\",\"status\":1,\"createdate\":\"2021-07-21 14:09:29\",\"file\":null,\"id_ofcustomer\":62,\"assign\":1,\"created_at\":\"2021-07-21T07:09:29.000000Z\",\"updated_at\":\"2021-07-21T07:18:01.000000Z\"}},\"user\":{\"id\":62,\"name\":\"0917811957\",\"fullname\":\"Cao Th\\u1ecb Th\\u00f9y Chuy\\u00ean\",\"phone\":\"0977049068\",\"level\":3,\"email\":null,\"api_id\":6025,\"quantri_id\":null,\"created_date\":\"2021-07-20 10:52:46\",\"status\":0,\"addedby\":null,\"created_at\":\"2021-07-20T03:52:46.000000Z\",\"updated_at\":\"2021-08-25T06:37:50.000000Z\"}}', '2021-08-25 06:41:59', '2021-08-24 23:38:57', '2021-08-24 23:38:57'),
('825c61cf-8bf6-400f-bcb4-7ca46c54f09e', 'App\\Notifications\\NotifySupporter', 'App\\Models\\User', 19, '{\"notify\":{\"title\":\"C\\u00f3 1 ph\\u1ea3n h\\u1ed3i m\\u1edbi t\\u1eeb kh\\u00e1ch h\\u00e0ng\",\"link\":\"\\/requirements-supporter\\/70\",\"content\":{\"id\":70,\"order_id\":1512,\"title\":\"Gi\\u00fap em s\\u1eeda website b\\u1ecb l\\u1ed7i\",\"detail\":\"<p>-kh&ocirc;ng hi\\u1ec3n th\\u1ecb header<\\/p>\",\"status\":0,\"createdate\":\"2021-07-21 14:09:29\",\"file\":null,\"id_ofcustomer\":62,\"assign\":1,\"created_at\":\"2021-07-21T07:09:29.000000Z\",\"updated_at\":\"2021-08-25T06:42:14.000000Z\"}},\"user\":{\"id\":19,\"name\":null,\"fullname\":\"Tr\\u1ea7n V\\u0103n Tr\\u01b0\\u1eddng\",\"phone\":\"0342909557\",\"level\":2,\"email\":\"ittranvantruong@gmail.com\",\"api_id\":null,\"quantri_id\":\"truong\",\"created_date\":\"2020-10-06 16:30:29\",\"status\":0,\"addedby\":null,\"created_at\":null,\"updated_at\":\"2021-07-19T07:14:29.000000Z\"}}', NULL, '2021-08-24 23:48:52', '2021-08-24 23:48:52'),
('8de3f709-213a-4ad8-a05a-656c45b0702b', 'App\\Notifications\\NotifySupporter', 'App\\Models\\User', 19, '{\"notify\":{\"title\":\"C\\u00f3 1 ph\\u1ea3n h\\u1ed3i m\\u1edbi t\\u1eeb kh\\u00e1ch h\\u00e0ng\",\"link\":\"\\/requirements-supporter\\/70\",\"content\":{\"id\":70,\"order_id\":1512,\"title\":\"Gi\\u00fap em s\\u1eeda website b\\u1ecb l\\u1ed7i\",\"detail\":\"<p>-kh&ocirc;ng hi\\u1ec3n th\\u1ecb header<\\/p>\",\"status\":0,\"createdate\":\"2021-07-21 14:09:29\",\"file\":null,\"id_ofcustomer\":62,\"assign\":1,\"created_at\":\"2021-07-21T07:09:29.000000Z\",\"updated_at\":\"2021-08-25T06:42:14.000000Z\"}},\"user\":{\"id\":19,\"name\":null,\"fullname\":\"Tr\\u1ea7n V\\u0103n Tr\\u01b0\\u1eddng\",\"phone\":\"0342909557\",\"level\":2,\"email\":\"ittranvantruong@gmail.com\",\"api_id\":null,\"quantri_id\":\"truong\",\"created_date\":\"2020-10-06 16:30:29\",\"status\":0,\"addedby\":null,\"created_at\":null,\"updated_at\":\"2021-07-19T07:14:29.000000Z\"}}', NULL, '2021-08-24 23:49:43', '2021-08-24 23:49:43'),
('d49479d1-cf29-4753-9ff9-4c05693ea39c', 'App\\Notifications\\NotifyAdmin', 'App\\Models\\User', 1, '{\"notify\":{\"title\":\"C\\u00f3 m\\u1ed9t y\\u00eau c\\u1ea7u m\\u1edbi t\\u1eeb kh\\u00e1ch h\\u00e0ng\",\"link\":\"\\/requirements\\/90\",\"content\":{\"title\":\"Home Page\",\"detail\":\"<p>123123<\\/p>\",\"id_ofcustomer\":62,\"order_id\":\"1512\",\"updated_at\":\"2021-08-29T15:26:41.000000Z\",\"created_at\":\"2021-08-29T15:26:41.000000Z\",\"id\":90}},\"user\":{\"id\":1,\"name\":null,\"fullname\":\"B\\u00f9i Th\\u1ebf V\\u0169\",\"phone\":\"0335828494\",\"level\":1,\"email\":\"btvu282@gmail.com\",\"api_id\":null,\"quantri_id\":null,\"created_date\":\"2020-09-11 00:00:00\",\"status\":0,\"addedby\":null,\"created_at\":null,\"updated_at\":null}}', NULL, '2021-08-29 08:26:42', '2021-08-29 08:26:42'),
('167d7f69-5ab4-4d40-b747-cc4b113dad4b', 'App\\Notifications\\NotifyAdmin', 'App\\Models\\User', 1, '{\"notify\":{\"title\":\"C\\u00f3 m\\u1ed9t y\\u00eau c\\u1ea7u m\\u1edbi t\\u1eeb kh\\u00e1ch h\\u00e0ng\",\"link\":\"\\/requirements\\/91\",\"content\":{\"title\":\"3213\",\"detail\":\"<p>123213<\\/p>\",\"id_ofcustomer\":62,\"file\":\"1630250838.jpeg\",\"order_id\":\"1512\",\"updated_at\":\"2021-08-29T15:27:18.000000Z\",\"created_at\":\"2021-08-29T15:27:18.000000Z\",\"id\":91}},\"user\":{\"id\":1,\"name\":null,\"fullname\":\"B\\u00f9i Th\\u1ebf V\\u0169\",\"phone\":\"0335828494\",\"level\":1,\"email\":\"btvu282@gmail.com\",\"api_id\":null,\"quantri_id\":null,\"created_date\":\"2020-09-11 00:00:00\",\"status\":0,\"addedby\":null,\"created_at\":null,\"updated_at\":null}}', NULL, '2021-08-29 08:27:18', '2021-08-29 08:27:18');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `report`
--

CREATE TABLE `report` (
  `id` int(11) NOT NULL,
  `requirement_id` int(11) NOT NULL,
  `content` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `requirement`
--

CREATE TABLE `requirement` (
  `id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL COMMENT 'id đơn hàng lấy từ api',
  `title` text NOT NULL,
  `detail` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `file` text NOT NULL,
  `user_customer_id` int(11) NOT NULL COMMENT 'id khách hàng',
  `user_dev_id` int(11) DEFAULT NULL COMMENT 'id người phụ trách fb',
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `responses`
--

CREATE TABLE `responses` (
  `id` int(11) NOT NULL,
  `requirement_id` int(11) NOT NULL,
  `content` text DEFAULT NULL,
  `file` text DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fullname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1: Manager; 2: dev; 3: customer',
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `api_id` int(11) DEFAULT NULL,
  `quantri_id` int(11) DEFAULT NULL,
  `addedby` int(11) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `report`
--
ALTER TABLE `report`
  ADD KEY `requirement_id` (`requirement_id`);

--
-- Chỉ mục cho bảng `requirement`
--
ALTER TABLE `requirement`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_customer_id` (`user_customer_id`),
  ADD KEY `user_dev_id` (`user_dev_id`);

--
-- Chỉ mục cho bảng `responses`
--
ALTER TABLE `responses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `requirement_id` (`requirement_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `email` (`email`),
  ADD KEY `id` (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `requirement`
--
ALTER TABLE `requirement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `responses`
--
ALTER TABLE `responses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `report`
--
ALTER TABLE `report`
  ADD CONSTRAINT `report_ibfk_1` FOREIGN KEY (`requirement_id`) REFERENCES `requirement` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `requirement`
--
ALTER TABLE `requirement`
  ADD CONSTRAINT `requirement_ibfk_1` FOREIGN KEY (`user_customer_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `requirement_ibfk_2` FOREIGN KEY (`user_dev_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `responses`
--
ALTER TABLE `responses`
  ADD CONSTRAINT `responses_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `responses_ibfk_2` FOREIGN KEY (`requirement_id`) REFERENCES `requirement` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
