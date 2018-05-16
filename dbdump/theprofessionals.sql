-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 16, 2018 at 10:22 AM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 5.5.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `theprofessionals`
--

-- --------------------------------------------------------

--
-- Table structure for table `audit_trails`
--

CREATE TABLE `audit_trails` (
  `id` int(10) UNSIGNED NOT NULL,
  `log` text COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `audit_trails`
--

INSERT INTO `audit_trails` (`id`, `log`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Maiores perferendis reiciendis et laborum quod eum. Vero cupiditate aliquam qui eveniet distinctio minus. Qui reprehenderit maxime rerum. A delectus qui iusto natus placeat quia.', 6, '2018-02-22 05:50:17', '2018-02-22 05:50:17'),
(2, 'Aut natus iste dicta iste sed vitae voluptatum. Amet animi quo sunt voluptatem suscipit. Cumque et magnam dolorem.', 8, '2018-02-22 05:50:17', '2018-02-22 05:50:17'),
(3, 'Consequatur numquam sit accusamus qui consectetur velit. Corrupti optio minus vero iste et. Ut et sunt earum omnis officiis autem. Omnis labore voluptatum quo quia assumenda qui.', 4, '2018-02-22 05:50:17', '2018-02-22 05:50:17'),
(4, 'Eos id tempore quisquam omnis qui necessitatibus aut. Consequuntur aperiam maiores commodi beatae. Sint libero id modi.', 4, '2018-02-22 05:50:17', '2018-02-22 05:50:17'),
(5, 'Est velit odit quos sed. Voluptate numquam a molestias ducimus. Minima ipsam vel dolores quaerat.', 3, '2018-02-22 05:50:17', '2018-02-22 05:50:17'),
(6, 'Est quod assumenda modi illo. Asperiores enim quia ut error veniam rerum mollitia.', 2, '2018-02-22 05:50:17', '2018-02-22 05:50:17'),
(7, 'Sed omnis autem ratione tempora velit explicabo. Placeat quia quasi consequatur alias. Quia libero sunt est dolores numquam. Fuga nihil id impedit laudantium et eum.', 4, '2018-02-22 05:50:17', '2018-02-22 05:50:17'),
(8, 'Enim nisi ipsum tempore est ratione. Eveniet ea minima est mollitia qui enim. Eius earum provident alias quidem. Qui non qui officia optio dolorem repellat.', 1, '2018-02-22 05:50:17', '2018-02-22 05:50:17'),
(9, 'Et ipsam totam voluptatem. Alias sint magnam nobis impedit. Magni quis et id ipsum rerum culpa qui.', 9, '2018-02-22 05:50:17', '2018-02-22 05:50:17'),
(10, 'Non optio enim quod corporis dolorem officiis. Cumque quo a consectetur in ipsum. Accusantium quos numquam ex temporibus cupiditate. Odio qui necessitatibus id libero qui fugiat excepturi.', 8, '2018-02-22 05:50:17', '2018-02-22 05:50:17'),
(11, 'logged in', 2, '2018-02-22 06:58:45', '2018-02-22 06:58:45'),
(12, 'logged in', 2, '2018-02-22 09:16:25', '2018-02-22 09:16:25'),
(13, 'logged in', 2, '2018-03-07 07:30:42', '2018-03-07 07:30:42'),
(14, 'modified property #10', 2, '2018-03-07 07:31:31', '2018-03-07 07:31:31'),
(15, 'modified property #10', 2, '2018-03-07 07:32:44', '2018-03-07 07:32:44'),
(16, 'modified property #10', 2, '2018-03-07 07:46:34', '2018-03-07 07:46:34'),
(17, 'generated reports for property list with filter (include_sales_zero=true&include_rentals_zero=true&&&&&)', 2, '2018-03-07 08:10:17', '2018-03-07 08:10:17'),
(18, 'generated sales reports for property list with filter (undefined)', 2, '2018-03-07 08:11:27', '2018-03-07 08:11:27'),
(19, 'generated report for property #10', 2, '2018-03-07 08:12:34', '2018-03-07 08:12:34'),
(20, 'generated reports for property list with filter (undefined)', 2, '2018-03-07 08:16:59', '2018-03-07 08:16:59'),
(21, 'generated report for property #10', 2, '2018-03-07 08:17:04', '2018-03-07 08:17:04'),
(22, 'generated report for property #10', 2, '2018-03-07 08:19:15', '2018-03-07 08:19:15'),
(23, 'generated report for property #10', 2, '2018-03-07 08:21:20', '2018-03-07 08:21:20'),
(24, 'generated report for property #10', 2, '2018-03-07 08:22:16', '2018-03-07 08:22:16'),
(25, 'generated report for property #10', 2, '2018-03-07 08:22:43', '2018-03-07 08:22:43'),
(26, 'generated report for property #10', 2, '2018-03-07 08:23:04', '2018-03-07 08:23:04'),
(27, 'generated report for property #10', 2, '2018-03-07 08:23:56', '2018-03-07 08:23:56'),
(28, 'generated report for property #10', 2, '2018-03-07 08:24:53', '2018-03-07 08:24:53'),
(29, 'generated report for property #10', 2, '2018-03-07 08:26:11', '2018-03-07 08:26:11'),
(30, 'generated report for property #10', 2, '2018-03-07 08:26:49', '2018-03-07 08:26:49'),
(31, 'generated report for property #10', 2, '2018-03-07 08:27:10', '2018-03-07 08:27:10'),
(32, 'generated report for property #10', 2, '2018-03-07 08:27:40', '2018-03-07 08:27:40'),
(33, 'generated report for property #10', 2, '2018-03-07 08:28:28', '2018-03-07 08:28:28'),
(34, 'generated report for property #10', 2, '2018-03-07 08:29:38', '2018-03-07 08:29:38'),
(35, 'generated report for property #10', 2, '2018-03-07 08:30:03', '2018-03-07 08:30:03'),
(36, 'logged in', 2, '2018-03-07 08:31:23', '2018-03-07 08:31:23'),
(37, 'generated report for property #10', 2, '2018-03-07 08:31:29', '2018-03-07 08:31:29'),
(38, 'logged in', 2, '2018-03-07 11:10:01', '2018-03-07 11:10:01'),
(39, 'generated sales reports for property list with filter (undefined)', 2, '2018-03-07 11:19:17', '2018-03-07 11:19:17'),
(40, 'logged in', 2, '2018-03-07 14:04:37', '2018-03-07 14:04:37'),
(41, 'generated reports for property list with filter (undefined)', 2, '2018-03-07 14:31:07', '2018-03-07 14:31:07'),
(42, 'generated report for property #10', 2, '2018-03-07 14:31:10', '2018-03-07 14:31:10'),
(43, 'generated report for property #10', 2, '2018-03-07 15:01:37', '2018-03-07 15:01:37'),
(44, 'generated report for property #10', 2, '2018-03-07 15:02:03', '2018-03-07 15:02:03'),
(45, 'generated report for property #10', 2, '2018-03-07 15:04:01', '2018-03-07 15:04:01'),
(46, 'generated report for property #10', 2, '2018-03-07 15:04:01', '2018-03-07 15:04:01'),
(47, 'generated report for property #10', 2, '2018-03-07 15:04:17', '2018-03-07 15:04:17'),
(48, 'generated reports for property list with filter (undefined)', 2, '2018-03-07 15:04:34', '2018-03-07 15:04:34'),
(49, 'logged in', 2, '2018-03-07 15:04:49', '2018-03-07 15:04:49'),
(50, 'generated report for property #10', 2, '2018-03-07 15:04:58', '2018-03-07 15:04:58'),
(51, 'generated report for property #10', 2, '2018-03-07 15:09:23', '2018-03-07 15:09:23'),
(52, 'generated report for property #10', 2, '2018-03-07 15:09:27', '2018-03-07 15:09:27'),
(53, 'generated report for property #10', 2, '2018-03-07 15:09:29', '2018-03-07 15:09:29'),
(54, 'generated report for property #10', 2, '2018-03-07 15:09:30', '2018-03-07 15:09:30'),
(55, 'generated report for property #10', 2, '2018-03-07 15:32:22', '2018-03-07 15:32:22'),
(56, 'generated report for property #10', 2, '2018-03-07 15:32:24', '2018-03-07 15:32:24'),
(57, 'generated report for property #10', 2, '2018-03-07 15:32:28', '2018-03-07 15:32:28'),
(58, 'generated report for property #10', 2, '2018-03-07 15:32:29', '2018-03-07 15:32:29'),
(59, 'generated report for property #10', 2, '2018-03-07 15:32:30', '2018-03-07 15:32:30'),
(60, 'generated report for property #10', 2, '2018-03-07 15:33:13', '2018-03-07 15:33:13'),
(61, 'generated report for property #10', 2, '2018-03-07 15:34:08', '2018-03-07 15:34:08'),
(62, 'generated report for property #10', 2, '2018-03-07 15:34:09', '2018-03-07 15:34:09'),
(63, 'generated report for property #10', 2, '2018-03-07 15:34:12', '2018-03-07 15:34:12'),
(64, 'generated reports for property list with filter (undefined)', 2, '2018-03-07 15:34:17', '2018-03-07 15:34:17'),
(65, 'generated reports for property list with filter (undefined)', 2, '2018-03-07 15:34:21', '2018-03-07 15:34:21'),
(66, 'generated report for property #10', 2, '2018-03-07 15:34:23', '2018-03-07 15:34:23'),
(67, 'generated reports for property list with filter (undefined)', 2, '2018-03-07 15:34:25', '2018-03-07 15:34:25'),
(68, 'generated report for property #10', 2, '2018-03-07 15:34:36', '2018-03-07 15:34:36'),
(69, 'generated report for property #10', 2, '2018-03-07 15:34:38', '2018-03-07 15:34:38'),
(70, 'generated reports for property list with filter (undefined)', 2, '2018-03-07 15:35:08', '2018-03-07 15:35:08'),
(71, 'generated report for property #10', 2, '2018-03-07 15:35:10', '2018-03-07 15:35:10'),
(72, 'generated reports for property list with filter (undefined)', 2, '2018-03-07 15:35:27', '2018-03-07 15:35:27'),
(73, 'generated report for property #10', 2, '2018-03-07 15:35:31', '2018-03-07 15:35:31'),
(74, 'generated report for property #10', 2, '2018-03-07 15:35:41', '2018-03-07 15:35:41'),
(75, 'generated report for property #10', 2, '2018-03-07 15:35:43', '2018-03-07 15:35:43'),
(76, 'generated reports for property list with filter (undefined)', 2, '2018-03-07 15:37:04', '2018-03-07 15:37:04'),
(77, 'generated report for property #10', 2, '2018-03-07 15:37:05', '2018-03-07 15:37:05'),
(78, 'generated reports for property list with filter (undefined)', 2, '2018-03-07 15:37:07', '2018-03-07 15:37:07'),
(79, 'generated report for property #10', 2, '2018-03-07 15:37:17', '2018-03-07 15:37:17'),
(80, 'generated report for property #10', 2, '2018-03-07 15:37:19', '2018-03-07 15:37:19'),
(81, 'generated report for property #10', 2, '2018-03-07 15:37:21', '2018-03-07 15:37:21'),
(82, 'generated report for property #10', 2, '2018-03-07 15:37:41', '2018-03-07 15:37:41'),
(83, 'generated report for property #10', 2, '2018-03-07 15:37:43', '2018-03-07 15:37:43'),
(84, 'generated report for property #10', 2, '2018-03-07 15:38:39', '2018-03-07 15:38:39'),
(85, 'generated report for property #10', 2, '2018-03-07 15:38:45', '2018-03-07 15:38:45'),
(86, 'generated reports for property list with filter (undefined)', 2, '2018-03-07 15:38:52', '2018-03-07 15:38:52'),
(87, 'generated report for property #10', 2, '2018-03-07 15:38:54', '2018-03-07 15:38:54'),
(88, 'generated reports for property list with filter (undefined)', 2, '2018-03-07 15:38:55', '2018-03-07 15:38:55'),
(89, 'generated reports for property list with filter (undefined)', 2, '2018-03-07 15:40:37', '2018-03-07 15:40:37'),
(90, 'generated report for property #10', 2, '2018-03-07 15:40:38', '2018-03-07 15:40:38'),
(91, 'generated reports for property list with filter (undefined)', 2, '2018-03-07 15:40:39', '2018-03-07 15:40:39'),
(92, 'generated report for property #10', 2, '2018-03-07 15:40:42', '2018-03-07 15:40:42'),
(93, 'generated report for property #10', 2, '2018-03-07 15:41:04', '2018-03-07 15:41:04'),
(94, 'generated reports for property list with filter (undefined)', 2, '2018-03-07 15:41:08', '2018-03-07 15:41:08'),
(95, 'generated report for property #10', 2, '2018-03-07 15:41:10', '2018-03-07 15:41:10'),
(96, 'generated reports for property list with filter (undefined)', 2, '2018-03-07 15:41:10', '2018-03-07 15:41:10'),
(97, 'logged in', 2, '2018-03-07 16:06:23', '2018-03-07 16:06:23'),
(98, 'generated reports for property list with filter (undefined)', 2, '2018-03-07 16:06:49', '2018-03-07 16:06:49'),
(99, 'generated reports for property list with filter (undefined)', 2, '2018-03-07 16:06:59', '2018-03-07 16:06:59'),
(100, 'generated sales reports for property list with filter (undefined)', 2, '2018-03-07 16:07:17', '2018-03-07 16:07:17'),
(101, 'generated reports for property list with filter (include_sales_zero=true&include_rentals_zero=true&&&&&)', 2, '2018-03-07 16:07:25', '2018-03-07 16:07:25'),
(102, 'generated report for property #10', 2, '2018-03-07 16:07:34', '2018-03-07 16:07:34'),
(103, 'generated report for property #10', 2, '2018-03-07 16:07:46', '2018-03-07 16:07:46'),
(104, 'generated reports for property list with filter (undefined)', 2, '2018-03-07 16:07:55', '2018-03-07 16:07:55'),
(105, 'generated reports for property list with filter (undefined)', 2, '2018-03-07 16:08:01', '2018-03-07 16:08:01'),
(106, 'generated report for property #10', 2, '2018-03-07 16:08:10', '2018-03-07 16:08:10'),
(107, 'logged in', 2, '2018-03-20 22:30:50', '2018-03-20 22:30:50'),
(108, 'logged out', 2, '2018-03-20 22:31:09', '2018-03-20 22:31:09'),
(109, 'logged in', 1, '2018-03-20 22:31:17', '2018-03-20 22:31:17'),
(110, 'logged out', 1, '2018-03-20 22:40:15', '2018-03-20 22:40:15'),
(111, 'logged in', 2, '2018-03-20 22:40:22', '2018-03-20 22:40:22'),
(112, 'logged in', 2, '2018-03-26 04:13:32', '2018-03-26 04:13:32'),
(113, 'generated reports for property list with filter (undefined)', 2, '2018-03-26 05:04:38', '2018-03-26 05:04:38'),
(114, 'generated report for property #10', 2, '2018-03-26 05:04:44', '2018-03-26 05:04:44'),
(115, 'generated reports for property list with filter (undefined)', 2, '2018-03-26 05:04:59', '2018-03-26 05:04:59'),
(116, 'generated report for property #10', 2, '2018-03-26 05:05:02', '2018-03-26 05:05:02'),
(117, 'logged in', 2, '2018-03-26 05:17:44', '2018-03-26 05:17:44'),
(118, 'generated sales reports for property list with filter (undefined)', 2, '2018-03-26 05:22:24', '2018-03-26 05:22:24'),
(119, 'modified sales #10 for Property #9', 2, '2018-03-26 05:22:51', '2018-03-26 05:22:51'),
(120, 'modified sales #10 for Property #9', 2, '2018-03-26 05:25:55', '2018-03-26 05:25:55'),
(121, 'modified sales #10 for Property #9', 2, '2018-03-26 05:35:55', '2018-03-26 05:35:55'),
(122, 'generated reports for property list with filter (price_min=12312312&price_max=123123&include_sales_zero=true&include_rentals_zero=true&&&&&)', 2, '2018-03-26 05:39:13', '2018-03-26 05:39:13'),
(123, 'generated reports for property list with filter (price_min=4000&price_max=123123&include_sales_zero=true&include_rentals_zero=true&&&&&)', 2, '2018-03-26 05:39:38', '2018-03-26 05:39:38'),
(124, 'generated reports for property list with filter (price_min=4000&price_max=123123&include_sales_zero=true&include_rentals_zero=true&&&&&)', 2, '2018-03-26 05:40:11', '2018-03-26 05:40:11'),
(125, 'generated sales reports for property list with filter (undefined)', 2, '2018-03-26 05:46:44', '2018-03-26 05:46:44'),
(126, 'modified sales #10 for Property #9', 2, '2018-03-26 05:47:30', '2018-03-26 05:47:30'),
(127, 'generated report for property #10', 2, '2018-03-26 05:48:48', '2018-03-26 05:48:48'),
(128, 'generated report for property #10', 2, '2018-03-26 05:49:21', '2018-03-26 05:49:21'),
(129, 'Extracted csv report for property #10', 2, '2018-03-26 05:49:26', '2018-03-26 05:49:26'),
(130, 'generated reports for property list with filter (undefined)', 2, '2018-03-26 06:15:34', '2018-03-26 06:15:34'),
(131, 'generated report for property #9', 2, '2018-03-26 06:15:37', '2018-03-26 06:15:37'),
(132, 'Extracted pdf report for property #9', 2, '2018-03-26 06:15:40', '2018-03-26 06:15:40'),
(133, 'generated reports for property list with filter (undefined)', 2, '2018-03-26 06:16:03', '2018-03-26 06:16:03'),
(134, 'generated report for property #10', 2, '2018-03-26 06:16:08', '2018-03-26 06:16:08'),
(135, 'Extracted pdf report for property #10', 2, '2018-03-26 06:16:12', '2018-03-26 06:16:12'),
(136, 'logged in', 2, '2018-03-26 06:20:14', '2018-03-26 06:20:14'),
(137, 'generated sales reports for property list with filter (undefined)', 2, '2018-03-26 07:09:55', '2018-03-26 07:09:55'),
(138, 'generated sales reports for property list with filter (undefined)', 2, '2018-03-26 07:10:12', '2018-03-26 07:10:12'),
(139, 'modified sales #10 for Property #9', 2, '2018-03-26 07:10:23', '2018-03-26 07:10:23'),
(140, 'added sales for property #9', 2, '2018-03-26 07:11:24', '2018-03-26 07:11:24'),
(141, 'modified sales #11 for Property #9', 2, '2018-03-26 07:11:42', '2018-03-26 07:11:42'),
(142, 'added sales for property #9', 2, '2018-03-26 07:12:09', '2018-03-26 07:12:09'),
(143, 'generated reports for property list with filter (include_sales_zero=true&include_rentals_zero=true&&&&&)', 2, '2018-03-26 07:13:01', '2018-03-26 07:13:01'),
(144, 'generated reports for property list with filter (include_sales_zero=true&include_rentals_zero=true&&&&&)', 2, '2018-03-26 07:13:15', '2018-03-26 07:13:15'),
(145, 'logged in', 2, '2018-03-26 07:35:55', '2018-03-26 07:35:55'),
(146, 'generated reports for property list with filter (undefined)', 2, '2018-03-26 07:51:29', '2018-03-26 07:51:29'),
(147, 'generated report for property #10', 2, '2018-03-26 07:51:36', '2018-03-26 07:51:36'),
(148, 'generated reports for property list with filter (undefined)', 2, '2018-03-26 07:51:38', '2018-03-26 07:51:38'),
(149, 'generated reports for property list with filter (include_sales_zero=true&include_rentals_zero=true&&&&&)', 2, '2018-03-26 07:51:42', '2018-03-26 07:51:42'),
(150, 'generated sales reports for property list with filter (undefined)', 2, '2018-03-26 07:51:48', '2018-03-26 07:51:48'),
(151, 'generated reports for property list with filter (include_sales_zero=true&include_rentals_zero=true&&&&&)', 2, '2018-03-26 07:51:52', '2018-03-26 07:51:52'),
(152, 'generated rentals reports for property list with filter (undefined)', 2, '2018-03-26 07:51:59', '2018-03-26 07:51:59'),
(153, 'generated report for property #10', 2, '2018-03-26 07:52:15', '2018-03-26 07:52:15'),
(154, 'generated reports for property list with filter (undefined)', 2, '2018-03-26 08:29:27', '2018-03-26 08:29:27'),
(155, 'logged in', 2, '2018-03-26 08:37:59', '2018-03-26 08:37:59'),
(156, 'generated reports for property list with filter (undefined)', 2, '2018-03-26 08:38:05', '2018-03-26 08:38:05'),
(157, 'generated reports for property list with filter (include_sales_zero=true&include_rentals_zero=true&&&&&)', 2, '2018-03-26 08:38:09', '2018-03-26 08:38:09'),
(158, 'generated reports for property list with filter (include_sales_zero=true&include_rentals_zero=true&&&&&)', 2, '2018-03-26 08:38:16', '2018-03-26 08:38:16'),
(159, 'generated reports for property list with filter (undefined)', 2, '2018-03-26 09:02:44', '2018-03-26 09:02:44'),
(160, 'generated reports for property list with filter (include_sales_zero=true&include_rentals_zero=true&&&&&)', 2, '2018-03-26 09:02:49', '2018-03-26 09:02:49'),
(161, 'logged in', 2, '2018-03-27 01:08:30', '2018-03-27 01:08:30'),
(162, 'generated reports for property list with filter (undefined)', 2, '2018-03-27 01:17:20', '2018-03-27 01:17:20'),
(163, 'generated reports for property list with filter (include_sales_zero=true&include_rentals_zero=true&&&&&)', 2, '2018-03-27 01:34:48', '2018-03-27 01:34:48'),
(164, 'generated sales reports for property list with filter (undefined)', 2, '2018-03-27 01:34:52', '2018-03-27 01:34:52'),
(165, 'generated reports for property list with filter (undefined)', 2, '2018-03-27 01:41:49', '2018-03-27 01:41:49'),
(166, 'generated reports for property list with filter (include_sales_zero=true&include_rentals_zero=true&&&&&)', 2, '2018-03-27 01:42:00', '2018-03-27 01:42:00'),
(167, 'generated reports for property list with filter (undefined)', 2, '2018-03-27 01:42:08', '2018-03-27 01:42:08'),
(168, 'generated reports for property list with filter (undefined)', 2, '2018-03-27 01:44:42', '2018-03-27 01:44:42'),
(169, 'generated reports for property list with filter (undefined)', 2, '2018-03-27 01:45:34', '2018-03-27 01:45:34'),
(170, 'generated reports for property list with filter (undefined)', 2, '2018-03-27 01:46:03', '2018-03-27 01:46:03'),
(171, 'generated reports for property list with filter (undefined)', 2, '2018-03-27 01:46:48', '2018-03-27 01:46:48'),
(172, 'generated reports for property list with filter (undefined)', 2, '2018-03-27 01:47:49', '2018-03-27 01:47:49'),
(173, 'generated reports for property list with filter (undefined)', 2, '2018-03-27 01:49:03', '2018-03-27 01:49:03'),
(174, 'generated reports for property list with filter (undefined)', 2, '2018-03-27 01:49:12', '2018-03-27 01:49:12'),
(175, 'generated reports for property list with filter (include_sales_zero=true&include_rentals_zero=true&&&&&)', 2, '2018-03-27 01:49:21', '2018-03-27 01:49:21'),
(176, 'generated sales reports for property list with filter (undefined)', 2, '2018-03-27 01:49:27', '2018-03-27 01:49:27'),
(177, 'generated reports for property list with filter (undefined)', 2, '2018-03-27 01:49:35', '2018-03-27 01:49:35'),
(178, 'generated reports for property list with filter (undefined)', 2, '2018-03-27 01:49:43', '2018-03-27 01:49:43'),
(179, 'generated report for property #10', 2, '2018-03-27 01:50:02', '2018-03-27 01:50:02'),
(180, 'logged in', 2, '2018-03-27 03:41:17', '2018-03-27 03:41:17'),
(181, 'generated rentals reports for property list with filter (undefined)', 2, '2018-03-27 03:45:58', '2018-03-27 03:45:58'),
(182, 'logged in', 2, '2018-03-27 05:22:37', '2018-03-27 05:22:37'),
(183, 'generated reports for property list with filter (include_sales_zero=true&include_rentals_zero=true&&&&&)', 2, '2018-03-27 05:22:46', '2018-03-27 05:22:46'),
(184, 'generated reports for property list with filter (undefined)', 2, '2018-03-27 05:22:55', '2018-03-27 05:22:55'),
(185, 'generated reports for property list with filter (undefined)', 2, '2018-03-27 05:24:10', '2018-03-27 05:24:10'),
(186, 'generated reports for property list with filter (undefined)', 2, '2018-03-27 05:24:12', '2018-03-27 05:24:12'),
(187, 'logged in', 2, '2018-03-28 19:19:47', '2018-03-28 19:19:47'),
(188, 'generated sales reports for property list with filter (undefined)', 2, '2018-03-28 19:37:26', '2018-03-28 19:37:26'),
(189, 'modified sales #71 for Property #839', 2, '2018-03-28 19:37:47', '2018-03-28 19:37:47'),
(190, 'modified sales #71 for Property #839', 2, '2018-03-28 19:38:07', '2018-03-28 19:38:07'),
(191, 'generated reports for property list with filter (include_sales_zero=true&include_rentals_zero=true&&&&&)', 2, '2018-03-28 19:38:29', '2018-03-28 19:38:29'),
(192, 'generated sales reports for property list with filter (undefined)', 2, '2018-03-28 19:43:52', '2018-03-28 19:43:52'),
(193, 'modified sales #71 for Property #839', 2, '2018-03-28 19:44:01', '2018-03-28 19:44:01'),
(194, 'generated rentals reports for property list with filter (undefined)', 2, '2018-03-28 19:44:05', '2018-03-28 19:44:05'),
(195, 'modified property #840', 2, '2018-03-28 19:47:50', '2018-03-28 19:47:50'),
(196, 'generated reports for property list with filter (include_sales_zero=true&include_rentals_zero=true&&&&&)', 2, '2018-03-28 19:57:19', '2018-03-28 19:57:19'),
(197, 'generated sales reports for property list with filter (undefined)', 2, '2018-03-28 19:57:49', '2018-03-28 19:57:49'),
(198, 'modified sales #71 for Property #839', 2, '2018-03-28 19:57:56', '2018-03-28 19:57:56'),
(199, 'generated sales reports for property list with filter (undefined)', 2, '2018-03-28 19:58:03', '2018-03-28 19:58:03'),
(200, 'modified sales #72 for Property #838', 2, '2018-03-28 19:58:11', '2018-03-28 19:58:11'),
(201, 'modified sales #72 for Property #838', 2, '2018-03-28 19:58:16', '2018-03-28 19:58:16'),
(202, 'modified sales #72 for Property #838', 2, '2018-03-28 19:58:23', '2018-03-28 19:58:23'),
(203, 'modified sales #72 for Property #838', 2, '2018-03-28 19:58:26', '2018-03-28 19:58:26'),
(204, 'deleted sales #72', 2, '2018-03-28 19:58:28', '2018-03-28 19:58:28');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` int(10) UNSIGNED NOT NULL,
  `file_name` text COLLATE utf8_unicode_ci NOT NULL,
  `file_size` text COLLATE utf8_unicode_ci NOT NULL,
  `file_mime` text COLLATE utf8_unicode_ci NOT NULL,
  `file_path` text COLLATE utf8_unicode_ci NOT NULL,
  `source_id` int(11) NOT NULL,
  `source_table` text COLLATE utf8_unicode_ci NOT NULL,
  `media_type` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `file_name`, `file_size`, `file_mime`, `file_path`, `source_id`, `source_table`, `media_type`, `created_at`, `updated_at`) VALUES
(1, '5a9f792907e7a___goku.jpg', '149796', 'image/jpeg', 'uploads/photo/5a9f792907e7a___goku.jpg', 10, 'properties', 'image', '2018-03-07 07:31:21', '2018-03-07 07:31:31'),
(2, '5a9f79786db03___cart.png', '19584', 'image/png', 'uploads/photo/5a9f79786db03___cart.png', 10, 'properties', 'image', '2018-03-07 07:32:40', '2018-03-07 07:32:44'),
(3, '5a9f79786db03___IMG_11102016_194217.png', '14995', 'image/png', 'uploads/photo/5a9f79786db03___IMG_11102016_194217.png', 10, 'properties', 'image', '2018-03-07 07:32:40', '2018-03-07 07:32:44'),
(4, '5a9f7978945df___wi-fi-logo-E7E9C1B5C6-seeklogo.com.png', '19931', 'image/png', 'uploads/photo/5a9f7978945df___wi-fi-logo-E7E9C1B5C6-seeklogo.com.png', 10, 'properties', 'image', '2018-03-07 07:32:40', '2018-03-07 07:32:44'),
(5, '5a9f7bf552fd4___SVIS-Property-Snapshot-10 (1).pdf', '3233', 'application/pdf', 'uploads/file/5a9f7bf552fd4___SVIS-Property-Snapshot-10 (1).pdf', 0, 'properties', 'attached', '2018-03-07 07:43:17', '2018-03-07 07:43:17'),
(6, '5a9f7cb7b0291___SVIS-Property-10 (2).pdf', '4613', 'application/pdf', 'uploads/file/5a9f7cb7b0291___SVIS-Property-10 (2).pdf', 10, 'properties', 'attached', '2018-03-07 07:46:31', '2018-03-07 07:46:34'),
(7, '5a9f7d2aea99f___SVIS-Property-Snapshot-10 (1).pdf', '3233', 'application/pdf', 'uploads/file/5a9f7d2aea99f___SVIS-Property-Snapshot-10 (1).pdf', 0, 'properties', 'attached', '2018-03-07 07:48:26', '2018-03-07 07:48:26'),
(8, '5a9f7d3c00cf0___SVIS-Property-10 (1).pdf', '4335', 'application/pdf', 'uploads/file/5a9f7d3c00cf0___SVIS-Property-10 (1).pdf', 0, 'properties', 'attached', '2018-03-07 07:48:44', '2018-03-07 07:48:44'),
(9, '5a9f7de534c79___Invoice # WGT002.pdf', '13150', 'application/pdf', 'uploads/file/5a9f7de534c79___Invoice # WGT002.pdf', 0, 'properties', 'attached', '2018-03-07 07:51:33', '2018-03-07 07:51:33'),
(10, '5a9f81d9cd974___SVIS-Property-10 (2).pdf', '4613', 'application/pdf', 'uploads/file/5a9f81d9cd974___SVIS-Property-10 (2).pdf', 0, 'properties', 'attached', '2018-03-07 08:08:25', '2018-03-07 08:08:25'),
(11, '5a9f828399af8___SVIS-Property-Snapshot-10 (1).pdf', '3233', 'application/pdf', 'uploads/file/5a9f828399af8___SVIS-Property-Snapshot-10 (1).pdf', 0, 'valuations', 'attached', '2018-03-07 08:11:15', '2018-03-07 08:11:15');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2017_08_30_120501_create_propertyuse', 1),
('2017_08_31_024913_create_propertyclass', 1),
('2017_08_31_041644_create_propertyleasetype', 1),
('2017_08_31_042254_create_propertycity', 1),
('2017_09_01_010050_create_propertysuburb', 1),
('2017_09_05_142802_create_property', 1),
('2017_09_16_085909_create_valuations_table', 1),
('2017_09_17_060627_create_sales_table', 1),
('2017_09_20_201237_create_audittrail_table', 1),
('2017_09_28_060143_create_media_table', 1),
('2017_11_21_165545_update_sales_table', 1),
('2017_11_22_001808_update_valuations_table', 1),
('2017_11_29_180243_update_sales_b_table', 1),
('2017_12_01_133941_update_properties_table', 1),
('2017_12_04_030826_update_sales_c_table', 1),
('2017_12_05_125049_update_valuations_b_table', 1),
('2017_12_19_193223_update_valuations_c_table', 1),
('2018_01_09_184228_create_rental_table', 1),
('2018_01_24_061430_create_rental_areas_table', 1),
('2018_01_24_130057_create_rental_inclusions_table', 1),
('2018_01_24_130057_create_rental_maintenances_table', 1),
('2018_01_24_130057_create_rental_periods_table', 1),
('2018_01_24_130057_create_rental_review_methods_table', 1),
('2018_01_31_234657_update_properties_b_table', 1),
('2018_02_02_165758_update_rental_table', 1),
('2018_02_02_180604_create_rentals_inclusions_tier_table', 1),
('2018_02_02_180604_create_rentals_ratings_tier_table', 1),
('2018_02_15_052548_update_rental_b_table', 1),
('2018_02_22_134335_update_rental_c_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `properties`
--

CREATE TABLE `properties` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `property_use_id` int(11) NOT NULL,
  `property_class_id` int(11) NOT NULL,
  `property_lease_type_id` int(11) NOT NULL,
  `property_city_id` int(11) NOT NULL,
  `property_suburb_id` int(11) NOT NULL,
  `port` text COLLATE utf8_unicode_ci NOT NULL,
  `sec` text COLLATE utf8_unicode_ci NOT NULL,
  `lot` text COLLATE utf8_unicode_ci NOT NULL,
  `unit` text COLLATE utf8_unicode_ci NOT NULL,
  `owner` text COLLATE utf8_unicode_ci NOT NULL,
  `is_archive` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_id` int(11) NOT NULL,
  `last_edited_by_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `properties`
--

INSERT INTO `properties` (`id`, `name`, `description`, `property_use_id`, `property_class_id`, `property_lease_type_id`, `property_city_id`, `property_suburb_id`, `port`, `sec`, `lot`, `unit`, `owner`, `is_archive`, `created_at`, `updated_at`, `created_by_id`, `last_edited_by_id`) VALUES
(1, '1', 'Warehouse and staff accommodation.', 3, 8, 3, 14, 32, '', '15', '3', '', 'P&L Franklin', 0, '2018-01-02 03:29:35', '2018-01-14 09:52:01', 11, 10),
(2, '2', 'Guest House plus staff accomodation and managers residence in one complex.', 2, 7, 1, 14, 19, '', '59', '1-6', 'Guest House', 'New Tribes Mission', 0, '2018-01-02 03:47:55', '2018-01-14 09:50:46', 11, 10),
(3, '', 'A unique commercial property, for investment or own use, strategically located near the main Lae Wharf. Comprising 5,300 sq.m this Business Lease which expires 2050 is zoned Light Industrial.', 2, 4, 2, 14, 32, '', '16', '5', '', 'Mainland Holdings Ltd', 0, '2018-01-02 03:54:52', '2018-01-14 10:22:28', 11, 10),
(4, '', 'A low set 4 bedroom house medium covenant', 4, 13, 1, 14, 99, '', '130', '31', '', 'Donna Harvey-Hall', 0, '2018-01-02 04:01:19', '2018-01-14 10:34:22', 11, 10),
(5, '', 'A hiset three bedroom house with staff accom below, genset, ensuite.', 4, 14, 1, 14, 14, '', '93', '23', '', 'BOC', 0, '2018-01-02 04:06:42', '2018-01-14 10:47:27', 11, 10),
(6, '6', 'N/A', 3, 8, 3, 14, 32, '', '50', '23', '', 'NSL', 0, '2018-01-02 04:12:06', '2018-01-02 04:12:06', 11, 11),
(7, '7', 'N/A', 3, 8, 3, 14, 32, '', '34', '5,6,19,20', '', 'NSL', 0, '2018-01-02 04:29:24', '2018-01-02 04:29:24', 11, 11),
(8, '8', 'N/A', 4, 16, 1, 14, 14, '', '69', '13', '', 'SVS', 0, '2018-01-02 05:15:00', '2018-01-02 05:15:00', 11, 11),
(9, '9', 'N/A', 4, 13, 1, 14, 7, '', '103', '11', '', 'Deidre Ryan', 0, '2018-01-02 05:20:14', '2018-01-02 05:23:00', 11, 11),
(10, '10', 'N/A', 4, 13, 1, 14, 14, '', '311', '3', '', 'Amalpak', 0, '2018-01-02 05:28:12', '2018-01-02 05:28:12', 11, 11),
(11, '11', 'N/A', 4, 13, 1, 14, 19, '', '93', '79', '', 'East Garden', 0, '2018-01-02 05:34:08', '2018-01-02 05:34:08', 11, 11),
(12, '12', 'N/A', 4, 17, 1, 14, 7, '', '93', '30', '', 'SVS', 0, '2018-01-02 05:41:36', '2018-01-02 05:41:36', 11, 11),
(13, '13', 'N/A', 4, 17, 1, 14, 27, '', '69', '13', '', 'SVS', 0, '2018-01-02 05:45:54', '2018-01-02 05:45:54', 11, 11),
(14, '14', 'N/A', 3, 8, 3, 14, 32, '', '34', '9', '', 'SVS', 0, '2018-01-02 07:30:43', '2018-01-02 07:30:43', 11, 11),
(15, '15', 'N/A', 2, 4, 2, 14, 14, '', '5', '1&12', '', 'SVS', 0, '2018-01-02 08:17:10', '2018-01-02 08:17:10', 11, 11),
(16, '16', 'N/A', 2, 4, 2, 14, 14, '', '43', '1&2', '', 'SVS', 0, '2018-01-02 08:17:23', '2018-01-02 08:19:37', 11, 11),
(17, '17', 'N/A', 4, 16, 1, 14, 14, '', '33', '11', '', 'NSL', 0, '2018-01-02 08:35:25', '2018-01-02 08:35:25', 11, 11),
(18, '18', 'N/A', 4, 13, 1, 14, 7, '', '1', '30', '', 'UNAWOS INVESTMENTS Ltd', 0, '2018-01-02 08:40:05', '2018-01-02 08:40:05', 11, 11),
(19, '19', 'N/A', 2, 7, 2, 14, 99, '', '107', '16', '', 'K. K. KINGSTON Ltd', 0, '2018-01-02 08:49:19', '2018-01-14 09:46:51', 11, 10),
(20, '20', 'N/A', 4, 13, 1, 14, 99, '', '93', '62', '', 'K. K. KINGSTON Ltd', 0, '2018-01-02 08:55:34', '2018-01-14 09:47:59', 11, 10),
(21, '21', 'N/A', 4, 14, 1, 14, 99, '', '13', '1', '', 'Post PNG', 0, '2018-01-09 02:58:34', '2018-01-09 02:58:34', 11, 11),
(22, '22', 'N/A', 4, 17, 1, 14, 14, '', '174', '45', '4', 'Hornibrook NGI', 0, '2018-01-09 03:06:53', '2018-01-09 03:06:53', 11, 11),
(23, '23', 'N/A', 2, 4, 2, 6, 99, '', '3', '9', '', 'Chemcare', 0, '2018-01-09 03:15:27', '2018-01-09 03:15:27', 11, 11),
(24, '24', 'N/A', 4, 17, 1, 14, 7, '', '4', '4', '', 'Kainantu Kasino', 0, '2018-01-09 03:21:51', '2018-01-09 03:21:51', 11, 11),
(25, '25', 'N/A', 4, 13, 1, 14, 14, '', '45', '4', '', 'Eusebius Omi', 0, '2018-01-09 03:39:56', '2018-01-09 03:39:56', 11, 11),
(26, '26', 'N/A', 4, 13, 1, 14, 14, '', '117', '12', '', 'Jessie Angori', 0, '2018-01-09 03:42:03', '2018-01-09 03:44:17', 11, 11),
(27, '27', 'N/A', 4, 12, 1, 14, 7, '', '130', '12', '', 'Eusebius Omi', 0, '2018-01-09 03:59:14', '2018-01-09 03:59:14', 6, 6),
(28, '28', 'N/A', 4, 13, 1, 14, 19, '', '57', '15', '', 'Paul Sepu', 0, '2018-01-09 04:03:48', '2018-01-09 04:03:48', 6, 6),
(29, '28', 'N/A', 4, 13, 1, 14, 99, '', '63', '23', '', 'Pamela Kelly', 0, '2018-01-09 04:07:39', '2018-01-09 04:07:39', 6, 6),
(30, '29', 'N/A', 4, 13, 1, 14, 7, '', '93', '45', '', 'Fairweather/ Howell', 0, '2018-01-09 04:12:00', '2018-01-09 04:12:00', 6, 6),
(31, '31', 'N/A', 4, 13, 1, 14, 99, '', '93', '35', '', 'Palmer R & D', 0, '2018-01-09 04:16:26', '2018-01-09 04:16:26', 6, 6),
(32, '32', 'N/A', 4, 16, 1, 14, 14, '', '77', '16', '', 'Renlim No 8 Ltd', 0, '2018-01-09 04:19:00', '2018-01-09 04:19:00', 6, 6),
(33, '33', 'N/A', 4, 13, 1, 14, 99, '', '63', '14', '', 'Kauga Victor', 0, '2018-01-09 04:22:49', '2018-01-09 04:22:49', 6, 6),
(34, '34', 'N/A', 4, 13, 1, 14, 7, '', '1', '40', '', 'Gibbs, Stephen', 0, '2018-01-09 04:24:34', '2018-01-09 04:24:34', 6, 6),
(35, '35', 'N/A', 4, 15, 1, 14, 27, '', '129', '9', '', 'French Mobile Ltd', 0, '2018-01-09 04:27:30', '2018-01-09 04:27:30', 6, 6),
(36, '36', 'N/A', 4, 13, 1, 14, 14, '', '32', '46', '', 'Kabua Nou', 0, '2018-01-09 04:29:27', '2018-01-09 04:29:27', 6, 6),
(37, '37', 'N/A', 4, 15, 1, 14, 14, '', '36', '5', '', 'Delta Industries Ltd', 0, '2018-01-09 04:32:08', '2018-01-09 04:32:08', 6, 6),
(38, '38', 'N/A', 4, 17, 1, 14, 27, '', '129', '8', '', 'Shao Trading ( In Receivership)', 0, '2018-01-09 04:37:13', '2018-01-09 04:37:13', 6, 6),
(39, '39', 'N/A', 4, 17, 1, 14, 37, '', '130', '24', '', 'Shao Trading ( In Receivership)', 0, '2018-01-09 04:39:15', '2018-01-09 04:39:15', 6, 6),
(40, '39', 'N/A', 4, 14, 1, 23, 11, '', '64', '9', '', 'Shao Trading ( In Receivership)', 0, '2018-01-09 04:44:14', '2018-01-09 04:44:14', 6, 6),
(41, '41', 'N/A', 3, 8, 3, 23, 32, '', '68', '39', '', 'Shao Trading (In Receivership)', 0, '2018-01-09 04:50:43', '2018-01-09 04:50:43', 6, 6),
(42, '42', 'N/A', 4, 13, 1, 14, 14, '', '32', '31', '', 'Shao Trading (In Receivership)', 0, '2018-01-09 04:53:39', '2018-01-09 04:53:39', 6, 6),
(43, '43', 'N/A', 4, 13, 1, 14, 7, '', '1', '26', '', 'Kelvin Togatia', 0, '2018-01-09 04:55:34', '2018-01-09 04:55:34', 6, 6),
(44, '44', 'N/A', 4, 13, 1, 14, 99, '', '2', '5', '', 'Mobil Oil', 0, '2018-01-09 04:59:40', '2018-01-10 08:48:15', 6, 6),
(45, '', 'N/A', 4, 13, 1, 14, 27, '', '68', '6', '', 'Hornibrook NGI', 0, '2018-01-09 05:04:01', '2018-01-10 08:46:37', 6, 6),
(46, '46', 'N/A', 4, 13, 1, 14, 14, '', '36', '33', '', 'Lumba Lumba', 0, '2018-01-09 05:05:43', '2018-01-09 05:05:43', 6, 6),
(47, '46', 'N/A', 4, 13, 1, 14, 14, '', '35', '59', '', 'Colorpack Ltd', 0, '2018-01-09 05:07:52', '2018-01-09 05:07:52', 6, 6),
(48, '48', 'N/A', 4, 13, 1, 14, 99, '', '93', '31', '', 'Runner Ltd', 0, '2018-01-09 05:11:57', '2018-01-09 05:11:57', 6, 6),
(49, '49', 'N/A', 4, 13, 1, 14, 14, '', '93', '87', '', 'Evan Gillespie', 0, '2018-01-09 05:15:29', '2018-01-09 05:15:29', 6, 6),
(50, '', '4 x 2 bedroom town houses, total of 437.6 square meters in all, with minor improvements and stand-by generator. They are situated on 1, 600 square metres of residential allotment in the City of Lae.', 4, 16, 1, 14, 14, '', '41', '44', '', '21C Limited', 0, '2018-01-11 02:42:12', '2018-01-16 05:37:55', 6, 10),
(51, '', 'The property comprised an office, shed, workshop and office buildings. They are situated on a  1.30 hectares of commercial portion of land outside of Goroka Town.', 2, 5, 1, 6, 50, '108', '', '', '', 'KALAPI TRANSPORT', 0, '2018-01-11 03:15:04', '2018-01-16 04:35:17', 11, 6),
(52, '', '2 level high covenant 5 bedrooms stand alone residence, approximately 256.25 square meters plus other minor improvements. It is situated on a 1,109.7 square meters residential allotment in Goroka Town.', 4, 13, 1, 6, 50, '', '25', '05', '', 'Mr. Henry Smith', 0, '2018-01-11 04:23:53', '2018-01-16 04:34:53', 11, 6),
(53, '', 'Office/storage, approximately 185.64m2 and 8,414.36m2 of hardstand area  with fencing. It is situated on 8,730 square meters of light industrial allotment in Lae City.', 3, 20, 1, 14, 15, '657', '', '', '', 'Felix Mau Kipalan', 0, '2018-01-11 04:53:59', '2018-01-14 03:53:54', 11, 6),
(54, '', 'Property comprises of a factory with mezzanine floor and warehouse with other improvements.', 3, 8, 4, 14, 19, '', '176', '2', '', 'Campbell Brothers Limited', 0, '2018-01-11 06:06:10', '2018-01-14 03:57:05', 11, 6),
(55, '', 'Workshop, 2 x staff houses, 1 x flat, 1 x general use toilet, with whole perimeter fenced with 1 part spike steel and 3 parts klip lock fencing and razor wire, approximately 1.85 hectares newly developed. However, the land is assessed as vacant or unimproved.', 1, 1, 8, 14, 17, '779', '', '', '', 'Unknown (Believed to be New Guinea fruits)', 0, '2018-01-11 07:59:33', '2018-01-14 09:33:12', 11, 6),
(56, '', 'Factory/warehouse as well as the Managing Director’s residence, staff night shift quarters, toilet blocks and kitchen with general parking or hardstand area and fencing, approximately 1,165.25m2. They are situated on 2,000 square meters of industrial allotment in Lae City.', 3, 8, 1, 14, 32, '', '34', '10', '', 'Mr. Franky Chen', 0, '2018-01-11 08:12:51', '2018-01-14 03:58:03', 11, 6),
(57, '', 'Workshop with mezzanine floor, Residence & Office building, plus other improvements. They are situated on a 2,600 square meters general industrial allotment in Lae City.', 3, 20, 4, 14, 27, '', '42', '5 & 6', '', 'Nambawan Super Fund.', 0, '2018-01-11 08:22:18', '2018-01-14 03:59:00', 11, 6),
(58, '', 'Office/workshop as well as an hardstand area, approximately 139.36m2. They are situated on a 1,990 square metres of industrial allotment in Lae City.', 3, 20, 1, 14, 24, '', '353', '01', '', 'PNG Steel Limited', 0, '2018-01-11 08:29:27', '2018-01-14 03:59:35', 11, 6),
(59, '', 'Office/workshop as well as an office/store house newly established comprising a floor area of approximately 213.48m2 of office/store house with general parking or hardstand area and fencing,approximately 872.10m2. They are situated on a 4,000 square metres of industrial allotment in Lae City.', 3, 8, 1, 14, 24, '', '353', '23', '', 'Michael Douglas Beirne', 0, '2018-01-11 08:37:58', '2018-01-11 08:43:41', 11, 11),
(60, '', 'Office/storage, approximately 185.64m2 and 8,414.36m2 of hardstand area with fencing. It is situated on 8,730 square metres of light industrial allotment in Lae City.', 3, 20, 3, 14, 15, '', '165', '06', '', 'Felix Mau Kipalan', 0, '2018-01-11 09:07:00', '2018-01-14 09:28:57', 11, 6),
(61, '', 'A compound of medium and high cost residences comprising a mixture of stand alone houses, duplexes and flats plus other minor improvements. They are situated on a 20,000 square meters of residential allotment in Lae City.', 4, 23, 1, 14, 112, '237', '', '', '', 'Pacific Assurance Group', 0, '2018-01-11 09:29:54', '2018-01-14 09:27:26', 11, 10),
(62, '', '2 levels, 3 bedrooms residence with balcony, approximately 165.5 square meters and other improvements. They are situated on 600 square metres of residential allotment in the City of Lae.', 4, 13, 1, 14, 26, '', '115', '11', '', 'John Manga.', 0, '2018-01-11 10:07:56', '2018-01-14 09:10:19', 11, 10),
(63, '', '3 bedrooms stand alone residence, approximately 53.04 square meters plus other minor improvements. It is situated on approximately 540 square meters of residential allotment in Lae City.', 4, 20, 1, 14, 28, '', '118', '18', '', 'Mr. Tom Amon', 0, '2018-01-11 10:29:23', '2018-01-14 04:06:49', 11, 6),
(64, '', 'Residential Compound buildings with associated improvements. They are situated on 2.797 hectares of land portion outside City of Lae.', 4, 15, 1, 14, 100, '657', '', '', '', 'HBS Machinery Limited', 0, '2018-01-12 05:06:46', '2018-01-14 04:13:07', 6, 6),
(65, '', 'Warehouse Building plus other improvements. It is situated on 4.844 hectares of industrial allotment, outside City of Lae.', 3, 8, 4, 14, 100, '795', '', '', '', 'HBS Machinery Ltd', 0, '2018-01-12 05:14:44', '2018-01-12 05:14:44', 6, 6),
(66, '', '3 bedroom residence on top floor and 2 x 1 bedroom flat on ground floor with a total floor area of approximately 279.92 square meters, plus other improvements. They are situated on a 1 100 square meters residential allotment in Lae City.', 4, 16, 4, 14, 112, '', '78', '04', '', 'UMW Niugini Pty Ltd', 0, '2018-01-12 05:33:07', '2018-01-14 09:07:06', 6, 10),
(67, '', '3 bedroom residence with ensiute containing a total floor area of approximately 307.18 square meters, plus other improvements. They are situated on a 1 100 square meters residential allotment in Lae City.', 4, 16, 4, 14, 112, '', '78', '06', '', 'UMW Nuigini Pty Ltd.', 0, '2018-01-12 05:42:20', '2018-01-14 09:03:55', 6, 10),
(68, '', '3 bedroom residence on top floor and 2 bedroom on ground floor with a total floor area of approximately 117 square meters, plus other improvements.They are situated on a 971 square meters residential allotment in Lae City.', 4, 20, 4, 14, 40, '', '339', '70', '', 'Mr. Paul Taku.', 0, '2018-01-14 02:07:10', '2018-01-14 02:07:10', 6, 6),
(69, '', 'A self contained duplex flat, Trade store plus other improvements. They are situated on a 662 square meters residential allotment in Lae City.', 4, 15, 4, 14, 40, '', '339', '110', '', 'Paul Luke Taku.', 0, '2018-01-14 02:21:46', '2018-01-14 02:21:46', 6, 6),
(70, '', 'A compound of medium and high cost residences comprising a mixture of stand alone houses,\nduplexes and flats plus other minor improvements. They are situated on a 20,000 square meters of\nresidential allotment in Lae City.', 4, 15, 1, 14, 112, '237', '', '', '', 'Pacific Assurance Group', 0, '2018-01-14 02:47:12', '2018-01-16 05:37:21', 6, 10),
(71, '', '4 x bedroom residence with en-suite comprising an area of approximately 222 square meters plus other minor improvements.They are situated on approximately 1,630 square meters of residential allotment in 11 mile, outside Lae City.', 4, 14, 1, 14, 114, '104', '', '', '', 'Lucy & Peps Kundi', 0, '2018-01-14 04:27:06', '2018-01-14 09:41:30', 6, 10),
(72, '', '3 bedrooms stand alone residence, approximately 102.7 square meters low set  plus other minor improvements. It is situated on approximately 635 square meters of residential allotment in Lae City.', 4, 20, 1, 14, 99, '', '22', '18', '', 'Mr. Alphonse Tonuwabu', 0, '2018-01-14 04:35:34', '2018-01-14 04:39:40', 6, 6),
(73, '', '9 x rooms Guest House recently completed and a slit level 3 bedroom residence with 4 x rooms on ground floor under construction plus other minor improvements.They are situated on approximately 2,280 square meters of residential allotment in Lae City.', 4, 20, 1, 14, 99, '', '22', '95', '', 'Mr. Simon Sinai', 0, '2018-01-14 04:47:09', '2018-01-14 04:47:09', 6, 6),
(74, '', '2 level, 2 x 3 bedrooms residence with spacious yard, approximately 141.56 square meters plus other minor improvements. It is situated on a 546 square meters residential allotment in Lae City.', 4, 13, 1, 14, 19, '', '57', '33', '', 'Tum Erasi and Serah Erasi', 0, '2018-01-14 04:59:25', '2018-01-14 04:59:25', 6, 6),
(75, '', '4 x bedroom residence with en-suite comprising an area of approximately 258.74 square meters plus other minor improvements. It is situated on approximately 600 square meters of residential allotment in Lae City.', 4, 13, 1, 14, 20, '', '63', '14', '', 'P. A Edward', 0, '2018-01-14 05:21:17', '2018-01-14 08:56:18', 6, 10),
(76, '', '2 level, 4 x 3 bedrooms units, approximately 434.52 square meters plus other minor improvements. It is situated on a 1,200 square meters residential allotment in Lae City.', 4, 18, 1, 14, 28, '', '69', '17', '4', 'Toplis & Harding Pty Ltd', 0, '2018-01-14 05:31:37', '2018-01-14 05:31:37', 6, 6),
(77, '', 'Duplex residence comprising a floor area of approximately 324m2  plus other improvements. It is situated on approximately 1,570 square meters of residential allotment in Lae City.', 4, 15, 1, 14, 112, '', '74', '01', '', 'Karen Richards', 0, '2018-01-14 05:41:56', '2018-01-14 08:54:29', 6, 10),
(78, '', '2 level 4 bedroom residence and a 2 Bedroom staff residence with storage room plus other improvements. It is situated on approximately 1,300 square meters of residential allotment in Lae City.', 4, 13, 1, 14, 112, '', '74', '2', '', 'Sir Nagora Bogan & Lady Nahoranie Bogan', 0, '2018-01-14 05:55:21', '2018-01-14 08:50:54', 6, 10),
(79, '', '2 level 2 x bedroom duplex and a 4 x Bedroom residence plus other improvements. They are situated on approximately 1,000 square meters of residential allotment in Lae City.', 4, 15, 1, 14, 112, '', '75', '01', '', 'Steven Hui', 0, '2018-01-14 06:27:48', '2018-01-14 08:49:37', 6, 10),
(80, '', 'High set duplex residence comprising a floor area of approximately 158.40m2 plus other improvements. It is situated on approximately 1,400 square meters of residential allotment in Lae City.', 4, 15, 1, 14, 112, '', '81', '5', '', 'John Raima', 0, '2018-01-14 06:34:57', '2018-01-14 08:46:55', 6, 10),
(81, '', 'Two level 3 bedroom residence on top floor and 2 x 1 bedroom flat on ground floor with a total floor area of approximately 279.92 square meters, plus other improvements. They are situated on a 1 100 square meters residential allotment in Lae City.', 4, 16, 4, 14, 112, '', '78', '4', '', 'UMW Niugini Pty Ltd.', 0, '2018-01-14 07:17:57', '2018-01-14 08:43:05', 6, 10),
(82, '', 'Two level 4 x 3 bedroom flat with a total floor area of approximately 402.8 square meters, plus other improvements. They are situated on a 1 000 square meters residential allotment in Lae City.', 4, 16, 4, 14, 112, '', '174', '05', '', 'UMW Nuigini Pty Ltd.', 0, '2018-01-14 07:36:07', '2018-01-14 08:42:10', 6, 10),
(83, '', 'Two level 3 bedroom residence with en-suite containing a total floor area of approximately 307.18 square meters, plus other improvements.They are situated on a 1 100 square meters residential allotment in Lae City.', 4, 13, 4, 14, 112, '', '78', '06', '', 'UMW Nuigini Pty Ltd.', 0, '2018-01-14 07:42:45', '2018-01-14 08:39:35', 6, 10),
(84, '', '3 x 2 levels 3 bedroom houses, each comprising an area of approximately 122.4 square meters plus other minor improvements. They are situated on approximately 1,011 square meters of residential allotment in Lae City.', 4, 13, 1, 14, 20, '', '104', '12', '', 'Dr. Sam Sirox Kari & Meloni Kari', 0, '2018-01-14 09:03:07', '2018-01-14 09:21:53', 6, 10),
(85, '', '3 x bedroom residence comprising an area of approximately 134.52 square meters plus other minor improvements. It is situated on approximately 1,000 square meters of residential allotment in Lae City.', 4, 13, 1, 14, 20, '', '112', '12', '', 'John & Maria Anis', 0, '2018-01-14 09:12:52', '2018-01-14 09:26:15', 6, 6),
(86, '', '3 bedrooms stand alone residence with carport/storage and laundry under, approximately 140.6 square meters of high set high covenant plus other minor improvements. It is situated on a 1, 115 square meters residential allotment in Lae City.', 4, 20, 1, 14, 40, '', '333', '04', '', 'Vincent Mbuge', 0, '2018-01-14 09:24:13', '2018-01-14 09:24:13', 6, 6),
(87, '', '2 x makeshift houses, approximately 376 square meters residential allotment and other minor improvements.The main improvement was burnt down some years ago.', 4, 20, 1, 14, 29, '', '367', '14', '', 'Mrs. Sally Lucas', 0, '2018-01-15 02:23:42', '2018-01-15 02:23:42', 6, 6),
(88, '', '4 bedrooms stand alone residence, approximately 89.65 square meters of low set plus other minor improvements. It is situated on approximately 514 square meters of residential allotment in Lae City.', 4, 12, 1, 14, 37, '', '262', '4', '', 'Mrs. Anne Esira', 0, '2018-01-15 03:21:13', '2018-01-15 03:21:13', 6, 6),
(89, '', '4 bedrooms stand alone residence with en-suite, approximately 186.2 square meters plus other minor improvements. It is situated on approximately 1,558 square meters of residential allotment in Lae City.', 4, 13, 1, 14, 14, '', '130', '08', '', 'Mr. John Laugasa', 0, '2018-01-15 03:32:49', '2018-01-15 03:32:49', 6, 6),
(90, '', 'Two level 2 x  bedroom quadruplet with a total floor area of approximately 379.04 square meters, plus other improvements. They are situated on a 1 100 square meters residential allotment in Lae City.', 4, 16, 4, 14, 14, '', '79', '11', '', 'Bill Wangilo & Pansy Taueni', 0, '2018-01-15 03:57:45', '2018-01-15 03:57:45', 6, 6),
(91, '', 'Two level 3 x bedroom quadruple containing a total floor area of approximately 494 square meters, plus other improvements. They are situated on a 1 100 square meters residential allotment in Lae City.', 4, 16, 4, 14, 14, '', '80', '20', '', 'MV Consulting Limited.', 0, '2018-01-15 04:06:55', '2018-01-15 04:06:55', 6, 6),
(92, '', 'An executive 3 x bedroom residence with en-suite containing a total floor area of approximately 286.25 square meters, plus other improvements. They are situated on a 1 082 square meters residential allotment in Lae City.', 4, 14, 4, 14, 33, '', '68', '06', '', 'Tua Yanda.', 0, '2018-01-15 04:59:46', '2018-01-15 04:59:46', 6, 6),
(93, '', '3 x bedroom residence containing a total floor area of approximately 214.50 square meters, plus other improvements.They are situated on a 1 100 square meters residential allotment in Lae City.', 4, 13, 4, 14, 112, '', '78', '01', '', 'Tua Yanda.', 0, '2018-01-15 05:07:53', '2018-01-15 05:07:53', 6, 6),
(94, '', '3 bedrooms stand alone residence, approximately 158.3 square meters of low set  plus other minor improvements. It is situated on approximately 1,277 square meters of residential allotment in Lae City.', 4, 12, 1, 14, 99, '', '353', '02', '', 'Mr. Nusela Gopave', 0, '2018-01-15 05:15:24', '2018-01-15 05:30:27', 6, 6),
(95, '', '2 x semi permanent bed-sitter flats plus other improvements. They are situated on a land area of approximately 432 square meters.', 4, 16, 1, 14, 37, '', '274', '38', '', 'MR. VINCENT ASUM', 0, '2018-01-15 06:32:49', '2018-01-15 06:32:49', 6, 6),
(96, '', 'The property comprises a Supermarket/Wholesale Building plus other improvements. It is situated on a land area of approximately 1 500 square meters.', 2, 4, 4, 3, 5, '', '05', '02', '', 'VINCENT ENTERPRISES LIMITED', 0, '2018-01-15 06:47:37', '2018-01-15 06:47:37', 6, 6),
(97, '', '3 x 1 bedroom flat of 87.5 square meters. It is situated on a 450 square meters residential allotment in Lae City.', 4, 16, 1, 14, 15, '', '249', '01', '', 'Jonah Kuli.', 0, '2018-01-15 07:13:01', '2018-01-15 07:13:01', 6, 6),
(98, '', 'Erected on the property is a two level multi tenanted Commercial Complex. It is situated on a land area of approximately 1, 500 square meters.', 2, 3, 4, 14, 7, '', '2', '38', '', 'Watt Kiddie', 0, '2018-01-15 08:20:40', '2018-01-15 08:20:40', 6, 6),
(99, '', '3 x bedroom residence fully fenced. The proposed development is to comprise a two level shop complex comprising a gross floor area of 5, 563.8 square meters. It is situated on a 1, 821 square meters of residential allotment in Town of Madang.', 4, 12, 1, 16, 116, '', '39', '13', '', 'BMK International Limited', 0, '2018-01-15 09:03:03', '2018-01-16 04:33:41', 6, 6),
(100, '', 'Two level shop/residence building plus other improvements. It is situated on 1, 217 square meters of commercial allotment in Town of Madang.', 2, 4, 4, 16, 5, '', '22', '2A', '', 'Katherine Kilaong', 0, '2018-01-15 09:10:24', '2018-01-15 09:10:24', 6, 6),
(101, '', 'Two levels residence/shop building commonly known as the “Light foot House” and a detached two level residence/warehouse building plus other improvements. They are situated on a 1, 431 square meters of commercial allotment in Town of Madang.', 2, 4, 4, 16, 5, '', '21', '20', '', 'Mamosa Investment Limited', 0, '2018-01-15 09:28:16', '2018-01-15 09:49:54', 6, 6),
(102, '', '5 bedroom residence and 2 x detached 2 bedroom residences plus other improvements. They are situated on a 1, 669 square meters of residential allotment in Town of Madang.', 4, 14, 1, 16, 115, '', '3', '02', '', 'Sik Cheung Chan', 0, '2018-01-15 10:06:08', '2018-01-16 04:31:48', 6, 6),
(103, '', 'Vacant land known as Allotment 33 Section 64 of Madang Town is relatively level and is below the street levelly. It has a frontage of 120 square meters and a depth of 60 meters occupying a total land area of 7 200 square meters. There are no site improvements and the land is assessed as vacant.', 2, 1, 4, 16, 116, '', '64', '33', '', 'Tunamb Agents & Distributors', 0, '2018-01-15 10:18:54', '2018-01-16 04:25:28', 6, 6),
(104, '', 'Two level executive residence building. It is situated on a land area of approximately 1, 100 square meters.', 4, 14, 2, 14, 112, '', '80', '11', '', 'Muriel Basada', 0, '2018-01-15 10:37:20', '2018-01-15 10:37:20', 6, 6),
(105, '', 'Three levels retail/shop building commonly known as the “Kasagten House” shed plus other improvements. It is situated on a 806 square meters of commercial allotment in Town of Madang.', 2, 4, 4, 16, 117, '', '17', '14', '', 'Rising Sun Investment Limited', 0, '2018-01-16 02:35:45', '2018-01-16 04:24:16', 6, 6),
(106, '', 'Two levels office building commonly known as the “Modilon House” and adjoined open shed plus other improvements. They are situated on a 1, 517 square meters of residential allotment in Town of Madang.', 2, 3, 1, 16, 116, '', '10', '05', '', 'Zhou Enterprises Limited', 0, '2018-01-16 02:42:32', '2018-01-16 04:23:36', 6, 6),
(107, '', 'Two levels retail/shop building known as the “J & Z Shopping Center” plus other improvements. It is situated on 986 square meters of consolidated commercial allotments in Town of Madang.', 2, 4, 4, 16, 115, '', '22', '5,6&7', '', 'Zhou Enterprises Limited', 0, '2018-01-16 02:50:27', '2018-01-16 04:22:55', 6, 6),
(108, '', 'Ground level shop building known as the “J & Z Trading Limited” used as fast food plus other improvements. It is situated on 574 square meters of consolidated commercial allotments in Town of Madang.', 2, 4, 4, 16, 115, '', '22', '9&16', '', 'Zhou Enterprises Limited', 0, '2018-01-16 02:57:42', '2018-01-16 04:21:15', 6, 6),
(109, '', '3 x bedroom executive residence and a detached shed/storage building. They are situated on a 1, 578 square meters of residential allotment in Town of Madang.', 4, 14, 1, 16, 118, '', '34', '10', '', 'Zhou Enterprises Limited', 0, '2018-01-16 03:08:10', '2018-01-16 04:20:12', 6, 6),
(110, '', '4 x bedroom residence comprising a floor area of approximately 115.16 square meters plus other improvements. It is situated on approximately 521 square meters of residential allotment in Lae City.', 4, 12, 1, 14, 32, '', '64', '10', '', 'William Gopre Yangi & Rhoda Yangi', 0, '2018-01-16 03:08:10', '2018-01-16 03:19:35', 6, 6),
(111, '', 'Two level bed-sitter flat containing 15 rooms with common kitchen and ablution plus other improvements. It is situated on approximately 600 square meters of residential allotment in Lae City.', 4, 16, 1, 14, 19, '', '61', '16', '', 'Robert Timbung', 0, '2018-01-16 03:28:03', '2018-01-16 04:13:42', 6, 6),
(112, '', '2 level transit accommodation and recently constructed 2 level 5 x rooms  residence building plus other improvements.They are situated on approximately 1, 288 square meters  of land in Kamkumung area of Lae City.', 4, 20, 8, 14, 38, '621C', '', '', '', 'Mr. Zachariah Kepongi', 0, '2018-01-16 03:28:05', '2018-01-16 03:28:05', 6, 6),
(113, '', 'Land is hilly and sloping towards the main Highlands Highway. It covers a land area of approximately 7. 650 square meters. Site improvements include semi permanent residences for individual family members and a trade store with residence on top.', 4, 20, 5, 14, 100, '585', '', '', '', 'Aba Kulame McKergow &  Anna McKergow', 0, '2018-01-16 03:52:09', '2018-01-16 03:52:09', 6, 6),
(114, '', '3 x bedroom residence plus other improvements. It is situated on a total land area of 450 square meters.', 4, 12, 1, 14, 15, '', '257', '01', '', 'Benjamin Mom Taiyer', 0, '2018-01-16 04:40:55', '2018-01-16 04:40:55', 6, 6),
(115, '', 'Two levels 3 x bedrooms residence and a 2 x bedroom unit on ground floor plus other improvements. It is situated on a total land area of 809 square meters.', 4, 13, 1, 14, 17, '', '170', '06', '', 'Rose Mom', 0, '2018-01-16 05:08:16', '2018-01-16 05:08:16', 6, 6),
(116, '', 'Split level 6 x 2 bedroom apartments, a guard house and a barbecue house plus other ancillary improvements, comprises a gross floor area of approximately 344 square meters.', 4, 13, 1, 14, 15, '', '156', '09', '', 'Bonnie Mona Kainge', 0, '2018-01-16 05:36:50', '2018-01-16 05:54:00', 6, 6),
(117, '', '1x ground level garage building, 2 x guard houses; one in the front and one at the back plus other site improvements. The Ground level 4 x bedroom residence comprises a gross floor area of approximately 189 square meters.', 4, 14, 1, 14, 15, '', '156', '10', '', 'Bonnie Mona Kainge', 0, '2018-01-16 06:02:14', '2018-01-16 06:02:14', 6, 6),
(118, '', 'Low cost 3 bedroom residence converted to 8 x 1 room bed-sitter residence plus other improvements. It is situated on a total land area of 670 square meters.', 4, 12, 1, 14, 107, '', '108', '09', '', 'Tii Ilawa', 0, '2018-01-16 06:10:18', '2018-01-16 06:10:18', 6, 6),
(119, '', 'Low set medium cost three bedroom residence comprising a gross floor area of approximately 159 square meters.', 4, 13, 1, 14, 38, '', '118', '40', '', 'Kotera Joseph Tera', 0, '2018-01-16 07:26:09', '2018-01-16 07:26:09', 6, 6),
(120, '', 'Low set 3 x bedroom residence and a detached 1 x bedroom residence plus other improvements. It is situated on a total land area of 972 square meters.', 4, 12, 1, 14, 40, '', '335', '78', '', 'Sam Koposing Apo', 0, '2018-01-16 07:31:49', '2018-01-16 07:31:49', 6, 6),
(121, '', 'The office is a ground level irregular shaped office building comprising 12 office cubicles of varying floor area, a conference room, a male/female rest room and storage rooms, a ground level open warehouse building occupying a gross floor area of approximately 217.5 square meters and two bedroom duplex residence constructed on concrete slab base overlaid with ceramic tiles, masonry block walls and steel frame structures, part hardboard and concrete internal lining with ceramic tiles splash backs to wet areas, hardboard ceiled through out under klip lock iron roofing.', 2, 5, 1, 14, 17, '701C', '', '', '', 'Angal Land Group and Yumbe Land Group', 0, '2018-01-16 07:46:37', '2018-01-16 07:46:37', 6, 6),
(122, '', 'Semi-permanent church building comprising a floor area of approximately 165.6 square meters plus other improvements. It is situated on a total land area of 900 square meters.', 7, 20, 1, 14, 16, '', '196', '32', '', 'NHC', 0, '2018-01-16 07:56:28', '2018-01-16 07:56:28', 6, 6),
(123, '', 'Erected on the property is a two levels 3 x bedroom executive residence plus other improvements. It is situated on a total land area of 1, 200 square meters.', 4, 14, 1, 14, 99, '', '07', '07', '', 'Eric Emmanuel & Susie Emmanuel as joint tenants', 0, '2018-01-16 08:05:58', '2018-01-22 03:14:51', 6, 6),
(124, '', '3 x bedroom residence converted to an 11 x room clinic and a high set 3 x bedroom residence plus other improvements. It is situated on a total land area of 881 square meters.', 4, 12, 1, 14, 15, '', '156', '14', '', 'Good Samaritan Hospital Foundation Limited.', 0, '2018-01-16 08:16:25', '2018-01-16 08:16:25', 6, 6),
(125, '', 'Two level 4 x 2 bedroom apartment plus other improvements.\nIt is situated on a land area of approximately 752 square meters.', 4, 14, 1, 14, 14, '', '91', '16', '', 'MR. SAKO J Q ALLAN', 0, '2018-01-16 09:06:45', '2018-01-16 09:06:45', 6, 6),
(126, '', 'Low set split level 3 x bedroom residence and a detached 4 x room bedsitter accommodation plus other improvements. It is situated on a total land area of 640 square meters.', 4, 12, 1, 14, 40, '', '339', '06', '', 'Vincent Yhuanje.', 0, '2018-01-16 09:20:15', '2018-01-16 09:20:15', 6, 6),
(127, '', '3 x warehouses with associated minor improvements. These are situated on 25,000 square meters of industrial allotment within City of Lae.', 3, 8, 4, 14, 19, '', '50', '40', '', 'Pagini Transport Pty Ltd', 0, '2018-01-16 09:39:47', '2018-01-16 09:39:47', 6, 6),
(128, '', '4 x bedroom residence comprising a gross floor area of approximately 222 square meters which is about to be demolished. It is secured and enclosed with approximately 1.8 meters high cyclone mesh. Access is only through the front gate.', 4, 13, 1, 14, 99, '', '01', '30', '', 'HON. MAO ZEMING', 0, '2018-01-16 09:39:49', '2018-01-16 09:53:25', 6, 6),
(129, '', 'Two level medium cost 7 x bedroom residence plus other improvements.\nIt is situated on a total land area of 1, 449 square meters.', 4, 13, 1, 13, 102, '', '', '', '', 'Henry Tokam', 0, '2018-01-16 10:16:36', '2018-01-16 10:16:36', 6, 6),
(130, '', 'High set 3 x bedroom high cost residence plus other improvements. It is situated on a total land area of 1, 221 square meters.', 4, 13, 1, 14, 41, '', '337', '35', '', 'Songli Soctine', 0, '2018-01-16 10:30:06', '2018-01-16 10:30:06', 6, 6),
(131, '', 'Residential property improved with a High Set three bedroom structure. It is fenced with trim-deck and cyclone mesh wire. A vacant land fully fenced with mesh wire fencing of approximately 1.8 meters high to a manual gate.', 1, 1, 4, 14, 14, '', '90', '35', '', 'MR. SAMUEL KAMA', 0, '2018-01-16 10:41:05', '2018-01-16 10:41:05', 6, 6),
(132, '', '3 x bedroom residence comprising an area of approximately 178.50 square meters plus other minor improvements. It is situated on approximately 1012 square meters of residential allotment.', 4, 13, 1, 16, 44, '', '59', '02', '', 'Ruth Siou', 0, '2018-01-16 10:53:45', '2018-01-16 10:53:45', 6, 6),
(133, '', 'The land is developed with warehouses, sheds, offices and accommodation.', 3, 8, 4, 14, 15, '', '164', '12', '', 'AGK Pacific (NG) Ltd', 0, '2018-01-16 11:04:38', '2018-01-16 11:04:38', 6, 6),
(134, '', '2 x bedroom low covenant residence, approximately 96 square meters of  . It is situated on 500 square meters of residential allotment in the City of Lae.', 4, 12, 1, 14, 22, '', '64', '32', '', 'Mr. Allan Mark', 0, '2018-01-16 11:15:57', '2018-01-16 11:15:57', 6, 6),
(135, '', 'The land is a regular shaped parcel. The general topography is level. Our inspection revealed that the land has been graveled and compacted.', 4, 20, 1, 14, 15, '', '224', '3', '', 'Albert Andrew', 0, '2018-01-17 02:24:57', '2018-01-17 02:24:57', 6, 6),
(136, '', '3 bedroom high cost residence with security fencing, approximately 88.4 square meters. It is situated on 800 square meters of residential allotment in the City of Lae.', 4, 13, 1, 14, 112, '', '311', '03', '', 'Amalgamated Packaging (NG) Pty Ltd.', 0, '2018-01-17 02:34:10', '2018-01-17 02:34:10', 6, 6),
(137, '', 'Erected on the property is a ground level commercial building plus other improvements. Land Area:  3,186 square meters .', 2, 4, 4, 6, 50, '', '23', '17', '', 'Akapite Wamiri', 0, '2018-01-17 02:44:25', '2018-01-17 02:44:25', 6, 6),
(138, '', '5 x 2 bedroom low cost houses, duplex units and a block of 1 x 8 bed-sitter units, approximately total of 571.62 square meters in all. They are situated on 24, 000 square meters of residential allotment in the City of Lae.', 4, 15, 9, 14, 20, '', '93', '95', '', 'Anglican Diocesan Board of Trustees', 0, '2018-01-17 02:52:47', '2018-01-17 02:52:47', 6, 6),
(139, '', '4 bedrooms stand alone residence, approximately 89.65 square meters of low set  plus other minor improvements. It is situated on approximately 514 square meters of residential allotment in Lae City.', 4, 12, 1, 14, 37, '', '262', '4', '', 'Mrs. Anne Esira', 0, '2018-01-17 03:00:39', '2018-01-17 03:00:39', 6, 6),
(140, '', '2 bedroom duplex residence comprising a floor area of approximately 133.26 m2. It is situated on approximately 1,010 square meters of residential allotment in Lae City.', 4, 15, 1, 14, 20, '', '102', '5', '', 'Amox Romsy', 0, '2018-01-17 03:12:39', '2018-01-17 03:19:29', 6, 6),
(141, '', '3 x 3 levels executive residential units plus other minor improvements. It is situated on a 1, 600 square meters of residential allotment in the City of Lae.', 4, 14, 4, 14, 14, '', '33', '01', '', 'Consort Express Lines Ltd.', 0, '2018-01-17 03:28:53', '2018-01-17 03:28:53', 6, 6),
(142, '', '3 bedrooms executive residence with extra room downstairs and electric gate, approximately 220.52 square meters of high set high covenant plus other minor improvements. They are situated on approximately 1, 300 square meters of residential allotment in the City of Lae.', 4, 14, 1, 14, 99, '', '74', '02', '', 'Sir Nogora Bogan.', 0, '2018-01-17 03:35:18', '2018-01-17 03:35:18', 6, 6),
(143, '', 'Covenant 3 bedrooms executive residence with carport and electric gate, approximately 220.52 square meters of low set high  plus other minor improvements. They are situated on approximately 1, 300 square meters of residential allotment in the City of Lae.', 4, 14, 1, 14, 14, '', '41', '80', '', 'Lionel Astwood.', 0, '2018-01-17 03:42:31', '2018-01-17 03:42:31', 6, 6),
(144, '', '2 levels , executive 4 bedroom residence,approximately 374.84 square meters , and a detached 141.36 square meters two bedroom low set medium covenant residence.\nThey are situated on 1,631 square meters residential allotment, Cassia Crescent, Lae .', 4, 14, 1, 14, 99, '', '41', '56', '', 'Nathaniel Poya', 0, '2018-01-17 03:48:22', '2018-01-17 03:48:22', 6, 6),
(145, '', '2 x Industrial Warehouse plus Office space with residences, approximately 1,859.57 square meters of  . It is situated on a 4,012 square meters industrial Allotment at Coffee Place, City of Lae.', 3, 8, 4, 14, 33, '', '171', '5&6', '', 'Fairdeal Housing Appliances Pty Ltd.', 0, '2018-01-17 03:54:51', '2018-01-17 03:54:51', 6, 6),
(146, '', '5 x bedrooms including separate kitchen, lounge, toilet/shower and laundry to both levels. Complementing improvements include swimming pool and fencing. It is situated on 1,000 square meters of residential allotment in Lae.', 4, 14, 4, 14, 14, '', '130', '16', '', 'Dr. Gae Kauzi & Saraim Kauzi (C/o – Central Bank of PNG)', 0, '2018-01-17 04:02:30', '2018-01-17 04:02:30', 6, 6),
(147, '', '4 bedrooms executive residence with carport/storage/laundry and extra bathroom toilet under main,  approximately 258 square meters of high set high covenant  plus other minor improvements.\n		It is situated on approximately 1, 010 square metres of residential allotment in the City of Lae.', 4, 14, 1, 14, 99, '', '04', '03', '', 'Arnold & Elissa Topai', 0, '2018-01-17 04:09:52', '2018-01-17 04:09:52', 6, 6),
(148, '', '4 bedrooms residence with carport, laundry and extra kitchen under main, approximately 163.85 square meters stand alone high-set. They are situated on approximately 1, 200 square meters of residential allotment in Eric Woo.', 4, 13, 1, 14, 99, '', '32', '94', '', 'Southern Pacific Insurance Company', 0, '2018-01-17 04:20:50', '2018-01-17 04:20:50', 6, 6),
(149, '', '3 bedrooms stand alone residence, approximately 75.3 square meters of low set  plus other minor improvements. It is situated on approximately 540 square meters of residential allotment in Lae City.', 4, 12, 1, 14, 15, '', '118', '33', '', 'Tippy Orapa', 0, '2018-01-17 04:30:45', '2018-01-17 04:30:45', 6, 6),
(150, '', '4 bedrooms residence, approximately 117 square meters of high set . It is situated on approximately 1, 246 square meters of residential allotment in the City of Lae.', 4, 13, 1, 14, 112, '', '77', '7', '', 'Rolf Norman Underdahl', 0, '2018-01-17 04:36:09', '2018-01-17 04:36:09', 6, 6),
(151, '', 'Warehouse, Residence/Office, Storage & Residential Quarters buildings plus other improvements.They are situated on a 1,695 square meters general industrial allotment in Lae City.', 3, 8, 4, 14, 20, '', '70', '08', '', 'Trends (PNG) Limited.', 0, '2018-01-17 04:42:40', '2018-01-17 04:42:40', 6, 6),
(152, '', '2 x bedroom residence with an extension of 2 x rooms occupying gross floor area of approximately 90 square meters.', 4, 13, 1, 14, 40, '', '333', '92', '', 'Fred Dauwa', 0, '2018-01-17 04:52:46', '2018-01-17 04:52:46', 6, 6),
(153, '', 'warehouse building with mezzanine offices and an adjoined two level residence/office/shop building. They are situated on a land area of   approximately        1, 499 square meters.', 2, 5, 2, 14, 32, '', '19', '15', '', 'Pristine Co. No. 22 Ltd', 0, '2018-01-17 05:05:46', '2018-01-17 05:05:46', 6, 6),
(154, '', '3 x bedroom residence as described including all normal fixtures, fittings, sewerage  systems installation plus other improvements.', 4, 12, 1, 14, 112, '', '349', '02', '', 'Mr. Avua Leva', 0, '2018-01-17 05:24:10', '2018-01-17 05:24:10', 6, 6),
(155, '', '2 levels 5 x 2 bedroom residential units, approximately 506.9 square meters .They are situated on 800 square meters of residential allotment in Lae City.', 4, 14, 1, 14, 112, '', '174', '16', '', 'Wallace Awey and Kaue Loma.', 0, '2018-01-17 05:33:12', '2018-01-17 05:33:12', 6, 6),
(156, '', '1 x 3 bedroom colonial residence comprising a gross floor area of approximately 183 square meters plus other improvements.', 4, 20, 1, 14, 99, '', '02', '81', '', 'Ella Albaniel', 0, '2018-01-17 05:43:04', '2018-01-17 05:43:04', 6, 6),
(157, '', 'Low set residential building comprising lounge, kitchen, 3 x bedroom and shower/toilet occupying gross floor area of approximately 91 square meters.', 4, 12, 1, 14, 118, '', '3', '69', '', 'Joycelyn Theo', 0, '2018-01-17 05:55:43', '2018-01-17 05:55:43', 6, 6),
(158, '', 'Land area of 4.27 hectares  of plantation of propagated hardwood species and cocoa and Portion 665c comprises a land area of 11.67 hectares and is improved with 2 x residence and cocoa mill plus other improvements.', 8, 20, 8, 14, 17, '664 & 665', '', '', '', 'Benson Nablu', 0, '2018-01-17 06:51:01', '2018-01-17 06:51:01', 6, 6),
(159, '', '2 x bedroom residence with a detached and other improvements. They are situated on a 1,365 square meters of residential allotment in City of Lae.', 4, 13, 1, 14, 14, '', '32', '57', '', 'Benson Nablu &Ware Nablu joint tenants.', 0, '2018-01-17 06:57:02', '2018-01-17 06:57:02', 6, 6),
(160, '', '3 x bedroom residence with 2 x detached kit homes and other improvements.They are situated on a 1, 600 square meters of residential allotment in City of Lae.', 4, 13, 1, 14, 99, '', '32', '50', '', 'Benson Nablu, Ware Nablu & Leka Nama Nablu', 0, '2018-01-17 07:02:40', '2018-01-17 07:02:40', 6, 6),
(161, '', '2 level 6 x 2 bedroom units and 2 x 3 bedroom units residential building plus other improvements Land Area: 1,652 square meters.', 4, 17, 1, 14, 99, '', '33', '20', '', 'Best Practice Limited.', 0, '2018-01-17 07:10:07', '2018-01-17 07:10:07', 6, 6),
(162, '', '3 x bedroom executive residence with a gym on ground floor comprising a gross floor area of approximately 267.2 square meters. \nIt is situated on a land area of approximately 900 square meters.', 4, 14, 1, 14, 20, '', '93', '23', '', 'BOC Limited', 0, '2018-01-17 07:17:45', '2018-01-17 07:17:45', 6, 6),
(163, '', '2 level 4 x bedroom residential building plus other improvements.    Land Area of 3,592 square meters.', 4, 13, 1, 14, 115, '', '07', '14', '', 'Avondale Investments Ltd.', 0, '2018-01-17 07:32:09', '2018-01-17 07:32:09', 6, 6),
(164, '', 'Three bedroom duplex flats, approximately 280.0 square meters of . It is situated on a 946 square meters residential allotment in the Town of Kokopo.', 4, 15, 1, 12, 11, '', '37', '82', '', 'Bridgestone Tyres (PNG) Pty Ltd.', 0, '2018-01-17 08:00:55', '2018-01-17 08:00:55', 6, 6),
(165, '', 'Warehouse/office/workshop complex and underwater land, approximately 460.84 square meters of. It is situated on a 2,319 square meters light industrial allotments in Madang.', 3, 8, 4, 16, 116, '', '9', '3, 5&6', '', 'Bridgestone Tyres (PNG) Pty Ltd.', 0, '2018-01-17 08:05:42', '2018-01-17 08:05:42', 6, 6),
(166, '', 'warehouse, Storage shed, Office/Storage, Main Office, Sales Office/Storage, Warehouse/Office buildings and Manager’s residences.\n\n	They are situated on 18, 190 square metres light industrial allotments in Lae.', 3, 8, 4, 14, 32, '', '19', '27', '', 'Bridgestone Tyres (PNG) Pty Ltd.', 0, '2018-01-17 08:10:13', '2018-01-17 08:10:13', 6, 6),
(167, '', 'Three bedroom high covenant residence, approximately 154.65 square meters of .It is situated on a 1,919 square meters residential allotment in Madang.', 4, 13, 4, 16, 115, '', '33', '10', '', 'Bridgestone Tyres (PNG) Pty Ltd.', 0, '2018-01-17 08:14:42', '2018-01-17 08:14:42', 6, 6),
(168, '', '3 x warehouse/office buildings, and a 2 level duplex flat. They are situated on a 3, 934 square metres light industrial allotment in Gordons.', 3, 8, 4, 22, 62, '', '52', '38', '', 'Bridgestone Tyres Services (PNG) Pty Ltd.', 0, '2018-01-17 08:18:47', '2018-01-17 08:18:47', 6, 6),
(169, '', 'warehouse/office/workshop building, approximately 603.44 square meters of . It is situated on a 3,970 square meters light industrial allotments in Rabaul.', 3, 8, 4, 23, 84, '', '63', '32&33', '', 'Bridgestone Tyres (PNG) Pty Ltd.', 0, '2018-01-17 08:23:09', '2018-01-17 08:23:09', 6, 6),
(170, '', '3 bedroom residence, approximately 152.3 square meters of high set plus other improvements.They are situated on a 1, 211 square meters of residential allotment in Korobosea', 4, 13, 1, 22, 1, '', '76', '14', '', 'Bridgestone Tyres Services (PNG) Pty Ltd.', 0, '2018-01-17 08:28:39', '2018-01-17 08:28:39', 6, 6),
(171, '', 'Warehouse/Factory buildings with offices and Staff residences. They are situated on a total of approximately 18, 940 square meters light industrial allotments in Lae.', 3, 8, 4, 14, 32, '', '19', '4,5 &6', '', 'Bridgestone Tyres (PNG) Pty Ltd.', 0, '2018-01-17 08:32:31', '2018-01-17 08:32:31', 6, 6),
(172, '', 'An approximately 131.64 square meters of low set high covenant 4 bedrooms residence together with other  associated improvements. It is situated on approximately 1, 600 square meters of residential allotment in the City of Lae.', 4, 14, 1, 14, 99, '', '3', '68', '', 'Department of Civil Aviation', 0, '2018-01-17 09:03:41', '2018-01-17 09:03:41', 6, 6),
(173, '', 'Workshop with mezzanine floor, Residence & Office building, plus other improvements.They are situated on a 2,600 square meters general industrial allotment in Lae City.', 3, 8, 4, 14, 20, '', '42', '5& 6', '', 'Nambawan Super Fund.', 0, '2018-01-17 09:13:07', '2018-01-17 09:13:07', 6, 6),
(174, '', 'An approximately 2,062 square meters show room/office/warehouse building. It is situated on a 4,600 square meters light industrial allotment in Lae Main Wharf Area.', 3, 8, 4, 14, 32, '', '25', '6', '', 'Courts Furnishers (PNG) Pty Ltd.', 0, '2018-01-17 09:19:33', '2018-01-17 09:19:33', 6, 6),
(175, '', 'commercial shop building, approximately 757.68 square meters of.  It is situated on 1,000 square meters of Commercial allotment in Lae.', 2, 4, 4, 14, 14, '', '41', '71', '', 'Trustees Lae Bowling Club.', 0, '2018-01-17 09:29:14', '2018-01-17 09:29:14', 6, 6),
(176, '', '2 x bedroom residence building plus other improvements. Land Area:  688 square meters.', 4, 13, 1, 14, 19, '', '54', '07', '', 'Lao Corporation Limited.', 0, '2018-01-17 09:38:25', '2018-01-17 09:38:25', 6, 6),
(177, '', 'Wholesale/Warehouses/Residence/Administrative Offices and Supermarket, approximately 1,536.62  square meters of . They are situated on a 1,988 square meters of Commercial allotments in the City of Lae', 2, 5, 4, 14, 99, '', '04', '13,14& 15', '', 'Chee & Bee Chee Ltd.', 0, '2018-01-17 09:55:04', '2018-01-17 09:55:04', 6, 6),
(178, '', 'Factory/warehouse building with mezzanine floor offices and a detached lofty warehouse building with two levels offices plus other improvements. They are situated on a total  land area of   approximately 1.33 hectares.', 3, 8, 4, 14, 20, '', '42', '12-17', '', 'COLGATE PALMOLIVE (PNG) LIMITED', 0, '2018-01-17 10:51:00', '2018-01-17 10:51:00', 6, 6),
(179, '', 'Vacant commercial land (3 x allotments).', 2, 1, 4, 7, 8, '', '28', '5, 6 & 7', '', 'Collins & Leahy Ltd.', 0, '2018-01-17 11:05:43', '2018-01-17 11:05:43', 6, 6),
(180, '', 'shopping complex, approximately 1570.6 square meters of  and associated improvements.', 2, 4, 4, 6, 5, '', '3', '08', '', 'Collins & Leahy Limited', 0, '2018-01-18 02:24:22', '2018-01-18 02:49:38', 6, 6),
(181, '', '4 x 2 bedroom units,approximately 283.65 square meters . It is situated on situated on 1287 square meters residential allotment in West Goroka Area.', 4, 16, 1, 6, 8, '', '16', '12', '', 'Collins & Leahy Limited.', 0, '2018-01-18 02:39:37', '2018-01-18 02:39:37', 6, 6),
(182, '', 'Warehouse, Workshop and office extension, approximately 405.0 square meters of .They are situated on 4,312.43 square meters of light industrial allotment within West Goroka.', 3, 8, 4, 6, 32, '', '21', '2&3', '', 'Collins & Leahy Limited.', 0, '2018-01-18 02:44:47', '2018-01-18 02:49:13', 6, 6),
(183, '', '2 blocks of 3 x 2 bedrooms residential units. They are situated on 1200 square meters of residential allotment in Goroka Town.', 4, 13, 1, 6, 119, '', '27', '11', '', 'Collins & Leahy Limited.', 0, '2018-01-18 02:55:32', '2018-01-22 11:09:10', 6, 6),
(184, '', '5 x 3 bedrooms low cost residences. They are situated on a 1337 square meters of residential allotment in Goroka.', 4, 12, 1, 6, 119, '', '61', '39', '', 'Collins & Leahy Limited.', 0, '2018-01-18 03:00:04', '2018-01-22 11:09:56', 6, 6),
(185, '', 'warehouse building, approximately 315.0 square meters. It is situated on a 1879 square meters commercial allotment in West Goroka.', 3, 8, 4, 6, 32, '', '12', '05', '', 'Collins & Leahy Limited.', 0, '2018-01-18 03:07:10', '2018-01-18 03:07:10', 6, 6),
(186, '', '3 x bedroom residence with laundry and 2 x rooms on ground floor plus other improvements. It is situated on 850 square meters of residential allotment in City of Lae.', 4, 13, 1, 14, 26, '', '123', '06', '', 'Connelly Malalu & Jenny Kisiai Angu', 0, '2018-01-18 03:20:07', '2018-01-18 03:20:07', 6, 6);
INSERT INTO `properties` (`id`, `name`, `description`, `property_use_id`, `property_class_id`, `property_lease_type_id`, `property_city_id`, `property_suburb_id`, `port`, `sec`, `lot`, `unit`, `owner`, `is_archive`, `created_at`, `updated_at`, `created_by_id`, `last_edited_by_id`) VALUES
(187, '', '3 x bedrooms residence comprising a gross floor area of approximately 89.5 square meters, plus other improvements. It is situated on a 1, 379 square meters of residential allotment in City of Lae.', 4, 13, 1, 14, 14, '', '91', '32', '', 'Connelly Malalu Angu', 0, '2018-01-18 03:27:03', '2018-01-18 03:27:03', 6, 6),
(188, '', '3 x 3 levels executive residential units, approximately 946.08 square meters of  plus other minor improvements. It is situated on a 1,600 square meters of residential allotment in the City of Lae.', 4, 14, 1, 14, 14, '', '33', '1', '', 'Consort Express Lines Ltd', 0, '2018-01-18 03:40:51', '2018-01-18 03:40:51', 6, 6),
(189, '', '2 levels of office complex with extended warehouse, 3 x yards and workshop buildings together with hardstand area plus other minor,improvements. They situated on a 5.5416 hectares of light Industrial allotment in the City of Lae.', 3, 8, 4, 14, 33, '', '23', '7', '', 'Consort Express Lined Limited', 0, '2018-01-18 03:46:15', '2018-01-18 03:46:15', 6, 6),
(190, '', '3 bedroom high covenant residence  with carport, extra bedroom and laundry downstairs. It is situated on a 1,800 square meters residential allotment in the City of Lae.', 4, 13, 1, 14, 14, '', '69', '41', '', 'Consort Express Lines Ltd', 0, '2018-01-18 03:51:17', '2018-01-18 03:53:44', 6, 6),
(191, '', '4 x bedrooms high cost residence, approximately  277.88  square meters,   . It is situated on a 1,060 square meters, residential allotment in Korobosea.', 4, 13, 1, 22, 1, '', '84', '14', '', 'Consort Express Lines Pty Ltd.', 0, '2018-01-18 04:03:45', '2018-01-18 04:03:45', 6, 6),
(192, '', 'shop/office building on slab; with a 5 bedroom residence to the rear; and a large warehouse in poor condition on an industrial block of about 3, 667 square meters.They are situated on 3, 667 square meters of industrial allotment in Rabaul Town.', 3, 10, 4, 23, 102, '', '67', '11', '', 'Consort Express Lines', 0, '2018-01-18 04:13:07', '2018-01-18 04:13:07', 6, 6),
(193, '', '2 x Warehouses/ Office Building with mezzanine storage and residences, new office complex plus other improvements. They are situated on a 1, 998 square meters industrial  allotment of Lae City.', 3, 8, 4, 14, 32, '', '15', '12', '', 'Continental Trading Co. LImited', 0, '2018-01-18 04:31:18', '2018-01-18 04:31:18', 6, 6),
(194, '', '3 x 2 bedroom unit recently under renovation and a 2 level 3 x 3 bedroom unit, plus other minor improvements.They are situated on a 1 138 square meters residential allotment in Lae City.', 4, 17, 1, 14, 20, '', '93', '9', '', 'Continental Trading (Co.) Limited.', 0, '2018-01-18 04:36:23', '2018-01-18 04:36:23', 6, 6),
(195, '', 'High set high cost 3 x bedroom duplex plus other improvements. It is situated on a total land area of 1, 011 square meters.', 4, 13, 1, 14, 20, '', '102', '02', '', 'Danny Wyatt Vincent and Leonie Wyatt.', 0, '2018-01-18 04:43:07', '2018-01-18 04:43:07', 6, 6),
(196, '', '2 level residential building comprising 5 x 2 	bedroom units to the top floor and 5 x 2 bedroom 	units to the ground floor with extended laundry and 	walkway areas. Land Area: 810 square meters.', 4, 13, 1, 14, 17, '', '168', '34', '', 'Yamu Esseo', 0, '2018-01-18 04:52:03', '2018-01-18 04:52:03', 6, 6),
(197, '', 'Commercial Office/Restaurant/Residence complex, approximately 924 square meters of  . It is situated on a 640 square meters of Commercial allotment within Kimbe Town.', 2, 5, 4, 10, 102, '', '33', '17', '', 'Kimbe Clothing Pty Ltd', 0, '2018-01-18 05:07:38', '2018-01-18 05:07:38', 6, 6),
(198, '', 'Supermarket, approximately 240 square meters . It is situated on a 560 square meters Commercial allotment in Kimbe Town.', 2, 4, 4, 10, 102, '', '19', '14', '', 'Kimbe Enterprises Pty Ltd', 0, '2018-01-18 05:18:41', '2018-01-18 05:18:41', 6, 6),
(199, '', '2 level Office/Residence/Storage Building, approximately 518 square meters of   plus 294 square meter of 2 x Sheds. It is situated on a  20,680 square meters of Agricultural Land outside Kimbe Town.', 6, 5, 9, 10, 102, '2500', '', '', '', 'Taz Ju Kim', 0, '2018-01-18 05:40:26', '2018-01-18 05:57:46', 6, 6),
(200, '', 'Erected on the property is a high set 3 x bedroom residence plus other improvements. Land Area:  1,000 square meters.', 4, 12, 1, 14, 40, '', '337', '102', '', 'Dobbie Pusili', 0, '2018-01-18 05:51:53', '2018-01-18 05:51:53', 6, 6),
(201, '', '2 level 5 x bedrooms stand alone residence, approximately 154.8 square meters of  plus other minor improvements. It is situated on approximately 452 square meters of residential allotment in Lae City.', 4, 13, 1, 14, 37, '', '268', '4', '', 'Freddie & Dorcas Guba', 0, '2018-01-18 06:06:19', '2018-01-18 06:06:19', 6, 6),
(202, '', '3 x 2 levels 3 bedroom houses, each comprising an area of approximately 122.4 square meters plus other minor improvements.They are situated on approximately 1,011 square meters of residential allotment in Lae City.', 4, 14, 1, 14, 20, '', '104', '12', '', 'Dr. Sam Sirox Kari & Meloni Kari', 0, '2018-01-18 06:49:34', '2018-01-18 06:49:34', 6, 6),
(203, '', 'Shop building known as the “Kange Gaming Center” with adjoined shop buildings plus other improvements. They are situated on a 2, 180 square meters of commercial allotment in City of Lae.', 2, 4, 4, 14, 99, '', '05', '23', '', 'Kange Gaming Centre Limited', 0, '2018-01-18 07:16:20', '2018-01-18 07:16:20', 6, 6),
(204, '', 'Duplex dual level town houses each comprising a gross floor area of approximately 310 square meters including a garage for each unit plus common bar and pool facilities as well as other improvements. They are situated on 1, 340 square meters of residential allotment in City of Lae.', 4, 15, 1, 14, 14, '', '32', '05', '', 'Goroka Bookmakers Limited', 0, '2018-01-21 02:12:44', '2018-01-21 02:12:44', 6, 6),
(205, '', 'A single level residential apartment block commonly known as the “Poinciana Apartments” and comprises 8 x 2 bedroom units with carport fro each unit plus other improvements. It is situated on 1, 555 square meters of residential allotment in City of Lae.', 4, 14, 1, 14, 14, '', '32', '46', '', 'Goroka Bookmakers Limited', 0, '2018-01-21 02:19:28', '2018-01-21 02:19:28', 6, 6),
(206, '', 'A two storey residential apartment block commonly known as “Fairways Apartment” and comprises 9 x units with garage and storage on ground floor plus the improvements. It is situated on 1, 500 square meters of residential allotment in City of Lae.', 4, 14, 1, 14, 14, '', '032', '086', '', 'Yuwai No. 29 Limited', 0, '2018-01-21 02:25:41', '2018-01-21 02:25:41', 6, 6),
(207, '', 'Two levels 10 x 3 bedroom units and to be named as Markham Apartments. It is situated on 1, 029 square meters of residential allotment in City of Lae.', 4, 14, 1, 14, 14, '', '130', '28', '', 'Noel Keith Edwards & Janice Elizabeth Edwards', 0, '2018-01-21 02:33:01', '2018-01-21 02:33:01', 6, 6),
(208, '', '2 x warehouse buildings each comprising a gross floor area of approximately 1, 200 square meters each plus other improvements.They are situated on a 4, 000 square meters of industrial allotment within the Malahang Industrial Area.', 3, 8, 10, 14, 24, '', '354', '32', '', 'Yuwai No. 29 Limited', 0, '2018-01-21 02:38:54', '2018-01-21 02:38:54', 6, 6),
(209, '', 'A warehouse building comprising a gross floor area of approximately 2, 000 square meters plus an hardstand yard of 2, 000 square meters. They are situated on a 4, 000 square meters of industrial allotment within the Malahang Industrial Area.', 3, 8, 10, 14, 24, '', '354', '38', '', 'Goroka Bookmakers Limited', 0, '2018-01-21 02:44:35', '2018-01-21 02:44:35', 6, 6),
(210, '', 'Trade store and 2 x detached residential houses plus other improvements.\nLand Area:  	800 square meters', 2, 4, 4, 14, 102, '558', '', '', '', 'Edwin Rumbam', 0, '2018-01-21 02:56:48', '2018-01-21 02:56:48', 6, 6),
(211, '', 'A service station setting with associated improvements.These are situated on a combined land area of 1,896.96 square meters of adjoining allotments in the City of Mount Hagen.', 2, 20, 4, 20, 102, '', '14', '2&3', '', 'Tega Development Limited', 0, '2018-01-21 11:06:18', '2018-01-21 11:06:18', 6, 6),
(212, '', 'Office and shop buildings, approximately 613.58 square meters. It is situated on a 776.0 square meters of commercial allotment in Goroka.', 2, 4, 4, 6, 120, '', '04', '14', '', 'Sek No. 35 Limited.', 0, '2018-01-22 02:21:45', '2018-01-22 11:07:33', 6, 6),
(213, '12', '4 x 2 bedroom flats with an external laundry, approximately 294 square meters block. They are situated on800 square metres of residential allotment in the City of Lae.', 4, 16, 1, 14, 112, '', '168', '20', '', 'Peter and Christine Erepan', 0, '2018-01-22 02:50:02', '2018-01-22 02:51:03', 6, 6),
(214, '', '2 x adjoining land portions with institutional developments including primary and secondary schools, vocational and seminary colleges as well as a coffee plantation and other associated improvements.\n\n	They are situated on approximately a total 542.68 hectares of adjoining land portions within Warakar Area, Town of Banz - Western Highlands Province.', 6, 20, 9, 20, 102, '57 & 58', '', '', '', 'Catholic Diocese of Mount Hagen Board of Trustees.', 0, '2018-01-22 03:39:04', '2018-01-22 03:39:04', 6, 6),
(215, '', 'Unknown', 4, 13, 1, 14, 19, '', '57', '44', '', 'Telikom', 0, '2018-01-22 04:21:43', '2018-01-22 04:21:43', 10, 10),
(216, '', 'Unknown', 4, 14, 1, 14, 14, '', '32', '22', '', 'Telikom', 0, '2018-01-22 04:30:04', '2018-01-22 04:30:04', 10, 10),
(217, '', '20 x rooms motel, approximately 562 square meters.It is situated on 1,929 square meters of residential allotments in the City of Lae.', 4, 20, 1, 14, 20, '', '94', '3-5', '', 'Woolwich Bulldings Limited', 0, '2018-01-22 05:44:56', '2018-01-22 05:44:56', 6, 6),
(218, '', '2 levels, 6 x 2 bedrooms units, approximately 512.0 square meters plus other improvements. It is situated on approximately 1, 000 square meters residential allotment in Lae City.', 4, 17, 1, 14, 20, '', '103', '01', '', 'Rivers (PNG) Limited.', 0, '2018-01-22 05:54:01', '2018-01-22 05:54:01', 6, 6),
(219, '', 'Warehouse comprising office, storage as well as toilet facilities and other minor improvements. It is situated on 2,334.53 square meters of industrial allotment in the City of Lae.', 3, 8, 4, 14, 33, '', '47', '04', '', 'FTM Construction', 0, '2018-01-22 07:13:36', '2018-01-22 07:13:36', 6, 6),
(220, '', '5 x industrial warehouses containing mainly storage and offices. These are situated on approximately 1,180 square meters of residential allotment, within Papuan Compound Area, City of Lae', 3, 8, 4, 14, 22, '', '39', '38', '', 'John Gallasch Rosso', 0, '2018-01-22 07:20:26', '2018-01-22 07:20:26', 6, 6),
(221, '', '4 x bedroom residence with other minor improvements. It is situated on 1,038 square meters of residential allotment in the City of Lae.', 4, 14, 1, 14, 20, '', '93', '74', '', 'John Rosso Gallasch', 0, '2018-01-22 07:28:21', '2018-01-22 07:28:21', 6, 6),
(222, '', 'The property is a vacant land which is fenced and levelled.', 4, 1, 1, 14, 22, '', '39', '41', '', 'First Taim Investment Limited', 0, '2018-01-22 07:37:44', '2018-01-22 07:37:44', 6, 6),
(223, '', 'The property is a vacant land which is fenced and leveled.', 1, 1, 1, 14, 33, '', '07', '70', '', 'RG Transport Limited.', 0, '2018-01-22 07:47:02', '2018-01-22 07:47:02', 6, 6),
(224, '', 'Warehouse building,  approximately 990.0 square meters plus other improvements. It is situated on a 2,000 square meters general industrial allotment in Lae City.', 3, 8, 4, 14, 32, '', '9', '04', '', 'Kumgie Corporaton Pty Ltd.', 0, '2018-01-22 08:01:01', '2018-01-22 08:01:01', 6, 6),
(225, 'Old Hastings Seering', 'Large industrial property with workshop and offices', 3, 8, 3, 14, 32, '', '25', '7', '', 'Express Freight Management', 0, '2018-01-22 08:05:16', '2018-01-22 08:05:16', 10, 10),
(226, '', 'Warehouse, Residence/Office, Storage & Residential Quarters buildings plus other improvements. They are situated on a 1,695 square meters general industrial allotment in Lae City.', 3, 8, 4, 14, 20, '', '70', '08', '', 'Trends (PNG) Limited', 0, '2018-01-22 08:07:38', '2018-01-22 08:07:38', 6, 6),
(227, 'Old Hornibrook workshops', 'Large industrial property with steel fabrication workshops, offices, warehousing, hardstand', 3, 9, 3, 14, 32, '', '25', '9, 14, 15, 18', '', 'Express Freight Management', 0, '2018-01-22 08:18:20', '2018-01-22 08:18:20', 10, 10),
(228, '', 'Workshops/Warehouses and Office/Residence buildings plus other associated improvements. They are situated on 9, 800 square meters of industrial allotments outside City of Lae.', 3, 8, 4, 14, 100, '517,518 & 519', '', '', '', 'HBS Machinery Limited', 0, '2018-01-22 08:29:19', '2018-01-22 08:29:19', 6, 6),
(229, '', 'Workshop building & hardstand plus other improvements. It is situated on 0.938 hectares of land parcel, outside Lae City.', 3, 8, 4, 14, 100, '579', '', '', '', 'HBS Machinery Limited.', 0, '2018-01-22 08:36:17', '2018-01-22 08:36:17', 6, 6),
(230, '', 'The property is the vacant land', 4, 1, 1, 14, 100, '796', '', '', '', 'HBS Machinery Limited.', 0, '2018-01-22 08:43:24', '2018-01-22 08:43:24', 6, 6),
(231, '', 'Residential Compound buildings with associated  improvements. They are situated on 0.833 hectares of land portion  outside City of Lae.', 4, 23, 1, 14, 100, '797', '', '', '', 'HBS Machinery Limited', 0, '2018-01-22 08:48:58', '2018-01-22 08:48:58', 6, 6),
(232, '', 'Warehouse Building plus other improvements. It is situated on 0.358 hectares of industrial allotment, outside City of Lae.', 2, 8, 4, 14, 100, '800', '', '', '', 'HBS Machinery Ltd', 0, '2018-01-22 08:55:00', '2018-01-22 08:55:00', 6, 6),
(233, '', 'These are vacant adjoining industrial blocks with chain mesh wire fencing. A total of 7,972 square meters of light industrial allotments.', 3, 1, 4, 14, 16, '', '158', '5 & 6', '', 'Samson Mua & Pioneer Development Corporation Pty Ltd', 0, '2018-01-22 09:04:09', '2018-01-22 09:04:09', 6, 6),
(234, '', 'The Land is vacant with no major improvements. It is graded and leveled with drainage on two sides of the allotment with access paved and graveled and a hard stand area. Open without fencing.', 4, 1, 1, 14, 100, '', '83', '01', '', 'FTM Constructions', 0, '2018-01-22 09:16:01', '2018-01-22 09:16:01', 6, 6),
(235, '', 'Wet and Dry Coffee Factory development plus staff residences as well as other complementing developments. They are situated on a land area of approximately 19.84 hectares.', 3, 9, 4, 7, 120, '101', '', '', '', 'Intena Business Group Inc', 0, '2018-01-22 09:28:13', '2018-01-22 11:08:10', 6, 6),
(236, '', '2 x warehouse building plus other improvements. They are situated on 0.838 Hectares as per survey plan.', 3, 8, 4, 14, 17, 'N/A', '', '', '', 'Gabriel Igaso', 0, '2018-01-22 09:52:00', '2018-01-22 09:52:00', 6, 6),
(237, '', 'A warehouse building and 2 x detached residences plus other improvements.They are situated on a 3, 810 square meters commercial allotment Goroka, Eastern Highlands Province.', 3, 8, 4, 6, 121, '', '124', '01', '', 'Gabriel Igaso', 0, '2018-01-22 09:58:13', '2018-01-22 10:50:41', 6, 6),
(238, '', '2 x Retail shops, a Service Station, a 2 level 3 Bedroom residence with a warehouse with mezzanine floor plus other site improvements. They are situated on a 3 196 square meters of commercial allotment in Town of Kainantu.', 2, 5, 4, 7, 119, '', '13', '1 & 2', '', 'Highlands Food Supplies Ltd', 0, '2018-01-22 10:05:02', '2018-01-22 10:51:27', 6, 6),
(239, '', 'Vacant commercial land within Town of Kainantu. It is adequately drained; back filled with gravel and compacted.', 2, 1, 4, 7, 120, '', '53', '02', '', 'Highlands Food Supplies Limited', 0, '2018-01-22 10:11:01', '2018-01-22 10:51:58', 6, 6),
(240, '', '3 x 3 bedroom flats each comprising a floor area of approximately 96 square meters plus other improvements. They are situated on a 971 square meters residential allotment in Kainantu.', 4, 16, 1, 7, 119, '', '30', '04', '', 'Highlands Food Supplies', 0, '2018-01-22 10:18:25', '2018-01-22 10:52:34', 6, 6),
(241, '', 'Coffee Factory containing a gross floor area of approximately 632.43 square meters with a 2 level office and a recently constructed warehouse containing a floor area of approximately 532.93 square meters plus other improvements.They are situated on a 2 956 square meters of light industrial allotment in Kainantu Town.', 3, 8, 4, 7, 32, '', '14', '04', '', 'Highlands Food Supplies Limited', 0, '2018-01-22 10:46:22', '2018-01-22 10:46:22', 6, 6),
(242, '', 'Vacant Residential land located out of Kainantu Town. It is sloping from the street level to the rear having good views to Town of Kainantu.', 4, 1, 1, 7, 120, '', '35', '05', '', 'Gabriel Igaso', 0, '2018-01-22 10:56:39', '2018-01-22 10:56:39', 6, 6),
(243, '', '2 level 3 bedroom residence with 5 x rooms on ground floor, plus other improvements. They are situated on a 1, 619 square meters residential allotment in Town of Kainantu.', 4, 13, 1, 7, 120, '', '08', '06', '', 'Gabriel Igaso', 0, '2018-01-22 10:56:40', '2018-01-22 11:02:13', 6, 6),
(244, '', 'A fuel storage area comprising a 2 bedroom duplex flat, 3 semi permanent residences and fuel storage tanks plus other improvements. They are situated on a 3 000 square meters Commercial allotment in Town of Kainantu.', 4, 15, 4, 7, 119, '', '13', '15', '', 'Highlands Food Supplies', 0, '2018-01-23 02:07:57', '2018-01-23 02:07:57', 6, 6),
(245, '', '3 bedroom residence of approximately 81.42 square meters plus other improvements. It is situated on a 992 square meters residential allotment Goroka, Eastern Highlands Province.', 4, 13, 1, 6, 120, '', '40', '25', '', 'Highlands Food Supplies Ltd', 0, '2018-01-23 02:13:20', '2018-01-23 02:13:20', 6, 6),
(246, '', '3 x bedroom residence with a 3 x bedroom unit on ground floor plus other improvements. It is situated on a total land area of 1, 012 square meters.', 4, 13, 1, 22, 75, '', '63', '17', '', 'Elastus Geroro & Anastasia Geroro', 0, '2018-01-23 02:22:34', '2018-01-23 02:22:34', 6, 6),
(247, '', 'Two levels 3 x 3 bedrooms executive units plus other improvements. It is situated on a total land area of 1, 593 square meters of residential allotment.', 4, 14, 1, 14, 99, '', '03', '33', '', 'Dick Yapo', 0, '2018-01-23 02:31:22', '2018-01-23 02:31:22', 6, 6),
(248, '', 'Erected on the property is a makeshift shelter plus other improvements.\nLand Area:  421 square meters.', 4, 20, 1, 14, 99, '', '22', '81', '', 'Noah Hoea', 0, '2018-01-23 02:50:27', '2018-01-23 02:53:57', 6, 6),
(249, '', '1.	Coffee Roasters factory  -  375 m2 + 283.4m2,\n2.	Office Building – 96.72m2 \n3.	Managing Director’s Residence – 208.75m2\n4.	4 x Staff Residences of varying floor area.\n5.	Plus other improvements.\nThey are situated on approximately 2.0 ha of allotment in Town of Goroka.', 3, 8, 4, 6, 48, '', '73', '04', '', 'Goroka Coffee Roasters Limited', 0, '2018-01-23 03:01:46', '2018-01-23 03:01:46', 6, 6),
(250, '', 'Two Guest accommodation known as the “North Goroka Guest House” plus other minor improvements. They are situated on a land area of approximately        967 square meters of residential allotment.', 4, 7, 4, 6, 8, '', '11', '27', '', 'Ruth Ambiyo', 0, '2018-01-23 03:15:23', '2018-01-23 03:15:23', 6, 6),
(251, '', 'Set 3 x bedroom residence plus other improvements. It is situated on a total of approximately 1, 015 square meters of Residential allotment in Town of Goroka', 4, 13, 1, 6, 8, '', '50', '21', '', 'Stanley Gotaha', 0, '2018-01-23 03:26:59', '2018-01-23 03:26:59', 6, 6),
(252, '', '3 x bedroom residence with conference room under main plus other improvements. It is situated on a total of approximately 1100.5 square meters of Residential allotment in Town of Goroka.', 4, 13, 1, 6, 8, '', '80', '22', '', 'Stanley Gotaha', 0, '2018-01-23 03:35:16', '2018-01-23 03:35:16', 6, 6),
(253, '', 'Warehouse building, 2 x retail outlets with a 3 bedroom residence, 1 x fast food with preparation area plus other improvements.They are situated on a total of approximately 1 760 square meters of Commercial allotment in Town of Goroka.', 2, 5, 4, 6, 121, '1226C', '', '', '', 'Stanley Gotaha', 0, '2018-01-23 03:42:02', '2018-01-23 03:46:01', 6, 6),
(254, '', '2 level 4 x bedroom house with en suite and detached 2 bedrooms on ground floor plus other improvements.They are situated on an approximately 2 660 square meters of customary land outside of Town of Goroka.', 4, 13, 4, 6, 102, '1418C', '', '', '', 'Mrs. Grace Kaupa', 0, '2018-01-23 04:21:02', '2018-01-23 04:21:02', 6, 6),
(255, '', 'Area comprises;\ni.	Existing Lodge – 252.10m2\nii.	Proposed 2 level lodge – 1,318.86m2\niii.	GK Klos & Kaibar – 307.52m2\niv.	Warehouse – 110.40m2\nv.	Plus other Improvements\nThey are situated on an approximately 2, 048 square meters of Commercial Allotment in Town of Goroka.', 2, 5, 4, 6, 119, '', '06', '06', '', 'Grace Kaupa', 0, '2018-01-23 04:27:30', '2018-01-23 04:27:30', 6, 6),
(256, '', 'Office with attached workshop/sewing building as well as complementing developments including Offices, Residences (Single houses, Flats/Units,Barracks) plus other minors improvements. They are situated on 43.35 hectares of state leased (out of town) land currently used for mixed purposes.', 2, 5, 1, 14, 102, '03', '', '', '', 'Dennis William Bux', 0, '2018-01-23 04:35:21', '2018-01-23 04:35:21', 6, 6),
(257, '', 'Unimproved as at date of inspection. Land Area:  1,179 square meters.', 1, 1, 1, 14, 102, '', '86', '12', '', 'Anthony Gilbert and Elena Gilmore', 0, '2018-01-23 04:48:43', '2018-01-23 04:48:43', 6, 6),
(258, '', '8 x Bays extended from existing workshop and is assessed “AS IF COMPLETE”. It is situated on 3, 580 square meters of industrial allotments outside City of Lae.', 4, 8, 4, 14, 100, '519', '', '', '', 'HBS Machinery Limited', 0, '2018-01-23 07:14:57', '2018-01-23 07:14:57', 6, 6),
(259, '', 'High set duplex building with 2 x bedrooms per unit and storage on the ground floor plus other improvements. Land Area: 1,000 square meters', 4, 15, 1, 14, 100, '808', '', '', '', 'HBS Machinery Limited', 0, '2018-01-23 07:22:02', '2018-01-23 07:22:02', 6, 6),
(260, '', '1.8 meters fencing with cyclone wire on galvanized posts and proper storm water drainage. It is used as storage yard occupied by removable 40 foot steel container accommodations with corrugated galvanized iron roofing.', 3, 20, 4, 14, 100, '950 & 951', '', '', '', 'HBS (PNG) Limited', 0, '2018-01-23 07:32:52', '2018-01-23 07:32:52', 6, 6),
(261, '', 'Improved with 1.8 meters fencing with cyclone wire on galvanized posts and proper storm water drainage. It is used as storage yard occupied by removable 40 foot steel container accommodations.', 3, 1, 4, 14, 100, '1040', '', '', '', 'HBS (PNG) Limited', 0, '2018-01-23 07:40:08', '2018-01-23 07:40:08', 6, 6),
(262, '', '2 levels high covenant 3 x bedroom residence with a self contained unit and extra 2 x  2 bedrooms units downstairs, approximately 307.5 square meters together with other associated improvements. They are situated on approximately 844 square meters of residential allotment in Lae City.', 4, 13, 1, 14, 112, '', '186', '16', '', 'HELA OPENE INVESTMENTS LIMITED', 0, '2018-01-23 07:48:43', '2018-01-23 07:48:43', 6, 6),
(263, '', '2 levels high covenant 3 x bedroom residence with carport and extra 2 x bedrooms downstairs, approximately 260.94 square meters of together with other associated improvements. They are situated on approximately 844 square meters of residential allotment in Lae City.', 4, 13, 1, 14, 112, '', '167', '05', '', 'Eka Petrus Awali', 0, '2018-01-23 07:55:39', '2018-01-23 07:55:39', 6, 6),
(264, '', '2 level high covenant 5 bedrooms stand alone residence, approximately 256.25 square meters of a  plus other minor improvements. It is situated on a 1,109.7 square meters residential allotment in Goroka Town.', 4, 13, 1, 6, 8, '', '25', '05', '', 'Henry Iyapo Smith & Manrie Smith', 0, '2018-01-23 08:03:34', '2018-01-23 08:03:34', 6, 6),
(265, '', '2 x 2 level residence/office buildings plus other improvements.', 4, 13, 1, 16, 116, '', '40', '17', '', 'Horizont 3000', 0, '2018-01-23 08:22:51', '2018-01-23 08:22:51', 6, 6),
(266, '', 'Fabrication factory setting with associated buildings comprising; \n1 x Dual Level Administration Block\n 4 x Manufacturing/Fabrication Sheds \n 2 x Warehouses containing workshop and office/residence as well as other complementing developments.They are situated on a combined area of 27,000 square meters of industrial adjoining allotments within the City of Lae.', 3, 9, 4, 14, 33, '', '25', '9,14,15 & 18', '', 'Hornibrook NGI Pty Ltd.', 0, '2018-01-23 08:39:38', '2018-01-23 08:39:38', 6, 6),
(267, '', '3 bedrooms executive residence with carport/storage and laundry under main, approximately 182.1 square meters of high set high covenant plus other minor improvements. It is situated on approximately 1, 000 square meters of residential allotment in the City of Lae.', 4, 14, 1, 14, 112, '', '313', '7', '', 'Hubert & Beryl Pegu', 0, '2018-01-23 08:54:16', '2018-01-23 08:54:16', 6, 6),
(268, '', 'Residence/office building, approximately 336 square meters of  with minor improvements including shed, kaibar and restaurant as well as fencing. They are situated on 8,490 square meters of industrial allotment within the Town of Kainantu.', 3, 13, 4, 7, 119, '', '26', '09', '', 'F & M Engineering Pty Ltd', 0, '2018-01-23 09:05:59', '2018-01-23 09:05:59', 6, 6),
(269, '', 'Industrial Warehouse containing storage, offices, mini processing plant plus other minor improvements. They are situated on approximately 13, 800 square meters of a corner industrial allotment', 3, 8, 4, 14, 33, '', '20', '01', '', 'Nina Pty Ltd', 0, '2018-01-23 09:16:21', '2018-01-23 09:16:21', 6, 6),
(270, '', 'Warehouse/storage, office & shop spaces and residential units, approximately 1,457.1 square meters of . It is situated on 4047 square meters of Industrial allotments, along Air corps road, main market area, City of Lae', 3, 8, 4, 14, 33, '', '88', '5 & 13', '', 'General Auto Centre', 0, '2018-01-23 09:24:15', '2018-01-23 09:24:15', 6, 6),
(271, '', 'Office building plus associated buildings including warehouses and residences, approximately 88.0 square meters. It is situated on approximately 13,400.00 square meters of industrial allotment within the immediate main commercial & industrial vicinity of Madang Town.', 3, 5, 9, 16, 116, '', '9', '1', '', 'Steamships Trading Company Limited.', 0, '2018-01-23 09:37:00', '2018-01-23 09:37:00', 6, 6),
(272, '', 'Warehouse/Office building and a shed . They are  situated on a  7,796 square meters of industrial parcel of land  in Lae.', 3, 8, 4, 14, 32, '', '23', '10', '', 'Steamships Trading Company Ltd.', 0, '2018-01-23 09:43:39', '2018-01-23 09:43:39', 6, 6),
(273, '', 'Land portion commonly within subject property known as Terminal Swampland. Approximately total of 10, 940 square meters of industrial allotments classified as Terminal Swampland in the City  of Lae.', 3, 20, 4, 14, 33, '', '34', '29', '', 'BP (Papua New Guinea) Pty Ltd', 0, '2018-01-23 09:53:36', '2018-01-23 09:53:36', 6, 6),
(274, '', 'Warehouse containing storage, offices, restaurant and bakery with other minor improvements. It is situated on 4070 square meters of Industrial allotments in the City of Lae.', 3, 8, 4, 14, 32, '', '82', '4 & 5', '', 'Tipulu Trading limited', 0, '2018-01-23 10:01:13', '2018-01-23 10:01:13', 6, 6),
(275, '', 'Office, Factory, Storage/Workshop and freezer buildings,approximately a total of 1792.37 square meters of   together with other minor improvements. These are situated on 4184 square meters of Light Industrial allotments in the City of Lae.', 3, 8, 4, 14, 32, '', '47', '13 & 14', '', 'Damba Pty Ltd', 0, '2018-01-23 10:19:22', '2018-01-23 10:19:22', 6, 6),
(276, '', 'Coffee Mill building with office, approximately 592.08 square meters  and other minor improvements. They are situated on 2956 square meters of industrial allotment within the Town of Kainantu.', 3, 9, 4, 7, 32, '', '14', '04', '', 'Kainantu Development Corporation Pty Ltd.', 0, '2018-01-23 10:28:02', '2018-01-23 10:28:02', 6, 6),
(277, '', '3 x Warehouses/Storage plus office space together with sheds, concrete blocks, paves, pipes and culverts processing plants as well as residence, approximately 2, 098.06 square meters of  plus other minor improvements. They are situated on a total of 8, 190.0 square meters of industrial allotment within the City of Lae.', 3, 8, 4, 14, 15, '', '164', '2', '', 'Morobe Concrete Products Ltd', 0, '2018-01-23 10:39:20', '2018-01-23 10:39:20', 6, 6),
(278, '', 'Hardware Shed/Offices, Workshop, Pipes/Timber sheds and fencing,approximately 2,730.00 square meters. These are situated on a total of 7,006.0 square meters of consolidated industrial allotments within the City of Lae.', 3, 8, 4, 14, 32, '', '18', '8 & 9', '', 'Plumtrade Limited', 0, '2018-01-23 10:46:38', '2018-01-23 10:46:38', 6, 6),
(279, '', 'Workshop, storage and joinery buildings as well as residential blocks, approximately 1, 105.50 square meters in all  together with other minor improvements. It is situated on approximately 2580 square meters of Light Industrial allotments in the City of Lae.', 3, 8, 4, 14, 33, '', '25', '3 & 4', '', 'Huon Electrical Pty Ltd', 0, '2018-01-23 10:56:48', '2018-01-23 10:56:48', 6, 6),
(280, '', 'Office, storage and showroom, approximately 799 square meters of  with other minor improvements. It is situated on 2238 square meters of Light Industrial allotments in the City of Lae.', 3, 8, 4, 14, 32, '', '25', '12', '', 'Huon Electrical Pty Ltd', 0, '2018-01-23 11:04:51', '2018-01-23 11:04:51', 6, 6),
(281, '', 'Warehouse/office building and 2,112.12 square meters factory/ processing plant, workshop, office building, approximately 2,481.5 square meters of  .They are situated on a 1.3293   hectares of general industrial allotments at Voco Point, City of Lae.', 3, 8, 4, 14, 20, '', '42', '12-17', '', 'Colgate Palmolive (PNG) Pty Ltd.', 0, '2018-01-24 02:28:20', '2018-01-24 02:28:20', 6, 6),
(282, '', '2 levels of office complex with extended warehouse, 3 x yards and workshop buildings together with hardstand area plus other minor improvements. They situated on a 5.5416 hectares of light Industrial allotment in the City of Lae.', 3, 8, 4, 14, 33, '', '23', '07', '', 'Consort Express Lined Limited.', 0, '2018-01-24 02:44:27', '2018-01-24 02:44:27', 6, 6),
(283, '', '3 bedroom high covenant residence  with carport, extra bedroom and laundry downstairs. It is situated on a 1,800 square meters residential allotment in the City of Lae.', 4, 13, 1, 14, 14, '', '41', '69', '', 'Consort Express Lines Ltd.', 0, '2018-01-24 02:50:02', '2018-01-24 02:50:02', 6, 6),
(284, '', 'Factory /Office/Storage building plus staff residences, approximately 2, 098.06 square meters of  together with other minor improvements. They are situated on a total ……. of square meters of industrial allotment within the City of Lae.', 3, 8, 4, 14, 32, '', '34', '17 & 18', '', 'Amalpack Ltd.', 0, '2018-01-24 03:32:52', '2018-01-24 03:32:52', 6, 6),
(285, '', 'Industrial workshop/office, approximately 899.4 square meters  as well as other minor improvements. These are situated on a total of 4,000 square meters of industrial allotments in the City of Lae.', 3, 8, 4, 14, 24, '', '354', '33', '', 'Huon Machinery Ltd', 0, '2018-01-24 03:46:15', '2018-01-24 03:46:15', 6, 6),
(286, '', 'Shop/Office complex, approximately 323.0 square meters plus other minor improvements. It is situated on 1,449.0 square meters of commercial land portion in Kamkumung Area, City of Lae.', 2, 4, 4, 14, 38, '371C', '', '', '', 'BP (PNG) Pty Ltd', 0, '2018-01-24 03:57:14', '2018-01-24 04:11:09', 6, 6),
(287, '', '2 levels, 6-bedroom executive residence with an external laundry/ toilet/ shower and house wind, approximately 472.96 square meters, . It is situated on a 9960 square meters residential allotment, Gannet Street, in Lae City.', 4, 14, 1, 14, 20, '', '93', '34', '', 'George Ipi', 0, '2018-01-24 04:20:25', '2018-01-24 04:23:35', 6, 6),
(288, '', '3 bedrooms residence, approximately 76.9 square meters,. It is situated on a 540 square meters of residential allotment in Lae.', 4, 13, 1, 14, 26, '', '118', '27', '', 'Joseph Ipi', 0, '2018-01-24 04:35:29', '2018-01-24 04:35:29', 6, 6),
(289, '', '2 levels, 6 x 2 bedroom residential flats, approximately 394.24 square meters block of  plus other minor improvements. It is situated on 749 square meters of residential allotment in the City of Lae.', 4, 16, 1, 14, 14, '', '300', '10', '', 'George Ipi.', 0, '2018-01-24 04:41:50', '2018-01-24 04:41:50', 6, 6),
(290, '', '3 x bedroom upstairs and downstairs open as well as other minor improvements. They are situated on 391 square meters of residential allotment.', 4, 13, 1, 14, 22, '', '213', '31', '', 'George Ipi', 0, '2018-01-24 04:55:27', '2018-01-24 04:55:27', 6, 6),
(291, '', '4 bedroom split level residential building with attached 2 bedroom unit plus other improvements.', 4, 13, 1, 14, 15, '', '156', '16', '', 'David Raim', 0, '2018-01-24 05:03:38', '2018-01-24 05:03:38', 6, 6),
(292, '', 'Erected on the property is a shed with adjoining residence plus other improvements.', 4, 12, 1, 14, 76, '', '330', '8', '', 'David Raim', 0, '2018-01-24 05:16:02', '2018-01-24 05:16:02', 6, 6),
(293, '', '2 x 2 bedroom flats upstairs and 3 x 1 bedroom flats downstairs with external laundry and car park with a land area of 253.68 square meters. They are situated on 700 square meters of residential allotment in the City of Lae.', 4, 16, 1, 14, 14, '', '35', '65', '', 'International Training Institute', 0, '2018-01-24 05:25:46', '2018-01-24 05:25:46', 6, 6),
(294, '', 'Two Bedroom staff Duplex with vast land area for further  development. It is situated on 1, 243 square meters of Residential Allotment  within Town of Wau.', 4, 15, 1, 28, 102, '', 'A', '12', '', 'Jabanardi Limited', 0, '2018-01-24 05:55:42', '2018-01-24 05:55:42', 6, 6),
(295, '', 'High set 2 x bedroom Manager’s residence building plus other improvements. It is situated on 2,010 square meters of residential allotment within Township of Wau.', 4, 13, 1, 28, 102, '', 'A', '11', '', 'Jabanardi Limited', 0, '2018-01-24 07:17:23', '2018-01-24 07:17:23', 6, 6),
(296, '', 'a)	Supermarket & Fuel Station – 0.517 Ha.\nb)	Manager’s Residence – 0.541 Ha\nc)	Staff Residence Compound – 0.394 Ha\nd)	Roads/Access – 0.300 Ha\nTotal land area occupied by Jabanardi in Wabu Compound is 1.752 Ha.', 2, 5, 4, 28, 102, '483', '', '', '', 'PNG Forest Products Limited', 0, '2018-01-24 07:24:00', '2018-01-24 07:24:00', 6, 6),
(297, '', 'Pine Lodge Hotel comprising Guest Rooms, Restaurant, Bar, Staff Houses etc. They are situated on 9.7353 hectares of land portion of Bulolo  Town.', 7, 7, 11, 3, 102, '11', '', '', '', 'Jabanardi Limited', 0, '2018-01-24 07:29:58', '2018-01-24 07:29:58', 6, 6),
(298, '', '3 x bedroom executive residence plus other improvements. It is situated on a total land area of 1, 047 square meters.', 4, 14, 1, 14, 99, '', '7', '45', '', 'Jacob & Rosemary Jim', 0, '2018-01-24 07:48:46', '2018-01-24 07:48:46', 6, 6),
(299, '', 'High set three bedroom residence with enclosed laundry and storage rooms underneath.', 4, 13, 1, 31, 102, '', '509', '01', '', 'Air Niugini Limited', 0, '2018-01-24 08:59:50', '2018-01-25 09:34:51', 2, 4),
(300, '', 'Ground Level Office Building - Sales Office', 2, 3, 2, 15, 102, '', '20', '09', '', 'Air Niugini Limited', 0, '2018-01-24 09:22:51', '2018-01-25 09:47:19', 2, 4),
(301, '', 'Ground level airport terminal building', 7, 20, 11, 16, 48, '', '', '', '', 'Air Niugini Limited', 0, '2018-01-24 09:31:57', '2018-01-25 09:48:37', 2, 4),
(302, '', 'Ground level sales office building', 2, 3, 2, 16, 115, '', '16', '13', '', 'Air Niugini Limited', 0, '2018-01-24 09:37:55', '2018-01-25 09:50:12', 2, 4),
(303, '', 'Ground Level sales and administration office building', 2, 3, 2, 20, 102, '', '01', '6', '', 'Air Niugini Limited', 0, '2018-01-24 09:49:39', '2018-01-25 09:42:58', 2, 4),
(304, '', 'property is a warehouse with an attached office building - Cargo Terminal', 7, 20, 11, 20, 50, '', '2', '1 & 2', '', 'Air Niugini Limited', 0, '2018-01-24 09:55:32', '2018-01-25 09:45:14', 2, 4),
(305, '', 'The property is a ground level terminal building', 7, 20, 11, 20, 50, '', '', '', '', 'Air Niugini Limited', 0, '2018-01-24 10:17:47', '2018-01-25 09:36:44', 2, 4),
(306, '', '3 x bedroom residence plus other minor improvements. It is situated on a 1, 222 square meters of residential allotment in Lae City.', 4, 13, 1, 14, 99, '', '335', '137', '', 'James Bayan', 0, '2018-01-24 10:18:45', '2018-01-24 10:18:45', 6, 6),
(307, '', 'Warehouse building with Supermarket and hardware on ground floor and 	commercial offices and residential accommodation on mezzanine level.', 3, 8, 4, 14, 99, '', '374', '9', '', 'Niugini Building Supplies Limited', 0, '2018-01-24 10:28:42', '2018-01-24 10:28:42', 6, 6),
(308, '', 'Ground level airport terminal', 7, 20, 11, 26, 48, '', '', '', '', 'Air Niugini Limited', 0, '2018-01-24 10:29:39', '2018-01-25 08:48:02', 2, 4),
(309, '', 'Property is a ground level airport terminal building', 7, 20, 11, 6, 102, '', '', '', '', 'Air Niugini Limited', 0, '2018-01-24 10:38:25', '2018-01-25 08:46:48', 2, 4),
(310, '', 'Canteen and 2 level 7 x bedroom residence plus other improvements. They are situated on a 1, 275 square meters residential allotment in Lae City.', 4, 12, 4, 14, 99, '', '339', '191', '', 'Jimmy Boki', 0, '2018-01-24 10:38:46', '2018-01-24 10:38:46', 6, 6),
(311, '', 'Single building having 2 x 3 bedroom units', 4, 13, 1, 10, 102, '', '21', '03', '', 'Air Niugini Limited', 0, '2018-01-24 10:47:11', '2018-01-25 08:30:19', 2, 4),
(312, '', 'High Cost colonial design 3 bedroom single residence. It is situated on approximately 1,500 square meters of residential allotment.', 4, 13, 1, 14, 99, '', '3', '35', '', 'JKT Lim Limited.', 0, '2018-01-24 11:02:41', '2018-01-24 11:02:41', 6, 6),
(313, '', 'Four level older style commercial building with an approximate gross floor area of 4029 square meters including the open deck area.', 2, 3, 2, 22, 61, '2437', '', '', '', 'Air Niugini Limited', 0, '2018-01-25 10:05:20', '2018-01-29 08:25:37', 4, 4),
(314, '', 'Property is a High-set three bedroom residence having an approximate gross floor area of 104 square meters.', 4, 13, 1, 21, 102, '', '28', '4', '', 'Air Niugini Limited', 0, '2018-01-25 10:12:07', '2018-01-25 10:12:07', 4, 4),
(315, '', 'Property is a High-set tow bed room duplex having an approximate gross floor area of 149 square meters.', 4, 15, 1, 21, 102, '', '2', '4', '', 'Air Niugini Limited', 0, '2018-01-25 10:19:54', '2018-01-25 10:19:54', 4, 4),
(316, '', 'On the property are a detached office, attached office/storage, 3x warehouses, detached ablution block and ancillary improvements.', 2, 5, 4, 22, 110, '454 & 455', '', '', '', 'Air Niugini Limited', 0, '2018-01-25 10:38:14', '2018-02-19 20:40:24', 4, 4),
(317, '', 'This is a two level 7 x 3 bedroom units having an approximate gross floor of 1, 174 square meters. Accommodation to each unit comprises a laundry, kitchen, lounge,  dinning, three bedrooms, toilet and bathroom.', 4, 17, 1, 22, 71, '', '08', '09', '', 'Air Niugini Limited', 0, '2018-01-25 10:57:03', '2018-01-25 10:57:03', 4, 4),
(318, '', 'This is a single level three bedroom residence with a bed-sitter and laundry having an approximate gross floor area of 130 square meters including the veranda.', 4, 13, 1, 22, 71, '', '24', '13', '', 'Air Niugini Limited', 0, '2018-01-25 11:07:52', '2018-01-25 11:08:24', 4, 4),
(319, '', '1 x 4 bedrooms and 1 x 3 bedrooms flats, approximately 301.75 square meters. They are situated on approximately 1,600 square meters of residential allotment in Lae City.', 4, 16, 1, 14, 14, '', '41', '54', '', 'JKT Lim Limited', 0, '2018-01-28 02:20:24', '2018-01-28 02:20:24', 6, 6),
(320, '', 'this is a two level building having 4 x 3 bedroom units having a gross floor area of 394 square meters.', 4, 17, 1, 22, 62, '', '78', '08 & 9', '', 'Air Niugini Limited', 0, '2018-01-28 05:12:54', '2018-01-28 05:42:25', 4, 4),
(321, '', 'the property is a three-bedroom residence with a bed-sitter and laundry underneath having an approximate gross floor area of 200 square meters.', 4, 13, 1, 22, 71, '', '91', '2', '', 'Air Niugini Limited', 0, '2018-01-28 05:12:55', '2018-01-28 05:31:53', 4, 4),
(322, '', 'the property is a split-level four-bedroom residence with a laundry and carport underneath having an approximate gross floor area of 203 square meters including the veranda.', 4, 14, 1, 22, 107, '', '43', '7', '', 'Air Niugini Limited', 0, '2018-01-28 05:38:03', '2018-01-28 05:40:02', 4, 4),
(323, '', 'Vacant and Undeveloped Land', 1, 1, 9, 22, 107, '2483', '', '', '', 'Air Niugini Limited', 0, '2018-01-28 05:56:06', '2018-01-28 05:56:06', 4, 4),
(324, '', 'the property is a split level building comprising 1 x 4 bedroom residence and ancillary improvements having an approximate gross floor area of 139 square meters.', 4, 13, 1, 22, 110, '', '135', '01', '', 'Air Niugini Limited', 0, '2018-01-28 06:04:44', '2018-01-28 06:21:18', 4, 4),
(325, '', 'the property is a split level building comprising 1 x 4 bedroom residence and ancillary improvements having an approximate gross floor area of 139 square meters.', 4, 13, 1, 22, 110, '', '03', '137', '', 'Air Niugini Limited', 0, '2018-01-28 06:20:42', '2018-01-28 06:20:42', 4, 4),
(326, '', 'Warehouses, factory and storage plus complementary residential units. These are situated on a 2,000 square meters of light industrial allotment in Lae City.', 3, 8, 4, 14, 99, '', '15', '16', '', 'JKT Lim Limited', 0, '2018-01-28 06:26:04', '2018-01-28 06:26:04', 6, 6),
(327, '', 'Warehouse, Factory and Accommodation Units, approximately 1,904.75 square meters of   . It is situated on approximately 2,000 square meters of industrial allotment along Abel Tasman Street, City of Lae.', 3, 8, 4, 14, 99, '', '15', '15', '', 'JKT Lim Ltd.', 0, '2018-01-28 07:05:09', '2018-01-28 07:05:09', 6, 6),
(328, '', 'Industrial warehouse, shed plus staff residence and storage, approximately 688.0 square meters. It is situated on approximately 4,000 square meters of industrial allotment in Lae.', 3, 8, 4, 14, 99, '', '158', '7', '', 'JKT Lim Ltd.', 0, '2018-01-28 07:12:54', '2018-01-28 07:12:54', 6, 6),
(329, '', 'The property is a split level building comprising 1 x 4 bedroom residence and ancillary improvements having an approximate gross floor area of 139 square meters.', 4, 13, 1, 22, 110, '', '135', '22', '', 'Air Niugini Limited', 0, '2018-01-28 08:02:32', '2018-01-28 08:07:24', 4, 4),
(330, '', 'The property is a split level building comprising 1 x 4 bedroom residence and ancillary improvements having an approximate gross floor area of 139 square meters.', 4, 13, 1, 22, 110, '', '136', '02', '', 'Air Niugini Limited', 0, '2018-01-28 08:08:40', '2018-01-28 08:08:40', 4, 4),
(331, '', 'The property is a split level building comprising 1 x 4 bedroom residence and ancillary improvements having an approximate gross floor area of 139 square meters.', 4, 13, 1, 22, 110, '', '136', '27', '', 'AIr Niugini Limited', 0, '2018-01-28 08:11:42', '2018-01-28 08:11:42', 4, 4),
(332, '', 'The property is a split level building comprising 1 x 4 bedroom residence and ancillary improvements having an approximate gross floor area of 139 square meters.', 4, 13, 1, 22, 110, '', '136', '27', '', 'AIr Niugini Limited', 1, '2018-01-28 08:11:42', '2018-01-29 09:41:15', 4, 4),
(333, '', 'The property is a split level building comprising 1 x 4 bedroom residence and ancillary improvements having an approximate gross floor area of 139 square meters.', 4, 13, 1, 22, 110, '', '136', '27', '', 'AIr Niugini Limited', 1, '2018-01-28 08:11:42', '2018-01-29 09:41:12', 4, 4),
(334, '', 'The property is a split level building comprising 1 x 4 bedroom residence and ancillary improvements having an approximate gross floor area of 139 square meters.', 4, 13, 1, 22, 110, '', '136', '27', '', 'AIr Niugini Limited', 1, '2018-01-28 08:11:44', '2018-01-29 09:41:00', 4, 4),
(335, '', 'Industrial warehouse containing shop, factory, storage plus separate residences and storage, approximately 1,237 square meters of. These are situated on approximately 2396 square meters of light industrial allotment in Kimbe Town.', 3, 8, 4, 10, 102, '', '48', '01', '', 'JKT Lim Limited.', 0, '2018-01-28 09:41:41', '2018-01-28 09:41:41', 6, 6),
(336, '', '1 x 2 bedrooms triplex flats plus a 1 x 4 bedrooms single residence. These are situated on 1,200 square meters of residential allotments in Lae City.', 4, 16, 1, 14, 52, '', '94', '1 & 2', '', 'JKT Lim Limited', 0, '2018-01-28 09:47:16', '2018-01-28 09:47:16', 6, 6),
(337, '', '2 level, 4 x 3 bedrooms residence with spacious yard, approximately 266.05 square meters, plus other minor improvements. It is situated on a 600 square meters residential allotment in Lae City.', 4, 13, 1, 14, 99, '', '98', '21', '', 'Mr. Joe Kewa Totop', 0, '2018-01-28 09:55:21', '2018-01-28 09:55:21', 6, 6),
(338, '', 'Erected on the property is a ground set residence plus other improvements.\nLand Area:  450 square meters.', 4, 12, 4, 14, 102, '', '339', '03', '', 'Mr. John Kiele', 0, '2018-01-28 10:06:08', '2018-01-28 10:16:53', 6, 6),
(339, '', '2 level 6 x bedroom residence,  approximately land area comprising a Canteen and plus other improvements. They are situated on a 1, 000 square meters residential allotment in Lae City.', 4, 12, 4, 14, 102, '', '335', '49', '', 'John Kilip', 0, '2018-01-28 10:16:17', '2018-01-28 10:16:17', 6, 6),
(340, '', '2 levels, 2 x 2 bedrooms self contained units and 8 x bed-sitter units with common facilities, approximately 382.16 square meters blocks of. They are situated on 800 square meters of residential allotment in the City of Lae.', 4, 16, 1, 14, 112, '', '170', '8', '', 'Mathew and Aneneg Kupusili', 0, '2018-01-28 10:50:21', '2018-01-28 10:50:21', 6, 6),
(341, '', 'high set duplex residence comprising a floor area of approximately 158.40 m2 plus other improvements. It is situated on approximately 1,400 square meters of residential allotment in Lae City.', 4, 15, 1, 14, 112, '', '81', '05', '', 'Mr. John Raima', 0, '2018-01-29 02:18:26', '2018-01-29 02:18:26', 6, 6),
(342, '', '3 x bedroom residence on top plus 2 x 2 bedrooms units on ground floor plus other improvements. They are situated on a total land area of 1, 300 square meters.', 4, 13, 1, 14, 112, '', '75', '06', '', 'Soo Traders Limited', 0, '2018-01-29 02:32:27', '2018-01-29 02:32:27', 6, 6),
(343, '', 'N/A', 4, 15, 1, 14, 112, '409', '', '', '', 'Sir Nagora Bogan', 0, '2018-01-29 04:49:10', '2018-01-29 04:49:10', 6, 6),
(344, '', '2 bedrooms identical triplex unit, newly constructed high set  . It is situated on a 400 square meters of residential land portion.', 4, 16, 1, 14, 22, '', '213', '32', '', 'Levy Kalo & Mary Kalo', 0, '2018-01-29 04:57:16', '2018-01-29 04:57:16', 6, 6),
(345, '', 'The property is a split level building comprising 1 x 4 bedroom residence and ancillary improvements having an approximate gross floor area of 139 square meters.', 4, 13, 1, 22, 110, '', '137', '01', '', 'Air Niugini Limited', 0, '2018-01-29 09:56:39', '2018-01-29 09:56:39', 4, 4),
(346, '', 'The property is a split level building comprising 1 x 4 bedroom residence and ancillary improvements having an approximate gross floor area of 139 square meters.', 4, 13, 1, 22, 110, '', '137', '02', '', 'Air Niugini Limited', 0, '2018-01-29 09:59:31', '2018-01-29 09:59:31', 4, 4),
(347, '', 'The property is a split level building comprising 1 x 4 bedroom residence and ancillary improvements having an approximate gross floor area of 139 square meters.', 4, 13, 1, 22, 110, '', '137', '11', '', 'Air Niugini Limited', 0, '2018-01-29 10:01:36', '2018-01-29 10:11:06', 4, 4),
(348, '', 'Vacant and undeveloped land', 1, 1, 1, 22, 110, '', '136', '05', '', 'Air Niugini Limited', 0, '2018-01-29 10:05:10', '2018-01-29 10:05:10', 4, 4),
(349, '', 'Vacant and Undeveloped land', 1, 1, 1, 22, 110, '', '126', '11', '', 'Air Niugini Limited', 1, '2018-01-29 10:08:12', '2018-01-29 10:08:32', 4, 4),
(350, '', 'Vacant and Undeveloped land', 1, 1, 1, 22, 110, '', '126', '11', '', 'Air Niugini Limited', 1, '2018-01-29 10:08:12', '2018-01-29 10:08:35', 4, 4),
(351, '', 'Vacant and Undeveloped land', 1, 1, 1, 22, 110, '', '126', '11', '', 'Air Niugini Limited', 0, '2018-01-29 10:08:13', '2018-01-29 10:08:13', 4, 4),
(352, '', 'Vacant and Undeveloped land', 1, 1, 1, 22, 110, '', '126', '11', '', 'Air Niugini Limited', 1, '2018-01-29 10:08:22', '2018-01-31 05:42:12', 4, 4),
(353, '', 'Vacant and Undeveloped land', 1, 1, 1, 22, 110, '', '126', '10', '', 'Air Niugini Limited', 0, '2018-01-29 10:10:14', '2018-01-29 10:10:37', 4, 4),
(354, '', '2 x two level commercial complex plus other improvements. It is situated on a total land area of 303 square meters.', 2, 5, 4, 20, 102, '', '22', '15', '', 'Kanghe Trading Limited', 0, '2018-01-30 02:14:07', '2018-01-30 02:14:07', 6, 6),
(355, '', 'Hotel accommodation known as the “Lae Travelers Inn” plus other minor improvements. It is situated on a land area of approximately 2, 300 square meters of residential allotment.', 4, 20, 1, 14, 99, '', '04', '06', '', 'Yuwai No.9 Pty Limited', 0, '2018-01-30 02:26:21', '2018-01-30 02:26:21', 6, 6),
(356, '', 'Two levels residential apartment comprising total of 14 units with house win and fencing, approximately 1, 179.2 square meters of  . They are situated on 1, 500 square meters of residential allotment in the City of Lae.', 4, 14, 1, 14, 14, '', '32', '86', '', 'Kange Bookmakers', 0, '2018-01-30 02:35:26', '2018-01-30 02:35:26', 6, 6);
INSERT INTO `properties` (`id`, `name`, `description`, `property_use_id`, `property_class_id`, `property_lease_type_id`, `property_city_id`, `property_suburb_id`, `port`, `sec`, `lot`, `unit`, `owner`, `is_archive`, `created_at`, `updated_at`, `created_by_id`, `last_edited_by_id`) VALUES
(357, '', '4 x 3 bedroom flats, approximately 237.36 square meters block of plus other minor improvements.  These are situated on 1, 200 square meters of residential allotment in the City of Lae.', 4, 16, 1, 14, 112, '', '311', '32', '', 'Nema & Terolyn  Kapiri', 0, '2018-01-30 02:51:12', '2018-01-30 02:51:12', 6, 6),
(358, '', 'Duplex flat, approximately land area of 243m2 plus other improvements. It is situated on 1000 square meters of residential allotment in Lae City.', 4, 15, 1, 14, 112, '', '169', '13', '', 'John Kawatt', 0, '2018-01-30 04:30:37', '2018-01-30 04:30:37', 6, 6),
(359, '', '', 4, 13, 1, 14, 100, '11', '', '', '', 'Keppa Jangiko', 0, '2018-01-30 04:42:09', '2018-01-30 04:42:09', 6, 6),
(360, '', 'The property is a 1 x 4 bedroom residence on high steel piers and ancillary improvements.', 4, 13, 1, 22, 110, '', '126', '06', '', 'Air Niugini Limited', 0, '2018-01-30 04:50:39', '2018-01-30 04:50:39', 4, 4),
(361, '', 'The property is a 1 x 4 bedroom residence on high steel piers and ancillary improvements.', 4, 13, 1, 22, 110, '', '126', '06', '', 'Air Niugini Limited', 1, '2018-01-30 04:53:34', '2018-01-30 04:57:31', 4, 4),
(362, '', 'Erected on the property is a high set 3 x bedroom duplex building and a detached 2 x bedroom flat plus other improvements. They are situated on a land area of 1, 100 square meters.', 4, 15, 1, 14, 14, '', '80', '21', '', 'John Mandali', 0, '2018-01-30 04:56:12', '2018-01-30 04:56:12', 6, 6),
(363, '', 'The property is a 1 x 4 bedroom residence on high steel piers and ancillary improvements having a gross floor area of 117 square meters.', 4, 13, 1, 22, 110, '', '126', '07', '', 'Air Niugini Limited', 0, '2018-01-30 05:01:26', '2018-01-30 05:01:26', 4, 4),
(364, '', 'Erected on the property is a 2 x bedroom triplex unit. It is situated on a land area of    approximately 900 square meters.', 4, 16, 1, 14, 99, '', '56', '01', '', 'Kiki & Louise Titus', 0, '2018-01-30 05:08:15', '2018-01-30 05:08:15', 6, 6),
(365, '', 'Industrial Warehouse containing storage, cool rooms and offices plus other complementing improvements. They are situated on approximately 5,765 square meters of consolidated industrial allotments along Baling Street, Omili Area, City of Lae.', 3, 8, 4, 14, 26, '', '125', '7,8 & 9', '', 'The Word, The Spirit & The Cross Ministries Incorporate.', 0, '2018-01-30 05:37:07', '2018-01-30 05:37:07', 6, 6),
(366, '', '2 x industrial warehouses, approximately 956 square meters of  as well as other minor improvements. They are situated on 2,000.0 square meters of industrial allotment in the City of Lae.', 3, 8, 4, 14, 33, '', '88', '15', '', 'KK Kingston Pty Ltd.', 0, '2018-01-30 05:51:09', '2018-01-30 05:51:09', 6, 6),
(367, '', 'Office Block and warehouses containing storage, mezzanine offices, approximately 1,966.2 square meters  plus other minor improvements.\n\n	They are situated on 6,100 square meters of industrial allotment in the City of Lae.', 3, 8, 4, 14, 32, '', '19', '31', '', 'K.K. Kingston Limited.', 0, '2018-01-30 06:00:44', '2018-01-30 06:00:44', 6, 6),
(368, '', 'The property is a 2 level ground set triplex complex comprising of 2 x 4 bedroom units and 1 x 3 bedroom unit plus other improvements. Land Area:	 1,011 square meters.', 4, 14, 1, 14, 20, '', '93', '37', '', 'KK Kingston Limited', 0, '2018-01-30 07:32:07', '2018-01-30 07:32:07', 6, 6),
(369, '', '3 bedroom duplex units with carport on allotment 1 while allotment 2 is vacant, approximately 198.66 square meters of  . They are situated on 1, 600 square meters of residential allotments in the City of Lae.', 4, 15, 1, 14, 112, '', '170', '1&2', '', 'Mr. Umba Gundu Koimbu', 0, '2018-01-30 07:47:13', '2018-01-30 07:47:13', 6, 6),
(370, '', 'The property is a 1 x 4 bedroom residence on high steel piers and ancillary improvements having an approximate gross floor area of 117 square meters.', 4, 13, 1, 22, 110, '', '126', '08', '', 'Air Niugini Limited', 0, '2018-01-30 08:42:58', '2018-01-30 08:42:58', 4, 4),
(371, '', 'the property is a 1 x 4 bedroom residence on high steel piers and ancillary improvements having an approximate gross floor area of 117 square meters.', 4, 13, 1, 22, 110, '', '126', '09', '', 'Air Niugini Limited', 0, '2018-01-30 08:45:59', '2018-01-30 08:45:59', 4, 4),
(372, '', '1 x 3 Bedroom unit with ensuite, 2 x 3 bedroom units, 2 x 1 bedroom units and air conditioned office (100sqm), pool, backup power & water.', 4, 16, 1, 22, 80, '', '5', '4', '', 'Orea No. 8 Limited', 0, '2018-01-30 10:51:04', '2018-01-30 10:51:04', 2, 2),
(373, '', 'The property is a high set residential house comprising lounge, 3 x bedrooms with no shower/toilet and veranda occupying gross floor area of 48 square meters.', 4, 13, 1, 14, 41, '', '339', '64', '', 'Peter Lashel', 0, '2018-01-31 05:05:10', '2018-01-31 05:05:10', 6, 6),
(374, '', 'The Property is a single level commercial office building plus other improvement. The property has a gross floor area of approximately 170 square meters.', 2, 3, 2, 15, 102, '', '20', '09', '', 'Air Niugini Limited', 0, '2018-01-31 05:58:54', '2018-01-31 05:58:54', 4, 4),
(375, '', 'Ground level airport terminal building having an approximate gross floor area of 730 square meters.', 7, 20, 11, 16, 115, '', '', '', '', 'Air Niugini Limited', 0, '2018-01-31 06:03:37', '2018-01-31 06:03:37', 4, 4),
(376, '', 'The property is a ground level sales office building having an approximate gross floor area of 303 square meters.', 2, 3, 2, 16, 115, '', '16', '13', '', 'Air Niugini Limited', 0, '2018-01-31 06:08:53', '2018-01-31 06:08:53', 4, 4),
(377, '', 'The property is a single residential dwelling having an approximate gross floor area of 169 square meters', 4, 13, 1, 16, 115, '', '33', '01', '', 'Air Niugini Limited', 0, '2018-01-31 06:12:55', '2018-03-04 20:19:57', 4, 4),
(378, '', 'The property is a ground level sales and administrative building having an approximate gross floor area of 322 square meters.', 2, 3, 4, 20, 102, '', '01', '06', '', 'Air Niugini Limited', 0, '2018-01-31 06:19:15', '2018-03-04 20:29:54', 4, 4),
(379, '', 'The property is a single level multi-unit property with 2x2 bedroom units and 2x3 bedroom units having an approximate gross floor area of 414 square meters.', 4, 17, 1, 20, 102, '', '39', '19', '', 'Air Niugini Limited', 0, '2018-01-31 07:54:52', '2018-01-31 07:54:52', 4, 4),
(380, '', 'On the property are two similar style ground level staff quarters each having a floor area of 132 square meters,  a laundry and all in a dilapidated condition', 4, 12, 1, 20, 50, '', '07', '19-23', '', 'Air Niugini Limited', 0, '2018-01-31 08:02:36', '2018-01-31 08:02:36', 4, 4),
(381, '', 'The property is a ground level terminal building with a canopy extending along each side.', 7, 20, 9, 26, 102, '', '19', '3 & 4', '', 'Air Niugini Limited', 0, '2018-01-31 08:08:21', '2018-01-31 08:08:21', 4, 4),
(382, '', 'The property is a single three bedroom residential dwelling having an approximate gross floor area of 104 square meters excluding the detached carport.', 4, 13, 1, 6, 8, '', '11', '10', '', 'Air Niugini Limited', 0, '2018-01-31 08:15:20', '2018-01-31 08:15:40', 4, 4),
(383, '', 'The property is a ground level terminal building having an approximate gross floor area of 596 square meters.', 7, 20, 11, 6, 102, '', '', '', '', 'Air Niugini Limited', 0, '2018-01-31 08:20:31', '2018-02-04 09:43:21', 4, 4),
(384, '', 'The property are 2 x two level commercial complex plus other improvements.\nIt is situated on a total land area of 1, 017 square meters.', 2, 5, 4, 20, 102, '', '50', '01', '', 'Koreana Enterprises Limited', 0, '2018-02-01 03:06:51', '2018-02-01 03:06:51', 6, 6),
(385, '', 'The property are a 2 level office building, detached operational office and residential shed plus other improvements.\nLand Area:	7,220 square meters.', 6, 20, 4, 14, 36, '795C', '', '', '', 'Kuima Security Service Limited', 0, '2018-02-01 03:34:45', '2018-02-01 03:34:45', 6, 6),
(386, '', 'The property is a 4 x units residential building plus other improvements.\nLand Area:  1,011 square meters.', 4, 13, 1, 14, 20, '', '104', '19', '', 'Kuima Security Services Limited.', 0, '2018-02-01 03:55:05', '2018-02-01 03:55:05', 6, 6),
(387, '', 'On the property are series of Air Niugini Limited operational support, service and administration buildings.', 7, 20, 11, 22, 107, '2098', '', '', '', 'Air Niugini Limited', 0, '2018-02-01 04:59:14', '2018-02-01 04:59:14', 4, 4),
(388, '', 'The property is a single level duplex building of 3 bedroom residential accommodation comprising a gross floor area of approximately 169 square meters.', 4, 15, 1, 10, 102, '', '21', '03', '', 'Air Niugini Limited', 0, '2018-02-01 05:16:40', '2018-02-01 05:16:40', 4, 4),
(389, '', 'this is a four level older style commercial building with an approximate gross floor area of 4,029 square meters.', 2, 3, 2, 22, 61, '2437', '', '', '', 'Air Niugini Limited', 0, '2018-02-01 05:57:20', '2018-02-01 06:52:31', 4, 4),
(390, '', 'This is a single level two bedroom high-set duplex building having an approximate gross enclosed floor area of 149square meters.', 4, 15, 1, 21, 102, '', '02', '04', '', 'Air Niugini Limited', 0, '2018-02-01 06:42:48', '2018-02-01 06:42:48', 4, 4),
(391, '', 'The property is a high-set three bedroom residence with enclosed laundry and storage rooms underneath having an approximate gross floor area of 104 square meters.', 4, 13, 1, 21, 102, '', '28', '04', '', 'Air Niugini Limited', 0, '2018-02-01 06:52:09', '2018-02-01 06:52:09', 4, 4),
(392, '', 'On the property are a detached office, attached office/storage, 3x warehouses, detached office/storage, 3 x warehouses, detached ablution block and ancillary improvements.', 2, 5, 4, 22, 110, '454 & 455', '', '', '', 'Air Niugini Limited', 0, '2018-02-01 06:59:25', '2018-02-01 06:59:25', 4, 4),
(393, '', 'The property is a two level 7 x three bedroom townhouses', 4, 17, 1, 22, 71, '', '08', '09', '', 'Air Niugini Limited', 0, '2018-02-01 07:04:02', '2018-02-01 07:04:02', 4, 4),
(394, '', 'The property is a three bedroom residence with a bedsitter and laundry underneath.', 4, 13, 1, 22, 71, '', '24', '13', '', 'Air Niugini Limited', 0, '2018-02-01 07:09:53', '2018-02-01 09:05:00', 4, 4),
(395, '', 'On the property are two blocks each having 4x3 bedroom units.', 4, 17, 1, 22, 62, '', '78', '8 & 9', '', 'Air Niugini Limited', 0, '2018-02-01 07:12:55', '2018-02-04 08:45:08', 4, 4),
(396, '', 'The property is a three bedroom residence with bedsitter and laundry underneath having an approximate gross floor area of 200 square meters.', 4, 13, 1, 22, 78, '', '91', '02', '', 'Air Niugini Limited', 0, '2018-02-01 07:17:13', '2018-02-01 07:17:47', 4, 4),
(397, '', 'The property is a split level four(4) bedroom residence with a laundry and carport underneath.', 4, 13, 1, 22, 107, '', '43', '07', '', 'Air Niugini Limited', 0, '2018-02-01 07:21:31', '2018-02-01 07:21:31', 4, 4),
(398, '', 'Office building, 5 x bedrooms residence and 11 x bedsitter units,approximately 889.55 square meters of. It is situated on a 8000 square meters of commercial allotment in Lae City.', 2, 13, 4, 14, 99, '', '2', '64', '', 'Morobe Provincial Government', 0, '2018-02-01 07:26:59', '2018-02-01 07:26:59', 6, 6),
(399, '', '2 blocks of duplex flats, approximately 293 square meters of  . They are situated on approximately 1,000 square meters residential allotment towards the culdesec side of Karimun Street, City of Lae.', 4, 16, 1, 14, 99, '', '7', '64', '', 'Morobe Development Corporation Pty Ltd.', 0, '2018-02-04 02:29:53', '2018-02-04 02:29:53', 6, 6),
(400, '', '4 x 3 bedrooms residential units, approximately 478.4 square meters, . It is situated on approximately 1,000 square meters of residential allotment in Lae', 4, 13, 1, 14, 20, '', '104', '17', '', 'Morobe Development Corporation Pty Ltd.', 0, '2018-02-04 02:37:14', '2018-02-04 02:37:14', 6, 6),
(401, '', 'Industrial warehouse, workshops and residence, approximately 990.0 square meters of  . They are situated on approximately 4000 square meters of light industrial allotments in Lae City.', 3, 8, 4, 14, 33, '', '9', '3 & 4', '', 'Kumgie Corporaton Pty Ltd.', 0, '2018-02-04 02:42:27', '2018-02-04 02:42:27', 6, 6),
(402, '', '3 x warehouses, office building, hardstand areas. It is situated on a 1.2240 hectares of light industrial allotment in Lae City.', 3, 8, 4, 14, 32, '', '16', '2', '', 'Kumgie Holdings Limited', 0, '2018-02-04 03:00:31', '2018-02-04 03:00:31', 6, 6),
(403, '', '3 levels, office complex of approximately 1,701.15 square meters of net let table office space. It will be situated on a 611.0 square meters commercial allotment in Mt. Hagen City.', 2, 3, 4, 20, 102, '', '12', '26', '', 'Banning Trading Pty Ltd.', 0, '2018-02-04 04:31:32', '2018-02-04 04:31:32', 6, 6),
(404, '', 'Factory/warehouse as well as the Managing Director’s residence, staff night shift quarters, toilet blocks and kitchen with general parking or hardstand area and fencing, approximately 1,165.25m2 land area.', 3, 8, 1, 14, 33, '', '34', '10', '', 'Mr. Franky Chen', 0, '2018-02-04 04:46:49', '2018-02-04 04:46:49', 6, 6),
(405, '', 'Two levels 3 x residence comprising a gross floor area of approximately 183.8 square meters, plus other improvements.It is situated on a 500 square meters of residential allotment in City of Lae.', 4, 13, 1, 14, 19, '', '62', '01', '', 'Madam Lan Chu Lee', 0, '2018-02-04 05:02:43', '2018-02-04 05:02:43', 6, 6),
(406, '', 'Two levels 3 x bedrooms high cost residence comprising a gross floor area of approximately 274 square meters, plus other improvements. It is situated on a 1, 200 square metres of residential allotment in City of Lae.', 4, 16, 1, 14, 33, '', '07', '14', '', 'Chu Lan Lee', 0, '2018-02-04 05:15:31', '2018-02-04 05:16:46', 6, 6),
(407, '', 'Industrial building comprising, offices, sheds, workshop and accommodation as well as complementing developments. It is situated on 4047 square meters industrial allotments in Lae.', 3, 8, 4, 14, 33, '', '29', '09', '', 'Lae City Auto Limited.', 0, '2018-02-04 05:24:29', '2018-02-04 05:24:29', 6, 6),
(408, '', 'Property is situated on a total of 16,800 square meters of allotment comprising under water lease in the City of Lae.', 7, 20, 4, 14, 28, '', '27', '44', '', 'Lae Yacht Club.', 0, '2018-02-04 07:16:16', '2018-02-04 07:16:16', 6, 6),
(409, '', 'Property is a ground set building plus other improvements. Land Area: 1,998 square meters', 3, 20, 4, 14, 32, '', '15', '02', '', 'Plumtrade Limited', 0, '2018-02-04 07:24:01', '2018-02-04 07:24:01', 6, 6),
(410, '', 'Property is a ground set commercial building comprising factory, warehouse, hardware and office plus other improvements. Land Areas:  	1,998 square meters, Sec 15 Lot 15  2,048 square meters, Sec 15 Lot 16 Total Land Area: 4,046 square meters', 3, 8, 4, 14, 99, '', '15', '15 & 16', '', 'Plumtrade Limited.', 0, '2018-02-04 07:30:57', '2018-02-04 07:30:57', 6, 6),
(411, '', 'High set duplex unit with carport and laundry under main, approximately 217.42 square meters of   plus other associated improvements. It is situated on 1, 000 square meters of residential allotment in the City of Lae.', 4, 15, 1, 14, 112, '', '106', '5', '', 'Lorma Construction Limited', 0, '2018-02-05 02:06:16', '2018-02-05 02:06:16', 6, 6),
(412, '', 'Workshop, office and residence buildings, approximately 2, 015.77 square meters in total plus other associated improvements. They are situated on 4, 000 square meters of light industrial allotment in the City of Lae.', 3, 8, 4, 14, 16, '', '158', '09', '', 'Lorma Construction Ltd', 0, '2018-02-05 02:14:16', '2018-02-05 02:14:16', 6, 6),
(413, '', 'Executive duplex residence with other associated improvements, approximately 306.18 square meters of . It is situated on 1, 300 square meters of residential allotment in the City of Lae.', 4, 14, 1, 14, 20, '', '93', '33', '', 'Lorma Construction Limited', 0, '2018-02-05 02:25:14', '2018-02-05 02:25:14', 6, 6),
(414, '', '3 x 2 bedroom flat, 3 x 1 bed room flat, a 3 x bedroom residence and a recently constructed 2 level 3 bedroom residence plus other minor improvements. They are situated on approximately 600 square meters of residential allotment in Lae City.', 4, 16, 1, 14, 26, '', '117', '15', '', 'Mr. Lukas Waip', 0, '2018-02-05 04:57:49', '2018-02-05 05:18:00', 6, 6),
(415, '', '4 bedrooms high covenant residence, approximately 209.78 square meters of  . It is situated on 1, 600 square meters of residential allotment in the City of Lae.', 4, 13, 1, 14, 99, '', '1', '38', '', 'Lumba Lumba Investments Ltd', 0, '2018-02-05 05:09:57', '2018-02-05 05:09:57', 6, 6),
(416, '', 'Service Station and Coffee Mill setting with complimentary improvements.\nThey are situated on 6.50 hectares of business/residential purpose land at 5 mile, along Lae- Nadzab Road.', 7, 20, 11, 14, 73, '475', '', '', '', 'Mainland Holdings Pty Ltd.', 0, '2018-02-05 05:24:21', '2018-02-05 05:24:21', 6, 6),
(417, '', 'Hatchery  set up , staff accommodations with complimentary improvements. They are situated on 0.4568 hectares of business/residential purpose land at 9 mile, along Lae- Nadzab Road.', 4, 20, 4, 14, 17, '484', '', '', '', 'Mainland Holdings Pty Ltd', 0, '2018-02-05 05:30:22', '2018-02-05 05:30:22', 6, 6),
(418, '', 'Workshop setting with complimentary improvements and they are situated on 0.6940 hectares of business/residential purpose land at 14 mile, along Lae- Nadzab Road.', 3, 8, 4, 14, 17, '409', '', '', '', 'Nuigini Table Birds Pty Ltd.', 0, '2018-02-05 05:36:39', '2018-02-05 05:36:39', 6, 6),
(419, '', '3 bedrooms stand alone residence, approximately 65.5 square meters . It is situated on 200 square meters of residential allotment in the City of Lae.', 4, 13, 1, 14, 14, '', '349', '10', '', 'Ruckesing Mame', 0, '2018-02-05 09:54:00', '2018-02-05 09:54:00', 6, 6),
(420, '', 'The property is a high set medium cost 3 x bedroom residence converted to a two level 3 x bedroom duplex  plus other improvements. It is situated on a land area of approximately     810 square meters.', 4, 15, 1, 14, 112, '', '278', '13', '', 'MR. MATHEW ANDAKIS', 0, '2018-02-05 10:36:41', '2018-02-05 10:36:41', 6, 6),
(421, '', 'The property is fully secured and enclosed with approximately 1.8 meters high cyclone mesh wire. Access is only through the manual gate.', 4, 13, 1, 14, 99, '', '367', '14', '', 'Sally Lucas', 0, '2018-02-05 11:02:15', '2018-02-05 11:02:15', 6, 6),
(422, '', 'The property is a newly built two level shop, a warehouse, a bakery, a 3 x rooms store area, a gold smelting area, a garage, a hardstand and 3 x bedroom residence plus other improvements. It is situated on a total land area of 1 acre and 35 square meters.', 2, 5, 4, 14, 33, '', '82', '04 & 05', '', 'Tipulu Trading Limited', 0, '2018-02-05 11:08:59', '2018-02-05 11:08:59', 6, 6),
(423, '', 'The property is a two level commercial building comprising a gross floor area of approximately 525 square meters.', 2, 4, 1, 14, 19, '', '52', '04', '', 'Hu Ai Qing', 0, '2018-02-06 02:20:25', '2018-02-06 02:20:25', 6, 6),
(424, '', 'The property is a residential compound comprising  30 x 3 bedroom residential houses plus other improvements.\nLand Area:	 2.4 hectares.', 4, 14, 1, 14, 113, '527', '', '', '', 'Mishel Limited', 0, '2018-02-06 02:43:19', '2018-02-06 02:43:19', 6, 6),
(425, '', 'Erected on the property is a 2 x bedroom quad duplex Units plus other improvements. It is situated on a total land area of 1, 312 square meters.', 4, 15, 1, 14, 99, '', '69', '13', '', 'Super Service Limited.', 0, '2018-02-06 03:20:37', '2018-02-06 03:20:37', 6, 6),
(426, '', '3 bedrooms stand alone residence, approximately 66.5 square meters of low set  plus other minor improvements. It is situated on approximately 392 square meters of residential allotment in Lae City.', 4, 12, 1, 14, 15, '', '228', '5', '', 'Mokea Palipusa', 0, '2018-02-06 03:28:37', '2018-02-06 03:28:37', 6, 6),
(427, '', 'Commercial shop building, approximately 555.8 square meters land area. It is situated on 600 square meters of Commercial allotment in Lae', 2, 4, 4, 14, 99, '', '6', '5', '', 'Mokal Koi.', 0, '2018-02-06 03:37:34', '2018-02-06 03:37:34', 6, 6),
(428, '', 'Office/shopping complex, approximately 545 square meters of  and associated improvements. It is situated on 500 square meters of Commercial allotment in Lae.', 2, 3, 4, 14, 99, '', '43', '05', '', 'Voco Point Trading Pty Ltd.', 0, '2018-02-06 10:11:19', '2018-02-06 10:11:19', 6, 6),
(429, '', 'High-set 3 bedroom low cost residence, approximately 63.0 square meters, It is situated on a 500 square meters residential allotment within Lae City.', 4, 12, 1, 14, 97, '', '181', '16', '', 'National Housing Corporation', 0, '2018-02-07 02:07:32', '2018-02-07 02:07:32', 6, 6),
(430, '', '4 bedroom high-set high cost residence, approximately 271.25 square meters. It is situated on a 1,274 square meters of residential allotment in Lae City.', 4, 13, 1, 14, 112, '', '75', '6', '', 'United Trading Ltd.', 0, '2018-02-07 02:16:19', '2018-02-07 02:16:19', 6, 6),
(431, '', '20 x rooms motel,approximately 562 square meters of. It is situated on 1,929 square meters of residential allotments in the City of Lae.', 4, 20, 1, 14, 20, '', '94', '3,4&5', '', 'Woolwich Bulldings Limited.', 0, '2018-02-07 02:31:58', '2018-02-07 02:31:58', 6, 6),
(432, '', '7 x Motel settings 24 x guest rooms, approximately 2, 126. 75 square meters in total of blocks of  plus main executive residence buildings together with other minor improvements. They are situated on approximately  2, 100 square meters in total of residential allotments in the City of Lae.', 4, 20, 1, 14, 14, '', '78', '9 & 10', '', 'Joshua Ipi', 0, '2018-02-07 02:44:47', '2018-02-07 02:44:47', 6, 6),
(433, '', 'Two storey Office and Accommodation complex, approximately 1817.68 square meters  . It is situated on 1320 square meters of Commercial allotments in Lae.', 2, 3, 4, 14, 99, '', '02', '5,6&7', '', 'Konebada No.38 Limited', 0, '2018-02-07 02:57:59', '2018-02-07 02:57:59', 6, 6),
(434, '', '2 x 2 bedroom flat and a warehouse with floor areas of 266.88 square meters and 95.16 square meters respectively. They are situated on a  2023  square meters of Light Industrial allotment in Lae.', 3, 8, 4, 14, 32, '', '15', '01', '', 'Muda Jaya Paper Products Limited', 0, '2018-02-07 03:14:26', '2018-02-07 03:14:26', 6, 6),
(435, '', 'office/ showroom/workshop, approximately   1,956.85   square meters of  and  1088.2   square meters of office/ workshop building. They are situated on a  8,169  square meters of commercial allotment within Lae City.', 3, 8, 4, 14, 32, '', '18', '01', '', 'Boroko Motors Limited', 0, '2018-02-07 03:21:53', '2018-02-07 03:21:53', 6, 6),
(436, '', 'The property is a low set three bedroom residence having an approximate gross floor area of 146 square meters with a detached laundry plus other improvements.', 4, 13, 1, 8, 102, '', '01', '12', '', 'Air Niugini Limited', 0, '2018-02-07 04:18:28', '2018-02-07 04:18:28', 4, 4),
(437, '', 'The property is a high-set three bedroom residence having an enclosed approximate gross floor are of 69 square meters.', 4, 13, 1, 31, 102, '', '509', '01', '', 'Air Niugini Limited', 0, '2018-02-07 04:24:57', '2018-02-07 04:24:57', 4, 4),
(438, '', 'This is a ground level terminal building with adjacent covered walkway and a detached warehouse.', 7, 20, 11, 18, 102, '', '', '', '', 'Air Niugini Limited', 0, '2018-02-07 04:30:09', '2018-02-07 04:30:09', 4, 4),
(439, '', 'The property is a sales office and adjoined a two bedroom staff accommodation building.', 2, 3, 4, 27, 102, '', '39', '01', '', 'Air Niugini Limited', 0, '2018-02-07 04:35:17', '2018-02-07 04:35:17', 4, 4),
(440, '', 'The property is a two level commercial office complex comprising a gross floor area of approximately 640 square meters.', 2, 3, 2, 14, 99, '362', '', '', '', 'Air Niugini Limited', 0, '2018-02-07 04:40:50', '2018-02-07 04:40:50', 4, 4),
(441, '', 'The property is a high-set 3 bedroom residential accommodation comprising a gross floor area of approximately 224 square meters.', 4, 13, 1, 14, 118, '', '04', '05', '', 'Air Niugini Limited', 0, '2018-02-07 04:44:37', '2018-02-07 04:44:37', 4, 4),
(442, '', 'On the property are two single level ground-set residential duplex buildings comprising a gross floor area of approximately 170 square meters each block. The two residential blocks are similar throughout.', 4, 15, 1, 14, 99, '', '41', '59', '', 'Air Niugini Limited', 0, '2018-02-07 04:49:14', '2018-02-07 04:49:14', 4, 4),
(443, '', 'On the property are two single level ground-set residential duplex buildings comprising a gross floor area of approximately 170 square meters each block. The two residential blocks are similar throughout.', 4, 15, 1, 14, 99, '', '41', '59', '', 'Air Niugini Limited', 1, '2018-02-07 04:49:27', '2018-02-07 10:44:52', 4, 4),
(444, '', 'On the property is a two level residential duplex building  of 3 x bedroom comprising a gross floor area approximately 244 square meters.', 4, 15, 1, 14, 99, '', '77', '05', '', 'Air Niugini Limited', 0, '2018-02-07 04:54:26', '2018-02-07 04:54:26', 4, 4),
(445, '', 'The property is a single level commercial office building comprising a gross floor area of approximately 329 square meters.', 2, 3, 4, 12, 102, '', '34', '09&10', '', 'Air Niugini Limited', 0, '2018-02-07 04:57:55', '2018-02-07 04:57:55', 4, 4),
(446, '', 'On the property is an eight level residential apartment complex, a detached lobby building, generator shed, swimming pool and other ancillary buildings.', 4, 18, 4, 22, 61, '2437', '', '', '', 'Air Niugini Limited', 0, '2018-02-07 05:04:19', '2018-02-07 05:04:19', 4, 4),
(447, '', 'Office/factory building totally a floor area of     2689.35  square meters and a warehouse of 1578.96 square meters plus associated improvements. They are  situated on a 12,810  square meters of  allotment in Chinatown ,  Lae.', 3, 8, 4, 14, 19, '', '176', '02', '', 'Niugini Match ( MFG ) Pty Ltd', 0, '2018-02-07 09:24:57', '2018-02-07 09:24:57', 6, 6),
(448, '', '4 bedroom low cost residence, approximately 108.77 square meters. It is situated on a 500  square meters of residential allotment in Lae.', 4, 12, 1, 14, 99, '', '114', '02', '', 'Alex Roa', 0, '2018-02-07 09:32:37', '2018-02-07 09:32:37', 6, 6),
(449, '', 'Hardstand being generally level and compacted with gravel and an approximately 980.48 square meters of administration office, showroom,warehouse and other associated facilities in its existing use. They are adjoining (back to back) and situated on an approximately 4,024 square meters of light industrial allotments in Lae.', 3, 8, 4, 14, 33, '', '172', '3&6', '', 'New Guinea  Motors.', 0, '2018-02-07 09:43:22', '2018-02-07 09:43:22', 6, 6),
(450, '', 'Retail shop with residence above and 117 square meters bed sitters, approximately 418 square meters . It is situated on a 607  square meters of commercial allotment in Chinatown, Lae.', 2, 4, 4, 14, 19, '', '52', '03', '', 'Munmorah Kaiman Pty. Ltd.', 0, '2018-02-07 09:50:53', '2018-02-07 09:50:53', 6, 6),
(451, '', 'National Housing Commission L40 design low set 3 bedroom residence of approximately 52.87 square meters. It is situated on a 514 square meters of residential allotment in Lae.', 4, 13, 1, 14, 112, '', '262', '03', '', 'National Housing Corporation', 0, '2018-02-07 10:04:11', '2018-02-07 10:04:11', 6, 6),
(452, '', '3 bedroom low cost residence, approximately 84.45 square meters.It is situated on a 540  square meters of residential allotment in Lae', 4, 12, 1, 14, 102, '', '113', '04', '', 'Danny & Marie Potul.', 0, '2018-02-07 10:11:35', '2018-02-07 10:11:35', 6, 6),
(453, '', '3 bedrooms duplex flats, approximately 326.3  square meters,    with a self contained single room and office. It is situated on a  2000  square meters  of light industrial allotment in Lae City.', 4, 15, 4, 14, 99, '', '21', '06', '', 'Rad-tel (PNG) Pty  Ltd', 0, '2018-02-07 10:26:20', '2018-02-07 10:26:20', 6, 6),
(454, '', '3 bedroom high covenant , high set residence, approximately 59.96 square meters. It is situated on a 500 square meters of residential allotment in Lae.', 4, 13, 1, 14, 15, '', '243', '6', '', 'National Housing Corporation', 0, '2018-02-07 10:33:02', '2018-02-07 10:33:02', 6, 6),
(455, '', '3 bedrooms  executive residence, domestic quarters, hause wind, approximately 260.92 square meters,  with spa and barbecue facilities, as well as carport. They are  situated on a 1081 square meters of residential allotment in Lae', 4, 14, 1, 14, 14, '', '32', '07', '', 'Blue Heaven No. 3 Ltd.', 0, '2018-02-07 10:41:09', '2018-02-07 10:41:09', 6, 6),
(456, '', 'Shopping complex with associated improvements. It is situated on a  2546 square meter commercial  allotment in  Goroka Town.', 2, 4, 4, 6, 8, '', '03', '08', '', 'Collins & Leahy Ltd', 0, '2018-02-07 10:50:38', '2018-02-07 10:50:38', 6, 6),
(457, '', '3 bedroom  low-set , high cost  residence, approximately 182.49 square meters. It is situated on a 688 square meters  of residential allotment at Cassowary Road , Lae.', 4, 14, 1, 14, 20, '', '63', '8', '', 'Mathew and Christine Matana', 0, '2018-02-07 10:59:42', '2018-02-07 10:59:42', 6, 6),
(458, '', '1 x 3 bedroom, 1 x 2 bedroom, 2 x 2 bedroom high cost  residential units. It is situated on a  1300  square meters of residential allotment in Lae.', 4, 14, 1, 14, 99, '', '67', '08', '', 'Westerco Ltd', 0, '2018-02-07 11:08:48', '2018-02-07 11:08:48', 6, 6),
(459, '', '3 bedrooms, high covenant residence, approximately 277.80  square meters , high-set. It is situated on a  1289  square meters of residential allotment in Lae.', 4, 16, 1, 14, 99, '', '76', '08', '', 'Muda Jaya Paper Products Limited', 0, '2018-02-08 05:03:31', '2018-02-08 05:03:31', 6, 6),
(460, '', 'High covenant residence, approximately 74.75 square meters of. It is situated on 500.0 square meters of residential allotment in Lae.', 4, 16, 1, 14, 99, '', '97', '08', '', 'Mr. Tim Omen', 0, '2018-02-08 05:09:25', '2018-02-08 05:09:25', 6, 6),
(461, '', 'Warehouse/storage/office/residence and shop building, approximately 628.50 square meters  of. It is situated on a 1300 square meters commercial allotment in Lae.', 2, 5, 4, 14, 20, '', '70', '08', '', 'NEO Corporation Pty Ltd.', 0, '2018-02-08 05:16:46', '2018-02-08 05:16:46', 6, 6),
(462, '', 'Low-set three(3) bedroom residence having an approximate gross floor area of 70 square meters including the veranda.', 4, 13, 1, 22, 65, '', '232', '124', '', 'Alu Kapi', 0, '2018-02-08 06:25:14', '2018-02-13 06:44:08', 4, 14),
(463, '', 'On the property is a single level church building with mezzanine level office, two level building comprises 1x3 bedroom and 1x2 bedroom residential units and a storeroom on reinforced concrete slab base and of fibro cladding.', 7, 20, 11, 22, 62, '', '93', '15-17', '', 'Assemblies of God of Papua New Guinea Inc.', 0, '2018-02-08 06:38:46', '2018-02-13 06:46:03', 4, 14),
(464, '', 'Split level building with an approximate gross floor area of 212 square meters', 4, 13, 1, 22, 65, '', '73', '41', '', 'Lalatute Avosa and Rachael Avosa', 0, '2018-02-08 06:49:37', '2018-02-08 06:49:37', 4, 4),
(465, '', 'A colonial type low set three bedroom house in rundown condition overall.', 4, 12, 1, 22, 107, '', '31', '4', '', 'National Housing Corperation', 0, '2018-02-08 06:58:05', '2018-02-08 06:58:05', 4, 4),
(466, '', 'This is a low set four bedroom duplex with attached laundry having a gross floor area of approximately 177 square meters.', 4, 13, 1, 22, 65, '', '14', '19', '', 'Dekoa Properties Limited', 0, '2018-02-08 07:05:51', '2018-02-08 07:05:51', 4, 4),
(467, '', '4 x 2 bedrooms medium cost units, approximately 324.0 square meters. It is situated on a 1033 square meters residential allotment in Lae.', 4, 13, 1, 14, 20, '', '93', '08', '', 'NEO Corporation Pty Ltd', 0, '2018-02-08 07:13:27', '2018-02-08 07:13:27', 6, 6),
(468, '', 'A colonial type low set three bedroom house in rundown condition overall.', 4, 12, 1, 22, 107, '', '31', '4', '', 'National Housing Corporation', 1, '2018-02-08 07:13:31', '2018-02-12 03:31:08', 4, 4),
(469, '', 'Vacant light industrial hardstand  with a security fence. It is situated on a  1972  square meters  of light industrial allotment in Lae City.', 3, 20, 4, 14, 32, '', '21', '09', '', 'Broman Ltd', 0, '2018-02-08 07:18:40', '2018-02-08 07:18:40', 6, 6),
(470, '', 'Shop/kai bar building, approximately 1,607.9  square meters. It is situated on a  1593    square meters of commercial allotment on Eighth Street in Lae.', 2, 4, 4, 14, 99, '', '3', '08', '', 'Sek No. 35 Ltd', 0, '2018-02-08 07:23:15', '2018-02-08 07:23:15', 6, 6),
(471, '', '5 bedrooms high  cost residence, approximately 452.47 square meters, high set   with an office. It is  situated on a  1011  square meters of residential allotment in Lae.', 4, 13, 1, 14, 20, '', '105', '10', '', 'Sunshine Investment Pty Ltd', 0, '2018-02-08 07:27:51', '2018-02-08 07:27:51', 6, 6),
(472, '', 'Shop/office front, approximately 1250.72  square meters with warehouse and offices. It is situated on a   1287  square meters  of commercial allotment in Lae.', 2, 5, 4, 14, 20, '', '19', '11', '', 'Lae Urban Local Level Government Council.', 0, '2018-02-08 07:32:19', '2018-02-08 07:32:19', 6, 6),
(473, '', 'The property is a proposed two level building comprises retail supermarket, warehouse, commercial and residential units and ancillary improvements.', 2, 5, 4, 22, 65, '', '137', '36', '', 'Gias Uddin Bhuiya', 0, '2018-02-08 07:33:58', '2018-02-08 07:33:58', 4, 4),
(474, '', 'The property is a single level building comprises 1x3 bedroom residence of hardboard and timber construction having an approximate gross floor area of 49 square meters.', 4, 12, 1, 22, 65, '', '294', '40', '', 'Susan Lae', 0, '2018-02-08 07:41:21', '2018-02-08 07:41:21', 4, 4),
(475, '', 'The property is a two level building comprises 4x3 bedroom units of masonry block and hardie flex construction and ancillary building.', 4, 17, 1, 22, 65, '', '376', '10', '', 'Runcon Property(PNG) Limited', 0, '2018-02-08 07:54:35', '2018-02-08 07:54:35', 4, 4),
(476, '', 'On the Property will be proposed twin tower buildings each of 8 level building comprises commercial spaces and ancillary  improvements.', 2, 6, 4, 22, 65, '3200', '', '', '', 'Dynasty Estate Limited', 0, '2018-02-08 08:05:37', '2018-02-08 08:05:37', 4, 4),
(477, '', 'Freezer facility comprising of freezer building with offices and sundry structures and ground improvements. They are situated on a  6,150  square meters of Light Industrial allotment in Lae.', 3, 8, 4, 14, 32, '', '23', '11', '', 'Collins & Leahy Limited', 0, '2018-02-09 02:36:03', '2018-02-09 02:36:03', 6, 6),
(478, '', '3 bedrooms  colonial design high  covenant residence, approximately 129.19  square meters,  plus external laundry. It is  situated on a 1,606 square meters of residential allotment in Lae.', 4, 13, 1, 14, 14, '', '33', '11', '', 'Joe Pogo .', 0, '2018-02-09 02:43:24', '2018-02-09 02:43:24', 6, 6),
(479, '', 'Two blocks of 10 bedroom bed sitter flats each, totaling 363.31 square meters. It is situated on a  1200  square meters of residential allotment in Lae.', 4, 16, 1, 14, 112, '', '76', '11', '', 'James Tauriko & Beatrice Tauriko.', 0, '2018-02-09 02:55:21', '2018-02-09 02:55:21', 6, 6),
(480, '', '2 levels , 1 x 3 bedroom , 2 x 2 bedroom  , 1 x 1 bedroom residential units, approximately  272.55    square meters. It is situated on a  1011  square meters of residential allotment in Lae.', 4, 14, 1, 14, 99, '', '104', '11', '', 'Bampton Nominees Pty Ltd', 0, '2018-02-09 03:12:19', '2018-02-09 03:12:19', 6, 6),
(481, '', '4 x 2 bedrooms residential units block , approximately 390.40 square meters. It is situated on a 600  square meters of residential allotment in Lae.', 4, 13, 1, 14, 19, '', '51', '14', '', 'Cartrans Pty Ltd', 0, '2018-02-09 03:28:30', '2018-02-09 03:28:30', 6, 6),
(482, '', '3 bedroom  high covenant residence, approximately 153.96 square meters high-set. It is situated on a 1133 square meters of residential allotment in Taun Street, City of Lae.', 4, 13, 1, 14, 99, '', '80', '14', '', 'Alexander Matheson.', 0, '2018-02-09 03:49:49', '2018-02-09 03:49:49', 6, 6),
(483, '', '2 levels , an office & 3 bedroom residence , factory, approximately  300.04   square meters , and storage shed. It is situated on a   4000    square meters of light industrial allotment in Lae.', 3, 8, 4, 14, 32, '', '82', '16&17', '', 'The Managing Director 	Timber-saws 1996 PNG Ltd', 0, '2018-02-09 04:00:37', '2018-02-09 04:00:37', 6, 6),
(484, '', '3 x blocks of residential units, approximately 656.14 square meters  .It is situated on a 5,960.0 square meters. Light Industrial  allotment along Speybank Street in Lae City.', 3, 20, 9, 14, 33, '', '34', '18', '', 'Amalpack Limited', 0, '2018-02-09 04:24:20', '2018-02-09 04:24:20', 6, 6),
(485, '', 'Retail shop and bakery on the ground floor, approximately 408 square meters,  with residence upstairs. It is situated on approximately  600  square meters of Commercial allotment in Chinatown, City of Lae.', 2, 4, 4, 14, 19, '', '57', '18', '', 'Ronald Pavey.', 0, '2018-02-09 04:30:57', '2018-02-09 04:30:57', 6, 6),
(486, '', '2 levels , 9 rooms  guest house , 5 x bedrooms managers unit and 2 level  office, approximately  523.04  square meters. They are  situated on a       square meters of commercial allotment in Lae.', 2, 5, 4, 14, 99, '', '3', '19', '', 'Maybank Ltd', 0, '2018-02-09 04:39:45', '2018-02-09 04:39:45', 6, 6),
(487, '', 'Administration building with associated cement products manufacturing sheds totaling 1804.92 square meters and staff accommodation units approximately 349.27  square meters. They are  situated on a  4.766 hectares of light industrial allotment, City of Lae.', 3, 9, 4, 14, 33, '', '25', '19', '', 'Monier (PNG) Ltd.', 0, '2018-02-09 04:47:53', '2018-02-09 04:47:53', 6, 6),
(488, '', 'Three (3) bedroom high-set medium covenant residence totaling 63.56 square meters. It is situated on a 450 square meters of residential allotment in Lae.', 4, 13, 1, 14, 37, '', '263', '19', '', 'Eparaim Pidian (Mortgage to BSP)', 0, '2018-02-09 04:55:28', '2018-02-09 04:55:28', 6, 6),
(489, '', 'H-90 high-set 3 bedroom  high covenant residence, approximately 182.80 square meters with a 2 bedroom flat under main. It is situated on a 809 square meters residential allotment within Lae City.', 4, 16, 1, 14, 112, '', '186', '20', '', 'Madang Autoport Pty Ltd.', 0, '2018-02-09 05:00:51', '2018-02-09 05:00:51', 6, 6),
(490, '', '3 bedroom  low cost residence, approximately 52.14 square meters. It is situated on a 450 square meters of residential allotment in Lae.', 4, 12, 1, 14, 37, '', '263', '20', '', 'National Housing Corporation', 0, '2018-02-09 05:06:11', '2018-02-09 05:06:11', 6, 6),
(491, '', '3 bedroom  high-set, medium covenant residence, approximately 79.36 square meters,  . It is situated on a 445 square meters  of residential allotment at Boundary Road , Lae.', 4, 13, 1, 14, 112, '', '349', '24', '', 'Porak Posing', 0, '2018-02-09 05:11:16', '2018-02-09 05:11:16', 6, 6),
(492, '', 'Church, classroom complex, residences , ablution block , shed and haus wind, approximately 1181.28 square meters of . They are situated on a 3716 square meters of mission purpose lease allotment, Sandpiper Road, City of Lae.', 4, 20, 9, 14, 20, '', '98', '25', '', 'Lae Calvary Baptist Church).', 0, '2018-02-09 05:16:43', '2018-02-09 05:16:43', 6, 6),
(493, '', '3 bedroom  residence, approximately 92.86  square meters. It is situated on a  540  square meters of residential allotment in Lae.', 4, 13, 1, 14, 26, '', '118', '27', '', 'Joseph Ipi', 0, '2018-02-09 05:25:18', '2018-02-09 05:25:18', 6, 6),
(494, '', '3-bedroom executive residence, approximately 336.92 square meters of  plus minor improvements including swimming pool and a 3 bedroom flat. It is situated on a 1600 square meters residential allotment, Tenth Street, in Lae City.', 4, 14, 1, 14, 20, '', '3', '28', '', 'Plumbtrade Limited', 0, '2018-02-09 05:30:14', '2018-02-09 05:30:14', 6, 6),
(495, '', 'Low set , 2 bedrooms high  covenant residence, approximately 89.70  square meters. It is situated on a  1600  square meters of residential allotment on Tenth Street in Lae.', 4, 13, 1, 14, 99, '', '3', '34', '', 'Post PNG Ltd .', 0, '2018-02-09 05:37:20', '2018-02-09 05:37:20', 6, 6),
(496, '', '3-bedroom high covenant residence, approximately 207.55 square meters of   with an external laundry/ toilet/ shower and haus wind. It is situated on a 1400 square meters residential allotment, Casuarina Avenue in Lae City.', 4, 13, 1, 14, 14, '', '32', '35', '', 'Plumbtrade Limited', 0, '2018-02-09 05:43:50', '2018-02-09 05:43:50', 6, 6),
(497, '', 'commercial building of concrete floor, approximately 468.0 square meters,  with steel trusses and weatherboard walls. It is situated on 670  square meters of Commercial allotment in Eric Woo, City of Lae.', 2, 4, 4, 14, 19, '', '35', '37', '', 'Sek No. 35 Pty Ltd.', 0, '2018-02-09 05:48:46', '2018-02-09 05:48:46', 6, 6),
(498, '', 'Retail shop on the ground floor, approximately 286 square meters,  with two bedroom residence upstairs plus carport and a storage shed of 66.06 square meters. It is situated on 650  square meters of Commercial allotment in Eric Woo, City of Lae.', 2, 4, 4, 14, 19, '', '35', '40', '', 'Sek No. 35 Pty Ltd.', 0, '2018-02-09 05:53:12', '2018-02-09 05:53:12', 6, 6),
(499, '', '3 x 3 bedrooms town house units, approximately 307.52 square meters. They are situated on an approximately 1000 square meters of residential allotment in Falcon Street, Birdsville Area.', 4, 17, 1, 14, 20, '', '93', '40', '', 'Steamships Trading Company Pty Ltd.', 0, '2018-02-09 06:00:30', '2018-02-09 06:00:30', 6, 6),
(500, '', 'An office and showroom complex together with a joinery workshop totaling 1733.37 square meters. It is situated on two industrial blocks comprising 2300 and 2131 square meters respectively.', 3, 3, 4, 14, 26, '', '124', '6 & 7', '', 'Job Builders and Contractors Limited', 0, '2018-02-09 06:00:31', '2018-02-11 02:59:30', 6, 6),
(501, '', 'Retail/office space, fore court and driveway, approximately 1551.50 square meters only of  .( Fuel Service Station Only ) It is situated on a 2900 square meters of Business Commercial allotment in Lae.', 2, 4, 4, 14, 21, '', '64', '41', '', 'Public Officers Superannuation Fund (POSF).', 0, '2018-02-11 03:20:55', '2018-02-11 03:20:55', 6, 6),
(502, '', '3 bedrooms, high  covenant residence, approximately 124.67  square meters , low-set. It is situated on a  1600  square meters of residential allotment in Lae.', 4, 13, 1, 14, 99, '', '1', '43', '', 'National Housing Corporation', 0, '2018-02-11 03:31:09', '2018-02-11 03:31:09', 6, 6),
(503, '', '4 bedrooms  high covenant residence, approximately 136.36 square meters , high-set . It is situated on a 980 square meters of residential allotment in Falcon Street, Birdsville Area.', 4, 16, 1, 14, 20, '', '93', '44', '', 'Air Cair Pty Ltd.', 0, '2018-02-11 03:36:19', '2018-02-11 03:36:19', 6, 6),
(504, '', '2 levels, 4 x 2 bedrooms  residential units, approximately 349.68     square meters. It is situated on a  800  square meters of residential allotment in Lae.', 4, 17, 1, 14, 99, '', '174', '48', '', 'Leslie Roai & James Masa', 0, '2018-02-11 03:47:04', '2018-02-11 03:47:04', 6, 6),
(505, '', '3-bedroom high covenant residence, approximately 430.48 square meters  with an external laundry/ toilet/ shower and haus wind. It is situated on a 0.12 hectares residential allotment, Kariman Street, in Lae City.', 4, 16, 1, 14, 14, '', '7', '57', '', 'Plumbtrade Limited', 0, '2018-02-11 04:09:28', '2018-02-11 04:09:28', 6, 6),
(506, '', '4 x 3 bedroom, three levels ,  executive town house units, approximately 1070.71 square meters with garage, storage room under main, barbecue and pool area, with a generator haus. They are situated on a  1600  square meters of residential allotment in Lae.', 4, 14, 1, 14, 99, '', '3', '66', '', 'Steamships Trading Company Pty Ltd.', 0, '2018-02-11 04:15:43', '2018-02-11 04:15:43', 6, 6),
(507, '', '3 bedrooms high  covenant residence, approximately 182.44  square meters , low set  . It is situated on a  1593  square meters of residential allotment in Lae.', 4, 13, 1, 14, 99, '', '3', '84', '', 'Mr. Phillip McGregor Love', 0, '2018-02-11 04:21:22', '2018-02-11 04:21:22', 6, 6),
(508, '', '3 bedroom residence, approximately 203.87  square meters, split level with domestic quarters, carport and storage room under main. It is situated on a  2425  square meters  of residential allotment in Lae.', 4, 16, 1, 14, 21, '', '41', '84', '', 'John Lysaght (PNG) Pty  Ltd', 0, '2018-02-11 04:29:36', '2018-02-11 04:29:36', 6, 6),
(509, '', '3 bedrooms  colonial design (medium covenant) residence, domestic quarter, approximately 129.19  square meters, as well as carport. It is  situated on a 1,400 square metres of residential allotment in Lae.', 4, 12, 1, 14, 14, '', '32', '85', '', 'Post PNG Ltd', 0, '2018-02-11 04:35:02', '2018-02-11 04:35:02', 6, 6),
(510, '', '2 levels, 4 bedrooms, approximately 474.83 square meters  ,   plus office, executive class  residence. It is situated on a 1081 square meters of residential allotment in Lae.', 4, 14, 1, 14, 21, '', '32', '117', '', 'Jonathan Clive Daniels', 0, '2018-02-11 04:40:52', '2018-02-11 04:40:52', 6, 6),
(511, '', 'Trade store, club/guest house 2 bedroom flats and bed sitters, approximately 432.45 square meters,  . It is situated on a 972 square meters of residential allotment in Lae.', 4, 13, 1, 14, 41, '', '339', '178', '', 'John Allan.', 0, '2018-02-11 04:48:15', '2018-02-11 04:48:15', 6, 6),
(512, '', 'An  industrial warehouse / workshops, offices, approximately 5,729.09 square meters and accommodation. They are situated on 10,100 square meters of industrial allotments, City of Lae.', 3, 8, 4, 14, 32, '', '17', '1 & 8', '', 'Steamships Trading Company Limited.', 0, '2018-02-11 04:54:12', '2018-02-11 04:54:12', 6, 6),
(513, '', 'Warehouse / office building , workshop / office building and vacant land for site storage purpose, approximately  2290.68  square meters. They are  situated on a   6.9140 hectares  of light industrial allotments in Lae.', 3, 8, 4, 14, 32, '', '83', '1,5,&6', '', 'Trukai Industries Pty Ltd', 0, '2018-02-11 05:06:56', '2018-02-11 05:06:56', 6, 6),
(514, '', 'warehouse / office Shed plus office and Accommodation, approximately 868.75 square meters, . It is situated on approximately 1200 square meters of Light industrial allotment along Butibum Road ,City of Lae.', 3, 8, 4, 14, 28, '', '71', '4 & 5', '', 'David Edwin Warriner & Donald Edwin', 0, '2018-02-11 05:15:21', '2018-02-11 05:15:21', 6, 6),
(515, '', 'warehouse / office building , workshop / office building and vacant land for site storage purpose, approximately  2290.68  square meters. There are  situated on a square meters of light industrial allotment in Lae.', 3, 8, 4, 14, 32, '', '83', '4,5,&6', '', 'Trukai Industries Pty Ltd', 0, '2018-02-11 05:56:09', '2018-02-11 05:56:09', 6, 6),
(516, '', 'Three bedroom residence, shed, and staff quarters, approximately 361.33 square meters of. It is situated on a 1839 square meters Business Commercial allotment in Lae.', 4, 13, 4, 14, 102, '', '27', '2& 11', '', 'National Fisheries Authority', 0, '2018-02-11 06:09:31', '2018-02-11 06:09:31', 6, 6),
(517, '', '6 x  2 , 3 & 4  bedrooms high  cost weatherboard  residences. They are  situated on a  18,196  square meters of industrial parcel of land  in Lae.', 3, 14, 4, 14, 99, '', '23', '10', '', 'Steamships Trading Company Ltd .', 0, '2018-02-11 06:15:28', '2018-02-11 06:15:28', 6, 6),
(518, '', 'vacant industrial/special purpose use land at 11 mile , approximately  22.89 hectares of  along Lae – Nadzab Road .', 3, 1, 4, 14, 100, '587', '', '', '', 'Derek Partridge', 0, '2018-02-11 09:45:54', '2018-02-11 09:45:54', 6, 6),
(519, '', '1 x 3 bedroom, 3 x 2 bedroom high cost residential units. It is situated on a 1,300 square meters of residential allotment in Lae.', 4, 14, 1, 14, 99, '', '67', '08', '', 'Pastor Joseph Maru.', 0, '2018-02-11 09:55:06', '2018-02-11 09:55:06', 6, 6),
(520, '', 'shop/residence, approximately 370.0 square meters of  plus minor improvements. It is situated on a 600 square meters of commercial allotment along Ninth Street, City of Lae.', 2, 4, 4, 14, 99, '', '4', '05', '', 'Thomson Andoma.', 0, '2018-02-11 10:02:09', '2018-02-11 10:02:09', 6, 6),
(521, '', 'Commercial / Office with two (2) level of Residence, approximately 402.09 square meters of  . It is situated on a 1,933 square meters of commercial allotment within Omili area.', 2, 5, 4, 14, 38, '', '346C', '14', '', 'Kamkumung L.U.C Land Group.', 0, '2018-02-11 10:10:10', '2018-02-11 10:10:10', 6, 6),
(522, '', 'High-set medium covenant residence. It is situated on approximately 800 square meters of residential allotment in Lae.', 4, 13, 1, 14, 112, '', '174', '53', '', 'Rueben M. & Debra Z. Soten', 0, '2018-02-11 10:20:30', '2018-02-11 10:20:30', 6, 6),
(523, '', 'Three- bedroom low covenant residence on low steel Post totaling 63.56 square meters. It is situated on a 450 square meter residential allotment in Lae.', 4, 12, 1, 14, 37, '', '63', '16', '', 'Jean Nitia & Emma Valiling Rogers', 0, '2018-02-11 10:25:44', '2018-02-11 10:25:44', 6, 6),
(524, '', '2 levels, Bed-sitter Flat building, approximately 220.88 square meters,  plus other improvements. It is situated on a 1, 000 square meters residential allotment in Lae City.', 4, 16, 1, 14, 37, '', '104', '07', '', 'Philip Kit Lim.', 0, '2018-02-11 10:32:50', '2018-02-11 10:36:01', 6, 6),
(525, '', 'Two bedroom residential building, approximately 78.24 square meters of  plus other minor improvements. It is situated on approximately 1, 411 square meters of residential allotment in the City of Lae.', 4, 13, 1, 14, 14, '', '36', '16', '', 'Mr. Vin Waliru', 0, '2018-02-11 10:40:07', '2018-02-11 10:40:07', 6, 6);
INSERT INTO `properties` (`id`, `name`, `description`, `property_use_id`, `property_class_id`, `property_lease_type_id`, `property_city_id`, `property_suburb_id`, `port`, `sec`, `lot`, `unit`, `owner`, `is_archive`, `created_at`, `updated_at`, `created_by_id`, `last_edited_by_id`) VALUES
(526, '', '4 bedrooms executive residence, approximately 258 square meters of high set high covenant  with carport/storage/laundry and extra bathroom toilet under main plus other minor improvements. It is situated on approximately 1, 010 square meters of residential allotment in the City of Lae.', 4, 14, 1, 14, 118, '', '4', '3', '', 'Arnold & Elissa Topai', 0, '2018-02-11 10:57:55', '2018-02-11 10:57:55', 6, 6),
(527, '', 'On the property is an existing 3 level office complex and there will be proposed 5 level office complex and ancillary improvements.', 7, 20, 11, 22, 65, '', '390', '19', '', 'National Capital District Commission', 0, '2018-02-12 03:54:54', '2018-02-12 03:54:54', 4, 4),
(528, '', 'The property is a ground level 3 x bedroom residence with an approximate gross floor area of 88.8 square meters plus other improvements.', 4, 13, 1, 14, 19, '', '56', '06', '', 'Bonnie Mimigari & Molly Mimigari', 0, '2018-02-12 04:08:17', '2018-02-12 04:08:17', 4, 4),
(529, '', 'A high set 2 bedroom residence comprising a gross floor area of approximately 65 square meters, plus other improvements.', 4, 13, 1, 22, 65, '', '308', '27', '', 'Paul Depo', 0, '2018-02-12 04:24:28', '2018-02-12 04:24:28', 4, 4),
(530, '', '5 x Bedrooms Executive Residence of 283.5 square meters plus other improvements. It is situated on a 1, 100 square meters residential allotment in Lae City.', 4, 14, 1, 14, 14, '', '77', '8', '', 'Sarah & Murika Bihoro', 0, '2018-02-12 04:28:07', '2018-02-12 04:28:07', 6, 6),
(531, '', 'A high-set 3x residence comprising a gross floor area of approximately 120.6 square meters, plus other improvements.', 4, 13, 1, 14, 99, '', '117', '32', '', 'Paul Depo', 0, '2018-02-12 04:36:48', '2018-02-12 04:36:48', 4, 4),
(532, '', 'The property is a 3 bedroom executive residence of approximately 207.34 square meters plus 2 bedroom low set haus-boi together with other minor improvements. They are  situated on a total of 1, 300 square meters of residential allotment within the City of Lae.', 4, 14, 1, 14, 14, '', '33', '14', '', 'PC 2000 Limited', 0, '2018-02-12 04:37:51', '2018-02-12 04:37:51', 6, 6),
(533, '', 'The Property is improved with a ground level residence building with attached two level building comprising commercial offices/ residence and other staff residences and ancillary improvements.', 4, 23, 1, 22, 71, '', '86', '07', '', 'Samuel Basil', 0, '2018-02-12 04:45:13', '2018-02-15 04:15:30', 4, 4),
(534, '', '2 Levels, 4 x 3 bedroom units, approximately 496.4 square meters,  plus other improvements.  It is situated on a 1, 100 square meters residential allotment in Lae City.', 4, 16, 1, 14, 20, '', '101', '7', '', 'Papindo Trading Company Ltd', 0, '2018-02-12 04:49:17', '2018-02-12 04:49:17', 6, 6),
(535, '', 'The property is a compound of residential estate commonly known as the Bugandi Estate. Improvements on site include 25 standalone 3 x bedroom identical residences plus other improvements.', 4, 13, 1, 14, 113, '220', '', '', '', 'Mishel Limited', 0, '2018-02-12 04:53:54', '2018-02-12 04:53:54', 4, 4),
(536, '', 'The property is a 2 levels, 6 x 3 bedrooms units, approximately 504.0 square meters,  plus other improvements. It is situated on approximately 1, 300 square meters residential allotment in Lae City', 4, 16, 1, 14, 14, '', '36', '35', '', 'Papindo Trading Company Ltd.', 0, '2018-02-12 05:01:05', '2018-02-12 05:01:05', 6, 6),
(537, '', 'Erected on the property is a two level building comprises 13 rooms known as Emmanuel Lodge plus other improvements.', 2, 7, 1, 6, 102, '', '37', '9-10', '', 'Nancy Merimba', 0, '2018-02-12 05:02:18', '2018-02-12 05:02:18', 4, 4),
(538, '', 'The property is a high set 3 x bedroom residence with 3 x bedroom unit on ground floor.', 4, 12, 1, 22, 65, '', '108', '15', '', 'Brian Turi', 0, '2018-02-12 05:12:24', '2018-02-12 05:12:24', 4, 4),
(539, '', 'Erected on the property is a high set 3 x bedroom residence plus other improvements. It is situated on a land area of approximately 432 square meters.', 4, 14, 1, 14, 37, '', '275', '19', '', 'ANZ BANKING GROUP (PNG) LIMITED', 0, '2018-02-12 05:18:26', '2018-02-12 05:18:26', 6, 6),
(540, '', 'Motukea Dockyards and Motukea North Complex', 3, 20, 3, 22, 107, '2893,2894&2991', '', '', '', 'Ballimore No.39 Limited', 0, '2018-02-12 05:35:09', '2018-02-12 05:35:09', 4, 4),
(541, '', '3 bedroom residence, approximately 86.50 square meters of low cost  with fencing. It is situated on approximately 540 square meters of residential allotment in Lae City.', 4, 13, 1, 14, 26, '', '114', '14', '', 'Westpac Bank – PNG Limited', 0, '2018-02-12 05:37:34', '2018-02-12 05:46:25', 6, 6),
(542, '', 'The property is a generally level site fronting the main Butibam Road and boarders the Bumbu River.The pre-cast yard is generally improved with concrete batch plants, block making plants,  storage sheds and containerized staff accommodation.', 7, 20, 9, 14, 19, '', '176', '01', '', 'Nawae Construction Limited.', 0, '2018-02-12 05:55:57', '2018-02-12 05:55:57', 6, 6),
(543, '', 'Erected on the property is a complex of fabrication workshop, admin offices, staff accommodations, storage containers, ablution blocks, messing facility, laboratory, mini fuel service station and guard house plus other improvements.\nLand Area: 5, 263 square meters.', 2, 5, 4, 14, 19, '', '71', '17', '', 'Nawae Constructions Limited.', 0, '2018-02-12 08:03:46', '2018-02-12 08:03:46', 6, 6),
(544, '', 'Erected on the property is a split level 4 x 3 bedroom Units plus other improvements. It is situated on a total land area of 1, 340 square meters.', 4, 14, 1, 14, 99, '', '129', '10', '', 'Nawae Constructions Limited', 0, '2018-02-12 08:16:07', '2018-02-12 08:16:07', 6, 6),
(545, '', 'Erected on the property are: a ground set commercial building and 2 x staff residences plus other improvements.\nLand Area:	1,882 square meters', 2, 5, 4, 16, 115, '', '26', '17', '', 'New Guinea Motor Winders Pty Ltd.', 0, '2018-02-12 08:27:50', '2018-02-12 08:27:50', 6, 6),
(546, '', 'Erected on the property is a ground set duplex building comprising 2 x 3 bedroom units plus other improvements. \nLand Area:  546 square meters.', 4, 15, 1, 14, 22, '', '38', '55', '', 'New Guinea Motor Winders Pty Ltd', 0, '2018-02-12 08:35:00', '2018-02-12 08:35:00', 6, 6),
(547, '', 'Erected on the property are 2 x 2 level duplex buildings plus other improvements. Land Area:  546 square meters.', 4, 15, 1, 14, 22, '', '38', '76', '', 'New Guinea Motor Winders Pty Ltd', 0, '2018-02-12 10:09:59', '2018-02-12 10:09:59', 6, 6),
(548, '', 'Erected on the property is a high set residential building comprising 3 x 3 bedroom units plus other improvements. Land Area:  1,133 square meters.', 4, 14, 1, 14, 14, '', '79', '23', '', 'Niugini Electrical Co. Limited', 0, '2018-02-12 10:17:37', '2018-02-12 10:17:37', 6, 6),
(549, '', 'Erected on the property is a compound of commercial buildings plus other improvements. Land Area:  	6,070 square meters', 2, 4, 4, 14, 33, '', '82', '23', '', 'Niugini Electrical Co. limited.', 0, '2018-02-12 10:24:34', '2018-02-12 10:24:34', 6, 6),
(550, '', 'Erected on the property is a split level 4 x 2 bedroom unit plus other improvements. Land Area:  917 square meters.', 4, 14, 1, 14, 20, '', '93', '24', '', 'Niugini Electrical Co. Limited', 0, '2018-02-12 10:33:53', '2018-02-12 10:33:53', 6, 6),
(551, '', '11 x Town Houses,approximately 2,834.81 square meters of   with swimming pool plus entertainment area and facilities. They are situated on a 11,140 square meters of residential parcel of land within Boundary Road area, City of Lae.', 4, 17, 1, 14, 112, '99', '', '', '', 'National Catering Services Ltd', 0, '2018-02-12 10:42:14', '2018-02-12 10:42:14', 6, 6),
(552, '', 'Yard comprising a 2 level 2 x bedroom duplex and a 4 x Bedroom residence plus other improvements. They are situated on approximately 1,000 square meters of residential allotment in Lae City.', 4, 15, 1, 14, 21, '', '75', '01', '', 'Steven Hui', 0, '2018-02-13 02:51:58', '2018-02-14 03:29:43', 6, 6),
(553, '', 'The property comprises a high set 6 x bedroom residence, a 3 x room mini laboratory, plus other minor improvements. The are situated on a land area of approximately 2656 square meters of residential allotment.', 4, 14, 1, 3, 102, '', '3', '8&9', '', 'Troy Fairweather and sally Anne Motowaya', 0, '2018-02-13 03:08:40', '2018-02-13 03:08:40', 6, 6),
(554, '', 'The property comprises two ground level duplex units plus other improvements. they are situated on a total land area of 1568 square meters.', 4, 15, 1, 14, 99, '', '03', '29', '', 'Willow Springs Limited', 0, '2018-02-13 03:30:32', '2018-02-13 03:30:32', 6, 6),
(555, '', 'The property comprises warehouses with offices and hardstand yard. They are situated on a total land area of 4.4 hectares.', 3, 8, 4, 14, 99, '', '83', '05', '', 'Pagini Transport Limited', 0, '2018-02-13 03:34:59', '2018-02-13 03:34:59', 6, 6),
(556, '', 'The property is a high set 2 x bedroom duplex residence and a warehouse plus other improvements. It is situated on a total land area of 2547 square meters.', 4, 15, 1, 16, 115, '', '57', '08', '', 'Pagini Transport Limited', 0, '2018-02-13 03:50:14', '2018-02-13 03:50:14', 6, 6),
(557, '', 'The property is a vacant land leveled and fenced with barb wire fencing. The land is approximately 819 square meters.', 4, 1, 1, 14, 30, '', '91', '56', '', 'Pagini Transport Limited)', 0, '2018-02-13 04:57:59', '2018-02-13 04:57:59', 6, 6),
(558, '', 'The property is a Commercial and Residential Buildings, approximately 359.55 square meters of   with Associated improvements.', 2, 5, 4, 27, 102, '', '1', '04', '', 'Joseph Kaima Lauati', 0, '2018-02-13 05:17:07', '2018-02-13 05:17:07', 6, 6),
(559, '', '3 x 2 bedrooms triplex flats, approximately 546 square meters blocks of   plus other minor improvements. These are situated on 546 square meters of residential allotment in the City of Lae.', 4, 16, 1, 14, 20, '', '98', '01', '', 'Paul Berry', 0, '2018-02-13 05:26:30', '2018-02-13 05:26:30', 6, 6),
(560, '', '3 bedrooms residence, approximately 74.52 square meters   of low set  plus other minor improvements. It is situated on 600 square meters of residential allotment in the City of Lae.', 4, 13, 1, 14, 20, '', '01', '65', '', 'Pauline Mosoro', 0, '2018-02-13 07:10:42', '2018-02-13 07:10:42', 6, 6),
(561, '', 'The property is a high set 3 x bedroom residence plus other improvements.\nIt is situated on a land area of approximately     809 square meters.', 4, 13, 1, 14, 112, '', '174', '47', '', 'MR. PETER TOROIYE', 0, '2018-02-13 07:20:56', '2018-02-13 07:20:56', 6, 6),
(562, '', 'The property is a new two level building known as Emmanuel Lodge comprises of 20 rooms plus other improvements.', 2, 7, 1, 6, 8, '', '20', '51', '', 'Nancy Merimba', 0, '2018-02-13 07:22:39', '2018-02-13 07:22:39', 4, 4),
(563, '', 'Office/workshop, approximately 139.36m2  of a   as well as an hardstand area. They are situated on a 1,990 square meters of industrial allotment in Lae City.', 3, 8, 4, 14, 24, '', '353', '01', '', 'PNG Steel Limited', 0, '2018-02-13 08:21:21', '2018-02-13 08:21:21', 6, 6),
(564, '', 'The property is a ground set 2 level commercial building plus other improvements. Land Area:	 799 square meters', 2, 3, 4, 14, 99, '', '10', '06', '', 'Remingtion Group', 0, '2018-02-13 08:52:30', '2018-02-13 08:52:30', 6, 6),
(565, '', '3 x bedroom residence comprising an area of approximately 70 square meters plus other minor improvements. It is situated on approximately 716 square meters of residential allotment.', 4, 14, 1, 16, 115, '', '55', '15', '', 'Jant Proprietary Limited', 0, '2018-02-13 08:59:47', '2018-02-13 08:59:47', 6, 6),
(566, '', '3 levels 62 x self contained hotel complex rooms plus other improvements. They are situated on 4. 831m2 of residential allotment in Lae City.', 4, 7, 1, 14, 33, '', '7', '79', '', 'Rent Accommodation Limited', 0, '2018-02-13 09:07:10', '2018-02-13 09:07:10', 6, 6),
(567, '', 'The property comprises a warehouse building with storage and mezzanine offices. It is situated on a land area of   approximately 4, 000 square meters of light industrial allotment.', 3, 8, 4, 14, 15, '', '163', '11', '', 'Pacific Foam Limited', 0, '2018-02-13 10:12:54', '2018-02-13 10:12:54', 6, 6),
(568, '', 'Split level 3 x bedroom residence comprising an area of approximately 178.50 square meters plus other minor improvements. It is situated on approximately 1012 square meters of residential allotment.', 4, 14, 1, 16, 115, '', '59', '02', '', 'Ruth Siou', 0, '2018-02-13 10:24:14', '2018-02-13 10:24:14', 6, 6),
(569, '', '4 bedrooms, approximately 157.64m2 up and down stand alone residence of  . They are situated on approximately 1,100 square meters of residential allotment.', 4, 13, 1, 14, 99, '', '3', '52', '', 'PNG Ready-mix Concrete Ltd', 0, '2018-02-13 10:30:45', '2018-02-13 10:30:45', 6, 6),
(570, '', '3 bedrooms residence,  approximately 122.8m2 stand alone high-set  with carport and Laundry/Storage building. They are situated on approximately 1, 600 square meters of residential allotment.', 4, 13, 1, 14, 99, '', '34', '04', '', 'PNG Ready-mix Concrete Ltd.', 0, '2018-02-13 10:35:55', '2018-02-13 10:35:55', 6, 6),
(571, '', 'Erected on the property are: a ground set residential building and 2 level residential building plus other improvements. Land Area: 6,310 square meters.', 4, 13, 1, 6, 8, '1036', '', '', '', 'TIERNEY PROPERTY GROUP PTY LTD', 0, '2018-02-13 10:47:11', '2018-02-13 10:47:11', 6, 6),
(572, '', 'The property is a 2 level residential building with adjoining ground set extension plus other improvements. Land Area:1,052 square meters.', 4, 13, 1, 20, 102, '', '24', '03', '', 'TIERNEY PROPERTY GROUP PTY LTD', 0, '2018-02-13 10:57:25', '2018-02-13 10:57:25', 6, 6),
(573, '', 'Erected on the property are; a low set residential building with attached office wing and split level accommodations plus other improvements.  Land Area:	1,624 square meters.', 4, 13, 1, 20, 102, '', '25', '15', '', 'Sisters of Mercy of Papua New Guinea Incorporated', 0, '2018-02-14 02:24:01', '2018-02-14 02:24:01', 6, 6),
(574, '', 'Vacant Land, approximately 32,400 square meters with chain mesh wire fencing along the perimeter of the property.', 3, 1, 4, 14, 99, '', '30', '02', '', 'Steamships Trading Company Pty Ltd.', 0, '2018-02-14 02:59:11', '2018-02-14 02:59:11', 6, 6),
(575, '', 'Industrial allotment, approximately 23,000 square meters  along Erica and Sletford Streets,  City of Lae.', 3, 20, 4, 14, 32, '', '30', '01', '', 'Steamships Trading Company Pty Ltd', 0, '2018-02-14 03:05:16', '2018-02-14 03:05:16', 6, 6),
(576, '', 'Hardstand being generally level and compacted with gravel and an approximately 980.48 square meters of administration office, showroom, warehouse and other associated facilities in its existing use. They are adjoining (back to back) and situated on an approximately 4,024 square meters of light industrial allotments in Lae.', 3, 8, 4, 14, 33, '', '172', '3 & 6', '', 'New Guinea  Motors', 0, '2018-02-14 03:18:12', '2018-02-14 03:18:12', 6, 6),
(577, '', 'Erected on the property are; a low set residential building with attached a 2 level accommodation and a detached 2 level incomplete residential accommodation plus other improvements. It is situated on a land area of 885 square meters.', 4, 13, 1, 6, 8, '', '50', '70', '', 'Steven Simon', 0, '2018-02-14 03:38:08', '2018-02-14 03:38:08', 6, 6),
(578, '', 'The property is a standalone 6 x bedroom residence and a detached domestic quarter. Land Area:	 1, 340 square meters.', 4, 13, 1, 14, 14, '', '41', '30', '', 'Tamasi No:7 Limited', 0, '2018-02-14 03:58:20', '2018-02-14 03:58:20', 6, 6),
(579, '', 'The property is a residential duplex building comprising of 3 x bedroom units plus other improvements. Land Area: 810 square meters.', 4, 15, 1, 14, 112, '', '168', '23', '', 'Jim Tapako', 0, '2018-02-14 06:41:18', '2018-02-14 06:41:18', 6, 6),
(580, '', 'Industrial building comprising, offices, sheds workshop and accommodation. It is situated on 3,987 square meters industrial allotments in Lae.', 3, 8, 4, 14, 26, '', '125', '3&4', '', 'Timberline Pty Ltd', 0, '2018-02-14 06:47:59', '2018-02-14 06:47:59', 6, 6),
(581, '', '2 levels , an office & 3 bedroom residence , factory, approximately  300.04   square meters ,   and storage shed . It is situated on a   4000    square meters of light industrial allotment in Lae.', 3, 8, 4, 14, 32, '', '82', '16&17', '', 'Aloga  No: 20  Ltd', 0, '2018-02-14 06:53:09', '2018-02-14 06:53:09', 6, 6),
(582, '', 'High set high cost 3 x bedroom residence containing a total floor area of 120.14 square meters plus other improvements. It is situated on a total of approximately 640 square meters of Residential allotment in Town of Goroka.', 4, 14, 1, 6, 8, '620', '', '', '', 'Titus Andia', 0, '2018-02-14 07:07:42', '2018-02-14 07:07:42', 6, 6),
(583, '', 'The property is a compound comprising an executive 3 x bedrooms residence and a proposed 2 levels 3 bedroom executive triplex flats together with associated minor improvements.', 4, 14, 1, 14, 112, '', '78', '07', '', 'Mr. Tony Sam', 0, '2018-02-14 07:14:59', '2018-02-14 07:14:59', 6, 6),
(584, '', 'Church and 2 x residences plus other improvements. They are situated on a 946 square meters residential allotment in Lae City.', 4, 12, 1, 14, 41, '', '334', '77', '', 'Tonny Moses Ambokai', 0, '2018-02-14 07:54:33', '2018-02-14 07:54:33', 6, 6),
(585, '', '2 levels Commercial / Office and residential guest house together, approximately total of 572.09 square meters of with other minor improvements.  They are situated on a 1,933 square meters of commercial allotment within Omili area.', 2, 5, 4, 14, 26, '', '346C', '14', '', 'Tommy Kara', 0, '2018-02-14 08:01:42', '2018-02-14 08:01:42', 6, 6),
(586, '', '3 bedrooms low set residence, approximately 122.34 square meters of  . It is situated on approximately 1, 300 square meters of residential allotment in the City of Lae.', 4, 13, 1, 16, 42, '', '2', '09', '', 'Mr. Eremas Wartoto', 0, '2018-02-14 08:12:32', '2018-02-14 08:12:32', 6, 6),
(587, '', '3 bedrooms stand alone residence, approximately 122.34 square meters of . It is situated on 1,500 square meters of residential allotment in the City of Lae.', 4, 13, 1, 16, 42, '', '25', '24', '', 'Mr. Eremas Wartoto', 0, '2018-02-14 08:17:08', '2018-02-14 08:17:08', 6, 6),
(588, '', 'The property is improved with a high set executive residence with carport and bar on ground floor plus other improvements. They are situated on a total land area of 1, 300 square meters.', 4, 14, 1, 14, 17, '', '75', '02', '', 'Gu Yi Feng', 0, '2018-02-14 08:24:58', '2018-02-14 08:24:58', 6, 6),
(589, '', 'Erected on the property are; a ground set warehouse, Storage/accommodation building and high set residence plus other improvements. Total Land Area: 3,990 square meters.', 3, 8, 4, 31, 102, '', '36', '5&6', '', 'Trukai Industries Limited.', 0, '2018-02-14 08:41:05', '2018-02-14 08:41:05', 6, 6),
(590, '', 'The improvements on site include the Hospital Building, an adjoined two level residence building and the hospital kitchen.', 4, 20, 4, 14, 99, '', '3', '81', '', 'Tusa Pty Limited', 0, '2018-02-14 08:55:12', '2018-02-14 08:55:12', 6, 6),
(591, '', 'High covenant high set 3 Bedroom Duplex, approximately 189.00 square meters . It is situated on a 990 square meters of residential allotment at Cassowary Road, City of Lae.', 4, 15, 1, 14, 20, '', '102', '16', '', 'Vanco Pty Ltd.', 0, '2018-02-14 09:02:28', '2018-02-14 09:02:28', 6, 6),
(592, '', 'The property is a three level residence building comprising 6 x 3 bedroom executive units plus other improvements. They are situated on a land area of\napproximately 1, 518 square meters.', 4, 13, 1, 14, 14, '', '32', '07', '', 'Blue Haven No.3 Limited.', 0, '2018-02-14 09:16:40', '2018-02-14 09:16:40', 6, 6),
(593, '', '3 bedrooms duplex, approximately 201.6 square meters of  plus other minor improvements. It is situated on approximately 1,114 square meters of residential allotment in Lae City.', 4, 15, 1, 14, 14, '', '130', '05', '', 'Mr. Cornelius & Mrs. Victoria Deasi', 0, '2018-02-14 09:24:14', '2018-02-14 09:24:14', 6, 6),
(594, '', '3 bedrooms stand alone residence, approximately 140.6 square meters of high set high covenant   with carport/storage and laundry under main plus other minor improvements. It is situated on a 1, 115 square meters residential allotment in Lae City.', 4, 13, 1, 14, 41, '', '333', '04', '', 'Vincent Mbuge', 0, '2018-02-14 09:31:30', '2018-02-14 09:31:30', 6, 6),
(595, '', 'Vacant land with security fences.  It is situated on approximately 7,607 square meters of industrial allotment, along Macdhui & Speybank Streets, City of Lae.', 3, 1, 4, 14, 32, '', '29', '25', '', 'Shell Pty Ltd.', 0, '2018-02-14 09:44:35', '2018-02-14 09:44:35', 6, 6),
(596, '', 'industrial offices/storage buildings and workshop, approximately 773.15 square meters of  . It is situated on approximately 5,000 square meters of light industrial allotments, along Macdhui & Speybank Streets, City of Lae.', 3, 8, 4, 14, 32, '', '34', '11&12', '', 'Wagi Valley Transport.', 0, '2018-02-14 09:50:37', '2018-02-14 09:50:37', 6, 6),
(597, '', '5 x bedrooms residence, approximately 172.08 square meters of high covenant  with external carport plus other minor improvements. These are situated on approximately 900 square meters of residential allotment in the City of Lae.', 4, 14, 1, 14, 14, '', '130', '20', '', 'Zabba J. Kewoing', 0, '2018-02-14 09:59:35', '2018-02-14 09:59:35', 6, 6),
(598, '', 'Office/Warehouse building, approximately 1120 square meters of   plus industrial sheds as well complementing residential improvements and other minor improvements.  They are situated on a total of 5,400 square meters of industrial allotment in the City of Lae.', 3, 8, 4, 14, 32, '', '18', '03', '', 'WH Industries Ltd', 0, '2018-02-14 10:07:11', '2018-02-14 10:07:11', 6, 6),
(599, '', '4 x 3 bedroom units, approximately 352.32 square meters block plus other minor improvements. They are situated on approximately 1, 200 square meters of residential allotment in the City of Lae.', 4, 13, 1, 14, 112, '', '311', '7', '', 'Win & Esther Daki', 0, '2018-02-14 10:38:28', '2018-02-14 10:38:28', 6, 6),
(600, '', 'vacant Industrial allotment located within the Voco Point Area, approximately 1177 square meters.', 3, 1, 4, 14, 32, '', '70', '02', '', 'Sek No: 40 Ltd', 0, '2018-02-14 10:46:37', '2018-02-14 10:46:37', 6, 6),
(601, '', '3 bedroom residence, approximately 60.6 square meters, high set. It is situated on approximately 500 square meters of residential allotment in Lae.', 4, 13, 1, 14, 112, '', '349', '22', '', 'F Q Zurenuoc', 0, '2018-02-14 10:52:46', '2018-02-14 10:52:46', 6, 6),
(602, '', 'The property is improved with a two level shop complex with a basement storage. It is situated on a total land area of approximately 1, 521 square meters.', 2, 4, 4, 10, 102, '', '22', '09', '', 'Jia Xing Trading Limited', 0, '2018-02-14 11:03:38', '2018-02-14 11:03:38', 6, 6),
(603, '', 'The property is improved with a two level shop complex with other associated improvements. It is situated on a total land area of approximately 300 square meters.', 2, 4, 4, 34, 102, '', '24', '07', '', 'Qi Mei Limited', 0, '2018-02-15 02:45:39', '2018-02-15 02:45:39', 6, 6),
(604, '', 'Erected on the property are several bush-material family residences and a standalone three (3) bedroom residence comprising a gross floor area of 200 square meters.', 6, 20, 5, 20, 102, '971', '', '', '', 'Joseph Andrew Tepp', 0, '2018-02-15 02:52:02', '2018-02-15 02:52:02', 6, 6),
(605, '', 'Erected on the property are two big workshops and a two level office building plus other improvements. It is situated on a total land area of 3, 986 square meters.', 3, 8, 4, 14, 16, '', '158', '9', '', 'Pacific Construction Group Limited', 0, '2018-02-15 03:05:17', '2018-02-15 03:05:17', 6, 6),
(606, '', 'Erected on the property are; low set residential building comprising 5 x bedrooms with bar and swimming pool and 2 x detached dwellings. Land Area: 1,517 square meters', 4, 13, 1, 14, 99, '', '3', '86', '', 'Morobe Pharmacies Limited', 0, '2018-02-15 03:19:14', '2018-02-15 03:19:14', 6, 6),
(607, '', 'Erected on the property are; 2 x commercial buildings. Building One (1) comprises of 2 levels; level one comprising retail shops and warehouse and level two comprise of office rooms. Building Two (2) comprise of three (3) storey building comprising office rooms plus other improvements. Land Area:  5,206 square meters', 2, 5, 4, 14, 99, '', '19', '20', '', 'Chemcare Group Limited.', 0, '2018-02-15 03:33:58', '2018-02-15 03:33:58', 6, 6),
(608, '', 'The property is a ground set commercial building comprising retail shop, office, storage and toilets plus other improvements. Land Area:  639 square meters.', 2, 5, 4, 14, 99, '', '43', '03', '', 'Chemcare Pharmacies Limited.', 0, '2018-02-15 04:19:26', '2018-02-15 04:19:26', 6, 6),
(609, '', 'The property is a ground set commercial building comprising retail shop and warehouse plus other improvements. Land Area:  2,514 square meters.', 2, 5, 4, 14, 14, '', '46', '3,4&5', '', 'Chemcare Group Limited.', 0, '2018-02-15 04:33:25', '2018-02-15 04:33:25', 6, 6),
(610, '', 'Harbour city is a privately owned estate and is a "gated community" with a mixture of commercial office buildings, multi-storey residential accommodation, service buildings, a marina and associated improvements with a land area of 166610 square meters.', 2, 5, 4, 22, 107, '', '44', '34 & 21', '', 'Harbour City Developmets Limited and Harbour City Holdings Limited.', 0, '2018-02-15 04:48:46', '2018-02-15 04:48:46', 4, 4),
(611, '', 'Burns Peak estate is generally vacant land with a pre-existing managers residence and integral staff accommodation.', 4, 17, 4, 22, 65, '', '16', '153-159', '', 'Curtain Bros Papua New Guinea', 0, '2018-02-15 05:05:31', '2018-02-15 05:05:31', 4, 4),
(612, '', 'On the property is a single level building comprises a 1 x 3 bedroom residence in high steel piers and of fibro and timber construction having a gross floor area of 120 square meters.', 4, 13, 1, 16, 102, '', '62', '7', '', 'Win Daki', 0, '2018-02-15 05:36:38', '2018-02-15 05:36:38', 4, 4),
(613, '', 'The property is improved with a high set 4x bedroom executive residence building having a gross floor area of approximately 202 square meters plus other improvements.', 4, 14, 1, 22, 107, '', '51', '129', '', 'John Kelly', 0, '2018-02-15 05:45:35', '2018-02-15 05:45:35', 4, 4),
(614, '', 'Erected on the property are; 1 x ground set commercial building comprising offices, supermarket, food bar, liquor shop, warehouse and kitchen and a fuel service station  plus other improvements. Land Area:  3,255.4 square meters.', 2, 5, 4, 14, 99, '', '50', '7-14', '', 'Chemcare Pharmacies Limited.', 0, '2018-02-15 07:19:20', '2018-02-15 07:19:20', 6, 6),
(615, '', 'The property is a ground set residential building comprising 3 x bedrooms, bar, swimming pool and carport area plus other improvements. Land Area: 935 square metres', 4, 13, 1, 14, 20, '', '93', '22', '', 'Morobe Pharmacies Limited', 0, '2018-02-15 07:27:43', '2018-02-15 07:27:43', 6, 6),
(616, '', 'The property is a compound of 3 detached 2  level residential buildings comprising 3  x bedrooms to the top floor and a lounge, kitchen and laundry/toilet to the ground floor each  plus other improvements. Land Area: 1,014 square meters', 4, 13, 1, 14, 20, '', '93', '42', '', 'Morobe Pharmacies Limited', 0, '2018-02-15 07:41:17', '2018-02-15 07:41:17', 6, 6),
(617, '', 'The property is a 2 level residential building and a detached ground set residence plus other improvements.\nLand Area: 738 square metres', 4, 13, 1, 14, 20, '', '104', '01', '', 'Morobe Pharmacies Limited', 0, '2018-02-15 07:47:07', '2018-02-15 07:47:07', 6, 6),
(618, '', 'The property is a high set residential building comprising 3 x bedrooms, lounge, kitchen, shower/toilet and storage with carport area to the ground level plus other improvements. Land Area: 833 square meters', 4, 13, 1, 14, 112, '', '167', '08', '', 'Huon Gulf Pharmacies Limited', 0, '2018-02-15 07:53:09', '2018-02-15 07:53:09', 6, 6),
(619, '', 'Erected on the property are; a high covenant residence, 2 level triangular shaped residence and a ground set residence plus other improvements. Land Area: 859 square meters', 4, 14, 1, 14, 112, '', '167', '09', '', 'Huon Gulf Pharmacies Limited', 0, '2018-02-15 08:02:33', '2018-02-15 08:02:33', 6, 6),
(620, '', 'Erected on the property is a high set 3 x bedroom residential building plus other improvements. Land Area:	 1,282 square meters.', 4, 13, 1, 14, 15, '', '282', '06', '', 'Elizah Poiya and Nathalie Kama', 0, '2018-02-15 08:32:45', '2018-02-15 08:32:45', 6, 6),
(621, '', 'The property is improved with an existing shed with offices, warehouses, adjoined two level showroom with offices recently constructed and a proposed factory building. They are situated on a total land area of 1,990 square meters of light industrial allotment.', 3, 5, 3, 14, 24, '', '354', '39', '', 'Marva Motors Limited', 0, '2018-02-15 08:37:56', '2018-02-15 08:37:56', 4, 4),
(622, '', 'The property is a low set 6 x bedroom residential building plus other improvements. Land Area:	 1,290 square meters', 4, 13, 1, 14, 99, '', '1', '30', '', 'Unawos Investments Limited.', 0, '2018-02-15 08:43:39', '2018-02-15 08:43:39', 6, 6),
(623, '', 'On the property is a two level building comprises 3x4bedroom residence mixture of reinforced concrete and fibre weatherboard and timber construction, having a gross floor area of approximately 630 square meters each including the balcony.', 4, 17, 1, 22, 65, '', '221', '02', '', 'Pacific Construction Group Limited', 0, '2018-02-15 08:48:08', '2018-02-15 08:48:08', 4, 4),
(624, '', 'The property is a standalone residential building comprises 3 x 2 bedroom units plus other improvements.\nLand Area:  809 square meters.', 4, 13, 1, 14, 14, '', '174', '51', '', 'SABERTE LIMITED', 0, '2018-02-15 08:54:53', '2018-02-15 08:54:53', 6, 6),
(625, '', 'The property is a standalone 2 level ground set residential building with 4 x bedrooms plus other improvements.\nLand Area:  1000 square meters.', 4, 13, 1, 14, 41, '', '339', '134', '', 'David Kaunuba and Veronica Lape', 0, '2018-02-15 09:03:18', '2018-02-15 09:03:18', 6, 6),
(626, '', 'The property is improved with split level residence building having  3 x4 bedroom each on each level and having a gross floor area of approximately 212.5 square meters.', 4, 14, 1, 27, 102, '', '01', '04', '', 'Kenneth Korokali & Mape Korokali', 0, '2018-02-15 09:05:15', '2018-02-15 09:05:15', 4, 4),
(627, '', 'The property is improved with a 1x3 bedroom residence building having a gross floor area of 53 square meters.', 4, 13, 11, 27, 102, '', '23', '16', '', 'Kenneth Korokali and Mape Korokali', 0, '2018-02-15 09:14:32', '2018-02-15 09:14:32', 4, 4),
(628, '', 'The property is a standalone 1 x 3 bedroom residential building. \nLand Area:  450 square meters.', 4, 13, 1, 14, 14, '', '313', '33', '', 'Thoa Enara and Peppy Enara', 0, '2018-02-15 09:15:31', '2018-02-15 09:15:31', 6, 6),
(629, '', 'On the property is a workshop building with two level office as well as a detached offices and storage areas.', 3, 8, 3, 27, 102, '', '17', '3,09&10', '', 'Pacific Construction Group Limited', 0, '2018-02-15 09:21:02', '2018-02-15 09:21:02', 4, 4),
(630, '', 'The property is improved with 3x 2 bedroom triplex residential building converted to office having a gross floor area of approximately 408 square meters.', 4, 17, 1, 20, 102, '', '42', '09', '', 'Teddys Plant Hire Limited.', 0, '2018-02-15 09:31:35', '2018-02-15 09:31:35', 4, 4),
(631, '', 'The property is a high set 4 x bedroom residential building plus other improvements. Land Area:	 810 square meters.', 4, 13, 1, 14, 17, '', '168', '35', '', 'William Gull and Joy Gull', 0, '2018-02-15 09:37:51', '2018-02-15 09:37:51', 6, 6),
(632, '', 'Erected on the property is a special purpose building (Public Toilet Facility) with building extensions comprising a 3 x bedroom residence, kitchen, 1 x office space and 1 x office room  plus other improvements.\nLand Area:  2160 square meters.', 7, 20, 11, 14, 14, '', '90', '03', '', 'Comfort Management Services Limited', 0, '2018-02-15 09:54:55', '2018-02-15 09:54:55', 6, 6),
(633, '', 'Erected on the property is a 3 x bedroom residential house plus other improvements.', 4, 13, 1, 14, 99, '', '03', '30', '', 'Stephen Noel Drennan and Terrence John Barrett', 0, '2018-02-15 10:17:25', '2018-02-15 10:17:25', 6, 6),
(634, '', 'the property is a standalone 3 x bedroom residential building plus other improvements.', 4, 12, 1, 14, 22, '', '38', '85', '', 'Sape Sande Yapo and Regina Yapo', 0, '2018-02-15 10:29:39', '2018-02-15 10:29:39', 6, 6),
(635, '', 'Warehouse/residence building, approximately 390.45 square meters of. It is situated on a 788 square meters of commercial allotment in the Township of Goroka.', 2, 5, 4, 6, 119, '', '22', '54', '', 'David Au Digal', 0, '2018-02-16 02:17:00', '2018-02-16 02:17:00', 6, 6),
(636, '', 'The property is high set 3 x bedroom residence plus other improvements. It is situated on a total land area of 450 square meters.', 4, 13, 1, 14, 15, '', '275', '01', '', 'Benjamin Mom Taiyer', 0, '2018-02-16 02:24:43', '2018-02-16 02:24:43', 6, 6),
(637, '', 'Proposed development of the site is to comprise a two levels 2 x 3 bedroom units and 6 x 2 bedrooms unit.  It will be situated on a land area of approximately 648 square meters.', 4, 13, 1, 14, 19, '', '57', '35', '', 'BANK OF SOUTH PACIFIC LIMITED', 0, '2018-02-16 02:43:08', '2018-02-16 02:43:08', 6, 6),
(638, '', 'The property comprises a two level Guest House accommodation known as the “One Mile Guest House” plus other minor improvements. It is situated on a land area of approximately 1, 232 square meters of residential allotment.', 4, 20, 1, 14, 112, '', '76', '04', '', 'Yame Yame Limited', 0, '2018-02-16 02:51:02', '2018-02-16 02:51:02', 6, 6),
(639, '', 'The property is a two levels 3 x bedrooms residence and a 2 x bedroom unit on ground floor plus other improvements. It is situated on a total land area of 809 square meters.', 4, 13, 1, 14, 17, '', '170', '06', '', 'Rose Mom', 0, '2018-02-16 04:05:26', '2018-02-16 04:05:26', 6, 6),
(640, '', 'Improvements on site includes a two levels 4 x 2 bedroom units and a detached two levels 2 x 3 bedroom units plus other improvements. It is situated on a total land area of 809 square meters.', 4, 13, 1, 14, 17, '', '174', '46', '', 'Moses Pagi', 0, '2018-02-16 04:13:53', '2018-02-16 04:13:53', 6, 6),
(641, '', 'Erected on the property is a ground level shop building and adjoined residences, offices and storage, approximate land area of 650 square meters..', 2, 4, 4, 14, 99, '', '5', '05', '', 'Sape Sande Yapo', 0, '2018-02-16 04:24:37', '2018-02-16 04:24:37', 6, 6),
(642, '', 'Two levels bedsitter flat comprising 14 x self contained rooms and a detached two levels 2 x 1 bedroom units plus other improvements. It is situated on a total land area of 1, 100 square meters.', 4, 13, 1, 14, 14, '', '80', '17', '', 'Dr. John Pumwa & Elisabeth Pumwa', 0, '2018-02-16 04:37:33', '2018-02-16 04:37:33', 6, 6),
(643, '', 'Three adjoining allotments comprising the Super market building commonly known as the “Sika Super Market” and detached hardware, bakery/offices and kai bar/residence building plus other improvements', 2, 4, 4, 13, 102, '', '3', '28, 35& 16-19', '', 'Sika Pty Limited', 0, '2018-02-16 05:36:30', '2018-02-16 05:36:30', 6, 6),
(644, '', 'The property is a staff quarters with 7 x rooms comprising a gross floor are of approximately 105.6 square meters  plus other improvements. It is situated on 1, 280 square meters of residential allotment in Town of Kundiawa.', 4, 13, 1, 13, 102, '', '9', '41', '', 'Sika Pty Limited', 0, '2018-02-16 05:41:06', '2018-02-16 05:41:06', 6, 6),
(645, '', 'Shop complex commonly known as the “TNA Supermarket” plus other improvements. It is situated on a 1, 000 square meters of commercial allotment in Town of Kundiawa.', 2, 4, 4, 13, 102, '', '3', '01', '', 'TNA Limited', 0, '2018-02-18 01:53:19', '2018-02-18 01:53:19', 6, 6),
(646, '', 'High 3 x bedroom residence with a 2 x bedroom residence o n ground floor plus other improvements. It is situated on a 923 square meters of residential allotment in Town of Kundiawa.', 4, 13, 4, 14, 102, '', '3', '3', '', 'Sika Pty Limited', 0, '2018-02-18 01:58:59', '2018-02-18 01:58:59', 6, 6),
(647, '', 'The property comprises a split level 3 x bedroom quadruplex comprising a gross floor area of approximately 719.2 square meters with attached carport comprising a gross floor area of approximately 164 square meters plus other improvements. It is situated on a 1, 037 square meters of residential\nallotment.', 4, 15, 1, 22, 62, '', '219', '08', '', 'Wayne Norumu & Tangaie Norumu', 0, '2018-02-18 02:40:29', '2018-02-18 02:40:29', 6, 6),
(648, '', 'The property comprises two adjoining blocks of two levels 3 x bedrooms duplex units plus a detached 3 x bedroom single residence as well as other improvements. They are situated on a 2, 100 square meters of residential\nallotment.', 4, 15, 1, 22, 1, '', '18', '09', '', 'Wayne Norumu & Tangale Norumu', 0, '2018-02-18 02:54:23', '2018-02-18 02:54:23', 6, 6),
(649, '', 'The property comprises a two level 5 x 3  bedroom townhouse units comprising a gross floor area of approximately 586.6 square meters with attached carport comprising a gross floor area of approximately 234 square meters plus other improvements. It is situated on a 1, 366 square meters of residential allotment.', 4, 14, 1, 22, 71, '', '25', '14', '', 'Wayne Norumu & Tangaie Norumu', 0, '2018-02-18 03:04:46', '2018-02-18 03:04:46', 6, 6),
(650, '', 'The property comprises a low set 3 x bedroom single residence and a detached warehouse building plus other improvements. It is situated on a 1, 370 square meters of residential allotment.', 4, 13, 1, 22, 71, '', '26', '39', '', 'Wayne Norumu & Tangaie Norumu', 0, '2018-02-18 03:16:07', '2018-02-18 03:16:07', 6, 6),
(651, '', 'Low set residence building converted to office  plus other improvements. It is situated on a 1, 500 square meters of residential allotment.', 4, 13, 1, 14, 99, '', '1', '15', '', 'Wayne Norumu', 0, '2018-02-18 03:23:06', '2018-02-18 03:23:06', 6, 6),
(652, '', 'Single storey lodge accommodation building commonly known as the “Eriku Lodge” plus other improvements. It is situated on a 2, 600 square meters of residential allotment.', 4, 20, 1, 14, 14, '', '35', '32', '', 'Wayne Norumu', 0, '2018-02-18 03:33:34', '2018-02-18 03:33:34', 6, 6),
(653, '', 'The property comprises a 3 x bedroom duplex unit comprising a gross floor area of approximately 205.2 square meters and a basement storage/unit of 108 square meters plus other improvements. It is situated on a 1, 602 square meters of residential allotment.', 4, 15, 1, 22, 107, '', '51', '32', '', 'Wayne Norumu & Tangaie Norumu', 0, '2018-02-18 03:57:37', '2018-02-18 03:57:37', 6, 6),
(654, '', 'Erected on the property is a two level 2 x bedroom duplex unit plus other improvements. It is situated on a total land area of 1, 083 square meters.', 4, 15, 1, 14, 19, '', '62', '12&13', '', 'SAK Investments PTY Limited.', 0, '2018-02-18 04:22:08', '2018-02-18 04:22:08', 6, 6),
(655, '', 'The property is a low set residential building comprising lounge, kitchen, 2 x bedrooms, shower/toilet and lounge and office to extended ground floor with balcony occupying gross floor area of 251 square meters.', 4, 13, 1, 16, 115, '', '42', '06', '', 'Dickson Laviong', 0, '2018-02-18 05:37:50', '2018-02-18 05:37:50', 6, 6),
(656, '', 'The property is a vacant block fully fenced and ideally located at the corner of Regina Avenue and Coralita Street with high demand and development potential for residential purposes.  It is relatively level and is ready for use as residential development.', 4, 1, 1, 16, 115, '', '6', '01', '', 'ENF (PNG) Co. Limited', 0, '2018-02-18 05:47:00', '2018-02-18 05:47:00', 6, 6),
(657, '', 'The property is a low set medium cost 4 x bedroom residence and a bed-sitter plus other improvements. It is situated on a total land area of 1, 593 square meters.', 4, 13, 1, 14, 99, '', '3', '63', '', 'Patana Company No.27 Proprietary Limited', 0, '2018-02-18 05:55:05', '2018-02-18 05:55:05', 6, 6),
(658, '', 'High set 3 x bedroom residence containing a total floor area of approximately 134.6 square meters, plus other improvements. It is situated on a 1 600 square meters residential allotment in Lae City.', 4, 14, 1, 14, 99, '', '68', '05', '', 'SEK No. 10 Pty Ltd.', 0, '2018-02-18 07:23:39', '2018-02-18 07:23:39', 6, 6),
(659, '', '3 x bedroom L-shaped executive residence containing a total floor area of approximately 288.9 square meters, plus other improvements. It is situated on a 1 000 square meters residential allotment in Lae City.', 4, 14, 1, 14, 20, '', '106', '14', '', 'SEK No.10 Pty Ltd', 0, '2018-02-18 07:27:57', '2018-02-18 07:27:57', 6, 6),
(660, '', 'The property is a two level apartment comprising 6 x 2 bedroom units and a split level 3 bedroom unit plus other improvements. It is situated on a total land area of 538 square meters.', 4, 14, 1, 14, 20, '', '98', '01', '', 'Mr. Paul Berry.', 0, '2018-02-18 07:47:39', '2018-02-18 07:47:39', 6, 6),
(661, '', 'The property is two level 2 bedroom duplex residence plus other improvements. It is situated on a total land area of 1, 545 square meters.', 4, 15, 1, 14, 112, '', '73', '02', '', 'Nema Kapiri.', 0, '2018-02-18 07:53:09', '2018-02-18 07:53:09', 6, 6),
(662, '', 'The property is a two level 4 x 2 bedroom apartments and a detached 2 x bedroom residence plus other improvements. It is situated on a total land area of 810 square meters.', 4, 14, 1, 14, 112, '', '37', '168', '', 'Nema Kapiri.', 0, '2018-02-18 08:01:00', '2018-02-18 08:01:00', 6, 6),
(663, '', 'The property is a recently built split level   5 x 3 bedroom apartments plus other improvements. It is situated on a total land area of 951 square meters.', 4, 14, 1, 14, 14, '', '35', '76', '', 'Linus Paraka.', 0, '2018-02-18 08:08:13', '2018-02-18 08:08:13', 6, 6),
(664, '', 'The property is two level duplex comprising a 4 x bedroom downstairs unit and a    3 x bedroom upstairs unit plus other improvements. It is situated on a total land area of 1, 636.45 square meters.', 4, 15, 1, 14, 112, '', '73', '07', '', 'John Nicholas.', 0, '2018-02-18 08:18:33', '2018-02-18 08:18:33', 6, 6),
(665, '', 'The property is a low set 8 x bedroom residence plus other improvements. It is situated on a land area of approximately 645 square meters.', 4, 13, 1, 14, 22, '', '64', '50', '', 'Lambay Limited.', 0, '2018-02-18 08:32:00', '2018-02-18 08:32:00', 6, 6),
(666, '', 'The property is a standalone 1 x 3 bedroom residential.  It is situated on total land areas of 450 square meters.', 4, 13, 1, 14, 14, '', '263', '12', '', 'Ludy Tekla Agon', 0, '2018-02-18 08:48:25', '2018-02-18 08:48:25', 6, 6),
(667, '', '2 level 3 x bedroom residence comprising a floor area of approximately 122.40m2. It is situated on approximately 596 square meters of residential allotment in Town of Madang.', 4, 13, 1, 16, 115, '', '148', '15', '', 'Punga Mova', 0, '2018-02-18 08:58:23', '2018-02-18 08:58:23', 6, 6),
(668, '', 'The property is a two level commercial building plus other improvements.\nIt is situated on a total land area of 455 square meters.', 2, 4, 4, 14, 99, '', '120', '01', '', 'MMK Transport Limited.', 0, '2018-02-18 09:05:52', '2018-02-18 09:05:52', 6, 6),
(669, '', 'The property are, a four (4) bedroom low set residence and a two (2) level 1 x 2 & 1 x 4 bedroom duplex unit accommodation plus other improvements.\nLand Area: 1,500 square meters.', 4, 15, 1, 14, 14, '', '32', '75', '', 'Patrick Wong', 0, '2018-02-18 09:19:48', '2018-02-18 09:19:48', 6, 6),
(670, '', 'The property is a 2 level 4 x 2 bedroom units and adjoining 2 x 3 bedroom units plus other improvements. Land Area:  1,384 square meters.', 4, 13, 1, 14, 14, '', '32', '100', '', 'PNG Metal Fabricators Pty Ltd', 0, '2018-02-18 09:36:22', '2018-02-18 09:36:22', 6, 6),
(671, '', 'The property is a commercial building comprising offices, retail and hardstand fabrication area plus other improvements. Land Area: 4,000 square meters', 2, 3, 4, 14, 33, '', '50', '22', '', 'Aroweld Pty Ltd', 0, '2018-02-18 09:49:49', '2018-02-18 09:49:49', 6, 6),
(672, '', 'The property is two level 12 x 2 bedroom apartments plus other improvements.\nIt is situated on a total land area of 1, 300 square meters.', 4, 14, 1, 14, 99, '', '3', '12', '', 'Raumai No. 18 Limited', 0, '2018-02-18 10:01:47', '2018-02-18 10:01:47', 6, 6),
(673, '', 'The property is a warehouse and hardstand for storage. This is a warehouse with part of it being used as a two level office space comprising a gross floor area of approximately 1, 265 square meters. The office space takes up 148 square meters each for both downstairs and the upstairs.', 3, 8, 3, 14, 24, '', '354', '11,12& 13', '', 'Raumai No. 18 Limited.', 0, '2018-02-18 10:14:08', '2018-02-18 10:14:08', 6, 6),
(674, '', 'These adjoining allotments is the main retail warehouse with full mezzanine floor. Both floors are being used as super market with Manager’s office downstairs and storage. It is situated on a total land area of 1, 400 square meters.', 4, 20, 1, 14, 14, '', '46', '6&7', '', 'Raumai No. 18 PTY LTD.', 0, '2018-02-18 10:29:51', '2018-02-18 10:29:51', 6, 6),
(675, '', 'These adjoining allotments is the main retail warehouse with full mezzanine floor. Both floors are being used as super market with Manager’s office downstairs and storage. It is situated on a total land area of 700 square meters.', 4, 20, 1, 14, 14, '', '64', '100', '', 'Raumai No. 18 PTY LTD.', 0, '2018-02-18 10:43:56', '2018-02-18 10:43:56', 6, 6),
(676, '', 'The property is a hardstand and has been fenced with picket fencing. land comprises a regular shaped inside allotment and is inline with the street level. The general topography is level to the road frontage and gently slopes down to the rear boundary', 3, 8, 4, 14, 33, '', '20', '01', '', 'Niugini Building Supplies Limited.', 0, '2018-02-18 10:53:09', '2018-02-18 10:53:09', 6, 6),
(677, '', 'The property is vacant land and has not been fenced or secured. The land comprises a regular shaped inside allotment and is inline with the street level. The general topography is level to the rear boundary and gently slopes up to the street frontage.', 4, 1, 1, 14, 24, '', '300', '34', '', 'Ngawae Mitio', 0, '2018-02-19 13:19:21', '2018-02-19 13:19:21', 6, 6),
(678, '', 'The property is vacant land and has been fenced with cyclone mesh fencing. The land comprises a regular shaped inside allotment and is inline with the street level. The general topography is level to the rear boundary and gently slopes down to the street frontage.', 3, 1, 3, 14, 24, '', '354', '09', '', 'Raumai No. 18 Limited.', 0, '2018-02-19 13:27:24', '2018-02-19 13:27:24', 6, 6),
(679, '', 'The property is vacant land and has been fenced with cyclone mesh fencing. The land comprises a regular shaped inside allotment and is inline with the street level. The general topography is level to the rear boundary and gently slopes down to the street frontage.', 3, 1, 3, 14, 24, '', '354', '10', '', 'Raumai No. 18 Limited', 0, '2018-02-19 13:32:53', '2018-02-19 13:32:53', 6, 6),
(680, '', 'The property is a warehouse and hardstand for storage.This is a three adjoining allotments with the lands comprise a regular shaped inside allotment and are inline with the street level. The general topography is level to the rear boundary and gently slopes down to the street frontage.', 3, 8, 3, 14, 24, '', '354', '11', '', 'Raumai No. 18 Limited.', 0, '2018-02-19 16:41:28', '2018-02-19 16:41:28', 6, 6),
(681, '', 'Erected on these adjoining allotments are three adjoining warehouses with mezzanine floors. The warehouses are being used as storage, shops and main office.  It is situated on a total land area of   6, 020 square meters.', 4, 20, 1, 14, 33, '', '08', '12&13', '', 'Hailen Pik Company Limited.', 0, '2018-02-19 16:50:24', '2018-02-19 16:50:24', 6, 6),
(682, '', 'Erected on this allotment is a retail warehouse which is used as shop with Manager’s office and storage. It is situated on a total land area of 700 square meters.', 4, 20, 1, 14, 99, '', '5', '18', '', 'Raumai No. 18 PTY LTD.', 0, '2018-02-19 19:22:09', '2018-02-19 19:22:09', 6, 6),
(683, '', 'The property is a ground level 6 x bedroom residence plus other improvements. It is situated on a land area of approximately 882 square meters.', 4, 13, 1, 14, 112, '', '168', '31', '', 'Danny Kepi and Veronica Kepi.', 0, '2018-02-19 21:11:55', '2018-02-19 21:11:55', 6, 6),
(684, '', 'The property is a shed for commercial uses and split level residential building plus other improvements.', 2, 4, 4, 14, 15, '', '163', '12', '', 'Samson Mua', 0, '2018-02-19 21:38:40', '2018-02-19 21:38:40', 6, 6),
(685, '', 'The property  is a two level office/residence building comprising a total floor area of approximately 550.40m2 and an extra office building plus other improvements. They are situated on approximately 1 700 square meters of residential allotment in Lae City.', 4, 13, 1, 14, 99, '', '4', '07', '', 'Steven Peters', 0, '2018-02-20 13:39:14', '2018-02-20 13:39:14', 6, 6),
(686, '', 'The property is a high set duplex residence comprising a floor area of approximately 138.40m2 plus other improvements. It is situated on approximately 663 square meters of residential allotment in Lae City.', 4, 15, 1, 14, 14, '', '300', '59', '', 'Jeanette Salum', 0, '2018-02-20 17:13:02', '2018-02-20 17:13:02', 6, 6);
INSERT INTO `properties` (`id`, `name`, `description`, `property_use_id`, `property_class_id`, `property_lease_type_id`, `property_city_id`, `property_suburb_id`, `port`, `sec`, `lot`, `unit`, `owner`, `is_archive`, `created_at`, `updated_at`, `created_by_id`, `last_edited_by_id`) VALUES
(687, '', 'The property is a two level 2 x  bedroom quadruple with a total floor area of approximately 379.04 square meters, plus other improvements. They are situated on a 1 100 square meters residential allotment in Lae City.', 4, 15, 4, 14, 14, '', '79', '11', '', 'Bill Wangilo & Pansy Taueni', 0, '2018-02-21 13:33:08', '2018-02-21 13:33:08', 6, 6),
(688, '', 'The property is a split level 2 x bedroom residence plus other improvements. It is situated on a total land area of 1, 476 square meters.', 4, 13, 1, 3, 99, '', 'J', '02', '', 'Nangamanga Limited.', 0, '2018-02-21 13:44:28', '2018-02-21 13:44:28', 6, 6),
(689, '', 'The property is improved with a high set 3 x bedroom residential dwelling with a 2 x bedroom unit on the ground and a detached 3 x bedroom unit substantially complete plus other improvement.', 4, 13, 1, 20, 102, '', '40', '23', '', 'Paul Negints', 0, '2018-02-21 13:53:13', '2018-02-21 13:53:13', 4, 4),
(690, '', 'The property is a split level 3 x bedroom duplex plus other improvements.\nIt is situated on a total land area of 1, 438 square meters.', 4, 15, 1, 14, 20, '', '93', '64', '', 'William Gull.', 0, '2018-02-21 13:54:37', '2018-02-21 13:54:37', 6, 6),
(691, '', 'The property is a split level building comprises 1x3 bedroom fibro residence with 1 x 3 bedroom unit underneath in rundown condition.', 4, 12, 1, 22, 65, '', '307', '60', '', 'Paul Negints', 0, '2018-02-21 14:00:36', '2018-02-21 14:00:36', 4, 4),
(692, '', 'The property is a 2 levels high covenant 4 x bedrooms residence, approximately 121.16 square meters of  with external carport, workshop plus other minor improvements. These are situated on approximately 1, 189 square meters of residential allotment in the City of Lae', 4, 13, 1, 14, 102, '', '339', '160', '', 'Mrs. Betty Silitarai', 0, '2018-02-21 14:03:11', '2018-02-21 14:03:11', 6, 6),
(693, '', 'The property is a split level building comprises 1x3 bedroom weatherboard residence with 1x3 bedroom unit underneath and a detached single level building comprises 1x3 bedroom residence in rundown condition.', 4, 13, 1, 22, 65, '', '277', '92', '', 'Paul Negints', 0, '2018-02-21 14:07:56', '2018-02-21 14:07:56', 4, 4),
(694, '', 'The property is a single level duplex building comprises 2x2 bedroom weatherboard residence on low reinforced concrete piers and timber construction.', 4, 15, 1, 22, 107, '', '51', '05', '', 'Watt Kil Kiddie', 0, '2018-02-21 14:13:51', '2018-02-21 14:13:51', 4, 4),
(695, '', 'The property is a adjoining commercial shop and office buildings with complementing developments.  These are situated on 13,845 square meters of commercial allotments within the Township of Kainantu.', 2, 5, 4, 7, 120, '', '9', '2&3', '', 'Bank South Pacific', 0, '2018-02-21 14:14:56', '2018-02-21 14:14:56', 6, 6),
(696, '', 'The property is two level building comprises office, detached single level buildings comprises 1x3 bedroom residence and 1x3 bedroom duplex in rundown condition.', 4, 13, 1, 20, 102, '', '48', '26', '', 'Paul Kurai', 0, '2018-02-21 14:20:18', '2018-02-27 21:12:52', 4, 4),
(697, '', 'The property is a 3x two level duplex residential buildings comprises 6x3 bedroom residence with a detached split level building comprises 1x3 bedroom residential and ancillary improvements.', 4, 15, 1, 20, 102, '', '41', '32', '', 'Paul Kurai', 0, '2018-02-21 14:26:40', '2018-02-21 14:26:40', 4, 4),
(698, '', 'The property is a split level residential building comprises 2x3 bedroom weatherboard residence with 1x3 bedroom unit underneath.', 4, 13, 1, 20, 102, '', '53', '8', '', 'Paul Kurai', 0, '2018-02-21 14:32:34', '2018-02-21 14:32:34', 4, 4),
(699, '', 'The property comprises a recently developed lodge known as the "GK Lodge" plus adjoined existing lodge accommodation and shop buildings plus other minor improvements.', 2, 7, 4, 6, 102, '', '6', '6', '', 'Grace Kaupa', 0, '2018-02-21 14:39:49', '2018-02-21 14:39:49', 4, 4),
(700, '', 'The property is a 3 x bedroom high set, high covenant residence and a bedsitter at the ground level plus other improvements. It is situated on a total land area of 1,866 square meters.', 4, 14, 1, 14, 14, '', '36', '08', '', 'Mr Elliot Harding and Mrs Anita Harding', 0, '2018-02-21 14:42:59', '2018-02-21 14:42:59', 6, 6),
(701, '', 'The property is a high set 4 x bedroom single residential dwelling and a self contained 2x bedroom unit on the ground floor having an approximate gross floor area of 214.6 square meters plus other ancillary improvements.', 4, 13, 6, 6, 102, '1418c', '', '', '', 'Grace Kaupa', 0, '2018-02-21 14:54:37', '2018-02-21 14:54:37', 4, 4),
(702, '', 'This is a vacant and undeveloped land fully enclosed with cyclone wire security fencing.', 1, 1, 2, 20, 102, '926', '', '', '', 'Dae Won Trading Limited', 0, '2018-02-21 14:59:28', '2018-02-21 14:59:28', 4, 4),
(703, '', 'On the property is 7 blocks of residential buildings, storage shed and other improvements.', 4, 23, 11, 20, 102, '489', '', '', '', 'Dae Won Trading', 0, '2018-02-21 15:05:14', '2018-02-21 20:14:25', 4, 4),
(704, '', 'The property is 2 blocks of 16 rooms hotel accommodation, pokies shed and other improvements.', 2, 7, 1, 27, 102, '252', '', '', '', 'Dae Won Teading Limited', 0, '2018-02-21 15:12:16', '2018-02-21 15:12:16', 4, 4),
(705, '', 'The property is 7 blocks of 30 rooms hotel accommodation, 1x6 staff quarter, pokies parlour and other improvements.', 2, 7, 2, 20, 102, '', '7', '2,3,4 & 9', '', 'Poroman Pacific Limited', 0, '2018-02-21 15:18:09', '2018-02-21 15:18:09', 4, 4),
(706, '', 'On the property is a single level building comprises 2x2 bedroom executive units.', 4, 14, 1, 20, 44, '', '11', '6', '', 'Shangrilla Limited', 0, '2018-02-21 15:26:25', '2018-02-21 15:26:25', 4, 4),
(707, '', 'The property is a split level building comprises retail shop and 1x5 bedroom unit with a detached ground level building comprises storage shed.', 2, 4, 4, 20, 102, '', '22', '12', '', 'Shangrilla Limited', 0, '2018-02-21 15:32:38', '2018-02-21 15:32:38', 4, 4),
(708, '', 'The property is a two level building comprises 1x3 bedroom residence with 1x3 bedroom unit underneath.', 4, 13, 9, 20, 102, '', '11', '49', '', 'Shangrilla Limited', 0, '2018-02-21 15:36:34', '2018-02-21 15:36:34', 4, 4),
(709, '', 'The property is a two level building comprising 1x3 bedroom executive townhouse having a gross floor area of approximately 180 square meters and ancillary improvements.', 4, 14, 1, 22, 65, '', '201', '8', '', 'Dae Won Limited', 0, '2018-02-21 15:46:27', '2018-02-21 15:46:27', 4, 4),
(710, '', 'This is a two level building comprising 1x3 bedroom townhouse having an approximate gross floor area of 200 square meters plus other ancillary improvements.', 4, 14, 1, 22, 65, '', '439', '36', '', 'Dae Won Trading Limited', 0, '2018-02-21 15:56:44', '2018-02-21 15:56:44', 4, 4),
(711, '', 'The property is a four level building comprising 6x2 bedroom units with study room and ancillary improvements.', 4, 18, 1, 22, 107, '', '39', '9', '', 'Dae Won Trading Limited', 0, '2018-02-21 16:02:17', '2018-02-21 16:02:17', 4, 4),
(712, '', 'The property is a tri level building comprising 1x5 bedroom townhouse residence and ancillary improvements.', 4, 14, 1, 22, 65, '', '530', '7', '', 'D & D Holdings Limited', 0, '2018-02-21 16:08:35', '2018-02-21 16:08:35', 4, 4),
(713, '', 'A container examination complex having an approximate gross floor area of 3950 square meters complete with on-site services is being constructed on site. The complex will comprise a number of building .', 3, 5, 2, 22, 107, '2894', '', '', '', 'Ballimore No.39 Limited', 0, '2018-02-21 16:18:41', '2018-02-21 16:20:51', 4, 4),
(714, '', 'The property are two low set blocks of 3 x 2 bedroom units plus other improvements. It is situated on a total land area of 1, 100 square meters.', 4, 13, 1, 14, 20, '', '101', '06', '', 'Traisa Trading Pty Limited.', 0, '2018-02-21 16:43:47', '2018-02-21 16:43:47', 6, 6),
(715, '', 'the property is a two level multi-commercial complex building plus other improvements. Land Area:	1, 505 square meters.', 2, 4, 1, 14, 99, '', '38', '02', '', 'Watt Kil Kiddie.', 0, '2018-02-21 16:57:26', '2018-02-21 16:57:26', 6, 6),
(716, '', 'the property is a two level 2 x bedroom duplex and a split level 3 x bedroom duplex plus other improvements.  It is situated on a total land area of 900 square meters.', 4, 15, 1, 14, 20, '', '56', '17', '', 'Moses Trappe', 0, '2018-02-21 17:04:49', '2018-02-21 17:04:49', 6, 6),
(717, '', 'the property are 2 x residential blocks of 3 x 2 bedroom accommodation units plus other improvements. \nLand Areas:	Lot 10: - 546 square meters\n			Lot 11: - 546 square meters', 4, 13, 1, 14, 19, '', '58', '10&11', '', 'Herman and Martha Anep.', 0, '2018-02-21 17:16:38', '2018-02-21 17:16:38', 6, 6),
(718, '', 'the property is a commercial compound comprising of; a newly constructed supermarket mall, a bakery with admin offices, an attached 3 x bedroom staff accommodation, a workshop/storage shed, an attached office/storage building plus other improvements.\nLand Area:  4,047 square meters.', 2, 4, 4, 14, 33, '', '82', '4&5', '', 'Tipulu Trading Limited', 0, '2018-02-21 18:19:28', '2018-02-21 18:19:28', 6, 6),
(719, '', 'The property is a newly built split level 6 x 2 bedroom units plus other improvements. It is situated on a total land area of 1, 011 square meters.', 4, 17, 1, 14, 20, '', '106', '05', '', 'Pacific Construction Group Limited', 0, '2018-02-21 20:37:07', '2018-02-21 20:37:07', 6, 6),
(720, '', 'the property is a residential duplex building comprising of 3 x bedroom units plus other improvements. Land Area: 810 square meters.', 4, 15, 1, 14, 112, '', '168', '24', '', 'Jim Tapako', 0, '2018-02-21 20:45:28', '2018-02-21 20:45:28', 6, 6),
(721, '', 'The property are 2 x 2 level residential quadruplet buildings comprising of 8 x 3 bedroom units plus other improvements. It is situated on total land area of 809 square meters each allotment.', 4, 15, 1, 14, 112, '', '311', '04&5', '', 'Sape Sande Yapo', 0, '2018-02-21 20:54:41', '2018-02-21 20:54:41', 6, 6),
(722, '', 'The property is a two level multi-commercial shopping complex building plus other improvements.\nLand Area:	1, 280 square meters.', 2, 4, 1, 14, 99, '', '43', '12', '', 'Super Services Limited.', 0, '2018-02-21 21:04:20', '2018-02-21 21:04:20', 6, 6),
(723, '', 'The estate is a large area undeveloped and is generally a low lying parcel located towards the south-eastern end Goroka Township. It is uneven with slopes and flat lands and shares boundaries with developed and established state residential and commercial precincts. It is ready for use as a residential estate or with commercial developments. There is a ground-set residential accommodation under construction and is 80 per cent complete as at Date of Valuation.', 4, 1, 9, 6, 8, '1002', '', '', '', 'Nambawan Super Limited', 0, '2018-02-21 21:13:07', '2018-02-21 21:13:07', 6, 6),
(724, '', 'the property are a standalone 5 x bedroom residence and a home-office accommodation including all normal fixtures, fittings plus other improvements.\nIt is situated on a total land area of 1467 square meters.', 4, 14, 1, 14, 99, '', '03', '61', '', 'James Kenedy', 0, '2018-02-21 21:21:00', '2018-02-21 21:21:00', 6, 6),
(725, '', 'the property is a two level multi-commercial complex building plus other improvements. Land Area: 1, 505 square meters.', 2, 4, 1, 14, 99, '', '2', '38', '', 'Watt Kil Kiddie.', 0, '2018-02-21 21:42:53', '2018-02-21 21:42:53', 6, 6),
(726, '', 'The property is a residential complex building comprising of 2 units of 1 x bedroom, 2 units of 2 x bedrooms and a split level unit of 2 x bedrooms plus other improvements. It is situated on total land areas of 1, 133 square meters each allotment.', 4, 14, 1, 14, 14, '', '79', '22', '', 'Philip Kuk.', 0, '2018-02-21 21:49:23', '2018-02-21 21:49:23', 6, 6),
(727, '', 'The property are 2 x residential blocks of 3 x 2 bedroom accommodation units plus other improvements. Land Areas:	Lot 10: - 546 square meters\n			Lot 11: - 546 square meters', 4, 13, 1, 14, 19, '', '58', '10&11', '', 'Herman and Martha Anep.', 0, '2018-02-21 21:58:27', '2018-02-21 21:58:27', 6, 6),
(728, '', 'the property are two residential buildings; a high set stand-alone 1 x 5 bedrooms and a two level 2 x 3 bedroom duplex units plus other improvements. It is situated on a total land area of 1, 114 square meters.', 4, 15, 1, 14, 14, '', '41', '08', '', 'Traisa Trading Pty Limited', 0, '2018-02-22 13:16:26', '2018-02-22 13:16:26', 6, 6),
(729, '', 'the property is 1 x office building, 2 x 2 bedroom residence and a 3 x bedroom residence plus other improvements.  Land Area:   1, 500 square meters.', 2, 3, 4, 28, 102, '', 'A', '12', '', 'Nangamanga Limited.', 0, '2018-02-22 13:31:31', '2018-02-22 13:31:31', 6, 6),
(730, '', 'the property is a newly built two level   4 x 2 bedrooms apartment plus other improvements. It is situated on a total land area of 700 square meters.', 4, 14, 1, 14, 20, '', '108', '03', '', 'David Masanai and Juno Masanai', 0, '2018-02-22 15:09:19', '2018-02-22 15:09:19', 6, 6),
(731, '', 'The property is Medium cost 3 x bedroom residence plus other improvements.\nIt is situated on a total land area of 540 square meters.', 4, 13, 1, 14, 26, '', '188', '40', '', 'Kotera Joseph Tera', 0, '2018-02-22 15:17:04', '2018-02-22 15:17:04', 6, 6),
(732, '', 'The property is a ground level 3 x 2 bedroom units plus detached trade store and storage shed as well as other improvements. They are situated on an 800 square meters of residential allotment in City of Lae.', 4, 13, 1, 14, 112, '', '168', '19', '', 'Mark Erephan', 0, '2018-02-22 16:13:37', '2018-02-22 16:13:37', 6, 6),
(733, 'Unknown', 'The property is a low cost 3 x bedroom residence plus other improvements. It is situated on a total land area of 450 square meters.', 4, 13, 1, 14, 15, '', '244', '04', '', 'Maxwell Kababa', 0, '2018-02-22 16:21:42', '2018-03-18 19:24:52', 6, 6),
(734, '', 'The property is a proposed two level office building and the existing old style 3 x bedroom residence  plus other improvements.', 4, 14, 1, 14, 99, '', '02', '043', '', 'Mr. Eliza Gamale', 0, '2018-02-22 16:36:19', '2018-02-22 16:36:19', 6, 6),
(735, '', 'the property is a 2 level commercial building improved with commercial offices plus other improvements. \nLand Area:	4,140 square meters.', 2, 3, 4, 14, 99, '', '89', '14', '', 'Golden Phoenix Trading Limited.', 0, '2018-02-22 16:42:12', '2018-02-22 16:42:12', 6, 6),
(736, '', 'the property is a 2 level residential building with 4 x bedrooms plus other improvements. \nLand Area:	2,520 square meters.', 4, 13, 1, 14, 14, '', '41', '79', '', 'Hulala Tokome and Shirley Tokome', 0, '2018-02-22 16:49:53', '2018-02-22 16:49:53', 6, 6),
(737, '', 'the property is a residential duplex with 3 x bedrooms plus other improvements. Land Area:	546 square meters.', 4, 15, 1, 14, 22, '', '38', '92', '', 'Isidor Bugara', 0, '2018-02-22 16:56:54', '2018-02-22 16:56:54', 6, 6),
(738, '', 'the property is a standalone 1 x 3 bedroom residential building. \nLand Area:  513 square meters', 4, 13, 1, 14, 14, '', '270', '10', '', 'Telikom PNG Ltd.', 0, '2018-02-22 17:04:18', '2018-02-22 17:04:18', 6, 6),
(739, '', 'the property is a two level 3 x bedroom duplex and a detached 1 x room canteen plus other improvements. It is situated on a total land area of 841 square meters.', 4, 15, 1, 14, 41, '', '333', '118', '', 'Sidia Joel Pokopia.', 0, '2018-02-22 17:14:04', '2018-03-14 21:39:09', 6, 6),
(740, '', 'the property is a 3 bedroom residence plus other improvements. It is situated on a total land area of 546 square meters.', 4, 13, 1, 14, 19, '', '57', '24', '', 'Kali Ralewa & Ai Ralewa.', 0, '2018-02-22 18:01:51', '2018-02-22 18:01:51', 6, 6),
(741, '', 'the property is a residential compound of Nine (9) Townhouses comprising of two levels and three (3) bedrooms of which Six (6) of the Units are still under construction plus other improvements on site.\nLand Area:	1, 200 square meters.', 4, 23, 1, 14, 37, '', '130', '29', '', 'Highway Auto Electrical Limited.', 0, '2018-02-22 18:08:39', '2018-02-22 18:08:39', 6, 6),
(742, '', 'the property is a two level standalone 3 bedroom house plus other improvements.\nLand Area:	1, 366 square meters', 4, 13, 1, 14, 33, '', '07', '75', '', 'Clement & Lois Nakmai.', 0, '2018-02-22 18:17:40', '2018-02-22 18:17:40', 6, 6),
(743, '', 'the property are 4 x detached residential Units of 3 x bedrooms plus other improvements.\nLand Area:	546 square meters', 4, 13, 1, 14, 19, '', '58', '15', '', 'Robin Kari', 0, '2018-02-22 18:22:51', '2018-02-22 18:22:51', 6, 6),
(744, '', 'The property is a three (3) level commercial office building plus other improvements. Land Area: 645 square meters.', 2, 3, 4, 14, 33, '', '64', '45', '', 'Highway Auto Electrical Limited', 0, '2018-02-22 18:28:32', '2018-02-22 18:28:32', 6, 6),
(745, '', 'the property is a lofty warehouse improved with a 2 x level office plus other improvements. It is situated on a total land area of 3, 874 square meters.', 3, 8, 4, 14, 32, '', '34', '7&8', '', 'New Guinea Australia Line Limited.', 0, '2018-02-22 18:41:50', '2018-02-22 18:41:50', 6, 6),
(746, '', 'the property is a two level 3 x bedroom residence on the upper level and office Units on ground level plus other improvements.\nIt is situated on a total land area of 810 square meters.', 4, 13, 1, 14, 99, '', '168', '25', '', 'Kekam Limited.', 0, '2018-02-22 18:52:51', '2018-02-22 18:52:51', 6, 6),
(747, '', '4 bedrooms stand alone residence, approximately 89.65 square meters of low set  plus other minor improvements. It is situated on approximately 514 square meters of residential allotment in Lae City.', 4, 13, 1, 14, 37, '', '262', '04', '', 'Mrs. Anne Esira', 0, '2018-02-22 18:58:55', '2018-02-22 18:58:55', 6, 6),
(748, '', 'The property will be approximately 2,239 square meters of Commercial Shop/Office Complex on completion of construction. It is situated on a 776 square meters of commercial allotment in Goroka.', 2, 5, 4, 6, 8, '', '4', '14', '', 'Sek No. 35 Pty. Ltd.', 0, '2018-02-22 19:07:43', '2018-02-22 19:07:43', 6, 6),
(749, '', 'Commercial  Shop/Office Complex still under construction, approximately 1990.08 square meters of. It is situated on a total of 1,300 square meters of consolidated commercial allotments in Lae.', 2, 3, 4, 14, 14, '', '35', '37&40', '', 'Sek No. 35 Pty. Ltd.', 0, '2018-02-22 19:17:58', '2018-02-22 19:17:58', 6, 6),
(750, '', 'the property is a high set 3 x bedroom and a low set 2 x bedroom residence plus other improvements.\nLand Area:	 1, 556 square meters', 4, 13, 1, 14, 14, '', '41', '46', '', 'Lucien and Janet Ori.', 0, '2018-02-22 19:24:33', '2018-02-22 19:24:33', 6, 6),
(751, '', 'the property is a low set 3 x bedroom residence plus other improvements.\nLand Area:	811 square meters.', 4, 12, 1, 14, 112, '', '313', '02', '', 'Ivan Alfred and Lois Warren.', 0, '2018-02-22 19:39:10', '2018-02-22 19:39:10', 6, 6),
(752, '', '2 Level, 4 x 2 Bedrooms, high cost residential units plus other minor improvements. They are situated on 1312 square meters of residential allotment in top town, City of Lae.', 4, 13, 1, 14, 33, '', '69', '13', '', 'Mitchel Ltd', 0, '2018-02-22 20:41:26', '2018-02-22 20:41:26', 6, 6),
(753, '', 'The property is a Office, workshop, Barrack Shed Buildings & Staff Residence , approximately 911 square meters plus other associated improvements. The are situated on a total 4312 square meters of general industrial allotment in Goroka', 2, 3, 4, 6, 119, '', '21', '2 & 3', '', 'Prosec Security & Communications Limited', 0, '2018-02-22 20:55:51', '2018-02-22 20:55:51', 6, 6),
(754, '', 'This is an industrial property comprising workshop as well as Managers residence and other complementing improvements. Land Area: 2544 square meters.', 3, 8, 4, 20, 102, '', '12', '45', '', 'B & M Engineering Limited', 0, '2018-02-22 22:10:05', '2018-02-27 21:51:03', 6, 6),
(755, '', 'The property comprises of 2 x retail shops, restaurant, processing building transit unit, office and 4 bedroom residential building, shower, toilet, Lounge kitchen, laundry plus other improvements. Land area 1998 square meters.', 2, 5, 4, 14, 33, '', '03', '09', '', 'Hetadikaka Investment Limited', 0, '2018-02-23 13:14:39', '2018-02-23 13:14:39', 6, 6),
(756, '', 'The property comprises of a workshop/warehouse and office building plus other improvements.\nLand area: 6770 square meters', 3, 8, 4, 14, 17, '1039', '', '', '', 'HBS (PNG) Limited', 0, '2018-02-23 13:21:27', '2018-02-23 13:21:27', 6, 6),
(757, '', 'The property is a low set residential building comprising 3 x bedrooms, lounge kitchen and shower toilet plus other improvements. Land area: 540 square meters', 4, 13, 1, 14, 38, '', '117', '36', '', 'Traisa Trading Ltd', 0, '2018-02-23 14:56:42', '2018-02-23 14:56:42', 6, 6),
(758, '', 'This is a Property comprises of a warehouse/office workshop and residence plus other improvements. Land area 3900 square meters.', 3, 8, 4, 20, 102, '', '45', '17', '', 'B & M Engineering Ltd', 0, '2018-02-23 15:08:42', '2018-02-27 22:05:19', 6, 6),
(759, '', 'The property is vacant with only improvements of perimeter fencing and storm water drainage. Land area: 4000 square meters. Proposed development of the site is to comprise a commercial/industrial building comprising 2 level office/residential accommodations, open warehouse and 2 level warehouse plus other improvements', 1, 1, 10, 14, 24, '', '353', '19', '', 'Poh Siam Koh', 0, '2018-02-23 15:14:59', '2018-02-23 15:21:05', 6, 6),
(760, '', 'The property is a 2 level 4 x bedroom residential building with toilet, shower,lounge,kitchen,laundry plus other improvements. Land area: 35', 4, 13, 1, 16, 115, '', '7', '14', '', 'Avondale Investments Ltd', 0, '2018-02-23 15:35:41', '2018-02-23 15:35:41', 6, 6),
(761, '', 'Property are a retail shop with office accommodation and 2 x ground set freezer/chiller buildings plus other improvements.\nLand area: 1923 square meters Allotment 21\n                   886 Square meters Allotment 26\n                   589 square meters Allotment 27', 2, 5, 4, 16, 116, '', '27', '21, 26 & 27', '', 'G.Litz & Co Limited', 0, '2018-02-23 15:45:05', '2018-02-23 15:45:05', 6, 6),
(762, '', 'The property is a 2 level residential building comprising 1 x 2 plus 1 x 3 bedroom with lounge,kitchen,toilet,shower plus other improvements.Land area: 547 square meters.', 4, 13, 1, 14, 19, '', '62', '08', '', 'Mrs.Rachel Songan & Mr.Paul Songan', 0, '2018-02-23 15:51:43', '2018-02-23 15:51:43', 6, 6),
(763, '', 'The property is a high set 3 bedroom residential building with toilet,kitchen,lounge,shower,plus other improvements. Land area approximately 1233 square meters.', 4, 13, 1, 14, 14, '', '91', '09', '', 'Songli Soctine', 0, '2018-02-23 15:51:43', '2018-02-23 15:59:51', 6, 6),
(764, '', 'The property is a vacant block fully fenced and ideally located at the foot hiils of the adjacent range. It has good views and developments potential for business or industrial purposes. It is leveled and terraced. it is part of the rising slope and is ready for use as hardstand or other business/Light industrial developments.', 2, 8, 4, 14, 100, '950 & 951', '', '', '', 'HBS Machinery Limited', 0, '2018-02-23 16:04:38', '2018-02-23 16:13:10', 6, 6),
(765, '', 'The property is a 2 x level, 2 x bedroom quadruplet building plus other improvements.\nLand Area: 600 square meters', 4, 15, 1, 14, 19, '', '61', '10', '', 'Paul Reynold Kilembe & Joanne Tasip Kilembe', 0, '2018-02-23 16:18:31', '2018-02-27 21:37:28', 6, 6),
(766, '', 'The property is a fully fenced vacant block and is generally a low lying parcel located towards the western end main highlands highway. It is relatively level and is situated a few meters away from the main Highway among other portions recently developed. It is ready for use as hardstand or other business/light industrial development.', 1, 1, 4, 14, 101, '544', '', '', '', 'Awilunga Pty Ltd', 0, '2018-02-25 13:04:59', '2018-02-25 13:04:59', 6, 6),
(767, '', 'The property is a compound 2 x 3 Bedroom Split level Manager’s Residences with associated improvements. They are situated on 1,170 square meters of land portion along Takubar Residential Sea View area.', 4, 14, 1, 12, 13, '', '64', '40', '', 'Nivani Limited', 0, '2018-02-25 13:12:17', '2018-02-25 13:12:17', 6, 6),
(768, '', 'Warehouse building with mezzanine floor, and staff quarters plus other improvements. It is situated on 0.442 hectares of industrial allotment, Takubar, Township of Kokopo.', 3, 8, 4, 12, 13, '', '89', '06', '', 'Nivani Limited', 0, '2018-02-25 13:16:40', '2018-02-25 13:16:40', 6, 6),
(769, '', 'This yard comprises the main office, lofty warehouses with offices, workshops, sheds and residences. They are situated on 2.09 hectares of industrial allotment, Takubar, Township of Kokopo.', 3, 8, 4, 12, 13, '', '72', '06', '', 'Nivani Limited', 0, '2018-02-25 13:21:30', '2018-02-25 13:21:30', 6, 6),
(770, '', 'Nivani Joinery Yard comprised of Joinery Sheds, Workshops, Showroom and Killen Dryers. They are situated on 0.8240 hectares of industrial allotment, Takubar, Township of Kokopo.', 3, 8, 4, 12, 13, '', '73', '06', '', 'Nivani Limited', 0, '2018-02-25 13:24:33', '2018-02-25 13:24:33', 6, 6),
(771, '', 'The property comprises Staff Compound # 1 comprising of Staff houses, quarters, flats and makeshift houses. They are situated on 1.125 hectares of industrial allotment, Takubar, Township of Kokopo.', 3, 20, 4, 12, 13, '', '74', '19', '', 'Nivani Ltd', 0, '2018-02-25 13:29:00', '2018-02-25 13:29:00', 6, 6),
(772, '', 'The property is a Staff Compound # 2 comprises of 4 x 2 bedroom duplex. They are situated on 0.5 hectares of industrial allotment, Takubar, Township of Kokopo.', 3, 15, 4, 12, 13, '', '74', '16', '', 'Nivani Limited', 0, '2018-02-25 13:33:58', '2018-02-25 13:33:58', 6, 6),
(773, '', 'The property is a Sand Glass Yard comprises a staff quarter and hardstand area. They are situated on 0.665 hectares of land portion in Takubar, Township of Kokopo.', 3, 20, 4, 12, 13, '', '75', '19,20 & 21', '', 'Nivani Ltd', 0, '2018-02-25 13:37:50', '2018-02-25 13:37:50', 6, 6),
(774, '', 'The Edge is a morden prestige six level waterfront residential apartment complex having an appropriate gross floor area of 16440 square meters with a total of 63 residential apartments and two retail tenancies. The building comprises a ground level café, hair salon and car parking for 126 vehicles with five levels of residential accommodation above.', 2, 6, 4, 22, 107, '', '44', '34', '', 'Harbour City Developments Limited', 0, '2018-02-28 21:11:05', '2018-03-15 14:24:07', 4, 14),
(775, '', 'On the property is a split level building comprising 1x1 bedroom, 1x2 bedroom and 2x4 bedroom units and a detached two level building comprising 1x2 bedroom and 1 x 3 bedroom units and ancillary improvements.', 4, 13, 1, 22, 71, '', '20', '33', '', 'Unawos Investment Limited', 0, '2018-02-28 21:21:52', '2018-03-15 14:26:51', 4, 14),
(776, '', 'On the property is a proposed single level high set building comprises 1x3 bedroom residence in a gated compound.', 4, 13, 1, 22, 65, '', '230', '106', '', 'National Housing Estate Limited', 0, '2018-02-28 21:30:56', '2018-03-15 14:57:18', 4, 14),
(777, '', 'On the property is a proposed single level high set building comprises 1x3 bedroom residence in a gated compound.', 4, 13, 1, 22, 65, '', '230', '105', '', 'National Housing Estate Limited', 0, '2018-02-28 21:38:41', '2018-03-15 14:56:56', 4, 14),
(778, '', 'The property is a substantially completed two level residential building and on completion will comprise 8x2 bedroom units.', 4, 17, 1, 22, 57, '', '446', '16', '', 'Emem Limited', 0, '2018-02-28 21:46:14', '2018-03-15 14:36:49', 4, 14),
(779, '', 'Telikom Boroko sales office comprises reception, customer service area, multiple enclosed offices, board rooms, warehouse, male/female toilets. Off street car parking. Office is in Rundown condition.', 2, 3, 4, 22, 71, '', '15', '5&6', '', 'Post PNG Limited', 0, '2018-03-01 14:57:55', '2018-03-01 14:57:55', 4, 4),
(780, 'Garden City', '3 level office complex with retail outlets, and one level of residence comprising 3 & 2 bedroom apartments with undercover parking.', 2, 5, 4, 22, 71, '', '110', '4', '', 'Ray White', 0, '2018-03-01 15:05:43', '2018-03-01 15:05:43', 4, 4),
(781, 'Malangan Haus', '3 level office with retail on ground level, off street car parking. Old building caters caters for SME business', 2, 3, 4, 22, 71, '', '15', '8', '', 'Ray White', 0, '2018-03-01 15:31:47', '2018-03-01 15:31:47', 4, 4),
(782, '', 'Two level office complex with residential units. Fully renovated complex.', 2, 5, 4, 22, 65, '', '35', '36', '', 'Yakka Enterptise Limited', 1, '2018-03-01 15:38:30', '2018-03-01 15:42:01', 4, 4),
(783, '', 'Two level office complex with residential units. Fully renovated complex.', 2, 5, 4, 22, 65, '', '35', '36', '', 'Yakka Enterptise Limited', 0, '2018-03-01 15:38:36', '2018-03-01 15:38:36', 4, 4),
(784, '', '3 level office complex with a total floor area of 1980 square meters and a Land area of 2120 square meters.', 2, 3, 4, 22, 65, '', '225', '05', '', 'GB Contractors Limited.', 0, '2018-03-01 15:46:15', '2018-03-01 15:46:15', 4, 4),
(785, 'Turumu Haus', 'Brand new office complex with secure parking and back up facilities.', 2, 3, 4, 22, 62, '', '', '', '', 'Turumu Investments Limited', 0, '2018-03-01 15:53:04', '2018-03-01 15:53:04', 4, 4),
(786, 'Sambra Haus', 'Two level office complex with secure parking', 2, 3, 4, 22, 65, '', '354', '02', '', 'Grand Columbia Limited', 0, '2018-03-01 15:58:15', '2018-03-01 15:58:15', 4, 4),
(787, 'Defence Haus', '8 level office with retail outlet on ground level with undercover parking.', 2, 3, 4, 22, 1, '', '', '', '', 'Comrade Trustee', 0, '2018-03-01 16:03:50', '2018-03-01 16:35:14', 4, 4),
(788, 'Eagle Street, Cassowary Road', '2 level residence building comprising 3 x bedroom flat at the top and 2 x bedroom flat on ground floor with gym and pool.', 4, 15, 1, 14, 19, '', '92', '62', '', 'Niugin Electrical Limited', 0, '2018-03-01 16:30:29', '2018-03-01 16:30:29', 6, 6),
(789, '', 'The property comprises a substantially completed two level commercial shop building and on the completion will comprise supermarket, offices and amenities occupying a gross floor area of approximately 1094 square meters over two levels with interior stairways.', 2, 5, 2, 20, 102, '', '22', '17 & 18', '', 'Namon Trading Limited.', 0, '2018-03-01 19:42:54', '2018-03-15 14:49:14', 4, 14),
(790, '', 'The property is a proposed single level high set building comprises 1 x 3 bedroom residence in a gated compound.', 4, 13, 1, 22, 65, '', '230', '124', '', 'National Housing Estate Limited', 0, '2018-03-01 19:58:08', '2018-03-15 14:59:32', 4, 14),
(791, '', 'The property is a proposed single level high set building comprises 1 x 3 bedroom residence in a gated compound.', 4, 13, 1, 22, 65, '', '230', '104', '', 'National Housing Estate Limited', 0, '2018-03-01 20:12:38', '2018-03-15 15:03:00', 4, 14),
(792, '', 'Two level building comprises trade store/residence of masonry block and weatherboard construction and having an approximate gross floor area of 1000 square meters.', 2, 4, 4, 22, 65, '', '29', '8', '', 'Nallim Limited', 0, '2018-03-01 20:49:20', '2018-03-15 16:13:34', 4, 14),
(793, '', 'Property used to be the Bridgestone tyres comprising tyre repair workshop and warehouse, two level building comprises office and staff residential units and ancillary buildings. Part of which was burnt and demolished.', 2, 5, 4, 22, 65, '', '52', '38 & 39', '', 'Bridgestone Tyres (PNG) Limited', 0, '2018-03-01 21:17:07', '2018-03-15 16:14:35', 4, 14),
(794, '', 'Two adjoining warehouse buildings comprising offices, general storage and mezzanine storage.', 3, 8, 4, 22, 65, '', '209', '01', '', 'D.B Holdings Limited', 0, '2018-03-01 21:31:04', '2018-03-15 16:15:21', 4, 14),
(795, '', 'This is a warehouse shed with office at frontage. it is not in use and need extensive renovation.', 3, 8, 4, 22, 62, '', '58', '13', '', 'Chemcare Group Limited.', 0, '2018-03-01 21:42:06', '2018-03-15 16:16:56', 4, 14),
(796, '', 'An executive three bedroom low set house in the Eriku Area. Has a 2 bedroom carport, in ground pool requiring work on a triangular allotment.', 4, 14, 1, 14, 14, '', '41', '81', '', 'Neil Leahy - Sig No 19 Ltd', 0, '2018-03-04 14:51:50', '2018-03-04 14:51:50', 10, 10),
(797, '', 'Standalone Residence', 4, 14, 1, 14, 14, '', '41', '41', '', 'Unknown', 0, '2018-03-04 15:09:12', '2018-03-04 15:09:12', 10, 10),
(798, '', 'A property with a 2 bedroom and 3 bedroom Residential Flats', 4, 13, 1, 14, 112, '', '74', '11', '', 'Unknown', 0, '2018-03-04 15:16:56', '2018-03-04 15:16:56', 10, 10),
(799, '', 'The property is a split level building comprises 1x 4 bedroom  residence with a detached canteen.', 4, 13, 1, 22, 65, '', '295', '02', '', 'National Housing Estate Limited', 0, '2018-03-04 15:29:43', '2018-03-20 14:24:28', 4, 14),
(800, '', 'Vacant Land', 4, 1, 1, 14, 14, '', '41', '32', '', 'Unknown', 0, '2018-03-04 15:32:28', '2018-03-04 15:32:28', 10, 10),
(801, '', 'The property has been treated as vacant for this assessment.', 1, 1, 4, 22, 65, '', '35', '55', '', 'Matakau Development Limited.', 0, '2018-03-04 15:43:59', '2018-03-15 15:12:42', 4, 14),
(802, '', 'The property is a single level building comprises 1x3 bedroom residence and detached bedsitter.', 4, 13, 1, 22, 71, '', '42', '47', '', 'Martha Anep', 0, '2018-03-04 15:59:25', '2018-03-15 15:15:59', 4, 14),
(803, '', 'The property is a split level 6x2 bedroom units and other improvements.', 4, 17, 1, 22, 62, '', '88', '08', '', 'Wokman Teleoks Limited.', 1, '2018-03-04 16:10:16', '2018-03-04 16:24:19', 4, 4),
(804, '', 'The property is a single level building comprises 1x3 bedroom residence and detached bedsitter.', 4, 13, 1, 22, 62, '', '88', '08', '', 'Wokman Teleoks', 1, '2018-03-04 16:15:22', '2018-03-04 16:15:56', 4, 4),
(805, '', 'The property is a split level building comprises 2x6 bedroom unit and other improvements.', 4, 13, 1, 22, 62, '', '88', '08', '', 'Wokman Teleoks Limited', 0, '2018-03-04 16:15:50', '2018-03-15 15:21:36', 4, 14),
(806, '', 'The property is 2 x single level building each comprises 1x1 bedroom unit, 2x2 bedroom units and 2x3 bedroom units and a detached canteen.', 4, 17, 1, 22, 65, '', '269', '10 & 11', '', 'Mobile City Rentals Limited', 0, '2018-03-04 16:39:48', '2018-03-15 15:25:54', 4, 14),
(807, '', 'On the property is a split level building comprises 2x3 bedroom units, 1x self contained unit with 1x5 bedroom unit underneath and a detached two level building comprises 2x self contained units and laundry and ancillary improvements.', 4, 13, 1, 22, 65, '', '146', '07', '', 'Mobile City Rentals Limited', 0, '2018-03-04 16:49:46', '2018-03-15 15:30:00', 4, 14),
(808, '', 'on the property is a split level building comprises 1x3 bedroom residence with 1x3 bedroom unit underneath and a attached tri level building comprises 1x3 bedroom and 1x2 bedroom units, and ancillary improvements.', 4, 13, 1, 22, 65, '', '470', '42', '', 'Mobile City Rentals Limited', 0, '2018-03-04 16:58:17', '2018-03-15 15:36:52', 4, 14),
(809, '', 'On the property is 2 x hotel accommodation buildings, a conference building and a residence plus other complementary improvements.', 2, 7, 6, 20, 102, '3106C', '', '', '', 'Woodstar Builders Limited', 0, '2018-03-04 17:11:32', '2018-03-15 15:40:05', 4, 14),
(810, 'Monian Tower', 'This is a 11 floors office space building with 1 level undercover car parking.', 2, 6, 4, 22, 1, '', '', '', '', 'Uknown', 0, '2018-03-06 17:13:26', '2018-03-06 17:13:26', 4, 4),
(811, '', 'This is a brand new office complex with restaurant, coffee shop, bar and gym.', 2, 5, 4, 22, 1, '', '', '', '', 'Uknown', 0, '2018-03-06 17:19:11', '2018-03-06 17:19:11', 4, 4),
(812, '', 'The property is known as the Institute of Banking and Business Management which comprises office complex, training centre with accommodation, 6x2 bedroom executive units and 4x2 bedroom staff units.', 2, 5, 4, 22, 1, '', '29', '13', '', 'Uknown', 0, '2018-03-06 17:25:48', '2018-03-06 17:25:48', 4, 4),
(813, '', 'The property is a warehouse with a gross floor area of approximately 500 square meters.', 3, 8, 2, 22, 62, '', '60', '3', '', 'Uknown', 0, '2018-03-06 17:35:03', '2018-03-06 17:35:03', 4, 4),
(814, '', 'On the property is two run down office blocks in central location.', 2, 3, 4, 22, 62, '', '', '', '', 'Uknown', 0, '2018-03-06 17:51:20', '2018-03-06 17:51:20', 4, 4),
(815, '', 'This is a brand new warehouse comprising three separate warehouse bays with mezzanine floor that can be converted to office space.', 3, 8, 4, 22, 62, '', '55', '03', '', 'Uknown', 0, '2018-03-06 17:56:18', '2018-03-06 17:56:18', 4, 4),
(816, '', 'The property is a three level office space building.', 2, 3, 4, 22, 62, '', '496', '17', '', 'Uknown', 0, '2018-03-06 18:00:42', '2018-03-06 18:00:42', 4, 4),
(817, 'Koitachi House', 'Property is a three level office space building.', 2, 3, 4, 22, 62, '', '', '', '', 'Uknown', 0, '2018-03-06 18:09:41', '2018-03-06 18:09:41', 4, 4),
(818, '', 'The property is a good quality Morden office space building.', 2, 3, 4, 22, 65, '', '', '', '', 'Uknown', 0, '2018-03-06 18:15:13', '2018-03-06 18:15:13', 4, 4),
(819, '', 'this is a three level office building.', 2, 3, 2, 22, 65, '', '', '', '', 'Uknown', 0, '2018-03-06 18:21:55', '2018-03-06 18:22:16', 4, 4),
(820, 'Fincorp Haus', 'This is an office complex with a net Lettable floor area of 5, 821 square meters currently leased to the Independent state of Papua New Guinea.', 2, 3, 2, 22, 65, '', '278', '30', '', 'Uknown', 0, '2018-03-06 18:30:16', '2018-03-06 18:30:16', 4, 4),
(821, '', 'This is a quality office complex of two level office space currently being renovated and leased. About 90% of the building is lease to the PNG Fire Department and 10% being leased to National Youth Development.', 2, 3, 2, 22, 65, '', '406', '31', '', 'Uknown', 0, '2018-03-06 18:37:41', '2018-03-06 18:37:41', 4, 4),
(822, '', 'Five blocks of two level masonry block and metal deck clad retail shopping complex.', 2, 4, 4, 22, 65, '', '211', '1, 3, 4 & 5', '', 'Uknown', 0, '2018-03-06 21:05:46', '2018-03-15 16:20:23', 4, 14),
(823, '', 'Two level building comprises trade-store, ground level building comprises office and pokies parlour and ancillary buildings.', 2, 4, 2, 22, 80, '', '06', '26', '', 'Uknown', 0, '2018-03-06 21:24:21', '2018-03-15 16:22:17', 4, 14),
(824, '', 'Two level masonry block office building.', 2, 3, 4, 22, 107, '', '04', '03', '', 'Nasfund', 0, '2018-03-06 21:30:28', '2018-03-15 16:22:40', 4, 14),
(825, '', 'This is a two level office/showroom with detached storage shed in a securely fenced premises and specious storage.', 2, 3, 4, 22, 62, '', '61', '01', '', 'Hourani Diesel Limited.', 0, '2018-03-06 21:40:37', '2018-03-15 16:23:22', 4, 14),
(826, '', 'The property comprises three adjoining blocks improved with two lofty warehouse sheds and three blocks of two level residence buildings with offices with concrete paved yard with specious hardstand/parking and securely fenced with trimdek iron fenced premises.', 2, 5, 4, 22, 62, '', '53', '3, 4, & 5', '', 'J.D Hayes Limited.', 1, '2018-03-06 21:51:28', '2018-03-06 21:52:46', 4, 4),
(827, '', 'The property comprises three adjoining blocks improved with two lofty warehouse sheds and three blocks of two level residence buildings with offices with concrete paved yard with specious hardstand/parking and securely fenced with trimdek iron fenced premises.', 2, 5, 4, 22, 62, '', '53', '3, 4, & 5', '', 'J.D Hayes Limited.', 1, '2018-03-06 21:51:38', '2018-03-06 21:52:48', 4, 4),
(828, '', 'The property comprises three adjoining blocks improved with two lofty warehouse sheds and three blocks of two level residence buildings with offices with concrete paved yard with specious hardstand/parking and securely fenced with trimdek iron fenced premises.', 2, 5, 4, 22, 62, '', '53', '3, 4, & 5', '', 'J.D Hayes Limited.', 1, '2018-03-06 21:51:54', '2018-03-06 21:52:49', 4, 4),
(829, '', 'The property comprises three adjoining blocks improved with two lofty warehouse sheds and three blocks of two level residence buildings with offices with concrete paved yard with specious hardstand/parking and securely fenced with trimdek iron fenced premises.', 2, 5, 4, 22, 62, '', '53', '3, 4, & 5', '', 'J.D Hayes Limited.', 0, '2018-03-06 21:52:02', '2018-03-15 16:24:22', 4, 14),
(830, '', 'The property is a warehouse building with mezzanine offices and storage as well as staff accommodation.', 2, 5, 2, 22, 62, '', '38', '25', '', 'Ballimore No.27 Limited', 0, '2018-03-07 19:01:31', '2018-03-15 16:25:08', 4, 14),
(831, '', 'The property is a warehouse building with mezzanine offices and storage.', 3, 8, 4, 22, 62, '', '451', '15', '', 'K. K Kingston Limited', 0, '2018-03-07 19:08:11', '2018-03-15 16:26:01', 4, 14),
(832, 'Mutual Rumana', 'This a semi modern four level commercial office building.', 2, 3, 4, 22, 65, '', '405', '12 & 13', '', 'Uknown', 0, '2018-03-07 21:06:13', '2018-03-15 16:27:04', 4, 14),
(833, '', 'The property is a ground level building comprising retail shop.', 2, 4, 4, 20, 102, '', '22', '04', '', 'Namon Trading Limited', 0, '2018-03-08 19:11:47', '2018-03-15 15:43:45', 4, 14),
(834, 'Consort Voco Point Wharf', 'Warehouse rental assessment. Part of the shed. Area 1050 sq.m approx. and concrete hardstand 210 sq.m approx. Includes water, power, security.', 3, 8, 9, 14, 102, '', '27', '40', '', 'Consort Express Lines', 0, '2018-03-14 17:52:04', '2018-03-14 17:52:04', 10, 10),
(835, 'Unknown', 'Property is a low set run-down residential house with a detached 2 level run-down dwelling plus other improvements. It is situated on a total land area of 2000 square meters', 4, 13, 1, 16, 115, '', '07', '01', '', 'ENFI (PNG)CO.Limited', 0, '2018-03-18 14:44:13', '2018-03-18 14:44:13', 6, 6),
(836, 'Unknown', 'Property is a vacant block fully fenced and ideally located at the corner of Regina Avenue and corallta street. It is fully serviced with approximately 1.8 meters perimeter trim-deck fencing with proper road access.', 4, 1, 1, 16, 115, '', '06', '01', '', 'ENFI (PNG) CO. Limited', 0, '2018-03-18 14:55:50', '2018-03-18 14:55:50', 6, 6),
(837, 'N/A', 'The property is a vacant block of approximately 2580m2.', 1, 1, 9, 16, 42, '', '06', '01', '', 'OFFICE OF SHERRIF', 0, '2018-03-18 15:16:11', '2018-03-18 15:43:32', 6, 6),
(838, 'N/A', 'Land with two warehouses. Volume 6 Folio 221', 3, 8, 4, 14, 99, '', '88', '15', '', 'K.K.KINGSTON', 0, '2018-03-18 15:35:44', '2018-03-18 15:43:00', 6, 6),
(839, 'Unknown', 'Property is approximately land area of 2000 square meter with rundown dwelling,Vol.22 Folio 10', 4, 12, 1, 16, 115, '', '07', '01', '', 'SHERRIF', 0, '2018-03-18 15:51:38', '2018-03-18 15:51:38', 6, 6),
(840, 'yuio', 'The property is an extensive dockyard complex.', 3, 5, 4, 22, 107, '3359', '', '', '678', 'Ballimore No.39 Limited', 0, '2018-03-20 14:42:38', '2018-03-28 19:47:50', 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `property_cities`
--

CREATE TABLE `property_cities` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `property_cities`
--

INSERT INTO `property_cities` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Alotau', '2017-10-09 09:19:38', '2017-10-09 09:19:38'),
(2, 'Banz', '2017-10-09 09:19:38', '2017-10-09 09:19:38'),
(3, 'Bulolo', '2017-10-09 09:19:38', '2017-10-09 09:19:38'),
(4, 'Daru', '2017-10-09 09:19:38', '2017-10-09 09:19:38'),
(5, 'Finschhafen', '2017-10-09 09:19:38', '2017-10-09 09:19:38'),
(6, 'Goroka', '2017-10-09 09:19:38', '2017-10-09 09:19:38'),
(7, 'Kainantu', '2017-10-09 09:19:38', '2017-10-09 09:19:38'),
(8, 'Kavieng', '2017-10-09 09:19:38', '2017-10-09 09:19:38'),
(9, 'Kerema', '2017-10-09 09:19:38', '2017-10-09 09:19:38'),
(10, 'Kimbe', '2017-10-09 09:19:38', '2017-10-09 09:19:38'),
(11, 'Kiunga', '2017-10-09 09:19:38', '2017-10-09 09:19:38'),
(12, 'Kokopo', '2017-10-09 09:19:38', '2017-10-09 09:19:38'),
(13, 'Kundiawa', '2017-10-09 09:19:38', '2017-10-09 09:19:38'),
(14, 'Lae', '2017-10-09 09:19:38', '2017-10-09 09:19:38'),
(15, 'Lorengau', '2017-10-09 09:19:38', '2017-10-09 09:19:38'),
(16, 'Madang', '2017-10-09 09:19:38', '2017-10-09 09:19:38'),
(17, 'Markham Valley', '2017-10-09 09:19:38', '2017-10-09 09:19:38'),
(18, 'Mendi', '2017-10-09 09:19:38', '2017-10-09 09:19:38'),
(19, 'Mine', '2017-10-09 09:19:38', '2017-10-09 09:19:38'),
(20, 'Mt Hagen', '2017-10-09 09:19:38', '2017-10-09 09:19:38'),
(21, 'Popondetta', '2017-10-09 09:19:38', '2017-10-09 09:19:38'),
(22, 'Port Moresby', '2017-10-09 09:19:38', '2017-10-09 09:19:38'),
(23, 'Rabaul', '2017-10-09 09:19:38', '2017-10-09 09:19:38'),
(24, 'Ramu', '2017-10-09 09:19:38', '2017-10-09 09:19:38'),
(25, 'Rural', '2017-10-09 09:19:38', '2017-10-09 09:19:38'),
(26, 'Vanimo', '2017-10-09 09:19:38', '2017-10-09 09:19:38'),
(27, 'Wabag', '2017-10-09 09:19:38', '2017-10-09 09:19:38'),
(28, 'Wau', '2017-10-09 09:19:38', '2017-10-09 09:19:38'),
(29, 'Tari', '2017-10-09 09:19:38', '2017-10-09 09:19:38'),
(30, 'Waghi Valley', '2017-10-09 09:19:38', '2017-10-09 09:19:38'),
(31, 'Wewak', '2017-10-09 09:19:38', '2017-10-09 09:19:38'),
(32, 'Other', '2017-10-09 09:19:38', '2017-10-09 09:19:38'),
(33, 'Buka', '2017-12-05 06:29:16', '2017-12-05 06:29:16'),
(34, 'Bialla', '2017-12-05 06:29:35', '2017-12-05 06:29:35');

-- --------------------------------------------------------

--
-- Table structure for table `property_classes`
--

CREATE TABLE `property_classes` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `property_classes`
--

INSERT INTO `property_classes` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Vacant Land – Urban', '2017-10-09 09:19:38', '2017-10-09 09:19:38'),
(2, 'Vacant Land - Rural', '2017-10-09 09:19:38', '2017-10-09 09:19:38'),
(3, 'Commercial – Offices', '2017-10-09 09:19:38', '2017-10-09 09:19:38'),
(4, 'Commercial – Retail', '2017-10-09 09:19:38', '2017-10-09 09:19:38'),
(5, 'Commercial – Mixed Use', '2017-10-09 09:19:38', '2017-10-09 09:19:38'),
(6, 'Commercial – High Rise', '2017-10-09 09:19:38', '2017-10-09 09:19:38'),
(7, 'Commercial - Hotel/Guest House', '2017-10-09 09:19:38', '2017-10-09 09:19:38'),
(8, 'Industrial – Warehousing', '2017-10-09 09:19:38', '2017-10-09 09:19:38'),
(9, 'Industrial – Manufacturing', '2017-10-09 09:19:38', '2017-10-09 09:19:38'),
(10, 'Industrial - Retail', '2017-10-09 09:19:38', '2017-10-09 09:19:38'),
(11, 'Industrial - Wholesale', '2017-10-09 09:19:38', '2017-10-09 09:19:38'),
(12, 'Residential – House Low Standard', '2017-10-09 09:19:38', '2017-12-03 05:13:10'),
(13, 'Residential – House Medium Standard', '2017-10-09 09:19:38', '2017-12-03 05:13:28'),
(14, 'Residential – House Executive', '2017-10-09 09:19:38', '2017-12-03 05:12:30'),
(15, 'Residential – Duplex''s', '2017-10-09 09:19:38', '2017-12-03 05:06:55'),
(16, 'Residential – Flats 3 - 5', '2017-10-09 09:19:38', '2017-12-03 05:07:37'),
(17, 'Residential – Units Townhouse', '2017-10-09 09:19:38', '2017-10-09 09:19:38'),
(18, 'Residential – Units High Rise', '2017-10-09 09:19:38', '2017-10-09 09:19:38'),
(19, 'Agriculture', '2017-10-09 09:19:38', '2017-12-01 06:21:36'),
(20, 'Other', '2017-10-09 09:19:38', '2017-10-09 09:19:38'),
(22, 'Residential - Flats 6 or more', '2017-12-03 05:08:50', '2017-12-03 05:08:50'),
(23, 'Residential - Compound (Multiple Structures)', '2018-01-14 09:25:19', '2018-01-14 09:25:19');

-- --------------------------------------------------------

--
-- Table structure for table `property_lease_types`
--

CREATE TABLE `property_lease_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `property_lease_types`
--

INSERT INTO `property_lease_types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Residential', '2017-10-09 09:19:38', '2017-10-09 09:19:38'),
(2, 'Commercial', '2017-10-09 09:19:38', '2017-10-09 09:19:38'),
(3, 'Industrial', '2017-10-09 09:19:38', '2017-10-09 09:19:38'),
(4, 'Business', '2017-10-09 09:19:38', '2017-10-09 09:19:38'),
(5, 'Agricultural', '2017-10-09 09:19:38', '2017-10-09 09:19:38'),
(6, 'SABL', '2017-10-09 09:19:38', '2017-10-09 09:19:38'),
(7, 'ILG', '2017-10-09 09:19:38', '2017-10-09 09:19:38'),
(8, 'Traditional', '2017-10-09 09:19:38', '2017-10-09 09:19:38'),
(9, 'Other', '2017-10-09 09:19:38', '2017-10-09 09:19:38'),
(10, 'Free Hold', '2017-10-09 09:19:38', '2017-10-09 09:19:38'),
(11, 'Special Puposes', '2017-12-03 05:15:45', '2017-12-03 05:15:45'),
(12, 'Institutional', '2017-12-03 05:16:01', '2017-12-03 05:16:01');

-- --------------------------------------------------------

--
-- Table structure for table `property_suburbs`
--

CREATE TABLE `property_suburbs` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `city_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `property_suburbs`
--

INSERT INTO `property_suburbs` (`id`, `name`, `city_id`, `created_at`, `updated_at`) VALUES
(1, 'CBD POM', 22, '2017-10-09 09:19:38', '2017-12-03 05:21:54'),
(2, 'Goilani', 1, '2017-10-09 09:19:38', '2017-10-09 09:19:38'),
(3, 'Goilani Heights', 1, '2017-10-09 09:19:38', '2017-10-09 09:19:38'),
(4, 'Koiabule', 1, '2017-10-09 09:19:38', '2017-10-09 09:19:38'),
(5, 'Middle Town', 1, '2017-10-09 09:19:38', '2017-10-09 09:19:38'),
(6, 'Ravens Estate', 1, '2017-10-09 09:19:38', '2017-10-09 09:19:38'),
(7, 'Top Town', 1, '2017-10-09 09:19:38', '2017-10-09 09:19:38'),
(8, 'North Goroka', 6, '2017-10-09 09:19:38', '2017-10-09 09:19:38'),
(9, 'West Goroka', 6, '2017-10-09 09:19:38', '2017-10-09 09:19:38'),
(10, 'Airstrip Area', 6, '2017-10-09 09:19:38', '2017-10-09 09:19:38'),
(11, 'Kenabot', 12, '2017-10-09 09:19:38', '2017-10-09 09:19:38'),
(12, 'Vunapope', 12, '2017-10-09 09:19:38', '2017-10-09 09:19:38'),
(13, 'Takubar', 12, '2017-10-09 09:19:38', '2017-10-09 09:19:38'),
(14, 'Eriku', 14, '2017-10-09 09:19:38', '2017-10-09 09:19:38'),
(15, 'Taraka East', 14, '2017-10-09 09:19:38', '2017-10-09 09:19:38'),
(16, 'Taraka West', 14, '2017-10-09 09:19:38', '2017-10-09 09:19:38'),
(17, 'Miles', 14, '2017-10-09 09:19:38', '2017-10-09 09:19:38'),
(18, 'Bugandi', 14, '2017-10-09 09:19:38', '2017-10-09 09:19:38'),
(19, 'Chinatown', 14, '2017-10-09 09:19:38', '2017-12-03 05:21:30'),
(20, 'Birdsville', 14, '2017-10-09 09:19:38', '2017-10-09 09:19:38'),
(21, 'Flowerville', 14, '2017-10-09 09:19:38', '2017-10-09 09:19:38'),
(22, 'Papuan Compound', 14, '2017-10-09 09:19:38', '2017-10-09 09:19:38'),
(23, 'Hunter', 14, '2017-10-09 09:19:38', '2017-10-09 09:19:38'),
(24, 'Malahang', 14, '2017-10-09 09:19:38', '2017-10-09 09:19:38'),
(25, 'Unitech', 14, '2017-10-09 09:19:38', '2017-10-09 09:19:38'),
(26, 'Omili', 14, '2017-10-09 09:19:38', '2017-10-09 09:19:38'),
(27, 'Voco Point', 14, '2017-10-09 09:19:38', '2017-10-09 09:19:38'),
(28, 'Butibum', 14, '2017-10-09 09:19:38', '2017-10-09 09:19:38'),
(29, 'Bumneng', 14, '2017-10-09 09:19:38', '2017-10-09 09:19:38'),
(30, 'Dowsett', 14, '2017-10-09 09:19:38', '2017-10-09 09:19:38'),
(31, 'Treeville', 14, '2017-10-09 09:19:38', '2017-10-09 09:19:38'),
(32, 'Industrial Area', 14, '2017-10-09 09:19:38', '2017-10-09 09:19:38'),
(33, 'Market Area', 14, '2017-10-09 09:19:38', '2017-10-09 09:19:38'),
(34, 'Wharf Area', 14, '2017-10-09 09:19:38', '2017-10-09 09:19:38'),
(35, 'Nadzab', 14, '2017-10-09 09:19:38', '2017-10-09 09:19:38'),
(36, 'Speedway', 14, '2017-10-09 09:19:38', '2017-10-09 09:19:38'),
(37, 'Buimo', 14, '2017-10-09 09:19:38', '2017-10-09 09:19:38'),
(38, 'Kumkumun', 14, '2017-10-09 09:19:38', '2017-10-09 09:19:38'),
(39, 'Old Airstrip', 14, '2017-10-09 09:19:38', '2017-10-09 09:19:38'),
(40, 'Tent Siti', 14, '2017-10-09 09:19:38', '2017-10-09 09:19:38'),
(41, 'Bumayong', 14, '2017-10-09 09:19:38', '2017-10-09 09:19:38'),
(42, 'Kalibobo', 16, '2017-10-09 09:19:38', '2017-10-09 09:19:38'),
(43, 'Mimilon', 16, '2017-10-09 09:19:38', '2017-10-09 09:19:38'),
(44, 'Newtown', 22, '2017-10-09 09:19:38', '2017-12-03 05:28:44'),
(45, 'Yomda', 16, '2017-10-09 09:19:38', '2017-10-09 09:19:38'),
(46, 'Wagol', 16, '2017-10-09 09:19:38', '2017-10-09 09:19:38'),
(47, 'Alexishaven', 16, '2017-10-09 09:19:38', '2017-10-09 09:19:38'),
(48, 'Airport / Industrial District', 16, '2017-10-09 09:19:38', '2017-10-09 09:19:38'),
(49, 'Wara Kum', 20, '2017-10-09 09:19:38', '2017-12-03 05:31:37'),
(50, 'Kagamuga', 20, '2017-10-09 09:19:38', '2017-12-03 05:24:53'),
(51, 'Dobel', 20, '2017-10-09 09:19:38', '2017-12-03 05:22:36'),
(52, 'Barracks Area', 31, '2017-10-09 09:19:38', '2017-12-03 05:20:05'),
(53, 'Gerehu South', 22, '2017-10-09 09:19:38', '2017-12-03 05:23:56'),
(54, 'Gerehu North', 22, '2017-10-09 09:19:38', '2017-12-03 05:23:45'),
(55, 'Motata', 22, '2017-10-09 09:19:38', '2017-12-03 05:28:32'),
(56, 'Waigani North', 22, '2017-10-09 09:19:38', '2017-12-03 05:31:23'),
(57, 'Ensisi Valley', 22, '2017-10-09 09:19:38', '2017-12-03 05:23:04'),
(58, 'UPNG', 22, '2017-10-09 09:19:38', '2017-12-03 05:30:54'),
(59, 'Renbo Estate', 22, '2017-10-09 09:19:38', '2017-12-03 05:29:58'),
(60, 'Erima ', 22, '2017-10-09 09:19:38', '2017-12-03 05:23:18'),
(61, '7 Mile POM', 22, '2017-10-09 09:19:38', '2017-12-03 05:34:42'),
(62, 'Gordons', 22, '2017-10-09 09:19:38', '2017-12-03 05:24:08'),
(63, 'Jackons', 22, '2017-10-09 09:19:38', '2017-12-03 05:24:29'),
(64, 'Waigani ', 22, '2017-10-09 09:19:38', '2017-12-03 05:31:12'),
(65, 'Hohola', 21, '2017-10-09 09:19:38', '2017-10-09 09:19:38'),
(66, 'Tokarara', 22, '2017-10-09 09:19:38', '2017-12-03 05:30:37'),
(67, 'Idubada', 22, '2017-10-09 09:19:38', '2017-12-03 05:24:18'),
(68, 'Kila Kila', 22, '2017-10-09 09:19:38', '2017-12-03 05:26:06'),
(69, 'Gabutu', 22, '2017-10-09 09:19:38', '2017-12-03 05:23:32'),
(70, 'Kaugere', 22, '2017-10-09 09:19:38', '2017-12-03 05:25:52'),
(71, 'Boroko Central', 22, '2017-10-09 09:19:38', '2017-12-03 05:20:54'),
(72, 'Boroko East', 22, '2017-10-09 09:19:38', '2017-12-03 05:21:10'),
(73, '5 Mile Lae', 14, '2017-10-09 09:19:38', '2017-12-03 05:18:54'),
(74, 'Saraga', 22, '2017-10-09 09:19:38', '2017-12-03 05:30:11'),
(75, 'Taurama', 22, '2017-10-09 09:19:38', '2017-12-03 05:30:23'),
(76, '4 Mile POM', 22, '2017-10-09 09:19:38', '2017-12-05 07:25:21'),
(78, 'Korobosea', 22, '2017-10-09 09:19:38', '2017-12-03 05:26:30'),
(79, 'Ela Beach', 22, '2017-10-09 09:19:38', '2017-12-03 05:22:52'),
(80, 'Badili', 22, '2017-10-09 09:19:38', '2017-12-03 05:19:26'),
(81, 'Konedobu', 22, '2017-10-09 09:19:38', '2017-12-03 05:26:19'),
(82, 'Kaevaga', 22, '2017-10-09 09:19:38', '2017-12-03 05:35:47'),
(83, 'Paga Hill', 22, '2017-10-09 09:19:38', '2017-12-03 05:29:43'),
(84, 'Malaguna', 23, '2017-10-09 09:19:38', '2017-12-03 05:27:24'),
(85, 'Matupit', 23, '2017-10-09 09:19:38', '2017-12-03 05:27:43'),
(86, 'Wewak Hill', 31, '2017-10-09 09:19:38', '2017-12-03 05:31:55'),
(87, 'Wewak Town', 31, '2017-10-09 09:19:38', '2017-12-03 05:32:07'),
(88, 'Wirui', 31, '2017-10-09 09:19:38', '2017-12-03 05:32:22'),
(89, 'Mission Point', 31, '2017-10-09 09:19:38', '2017-12-03 05:28:04'),
(90, 'Kreer', 31, '2017-10-09 09:19:38', '2017-12-03 05:26:54'),
(91, 'Kreer Heights', 31, '2017-10-09 09:19:38', '2017-12-03 05:27:06'),
(92, 'Nuigo', 31, '2017-10-09 09:19:38', '2017-12-03 05:28:57'),
(93, 'Kainde', 31, '2017-10-09 09:19:38', '2017-12-03 05:36:19'),
(94, 'Boram Airport', 31, '2017-10-09 09:19:38', '2017-12-03 05:20:28'),
(95, 'Boram Cape', 31, '2017-10-09 09:19:38', '2017-12-03 05:20:42'),
(96, 'Moem', 31, '2017-10-09 09:19:38', '2017-12-03 05:28:16'),
(97, '3 Mile Lae', 14, '2017-12-01 03:31:26', '2017-12-03 05:17:29'),
(98, '3 Mile POM', 22, '2017-12-01 03:32:03', '2017-12-03 05:17:58'),
(99, 'CBD Lae', 14, '2017-12-03 05:22:16', '2017-12-03 05:22:16'),
(100, '11 Mile Lae', 14, '2017-12-03 05:34:13', '2017-12-03 05:34:13'),
(101, '7 Mile Lae', 14, '2017-12-03 05:35:02', '2017-12-03 05:35:02'),
(102, 'No Suburb', 0, '2017-12-05 06:31:20', '2017-12-05 06:31:20'),
(103, 'KB Estate', 1, '2017-12-05 07:21:28', '2017-12-05 07:21:28'),
(104, '8 Mile POM', 22, '2017-12-05 07:22:03', '2017-12-05 07:22:03'),
(105, '9 Mile POM', 22, '2017-12-05 07:22:24', '2017-12-05 07:22:24'),
(106, 'Bomana', 22, '2017-12-05 07:22:43', '2017-12-05 07:22:43'),
(107, 'Granville', 22, '2017-12-05 07:23:00', '2017-12-05 07:23:00'),
(109, 'Taurama Valley', 22, '2017-12-05 07:23:41', '2017-12-05 07:23:41'),
(110, '6 Mile POM', 22, '2017-12-05 07:24:06', '2017-12-05 07:24:06'),
(111, '5 Mile POM', 22, '2017-12-05 07:24:26', '2017-12-05 07:24:26'),
(112, 'Boundary Rd Area', 14, '2018-01-14 08:37:02', '2018-01-14 08:37:02'),
(113, '2 Mile', 14, '2018-01-14 08:37:27', '2018-01-14 08:37:27'),
(114, 'Fernridge Estate', 14, '2018-01-14 09:00:18', '2018-01-14 09:00:18'),
(115, 'Madang CBD', 16, '2018-01-16 04:02:01', '2018-01-16 04:02:01'),
(116, 'Modilion Rd Area', 16, '2018-01-16 04:02:35', '2018-01-16 04:02:35'),
(117, 'Kasagten Rd Area', 16, '2018-01-16 04:03:02', '2018-01-16 04:03:02'),
(118, 'Coronation Rd Area', 16, '2018-01-16 04:03:22', '2018-01-16 04:03:22'),
(119, 'Kainantu CBD', 7, '2018-01-22 10:42:03', '2018-01-22 10:42:03'),
(120, 'Kainantu Township', 7, '2018-01-22 10:43:05', '2018-01-22 10:43:05'),
(121, 'Faniyufa', 6, '2018-01-22 10:43:36', '2018-01-22 10:43:36'),
(122, 'Voco Point', 14, '2018-03-15 13:33:37', '2018-03-15 13:33:37'),
(123, 'Voco Point', 14, '2018-03-15 13:36:40', '2018-03-15 13:36:40'),
(124, 'Voco Point', 14, '2018-03-15 13:39:30', '2018-03-15 13:39:30'),
(125, 'Voco Point', 14, '2018-03-15 13:40:21', '2018-03-15 13:40:21');

-- --------------------------------------------------------

--
-- Table structure for table `property_uses`
--

CREATE TABLE `property_uses` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `property_uses`
--

INSERT INTO `property_uses` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Vacant', '2017-10-09 09:19:38', '2017-10-09 09:19:38'),
(2, 'Commercial', '2017-10-09 09:19:38', '2017-10-09 09:19:38'),
(3, 'Industrial', '2017-10-09 09:19:38', '2017-10-09 09:19:38'),
(4, 'Residential', '2017-10-09 09:19:38', '2017-10-09 09:19:38'),
(5, 'Institutional', '2017-10-09 09:19:38', '2017-10-09 09:19:38'),
(6, 'Agriculture', '2017-10-09 09:19:38', '2017-10-09 09:19:38'),
(7, 'Other', '2017-10-09 09:19:38', '2017-10-09 09:19:38'),
(8, 'Traditional', '2017-10-09 09:19:38', '2017-10-09 09:19:38');

-- --------------------------------------------------------

--
-- Table structure for table `rentals`
--

CREATE TABLE `rentals` (
  `id` int(10) UNSIGNED NOT NULL,
  `property_id` int(11) NOT NULL,
  `analysed_rent` text COLLATE utf8_unicode_ci NOT NULL,
  `analysed_date` date NOT NULL,
  `remarks` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `rental_area_id` int(11) NOT NULL,
  `rental_period_id` int(11) NOT NULL,
  `inclusion_other` text COLLATE utf8_unicode_ci NOT NULL,
  `rental_review_method_id` int(11) NOT NULL,
  `rental_review_method` text COLLATE utf8_unicode_ci NOT NULL,
  `name_of_tenant` text COLLATE utf8_unicode_ci NOT NULL,
  `date_lease_commenced` date NOT NULL,
  `total_lease_period` int(11) NOT NULL,
  `age_of_building` int(11) NOT NULL,
  `vacancy_rate` int(11) NOT NULL,
  `option_periods` int(11) NOT NULL,
  `rental_area_other` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rentals`
--

INSERT INTO `rentals` (`id`, `property_id`, `analysed_rent`, `analysed_date`, `remarks`, `created_at`, `updated_at`, `rental_area_id`, `rental_period_id`, `inclusion_other`, `rental_review_method_id`, `rental_review_method`, `name_of_tenant`, `date_lease_commenced`, `total_lease_period`, `age_of_building`, `vacancy_rate`, `option_periods`, `rental_area_other`) VALUES
(1, 779, '650', '2014-08-01', '', '2018-03-01 15:01:13', '2018-03-01 15:01:13', 1, 1, '', 1, '', '', '0000-00-00', 0, 0, 0, 0, ''),
(2, 780, '1000', '2014-08-08', 'Office complex', '2018-03-01 15:09:07', '2018-03-01 15:09:07', 1, 1, '', 1, '', '', '0000-00-00', 0, 0, 0, 0, ''),
(3, 780, '375', '2014-08-04', 'Car Parking', '2018-03-01 15:10:51', '2018-03-01 16:15:50', 6, 2, '', 1, '', '', '0000-00-00', 0, 0, 0, 0, ''),
(4, 780, '3000', '2014-08-04', '3 bedroom units', '2018-03-01 15:12:27', '2018-03-01 16:15:34', 3, 3, '', 1, '', '', '0000-00-00', 0, 0, 0, 0, ''),
(5, 780, '2500', '2014-03-02', '2 Bedroom units', '2018-03-01 15:13:39', '2018-03-01 16:15:18', 3, 3, '', 1, '', '', '0000-00-00', 0, 0, 0, 0, ''),
(6, 781, '750', '2014-08-04', '3 level office with retail on ground level.', '2018-03-01 15:33:50', '2018-03-01 15:33:50', 1, 1, '', 1, '', '', '0000-00-00', 0, 0, 0, 0, ''),
(7, 783, '1100', '2014-08-04', 'Two level office complex with residential units.', '2018-03-01 15:41:06', '2018-03-01 15:41:06', 1, 1, '', 1, '', '', '0000-00-00', 0, 0, 0, 0, ''),
(8, 784, '950', '2014-03-02', '3 level office complex', '2018-03-01 15:47:41', '2018-03-01 15:47:41', 1, 1, '', 1, '', '', '0000-00-00', 0, 0, 0, 0, ''),
(9, 785, '950', '2014-08-04', 'Brand new office space with secure parking and back up facilities.', '2018-03-01 15:55:13', '2018-03-01 15:55:13', 1, 1, '', 1, '', '', '0000-00-00', 0, 0, 0, 0, ''),
(10, 386, '1400', '2014-08-04', 'Two level office complex with secure parking', '2018-03-01 15:59:29', '2018-03-01 15:59:29', 1, 1, '', 1, '', '', '0000-00-00', 0, 0, 0, 0, ''),
(11, 786, '1400', '2014-08-04', 'Two level office complex with secure parking', '2018-03-01 16:01:09', '2018-03-01 16:01:09', 1, 1, '', 1, '', '', '0000-00-00', 0, 0, 0, 0, ''),
(12, 787, '1600', '2015-07-13', 'Office spaces', '2018-03-01 16:05:14', '2018-03-01 16:13:09', 1, 1, '', 1, '', '', '0000-00-00', 0, 0, 0, 0, ''),
(13, 787, '400', '2015-07-13', 'Car parking', '2018-03-01 16:06:21', '2018-03-01 16:11:56', 6, 2, '', 1, '', '', '0000-00-00', 0, 0, 0, 0, ''),
(14, 810, '1000', '2015-07-16', 'Office spaces', '2018-03-06 17:15:15', '2018-03-06 17:15:15', 1, 1, '', 1, '', '', '0000-00-00', 0, 0, 0, 0, ''),
(15, 810, '350', '2015-07-16', 'Car parking', '2018-03-06 17:16:45', '2018-03-06 17:16:45', 3, 2, '', 1, '', '', '0000-00-00', 0, 0, 0, 0, ''),
(16, 811, '1600', '2015-08-03', 'office space with restaurant, coffee shop, bar and gym.', '2018-03-06 17:21:07', '2018-03-06 17:21:07', 1, 1, '', 1, '', '', '0000-00-00', 0, 0, 0, 0, ''),
(17, 811, '416', '2015-08-03', 'Car Parking', '2018-03-06 17:21:51', '2018-03-06 17:21:51', 3, 2, '', 1, '', '', '0000-00-00', 0, 0, 0, 0, ''),
(18, 812, '1000', '2015-06-10', 'Office space', '2018-03-06 17:27:11', '2018-03-06 17:27:11', 1, 1, '', 1, '', '', '0000-00-00', 0, 0, 0, 0, ''),
(19, 812, '100', '2015-06-10', 'Car Parking', '2018-03-06 17:31:03', '2018-03-06 17:31:03', 6, 2, '', 1, '', '', '0000-00-00', 0, 0, 0, 0, 'per paking bay'),
(20, 812, '2500', '2015-06-10', 'Executive Units', '2018-03-06 17:32:11', '2018-03-06 17:32:11', 3, 3, '', 1, '', '', '0000-00-00', 0, 0, 0, 0, ''),
(21, 812, '1000', '2015-06-10', 'Staff Units.', '2018-03-06 17:33:03', '2018-03-06 17:33:03', 3, 3, '', 1, '', '', '0000-00-00', 0, 0, 0, 0, ''),
(22, 813, '35000', '2014-08-04', 'warehouse', '2018-03-06 17:37:02', '2018-03-06 17:37:02', 4, 2, '', 1, '', '', '0000-00-00', 0, 0, 0, 0, ''),
(23, 814, '35000', '2014-07-07', 'Office space', '2018-03-06 17:52:55', '2018-03-06 17:52:55', 4, 2, '', 1, '', '', '0000-00-00', 0, 0, 0, 0, ''),
(24, 815, '1000', '2014-06-11', 'Warehouse', '2018-03-06 17:57:27', '2018-03-06 17:57:27', 1, 1, '', 1, '', '', '0000-00-00', 0, 0, 0, 0, ''),
(25, 816, '1400', '2014-08-08', 'Office  Space', '2018-03-06 18:03:11', '2018-03-06 18:03:11', 1, 1, '', 1, '', '', '0000-00-00', 0, 0, 0, 0, ''),
(26, 817, '1400', '2014-05-16', 'ground level office space', '2018-03-06 18:11:16', '2018-03-06 18:11:16', 1, 1, '', 1, '', '', '0000-00-00', 0, 0, 0, 0, ''),
(27, 818, '1600', '2015-08-05', 'Office space ground and first level.', '2018-03-06 18:17:57', '2018-03-06 18:17:57', 1, 1, '', 1, '', '', '0000-00-00', 0, 0, 0, 0, ''),
(28, 818, '250', '2015-08-05', 'Car Parking', '2018-03-06 18:19:28', '2018-03-06 18:19:28', 6, 2, '', 1, '', '', '0000-00-00', 0, 0, 0, 0, 'Parking bay/vehicle'),
(29, 819, '1100', '2015-08-10', 'Office spaces.', '2018-03-06 18:24:01', '2018-03-06 18:24:01', 1, 1, '', 1, '', '', '0000-00-00', 0, 0, 0, 0, ''),
(30, 820, '1489', '2015-08-18', 'Office spaces', '2018-03-06 18:31:39', '2018-03-06 18:31:39', 1, 1, '', 1, '', '', '0000-00-00', 0, 0, 0, 0, ''),
(31, 821, '1300', '2015-08-26', 'Office Spaces.', '2018-03-06 18:39:14', '2018-03-06 18:39:14', 1, 1, '', 1, '', '', '0000-00-00', 0, 0, 0, 0, ''),
(32, 834, '13500', '2018-03-15', 'Part of warehouse at wharf.', '2018-03-14 17:54:39', '2018-03-28 19:45:03', 6, 2, '', 1, '', 'ghjk', '2018-03-02', 89, 30, 79, 67, '1050');

-- --------------------------------------------------------

--
-- Table structure for table `rental_areas`
--

CREATE TABLE `rental_areas` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `is_hidden` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rental_areas`
--

INSERT INTO `rental_areas` (`id`, `title`, `is_hidden`, `created_at`, `updated_at`) VALUES
(1, 'SQ.M', 0, '2018-02-19 01:39:18', '2018-02-19 01:39:18'),
(2, 'Hectare', 0, '2018-02-19 01:39:18', '2018-02-19 01:39:18'),
(3, 'Unit', 0, '2018-02-19 01:39:18', '2018-02-19 01:39:18'),
(4, 'Floor', 0, '2018-02-19 01:39:18', '2018-02-19 01:39:18'),
(5, 'House', 0, '2018-02-19 01:39:18', '2018-02-19 01:39:18'),
(6, 'Other', 0, '2018-02-19 01:39:18', '2018-02-19 01:39:18');

-- --------------------------------------------------------

--
-- Table structure for table `rental_inclusions`
--

CREATE TABLE `rental_inclusions` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `is_hidden` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rental_inclusions`
--

INSERT INTO `rental_inclusions` (`id`, `title`, `created_by`, `is_hidden`, `created_at`, `updated_at`) VALUES
(1, 'Water', 0, 0, '2018-02-19 01:39:18', '2018-02-19 01:39:18'),
(2, 'Electricity', 0, 0, '2018-02-19 01:39:18', '2018-02-19 01:39:18'),
(3, 'Janitorial', 0, 0, '2018-02-19 01:39:18', '2018-02-19 01:39:18'),
(4, 'Internal Maintenance', 0, 0, '2018-02-19 01:39:18', '2018-02-19 01:39:18'),
(5, 'Garbage Removal', 0, 0, '2018-02-19 01:39:18', '2018-02-19 01:39:18'),
(6, 'Internet', 0, 0, '2018-02-19 01:39:18', '2018-02-19 01:39:18'),
(7, 'Security Guards', 0, 0, '2018-02-19 01:39:18', '2018-02-19 01:39:18'),
(8, 'CCTV', 0, 0, '2018-02-19 01:39:18', '2018-02-19 01:39:18'),
(9, 'Gardens & Lawns', 0, 0, '2018-02-19 01:39:18', '2018-02-19 01:39:18'),
(10, 'Pool', 0, 0, '2018-02-19 01:39:18', '2018-02-19 01:39:18'),
(11, 'Parking', 0, 0, '2018-02-19 01:39:18', '2018-02-19 01:39:18'),
(12, 'Gym', 0, 0, '2018-02-19 01:39:18', '2018-02-19 01:39:18'),
(13, 'Other', 0, 0, '2018-02-19 01:39:18', '2018-02-19 01:39:18');

-- --------------------------------------------------------

--
-- Table structure for table `rental_inclusions_tier`
--

CREATE TABLE `rental_inclusions_tier` (
  `id` int(10) UNSIGNED NOT NULL,
  `rental_id` int(11) NOT NULL,
  `rental_inclusion_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rental_inclusions_tier`
--

INSERT INTO `rental_inclusions_tier` (`id`, `rental_id`, `rental_inclusion_id`, `created_at`, `updated_at`) VALUES
(13, 32, 1, '2018-03-28 19:45:03', '2018-03-28 19:45:03'),
(14, 32, 2, '2018-03-28 19:45:03', '2018-03-28 19:45:03'),
(15, 32, 7, '2018-03-28 19:45:03', '2018-03-28 19:45:03');

-- --------------------------------------------------------

--
-- Table structure for table `rental_maintenances`
--

CREATE TABLE `rental_maintenances` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `is_hidden` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rental_maintenances`
--

INSERT INTO `rental_maintenances` (`id`, `title`, `created_by`, `is_hidden`, `created_at`, `updated_at`) VALUES
(1, 'External', 0, 0, '2018-02-19 01:39:18', '2018-02-19 01:39:18'),
(2, 'Internal', 0, 0, '2018-02-19 01:39:18', '2018-02-19 01:39:18'),
(3, 'White Goods', 0, 0, '2018-02-19 01:39:18', '2018-02-19 01:39:18'),
(4, 'Furniture', 0, 0, '2018-02-19 01:39:18', '2018-02-19 01:39:18'),
(5, 'Gardens & Grounds', 0, 0, '2018-02-19 01:39:18', '2018-02-19 01:39:18'),
(6, 'Fencing', 0, 0, '2018-02-19 01:39:18', '2018-02-19 01:39:18'),
(7, 'Wet Areas', 0, 0, '2018-02-19 01:39:18', '2018-02-19 01:39:18');

-- --------------------------------------------------------

--
-- Table structure for table `rental_periods`
--

CREATE TABLE `rental_periods` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `is_hidden` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rental_periods`
--

INSERT INTO `rental_periods` (`id`, `title`, `created_by`, `is_hidden`, `created_at`, `updated_at`) VALUES
(1, 'Per Annum', 0, 0, '2018-02-19 01:39:18', '2018-02-19 01:39:18'),
(2, 'Per Month', 0, 0, '2018-02-19 01:39:18', '2018-02-19 01:39:18'),
(3, 'Per Week', 0, 0, '2018-02-19 01:39:18', '2018-02-19 01:39:18');

-- --------------------------------------------------------

--
-- Table structure for table `rental_ratings_tier`
--

CREATE TABLE `rental_ratings_tier` (
  `id` int(10) UNSIGNED NOT NULL,
  `rental_id` int(11) NOT NULL,
  `rental_maintenance_id` int(11) NOT NULL,
  `rate` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rental_ratings_tier`
--

INSERT INTO `rental_ratings_tier` (`id`, `rental_id`, `rental_maintenance_id`, `rate`, `created_at`, `updated_at`) VALUES
(9, 32, 1, 3, '2018-03-28 19:45:03', '2018-03-28 19:45:03'),
(10, 32, 6, 3, '2018-03-28 19:45:03', '2018-03-28 19:45:03');

-- --------------------------------------------------------

--
-- Table structure for table `rental_review_methods`
--

CREATE TABLE `rental_review_methods` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `is_hidden` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rental_review_methods`
--

INSERT INTO `rental_review_methods` (`id`, `title`, `created_by`, `is_hidden`, `created_at`, `updated_at`) VALUES
(1, 'CPI', 0, 0, '2018-02-19 01:39:18', '2018-02-19 01:39:18'),
(2, 'Fixed', 0, 0, '2018-02-19 01:39:18', '2018-02-19 01:39:18');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(10) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `price` text COLLATE utf8_unicode_ci NOT NULL,
  `purchaser` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `property_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `vendor` text COLLATE utf8_unicode_ci NOT NULL,
  `est_land_value` text COLLATE utf8_unicode_ci NOT NULL,
  `est_improvement_value` text COLLATE utf8_unicode_ci NOT NULL,
  `area` text COLLATE utf8_unicode_ci NOT NULL,
  `est_land_rate` text COLLATE utf8_unicode_ci NOT NULL,
  `source` text COLLATE utf8_unicode_ci NOT NULL,
  `remarks` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `date`, `price`, `purchaser`, `description`, `property_id`, `created_at`, `updated_at`, `vendor`, `est_land_value`, `est_improvement_value`, `area`, `est_land_rate`, `source`, `remarks`) VALUES
(1, '2013-05-31', '3350000', 'LinLi Luan & Lin Yang Qing', 'N/A', 1, '2018-01-02 03:36:57', '2018-01-02 03:50:26', 'P&L Franklin', '0', '0', '2000', '0', 'N/A', 'Good'),
(4, '2013-10-10', '2700000', 'Mapai Transport', 'N/A', 2, '2018-01-02 03:49:43', '2018-01-02 03:49:43', 'New Tribes', '0', '0', '3000', '0', 'N/A', 'Good'),
(5, '2014-02-12', '16050000', 'Capital Land Ltd (Papindo)', 'N/A', 3, '2018-01-02 03:57:26', '2018-01-02 03:57:26', 'Mainland Holdings', '0', '0', '5300', '0', 'N/A', 'Good'),
(6, '2014-06-14', '800000', 'John Raima', 'N/A', 4, '2018-01-02 04:03:55', '2018-01-02 04:03:55', 'Donna Harvey-Hall', '0', '0', '1000', '0', 'N/A', 'Good'),
(7, '2014-06-15', '1412000', 'Chemcare', 'N/A', 5, '2018-01-02 04:09:10', '2018-01-02 04:09:10', 'BOC', '0', '0', '900', '0', 'N/A', 'Good'),
(8, '2014-11-15', '7550000', 'Wonyi Auto', 'N/A', 6, '2018-01-02 04:26:43', '2018-01-02 04:26:43', 'NSL', '0', '0', '4000', '0', 'N/A', 'Good'),
(9, '2014-11-15', '9250000', 'RH Trading', 'N/A', 7, '2018-01-02 04:31:28', '2018-01-02 04:31:28', 'NSL', '0', '0', '8500', '0', 'N/A', 'Good'),
(10, '2014-11-15', '1900000', 'Premium Proj Services', 'N/A', 8, '2018-01-02 05:16:58', '2018-01-02 05:16:58', 'SVS', '0', '0', '1300', '0', 'N/A', 'Good'),
(11, '2014-02-16', '1200000', 'FTM-Emma Russo', 'N/A', 9, '2018-01-02 05:25:34', '2018-01-02 05:25:34', 'Deidre Ryan', '0', '0', '1000', '0', 'N/A', 'Good'),
(12, '2014-04-16', '550000', 'Makawa Zuranu', 'N/A', 10, '2018-01-02 05:30:24', '2018-01-02 05:30:24', 'Amalpak', '0', '0', '800', '0', 'N/A', 'Good'),
(13, '2014-07-15', '1800000', 'City Link Motel', 'N/A', 11, '2018-01-02 05:35:57', '2018-01-02 05:35:57', 'East Garden', '0', '0', '1000', '0', 'N/A', 'Good'),
(14, '2014-07-15', '5400000', 'Prima Smallgoods', 'N/A', 12, '2018-01-02 05:43:51', '2018-01-02 05:43:51', 'SVS', '0', '0', '1200', '0', 'N/A', 'Good'),
(15, '2016-03-16', '2200000', 'Misheld Ltd', 'N/A', 13, '2018-01-02 05:47:31', '2018-01-02 05:47:31', 'SVS', '0', '0', '1300', '0', 'N/A', 'Good'),
(16, '2014-03-16', '4680000', 'Supreme Industries Ltd', 'N/A', 14, '2018-01-02 08:11:05', '2018-01-02 08:11:05', 'SVS', '0', '0', '1800', '0', 'N/A', 'Good'),
(17, '2016-08-16', '11900000', 'Dae Won Trading', 'N/A', 15, '2018-01-02 08:21:57', '2018-01-02 08:21:57', 'SVS', '0', '0', '1700', '0', 'N/A', 'Good'),
(18, '2016-03-16', '15000000', 'Dae Won Trading', 'N/A', 16, '2018-01-02 08:25:48', '2018-01-02 08:25:48', 'SVS', '0', '0', '1200', '0', 'N/A', 'Good'),
(19, '2016-03-17', '3500000', 'Kina Betting', 'N/A', 17, '2018-01-02 08:37:16', '2018-01-02 08:37:16', 'NSL', '0', '0', '1600', '0', 'N/A', 'Good'),
(20, '2016-06-17', '1600000', 'TT Properties Ltd', 'N/A', 18, '2018-01-02 08:43:00', '2018-01-02 08:43:00', 'UNAWOS INVESTMENT Ltd', '0', '0', '1300', '0', 'N/A', 'Good'),
(21, '2016-08-17', '2000000', 'Lae Inter Hotel', 'N/A', 19, '2018-01-02 08:53:15', '2018-01-02 08:53:15', 'KINGSTON', '0', '0', '1000', '0', 'N/A', 'Good'),
(22, '2016-08-17', '1100000', 'Niugini Electrical', 'N/A', 20, '2018-01-02 09:00:20', '2018-01-02 09:00:20', 'KINGSTON', '0', '0', '1200', '0', 'N/A', 'Good'),
(23, '2007-10-05', '1800000', 'Lae Builders', 'N/A', 21, '2018-01-09 03:01:03', '2018-01-09 03:01:03', 'Post PNG', '0', '0', '3500', '0', 'N/A', 'Good'),
(24, '2007-12-07', '700000', 'Magesterial Services', 'N/A', 22, '2018-01-09 03:09:28', '2018-01-09 03:09:28', 'Hornibrook NGI', '0', '0', '800', '0', 'N/A', 'Good'),
(25, '2007-11-23', '1800000', 'Daewon Trading', 'N/A', 23, '2018-01-09 03:17:58', '2018-01-09 03:17:58', 'Chemcare', '0', '0', '1300', '0', 'N/A', 'Good'),
(26, '2008-01-11', '1760000', 'POM City Mission', 'N/A', 24, '2018-01-09 03:37:12', '2018-01-09 03:37:12', 'Kainantu Kasino', '0', '0', '1400', '0', 'N/A', 'Good'),
(27, '2008-07-20', '90000', 'Jack Ambang', 'N/A', 26, '2018-01-09 03:46:26', '2018-01-09 03:46:26', 'Jessie Angori', '0', '0', '500', '0', 'N/A', 'Good'),
(28, '2008-06-26', '630000', 'Justin Parker', 'N/A', 25, '2018-01-09 03:49:14', '2018-01-09 03:49:14', 'Eusebius Omi', '0', '0', '', '0', 'N/A', 'Good'),
(29, '2008-07-20', '350000', 'Philip Kuk', 'N/A', 27, '2018-01-14 09:48:21', '2018-01-14 09:48:21', 'Omi Esubius', '0', '0', '1000', '0', 'N/A', 'Good'),
(30, '2008-01-16', '110000', 'Jack Ambane', 'N/A', 28, '2018-01-14 09:51:29', '2018-01-14 09:51:29', 'Paul Sepu', '0', '0', '700', '0', 'N/A', 'Good'),
(31, '2008-02-14', '110000', 'Lombek Inv', 'N/A', 29, '2018-01-14 09:53:34', '2018-01-14 09:53:34', 'Pamela Kelly', '0', '0', '1000', '0', 'N/A', 'Good'),
(32, '2008-11-21', '1340000', 'Justin Parker', 'N/A', 30, '2018-01-14 09:59:25', '2018-01-14 09:59:25', 'Fairweather/ Howell', '0', '0', '1400', '0', 'N/A', 'Good'),
(33, '2009-07-20', '1650000', 'Stephen Beach', 'N/A', 31, '2018-01-14 10:01:45', '2018-01-14 10:01:45', 'Palmer R & D', '0', '0', '1000', '0', 'N/A', 'Good'),
(34, '2009-08-13', '650000', 'Justus Rapula', 'N/A', 32, '2018-01-14 10:04:05', '2018-01-14 10:04:05', 'Renlim No 8 Ltd', '0', '0', '1300', '0', 'N/A', 'Good'),
(35, '2009-09-10', '360000', 'Ponweera Edward', 'N/A', 33, '2018-01-14 10:06:36', '2018-01-14 10:06:36', 'Kauga Victor', '0', '0', '600', '0', 'N/A', 'Good'),
(36, '2009-09-21', '750000', 'Leanne Investment', 'N/A', 34, '2018-01-14 10:08:47', '2018-01-14 10:08:47', 'Gibbs, Stephen', '0', '0', '1400', '0', 'N/A', 'Good'),
(37, '2010-07-09', '1500000', 'P Boyd & J Cassel', 'N/A', 35, '2018-01-14 10:10:47', '2018-01-14 10:10:47', 'French Mobile Ltd', '0', '0', '1200', '0', 'N/A', 'Good'),
(38, '2009-11-14', '902000', 'Yuwai No 29 Ltd', 'N/A', 36, '2018-01-14 10:13:23', '2018-01-14 10:13:23', 'Kabua Nou', '0', '0', '1600', '0', 'N/A', 'Good'),
(39, '2010-01-15', '960000', 'Clement Para', 'N/A', 37, '2018-01-14 10:15:21', '2018-01-14 10:15:21', 'Delta Industries Ltd', '0', '0', '1400', '0', 'N/A', 'Good'),
(40, '2011-03-14', '1500000', 'Nawae Construction', 'N/A', 38, '2018-01-14 10:17:51', '2018-01-14 10:17:51', 'Shao Trading ( In Receivership)', '0', '0', '1200', '0', 'N/A', 'Good'),
(41, '2011-04-04', '1250000', 'Philip Kuk', 'N/A', 39, '2018-01-14 10:20:46', '2018-01-14 10:20:46', 'Shao Trading ( In Receivership)', '0', '0', '900', '0', 'N/A', 'Good'),
(42, '2011-04-15', '110000', 'Alois Jerewai', 'N/A', 40, '2018-01-14 10:22:30', '2018-01-14 10:22:30', 'Shao Trading ( In Receivership)', '0', '0', '500', '0', 'N/A', 'Good'),
(43, '2011-03-18', '1100000', 'ENB Port Services', 'N/A', 41, '2018-01-14 10:27:16', '2018-01-14 10:27:16', 'Shao Trading ( In Receivership)', '0', '0', '0', '0', 'N/A', 'Good'),
(44, '2011-03-10', '1800000', 'Golden Pheonix Trading', 'N/A', 42, '2018-01-14 10:29:13', '2018-01-14 10:29:13', 'Shao Trading ( In Receivership)', '0', '0', '1500', '0', 'N/A', 'Good'),
(45, '2011-04-15', '725000', 'Fourth St Apart Ltd', 'N/A', 43, '2018-01-14 10:31:27', '2018-01-14 10:31:27', 'Kelvin Togatia', '0', '0', '1300', '0', 'N/A', 'Good'),
(46, '2011-05-31', '335000', 'Lae Travellers Inn', 'N/A', 44, '2018-01-14 10:33:17', '2018-01-14 10:33:17', 'Mobil Oil', '0', '0', '400', '0', 'N/A', 'Good'),
(47, '2011-08-17', '1545500', 'Tua Yander', 'N/A', 45, '2018-01-14 10:35:11', '2018-01-14 10:35:11', 'Honibrook NGI', '0', '0', '1100', '0', 'N/A', 'Good'),
(48, '2011-11-17', '1525000', 'Papindo Trading', 'N/A', 46, '2018-01-14 10:37:15', '2018-01-14 10:37:15', 'Lumba Lumba', '0', '0', '1400', '0', 'N/A', 'Good'),
(49, '2013-03-13', '1450000', 'Musgrave', 'N/A', 47, '2018-01-14 10:39:11', '2018-01-14 10:39:11', 'Colorpack Ltd', '0', '0', '1300', '0', 'N/A', 'Good'),
(50, '2013-05-31', '1570000', 'SVS Ltd', 'N/A', 48, '2018-01-14 10:44:43', '2018-01-14 10:44:43', 'Runner Ltd', '0', '0', '1500', '0', 'N/A', 'Good'),
(51, '2013-05-31', '1350000', '21C Ltd', 'N/A', 49, '2018-01-14 10:46:54', '2018-01-14 10:46:54', 'Evan Gillespie', '0', '0', '1000', '0', 'N/A', 'Good'),
(52, '2015-01-23', '30000000', 'Express Freight Management', 'Large allotment with warehouse, workshop, offices and hardstand. Access from two roads', 225, '2018-01-22 08:12:51', '2018-01-22 08:14:38', 'Hastings Deering', '24000000', '6000000', '24300', '987', 'Puirchaser', 'Prime location in industrial area'),
(53, '2016-01-23', '29500000', 'Express Freight Management', 'Large consolidation of allotments. Vendor removed the major steel fabrication workshop building leaving offices and smaller vehicle workshops and warehousing. Hardstand also.', 227, '2018-01-22 08:27:19', '2018-01-22 08:27:19', 'Hoirnibrook', '22000000', '7500000', '27000', '815', 'Purchaser', 'Prime industrial land. Purchaser has done further development with new warehouses.'),
(54, '2014-05-15', '2800000', 'Kungus Limited ', 'Two Level building comprises trade store/residence with attached store/residence.', 792, '2018-03-01 20:52:44', '2018-03-01 20:53:51', 'Nallim Limited', '0', '0', '400', 'undefined', 'N/A', 'Good'),
(55, '2014-04-28', '16640000', 'SP Brewery Limited ', 'tryre repair workshop and warehouse, two level building comprises office and staff residential units and anciallary buildings. ', 793, '2018-03-01 21:23:12', '2018-03-01 21:23:12', 'Bridgestone Tyres (PNG) Limited ', '0', '0', '2000', '0', 'N/A', 'Good '),
(56, '2014-03-02', '20000000', 'Bridgestone Tyres (PNG) Limited  ', 'Two adjoining warehouses comprising offices, storage and mezzanine storage. ', 794, '2018-03-01 21:37:28', '2018-03-01 21:37:28', 'D.B Holdings', '0', '0', '5920', '0', 'N/A', 'Good '),
(57, '2014-04-01', '8250000', 'Chemcare Group Limited ', 'Warehouse with office at the frontage ', 795, '2018-03-01 21:50:49', '2018-03-06 21:08:57', 'Property and Investments Consultants Limited', '0', '0', '2028', '0', 'N/A', 'Good '),
(58, '2012-01-01', '1400000', 'Unknown', 'Standalone house', 797, '2018-03-04 15:14:02', '2018-03-04 15:14:02', 'Unknown', '1156000', '244000', '1360', '850', 'Frank Ogisi Valuation', 'Poinciana Street. Extracted from an Arthur Strachan Valuation.'),
(59, '2014-02-01', '1150000', 'Unknown', 'A 2 bedroom and a 3 bedroom flat', 798, '2018-03-04 15:21:00', '2018-03-04 15:22:17', 'Unknown', 'undefined', 'undefined', '1280', 'undefined', 'Frank Ogisi Valuation', 'Extracted from an Arthur Strachan Valuation'),
(60, '2012-03-01', '1020000', 'Unknown', 'Vacant land.', 800, '2018-03-04 15:35:42', '2018-03-04 15:35:42', 'Unknown', '0', '0', '1360', '860', 'Frank Ogisi Valuation', 'Casuarina Ave. Extracted from an Arthur Strachan valuation.'),
(61, '2014-03-03', '9000000', 'Uknown', 'Retail shopping complex', 822, '2018-03-06 21:10:54', '2018-03-06 21:10:54', 'Uknown', '0', '0', '0', '0', 'N/A', 'Good '),
(62, '2014-09-03', '6000000', 'Uknown ', 'Two level building comprises trade-store, ground level building comprises office and pokies parlour and ancillary buildings.', 823, '2018-03-06 21:28:09', '2018-03-06 21:28:09', 'Uknown ', '0', '0', '0', '0', 'Uknown', 'It is located in a high socio economic environment and the sale include the value of the business.'),
(63, '2013-10-16', '13200000', 'Unkown', 'Two level office building.', 824, '2018-03-06 21:33:43', '2018-03-07 21:01:28', 'Uknown', '0', '0', '0', '0', 'Uknown', 'Located in a high socio-economic environment and having good public exposure.'),
(64, '2014-03-11', '10000000', 'Uknown ', 'This is a two level office/showroom with detached storage shed in a securely fenced premises and specious storage.', 825, '2018-03-06 21:44:29', '2018-03-07 21:02:17', 'Uknown', '0', '0', '0', '0', 'Uknown ', 'Located within Gordons industrial area and well exposed with good quality improvement and specious storage. It is located in a high socio-economic environment.  '),
(65, '2014-04-10', '18000000', 'Uknown ', 'The property comprises three adjoining blocks improved with two lofty warehouse sheds and three blocks of two level residence buildings with offices with concrete paved yard with specious hardstand/parking and securely fenced with trimdek iron fenced premises. ', 829, '2018-03-06 21:56:34', '2018-03-07 21:03:10', 'Uknown', '0', '0', '0', '0', 'Uknown ', 'The premises is owner occupied with mixed use developments. The improvements are well maintained, fit for purpose. '),
(66, '2014-03-03', '9000000', 'Uknown ', 'The property is a warehouse building with mezzanine offices and storage as well as staff accommodation. ', 830, '2018-03-07 19:04:18', '2018-03-07 19:04:18', 'Unknown ', '0', '0', '2200', '0', 'Uknown', 'Good '),
(67, '2014-08-07', '12500000', 'Uknown', 'Warehouse building ', 831, '2018-03-07 21:00:12', '2018-03-07 21:08:57', 'Uknown', '0', '0', '2504', '0', 'Uknown', 'Good '),
(68, '2014-08-07', '17000000', 'Uknown ', 'Office building. ', 832, '2018-03-07 21:08:10', '2018-03-07 21:08:10', 'Uknown ', '0', '0', '1918', '0', 'Uknown ', 'Good'),
(69, '2017-06-02', '610000', 'Dickson Laviong', 'Property is a vacant block of 2580 m2', 837, '2018-03-18 15:30:48', '2018-03-18 15:59:52', 'Office of Sheriff', '580000', '0', '2580', '225', 'Auction Sales', 'Madang Auction sales'),
(71, '2017-05-31', '1040000', 'Michael PAA. Asila Security', 'Property is a low set run-down residential house with a detached 2 level run-down dwelling plus other improvements. It is situated on a total land area of 2000 square meters', 839, '2018-03-18 15:57:18', '2018-03-28 19:38:04', 'SHERRIF', '2222', '3333', '2000', '4444', 'Madang Auction ', 'Madang Auction sales');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isDisabled` tinyint(1) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `username`, `password`, `role`, `isDisabled`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Mike Quinn', 'mike@theprofessionals.com.pg', 'mike@theprofessionals.com.pg', '$2y$10$MhlCNXjnoseVU86z9gq5ueC2bBYrAAZCTBVLYE.HpH46/dkfb9.4C', 'Administrator', 0, NULL, '2018-02-22 05:50:15', '2018-02-22 05:50:15'),
(2, 'Agi Doko', 'adoko@theprofessionals.com.pg', 'adoko@theprofessionals.com.pg', '$2y$10$yMEoB2.o/cuZD6tRRGsQru7rLOIEDlIrSgsJPX0cMRe9vw/doIReq', 'Data Access', 0, NULL, '2018-02-22 05:50:15', '2018-02-22 05:50:15'),
(3, 'John Purcell', 'apacific@optusnet.com.au', 'apacific@optusnet.com.au', '$2y$10$ZFIOQ0RhxAqcsNb6LfTv0eHUU7UnDffitPrmplVyzUd6TO.ki4QDm', 'Data Access', 0, NULL, '2018-02-22 05:50:15', '2018-02-22 05:50:15'),
(4, 'Rose Enn', 'valuations.ncd@theprofessionals.com.pg', 'valuations.ncd@theprofessionals.com.pg', '$2y$10$aqXW7UsGtfwbgoW39eok5eMfNoQmUhqyoaMWsCzCNhALL5O63h9ei', 'Data Access', 0, NULL, '2018-02-22 05:50:15', '2018-02-22 05:50:15'),
(5, 'Joel Wapele', 'valuations2.ncd@theprofessionals.com.pg', 'valuations2.ncd@theprofessionals.com.pg', '$2y$10$aJBtqfWDbv1ACRvUZMfqG..j2uFMgtwovGpOjJwu0T8xGUczoA9Z6', 'Data Access', 0, NULL, '2018-02-22 05:50:16', '2018-02-22 05:50:16'),
(6, 'Purinda Nosa', 'valuations@theprofessionals.com.pg', 'valuations@theprofessionals.com.pg', '$2y$10$x.2HiiDVUZgRdp5Csu9IF.X.PDNl6eV3SfzabHDRlBmvpl7TqqoXW', 'Data Access', 0, NULL, '2018-02-22 05:50:16', '2018-02-22 05:50:16'),
(7, 'Lyanne Gerson', 'sales@theprofessionals.com.pg', 'sales@theprofessionals.com.pg', '$2y$10$fydewXWVIARQS1SjHwc.Q.h5ICI3lihAK1pjnU3zYiwn6BlF3QsSa', 'Data Entry', 0, NULL, '2018-02-22 05:50:16', '2018-02-22 05:50:16'),
(8, 'Jimmy Pep', 'propmgmt@theprofessionals.com.pg', 'propmgmt@theprofessionals.com.pg', '$2y$10$TPJeyut1FNNJbJe3YZ4CjezL9mdixpOkWXbbC0d0UCZE84sOTLObq', 'Data Entry', 0, NULL, '2018-02-22 05:50:16', '2018-02-22 05:50:16'),
(9, 'Dennis Cotter', 'dennis@theprofessionals.com.pg', 'dennis@theprofessionals.com.pg', '$2y$10$um98VzbB/vIn4mFlFNJMtO7ArsjSjCnArNil60atzy6Ge2PmcYgpS', 'Data Access', 0, NULL, '2018-02-22 05:50:16', '2018-02-22 05:50:16');

-- --------------------------------------------------------

--
-- Table structure for table `valuations`
--

CREATE TABLE `valuations` (
  `id` int(10) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `property_id` int(11) NOT NULL,
  `land_component` text COLLATE utf8_unicode_ci NOT NULL,
  `insurance_value` text COLLATE utf8_unicode_ci NOT NULL,
  `improvement_component` text COLLATE utf8_unicode_ci NOT NULL,
  `area` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `forced_sale_value` text COLLATE utf8_unicode_ci NOT NULL,
  `land_value_rate` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `valuations`
--

INSERT INTO `valuations` (`id`, `date`, `description`, `property_id`, `land_component`, `insurance_value`, `improvement_component`, `area`, `created_at`, `updated_at`, `forced_sale_value`, `land_value_rate`) VALUES
(1, '2007-05-17', '4 x 2 bedroom houses, total of 437.6 square meters in all,  with minor improvements and stand-by generator. They are situated on 1, 600 square metres of residential allotment in the City of Lae.', 50, '240000', '0', '696000', '1600', '2018-01-11 02:59:27', '2018-01-11 02:59:27', '0', '150'),
(2, '2012-05-10', 'The property comprised an office, shed, workshop and office buildings.They are situated on a  1.30 hectares of commercial portion of land outside of Goroka Town.', 51, '1300000', '0', '2907000', '13000', '2018-01-11 03:41:46', '2018-01-11 03:41:46', '0', '100'),
(3, '2012-01-12', '2 level high covenant 5 bedrooms stand alone residence, approximately 256.25 square meters plus other minor improvements. It is situated on a 1,109.7 square meters residential allotment in Goroka Town.', 52, '133164', '0', '747836', '1109.7', '2018-01-11 04:35:33', '2018-01-11 04:35:33', '0', '120'),
(4, '2012-01-03', 'Office/storage, approximately 185.64m2 and 8,414.36m2 of hardstand area with fencing. It is situated on 8,730 square meters of light industrial allotment in Lae City.', 53, '2015494', '0', '168506', '8730', '2018-01-11 05:57:54', '2018-01-11 05:57:54', '0', '231'),
(5, '2012-07-04', 'Property comprise of factory with mezzanine floor and a warehouse together with other improvements.', 54, '4480000', '0', '6863000', '12800', '2018-01-11 07:50:01', '2018-01-11 07:50:01', '0', '350'),
(6, '2012-01-24', 'Workshop, 2 x staff houses, 1 x flat, 1 x general use toilet, with whole perimeter fenced with 1 part spike steel and 3 parts klip lock fencing and razor, approximately 1.85 hectares newly developed with a. However, the land is assessed as vacant or unimproved.', 55, '1573000', '0', '0', '18500', '2018-01-11 08:05:57', '2018-01-11 08:05:57', '0', '85'),
(7, '2012-01-26', 'A Factory/ware house building with offices Plus Managing Director’s residence, Staff Quarters car park/hardstand as described including all normal fixtures, fittings, septic installation plus other improvements including Generator.', 56, '1740000', '0', '3451000', '2000', '2018-01-11 08:18:31', '2018-01-11 08:18:31', '0', '870'),
(8, '2012-05-18', 'Workshop with mezzanine floor, Office/Residence as described including all normal fixtures, fittings and septic systems plus other improvements.', 57, '2036000', '0', '3952000', '2600', '2018-01-11 08:26:18', '2018-01-11 08:26:18', '0', '783'),
(9, '2012-04-20', 'Workshop/Office building  plus car park/hardstand as described including all normal fixtures, fittings, septic installation plus other improvements.', 58, '796000', '0', '190000', '1990', '2018-01-11 08:34:21', '2018-01-11 08:34:21', '0', '400'),
(10, '2012-01-10', '2 x Workshop/ware house building with offices plus car park/hardstand as described including all normal fixtures, fittings, septic installation plus other improvements.', 59, '1600000', '0', '3416000', '4000', '2018-01-11 08:43:05', '2018-01-11 08:43:05', '0', '400'),
(11, '2012-01-03', 'Office/storage, approximately 185.64m2 and 8,414.36m2 of hardstand area with fencing. It is situated on 8,730 square meters of light industrial allotment in Lae City.', 60, '2015494', '0', '168506', '8730', '2018-01-11 09:13:43', '2018-01-11 09:13:43', '0', '230.87'),
(13, '2011-12-05', 'Two (2) levels, three (3) bedrooms residence with overhang downstairs with balcony and other improvements. They are situated on 600 square meters of residential allotment in the City of Lae.', 62, '0', '555000', '0', '600', '2018-01-11 10:13:31', '2018-01-11 10:43:01', '0', '0'),
(14, '2011-12-22', '3 bedrooms stand alone residence, approximately 53.04 square meters plus other minor improvements. It is situated on approximately 540 square meters of residential allotment in Lae City.', 63, '0', '135000', '0', '540', '2018-01-11 10:36:20', '2018-01-11 10:42:02', '0', '0'),
(15, '2012-03-28', 'Residential Compound buildings with associated improvements. They are situated on 2.797 hectares of land portion outside City of Lae.', 64, '3356000', '0', '7401000', '27970', '2018-01-12 05:12:03', '2018-01-12 05:12:03', '0', '119.99'),
(16, '2012-03-28', 'Warehouse Building plus other improvements. It is situated on 4.844 hectares of industrial allotment, outside City of Lae.', 65, '6055000', '0', '2626000', '48440', '2018-01-12 05:20:19', '2018-01-12 05:20:19', '0', '125'),
(17, '2011-12-12', '3 bedroom residence on top floor and 2 x 1 bedroom flat on ground floor with a total floor area of approximately 279.92 square meters, plus other improvements. They are situated on a 1 100 square meters residential allotment in Lae City.', 66, '330000', '0', '366000', '1100', '2018-01-12 05:37:53', '2018-01-12 05:37:53', '0', '300'),
(18, '2011-12-12', '3 bedroom residence with ensiute containing a total floor area of approximately 307.18 square meters, plus other improvements. They are situated on a 1 100 square meters residential allotment in Lae City.', 67, '330000', '0', '495000', '1100', '2018-01-12 05:45:46', '2018-01-12 05:45:46', '0', '300'),
(19, '2012-04-28', '3 bedroom residence on top floor and 2 bedroom on ground floor with a total floor area of approximately 117 square meters, plus other improvements.They are situated on a 971 square meters residential allotment in Lae City.', 68, '63000', '0', '205000', '971', '2018-01-14 02:16:12', '2018-01-14 02:16:12', '0', '64.88'),
(20, '2012-04-28', 'A self contained duplex flat, Trade store plus other improvements.They are situated on a 662 square meters residential allotment in Lae City.', 69, '43000', '0', '213000', '662', '2018-01-14 02:30:28', '2018-01-14 02:30:28', '0', '65'),
(22, '2012-05-31', '4 x bedroom residence with en- suite comprising an area of approximately 222 square meters plus other minor improvements. They are situated on approximately 1,630 square meters of residential allotment in 11 mile, outside Lae City.', 71, '269000', '0', '728000', '1630', '2018-01-14 04:29:57', '2018-01-14 04:29:57', '0', '165'),
(23, '2012-01-15', '3 bedrooms stand alone residence, approximately 102.7 square meters low set   plus other minor improvements. It is situated on approximately 635 square meters of residential allotment in Lae City.', 72, '495300', '0', '221700', '635', '2018-01-14 04:38:34', '2018-01-14 04:38:34', '0', '783'),
(24, '2012-05-08', '9 x rooms Guest House recently completed and a slit level 3 bedroom residence with 4 x rooms on ground floor under construction plus other minor improvements.They are situated on approximately 2,280 square meters of residential allotment in Lae City.', 73, '1254000', '0', '1022000', '2280', '2018-01-14 04:51:19', '2018-01-14 04:51:19', '0', '550'),
(25, '2018-01-15', '2 level, 2 x 3 bedrooms residence with spacious yard, approximately 141.56 square meters plus other minor improvements. It is situated on a 546 square meters residential allotment in Lae City.', 74, '218400', '0', '348600', '546', '2018-01-14 05:07:25', '2018-01-14 05:07:25', '0', '400'),
(26, '2012-06-08', '4 x bedroom residence with en-suite comprising an area of approximately 258.74 square meters plus other minor improvements. It is situated on approximately 600 square meters of residential allotment in Lae City.', 75, '270000', '0', '426000', '600', '2018-01-14 05:24:03', '2018-01-14 05:24:03', '0', '450'),
(27, '2011-12-12', '2 level, 4 x 3 bedrooms units, approximately 434.52 square meters plus other minor improvements. It is situated on a 1,200 square meters residential allotment in Lae City.', 76, '432000', '0', '1909000', '1200', '2018-01-14 05:35:11', '2018-01-14 05:35:11', '0', '360'),
(28, '2012-04-10', 'Duplex residence comprising a floor area of approximately 324m2  plus other improvements.It is situated on approximately 1,570 square meters of residential allotment in Lae City.', 77, '314000', '0', '437000', '1570', '2018-01-14 05:44:37', '2018-01-14 05:44:37', '0', '200'),
(29, '2012-08-09', '2 level 4 bedroom residence and a 2 Bedroom staff residence with storage room plus other improvements. It is situated on approximately 1,300 square meters of residential allotment in Lae City.', 78, '325000', '0', '647000', '1300', '2018-01-14 05:58:25', '2018-01-14 05:58:25', '0', '250'),
(30, '2012-01-15', '2 level 2 x bedroom duplex and a 4 x Bedroom residence plus other improvements. They are situated on approximately 1,000 square meters of residential allotment in Lae City.', 79, '250000', '0', '1595000', '1000', '2018-01-14 06:30:24', '2018-01-14 06:30:24', '0', '250'),
(31, '2012-04-28', 'High set duplex residence comprising a floor area of approximately 158.40m2 plus other improvements. It is situated on approximately 1,400 square meters of residential allotment in Lae City.', 80, '448000', '0', '378000', '1400', '2018-01-14 06:37:24', '2018-01-14 06:37:24', '0', '320'),
(32, '2011-01-15', 'Two level 3 bedroom residence on top floor and 2 x 1 bedroom flat on ground floor with a total floor area of approximately 279.92 square meters, plus other improvements. They are situated on a 1 100 square meters residential allotment in Lae City.', 81, '330000', '0', '366000', '1100', '2018-01-14 07:20:39', '2018-01-14 07:20:39', '0', '300'),
(33, '2011-12-12', 'Two level 4 x 3 bedroom flat with a total floor area of approximately 402.8 square meters, plus other improvements. They are situated on a 1 000 square meters residential allotment in Lae City.', 82, '250000', '0', '527000', '1100', '2018-01-14 07:38:42', '2018-01-14 07:38:42', '0', '227'),
(34, '2011-12-12', 'Two level 3 bedroom residence with en-suite containing a total floor area of approximately 307.18 square meters, plus other improvements. They are situated on a 1 100 square meters residential allotment in Lae City.', 83, '330000', '0', '495000', '1100', '2018-01-14 07:45:37', '2018-01-14 07:45:37', '0', '300'),
(35, '2012-03-20', '3 x 2 levels 3 bedroom houses, each comprising an area of approximately 122.4 square meters plus other minor improvements. They are situated on approximately 1,011 square meters of residential allotment in Lae City.', 84, '551000', '0', '968000', '1011', '2018-01-14 09:05:50', '2018-01-14 09:05:50', '0', '545'),
(36, '2012-05-29', '3 x bedroom residence comprising an area of approximately 134.52 square meters plus other minor improvements. It is situated on approximately 1,000 square meters of residential allotment in Lae City.', 85, '400000', '0', '390000', '1000', '2018-01-14 09:15:13', '2018-01-14 09:15:13', '0', '400'),
(37, '2011-11-11', '3 bedrooms stand alone residence with carport/storage and laundry under, approximately 140.6 square meters of high set high covenant plus other minor improvements. It is situated on a 1, 115 square meters residential allotment in Lae City.', 86, '55000', '0', '452000', '1115', '2018-01-14 09:42:57', '2018-01-14 09:42:57', '0', '49'),
(38, '2012-03-28', '2 x makeshift houses, approximately 376 square meters residential allotment and other minor improvements. The main improvement was burnt down some years ago.', 87, '164000', '0', '17000', '376', '2018-01-15 02:27:26', '2018-01-15 02:27:26', '0', '436'),
(39, '2012-04-23', '4 bedrooms stand alone residence, approximately 89.65 square meters of low set plus other minor improvements. It is situated on approximately 514 square meters of residential allotment in Lae City.', 88, '128000', '0', '192000', '514', '2018-01-15 03:25:30', '2018-01-15 03:25:30', '0', '249'),
(40, '2012-01-23', '4 bedrooms stand alone residence with en-suite, approximately 186.2 square meters plus other minor improvements. It is situated on approximately 1,558 square meters of residential allotment in Lae City.', 89, '545300', '0', '418700', '1558', '2018-01-15 03:36:24', '2018-01-15 03:36:24', '0', '350'),
(41, '2012-06-07', 'Two level 2 x  bedroom quadruple with a total floor area of approximately 379.04 square meters, plus other improvements. They are situated on a 1 100 square meters residential allotment in Lae City.', 90, '385000', '0', '489000', '1100', '2018-01-15 04:01:54', '2018-01-15 04:01:54', '0', '350'),
(42, '2012-06-07', 'Two level 3 x bedroom quadruple containing a total floor area of approximately 494 square meters, plus other improvements. They are situated on a 1 100 square meters residential allotment in Lae City.', 91, '385000', '0', '598000', '1100', '2018-01-15 04:09:53', '2018-01-15 04:09:53', '0', '350'),
(43, '2012-05-29', '3 x bedroom residence with en-suite containing a total floor area of approximately 286.25 square meters, plus other improvements.They are situated on a 1 082 square meters residential allotment in Lae City.', 92, '379000', '0', '1517000', '1082', '2018-01-15 05:04:01', '2018-01-15 05:04:01', '0', '350'),
(44, '2012-05-29', '3 x bedroom residence containing a total floor area of approximately 214.50 square meters, plus other improvements. They are situated on a 1 100 square meters residential allotment in Lae City.', 93, '330000', '0', '449000', '1100', '2018-01-15 05:10:06', '2018-01-15 05:10:06', '0', '300'),
(45, '2011-12-12', '3 bedrooms stand alone residence, approximately 158.3 square meters of low set  plus other minor improvements. It is situated on approximately 1,277 square meters of residential allotment in Lae City.', 94, '717674', '0', '262326', '1277', '2018-01-15 05:33:24', '2018-01-15 05:33:24', '0', '562'),
(46, '2013-11-19', 'Erected on the property are 2 x semi permanent bed-sitter flats plus other improvements. They are situated on a land area of approximately 432 square meters.', 95, '56000', '0', '230000', '432', '2018-01-15 06:35:50', '2018-01-15 06:35:50', '0', '130'),
(47, '2013-07-19', 'The property comprises a Supermarket/Wholesale Building plus other improvements. It is situated on a land area of approximately 1 500 square meters.', 96, '428000', '0', '469000', '1500', '2018-01-15 06:50:18', '2018-01-15 06:50:18', '0', '285'),
(48, '2013-04-29', '3 x 1 bedroom flat of 87.5 square meters. It is situated on a 450 square meters residential allotment in Lae City.', 97, '72000', '0', '88000', '450', '2018-01-15 07:16:36', '2018-01-15 07:16:36', '0', '160'),
(49, '2013-09-24', 'Erected on the property is a two level multi tenanted Commercial Complex. It is situated on a land area of    approximately    1, 500 square meters.', 98, '0', '0', '703000', '1321', '2018-01-15 08:32:48', '2018-01-15 08:32:48', '0', '0'),
(50, '2013-09-24', '3 x bedroom residence fully fenced. The proposed development is to comprise a two level shop complex comprising a gross floor area of 5, 563.8 square meters. It is situated on a 1, 821 square meters of residential allotment in Town of Madang.', 99, '1238000', '0', '208000', '1821', '2018-01-15 09:06:36', '2018-01-15 09:06:36', '0', '680'),
(51, '2013-09-24', 'Two level shop/residence building plus other improvements. It is situated on 1, 217 square meters of commercial allotment in Town of Madang.', 100, '1175000', '0', '1453000', '1217', '2018-01-15 09:13:22', '2018-01-15 09:13:22', '0', '965'),
(52, '2013-09-24', 'Two levels residence/shop building commonly known as the “Light foot House” and a detached two level residence/warehouse building plus other improvements. They are situated on a 1, 431 square meters of commercial allotment in Town of Madang.', 101, '887000', '0', '4986000', '1431', '2018-01-15 09:53:17', '2018-01-15 09:53:17', '0', '620'),
(53, '2013-09-24', '5 bedroom residence and 2 x detached 2 bedroom residences plus other improvements. They are situated on a 1, 669 square meters of residential allotment in Town of Madang.', 102, '876000', '0', '717000', '1669', '2018-01-15 10:09:37', '2018-01-15 10:09:37', '0', '525'),
(54, '2013-09-24', 'Vacant land known as Allotment 33 Section 64 of Madang Town is relatively level and is below the street levelly. It has a frontage of 120 square meters and a depth of 60 meters occupying a total land area of 7 200 square meters.There are no site improvements and the land is assessed as vacant.', 103, '4680000', '0', '0', '7200', '2018-01-15 10:24:13', '2018-01-15 10:24:13', '0', '650'),
(55, '2013-07-23', 'Two level executive residential dwelling recently refurbished. The building comprises a gross floor area of approximately 298.32 square meters. Contains 2 x bedrooms, 1 x master bedroom, lounge/dining, kitchen, toilet/ shower on upper floor and the ground floor comprises entertainment area, kitchen, 1 x self contained room, an office, laundry, shower and a carport.', 104, '550000', '0', '1439000', '1100', '2018-01-15 10:41:41', '2018-01-15 10:41:41', '0', '500'),
(56, '2013-09-25', 'Three levels retail/shop building commonly known as the “Kasagten House” shed plus other improvements. It is situated on a 806 square meters of commercial allotment in Town of Madang.', 105, '629000', '0', '4974000', '806', '2018-01-16 02:38:29', '2018-01-16 02:38:29', '0', '780'),
(57, '2013-09-25', 'Two levels office building commonly known as the “Modilon House” and adjoined open shed plus other improvements. They are situated on a 1, 517 square meters of residential allotment in Town of Madang.', 106, '1207000', '0', '4895000', '1578', '2018-01-16 02:45:47', '2018-01-16 02:45:47', '0', '765'),
(58, '2013-09-25', 'Two levels retail/shop building known as the “J & Z Shopping Center” plus other improvements. It is situated on 986 square meters of consolidated commercial allotments in Town of Madang.', 107, '665000', '0', '3828000', '986', '2018-01-16 02:53:21', '2018-01-16 02:53:21', '0', '674'),
(59, '2013-09-25', 'Ground level shop building known as the “J & Z Trading Limited” used as fast food plus other improvements. It is situated on 574 square meters of consolidated commercial allotments in Town of Madang.', 108, '402000', '0', '1015000', '574', '2018-01-16 03:00:50', '2018-01-16 03:00:50', '0', '700'),
(60, '2013-09-25', '3 x bedroom executive residence and a detached shed/storage building. They are situated on a 1, 578 square meters of residential allotment in Town of Madang.', 109, '868000', '0', '1060000', '1578', '2018-01-16 03:11:50', '2018-01-16 03:11:50', '0', '550'),
(61, '2013-03-20', '4 x bedroom residence comprising a floor area of approximately 115.16 square meters plus other improvements. It is situated on approximately 521 square meters of residential allotment in Lae City.', 110, '180000', '0', '257000', '521', '2018-01-16 03:22:04', '2018-01-16 03:22:04', '0', '345'),
(62, '2013-03-12', '2 level transit accommodation and recently constructed 2 level 5 x rooms  residence building plus other improvements. They are situated on approximately 1, 288 square meters  of land in Kamkumung area of Lae City.', 112, '150000', '0', '541000', '600', '2018-01-16 03:30:50', '2018-01-16 03:30:50', '0', '250'),
(63, '2013-06-17', 'Land is hilly and sloping towards the main Highlands Highway. It covers a land area of approximately 7. 650 square meters. Site improvements include semi permanent residences for individual family members and a trade store with residence on top.', 113, '4973000', '0', '324000', '76500', '2018-01-16 03:58:20', '2018-01-16 03:58:20', '0', '65'),
(64, '2013-04-22', 'Two level bed-sitter flat containing 15 rooms with common kitchen and ablution plus other improvements. It is situated on approximately 600 square meters of residential allotment in Lae City.', 111, '207000', '0', '375000', '600', '2018-01-16 04:18:32', '2018-01-16 04:18:32', '0', '345'),
(65, '2014-07-14', '3 x bedroom residence plus other improvements. It is situated on a total land area of 450 square meters.', 114, '106000', '0', '231000', '450', '2018-01-16 04:49:36', '2018-01-16 04:49:36', '0', '235'),
(66, '2014-05-06', 'Two levels 3 x bedrooms residence and a 2 x bedroom unit on ground floor plus other improvements. It is situated on a total land area of 809 square meters.', 115, '243000', '0', '683000', '809', '2018-01-16 05:19:01', '2018-01-16 05:19:01', '0', '300'),
(67, '2014-08-08', 'Two level 6 x 2 bedroom apartments, guard house and a barbecue area.', 116, '125000', '0', '1727000', '834', '2018-01-16 05:57:33', '2018-01-16 05:57:33', '0', '150'),
(68, '2014-08-08', 'A ground level 4 x bedrooms residence including all normal fixtures, fittings and septic  systems plus other improvements.', 117, '132000', '0', '557000', '881', '2018-01-16 06:04:56', '2018-01-16 06:04:56', '0', '150'),
(69, '2014-08-12', 'A Low cost 8 x 1 room bed-sitter residence including all normal fixtures, fittings and septic systems plus other\nImprovements.', 118, '134000', '0', '120000', '670', '2018-01-16 06:14:19', '2018-01-16 06:14:19', '0', '200'),
(70, '2014-08-12', 'Medium Cost 3 x bedrooms residence including all normal fixtures, fittings and septic  systems plus other improvements.', 119, '108000', '0', '200000', '540', '2018-01-16 07:28:52', '2018-01-16 07:28:52', '0', '200'),
(71, '2014-08-11', 'Low set 3 x bedrooms residence and a detached 1 x bedroom residence including all normal fixtures, fittings and septic  systems plus other improvements.', 120, '97000', '0', '180000', '972', '2018-01-16 07:34:59', '2018-01-16 07:34:59', '0', '100'),
(72, '2014-08-14', 'Office building comprising 12 office cubicles of varying floor area, conference room, a male/female rest room and storage rooms, warehouse building occupying a gross floor area of approximately 217.5 square meters and two bedroom duplex residence constructed on concrete slab base overlaid with ceramic tiles, masonry block walls and steel frame structures, part hardboard and concrete internal lining with ceramic tiles splash backs to wet areas, hardboard ceiled through out under klip lock iron roofing', 121, '0', '0', '116400', '19770', '2018-01-16 07:51:21', '2018-01-16 07:51:21', '0', '0'),
(73, '2014-04-28', 'A semi-permanent church building as described including all normal fixtures, fittings and septic  systems plus other improvements.', 122, '113000', '0', '142000', '900', '2018-01-16 07:59:18', '2018-01-16 07:59:18', '0', '125'),
(74, '2014-05-02', 'A 3 x bedrooms executive residence As described including all normal fixtures, \nfittings and septic  systems plus other improvements.', 123, '912000', '0', '1347000', '1200', '2018-01-16 08:09:31', '2018-01-22 03:20:44', '0', '760'),
(75, '2014-12-04', 'High set medium cost 3 x bedroom residence plus other\nimprovements. It is situated on a land area of approximately 810\nsquare meters.', 124, '263000', '0', '337000', '810', '2018-01-16 08:20:43', '2018-01-16 08:20:43', '0', '325'),
(76, '2015-01-20', 'Two level medium cost 4 x 2 bedroom units  including all normal fixtures, fittings\nand septic systems plus other improvements.', 125, '250000', '0', '650000', '752', '2018-01-16 09:10:15', '2018-01-16 09:10:15', '0', '332'),
(77, '2014-11-30', 'A low set split level 3 x bedrooms residence and  a detached 4 x bedroom residence including all normal fixtures, fittings and septic  systems plus \nother improvements.', 126, '192000', '0', '180000', '640', '2018-01-16 09:23:05', '2018-01-16 09:23:05', '0', '300'),
(78, '2008-02-12', 'Warehouses containing office/storage and workshop as described including all normal  fixtures, fittings and sewerage installation plus other improvements.', 127, '8887000', '0', '13603000', '44430', '2018-01-16 09:42:38', '2018-01-16 09:42:38', '0', '200'),
(79, '2015-03-27', '4 bedroom house including all normal fixtures, fittings and septic  systems plus other improvements.', 128, '1000000', '0', '200000', '1291', '2018-01-16 09:56:23', '2018-01-16 09:56:23', '0', '775'),
(80, '2015-01-23', 'Two level medium cost 7 x bedroom residence plus other improvements.\nIt is situated on a total land area of 1, 449 square meters.', 129, '200000', '0', '300000', '1449', '2018-01-16 10:20:44', '2018-01-16 10:20:44', '0', '138'),
(81, '2014-07-29', 'High set 3 x bedroom high cost residence plus other improvements. It is situated on a total land area of 1, 221 square meters', 130, '122000', '0', '353000', '1221', '2018-01-16 10:32:53', '2018-01-16 10:32:53', '0', '100'),
(82, '2013-08-19', 'Residential property improved with a High Set three bedroom structure. It is fenced with trim-deck and cyclone mesh wire. A vacant land fully fenced with mesh wire fencing of approximately 1.8 meters high to a manual gate.', 131, '280000', '0', '1355000', '800', '2018-01-16 10:49:20', '2018-01-16 10:49:20', '0', '350'),
(83, '2013-02-19', '3 x bedroom residence comprising an area of approximately 178.50 square meters plus other minor improvements. It is situated on approximately 1012 square meters of residential allotment.', 132, '272000', '0', '533000', '1012', '2018-01-16 10:56:45', '2018-01-16 10:56:45', '0', '270'),
(84, '1999-09-09', 'The land is developed with warehouses, sheds, offices and accommodation.', 133, '150000', '0', '283000', '4000', '2018-01-16 11:09:17', '2018-01-16 11:09:17', '0', '38'),
(85, '2008-05-19', '2 x bedroom low covenant residence, approximately 96 square meters. It is situated on 500 square meters of residential allotment in the City of Lae.', 34, '45000', '0', '100000', '500', '2018-01-16 11:18:47', '2018-01-16 11:18:47', '0', '290'),
(86, '2008-05-19', 'f 2 x bedroom low covenant residence, approximately 96 square meters .\nIt is situated on 500 square meters of residential allotment in the City of Lae', 134, '45000', '0', '100000', '500', '2018-01-16 11:21:59', '2018-01-16 11:21:59', '0', '90'),
(87, '2013-04-03', 'Land is a regular shaped parcel. The general topography is level. Our inspection revealed that the land has been graveled and compacted.Site improvements are, approximately 1.8 meters high trim-deck fencing to steel posts and concrete posts a manual entrance gate.The yard is leveled, graveled and compacted. Stone walls around the frontage with proper concrete curbing and channeling. Container built canteen and semi permanent residences with corrugated iron roofing.', 135, '101000', '0', '45000', '807', '2018-01-17 02:28:28', '2018-01-17 02:28:28', '0', '125'),
(88, '2007-08-11', '3 bedroom high cost residence with security fencing, approximately 88.4 square meters . It is situated on 800 square meters of residential allotment in the City of Lae.', 136, '64000', '0', '160000', '800', '2018-01-17 02:36:41', '2018-01-17 02:36:41', '0', '80'),
(89, '2017-10-23', 'Erected on the property is a ground level commercial building plus other improvements. Land Area: 3,186 square meters', 137, '1210000', '0', '890000', '3168', '2018-01-17 02:48:36', '2018-01-17 02:48:36', '0', '382'),
(90, '2007-05-04', 'Residential compound setting 5 x 2  bedroom houses, 3 bedroom duplexunits, block of 8 x bed-sitter units including all normal fixtures and \nFittings and septic system plus other\n minor improvements.', 138, '2400000', '0', '175000', '24000', '2018-01-17 02:56:00', '2018-01-17 02:56:00', '0', '100'),
(91, '2012-04-23', '4 bedrooms stand alone residence, approximately 89.65 square meters of low set   plus other minor improvements. It is situated on approximately 514 square meters of residential allotment in Lae City.', 139, '128000', '0', '192000', '514', '2018-01-17 03:02:59', '2018-01-17 03:02:59', '0', '249'),
(92, '2013-02-05', '2 bedroom duplex residence comprising a floor area of approximately 133.26 m2. It is situated on approximately 1,010 square meters of residential allotment in Lae City.', 140, '525000', '0', '224000', '1010', '2018-01-17 03:22:22', '2018-01-17 03:22:22', '0', '520'),
(93, '2007-01-15', '3 x 3 levels executive residential units plus other minor improvements. It is situated on a 1, 600 square meters of residential allotment in the City of Lae.', 141, '340000', '0', '701000', '1695', '2018-01-17 03:31:31', '2018-01-17 03:31:31', '0', '200'),
(94, '2007-08-12', 'A stand alone low-set high covenant 3 bedrooms executive residence including all normal fixtures and fittings and  septic system plus other minor improvements.', 142, '195000', '0', '380000', '1300', '2018-01-17 03:37:33', '2018-01-17 03:37:33', '0', '150'),
(95, '2007-08-23', 'A stand alone low-set high covenant 3 bedrooms executive residence including all normal fixtures and fittings and  septic system plus other minor improvements.', 143, '195000', '0', '380000', '1300', '2018-01-17 03:44:32', '2018-01-17 03:44:32', '0', '150'),
(96, '2004-06-01', 'Two story 4 bedroom executive residence plus a two bedroom low set residence as described including all normal fixtures, fittings and sewerage installation plus other improvements, chattels and generator.', 144, '114000', '0', '335000', '1631', '2018-01-17 03:50:54', '2018-01-17 03:50:54', '0', '70'),
(97, '2001-07-09', '2 x Warehouse/Office/Residence as described including all normal fixtures, fittings and sewerage installation plus other improvements', 145, '140000', '0', '481000', '4012', '2018-01-17 03:56:34', '2018-01-17 03:56:34', '0', '35'),
(98, '2006-07-19', '5 x Bedrooms executive residence described plus other minor improvements  including all normal fixtures, fittings and  sewerage installation plus other  improvements and generator.', 146, '120000', '0', '480000', '1000', '2018-01-17 04:04:35', '2018-01-17 04:04:35', '0', '120'),
(99, '2009-02-11', '4 bedrooms executive residence including all normal fixtures and fittings and  sewerage system plus other minor improvements.', 147, '303000', '0', '521000', '1010', '2018-01-17 04:12:42', '2018-01-17 04:12:42', '0', '300'),
(100, '2007-02-12', 'A stand alone 5 bedrooms high setresidence including all normal fixtures\nand fittings and septic system  plus other minor improvements', 148, '96000', '0', '268000', '1200', '2018-01-17 04:23:05', '2018-01-17 04:23:05', '0', '80'),
(101, '2013-01-16', 'A stand alone low set residence as described including all normal fixtures, fittings, sewerage systems installation plus other improvements.', 149, '108000', '0', '72000', '540', '2018-01-17 04:32:53', '2018-01-17 04:32:53', '0', '200'),
(102, '2006-12-04', '3 bedroom high set high cost  residence with an office as described\nincluding all normal fixtures, fittings  and sewerage installation plus other improvements.', 150, '125000', '0', '138000', '1246', '2018-01-17 04:38:23', '2018-01-17 04:38:23', '0', '100'),
(103, '2011-08-17', 'Warehouse, Office/Residence, Storage Residential Quarters Buildings as described  including all normal fixtures, fittings and septic systems plus other improvements.', 151, '1017000', '0', '1287000', '1695', '2018-01-17 04:44:56', '2018-01-17 04:44:56', '0', '600'),
(104, '2017-11-15', '2 x bedroom residence with an extension of 2 x rooms occupying gross floor area of approximately 90 square meters.', 152, '0', '150000', '0', '800', '2018-01-17 04:58:14', '2018-01-17 04:58:14', '0', '0'),
(105, '2013-08-22', 'Warehouse building with mezzanine offices and an adjoined two level residence/office/shop building. They are situated on a land area of   approximately 1, 499 square meters.', 153, '1169000', '0', '2791000', '1499', '2018-01-17 05:08:57', '2018-01-17 05:08:57', '0', '780'),
(106, '2012-01-18', '3 x bedroom residence as described including all normal fixtures, fittings, sewerage  systems installation plus other improvements.', 154, '141000', '0', '163000', '468', '2018-01-17 05:27:42', '2018-01-17 05:27:42', '0', '301'),
(107, '2007-05-02', '5 x 2 bedroom 2 levels residential units including all normal fixtures and fittings and septic system plus other minor improvements.', 155, '56000', '0', '294000', '800', '2018-01-17 05:35:59', '2018-01-17 05:35:59', '0', '70'),
(108, '2017-10-23', '1 x 3 bedroom colonial residence comprising a gross floor area of approximately 183 square meters plus other improvements.', 156, '1720000', '0', '80000', '1787', '2018-01-17 05:47:11', '2018-01-17 05:47:11', '0', '963'),
(109, '2017-10-22', '3 x bedroom residential building plus other improvements.\nLand Area:  1,593 square meters.', 157, '640000', '0', '30000', '1593', '2018-01-17 05:59:13', '2018-01-17 05:59:13', '0', '400'),
(110, '2014-03-03', 'A total of 15.94 hectares of customary Land surveyed and pegged as described. Includes all structures and the  cash crops.', 158, '3891000', '0', '617000', '159400', '2018-01-17 06:54:16', '2018-01-17 06:54:16', '0', '24'),
(111, '2014-03-03', '3 x bedroom residence building with detached 2 x bedroom residence as described including all normal  fixtures, fittings and septic  systems plus other improvements', 159, '820000', '0', '514000', '1600', '2018-01-17 06:59:05', '2018-01-17 06:59:05', '0', '513'),
(112, '2014-03-03', '3 x bedroom residence building with detached 2 x kit homes as described including all normal fixtures, fittings and septic systems plus other improvements.', 160, '961000', '0', '678000', '1600', '2018-01-17 07:05:01', '2018-01-17 07:05:01', '0', '600'),
(113, '2017-03-06', '2 level 6 x 2 bedroom units and 2 x 3 bedroom units residential building plus other improvements. Land Area: 1,652 square meters.', 161, '1289000', '0', '3661000', '1652', '2018-01-17 07:13:34', '2018-01-17 07:13:34', '0', '780'),
(114, '2014-04-24', '3 x bedroom executive residence as described including all normal fixtures, fittings and septic systems plus other site improvements.', 162, '585000', '0', '772000', '900', '2018-01-17 07:20:01', '2018-01-17 07:20:01', '0', '650'),
(115, '2017-02-22', '2 level 4 x bedroom residential building plus other improvements', 163, '1200000', '0', '1000000', '3592', '2018-01-17 07:35:23', '2018-01-17 07:35:23', '0', '334'),
(116, '2007-08-30', '3 Bedroom duplex residence and other improvements as described including all normal fixtures,  fittings and sewerage installation and \nother improvements.', 164, '43000', '0', '461000', '946', '2018-01-17 08:02:48', '2018-01-17 08:02:48', '0', '45'),
(117, '2007-08-17', 'Warehouse/office/workshop as  described including all normal fixtures, \nfittings, installation plus other minor  improvements', 165, '812000', '0', '812000', '2319', '2018-01-17 08:07:25', '2018-01-17 08:07:25', '0', '350'),
(118, '2012-09-13', 'Offices and warehouses/storage as described including all normal fixtures,  fittings and septic installation and other  improvements.', 166, '7276000', '0', '7691000', '18190', '2018-01-17 08:12:33', '2018-01-17 08:12:33', '0', '400'),
(119, '2007-08-17', '3 Bedroom residence and staff quarters as  described including all normal fixtures,  fittings and septic installation and  other improvements.', 167, '192000', '0', '164000', '1919', '2018-01-17 08:16:39', '2018-01-17 08:16:39', '0', '100'),
(120, '2012-10-28', '4 x warehouses and offices and duplex flats as described including all normal fixtures,  fittings and sewerage installation and  other improvements', 168, '1770000', '0', '4075000', '3934', '2018-01-17 08:20:40', '2018-01-17 08:20:40', '0', '450'),
(121, '2007-08-30', 'Warehouse/office/workshop as described including all normal fixtures, \nfittings, installation plus other minor  improvements.', 169, '79000', '0', '220000', '2319', '2018-01-17 08:25:00', '2018-01-17 08:25:00', '0', '34'),
(122, '2012-10-28', '3 x bedroom high cost residence as described including all normal fixtures,  fittings and sewerage installation and  other improvements.', 170, '393000', '0', '391000', '1121', '2018-01-17 08:30:24', '2018-01-17 08:30:24', '0', '350'),
(123, '2012-09-14', 'Warehouse/Factory buildings with offices and Staff residences. They are situated on a total of approximately 18, 940 square meters light industrial allotments in Lae.', 171, '6629000', '0', '3177000', '18940', '2018-01-17 08:34:43', '2018-01-17 08:34:43', '0', '350'),
(124, '2009-02-12', 'A stand alone high covenant 3 bedrooms residence including all normal fixtures and fittings and  sewerage system plus other minor improvements', 172, '480000', '0', '186000', '1600', '2018-01-17 09:07:14', '2018-01-17 09:07:14', '0', '300'),
(125, '2012-05-18', 'Workshop with mezzanine floor, Office/Residence as described including all normal fixtures, fittings and septic systems plus other improvements.', 173, '2036000', '0', '3952000', '2600', '2018-01-17 09:15:40', '2018-01-17 09:15:40', '0', '783'),
(126, '2006-08-08', 'A Shop and Flat buildings as described including \nall normal fixtures, fittings and sewerage installation plus  other improvements & generator', 174, '1150000', '0', '2268000', '4600', '2018-01-17 09:21:56', '2018-01-17 09:21:56', '0', '250'),
(127, '2005-09-07', 'commercial shop building, approximately 757.68 square meters of . \nIt is situated on 1,000 square meters of Commercial allotment in Lae.', 175, '425000', '0', '525000', '1000', '2018-01-17 09:31:44', '2018-01-17 09:31:44', '0', '425'),
(128, '2017-10-10', 'High set 2 x bedroom residence building plus other improvements.\nLand Area:  688 square meters.', 176, '320000', '0', '170000', '688', '2018-01-17 09:45:32', '2018-01-17 09:45:32', '0', '465'),
(129, '2002-01-24', '2 x Warehouse/Storage plus Offices and Accommodation\nas described including all normal fixtures, fittings, and\nsewerage installation plus other improvements', 177, '596000', '0', '674000', '1988', '2018-01-17 09:57:05', '2018-01-17 09:57:05', '0', '300'),
(130, '2014-04-28', 'A factory building with mezzanine offices and a warehouse building plus hardstand yard as described including all normal  fixtures, fittings and septic system plus other improvements.', 178, '4480000', '0', '5564000', '12800', '2018-01-17 10:53:55', '2018-01-17 10:53:55', '0', '350'),
(131, '2005-06-16', 'Vacant commercial land (3 x allotments', 179, '110000', '0', '0', '1203.93', '2018-01-17 11:08:30', '2018-01-17 11:08:30', '0', '91'),
(132, '2005-04-05', 'Shopping complex, approximately 1570.6 square meters and associated improvements as described including all normal fixtures,  fittings and sewerage installation.', 180, '510000', '0', '1240000', '2546', '2018-01-18 02:26:50', '2018-01-18 02:26:50', '0', '200'),
(133, '2005-07-06', '4 x 2 bedroom units as described  including all normal fixtures, fittings and sewerage installation plus other improvements.', 181, '26000', '0', '174000', '1287', '2018-01-18 02:41:50', '2018-01-18 02:41:50', '0', '20'),
(134, '2005-07-06', 'Warehouses and workshop buildings plus  offices as described including all normal  fixtures, fittings and sewerage installation plus other improvements.', 182, '65000', '0', '335000', '4312.43', '2018-01-18 02:48:44', '2018-01-18 02:48:44', '0', '15'),
(135, '2005-07-06', '2 blocks of 3 x 2 bedroom units as  described including all normal fixtures,  fittings and sewerage installation plus other improvements.', 183, '32000', '0', '256000', '1272', '2018-01-18 02:57:29', '2018-01-18 02:57:29', '0', '25'),
(136, '2005-07-06', '5 x 3 bedrooms low cost residence as  described including all normal fixtures,  fittings and sewerage installation plus other improvements.', 184, '27000', '0', '115000', '1337', '2018-01-18 03:03:12', '2018-01-18 03:03:12', '0', '20'),
(137, '2005-07-06', 'Warehouse building as described including all normal fixtures, fittings and sewerage  installation plus other improvements.', 185, '188000', '0', '176000', '1879', '2018-01-18 03:09:30', '2018-01-18 03:09:30', '0', '100'),
(138, '2014-10-24', '3 x bedroom residence building with 2 x rooms and laundry on ground floor as described including all normal fixtures, fittings and septic systems plus other improvements', 186, '225000', '0', '223000', '850', '2018-01-18 03:22:50', '2018-01-18 03:22:50', '0', '265'),
(139, '2014-04-07', '3 bedroom residence as described including all normal fixtures, fittings plus other improvements.', 187, '414000', '0', '107000', '1379', '2018-01-18 03:29:18', '2018-01-18 03:29:18', '0', '300'),
(140, '2007-01-11', 'Executive 3 x 3 bedroom residential apartment as described including all normal fixtures, fittings and sewerage  installation plus other improvements.', 188, '320000', '0', '1570000', '1600', '2018-01-18 03:43:31', '2018-01-18 03:43:31', '0', '200'),
(141, '2008-01-11', 'Office/Warehouse plus shed and workshop/ office buildings together with all normal fixtures and fittings and sewerage system plus other minor improvements.', 189, '22000000', '0', '9112000', '55416', '2018-01-18 03:48:54', '2018-01-18 03:48:54', '0', '397'),
(142, '2008-01-11', '3 bedroom house as described including all normal fixtures, fittings and sewerage  installation plus other improvements & generator.', 190, '270000', '0', '233000', '1800', '2018-01-18 03:53:20', '2018-01-18 03:53:20', '0', '150'),
(143, '2008-02-07', '4 x bedrooms residences  high cost Residence as described including all normal fixtures,  fittings and sewerage installation plus other improvements.', 191, '106000', '0', '373000', '1060', '2018-01-18 04:08:33', '2018-01-18 04:08:33', '0', '100'),
(144, '2008-02-04', 'Warehouse , residence as described including all normal fixtures and fittings  and septic plus other improvements.', 192, '165000', '0', '428600', '3667', '2018-01-18 04:15:08', '2018-01-18 04:15:08', '0', '45'),
(145, '2013-01-09', '2 x warehouses/Offices with mezzanine  floors and residences as described including all normal fixtures, fittings,  sewerage systems installation plus other improvements', 193, '1700000', '0', '5175000', '2000', '2018-01-18 04:33:55', '2018-01-18 04:33:55', '0', '850'),
(146, '2013-01-09', '2  x 2 level unit complexes  as described including all normal fixtures, fittings, sewerage  systems installation plus other improvements.', 194, '512000', '0', '1680000', '1138', '2018-01-18 04:38:25', '2018-01-18 04:38:25', '0', '450'),
(147, '2014-09-12', '3 x bedrooms duplex including all normal fixtures, fittings and septic \n systems plus other improvements.', 195, '506000', '0', '734000', '1011', '2018-01-18 04:46:24', '2018-01-18 04:46:24', '0', '500'),
(148, '2017-01-27', '2 level residential building comprising 5 x 2 	bedroom units to the top floor and 5 x 2 bedroom 	units to the ground floor with extended laundry and 	walkway areas.', 196, '220000', '0', '1670000', '810', '2018-01-18 04:55:30', '2018-01-18 04:55:30', '0', '270'),
(149, '2002-02-21', 'Commercial Shop / Office / Restaurant as described including all normal fixtures, fitting and septic installation plus other improvements.', 197, '115000', '0', '557000', '640', '2018-01-18 05:10:21', '2018-01-18 05:10:21', '0', '180'),
(150, '2002-01-11', 'Commercial Building as described including all normal fixtures, fitting and septic installation plus other			\nimprovements.', 198, '84000', '0', '156000', '560', '2018-01-18 05:36:04', '2018-01-18 05:36:04', '0', '150'),
(151, '2002-01-11', 'Industrial Buildings as described including all normal fixtures, fitting and septic installation plus other improvements.', 199, '103000', '0', '221000', '560', '2018-01-18 05:42:35', '2018-01-18 05:42:35', '0', '184'),
(152, '2017-08-02', '3 x bedroom residence plus other improvements. Land Area:  1,000 square meters.', 200, '140000', '0', '240000', '1000', '2018-01-18 05:55:39', '2018-01-18 05:55:39', '0', '140'),
(153, '2012-10-23', '2 level 3 bedroom residence  as described including all normal fixtures, \n fittings, septic systems installation plus other improvements.', 201, '125000', '0', '310000', '452', '2018-01-18 06:08:21', '2018-01-18 06:08:21', '0', '277'),
(154, '2012-03-20', '3 x 2 level 3 bedroom houses as described including all normal fixtures, fittings, sewerage systems installation plus other improvements.', 202, '551000', '0', '968000', '1011', '2018-01-18 06:51:42', '2018-01-18 06:51:42', '0', '545'),
(155, '2014-04-02', '3 x adjoining ground level shop buildings  as described including all normal fixtures,\nfittings and septic systems plus other improvements.', 203, '2398000', '0', '4043000', '2180', '2018-01-18 11:15:26', '2018-01-18 11:15:26', '0', '1100'),
(156, '2014-04-02', '2 x split level town houses with enclosed garage and bar/pool facilities as described including all normal fixtures, fittings and sewerage systems plus other improvements.', 204, '1139000', '0', '6132000', '1340', '2018-01-21 02:16:18', '2018-01-21 02:16:18', '0', '850'),
(157, '2014-04-02', 'A two level apartment building comprising 8 x 2 bedroom units as described including all normal fixtures, fittings and sewerage  systems plus other improvements.', 205, '1166000', '0', '4371000', '1555', '2018-01-21 02:22:11', '2018-01-21 02:22:11', '0', '750'),
(158, '2014-04-02', 'A two story apartment building  comprising 9 x units as described  including all normal fixtures, fittings  and sewerage systems plus other improvements.', 206, '1125000', '0', '5579000', '1500', '2018-01-21 02:28:33', '2018-01-21 02:28:33', '0', '750'),
(159, '2014-04-02', 'Two levels 10 x 3 bedroom apartment building as described including all normal fixtures, fittings and septic systems plus other improvements.', 207, '551000', '0', '2788000', '1029', '2018-01-21 02:35:41', '2018-01-21 02:35:41', '0', '535'),
(160, '2014-04-02', '2 x warehouse building with offices & sheds as described including all normal fixtures, fittings and septic system plus other improvements.', 208, '1540000', '0', '3515000', '4000', '2018-01-21 02:41:59', '2018-01-21 02:41:59', '0', '385'),
(161, '2014-04-02', '2 x warehouse building with offices & sheds as described including all normal fixtures, fittings and septic system plus other improvements.', 209, '1540000', '0', '2939000', '4000', '2018-01-21 02:46:58', '2018-01-21 02:46:58', '0', '385'),
(162, '2017-10-11', 'Trade store and 2 x detached residential houses plus other improvements. Land Area: 800 square meters.', 210, '120000', '0', '60000', '800', '2018-01-21 10:56:22', '2018-01-21 10:56:22', '0', '150'),
(163, '2008-11-08', 'Industrial warehouse including all normal fixtures, fittings and sewerage installation plus other improvements and standby generator.', 211, '3501000', '0', '3855000', '3890', '2018-01-21 11:09:28', '2018-01-21 11:09:28', '0', '900'),
(164, '2007-03-01', 'Commercial shop, offices, showrooms and residence as described including all						                        \nnormal fixtures, fittings and septic installation.', 212, '310400', '0', '1189600', '776', '2018-01-22 02:35:47', '2018-01-22 02:35:47', '0', '400'),
(165, '2007-08-30', 'Block of 4 x 2 bedroom residential units including all normal fixtures and fittings  and sewerage, approximately 294 square meters plus other minor improvements.', 213, '64000', '0', '368000', '800', '2018-01-22 02:54:01', '2018-01-22 02:54:01', '0', '80'),
(166, '2011-12-31', 'A compound of medium and high cost residences comprising a mixture of stand alone houses, duplexes and flats plus other minor improvements. They are situated on a 20,000 square meters of residential allotment in Lae City.', 70, '5000000', '0', '5881000', '20000', '2018-01-22 03:03:48', '2018-01-22 03:04:34', '0', '250'),
(167, '2008-10-01', '2 x adjoining land portions with institutional developments including primary and secondary schools, vocational and seminary colleges as well as a coffee plantation and other associated improvements. They are situated on approximately a total 542.68 hectares of adjoining land portions within Warakar Area, Town of Banz - Western Highlands Province.', 214, '11464800', '0', '0', '4644100', '2018-01-22 03:44:34', '2018-01-22 03:44:34', '0', '2.5'),
(168, '2007-09-19', '20 x rooms motel, approximately 562 square meters of. It is situated on 1,929 square meters of residential allotments in the City of Lae.', 217, '675000', '0', '1264000', '1929', '2018-01-22 05:48:11', '2018-01-22 05:48:11', '0', '350'),
(169, '2011-05-17', '2 levels, 6 x 2 bedrooms units, Approximately 512.0 square meters, plus other improvements. It is situated on approximately 1, 000 square meters residential allotment in Lae City.', 218, '550000', '0', '861000', '1000', '2018-01-22 05:56:38', '2018-01-22 05:56:38', '0', '550'),
(170, '2008-01-28', 'Warehouse comprising office, storage as well as toilet facilities and other minor improvements. It is situated on 2,334.53 square meters of industrial allotment in the City of Lae.', 219, '817000', '0', '966000', '2334.53', '2018-01-22 07:16:14', '2018-01-22 07:16:14', '0', '350'),
(171, '2008-01-28', '5 x industrial warehouses containing mainly storage and offices. These are situated on approximately 1,180 square meters of residential allotment, within Papuan Compound Area, City of Lae.', 220, '8887000', '0', '13603000', '1180', '2018-01-22 07:24:54', '2018-01-22 07:24:54', '0', '7531'),
(172, '2008-01-28', 'Executive 4 x bedrooms residence including all normal fixtures and fittings and sewerage system plus other minor improvements.', 221, '104000', '0', '506000', '1038', '2018-01-22 07:30:47', '2018-01-22 07:30:47', '0', '100'),
(173, '2015-01-21', 'The property is a vacant land which is fenced and leveled.', 222, '260000', '0', '0', '1189', '2018-01-22 07:41:38', '2018-01-22 07:41:38', '0', '219'),
(174, '2015-01-21', 'The property is a vacant land which is fenced and leveled.', 223, '300000', '0', '0', '1482', '2018-01-22 07:49:42', '2018-01-22 07:49:42', '0', '202'),
(175, '2011-06-01', 'Warehouse building, approximately 990.0 square meters plus other improvements. It is situated on a 2,000 square meters general industrial allotment in Lae City.', 224, '1600000', '0', '1011000', '2000', '2018-01-22 08:03:29', '2018-01-22 08:03:29', '0', '800'),
(176, '2011-08-17', 'Warehouse, Residence/Office, Storage & Residential Quarters buildings plus other improvements. They are situated on a 1,695 square meters general industrial allotment in Lae City.', 226, '1017000', '0', '1287000', '1695', '2018-01-22 08:11:48', '2018-01-22 08:11:48', '0', '600'),
(177, '2011-01-23', 'Warehouses/Workshops/Residence/Office and associated improvements as described including all normal fixtures, fittings and septic system together with other improvements and generators.', 228, '1715000', '0', '6160000', '9800', '2018-01-22 08:34:27', '2018-01-22 08:34:27', '0', '175'),
(178, '2010-09-22', 'Workshop/Shed building as described including all normal fixtures, fittings and septic installation together with other improvements and generator.', 229, '1173000', '0', '1497000', '9380', '2018-01-22 08:39:08', '2018-01-22 08:39:08', '0', '125');
INSERT INTO `valuations` (`id`, `date`, `description`, `property_id`, `land_component`, `insurance_value`, `improvement_component`, `area`, `created_at`, `updated_at`, `forced_sale_value`, `land_value_rate`) VALUES
(179, '2010-09-22', 'The property is vacant', 230, '715000', '0', '0', '6500', '2018-01-22 08:46:51', '2018-01-22 08:46:51', '0', '110'),
(180, '2010-09-11', '2 x residences & residential units/dongas with recreational building as described including all normal fixtures, fittings and septic systems plus other improvements as such water tanks & fencing.', 231, '1000000', '0', '2817000', '8330', '2018-01-22 08:51:41', '2018-01-22 08:51:41', '0', '120'),
(181, '2010-01-23', 'Warehouse Building plus other improvements. It is situated on 0.358 hectares of industrial allotment, outside City of Lae.', 232, '627000', '0', '1800000', '3580', '2018-01-22 08:58:58', '2018-01-22 08:58:58', '0', '175'),
(182, '2007-02-14', 'Vacant adjoining industrial blocks with chain mesh wire fencing. A total of 7,972 square meters of light industrial allotments', 233, '320000', '0', '14000', '8000', '2018-01-22 09:06:56', '2018-01-22 09:06:56', '0', '40'),
(183, '2011-11-18', 'The Land is vacant with no major improvements. It is graded and leveled with drainage on two sides of the allotment with access paved and graveled and a hard stand area. Open without fencing.', 234, '3156660', '0', '342250', '16188', '2018-01-22 09:19:08', '2018-01-22 09:19:08', '0', '195'),
(184, '2014-03-18', 'Coffee Mill comprising a wet and dry coffee factory as well as residences as\ndescribed including all normal fixtures,fittings and septic systems plus other improvements.', 235, '992000', '0', '1459000', '198400', '2018-01-22 09:32:00', '2018-01-22 09:32:00', '0', '5'),
(185, '2014-03-07', '2 x warehouse building plus other improvements. They are situated on 0.838 Hectares as per survey plan.', 236, '922000', '0', '2278000', '3810', '2018-01-22 09:55:02', '2018-01-22 09:55:02', '0', '242'),
(186, '2014-03-07', 'A warehouse building and 2 x detached residences plus other improvements.They are situated on a 3, 810 square meters commercial allotment Goroka, Eastern Highlands Province.', 237, '514000', '0', '278000', '3810', '2018-01-22 10:00:45', '2018-01-22 10:00:45', '0', '135'),
(187, '2014-03-07', 'Service Station, 2 x retail shops and a warehouse with mezzanine floor and a 2 level residence plus other improvements as described including all normal fixtures, fittings, septic systems installation', 238, '911000', '0', '2049000', '3196', '2018-01-22 10:07:45', '2018-01-22 10:07:45', '0', '285'),
(188, '2014-03-07', 'Vacant commercial land within Town of Kainantu. It is adequately drained; back filled with gravel and compacted.', 239, '449000', '0', '0', '2718', '2018-01-22 10:13:32', '2018-01-22 10:13:32', '0', '165'),
(189, '2014-03-07', '3 x 3 bedroom flats each comprising a floor area of approximately 96 square meters plus other improvements. They are situated on a 971 square meters residential allotment in Kainantu', 240, '146000', '0', '578000', '971', '2018-01-22 10:25:53', '2018-01-22 10:25:53', '0', '150'),
(190, '2014-03-07', 'Coffee Factory containing a gross floor area of approximately 632.43 square meters with a 2 level office and a recently constructed warehouse containing a floor area of approximately 532.93 square meters plus other improvements. They are situated on a 2 956 square meters of light industrial allotment in Kainantu Town.', 241, '739000', '0', '3560000', '2956', '2018-01-22 10:49:24', '2018-01-22 10:49:24', '0', '250'),
(191, '2014-03-07', 'Vacant Residential land located out of Kainantu Town. It is sloping from the street level to the rear having good views to Town of Kainantu.', 242, '441000', '0', '0', '3675', '2018-01-22 10:59:10', '2018-01-22 10:59:10', '0', '120'),
(192, '2014-03-07', '2 level 3 bedroom residence with 5 x rooms on ground floor, plus other improvements. They are situated on a 1, 619 square meters residential allotment in Town of Kainantu.', 243, '202000', '0', '477000', '1619', '2018-01-22 11:05:16', '2018-01-22 11:05:16', '0', '125'),
(193, '2014-03-07', '2 bedroom duplex flat, 3 semi permanent residences and fuel storage tanks plus other improvements. They are situated on a 3 000 square meters Commercial allotment in Town of Kainantu.', 244, '600000', '0', '72000', '3000', '2018-01-23 02:10:36', '2018-01-23 02:10:36', '0', '200'),
(194, '2014-03-07', '3 bedroom residence of approximately 81.42 square meters plus other improvements. It is situated on a 992 square meters residential allotment Goroka, Eastern Highlands Province.', 245, '249000', '0', '289000', '992', '2018-01-23 02:15:50', '2018-01-23 02:15:50', '0', '251'),
(195, '2014-03-20', '3 x bedroom residence with a 3 x bedroom unit on ground floor plus other improvements. It is situated on a total land area of 1, 012 square meters.', 246, '759000', '0', '522000', '1012', '2018-01-23 02:25:45', '2018-01-23 02:25:45', '0', '750'),
(196, '2014-02-05', 'Two levels 3 x 3 bedrooms executive units plus other improvements. It is situated on a total land area of 1, 593 square meters of residential allotment.', 247, '1354000', '0', '2275000', '1593', '2018-01-23 02:36:27', '2018-01-23 02:36:27', '0', '850'),
(197, '2017-06-28', 'Erected on the property is a makeshift shelter plus other improvements. Land Area:  421 square meters.', 248, '150000', '0', '0', '421', '2018-01-23 02:53:24', '2018-01-23 02:53:24', '0', '356'),
(198, '2012-05-09', '1.	Coffee Roasters factory  -  375 m2 + 283.4m2,\n2.	Office Building – 96.72m2 \n3.	Managing Director’s Residence – 208.75m2\n4.	4 x Staff Residences of varying floor area.\n5.	Plus other improvements.\nThey are situated on approximately 2.0 ha of allotment in Town of Goroka.', 249, '3000000', '0', '2033000', '20000', '2018-01-23 03:07:27', '2018-01-23 03:07:27', '0', '150'),
(199, '2013-12-04', 'Two Guest accommodation known as the “North Goroka Guest House” plus other minor improvements.They are situated on a land area of approximately        967 square meters of residential allotment.', 250, '387000', '0', '569000', '967', '2018-01-23 03:20:07', '2018-01-23 03:20:07', '0', '400'),
(200, '2012-12-20', '3 x bedroom residence plus other improvements. It is situated on a total of approximately 1, 015 square meters of Residential allotment in Town of Goroka.', 251, '269000', '0', '273000', '1015', '2018-01-23 03:29:53', '2018-01-23 03:29:53', '0', '265'),
(201, '2014-02-13', '3 x bedroom residence with conference room under main plus other improvements. It is situated on a total of approximately 1100.5 square meters of Residential allotment in Town of Goroka.', 252, '314000', '0', '309000', '1100.5', '2018-01-23 03:37:43', '2018-01-23 03:37:43', '0', '285'),
(202, '2012-12-20', 'Warehouse building, 2 x retail outlets with a 3 bedroom residence, 1 x fast food with preparation area plus other improvements. They are situated on a total of approximately 1 760 square meters of Commercial allotment in Town of Goroka.', 253, '1171000', '0', '3689000', '1760', '2018-01-23 03:44:58', '2018-01-23 03:44:58', '0', '665'),
(203, '2012-07-30', '2 level 4 x bedroom house with en suite and detached 2 bedrooms on ground floor plus other improvements. They are situated on an approximately 2 660 square meters of customary land outside of Town of Goroka.', 254, '319000', '0', '602000', '2660', '2018-01-23 04:23:23', '2018-01-23 04:23:23', '0', '120'),
(204, '2012-07-30', 'Area comprises;\ni.	Existing Lodge – 252.10m2\nii.	Proposed 2 level lodge – 1,318.86m2\niii.	GK Klos & Kaibar – 307.52m2\niv.	Warehouse – 110.40m2\nv.	Plus other Improvements\nThey are situated on an approximately 2, 048 square meters of Commercial Allotment in Town of Goroka.', 255, '1843000', '0', '5878000', '2048', '2018-01-23 04:30:28', '2018-01-23 04:30:28', '0', '900'),
(205, '2008-04-08', 'Office with attached workshop/sewing building as well as complementing developments including Offices, Residences (Single houses, Flats/Units, Barracks) plus other minors improvements. They are situated on 43.35 hectares of state leased (out of town) land currently used for mixed purposes.', 256, '2204000', '0', '7256000', '433500', '2018-01-23 04:39:03', '2018-01-23 04:39:03', '0', '5'),
(206, '2017-11-29', 'Unimproved as at date of inspection. Land Area:  1,179 square meters.', 257, '650000', '0', '0', '1179', '2018-01-23 04:51:20', '2018-01-23 04:51:20', '0', '551'),
(207, '2012-04-12', '8 x Bays extended from existing workshop and is assessed “AS IF COMPLETE”. It is situated on 3, 580 square meters of industrial allotments outside City of Lae.', 258, '537000', '0', '1502000', '3580', '2018-01-23 07:17:36', '2018-01-23 07:17:36', '0', '150'),
(208, '2017-03-15', 'High set duplex building with 2 x bedrooms per unit and storage on the ground floor plus other improvements. Land Area: 1,000 square meters.', 259, '400000', '0', '1200000', '1000', '2018-01-23 07:24:41', '2018-01-23 07:24:41', '0', '400'),
(209, '2017-03-15', '1.8 meters fencing with cyclone wire on galvanized posts and proper storm water drainage. It is used as storage yard occupied by removable 40 foot steel container accommodations with corrugated galvanized iron roofing.', 260, '3295000', '0', '0', '11980', '2018-01-23 07:36:43', '2018-01-23 07:36:43', '0', '275'),
(210, '2017-01-15', 'Improved with approximately 1.8 meters fencing with cyclone wire on galvanized posts and proper storm water drainage. It is used as storage yard occupied by removable 40 foot steel container accommodations.', 261, '1850000', '0', '0', '6730', '2018-01-23 07:42:30', '2018-01-23 07:42:30', '0', '275'),
(211, '2012-01-24', '2 levels high covenant 3 x bedroom residence with a self contained unit and extra 2 x 2 bedrooms units downstairs together with other associated improvements.\nThey are situated on approximately 844 square meters of residential allotment in Lae City.', 262, '376000', '0', '582000', '844', '2018-01-23 07:51:08', '2018-01-23 07:51:08', '0', '445'),
(212, '2012-11-01', '2 levels high covenant 3 x bedroom residence with carport and extra 2 x bedrooms downstairs, approximately 260.94 square meters of  together with other associated improvements. They are situated on approximately 844 square meters of residential allotment in Lae City.', 263, '376000', '0', '582000', '844', '2018-01-23 07:58:43', '2018-01-23 07:58:43', '0', '445'),
(213, '2012-01-12', '2 level high covenant 5 bedrooms stand alone residence plus,approximately 256.25 square meters of a  other minor improvements. It is situated on a 1,109.7 square meters residential allotment in Goroka Town.', 264, '133164', '0', '747836', '1109.7', '2018-01-23 08:13:36', '2018-01-23 08:13:36', '0', '120'),
(215, '2017-05-08', '2 x 2 level residential/office buildings plus other improvements.', 265, '300000', '0', '1100000', '809', '2018-01-23 08:33:07', '2018-01-23 08:33:07', '0', '370'),
(216, '2017-07-17', 'Fabrication factory setting with associated buildings comprises \n1 x Dual Level Administration Block\n4 x Manufacturing/Fabrication Sheds \n2 x Warehouses containing workshop and office/residence as well as complementing developments.\nThey are situated on a combined area of 27,000 square meters of industrial adjoining allotments within the City of Lae.', 266, '9450000', '0', '10900000', '27000', '2018-01-23 08:43:29', '2018-01-23 08:43:29', '0', '350'),
(217, '2009-02-11', '3 bedrooms executive residence with carport/storage and laundry under main, approximately 182.1 square meters of high set high covenant  plus other minor improvements. It is situated on approximately 1, 000 square meters of residential allotment in the City of Lae.', 267, '150000', '0', '356000', '1000', '2018-01-23 08:56:59', '2018-01-23 08:56:59', '0', '150'),
(218, '2006-01-24', 'Residence/office building, approximately 336 square meters of  with minor improvements including shed, kaibar and restaurant as well as fencing. They are situated on 8,490 square meters of industrial allotment within the Town of Kainantu.', 268, '127000', '0', '250000', '8490', '2018-01-23 09:08:54', '2018-01-23 09:08:54', '0', '15'),
(219, '2006-12-09', 'Industrial Warehouse containing storage, offices, mini processing plant plus other minor improvements. They are situated on approximately 13, 800 square meters of a corner industrial allotment', 269, '2200000', '0', '2490000', '4047', '2018-01-23 09:19:38', '2018-01-23 09:19:38', '0', '544'),
(220, '2006-11-14', 'Warehouse/storage, office & shop spaces and residential units, approximately 1,457.1 square meters of . It is situated on 4047 square meters of Industrial allotments, along Air corps road, main market area, City of Lae.', 270, '590000', '0', '1124000', '4047', '2018-01-23 09:27:41', '2018-01-23 09:27:41', '0', '145'),
(221, '2006-09-15', 'Office building, approximately 88.0 square meters of  plus associated buildings including warehouses and residences. It is situated on approximately 13,400.00 square meters of industrial allotment within the immediate main commercial & industrial vicinity of Madang Town.', 271, '1345000', '0', '725000', '13430', '2018-01-23 09:40:17', '2018-01-23 09:40:17', '0', '100'),
(222, '2004-03-03', 'Warehouse/Office building and a shed . They are  situated on a  7,796 square meters of industrial parcel of land  in Lae.', 272, '351000', '0', '6341000', '7796', '2018-01-23 09:45:49', '2018-01-23 09:45:49', '0', '45'),
(223, '2007-11-12', 'Land portion commonly within subject property known as Terminal Swampland. A total of 10, 940 square meters of industrial allotments classified as Terminal Swampland in the City  of Lae.', 273, '1094000', '0', '23000', '10940', '2018-01-23 09:56:09', '2018-01-23 09:56:09', '0', '100'),
(224, '2007-04-02', 'Warehouse containing storage, offices, restaurant and bakery, approximately 958.8 square meters of  with other minor improvements. It is situated on 4070 square meters of Industrial allotments in the City of Lae.', 274, '814000', '0', '906000', '4000', '2018-01-23 10:04:49', '2018-01-23 10:05:54', '0', '204'),
(225, '2007-05-04', 'Office, Factory, Storage/Workshop and freezer buildings, approximately a total of 1792.37 square meters of together with other minor improvements. These are situated on 4184 square meters of Light Industrial allotments in the City of Lae.', 275, '628000', '0', '1602000', '4184', '2018-01-23 10:22:22', '2018-01-23 10:22:22', '0', '150'),
(226, '2007-10-11', 'Coffee Mill building with office, approximately 592.08 square meters of  and other minor improvements. They are situated on 2956 square meters of industrial allotment within the Town of Kainantu.', 276, '88680', '0', '400320', '2956', '2018-01-23 10:30:35', '2018-01-23 10:30:35', '0', '29'),
(227, '2007-11-02', '3 x Warehouses/Storage plus office space together with sheds, concrete blocks, paves, pipes and culverts processing plants as well as residence, approximately 2, 098.06 square meters of  plus other minor improvements. They are situated on a total of 8, 190.0 square meters of industrial allotment within the City of Lae.', 277, '491000', '0', '1837000', '8190', '2018-01-23 10:42:12', '2018-01-23 10:42:12', '0', '60'),
(228, '2007-06-15', 'Hardware Shed/Offices, Workshop, Pipes/Timber sheds and fencing, approximately 2,730.00 square meters. These are situated on a total of 7,006.0 square meters of consolidated industrial allotments within the City of Lae.', 278, '1752000', '0', '3462000', '7006', '2018-01-23 10:50:36', '2018-01-23 10:50:36', '0', '250'),
(229, '2007-04-05', 'Workshop, storage and joinery buildings as well as residential blocks, approximately 1, 105.50 square meters in all  together with other minor improvements. It is situated on approximately 2580 square meters of Light Industrial allotments in the City of Lae.', 279, '516000', '0', '936000', '2580', '2018-01-23 11:00:27', '2018-01-23 11:00:27', '0', '200'),
(230, '2007-04-05', 'Office, storage and showroom, approximately 799 square meters of  with other minor improvements.It is situated on 2238 square meters of Light Industrial allotments in the City of Lae.', 280, '447600', '0', '580400', '2238', '2018-01-23 11:07:47', '2018-01-23 11:07:47', '0', '200'),
(231, '2008-03-07', 'An approximately 2,481.5 square meters of warehouse/office building and 2,112.12 square meters factory/ processing plant, workshop, office building. They are situated on a 1.3293   hectares of general industrial allotments at Voco Point, City of Lae.', 281, '4652000', '0', '8317000', '13293', '2018-01-24 02:32:06', '2018-01-24 02:32:06', '0', '350'),
(232, '2008-01-11', '2 levels of office complex with extended warehouse, 3 x yards and workshop buildings together with hardstand area plus other minor improvements They situated on a 5.5416 hectares of light Industrial allotment in the City of Lae.', 282, '22000000', '0', '9112000', '55416', '2018-01-24 02:47:14', '2018-01-24 02:47:14', '0', '397'),
(233, '2008-01-11', '3 bedroom high covenant residence  with carport, extra bedroom and laundry downstairs. It is situated on a 1,800 square meters residential allotment in the City of Lae.', 283, '270000', '0', '233000', '1800', '2018-01-24 02:54:07', '2018-01-24 02:54:07', '0', '150'),
(234, '2007-03-27', 'Factory /Office/Storage building plus staff residences, approximately 2, 098.06 square meters of   together with other minor improvements.  They are situated on a total ……. of square meters of industrial allotment within the City of Lae.', 284, '0', '7399000', '0', '0', '2018-01-24 03:38:10', '2018-01-24 03:38:10', '0', '0'),
(235, '2009-02-16', 'Industrial workshop/office, approximately 899.4 square meters  as well as other minor improvements. These are situated on a total of 4,000 square meters of industrial allotments in the City of Lae.', 285, '700000', '0', '2085000', '4000', '2018-01-24 03:49:36', '2018-01-24 03:49:36', '0', '175'),
(236, '2006-03-24', 'Shop/Office complex plus other minor improvements. It is situated on 1,449.0 square meters of commercial land portion in Kamkumung Area, City of Lae.', 286, '0', '300000', '0', '323', '2018-01-24 04:14:45', '2018-01-24 04:14:45', '0', '0'),
(237, '2004-12-28', '2 levels, 6-bedroom executive residence with an external laundry/ toilet/ shower and house wind, approximately 472.96 square meters, . It is situated on a 9960 square meters residential allotment, Gannet Street, in Lae City.', 287, '70000', '0', '430000', '996', '2018-01-24 04:23:15', '2018-01-24 04:23:15', '0', '70'),
(238, '2006-01-03', '3 bedrooms residence, approximately 76.9 square meters. It is situated on a 540 square meters of residential allotment in Lae.', 288, '27000', '0', '94000', '540', '2018-01-24 04:38:03', '2018-01-24 04:38:03', '0', '50'),
(239, '2007-11-30', '2 levels, 6 x 2 bedroom residential flats, approximately 394.24 square meters block of   plus other minor improvements. It is situated on 749 square meters of residential allotment in the City of Lae.', 289, '60000', '0', '804000', '749', '2018-01-24 04:50:21', '2018-01-24 04:50:21', '0', '80'),
(240, '2007-05-25', '3 bedroom upstairs and open room downstairs including all normal fixtures  and Fittings and septic system plus other minor improvements.', 290, '16000', '0', '407000', '391', '2018-01-24 04:58:23', '2018-01-24 04:58:23', '0', '50'),
(241, '2017-08-13', '2 x bedroom unit occupying on gross floor area of approximately 166 square meters.', 291, '0', '880000', '0', '0', '2018-01-24 05:07:00', '2018-01-24 05:07:00', '0', '0'),
(242, '2017-08-31', 'Erected on the property is a shed with adjoining residence plus other improvements.', 292, '0', '74000', '0', '0', '2018-01-24 05:19:08', '2018-01-24 05:19:08', '0', '0'),
(243, '2008-02-25', '2 levels 2 x 2 bedroom and 3 x 1 bedroom units including all normal fixtures and fittings and septic plus other minor improvements.', 293, '105000', '0', '386000', '700', '2018-01-24 05:28:02', '2018-01-24 05:28:02', '0', '150'),
(244, '2012-03-21', 'Two Bedroom staff Duplex with vast land area for further  development. It is situated on 1, 243 square meters of Residential Allotment  within Town of Wau.', 294, '18645', '0', '21355', '1243', '2018-01-24 05:59:06', '2018-01-24 05:59:06', '0', '15'),
(245, '2012-03-21', 'High set 2 x bedroom Manager’s residence building plus other improvements. It is situated on 2,010 square meters of residential allotment within Township of Wau.', 295, '30150', '0', '72850', '2010', '2018-01-24 07:20:11', '2018-01-24 07:20:11', '0', '15'),
(246, '2012-04-21', 'a)	Supermarket & Fuel Station – 0.517 Ha.\nb)	Manager’s Residence – 0.541 Ha\nc)	Staff Residence Compound – 0.394 Ha\nd)	Roads/Access – 0.300 Ha\nTotal land area occupied by Jabanardi in Wabu Compound is 1.752 Ha.', 296, '438000', '0', '1178000', '17520', '2018-01-24 07:26:54', '2018-01-24 07:26:54', '0', '25'),
(247, '2012-04-21', 'Pine Lodge Hotel comprising Guest Rooms, Restaurant, Bar, Staff Houses etc. They are situated on 9.7353 hectares of land portion of Bulolo  Town.', 297, '1460295', '0', '2805705', '97353', '2018-01-24 07:32:52', '2018-01-24 07:32:52', '0', '15'),
(248, '2014-06-13', '3 x bedroom executive residence plus other improvements. It is situated on a total land area of 1, 047 square meters.', 298, '2026000', '0', '1986000', '1047', '2018-01-24 09:59:37', '2018-01-24 09:59:37', '0', '1935'),
(249, '2012-09-17', '3 x bedroom residence plus other minor improvements. It is situated on a 1, 222 square meters of residential allotment in Lae City.', 306, '80000', '0', '107000', '1222', '2018-01-24 10:22:13', '2018-01-24 10:22:13', '0', '65'),
(250, '2017-09-12', 'Warehouse building with Supermarket and hardware on ground floor and 	commercial offices and residential accommodation on mezzanine level.', 307, '3800000', '0', '5900000', '5850', '2018-01-24 10:32:14', '2018-01-24 10:32:14', '0', '650'),
(251, '2012-09-07', 'Canteen and 2 level 7 x bedroom residence plus other improvements. They are situated on a 1, 275 square meters residential allotment in Lae City.', 310, '83000', '0', '484000', '1275', '2018-01-24 10:41:26', '2018-01-24 10:41:26', '0', '65'),
(252, '2005-11-18', 'High Cost colonial design 3 bedroom single residence. It is situated on approximately 1,500 square meters of residential allotment.', 312, '90000', '0', '70000', '1500', '2018-01-24 11:05:03', '2018-01-24 11:05:03', '0', '60'),
(253, '2005-11-21', '1 x 4 bedrooms and 1 x 3 bedrooms flats, Approximately 301.75 square meters duplex of. They are situated on approximately 1,600 square meters of residential allotment in Lae City.', 319, '144000', '0', '220000', '1600', '2018-01-28 02:33:50', '2018-01-28 02:33:50', '0', '90'),
(254, '2005-11-19', 'Warehouses, factory and storage plus complementary residential units. These are situated on a 2,000 square meters of light industrial allotment in Lae City.', 326, '300000', '0', '600000', '2000', '2018-01-28 06:28:12', '2018-01-28 06:28:12', '0', '150'),
(255, '2005-11-19', 'Warehouse, Factory and Accommodation Units, approximately 1,904.75 square meters of  . It is situated on approximately 2,000 square meters of industrial allotment along Abel Tasman Street, City of Lae.', 327, '1000000', '0', '1300000', '2000', '2018-01-28 07:08:23', '2018-01-28 07:08:23', '0', '500'),
(256, '2005-11-18', 'Industrial warehouse, shed plus staff residence and storage, approximately 688.0 square meters of. It is situated on approximately 4,000 square meters of industrial allotment in Lae.', 328, '1200000', '0', '500000', '4000', '2018-01-28 07:15:00', '2018-01-28 07:15:00', '0', '300'),
(257, '2005-11-19', 'Industrial warehouse containing shop, factory, storage plus separate residences and storage, approximately 1,237 square meters of  . These are situated on approximately 2396 square meters of light industrial allotment in Kimbe Town.', 335, '72000', '0', '600000', '2396', '2018-01-28 09:44:00', '2018-01-28 09:44:00', '0', '30'),
(258, '2005-11-21', '1 x 2 bedrooms triplex flats plus a 1 x 4 bedrooms single residence. These are situated on 1,200 square meters of residential allotments in Lae City.', 336, '72000', '0', '228000', '1200', '2018-01-28 09:50:11', '2018-01-28 09:50:11', '0', '60'),
(259, '2012-11-07', '2 level, 4 x 3 bedrooms residence with spacious yard, approximately 266.05 square meters,  plus other minor improvements. It is situated on a 600 square meters residential allotment in Lae City.', 337, '255000', '0', '805000', '600', '2018-01-28 09:58:00', '2018-01-28 09:58:00', '0', '425'),
(260, '2017-04-19', 'Erected on the property is a ground set residence plus other improvements.Land Area:  450 square meters.', 338, '162000', '0', '164000', '450', '2018-01-28 10:09:08', '2018-01-28 10:09:08', '0', '360'),
(261, '2012-09-10', '2 level 6 x bedroom residence, approximately land area comprising a Canteen and  plus other improvements. They are situated on a 1, 000 square meters residential allotment in Lae City.', 339, '65000', '0', '273000', '1000', '2018-01-28 10:20:09', '2018-01-28 10:20:09', '0', '65'),
(262, '2009-01-29', '2 levels, 2 x 2 bedrooms self contained units and 8 x bed-sitter units with common facilities, approximately 382.16 square meters blocks. They are situated on 800 square meters of residential allotment in the City of Lae.', 340, '0', '625000', '0', '800', '2018-01-28 10:54:20', '2018-01-28 10:54:20', '0', '0'),
(263, '2012-04-20', 'High set duplex residence comprising a floor area of approximately 158.40 m2 plus other improvements. It is situated on approximately 1,400 square meters of residential allotment in Lae City.', 341, '448000', '0', '378000', '1400', '2018-01-29 02:23:01', '2018-01-29 02:23:01', '0', '320'),
(264, '2014-03-20', '3 x bedroom residence on top plus 2 x 2 bedrooms units on ground floor plus other improvements. They are situated on a total land area of 1, 300 square meters.', 342, '191000', '0', '150000', '546', '2018-01-29 04:41:23', '2018-01-29 04:41:23', '0', '350'),
(265, '2007-11-14', 'N/A', 343, '130000', '0', '451000', '0', '2018-01-29 04:51:06', '2018-01-29 04:51:06', '0', '0'),
(266, '2006-10-12', 'The property is a newly constructed high set 2 bedrooms identical triplex unit. It is situated on a 400 square meters of residential land portion.', 344, '15000', '0', '237000', '400', '2018-01-29 04:59:46', '2018-01-29 04:59:46', '0', '38'),
(267, '2015-05-30', '2 x two level commercial complex plus other improvements. It is situated on a total land area of 303 square meters.', 354, '1500000', '0', '500000', '303', '2018-01-30 02:17:44', '2018-01-30 02:17:44', '0', '4950'),
(268, '2014-08-28', 'Hotel accommodation known as the “Lae Travelers Inn” plus other minor improvements. It is situated on a land area of approximately 2, 300 square meters of residential allotment.', 355, '3000000', '0', '9000000', '2300', '2018-01-30 02:30:30', '2018-01-30 02:30:30', '0', '1304'),
(269, '2007-01-31', 'Two levels residential apartment comprising total of 14 units with house win and fencing, approximately 1, 179.2 square meters of . They are situated on 1, 500 square meters of residential allotment in the City of Lae.', 356, '225000', '0', '1767000', '1500', '2018-01-30 02:38:41', '2018-01-30 02:38:41', '0', '150'),
(270, '2008-07-17', 'A 2 levels block of 4 x 3 bedroom units including all normal fixtures and fittings and \nsewerage system plus other minor improvements.', 357, '180000', '0', '610000', '1200', '2018-01-30 03:21:13', '2018-01-30 03:21:13', '0', '150'),
(271, '2010-12-21', 'Duplex flat, approximately with land area of 243m2  plus other improvements. It is situated on 1000 square meters of residential allotment in Lae City.', 358, '0', '575000', '0', '243', '2018-01-30 04:35:35', '2018-01-30 04:35:35', '0', '0'),
(272, '2015-04-24', 'Erected on the property is a low set 3 x room house comprising a gross floor area of approximately 134 square meters plus other improvements.', 359, '5200000', '0', '200000', '13600', '2018-01-30 04:46:00', '2018-01-30 04:46:00', '0', '382'),
(273, '2014-03-26', 'Erected on the property is a high set 3 x bedroom duplex building and a detached 2 x bedroom flat plus other improvements. They are situated on a land area of 1, 100 square meters.', 362, '495000', '0', '392000', '1100', '2018-01-30 05:00:09', '2018-01-30 05:00:09', '0', '450'),
(274, '2014-01-17', 'Erected on the property is a 2 x bedroom triplex unit. It is situated on a land area of    approximately 900 square meters.', 364, '432000', '0', '459000', '900', '2018-01-30 05:22:50', '2018-01-30 05:22:50', '0', '480'),
(275, '2006-06-17', 'Industrial Warehouse containing storage, cool rooms and offices plus other complementing improvements. They are situated on approximately 5,765 square meters of consolidated industrial allotments along Baling Street, Omili Area, City of Lae.', 365, '0', '3383000', '0', '0', '2018-01-30 05:39:16', '2018-01-30 05:39:16', '0', '0'),
(276, '2007-01-12', '2 x industrial warehouses, approximately 956 square meters of   as well as other minor improvements. They are situated on 2,000.0 square meters of industrial allotment in the City of Lae.', 366, '300000', '0', '1075000', '2000', '2018-01-30 05:54:15', '2018-01-30 05:54:15', '0', '150'),
(277, '2007-01-12', 'Office Block and warehouses containing storage, mezzanine offices, approximately 1,966.2 square meters of  plus other minor improvements. They are situated on 6,100 square meters of industrial allotment in the City of Lae.', 367, '1220000', '0', '4223000', '6100', '2018-01-30 06:03:43', '2018-01-30 06:03:43', '0', '200'),
(278, '2017-02-06', 'The property is a 2 level ground set triplex complex comprising of 2 x 4 bedroom units and 1 x 3 bedroom unit plus other improvements. Land Area:	 1,011 square meters.', 368, '550000', '0', '1390000', '1011', '2018-01-30 07:34:46', '2018-01-30 07:34:46', '0', '544'),
(279, '2007-08-20', '3 bedroom duplex units with carport on allotment 1 while allotment 2 is vacant. They are situated on 1, 600 square meters of residential allotments in the City of Lae.', 369, '128000', '0', '212000', '1600', '2018-01-30 07:49:39', '2018-01-30 07:49:39', '0', '80'),
(280, '2017-08-04', 'The property is a high set 3 x bedroom residence plus other improvements.', 373, '145700', '0', '62300', '971', '2018-01-31 05:15:39', '2018-01-31 05:15:39', '0', '150'),
(281, '2014-11-05', 'The property are 2 x two level commercial complex plus other improvements.\nIt is situated on a total land area of 1, 017 square meters.', 384, '1500000', '0', '1287000', '1017', '2018-02-01 03:15:37', '2018-02-01 03:15:37', '0', '1475'),
(282, '2017-10-22', 'The property are a 2 level office building, detached operational office and residential shed plus other improvements.\nLand Area: 7,220 square meters.', 385, '1800000', '0', '1200000', '7220', '2018-02-01 03:38:26', '2018-02-01 03:38:26', '0', '249'),
(283, '2017-10-22', 'the property is a 4 x units residential building plus other improvements.\nLand Area:  1,011 square meters.', 386, '460000', '0', '640000', '1011', '2018-02-01 03:57:59', '2018-02-01 03:57:59', '0', '455'),
(284, '2005-07-13', 'Office building, 5 x bedrooms residence and 11 x bedsitter units, approximately 889.55 square meters of. It is situated on a 8000 square meters of commercial allotment in Lae City.', 398, '870000', '0', '501000', '8000', '2018-02-04 02:25:55', '2018-02-04 02:25:55', '0', '109'),
(285, '2005-07-13', '2 blocks of duplex flats, approximately 293 square meters of. They are situated on approximately 1,000 square meters residential allotment towards the culdesec side of Karimun Street, City of Lae.', 399, '60000', '0', '240000', '1000', '2018-02-04 02:33:06', '2018-02-04 02:33:06', '0', '60'),
(286, '2005-07-13', '4 x 3 bedrooms residential units, approximately 478.4 square meters. It is situated on approximately 1,000 square meters of residential allotment in Lae.', 400, '400000', '0', '178000', '1000', '2018-02-04 02:39:48', '2018-02-04 02:39:48', '0', '400'),
(287, '2005-07-13', 'Industrial warehouse, workshops and residence. They are situated on approximately 4000 square meters of light industrial allotments in Lae City.', 401, '400000', '0', '676000', '4000', '2018-02-04 02:46:53', '2018-02-04 02:46:53', '0', '100'),
(288, '2005-07-13', '3 x warehouses, office building, hardstand areas. It is situated on a 1.2240 hectares of light industrial allotment in Lae City.', 402, '734000', '0', '2162000', '12240', '2018-02-04 03:08:10', '2018-02-04 03:08:10', '0', '60'),
(289, '2006-08-09', '3 levels, office complex of approximately 1,701.15 square meters of net lettable office space. It will be situated on a 611.0 square meters commercial allotment in Mt. Hagen City.', 403, '183000', '0', '4172000', '611', '2018-02-04 04:39:52', '2018-02-04 04:39:52', '0', '300'),
(290, '2012-01-26', 'Factory/warehouse as well as the Managing Director’s residence, staff night shift quarters, toilet blocks and kitchen with general parking or hardstand area and fencing,approximately 1,165.25m2 comprising a  . They are situated on 2,000 square meters of industrial allotment in Lae City.', 404, '1740000', '0', '3451000', '2000', '2018-02-04 04:49:41', '2018-02-04 04:49:41', '0', '870'),
(291, '2014-04-07', 'Two levels 3 x residence comprising a gross floor area of approximately 183.8 square meters, plus other improvements. It is situated on a 500 square meters of residential allotment in City of Lae.', 405, '175000', '0', '458000', '500', '2018-02-04 05:12:52', '2018-02-04 05:12:52', '0', '350'),
(292, '2014-04-07', 'Two levels 3 x bedrooms high cost residence comprising a gross floor area of approximately 274 square meters, plus other improvements. It is situated on a 1, 200 square meters of residential allotment in City of Lae.', 406, '798000', '0', '794000', '1200', '2018-02-04 05:19:53', '2018-02-04 05:19:53', '0', '665'),
(293, '2008-04-02', 'Industrial building comprising, offices, sheds, workshop and accommodation as well as complementing developments. It is situated on 4047 square meters industrial allotments in Lae.', 407, '1862000', '0', '2940000', '4047', '2018-02-04 05:29:04', '2018-02-04 05:29:04', '0', '460'),
(294, '2006-12-19', 'Property is situated on a total of 16,800 square meters of allotment comprising under water lease in the City of Lae.', 408, '0', '520000', '0', '16800', '2018-02-04 07:18:48', '2018-02-04 07:18:48', '0', '0'),
(295, '2017-02-20', 'Property is a ground set building plus other improvements. Land Area: 1,998 square meters', 409, '2520000', '0', '280000', '1998', '2018-02-04 07:26:32', '2018-02-04 07:26:32', '0', '1261'),
(296, '2017-02-20', 'Property is a ground set commercial building comprising factory, warehouse, hardware and office plus other improvements. Land Areas:  	1,998 square meters, Sec 15 Lot 15  2,048 square meters, Sec 15 Lot 16\nTotal Land Area: 4,046 square meters', 410, '3439000', '0', '6861000', '4046', '2018-02-04 07:33:23', '2018-02-04 07:33:23', '0', '850'),
(297, '2008-08-01', 'High set duplex unit with carport and laundry under main, approximately 217.42 square meters of  plus other associated improvements. It is situated on 1, 000 square meters of residential allotment in the City of Lae.', 411, '150000', '0', '384000', '1000', '2018-02-05 02:10:29', '2018-02-05 02:10:29', '0', '150'),
(298, '2008-08-01', 'Workshop, office and residence buildings, approximately 2, 015.77 square meters in total plus other associated improvements. They are situated on 4, 000 square meters of light industrial allotment in the City of Lae.', 412, '400000', '0', '1510000', '4000', '2018-02-05 02:19:55', '2018-02-05 02:19:55', '0', '100'),
(299, '2008-08-01', 'Executive duplex residence with other associated improvements. It is situated on 1,300 square meters of residential allotment in the City of Lae.', 413, '260000', '0', '673000', '1300', '2018-02-05 04:52:08', '2018-02-05 04:52:08', '0', '200'),
(300, '2012-11-28', '3 x 2 bedroom flat, 3 x 1 bed room flat, a 3 x bedroom residence and a recently constructed 2 level 3 bedroom residence, plus other minor improvements. They are situated on approximately 600 square meters of residential allotment in Lae City.', 414, '150000', '0', '541000', '600', '2018-02-05 05:00:22', '2018-02-05 05:00:22', '0', '250'),
(301, '2007-10-08', '4 bedrooms high covenant residence, approximately 209.78 square meters. It is situated on 1, 600 square meters of residential allotment in the City of Lae.', 415, '240000', '0', '146000', '1600', '2018-02-05 05:14:58', '2018-02-05 05:14:58', '0', '150'),
(302, '2007-04-11', 'Service Station and Coffee Mill setting with complimentary improvements.\nThey are situated on 6.50 hectares of business/residential purpose land at 5 mile, along Lae- Nadzab Road.', 416, '845000', '0', '1484000', '65000', '2018-02-05 05:26:52', '2018-02-05 05:26:52', '0', '13'),
(303, '2007-04-11', 'Hatchery  set up , staff accommodations with complimentary improvements. They are situated on 0.4568 hectares of business/residential purpose land at 9 mile, along Lae- Nadzab Road', 417, '100000', '0', '1799000', '4568', '2018-02-05 05:33:10', '2018-02-05 05:33:10', '0', '22'),
(304, '2007-04-11', 'Workshop setting with complimentary improvements and they are situated on 0.6940 hectares of business/residential purpose land at 14 mile, along Lae- Nadzab Road.', 418, '137000', '0', '1656000', '6940', '2018-02-05 05:39:19', '2018-02-05 05:39:19', '0', '20'),
(305, '2007-05-12', '3 bedrooms stand alone residence, approximately 65.5 square meters. It is situated on 200 square meters of residential allotment in the City of Lae.', 419, '20000', '0', '100000', '200', '2018-02-05 09:57:24', '2018-02-05 09:57:24', '0', '100'),
(306, '2014-09-26', 'The property is a high set medium cost 3 x bedroom residence converted to a two level 3 x bedroom duplex  plus other improvements. It is situated on a land area of approximately     810 square meters.', 420, '263000', '0', '337000', '810', '2018-02-05 10:39:45', '2018-02-05 10:39:45', '0', '325'),
(307, '2014-10-26', 'The property is a newly built two level shop, a warehouse, a bakery, a 3 x rooms store area, a gold smelting area, a garage, a hardstand and 3 x bedroom residence plus other improvements. It is situated on a total land area of 1 acre and 35 square meters.', 422, '425000', '0', '1260000', '607', '2018-02-05 11:11:21', '2018-02-05 11:11:21', '0', '700'),
(308, '2014-10-26', 'The property is a high set split level commercial building plus other improvements.\nIt is situated on a total land area of 607 square meters.', 423, '338000', '0', '653000', '844', '2018-02-06 02:25:18', '2018-02-06 02:25:18', '0', '400'),
(309, '2017-03-02', 'The property is a residential compound comprising  30 x 3 bedroom residential houses plus other improvements.\nLand Area: 2.4 hectares.', 424, '3800000', '0', '4700000', '24000', '2018-02-06 02:49:42', '2018-02-06 02:49:42', '0', '158'),
(310, '2015-11-02', 'Erected on the property is a 2 x bedroom quadruplet Units plus other improvements. It is situated on a total land area of 1, 312 square meters.', 425, '1745000', '0', '505000', '1312', '2018-02-06 03:24:06', '2018-02-06 03:24:06', '0', '1330'),
(311, '2013-02-04', '3 bedrooms stand alone residence, approximately 66.5 square meters of low set  plus other minor improvements. It is situated on approximately 392 square meters of residential allotment in Lae City.', 426, '65000', '0', '89000', '392', '2018-02-06 03:32:10', '2018-02-06 03:32:10', '0', '166'),
(312, '2005-08-23', 'A Commercial complex including all normal \nfixtures, fittings, sewerage, installation plus \nother minor improvements.', 427, '540000', '0', '394000', '600', '2018-02-06 03:39:57', '2018-02-06 03:39:57', '0', '900'),
(313, '2005-05-20', 'Office/shopping complex and associated improvements. It is situated on 500 square meters of Commercial allotment in Lae.', 428, '425000', '0', '535000', '500', '2018-02-06 10:19:06', '2018-02-06 10:19:06', '0', '850'),
(314, '2005-06-14', 'High-set 3 bedroom low cost residence, approximately 63.0 square meters, . It is situated on a 500 square meters residential allotment within Lae City.', 429, '8000', '0', '28000', '500', '2018-02-07 02:11:15', '2018-02-07 02:11:15', '0', '16'),
(315, '2002-02-06', '4 bedroom high-set high cost residence, approximately 271.25 square meters. It is situated on a 1,274 square meters of residential allotment in Lae City.', 430, '64000', '0', '146000', '1274', '2018-02-07 02:19:25', '2018-02-07 02:19:25', '0', '50'),
(316, '2007-09-17', '20 x rooms motel, approximately 562 square meters. It is situated on 1,929 square meters of residential allotments in the City of Lae.', 431, '675000', '0', '1264000', '1929', '2018-02-07 02:35:27', '2018-02-07 02:35:27', '0', '350'),
(317, '2008-05-06', '7 x Motel settings 24 x guest rooms plus main executive residence buildings, approximately 2, 126. 75 square meters in total of blocks together with other minor improvements. They are situated on approximately  2, 100 square meters in total of residential allotments in the City of Lae.', 432, '315000', '0', '4005000', '2100', '2018-02-07 02:48:15', '2018-02-07 02:48:15', '0', '150'),
(318, '2002-04-12', 'Two storey Office and Accommodation complex, approximately 1817.68 square meters. It is situated on 1320 square meters of Commercial allotments in Lae.', 433, '264000', '0', '948000', '1320', '2018-02-07 03:07:49', '2018-02-07 03:07:49', '0', '200'),
(319, '2003-04-04', '2 x 2 bedroom flat and a warehouse with floor areas of 266.88 square meters and 95.16 square meters respectively. They are situated on a  2023  square meters of Light Industrial allotment in Lae.', 434, '202000', '0', '28000', '2023', '2018-02-07 03:17:29', '2018-02-07 03:17:29', '0', '100'),
(320, '2003-05-23', 'Office/ showroom/workshop, approximately   1,956.85   square meters of  and  1088.2   square meters of office/ workshop building . They are situated on a  8,169  square meters of commercial allotment within Lae City.', 435, '656000', '0', '2847000', '8169', '2018-02-07 03:24:51', '2018-02-07 03:24:51', '0', '80'),
(321, '2003-01-16', 'Office/factory building totally a floor area of 2689.35  square meters and a warehouse of 1578.96 square meters plus associated improvements. They are  situated on a 12,810  square meters of  allotment in Chinatown ,  Lae.', 447, '641000', '0', '4341000', '12810', '2018-02-07 09:28:11', '2018-02-07 09:28:11', '0', '50'),
(322, '2002-04-13', '4 bedroom low cost residence, approximately 108.77 square meters. It is situated on a 500  square meters of residential allotment in Lae.', 448, '15000', '0', '35000', '500', '2018-02-07 09:34:36', '2018-02-07 09:34:36', '0', '30'),
(323, '2004-03-20', 'Hardstand being generally level and compacted with gravel and an approximately 980.48 square meters of administration office, showroom, warehouse and other associated facilities in its existing use. They are adjoining (back to back) and situated on an approximately 4,024 square meters of light industrial allotments in Lae.', 449, '169000', '0', '8000', '2012', '2018-02-07 09:45:22', '2018-02-07 09:45:22', '0', '84'),
(324, '2004-08-30', 'Retail shop with residence above and 117 square meters bed sitters, approximately 418 square meters. It is situated on a 607  square meters of commercial allotment in Chinatown, Lae.', 450, '91000', '0', '209000', '607', '2018-02-07 09:56:18', '2018-02-07 09:56:18', '0', '150'),
(325, '2003-10-23', 'National Housing Commission L40 design low set 3 bedroom residence of approximately 52.87 square meters. It is situated on a 514 square meters of residential allotment in Lae.', 451, '10000', '0', '20000', '514', '2018-02-07 10:05:52', '2018-02-07 10:05:52', '0', '19'),
(326, '2002-03-21', '3 bedroom low cost residence, approximately 84.45 square meters. It is situated on a 540  square meters of residential allotment in Lae.', 452, '15000', '0', '40000', '540', '2018-02-07 10:22:48', '2018-02-07 10:22:48', '0', '28'),
(327, '2003-07-11', '3 bedrooms duplex flats, approximately 326.3  square meters,    with a self contained single room and office. It is situated on a  2000  square meters  of light industrial allotment in Lae City.', 453, '120000', '0', '180000', '2000', '2018-02-07 10:29:01', '2018-02-07 10:29:01', '0', '60'),
(328, '2002-03-13', '3 bedroom high covenant , high set residence, approximately 59.96 square meters. It is situated on a 500 square meters of residential allotment in Lae.', 454, '18000', '0', '42000', '500', '2018-02-07 10:35:24', '2018-02-07 10:35:24', '0', '36'),
(329, '2003-10-24', '3 bedrooms  executive residence, domestic quarters, house wind, approximately 260.92 square meters,   with spa and barbecue facilities, as well as carport. They are  situated on a 1081 square meters of residential allotment in Lae.', 455, '100000', '0', '180000', '1500', '2018-02-07 10:45:59', '2018-02-07 10:45:59', '0', '67'),
(330, '2005-04-05', 'Shopping complex with associated improvements. It is situated on a  2546 square meter commercial  allotment in  Goroka Town.', 456, '700000', '0', '1200000', '2546', '2018-02-07 10:54:47', '2018-02-07 10:54:47', '0', '275'),
(331, '2003-02-19', '3 bedroom  low-set , high cost  residence, approximately 182.49 square meters. It is situated on a 688 square meters  of residential allotment at Cassowary Road , Lae.', 457, '41000', '0', '82000', '688', '2018-02-07 11:04:35', '2018-02-07 11:04:35', '0', '60'),
(332, '2003-03-18', '1 x 3 bedroom, 1 x 2 bedroom, 2 x 2 bedroom high cost  residential units. It is situated on a  1300  square meters of residential allotment in Lae.', 458, '80000', '0', '285000', '1300', '2018-02-07 11:10:37', '2018-02-07 11:10:37', '0', '62'),
(333, '2003-04-04', '3 bedrooms, high covenant residence, approximately 277.80  square meters , high-set. It is situated on a  1289  square meters of residential allotment in Lae.', 459, '45000', '0', '163000', '1289', '2018-02-08 05:05:40', '2018-02-08 05:05:40', '0', '35'),
(334, '2005-03-04', 'High covenant residence,approximately 74.75 square meters of. It is situated on 500.0 square meters of residential allotment in Lae.', 460, '22500', '0', '68000', '500', '2018-02-08 05:11:33', '2018-02-08 05:11:33', '0', '45'),
(335, '2013-11-07', 'Low-set three(3) bedroom residence having an approximate gross floor area of 70 square meters including the veranda.', 462, '70000', '0', '160000', '456', '2018-02-08 06:31:12', '2018-02-08 06:31:12', '0', '504'),
(336, '2014-05-15', 'On the property is a single level church building with mezzanine level office, two level building comprises 1x3 bedroom and 1x2 bedroom residential units and a storeroom on reinforced concrete slab base and of fibro cladding.', 463, '4000000', '0', '5800000', '4104', '2018-02-08 06:40:50', '2018-02-08 06:40:50', '0', '975'),
(337, '2013-12-09', 'Split level building with an approximate gross floor area of 212 square meters.', 464, '1200000', '0', '600000', '2998', '2018-02-08 06:54:04', '2018-02-08 06:54:04', '0', '400'),
(338, '2013-11-27', 'A colonial type low set three bedroom house in rundown condition overall.', 465, '2600000', '0', '0', '1859', '2018-02-08 07:02:06', '2018-02-08 07:02:06', '0', '1399'),
(339, '2013-09-18', 'This is a low set four bedroom duplex with attached laundry having a gross floor area of approximately 177 square meters.', 466, '200000', '0', '560000', '779', '2018-02-08 07:07:57', '2018-02-08 07:07:57', '0', '257'),
(341, '2002-04-16', '4 x 2 bedrooms medium cost units, approximately 324.0 square meters. It is situated on a 1033 square meters residential allotment in Lae.', 467, '72000', '0', '274000', '1033', '2018-02-08 07:15:33', '2018-02-08 07:15:33', '0', '70'),
(342, '2013-11-27', 'A colonial type low set three bedroom house in rundown condition overall.', 468, '2600000', '0', '0', '1859', '2018-02-08 07:15:54', '2018-02-08 07:15:54', '0', '1399'),
(343, '2004-09-28', 'Vacant light industrial hardstand  with a security fence. It is situated on a  1972  square meters  of light industrial allotment in Lae City.', 469, '197000', '0', '2000', '1972', '2018-02-08 07:20:44', '2018-02-08 07:20:44', '0', '100'),
(344, '2004-10-21', 'Shop/kai bar building, approximately 1,607.9  square meters. It is situated on a  1593    square meters of commercial allotment on Eighth Street in Lae.', 470, '0', '1149000', '0', '1607.9', '2018-02-08 07:25:42', '2018-02-08 07:25:42', '0', '0'),
(345, '2002-10-24', '5 bedrooms high  cost residence, approximately 452.47 square meters, high-set   with an office. It is  situated on a  1011  square meters of residential allotment in Lae.', 471, '45500', '0', '165500', '1011', '2018-02-08 07:29:52', '2018-02-08 07:29:52', '0', '45'),
(346, '2014-04-02', 'The property is a proposed two level building comprises retail supermarket, warehouse, commercial and residential units and ancillary improvements.', 473, '3500000', '0', '6500000', '1208', '2018-02-08 07:36:39', '2018-02-08 07:36:39', '0', '2897'),
(347, '2014-04-17', 'The property is a single level building comprises 1x3 bedroom residence of hardboard and timber construction having an approximate gross floor area of 49 square meters.', 474, '250000', '0', '150000', '450', '2018-02-08 07:47:54', '2018-02-08 07:47:54', '0', '556'),
(348, '2014-03-17', 'The property is a two level building comprises 4x3 bedroom units of masonry block and hardie flex construction and ancillary building.', 475, '550000', '0', '1700000', '510', '2018-02-08 07:57:12', '2018-02-08 07:57:12', '0', '1078'),
(349, '2014-10-24', 'On the Property will be proposed twin tower buildings each of 8 level building comprises commercial spaces and ancillary  improvements.', 476, '10000000', '0', '79000000', '4270', '2018-02-08 08:09:14', '2018-02-08 08:09:14', '0', '2342'),
(350, '2002-11-19', 'shop/office front, approximately 1250.72  square meters of   with warehouse and offices.  It is situated on a   1287  square meters  of commercial allotment in Lae', 472, '0', '507000', '0', '1250.72', '2018-02-08 11:13:44', '2018-02-08 11:13:44', '0', '0');
INSERT INTO `valuations` (`id`, `date`, `description`, `property_id`, `land_component`, `insurance_value`, `improvement_component`, `area`, `created_at`, `updated_at`, `forced_sale_value`, `land_value_rate`) VALUES
(351, '2002-04-16', 'warehouse/storage/office/residence, approximately 628.50 square meters  of  and shop building. It is situated on a 1300 square meters commercial allotment in Lae.', 461, '260000', '0', '226000', '1300', '2018-02-09 02:32:58', '2018-02-09 02:32:58', '0', '200'),
(352, '2004-06-29', 'Freezer facility comprising of freezer building with offices and sundry structures and ground improvements. They are situated on a  6,150  square meters of Light Industrial allotment in Lae.', 477, '900000', '0', '2600000', '6150', '2018-02-09 02:38:14', '2018-02-09 02:38:14', '0', '146'),
(353, '2004-05-29', '3 bedrooms  colonial design high  covenant residence, approximately 129.19  square meters, plus external laundry. It is  situated on a 1,606 square meters of residential allotment in Lae.', 478, '112000', '0', '101000', '1606', '2018-02-09 02:47:50', '2018-02-09 02:47:50', '0', '70'),
(354, '2003-10-30', 'Two blocks of 10 bedroom bed sitter flats each, totaling 363.31 square meters. It is situated on a  1200  square meters of residential allotment in Lae.', 479, '60000', '0', '132000', '1200', '2018-02-09 03:06:04', '2018-02-09 03:06:04', '0', '50'),
(355, '2002-08-16', '2 levels , 1 x 3 bedroom , 2 x 2 bedroom  , 1 x 1 bedroom residential units, approximately  272.55    square meters. It is situated on a  1011  square meters of residential allotment in Lae.', 480, '20000', '0', '95000', '1011', '2018-02-09 03:14:34', '2018-02-09 03:14:34', '0', '20'),
(356, '2003-12-15', '4 x 2 bedrooms residential units, approximately 390.40 square meters. It is situated on a 600  square meters of residential allotment in Lae.', 481, '30000', '0', '135000', '600', '2018-02-09 03:33:55', '2018-02-09 03:33:55', '0', '50'),
(357, '2003-02-28', '3 bedroom  high covenant residence, approximately 153.96 square meters , high-set. It is situated on a 1133 square meters of residential allotment in Taun Street, City of Lae.', 482, '55000', '0', '79000', '1133', '2018-02-09 03:53:26', '2018-02-09 03:53:26', '0', '49'),
(358, '2002-10-10', '2 levels , an office & 3 bedroom residence , factory, approximately  300.04   square meters ,  and storage shed. It is situated on a   4000    square meters of light industrial allotment in Lae.', 483, '240000', '0', '728000', '4000', '2018-02-09 04:03:30', '2018-02-09 04:03:30', '0', '60'),
(359, '2005-02-09', '3 x blocks of residential units, approximately 656.14 square meters. It is situated on a 5,960.0 square meters Light Industrial  allotment along Speybank Street in Lae City.', 484, '350000', '0', '266000', '5960', '2018-02-09 04:27:18', '2018-02-09 04:27:18', '0', '59'),
(360, '2004-06-09', 'Retail shop and bakery on the ground floor, approximately 408 square meters,  with residence upstairs. It is situated on approximately  600  square meters of Commercial allotment in Chinatown, City of Lae.', 485, '90000', '0', '153000', '600', '2018-02-09 04:36:01', '2018-02-09 04:36:01', '0', '150'),
(361, '2004-10-21', '2 levels , 9 rooms  guest house , 5 x bedrooms managers unit and 2 level  office, approximately  523.04  square meters. They are  situated on a       square meters of commercial allotment in Lae.', 486, '600000', '0', '691000', '1200', '2018-02-09 04:42:18', '2018-02-09 04:42:18', '0', '500'),
(362, '2004-02-25', 'Administration building with associated cement products manufacturing sheds totaling 1804.92 square meters and staff accommodation units approximately 349.27  square meters.They are  situated on a  4.766 hectares of light industrial allotment, City of Lae.', 487, '1747000', '0', '516000', '47660', '2018-02-09 04:52:41', '2018-02-09 04:52:41', '0', '37'),
(363, '2004-10-08', 'Three (3) bedroom high-set medium covenant residence totaling 63.56 square meters. It is situated on a 450 square meters of residential allotment in Lae.', 488, '11000', '0', '47000', '450', '2018-02-09 04:57:39', '2018-02-09 04:57:39', '0', '24'),
(364, '2002-06-13', 'H-90 high-set 3 bedroom  high covenant residence, approximately 182.80 square meters with a 2 bedroom flat under main. It is situated on a 809 square meters residential allotment within Lae City.', 489, '32000', '0', '94000', '809', '2018-02-09 05:03:41', '2018-02-09 05:03:41', '0', '40'),
(365, '2002-07-26', '3 bedroom  low cost residence, approximately 52.14 square meters. It is situated on a 450 square meters of residential allotment in Lae.', 490, '9000', '0', '18000', '450', '2018-02-09 05:08:33', '2018-02-09 05:08:33', '0', '20'),
(366, '2003-03-13', '3 bedroom  high-set, medium covenant residence,An approximately 79.36 square meters. It is situated on a 445 square meters  of residential allotment at Boundary Road , Lae', 491, '17800', '0', '48200', '445', '2018-02-09 05:13:22', '2018-02-09 05:13:22', '0', '40'),
(367, '2003-08-25', 'Church, classroom complex, residences , ablution block , shed and haus wind, approximately 1181.28 square meters of . They are situated on a 3716 square meters of mission purpose lease allotment, Sandpiper Road, City of Lae', 492, '200000', '0', '410000', '3700', '2018-02-09 05:22:20', '2018-02-09 05:22:20', '0', '54'),
(368, '2002-11-12', '3 bedroom  residence, approximately 92.86  square meters. It is situated on a  540  square meters of residential allotment in Lae.', 493, '5400', '0', '44600', '540', '2018-02-09 05:27:37', '2018-02-09 05:27:37', '0', '10'),
(369, '2005-01-04', '3-bedroom executive residence, approximately 336.92 square meters of  plus minor improvements including swimming pool and a 3 bedroom flat. It is situated on a 1600 square meters residential allotment, Tenth Street, in Lae City.', 494, '112000', '0', '188000', '1600', '2018-02-09 05:32:44', '2018-02-09 05:32:44', '0', '70'),
(370, '2003-08-18', 'low set , 2 bedrooms high  covenant residence, approximately 89.70  square meters. It is situated on a  1600  square meters of residential allotment on Tenth Street in Lae.', 495, '64000', '0', '26000', '1600', '2018-02-09 05:39:14', '2018-02-09 05:39:14', '0', '40'),
(371, '2005-01-05', '3-bedroom high covenant residence, approximately 207.55 square meters of  with an external laundry/ toilet/ shower and haus wind. It is situated on a 1400 square meters residential allotment, Casuarina Avenue in Lae City.', 496, '98000', '0', '142000', '1400', '2018-02-09 05:46:04', '2018-02-09 05:46:04', '0', '70'),
(372, '2004-06-23', 'Commercial building of concrete floor, approximately 468.0 square meters,  with steel trusses and weatherboard walls. It is situated on 670  square meters of Commercial allotment in Eric Woo, City of Lae.', 497, '168000', '0', '254000', '670', '2018-02-09 05:51:00', '2018-02-09 05:51:00', '0', '250'),
(373, '2004-06-09', 'Retail shop on the ground floor,  approximately 286 square meters, with two bedroom residence upstairs plus carport and a storage shed of 66.06 square meters. It is situated on 650  square meters of Commercial allotment in Eric Woo, City of Lae.', 498, '162000', '0', '138000', '650', '2018-02-09 05:57:24', '2018-02-09 05:57:24', '0', '249'),
(374, '2004-03-18', '3 x 3 bedrooms town house units, approximately 307.52 square meters. They are situated on an approximately 1000 square meters of residential allotment in Falcon Street, Birdsville Area', 499, '65000', '0', '372000', '1000', '2018-02-09 06:02:47', '2018-02-09 06:02:47', '0', '65'),
(375, '2017-06-13', 'Office and showroom complex together with a joinery workshop totaling 1733.37 square meters. It is situated on two industrial blocks comprising 2300 and 2131 square meters respectively.', 500, '1772000', '0', '728000', '4411', '2018-02-11 03:09:23', '2018-02-11 03:09:23', '0', '401'),
(376, '2004-02-10', 'Retail/office space, fore court and driveway, approximately 1551.50 square meters only of. ( Fuel Service Station Only ). It is situated on a 2900 square meters of Business Commercial allotment in Lae.', 501, '0', '210000', '0', '1551.5', '2018-02-11 03:26:10', '2018-02-11 03:26:10', '0', '0'),
(377, '2003-07-25', '3 bedrooms, high covenant residence, approximately 124.67 square meters , low-set. It is situated on a 1600 square meters of residential allotment in Lae.', 502, '80000', '0', '60000', '1600', '2018-02-11 03:33:47', '2018-02-11 03:33:47', '0', '50'),
(378, '2002-06-13', '4 bedrooms high covenant residence, approximately 136.36 square meters , high-set.  It is situated on a 980 square meters of residential allotment in Falcon Street, Birdsville Area.', 503, '64000', '0', '101000', '980', '2018-02-11 03:38:38', '2018-02-11 03:38:38', '0', '65'),
(379, '2002-09-28', '2 levels , 4 x 2 bedrooms  residential units, approximately 349.68 square meters. It is situated on a  800  square meters of residential allotment in Lae.', 504, '32000', '0', '162000', '800', '2018-02-11 04:05:17', '2018-02-11 04:05:17', '0', '40'),
(380, '2005-01-04', '3-bedroom high covenant residence, approximately 430.48 square meters of  with an external laundry/ toilet/ shower and haus wind . It is situated on a 0.12 hectares residential allotment, Kariman Street, in Lae City.', 505, '72000', '0', '158000', '1200', '2018-02-11 04:11:58', '2018-02-11 04:11:58', '0', '60'),
(381, '2004-02-18', '4 x 3 bedroom, three levels ,  executive town house units, approximately 1070.71 square meters with garage, storage room under main, barbecue and pool area, with a generator haus. They are situated on a  1600  square meters of residential allotment in Lae.', 506, '128000', '0', '784000', '1600', '2018-02-11 04:17:55', '2018-02-11 04:17:55', '0', '80'),
(382, '2002-10-14', '3 bedrooms high  covenant residence, approximately 182.44  square meters , low set. It is situated on a  1593  square meters of residential allotment in Lae.', 507, '80000', '0', '60000', '1593', '2018-02-11 04:23:48', '2018-02-11 04:23:48', '0', '50'),
(383, '2002-11-21', '3 bedroom residence, approximately 203.87  square meters, split level        with domestic quarters, carport and storage room under main. It is situated on a  2425  square meters  of residential allotment in Lae.', 508, '120000', '0', '96000', '2425', '2018-02-11 04:31:55', '2018-02-11 04:31:55', '0', '49'),
(384, '2004-02-23', '3 bedrooms  colonial design (medium covenant) residence, domestic quarter, approximately 129.19  square meters, as well as carport. It is  situated on a 1,400 square meters of residential allotment in Lae.', 509, '98000', '0', '32000', '1400', '2018-02-11 04:37:29', '2018-02-11 04:37:29', '0', '70'),
(385, '2002-05-02', '2 levels, 4 bedrooms, approximately 474.83 square meters  ,  plus office, executive class  residence. It is situated on a 1081 square meters of residential allotment in Lae.', 510, '86000', '0', '292000', '1081', '2018-02-11 04:43:31', '2018-02-11 04:43:31', '0', '80'),
(386, '2003-02-20', 'Trade store, club/guest house 2 bedroom flats,  approximately 432.45 square meters, and bed sitters. It is situated on a 972 square meters of residential allotment in Lae.', 511, '15000', '0', '180000', '972', '2018-02-11 04:50:30', '2018-02-11 04:50:30', '0', '15'),
(387, '2005-02-15', 'Industrial warehouse / workshops, offices and accommodation, approximately 5,729.09 square meters. They are situated on 10,100 square meters of industrial allotments, City of Lae.', 512, '555000', '0', '3240000', '10100', '2018-02-11 04:56:58', '2018-02-11 04:56:58', '0', '55'),
(388, '2002-10-10', 'Warehouse / office building , workshop / office building and vacant land for site storage purpose, approximately  2290.68  square meters. They are  situated on a   6.9140 hectares  of light industrial allotments in Lae.', 513, '1298000', '0', '958000', '44430', '2018-02-11 05:09:51', '2018-02-11 05:09:51', '0', '29'),
(389, '2005-01-17', 'warehouse / office Shed, approximately 868.75 square meters, plus office and Accommodation. It is situated on approximately 1200 square meters of Light\nindustrial allotment along Butibum Road ,City of Lae.', 514, '96000', '0', '614000', '1200', '2018-02-11 05:53:43', '2018-02-11 05:53:43', '0', '80'),
(390, '2002-10-10', 'warehouse / office building , workshop / office building and vacant land for site storage purpose, approximately  2290.68  square meters. There are  situated on a       square meters of light industrial allotment in Lae.', 515, '32000', '0', '162000', '2290.68', '2018-02-11 05:58:41', '2018-02-11 05:58:41', '0', '14'),
(391, '2002-02-13', 'Three bedroom residence, shed, and staff quarters, approximately 361.33 square meters of. It is situated on a 1839 square meters Business Commercial allotment in Lae.', 516, '275000', '0', '174000', '1839', '2018-02-11 06:11:46', '2018-02-11 06:11:46', '0', '150'),
(392, '2002-10-22', '6 x  2 , 3 & 4  bedrooms high  cost weatherboard  residences. They are  situated on a  18,196  square meters of industrial parcel of land  in Lae.', 517, '1274000', '0', '606000', '18196', '2018-02-11 06:17:57', '2018-02-11 06:17:57', '0', '70'),
(393, '2004-03-03', 'Vacant industrial/special purpose use land at 11 mile, approximately 22.89 hectares, along Lae-  Nadzab Road .', 518, '2518000', '0', '0', '228900', '2018-02-11 09:48:43', '2018-02-11 09:48:43', '0', '11'),
(394, '2005-11-11', '1 x 3 bedroom, 3 x 2 bedroom high cost residential units. It is situated on a 1,300 square meters of residential allotment in Lae.', 519, '90000', '0', '410000', '1300', '2018-02-11 09:56:57', '2018-02-11 09:56:57', '0', '69'),
(395, '2006-06-01', 'shop/residence, approximately 370.0 square meters of  plus minor improvements. It is situated on a 600 square meters of commercial allotment along Ninth Street, City of Lae.', 520, '0', '500000', '0', '370', '2018-02-11 10:04:34', '2018-02-11 10:04:34', '0', '0'),
(396, '2009-03-04', 'Commercial / Office with two (2) level of Residence, approximately 402.09 square meters of  . It is situated on a 1,933 square meters of commercial allotment within Omili area.', 521, '77000', '0', '237000', '1933', '2018-02-11 10:13:10', '2018-02-11 10:13:10', '0', '40'),
(397, '2005-11-17', 'High set medium covenant residence. It is situated on approximately 800 square meters of residential allotment in Lae.', 522, '50000', '0', '110000', '800', '2018-02-11 10:22:55', '2018-02-11 10:22:55', '0', '63'),
(398, '2004-11-26', 'Three- bedroom low covenant residence on low steel Post totaling 63.56 square meters. It is situated on a square meter residential allotment  in Lae.', 523, '13500', '0', '53000', '450', '2018-02-11 10:29:12', '2018-02-11 10:29:12', '0', '30'),
(399, '2011-07-08', '2 levels, Bed-sitter Flat building, approximately 220.88 square meters,  plus other improvements. It is situated on a 1, 000 square meters residential allotment in Lae City.', 524, '500000', '0', '418000', '1000', '2018-02-11 10:35:20', '2018-02-11 10:35:20', '0', '500'),
(400, '2009-06-18', 'Two bedroom residential building, approximately 78.24 square meters of plus other minor improvements. It is situated on approximately 1, 411 square meters of residential allotment in the City of Lae.', 525, '564000', '0', '140000', '1411', '2018-02-11 10:46:12', '2018-02-11 10:46:12', '0', '399'),
(401, '2009-02-11', '4 bedrooms executive residence, approximately 258 square meters of high set high covenant   with carport/storage/laundry and extra bathroom toilet under main plus other minor improvements. It is situated on approximately 1, 010 square meters of residential allotment in the City of Lae.', 526, '303000', '0', '521000', '1010', '2018-02-11 11:00:17', '2018-02-11 11:00:17', '0', '300'),
(402, '2014-11-28', 'On the property is an existing 3 level office complex and there will be proposed 5 level office complex and ancillary improvements', 527, '32000000', '0', '64000000', '9450', '2018-02-12 04:00:56', '2018-02-12 04:00:56', '0', '3386'),
(403, '2014-06-30', 'The property is a ground level 3 x bedroom residence with an approximate gross floor area of 88.8 square meters plus other improvements.', 528, '230000', '0', '190000', '630', '2018-02-12 04:11:24', '2018-02-12 04:11:24', '0', '365'),
(404, '2014-09-26', 'A high set 2 bedroom residence comprising a gross floor area of approximately 65 square meters, plus other improvements.', 529, '150000', '0', '140000', '450', '2018-02-12 04:27:47', '2018-02-12 04:27:47', '0', '333'),
(405, '2011-07-20', '5 x Bedrooms Executive Residence of 283.5 square meters plus other improvements. It is situated on a 1, 100 square meters residential allotment in Lae City.', 530, '385000', '0', '659000', '1100', '2018-02-12 04:30:27', '2018-02-12 04:30:27', '0', '350'),
(406, '2014-09-18', 'A high-set 3x residence comprising a gross floor area of approximately 120.6 square meters, plus other improvements.', 531, '150000', '0', '230000', '540', '2018-02-12 04:39:05', '2018-02-12 04:39:05', '0', '278'),
(407, '2009-02-23', '3 bedroom executive residence of approximately 207.34 square meters plus a 2 bedroom low set haus-boi together with other minor improvements. They are  situated on a total of 1, 300 square meters of residential allotment within the City of Lae.', 532, '520000', '0', '495000', '1345', '2018-02-12 04:42:33', '2018-02-12 04:42:33', '0', '387'),
(408, '2014-10-24', 'The Property is improved with a ground level residence building with attached two level building comprising commercial offices/ residence and other staff residences and ancillary improvements.', 533, '1500000', '0', '2000000', '1600', '2018-02-12 04:48:53', '2018-02-12 04:48:53', '0', '938'),
(409, '2011-12-06', '2 Levels, 4 x 3 bedroom units, approximately 496.4 square meters,  plus other improvements. It is situated on a 1, 100 square meters residential allotment in Lae City.', 534, '605000', '0', '3379000', '1100', '2018-02-12 04:52:36', '2018-02-12 04:52:36', '0', '550'),
(410, '2014-11-04', 'The property is a compound of residential estate commonly known as the Bugandi Estate. Improvements on site include 25 standalone 3 x bedroom identical residences plus other improvements.', 535, '5000000', '0', '2000000', '1995', '2018-02-12 04:57:35', '2018-02-12 04:57:35', '0', '2506'),
(411, '2011-12-06', '2 levels, 6 x 3 bedrooms units, approximately 504.0 square meters,  plus other improvements. It is situated on approximately 1, 300 square meters residential allotment in Lae City.', 536, '715000', '0', '4962000', '1300', '2018-02-12 05:04:52', '2018-02-12 05:04:52', '0', '550'),
(412, '2015-02-11', 'Erected on the property is a two level building comprises 13 rooms known as Emmanuel Lodge plus other improvements.', 537, '1000000', '0', '4000000', '1989', '2018-02-12 05:08:40', '2018-02-12 05:08:40', '0', '503'),
(413, '2014-12-24', 'The property is a high set 3 x bedroom residence with 3 x bedroom unit on ground floor.', 538, '380000', '0', '370000', '440', '2018-02-12 05:14:51', '2018-02-12 05:15:15', '0', '864'),
(414, '2013-11-05', 'Erected on the property is a high set 3 x bedroom residence plus other improvements. It is situated on a land area of approximately 432 square meters.', 539, '56000', '0', '230000', '432', '2018-02-12 05:27:59', '2018-02-12 05:27:59', '0', '130'),
(415, '2014-12-31', 'Motukea Dockyards and Motukea North Complex', 540, '1057600000', '0', '467500000', '2039450', '2018-02-12 05:40:21', '2018-02-12 05:44:10', '0', '518'),
(416, '2012-08-22', '3 bedroom residence, approximately 86.50 square meters of low cost with fencing. It is situated on approximately 540 square meters of residential allotment in Lae City.', 541, '89000', '0', '129000', '540', '2018-02-12 05:48:37', '2018-02-12 05:48:37', '0', '165'),
(417, '2015-02-13', 'The property is a generally level site fronting the main Butibam Road and boarders Bumbu River.The pre-cast yard is generally improved with concrete batch plants, block making plants, storage sheds and containerized staff accommodation.', 542, '5600000', '0', '600000', '17400', '2018-02-12 05:59:26', '2018-02-12 05:59:26', '0', '322'),
(418, '2015-06-16', 'Erected on the property is a complex of fabrication workshop, admin offices, staff accommodations, storage containers, ablution blocks, messing facility, laboratory, mini fuel service station and guard house plus other improvements.\nLand Area: 5, 263 square meters.', 543, '2890000', '0', '3810000', '5263', '2018-02-12 08:09:17', '2018-02-12 08:09:17', '0', '549'),
(419, '2015-06-16', 'Erected on the property is a split level 4 x 3 bedroom Units plus other improvements. It is situated on a total land area of 1, 340 square meters.', 544, '1500000', '0', '3000000', '1340', '2018-02-12 08:19:11', '2018-02-12 08:19:11', '0', '1119'),
(420, '2017-04-11', 'Erected on the property are: a ground set commercial building and 2 x staff residences plus other improvements. Land Area: 1,882 square meters', 545, '1300000', '0', '1900000', '1882', '2018-02-12 08:31:03', '2018-02-12 08:31:03', '0', '690'),
(421, '2017-04-19', 'Erected on the property is a ground set duplex building comprising 2 x 3 bedroom units plus other improvements. Land Area: 546 square meters', 546, '202000', '0', '268000', '546', '2018-02-12 10:01:38', '2018-02-12 10:01:38', '0', '370'),
(422, '2017-04-19', 'Erected on the property are 2 x 2 level duplex buildings plus other improvements. Land Area: 546 square meters.', 547, '246000', '0', '404000', '546', '2018-02-12 10:13:40', '2018-02-12 10:13:40', '0', '450'),
(423, '2017-04-19', 'Erected on the property is a high set residential building comprising 3 x 3 bedroom units plus other improvements. Land Area: 1,133 square meters.', 548, '680000', '0', '840000', '1133', '2018-02-12 10:20:05', '2018-02-12 10:20:05', '0', '600'),
(424, '2017-04-13', 'Erected on the property is a compound of commercial buildings plus other improvements. Land Area: 6,070 square meters', 549, '4856000', '0', '7544000', '6070', '2018-02-12 10:27:51', '2018-02-12 10:27:51', '0', '800'),
(425, '2017-04-19', 'Erected on the property is a split level 4 x 2 bedroom unit plus other improvements. Land Area:  917 square meters.', 550, '596000', '0', '804000', '917', '2018-02-12 10:38:47', '2018-02-12 10:38:47', '0', '650'),
(426, '2006-11-04', 'An approximately 2,834.81 square meters of 11 x Town Houses with swimming pool plus entertainment area and facilities. They are situated on a 11,140 square meters of residential parcel of land within Boundary Road area, City of Lae.', 551, '557000', '0', '3482000', '11140', '2018-02-12 10:45:18', '2018-02-12 10:45:18', '0', '50'),
(427, '2012-05-28', 'yard comprising a 2 level 2 x bedroom duplex and a 4 x Bedroom residence plus other improvements. They are situated on approximately 1,000 square meters of\nresidential allotment in Lae City.', 552, '250000', '0', '1595000', '1000', '2018-02-13 02:56:14', '2018-02-14 03:32:13', '0', '250'),
(428, '2014-10-22', 'The property comprises a high set 6 x bedroom residence, a 3 x room mini laboratory, plus other minor improvements. they are situated on a land area of approximately 2656 square meters of residential allotment.', 553, '220000', '0', '180000', '2656', '2018-02-13 03:15:41', '2018-02-13 03:15:41', '0', '83'),
(429, '2014-10-14', 'The property comprises two ground level duplex units plus other improvements. They are situated on a total land area of 1, 568 square meters.', 554, '1300000', '0', '1500000', '1568', '2018-02-13 03:32:57', '2018-02-13 03:32:57', '0', '829'),
(430, '2014-10-14', 'The property comprises warehouses with offices and hardstand yard.They are situated on a total land area of 4.4 hectares.', 555, '20000000', '0', '11000000', '44000', '2018-02-13 03:42:58', '2018-02-13 03:42:58', '0', '455'),
(431, '2014-10-24', 'Erected on the property is a high set 2 x bedroom duplex residence and a warehouse plus other improvements. It is situated on a total land area of 2, 547 square meters.', 556, '382000', '0', '568000', '2547', '2018-02-13 04:04:34', '2018-02-13 04:04:34', '0', '150'),
(432, '2014-10-14', 'The property is a vacant land leveled and fenced with barb wire fencing. The land is approximately 819 square meters.', 557, '200000', '0', '1300000', '819', '2018-02-13 05:03:34', '2018-02-13 05:03:34', '0', '244'),
(433, '2005-05-24', 'The property is a Commercial and Residential Buildings, approximately 359.55 square meters of  with Associated improvements.', 558, '15000', '0', '205000', '1245', '2018-02-13 05:19:19', '2018-02-13 05:19:19', '0', '12'),
(434, '2008-03-19', '3 x 2 bedrooms triplex flats, approximately 546 square meters blocks of  plus other minor improvements. These are situated on 546 square meters of residential allotment in the City of Lae.', 559, '33000', '0', '471000', '546', '2018-02-13 05:29:09', '2018-02-13 05:29:09', '0', '60'),
(435, '2008-06-04', '3 bedrooms residence, approximately 74.52 square meters of low set  plus other minor improvements. It is situated on 600 square meters of residential allotment in the City of Lae.', 560, '36000', '0', '83000', '600', '2018-02-13 07:15:30', '2018-02-13 07:15:30', '0', '60'),
(436, '2015-02-11', 'The property is a new two level building known as Emmanuel lodge comprises of 20 rooms plus other improvements.', 562, '800000', '0', '3200000', '1028', '2018-02-13 07:29:28', '2018-02-13 07:29:28', '0', '778'),
(437, '2014-07-30', 'The property is a high set 3 x bedroom residence plus other improvements.\nIt is situated on a land area of approximately 809 square meters', 561, '263000', '0', '341000', '809', '2018-02-13 08:11:45', '2018-02-13 08:11:45', '0', '325'),
(438, '2012-04-20', 'Office/workshop, approximately 139.36m2  of a  as well as an hardstand area. They are situated on a 1,990 square meters of industrial allotment in Lae City.', 563, '796000', '0', '190000', '1990', '2018-02-13 08:39:24', '2018-02-13 08:39:24', '0', '400'),
(439, '2017-02-06', 'The property is a ground set 2 level commercial building plus other improvements. Land Area: 799 square meters', 564, '2050000', '0', '6650000', '799', '2018-02-13 08:56:11', '2018-02-13 08:56:11', '0', '2565'),
(440, '2012-04-03', '3 x bedroom residence comprising an area of approximately 70 square meters plus other minor improvements. It is situated on approximately 716 square meters of residential allotment.', 565, '133000', '0', '106000', '716', '2018-02-13 09:01:37', '2018-02-13 09:01:37', '0', '186'),
(441, '2010-09-25', '3 levels 62 x self contained hotel complex rooms plus other improvements. They are situated on 4.832m2 of residential allotment in Lae City', 566, '1450000', '0', '25027000', '4831', '2018-02-13 09:16:32', '2018-02-13 09:16:32', '0', '300'),
(442, '2013-09-09', 'The property comprises a warehouse building with storage and mezzanine offices. It is situated on a land area of approximately 4,000 square meters of light industrial allotment.', 567, '940000', '0', '2091000', '4000', '2018-02-13 10:21:28', '2018-02-13 10:21:28', '0', '325'),
(443, '2013-02-19', 'Split level 3 x bedroom residence comprising an area of approximately 178.50 square meters plus other minor improvements. It is situated on approximately 1012 square meters of residential allotment.', 568, '272000', '0', '533000', '1012', '2018-02-13 10:26:40', '2018-02-13 10:26:40', '0', '269'),
(444, '2007-01-24', '4 bedrooms, approximately 157.64m2 up and down stand alone residence of.\nThey are situated on approximately 1,100 square meters of residential allotment.', 569, '110000', '0', '200000', '1100', '2018-02-13 10:33:26', '2018-02-13 10:33:26', '0', '100'),
(445, '2007-01-24', '3 bedrooms residence, approximately 122.8m2 stand alone high-set  with carport and Laundry/Storage building. They are situated on approximately 1, 600 square meters of residential allotment.', 570, '160000', '0', '200000', '1100', '2018-02-13 10:37:54', '2018-02-13 10:37:54', '0', '145'),
(446, '2017-05-08', 'Erected on the property are: a ground set residential building and 2 level residential building plus other improvements. Land Area: 6,310 square meters.', 571, '1140000', '0', '1460000', '6310', '2018-02-13 10:50:40', '2018-02-13 10:50:40', '0', '181'),
(447, '2017-05-08', 'Erected on the property is a 2 level residential building with adjoining ground set extension plus other improvements. Land Area:	1,052 square meters.', 572, '950000', '0', '4250000', '1052', '2018-02-13 11:00:35', '2018-02-13 11:00:35', '0', '903'),
(448, '2017-05-17', 'Erected on the property are; a low set residential building with attached office wing and split level accommodations plus other improvements.  Land Area:1,624 square meters', 573, '568000', '0', '832000', '1624', '2018-02-14 02:27:28', '2018-02-14 02:27:28', '0', '350'),
(449, '2006-02-15', 'Vacant Land, Approximately 32,400 square meters with chain mesh wire fencing along the perimeter of the property.', 574, '5669000', '0', '31000', '32400', '2018-02-14 03:01:46', '2018-02-14 03:01:46', '0', '175'),
(450, '2006-08-24', 'Industrial allotment,approximately 23,000 square meters of along Erica and Sletford Streets, City of Lae.', 575, '4000000', '0', '0', '23000', '2018-02-14 03:07:55', '2018-02-14 03:07:55', '0', '174'),
(451, '2004-03-20', 'hardstand being generally level and compacted with gravel and an approximately 980.48 square meters of administration office, showroom, warehouse and other associated facilities in its existing use. They are adjoining (back to back) and situated on an approximately 4,024 square meters of light industrial allotments in Lae.', 576, '169000', '0', '8000', '2012', '2018-02-14 03:20:08', '2018-02-14 03:20:08', '0', '84'),
(452, '2017-01-16', 'Erected on the property are; a low set residential building with attached a 2 level accommodation and a detached 2 level incomplete residential accommodation plus other improvements. It is situated on a land area of 885 square meters', 577, '194700', '0', '180300', '885', '2018-02-14 03:53:24', '2018-02-14 03:53:24', '0', '220'),
(453, '2016-04-26', 'Erected on the property is a standalone 6 x bedroom residence and a detached domestic quarter. Land Area: 1, 340 square meters.', 578, '737000', '0', '683000', '1340', '2018-02-14 04:03:47', '2018-02-14 04:03:47', '0', '550'),
(454, '2016-01-15', 'The property is a residential duplex building comprising of 3 x bedroom units plus\nother improvements. Land Area: 810 square meters', 579, '657140', '0', '842860', '1133', '2018-02-14 06:44:27', '2018-02-14 06:44:27', '0', '596'),
(455, '2008-03-28', 'Industrial building comprising, offices, sheds workshop and accommodation.\nIt is situated on 3,987 square meters industrial allotments in Lae.', 580, '398700', '0', '1245300', '3987', '2018-02-14 06:50:39', '2018-02-14 06:50:39', '0', '100'),
(456, '2002-10-10', '2 levels , an office & 3 bedroom residence , factory, approximately 300.04 square meters ,  and storage shed . It is situated on a 4000 square meters of light industrial allotment in Lae.', 581, '240000', '0', '728000', '4000', '2018-02-14 06:55:01', '2018-02-14 06:55:01', '0', '60'),
(457, '2012-12-20', 'High set high cost 3 x bedroom residence containing a total floor area of 120.14 square meters plus other improvements. It is situated on a total of approximately 640 square meters of Residential allotment in Town of Goroka.', 582, '183000', '0', '418000', '640', '2018-02-14 07:10:10', '2018-02-14 07:10:10', '0', '286'),
(458, '2008-08-05', '3 x bedrooms residence and a proposed 2 levels 3 bedroom executive triplex flats together with associated minor improvements. The residence and proposed improvements is are situated on 1, 100 square meters of residential allotment within City of Lae.', 583, '110000', '0', '1060000', '1100', '2018-02-14 07:18:00', '2018-02-14 07:18:00', '0', '100'),
(459, '2012-08-09', '2 x residences, area comprising a Church and   plus other improvements.\nThey are situated on a 946 square meters residential allotment in Lae City.', 584, '29000', '0', '43000', '972', '2018-02-14 07:57:24', '2018-02-14 07:57:24', '0', '30'),
(460, '2008-05-12', '2 levels Commercial / Office and residential guest house together, approximately total of 572.09 square meters of with other minor improvements. They are situated on a 1,933 square meters of commercial allotment within Omili area.', 585, '116000', '0', '660000', '1933', '2018-02-14 08:04:32', '2018-02-14 08:04:32', '0', '60'),
(461, '2008-08-22', '3 bedrooms low set residence, approximately 122.34 square meters of . It is situated on approximately 1, 300 square meters of residential allotment in the City of Lae.', 586, '234000', '0', '194000', '1500', '2018-02-14 08:14:39', '2018-02-14 08:14:39', '0', '156'),
(462, '2008-08-22', '3 bedrooms stand alone residence, approximately 122.34 square meters of  . It is situated on 1,500 square meters of residential allotment in the City of Lae.', 587, '375000', '0', '219000', '1500', '2018-02-14 08:20:29', '2018-02-14 08:20:29', '0', '250'),
(463, '2014-06-10', 'A high set 3 x bedrooms executive residence with entertainment/bar\nfacilities on ground floor plus other improvements including all normal  fixtures, fittings and septic systems.', 588, '546000', '0', '742000', '1300', '2018-02-14 08:27:39', '2018-02-14 08:27:39', '0', '420'),
(464, '2016-11-29', 'Erected on the property are; a ground set warehouse, Storage/accommodation building and high set residence plus other improvements. Total Land Area: 3,990 square meters.', 589, '880000', '0', '615000', '3990', '2018-02-14 08:43:56', '2018-02-14 08:43:56', '0', '220'),
(465, '2013-12-12', 'The improvements on site include the Hospital Building, an adjoined two level residence building and the hospital kitchen.', 590, '2700000', '4345000', '3194550', '1500', '2018-02-14 08:58:57', '2018-02-14 08:58:57', '0', '1800'),
(466, '2001-10-10', 'High covenant high set 3 Bedroom Duplex, approximately 189.00 square meters . It is situated on a 990 square meters of residential allotment at Cassowary Road,  City of Lae.', 591, '63000', '0', '67000', '990', '2018-02-14 09:05:03', '2018-02-14 09:05:03', '0', '64'),
(467, '2017-05-22', 'The property is a three level residence building comprising 6 x 3 bedroom executive units plus other improvements. They are situated on a land area of approximately 1, 518 square meters', 592, '1800000', '0', '6300000', '1518', '2018-02-14 09:20:58', '2018-02-14 09:20:58', '0', '1185'),
(468, '2012-09-19', '3 bedrooms duplex, approximately 201.6 square meters of  plus other minor improvements. It is situated on approximately 1,114 square meters of residential allotment in Lae City.', 593, '535000', '0', '458000', '1114', '2018-02-14 09:28:39', '2018-02-14 09:28:39', '0', '480'),
(469, '2011-11-11', '3 bedrooms stand alone residence, approximately 140.6 square meters of high set high covenant   with carport/storage and laundry under main plus other minor improvements. It is situated on a 1, 115 square meters residential allotment in Lae City.', 594, '39025', '0', '486775', '1115', '2018-02-14 09:33:52', '2018-02-14 09:33:52', '0', '35'),
(470, '2005-03-14', 'Vacant land with security fences. It is situated on approximately 7,607 square meters of industrial allotment, along Macdhui & Speybank Streets, City of Lae.', 595, '551000', '0', '30000', '7607', '2018-02-14 09:46:35', '2018-02-14 09:46:35', '0', '72'),
(471, '2005-03-14', 'industrial offices/storage buildings and workshop, approximately 773.15 square meters of. It is situated on approximately 5,000 square meters of light industrial allotments, along Macdhui & Speybank Streets, City of Lae.', 596, '400000', '0', '530000', '5000', '2018-02-14 09:55:49', '2018-02-14 09:55:49', '0', '80'),
(472, '2008-02-27', '5 x bedrooms residence with external carport, approximately 172.08 square meters of high covenant   plus other minor improvements. These are situated on approximately 900 square meters of residential allotment in the City of Lae', 597, '135000', '0', '328000', '900', '2018-02-14 10:02:06', '2018-02-14 10:02:06', '0', '150'),
(473, '2008-06-19', 'Office/Warehouse building, approximately 1120 square meters of  plus industrial sheds as well complementing residential improvements and other minor improvements. They are situated on a total of 5,400 square meters of industrial allotment in the City of Lae.', 598, '1890000', '0', '4307000', '5400', '2018-02-14 10:10:32', '2018-02-14 10:10:32', '0', '350'),
(474, '2009-02-10', '4 x 3 bedroom units, approximately 352.32 square meters block of  plus other minor improvements. They are situated on approximately 1, 200 square meters of residential allotment in the City of Lae.', 599, '180000', '0', '485000', '1200', '2018-02-14 10:40:35', '2018-02-14 10:40:35', '0', '150'),
(475, '2000-08-11', 'vacant Industrial allotment located within the Voco Point Area, approximately 1177 square meters of  .', 600, '77000', '0', '0', '1177', '2018-02-14 10:48:49', '2018-02-14 10:48:49', '0', '65'),
(476, '2006-10-27', '3 bedroom residence, approximately 60.6 square meters, high-set  . It is situated on approximately 500 square meters of residential allotment in Lae.', 601, '30000', '0', '74000', '500', '2018-02-14 10:59:09', '2018-02-14 10:59:09', '0', '60'),
(477, '2015-06-10', 'The property is improved with a two level shop complex with a basement storage. It is situated on a total land area of approximately 1, 521 square meters.', 602, '930000', '0', '5800000', '1521', '2018-02-14 11:07:01', '2018-02-14 11:07:01', '0', '611'),
(478, '2015-06-10', 'The property is improved with a two level shop complex with other associated improvements. It is situated on a total land area of approximately 300 square meters.', 603, '200000', '0', '1300000', '300', '2018-02-15 02:48:01', '2018-02-15 02:48:01', '0', '667'),
(479, '2016-06-06', 'Erected on the property are several bush-material family residences and a standalone three (3) bedroom residence comprising a gross floor area of 200 square meters.', 604, '0', '0', '0', '74000', '2018-02-15 03:02:34', '2018-02-15 03:02:34', '1080000', '0'),
(480, '2015-07-08', 'Erected on the property are two big workshops and a two level office building plus other improvements. It is situated on a total land area of 3, 986 square meters.', 605, '2400000', '0', '3200000', '3986', '2018-02-15 03:08:25', '2018-02-15 03:08:25', '0', '602'),
(481, '2016-09-20', 'Erected on the property are; low set residential building comprising 5 x bedrooms with bar and swimming pool and 2 x detached dwellings. Land Area: 1,517 square meters', 606, '1050000', '0', '1450000', '1517', '2018-02-15 03:23:29', '2018-02-15 03:23:29', '0', '692'),
(482, '2016-08-29', 'Erected on the property are; 2 x commercial buildings. Building One (1) comprises of 2 levels; level one comprising retail shops and warehouse and level two comprise of office rooms. Building Two (2) comprise of three (3) storey building comprising office rooms plus other improvements. Land Area: 5,206 square meters.', 607, '4900000', '0', '14900000', '5206', '2018-02-15 03:39:49', '2018-02-15 03:39:49', '0', '941'),
(483, '2016-09-08', 'The property is a ground set commercial building comprising retail shop, office, storage and toilets plus other improvements. Land Area:  639 square meters.', 608, '1598000', '6220000', '4002000', '639', '2018-02-15 04:29:28', '2018-02-15 04:29:28', '0', '2500'),
(484, '2014-12-31', 'Harbour City is a privately owned estate and is a "gated community" with a mixture of commercial office buildings, multi-storey residential accommodation, service buildings, a marina and associated improvements.', 610, '205650000', '940000000', '373250000', '166610', '2018-02-15 04:54:59', '2018-02-15 04:54:59', '0', '1234'),
(485, '2014-12-31', 'Burns Peak estate is generally vacant land with a pre-existing managers residence and integral staff accommodation.', 611, '73625000', '2675000', '0', '9653', '2018-02-15 05:30:33', '2018-02-15 05:30:33', '0', '7627'),
(486, '2015-04-23', 'On the property is a single level building comprises a 1 x 3 bedroom residence in high steel piers and of fibro and timber construction having a gross floor area of 120 square meters.', 612, '370000', '0', '230000', '966', '2018-02-15 05:41:18', '2018-02-15 05:41:18', '0', '383'),
(487, '2015-03-30', 'The property is improved with a high set 4x bedroom executive residence building plus other improvements.', 613, '1340000', '0', '1160000', '840', '2018-02-15 05:50:33', '2018-02-15 05:50:33', '0', '1595'),
(488, '2016-09-09', 'The property is a ground set commercial building comprising retail shop and warehouse plus other improvements. Land Area:  2,514 square meters.', 609, '4525000', '0', '11175000', '2514', '2018-02-15 07:16:07', '2018-02-15 07:16:07', '0', '1800'),
(489, '2016-09-08', 'Erected on the property are; 1 x ground set commercial building comprising offices, supermarket, food bar, liquor shop, warehouse and kitchen and a fuel service station  plus other improvements. Land Area:  3,255.4 square meters.', 614, '4232000', '0', '7528000', '3255.4', '2018-02-15 07:22:19', '2018-02-15 07:22:19', '0', '1300'),
(490, '2016-09-21', 'The property is a ground set residential building comprising 3 x bedrooms, bar, swimming pool and carport area plus other improvements. Land Area: 935 square meters', 615, '468000', '0', '1532000', '935', '2018-02-15 07:36:38', '2018-02-15 07:36:38', '0', '500'),
(491, '2016-08-29', 'The property is a compound of 3 detached\n2 level residential buildings comprising 3 x bedrooms\nto the top floor and a lounge, kitchen and\nlaundry/toilet to the ground floor each plus other\nimprovements.\nLand Area: 1,014 square metres', 616, '466400', '0', '853600', '1014', '2018-02-15 07:44:51', '2018-02-15 07:44:51', '0', '460'),
(492, '2016-09-19', 'The property is a 2 level residential building and a detached ground set residence plus other improvements. Land Area: 738 square meters', 617, '396400', '0', '450600', '991', '2018-02-15 07:49:57', '2018-02-15 07:49:57', '0', '400'),
(493, '2016-09-09', 'The property is a high set residential building comprising 3 x bedrooms, lounge, kitchen, shower/toilet and storage with carport area to the ground level plus other improvements. Land Area: 833 square meters', 618, '333200', '0', '657800', '833', '2018-02-15 07:59:02', '2018-02-15 07:59:02', '0', '400'),
(494, '2016-09-09', 'Erected on the property are; a high covenant residence, 2 level triangular shaped residence and a ground set residence plus other improvements. Land Area: 859 square meters.', 619, '305000', '0', '1135000', '859', '2018-02-15 08:06:09', '2018-02-15 08:06:09', '0', '355'),
(495, '2017-08-01', 'Erected on the property is a high set 3 x bedroom residential building plus other improvements.', 620, '300000', '270000', '300000', '1282', '2018-02-15 08:36:34', '2018-02-15 08:36:34', '0', '234'),
(496, '2015-02-12', 'The property is improved with an existing shed with offices, warehouse, adjoined two level showroom with offices recently constructed and a proposed factory building.', 621, '1000000', '0', '4600000', '1990', '2018-02-15 08:41:51', '2018-02-15 08:41:51', '0', '503'),
(497, '2017-06-26', 'The property is a low set 6 x bedroom residential building plus other improvements.\nLand Area:	 1,290 square meters.', 622, '1100000', '0', '340000', '1290', '2018-02-15 08:47:45', '2018-02-15 08:47:45', '0', '853'),
(498, '2015-05-15', 'On the property is a two level building comprises 3x4bedroom residence mixture of reinforced concrete and fibre weatherboard and timber construction, having a gross floor area of approximately 630 square meters each including the balcony.', 623, '1300000', '0', '3000000', '1466', '2018-02-15 08:51:21', '2018-02-15 08:51:21', '0', '887'),
(499, '2017-06-02', 'The property is a standalone residential building comprises 3 x 2 bedroom units plus other improvements. Land Area:  809 square meters.', 624, '290000', '570000', '330000', '809', '2018-02-15 08:58:53', '2018-02-15 08:58:53', '430000', '358'),
(500, '2017-03-27', 'the property is a standalone 2 level ground set residential building with 4 x bedrooms plus other improvements.\nLand Area:  1000 square meters.', 625, '152000', '194000', '58000', '1000', '2018-02-15 09:07:45', '2018-02-15 09:07:45', '0', '152'),
(501, '2018-07-28', 'The property is improved with split level residence building having  3 x4 bedroom each on each level and having a gross floor area of approximately 212.5 square meters.', 626, '200000', '0', '550000', '556', '2018-02-15 09:09:35', '2018-02-15 09:09:35', '0', '360'),
(502, '2018-07-28', 'The property is improved with a 1x3 bedroom residence building having a gross floor area of 53 square meters.', 627, '140000', '0', '160000', '450', '2018-02-15 09:17:00', '2018-02-15 09:17:00', '0', '311'),
(503, '2017-02-28', 'Erected on the property is a standalone 1 x 3 bedroom residential building. \nLand Area:  450 square meters.', 628, '170000', '0', '60000', '450', '2018-02-15 09:18:20', '2018-02-15 09:18:20', '0', '377'),
(504, '2015-07-28', 'On the property is a workshop building with two level office as well as a detached offices and storage areas', 629, '900000', '0', '500000', '4372', '2018-02-15 09:23:54', '2018-02-15 09:23:54', '0', '206'),
(505, '2018-07-29', 'The property is improved with 3x 2 bedroom triplex residential building converted to office having a gross floor area of approximately 408 square meters.', 630, '400000', '0', '800000', '1032', '2018-02-15 09:33:07', '2018-02-15 09:33:07', '0', '388'),
(506, '2017-06-27', 'the property is a high set 4 x bedroom residential building plus other improvements. Land Area:	 810 square meters.', 631, '260000', '0', '500000', '810', '2018-02-15 09:42:29', '2018-02-15 09:42:29', '0', '321'),
(507, '2017-03-16', 'The property is a special purpose building (Public Toilet Facility) with building extensions comprising a 3 x bedroom residence, kitchen, 1 x office space and 1 x office room  plus other improvements.\nLand Area:  2160 square meters.', 632, '0', '420000', '0', '2160', '2018-02-15 09:58:47', '2018-02-15 09:58:47', '0', '0'),
(508, '2017-07-20', 'Erected on the property is a 3 x bedroom residential house plus other improvements.', 633, '900000', '0', '700000', '1492', '2018-02-15 10:22:36', '2018-02-15 10:22:36', '0', '603'),
(509, '2017-04-12', 'Erected on the property is a standalone 3 x bedroom residential building plus other improvements. Land Area:  546 square meters.', 634, '280000', '0', '240000', '546', '2018-02-16 02:11:51', '2018-02-16 02:11:51', '0', '513'),
(510, '2007-10-19', 'Warehouse/residence building, approximately 390.45 square meters of  .\nIt is situated on a 788 square meters of commercial allotment in the Township of Goroka.', 635, '118000', '0', '166000', '788', '2018-02-16 02:21:02', '2018-02-16 02:21:02', '0', '150'),
(511, '2014-07-14', 'the property is high set 3 x bedroom residence plus other improvements.\nIt is situated on a total land area of 450 square meters.', 636, '0', '345000', '0', '450', '2018-02-16 02:27:35', '2018-02-16 02:27:35', '0', '0'),
(512, '2014-01-23', 'Proposed development of the site is to comprise a two levels 2 x 3 bedroom units and 6 x 2 bedrooms unit.  It will be situated on a land area of approximately 648 square meters.', 637, '227000', '0', '718000', '648', '2018-02-16 02:45:58', '2018-02-16 02:45:58', '0', '350'),
(513, '2014-01-27', 'The property comprises a two level Guest House accommodation known as the “One Mile Guest House” plus other minor improvements. It is situated on a land area of approximately 1,232 square meters of residential allotment.', 638, '598000', '0', '895000', '1232', '2018-02-16 02:59:16', '2018-02-16 02:59:16', '0', '485'),
(514, '2014-05-06', 'The property is a two levels 3 x bedrooms residence and a 2 x bedroom unit on ground floor plus other improvements. It is situated on a total land area of 809 square meters.', 639, '243000', '0', '683000', '809', '2018-02-16 04:08:22', '2018-02-16 04:08:22', '0', '300'),
(515, '2014-09-10', 'Improvements on site includes a two levels 4 x 2 bedroom units and a detached two levels 2 x 3 bedroom units plus other improvements. It is situated on a total land area of 809 square meters.', 640, '280000', '1440000', '970000', '809', '2018-02-16 04:16:32', '2018-02-16 04:16:32', '0', '346'),
(516, '2014-09-10', 'Erected on the property is a ground level shop building and adjoined residences, offices and storage, approximate land area of 650 square meters. .', 641, '1300000', '4600000', '3800000', '650', '2018-02-16 04:27:53', '2018-02-16 04:27:53', '0', '2000'),
(517, '2014-09-10', 'Two levels bedsitter flat comprising 14 x self contained rooms and a detached two levels 2 x 1 bedroom units plus other improvements. It is situated on a total land area of 1, 100 square meters.', 642, '605000', '1050000', '760000', '1100', '2018-02-16 04:39:52', '2018-02-16 04:39:52', '0', '550'),
(518, '2013-10-31', 'Three adjoining allotments comprising the Super market building commonly known as the “Sika Super Market” and detached hardware, bakery/offices and kai bar/residence building plus other improvements.', 643, '1160000', '0', '2985000', '1200', '2018-02-16 05:38:44', '2018-02-16 05:38:44', '0', '967'),
(519, '2013-10-31', 'The property is a staff quarters with 7 x rooms comprising a gross floor are of approximately 105.6 square meters  plus other improvements. It is situated on 1, 280 square meters of residential allotment in Town of Kundiawa.', 644, '115000', '0', '35000', '0', '2018-02-16 05:43:28', '2018-02-16 05:43:28', '0', '1280'),
(520, '2013-10-31', 'Shop complex commonly known as the “TNA Supermarket” plus other improvements. It is situated on a 1, 000 square meters of commercial allotment in Town of Kundiawa.', 645, '820000', '0', '2765000', '1000', '2018-02-18 01:56:11', '2018-02-18 01:56:11', '0', '820'),
(521, '2013-10-31', 'High 3 x bedroom residence with a 2 x bedroom residence o n ground floor plus other improvements. It is situated on a 923 square meters of residential allotment in Town of Kundiawa.', 646, '277000', '0', '296000', '924', '2018-02-18 02:01:58', '2018-02-18 02:01:58', '0', '300');
INSERT INTO `valuations` (`id`, `date`, `description`, `property_id`, `land_component`, `insurance_value`, `improvement_component`, `area`, `created_at`, `updated_at`, `forced_sale_value`, `land_value_rate`) VALUES
(522, '2014-03-24', 'The property comprises a split level 3 x bedroom quadruplet comprising a gross floor area of approximately 719.2 square meters with attached carport comprising a gross floor area of approximately 164 square meters plus\nother improvements. It is situated on a 1, 037 square meters of residential\nallotment.', 647, '1556000', '3870000', '3321000', '1037', '2018-02-18 02:45:23', '2018-02-18 02:45:23', '0', '1500'),
(523, '2014-03-24', 'The property comprises two adjoining blocks of two\nlevels 3 x bedrooms duplex units plus a detached 3 x\nbedroom single residence as well as other improvements.\nThey are situated on a 2, 100 square metres of residential\nallotment.', 648, '3150000', '4016000', '3762000', '2100', '2018-02-18 03:00:04', '2018-02-18 03:00:04', '0', '2100'),
(524, '2014-03-24', 'The property comprises a two level 5 x 3 bedroom townhouse units comprising a gross floor area of approximately 586.6 square meters with attached carport comprising a gross floor area of approximately 234 square meters plus other improvements. It is situated on a 1, 366 square meters of residential allotment.', 649, '2459000', '4129000', '4362000', '1366', '2018-02-18 03:09:24', '2018-02-18 03:09:24', '0', '1800'),
(525, '2014-03-24', 'The property comprises a low set 3 x bedroom single residence and a detached warehouse building plus other improvements. It is situated on a 1, 370 square meters of residential allotment.', 650, '1370000', '895000', '668000', '1370', '2018-02-18 03:19:36', '2018-02-18 03:19:36', '0', '1000'),
(526, '2014-03-24', 'Low set residence building converted to office plus other improvements.\nIt is situated on a 1, 500 square meters of residential allotment.', 651, '1300000', '653000', '431000', '1300', '2018-02-18 03:27:00', '2018-02-18 03:27:00', '0', '1000'),
(527, '2014-03-24', 'single storey lodge accommodation building commonly known as the “Eriku Lodge” plus other improvements. It is situated on a 2, 600 square meters of residential allotment.', 652, '1950000', '0', '2260000', '2600', '2018-02-18 03:41:07', '2018-02-18 03:41:07', '0', '750'),
(528, '2014-03-24', 'The property comprises a 3 x bedroom duplex unit comprising a gross floor area of approximately 205.2 square meters and a basement storage/unit of 108 square meters plus other improvements. It is situated on a 1, 602 square meters of residential allotment.', 653, '2804000', '0', '2998000', '1602', '2018-02-18 04:07:20', '2018-02-18 04:07:20', '0', '1749'),
(529, '2014-09-17', 'Erected on the property is a two level 2 x bedroom duplex unit plus other improvements. It is situated on a total land area of 1, 083 square meters.', 654, '270000', '0', '630000', '1083', '2018-02-18 04:25:07', '2018-02-18 04:25:07', '0', '249'),
(530, '2017-08-07', 'Erected on the property is a low set residential building plus other improvements.\nLand Area:  1,348 square meters.', 655, '510000', '0', '790000', '1348', '2018-02-18 05:42:20', '2018-02-18 05:42:20', '0', '378'),
(531, '2017-08-07', 'The property is a vacant block fully fenced and ideally located at the corner of Regina Avenue and Coralita Street with high demand and development potential for residential purposes.  It is relatively level and is ready for use as residential development.', 656, '580000', '0', '0', '2580', '2018-02-18 05:50:04', '2018-02-18 05:50:04', '0', '225'),
(532, '2014-09-01', 'The property is a low set medium cost 4 x bedroom residence and a bed-sitter plus other improvements. It is situated on a total land area of 1, 593 square meters.', 657, '717000', '0', '200000', '1593', '2018-02-18 06:02:22', '2018-02-18 06:02:22', '0', '450'),
(533, '2012-10-10', 'High set 3 x bedroom residence containing a total floor area of approximately 134.6 square meters, plus other improvements. It is situated on a 1 600 square meters residential allotment in Lae City.', 658, '880000', '449000', '378000', '1600', '2018-02-18 07:25:58', '2018-02-18 07:25:58', '0', '550'),
(534, '2012-10-10', '3 x bedroom L-shaped executive residence containing a total floor area of approximately 288.9 square meters, plus other improvements.\nIt is situated on a 1 000 square meters residential allotment in Lae City.', 659, '320000', '890000', '665000', '1000', '2018-02-18 07:30:33', '2018-02-18 07:30:33', '0', '320'),
(535, '2015-01-28', 'The property is a two level apartment comprising 6 x 2 bedroom units and a split level 3 bedroom unit plus other improvements. nIt is situated on a total land area of 538 square meters.', 660, '135000', '0', '1365000', '538', '2018-02-18 07:50:17', '2018-02-18 07:50:17', '0', '251'),
(536, '2015-04-22', 'The property is two level 2 bedroom duplex residence plus other improvements. It is situated on a total land area of 1, 545 square meters.', 661, '386000', '414200', '366000', '1545', '2018-02-18 07:56:25', '2018-02-18 07:56:25', '0', '250'),
(537, '2016-04-22', 'The property is a two level 4 x 2 bedroom apartments and a detached 2 x bedroom residence plus other improvements. It is situated on a total land area\nof 810 square meters.', 662, '202000', '984000', '1298000', '810', '2018-02-18 08:05:48', '2018-02-18 08:05:48', '0', '249'),
(538, '2015-04-20', 'The property is a recently built split level 5 x 3 bedroom apartments plus other improvements. It is situated on a total land area of 951 square meters.', 663, '600000', '1615000', '2900000', '951', '2018-02-18 08:12:03', '2018-02-18 08:12:03', '0', '631'),
(539, '2015-04-23', 'The property is two level duplex comprising a 4 x bedroom downstairs unit and a    3 x bedroom upstairs unit plus other improvements. It is situated on a total land area of 1, 636.45 square meters.', 664, '400000', '400000', '327000', '1636.45', '2018-02-18 08:21:49', '2018-02-18 08:21:49', '0', '244'),
(540, '2015-02-02', 'The property is a low set 8 x bedroom residence plus other improvements.\nIt is situated on a land area of approximately 645 square meters.', 665, '250000', '481000', '290000', '645', '2018-02-18 08:35:01', '2018-02-18 08:35:01', '0', '388'),
(541, '2016-12-09', 'The property is a standalone 1 x 3 bedroom residential. It is situated on total land areas of 450 square meters.', 666, '180000', '260000', '250000', '450', '2018-02-18 08:52:12', '2018-02-18 08:52:12', '0', '400'),
(542, '2013-01-18', '2 level 3 x bedroom residence comprising a floor area of approximately 122.40m2. It is situated on approximately 596 square meters of residential allotment in Town of Madang.', 667, '107000', '306000', '190000', '596', '2018-02-18 09:01:25', '2018-02-18 09:01:25', '0', '180'),
(543, '2014-11-19', 'The property is a two level commercial building plus other improvements.\nIt is situated on a total land area of 455 square meters.', 668, '200000', '430000', '460000', '455', '2018-02-18 09:09:13', '2018-02-18 09:09:13', '0', '440'),
(544, '2017-01-13', 'The property are, a four (4) bedroom low set residence and a two (2) level 1 x 2 & 1 x 4 bedroom duplex unit accommodation plus other improvements.\nLand Area: 1,500 square meters.', 669, '720000', '0', '1400000', '1500', '2018-02-18 09:23:46', '2018-02-18 09:23:46', '0', '480'),
(545, '2017-08-21', 'The property is a 2 level 4 x 2 bedroom units and adjoining 2 x 3 bedroom units plus other improvements.\nLand Area: 1,384 square meters', 670, '650000', '0', '2250000', '1384', '2018-02-18 09:40:41', '2018-02-18 09:40:41', '0', '470'),
(546, '2017-08-21', 'The property is a commercial building comprising offices, retail and hardstand fabrication area plus other improvements. Land Area: 4,000 square meters', 671, '3700000', '4300000', '2300000', '4000', '2018-02-18 09:55:25', '2018-02-18 09:55:25', '0', '925'),
(547, '2014-12-18', 'This allotment comprises a two level 12 x 2 bedroom apartments, a guard house and a gen set shed.', 672, '740000', '0', '6260000', '1315', '2018-02-18 10:08:04', '2018-02-18 10:08:04', '0', '563'),
(548, '2014-12-18', 'A high warehouse with inbuilt two level office including all normal fixtures, fittings\nand septic systems plus other improvements.', 673, '12000000', '1300000', '1500000', '12000', '2018-02-18 10:24:51', '2018-02-18 10:24:51', '0', '1000'),
(549, '2014-12-18', 'These adjoining allotments is the main\nretail warehouse with full mezzanine floor. Both\nfloors are being used as super market with Manager’s\noffice downstairs and storage. It is situated on a total\nland area of 1, 400 square meters', 674, '1200000', '2000000', '5800000', '1400', '2018-02-18 10:36:58', '2018-02-18 10:36:58', '0', '857'),
(550, '2014-12-18', 'Erected on these adjoining allotments is the main retail warehouse with full mezzanine floor. Both floors are being used as super market with Manager’s office downstairs and storage. It is situated on a total land area of 700 square meters.', 675, '1200000', '1650000', '2000000', '700', '2018-02-18 10:48:05', '2018-02-18 10:48:05', '0', '1714'),
(551, '2015-03-26', 'The land comprises a regular shaped inside allotment and is inline with the street level. The general topography is level to the road frontage and gently slopes down. The property is a hardstand and has been fenced with picket fencing.', 676, '1800000', '0', '0', '2070', '2018-02-18 10:56:17', '2018-02-18 10:56:17', '0', '870'),
(552, '2014-11-12', 'The property is vacant land and has not been fenced or secured in any form.The land comprises a regular shaped inside allotment and is inline with the street level. The general topography is level to the rear boundary and gently slopes up to the street frontage.', 677, '350000', '0', '0', '783', '2018-02-19 13:24:23', '2018-02-19 13:24:23', '0', '447'),
(553, '2014-12-18', 'The property is vacant land and has been fenced with cyclone mesh fencing.The land comprises a regular shaped inside allotment and is inline with the street level. The general topography is level to the rear boundary and gently slopes down to the street frontage.', 678, '4000000', '0', '0', '4000', '2018-02-19 13:30:29', '2018-02-19 13:30:29', '0', '1000'),
(554, '2014-12-18', 'The property is vacant land and has been fenced with cyclone mesh fencing. The land comprises a regular shaped inside allotment and is inline with the street level. The general topography is level to the rear boundary and gently slopes down to the street frontage.', 679, '4000000', '0', '0', '4000', '2018-02-19 16:36:22', '2018-02-19 16:36:22', '0', '1000'),
(555, '2014-12-18', 'The property is a warehouse and hardstand for storage.This is a three adjoining allotments with the lands comprise a regular shaped inside allotment and are inline with the street level. The general topography is level to the rear boundary and gently slopes down to the street frontage.', 680, '12000000', '1300000', '1500000', '12000', '2018-02-19 16:45:54', '2018-02-19 16:45:54', '0', '1000'),
(556, '2014-12-18', 'Erected on these adjoining allotments are three adjoining warehouses with mezzanine floors. The warehouses are being used as storage, shops and main office.  It is situated on a total land area of   6, 020 square meters.', 681, '5000000', '14250000', '18000000', '6020', '2018-02-19 16:52:58', '2018-02-19 16:52:58', '0', '831'),
(557, '2012-12-31', 'Airport Terminal Building', 301, '0', '0', '675000', '0', '2018-02-19 17:38:19', '2018-02-19 17:38:19', '0', '0'),
(558, '2012-12-31', 'Air Niugini Sales Office', 300, '350000', '0', '200000', '0', '2018-02-19 18:02:58', '2018-02-19 18:02:58', '0', '0'),
(559, '2012-12-31', 'Three bedroom single level duplex.', 311, '150000', '0', '500000', '963', '2018-02-19 18:07:56', '2018-02-19 18:07:56', '0', '156'),
(560, '2012-12-31', 'Air Niugini Sales office', 302, '875000', '0', '875000', '1160', '2018-02-19 18:11:03', '2018-02-19 18:11:03', '0', '754'),
(561, '2012-12-31', 'Single level three bedroom residence with an attached car port and laundry.', 299, '70000', '0', '280000', '2871', '2018-02-19 18:14:24', '2018-02-19 18:14:24', '0', '24'),
(562, '2012-12-31', 'Air Niugini sales and administrative office.', 303, '300000', '0', '600000', '534', '2018-02-19 18:17:50', '2018-02-19 18:17:50', '0', '562'),
(563, '2012-12-31', 'Air Niugini cargo shed.', 304, '285000', '0', '165000', '1421', '2018-02-19 18:21:44', '2018-02-19 18:21:44', '0', '201'),
(564, '2012-12-31', 'Air Niugini Terminal Building', 305, '0', '0', '1750000', '0', '2018-02-19 18:24:14', '2018-02-19 18:24:14', '0', '0'),
(565, '2014-12-18', 'The property comprises of a retail shop and office Including all normal \nfixtures, fittings and septic systems  Plus other improvements.', 682, '2500000', '2090000', '1500000', '700', '2018-02-19 19:28:10', '2018-02-19 19:28:10', '0', '3571'),
(566, '2017-12-31', 'Ground level terminal building.', 308, '0', '0', '900000', '0', '2018-02-19 20:22:32', '2018-02-19 20:22:32', '0', '0'),
(567, '2012-12-31', 'ground level weatherboard terminal building.', 309, '0', '0', '750000', '0', '2018-02-19 20:24:58', '2018-02-19 20:24:58', '0', '0'),
(568, '2012-12-31', 'Four level older style commercial building with an approximate gross floor area of 4029 square meters including the open deck area.', 313, '3000000', '0', '13000000', '10310', '2018-02-19 20:31:21', '2018-02-19 20:32:53', '0', '291'),
(569, '2012-12-31', 'Two bedroom highset duplex.', 315, '175000', '0', '275000', '1717', '2018-02-19 20:37:02', '2018-02-19 20:37:02', '0', '102'),
(570, '2017-12-31', 'On the property are a detached office, attached office/storage, 3x warehouses, detached ablution block and ancillary improvements.', 316, '500000', '0', '5500000', '7767', '2018-02-19 20:43:07', '2018-02-19 20:43:07', '0', '64'),
(571, '2012-12-31', 'This is a two level 7 x 3 bedroom units having an approximate gross floor of 1, 174 square meters. Accommodation to each unit comprises a laundry, kitchen, lounge,  dinning, three bedrooms, toilet and bathroom.', 317, '2000000', '0', '4000000', '1723', '2018-02-19 20:46:47', '2018-02-19 20:46:47', '0', '1161'),
(572, '2012-12-31', 'This is a single level three bedroom residence with a bed-sitter and laundry', 318, '1000000', '0', '600000', '1353', '2018-02-19 20:50:03', '2018-02-19 20:50:03', '0', '739'),
(573, '2012-12-31', 'this is a two level building having 4 x 3 bedroom units having a gross floor area of 394 square meters', 320, '1500000', '0', '2000000', '1214', '2018-02-19 20:53:55', '2018-02-19 20:53:55', '0', '1235'),
(574, '2012-12-31', 'The property is a three-bedroom residence with a bed-sitter and laundry underneath', 321, '1200000', '0', '600000', '1530', '2018-02-19 20:57:27', '2018-02-19 20:57:27', '0', '784'),
(575, '2017-03-01', 'The property is a split level building comprising 1 x 4 bedroom residence and ancillary improvements', 329, '300000', '0', '500000', '556', '2018-02-19 21:02:31', '2018-02-19 21:02:31', '0', '540'),
(576, '2012-12-31', 'the property is a split-level four-bedroom residence with a laundry and carport underneath', 322, '1500000', '0', '1000000', '1479', '2018-02-19 21:08:51', '2018-02-19 21:08:51', '0', '1014'),
(577, '2015-02-02', 'The property is a ground level  6 x bedroom residence plus other improvements. It is situated on a land area of approximately 882 square meters.', 683, '300000', '656000', '400000', '882', '2018-02-19 21:14:59', '2018-02-19 21:14:59', '0', '340'),
(578, '2016-09-29', 'Vacant and Undeveloped Land', 323, '30000000', '0', '0', '198006', '2018-02-19 21:31:52', '2018-02-19 21:31:52', '0', '152'),
(579, '2017-03-01', 'the property is a split level building comprising 1 x 4 bedroom residence and ancillary improvements', 324, '300000', '0', '500000', '458', '2018-02-19 21:35:05', '2018-02-19 21:35:05', '0', '655'),
(580, '2017-03-01', 'the property is a split level building comprising 1 x 4 bedroom residence and ancillary improvements', 325, '350000', '0', '500000', '585', '2018-02-19 21:37:55', '2018-02-19 21:37:55', '0', '598'),
(581, '2017-03-01', 'the property is a split level building comprising 1 x 4 bedroom residence and ancillary improvements', 330, '350000', '0', '500000', '493', '2018-02-19 21:41:53', '2018-02-19 21:41:53', '0', '710'),
(582, '2017-03-01', 'the property is a split level building comprising 1 x 4 bedroom residence and ancillary improvements', 331, '300000', '0', '500000', '465', '2018-02-19 21:47:38', '2018-02-19 21:47:38', '0', '645'),
(583, '2017-08-22', 'The property is a shed/industrial building with attached hardstand and detached residence plus other improvements.', 684, '800000', '0', '0', '2660', '2018-02-20 13:22:12', '2018-02-20 13:22:12', '400000', '300'),
(584, '2012-11-14', 'The property is a  two level office/residence building comprising a total floor area of approximately 550.40m2 and an extra office building plus other improvements.\nThey are situated on approximately 1 700 square meters of residential allotment in Lae City.', 685, '1164000', '1461000', '1244000', '1700', '2018-02-20 13:44:10', '2018-02-20 13:44:10', '0', '859'),
(585, '2017-03-01', 'The property is a split level building comprising 1 x 4 bedroom residence and ancillary improvements', 345, '300000', '0', '500000', '459', '2018-02-20 14:05:50', '2018-02-20 14:05:50', '0', '654'),
(586, '2017-03-01', 'The property is a split level building comprising 1 x 4 bedroom residence and ancillary improvements', 346, '350000', '0', '500000', '592', '2018-02-20 14:08:30', '2018-02-20 14:08:30', '0', '591'),
(587, '2017-03-01', 'The property is a split level building comprising 1 x 4 bedroom residence and ancillary improvements', 347, '300000', '0', '500000', '453', '2018-02-20 14:10:37', '2018-02-20 14:10:37', '0', '662'),
(588, '2017-05-19', 'Vacant and Undeveloped Land', 348, '300000', '0', '0', '467', '2018-02-20 14:13:59', '2018-02-20 14:13:59', '0', '642'),
(589, '2017-05-19', 'Vacant and Undeveloped land', 351, '350000', '0', '0', '600', '2018-02-20 14:16:18', '2018-02-20 14:16:18', '0', '583'),
(590, '2017-05-19', 'Vacant and Undeveloped land', 353, '350000', '0', '0', '610', '2018-02-20 14:20:42', '2018-02-20 14:20:42', '0', '574'),
(591, '2017-06-08', 'The property is a 1 x 4 bedroom residence on high steel piers and ancillary improvements.', 360, '350000', '0', '400000', '617', '2018-02-20 14:23:38', '2018-02-20 14:23:38', '0', '567'),
(592, '2017-06-08', 'The property is a 1 x 4 bedroom residence on high steel piers and ancillary improvements.', 363, '400000', '0', '400000', '766', '2018-02-20 14:26:30', '2018-02-20 14:26:30', '0', '522'),
(593, '2017-06-08', 'The property is a 1 x 4 bedroom residence on high steel piers and ancillary improvements.', 370, '400000', '0', '400000', '716', '2018-02-20 14:29:15', '2018-02-20 14:29:15', '0', '559'),
(594, '2017-06-08', 'The property is a 1 x 4 bedroom residence on high steel piers and ancillary improvements.', 371, '350000', '0', '400000', '649', '2018-02-20 14:35:08', '2018-02-20 14:35:08', '0', '539'),
(595, '2012-11-14', 'The property is a  high set duplex residence comprising a floor area of approximately 138.40m2 plus other improvements.  It is situated on approximately 663 square meters of residential allotment in Lae City.', 686, '189000', '527000', '517000', '663', '2018-02-20 20:12:36', '2018-02-20 20:12:36', '0', '285'),
(596, '2012-06-07', 'The property is a two level 2 x bedroom quadruplet with a total floor area of approximately 379.04 square meters, plus other improvements. They are situated on a 1 100 square meters residential allotment in Lae City.', 687, '385000', '0', '489000', '1100', '2018-02-21 13:36:54', '2018-02-21 13:36:54', '727000', '350'),
(597, '2015-05-29', 'The property comprises 1 x office building, 2 x 2 bedroom residence and a 3 x\nbedroom residence and other minor improvements.', 688, '148000', '266000', '200000', '1476', '2018-02-21 13:49:30', '2018-02-21 13:49:30', '0', '100'),
(598, '2015-07-29', 'The property is improved with a high set 3 x bedroom residential dwelling with a 2 x bedroom unit on the ground and a detached 3 x bedroom unit substantially complete plus other improvement.', 689, '370000', '0', '380000', '1015', '2018-02-21 13:56:21', '2018-02-21 13:56:21', '0', '364'),
(599, '2015-05-26', 'The property is a split level 3 x bedroom duplex plus other improvements. It is situated on a total land area of 1, 438 square meters.', 690, '647000', '1235000', '900000', '1438', '2018-02-21 13:57:58', '2018-02-21 13:57:58', '0', '450'),
(600, '2015-08-06', 'The property is a split level building comprises 1x3 bedroom fibro residence with 1 x 3 bedroom unit underneath in rundown condition.', 691, '300000', '0', '400000', '450', '2018-02-21 14:02:57', '2018-02-21 14:02:57', '0', '667'),
(601, '2008-11-13', 'The property is a 2 levels high covenant 4 x bedrooms residence, approximately 121.16 square meters of  with external carport, workshop plus other minor improvements. These are situated on approximately 1, 189 square meters of residential allotment in the City of Lae.', 692, '48000', '0', '170000', '1181', '2018-02-21 14:06:12', '2018-02-21 14:06:12', '0', '41'),
(602, '2015-08-06', 'The property is a split level building comprises 1x3 bedroom weatherboard residence with 1x3 bedroom unit underneath and a detached single level building comprises 1x3 bedroom residence in rundown condition', 693, '300000', '0', '550000', '438', '2018-02-21 14:09:45', '2018-02-21 14:09:45', '0', '685'),
(603, '2015-08-07', 'The property is a single level duplex building comprises 2x2 bedroom weatherboard residence on low reinforced concrete piers and timber construction.', 694, '1500000', '0', '1000000', '1012', '2018-02-21 14:16:20', '2018-02-21 14:16:20', '0', '1482'),
(604, '2007-04-03', 'Adjoining commercial shop and office buildings with complementing developments. These are situated on 13,845 square meters of commercial allotments within the Township of Kainantu.', 695, '550000', '0', '3330000', '13845.23', '2018-02-21 14:19:23', '2018-02-21 14:19:23', '0', '40'),
(605, '2015-08-12', 'The property is two level building comprises office, detached single level buildings comprises 1x3 bedroom residence and 1x3 bedroom residence and 1x3 bedroom duplex in rundown condition.', 696, '250000', '0', '1150000', '546', '2018-02-21 14:22:33', '2018-02-21 14:22:33', '0', '458'),
(606, '2015-08-12', 'The property is a 3x two level duplex residential buildings comprises 6x3 bedroom residence with a detached split level building comprises 1x3 bedroom residential and ancillary improvements.', 697, '800000', '0', '3100000', '1601', '2018-02-21 14:29:05', '2018-02-21 14:29:05', '0', '500'),
(607, '2015-08-12', 'The property is a split level residential building comprises 2x3 bedroom weatherboard residence with 1x3 bedroom unit underneath.', 698, '300000', '0', '450000', '712', '2018-02-21 14:34:30', '2018-02-21 14:34:30', '0', '421'),
(608, '2015-09-07', 'The property comprises a recently developed lodge known as the "GK Lodge" plus adjoined existing lodge accommodation and shop buildings plus other minor improvements.', 699, '1100000', '0', '8700000', '2048', '2018-02-21 14:45:14', '2018-02-21 14:45:14', '0', '537'),
(609, '2015-09-07', 'The property is a high set 4 x bedroom single residential dwelling and a self contained 2x bedroom unit on the ground floor having an approximate gross floor area of 214.6 square meters plus other ancillary improvements.', 701, '250000', '0', '650000', '6660', '2018-02-21 14:56:28', '2018-02-21 14:56:28', '0', '36'),
(610, '2015-09-22', 'This is a vacant and undeveloped land fully enclosed with cyclone wire security fencing.', 702, '2500000', '0', '0', '26000', '2018-02-21 15:01:28', '2018-02-21 15:01:28', '0', '96'),
(611, '2015-09-22', 'On the property is 7 blocks of residential buildings, storage shed and other improvements.', 703, '5000000', '0', '2000000', '25900', '2018-02-21 15:07:03', '2018-02-21 15:07:03', '0', '193'),
(612, '2015-09-23', 'The property is 2 blocks of 16 rooms hotel accommodation, pokies shed and other improvements.', 704, '1500000', '0', '2500000', '7200', '2018-02-21 15:14:39', '2018-02-21 15:14:39', '0', '208'),
(613, '2015-09-24', 'The property is 7 blocks of 30 rooms hotel accommodation, 1x6 staff quarter, pokies parlour and other improvements.', 705, '5500000', '0', '9500000', '11060', '2018-02-21 15:21:48', '2018-02-21 15:21:48', '0', '497'),
(614, '2015-09-24', 'On the property is a single level building comprises 2x2 bedroom executive units.', 706, '700000', '0', '500000', '1332', '2018-02-21 15:27:57', '2018-02-21 15:27:57', '0', '525'),
(615, '2015-09-24', 'The property is a two level building comprises 1x3 bedroom residence with 1x3 bedroom unit underneath.', 708, '500000', '0', '450000', '952', '2018-02-21 15:38:41', '2018-02-21 15:38:41', '0', '525'),
(616, '2015-09-24', 'The property is a split level building comprises retail shop and 1x5 bedroom unit with a detached ground level building comprises storage shed.', 707, '900000', '0', '2100000', '435', '2018-02-21 15:41:33', '2018-02-21 15:41:33', '0', '2069'),
(617, '2015-11-03', 'The property is a two level building comprising 1x3 bedroom executive townhouse having a gross floor area of approximately 180 square meters and ancillary improvements.', 709, '500000', '0', '1500000', '189', '2018-02-21 15:48:40', '2018-02-21 15:48:40', '0', '2646'),
(618, '2015-11-03', 'This is a two level building comprising 1x3 bedroom townhouse having an approximate gross floor area of 200 square meters plus other ancillary improvements.', 710, '800000', '0', '1100000', '307', '2018-02-21 15:58:35', '2018-02-21 15:58:35', '0', '2605'),
(619, '2015-11-03', 'The property is a four level building comprising 6x2 bedroom units with study room and ancillary improvements.', 711, '3000000', '0', '5700000', '1568', '2018-02-21 16:04:30', '2018-02-21 16:04:30', '0', '1913'),
(620, '2015-11-04', 'The property is a tri level building comprising 1x5 bedroom townhouse residence and ancillary improvements.', 712, '1500000', '0', '1300000', '620', '2018-02-21 16:11:18', '2018-02-21 16:11:18', '0', '2419'),
(621, '2015-11-11', 'A container examination complex having an approximate gross floor area of 3950 square meters complete with on-site services is being constructed on site. The complex will comprise a number of building .', 713, '21000000', '32550000', '17500000', '205050', '2018-02-21 16:23:59', '2018-02-21 16:23:59', '0', '102'),
(622, '2015-10-02', 'the property is a 3 x bedroom high set, high covenant residence and a bedsitter at the ground level plus other improvements. It is situated on a total land area of 1,866 square meters.', 700, '933000', '1123000', '767000', '1866', '2018-02-21 16:41:01', '2018-02-21 16:41:01', '0', '500'),
(623, '2015-08-07', 'The property are two low set blocks of 3 x 2 bedroom units plus other improvements. It is situated on a total land area of 1, 100 square meters.', 714, '550000', '450000', '152480', '1100', '2018-02-21 16:47:28', '2018-02-21 16:47:28', '0', '500'),
(624, '2015-08-14', 'the property is a two level multi-commercial complex building plus other\nimprovements. Land Area: 1, 505 square meters.', 715, '3160500', '11723820', '9139500', '1505', '2018-02-21 17:01:02', '2018-02-21 17:01:02', '0', '2100'),
(625, '2015-06-10', 'the property is a two level 2 x bedroom duplex and a split level 3 x bedroom duplex plus other improvements. It is situated on a total land area of 900 square\nmeters.', 716, '315000', '895000', '885000', '900', '2018-02-21 17:09:55', '2018-02-21 17:09:55', '0', '350'),
(626, '2016-04-08', 'The property are 2 x residential blocks of 3 x 2 bedroom accommodation units plus other improvements.\nLand Areas: Lot 10: - 546 square meters\nLot 11: - 546 square meters', 717, '382200', '970000', '432800', '546', '2018-02-21 18:15:58', '2018-02-21 18:15:58', '0', '700'),
(627, '2016-02-15', 'The property is a commercial compound comprising of; a newly constructed supermarket mall, a bakery with admin offices, an attached 3 x bedroom staff accommodation, a workshop/storage shed, an attached office/storage building plus other improvements.\nLand Area: 4,047 square meters.', 718, '3040000', '11700000', '9160000', '4047', '2018-02-21 18:25:04', '2018-02-21 18:25:04', '0', '751'),
(628, '2015-06-18', 'the property is a newly built split level 6 x 2 bedroom units plus other improvements. It is situated on a total land area of 1, 011 square meters', 719, '400000', '1425000', '1600000', '1011', '2018-02-21 20:40:48', '2018-02-21 20:40:48', '0', '396'),
(629, '2016-01-15', 'The property is a two level Residential duplex accommodation building comprising of 3 x bedrooms units on each floor plus all normal fixtures, fittings and septic systems plus other improvements', 720, '283500', '562500', '346500', '810', '2018-02-21 20:48:17', '2018-02-21 20:48:17', '0', '350'),
(630, '2015-08-21', 'The property are 2 x 2 level residential quadruplet buildings comprising of 8 x 3 bedroom units plus other improvements. All normal fixtures, fittings and septic systems plus other improvements.', 721, '598660', '1505720', '1201340', '1618', '2018-02-21 20:59:05', '2018-02-21 20:59:05', '0', '370'),
(631, '2015-01-22', 'Erected on the property is a two level multicommercial\nshopping complex building plus other\nimprovements.\nLand Area: 1, 280 square meters.', 722, '3200000', '16044000', '12000000', '1280', '2018-02-21 21:07:11', '2018-02-21 21:07:11', '0', '2500'),
(632, '2015-12-23', 'The estate is a large area undeveloped and is generally a low lying parcel located towards the south-eastern end Goroka Township. It is uneven with slopes and flat lands and shares boundaries with developed and established state residential and commercial precincts. It is ready for use as a residential estate or with commercial developments. There is a ground-set residential accommodation under construction and is 80 per cent complete as at Date of Valuation', 723, '1800000', '0', '0', '12000', '2018-02-21 21:17:44', '2018-02-21 21:17:44', '0', '150'),
(633, '2015-10-26', 'the property are a standalone 5 x bedroom residence and a home-office accommodation including all normal fixtures, fittings plus other improvements.\nIt is situated on a total land area of 1467 square meters.', 724, '1174000', '774800', '476000', '1467', '2018-02-21 21:24:18', '2018-02-21 21:24:18', '0', '800'),
(634, '2015-08-14', 'The property is a two level multi-commercial complex building plus other improvements. Land Area: 1, 505 square meters.', 725, '3160500', '11723820', '9139500', '1505', '2018-02-21 21:45:38', '2018-02-21 21:45:38', '0', '2100'),
(635, '2015-11-11', 'The property is a two level Residential complex building comprising of 2 x 1 bedroom, 2 x 2 bedrooms and a split level 2 x bedroom units. All normal fixtures, fittings and sewer systems plus other improvements', 726, '657140', '1206000', '842860', '1133', '2018-02-21 21:52:19', '2018-02-21 21:52:19', '0', '580'),
(636, '2016-04-08', 'Properties are ground set 2 x residential blocks of 3 x 2 bedroom accommodation including all normal fixtures, fittings and septic systems plus other improvements.', 727, '382200', '970000', '432800', '546', '2018-02-21 22:01:11', '2018-02-21 22:01:11', '0', '700'),
(637, '2015-08-07', 'The property are two residential buildings; a high set stand-alone 1 x 5 bedrooms and a two level 2 x 3 bedroom duplex units plus other improvements.\nIt is situated on a total land area of 1, 114 square meters.', 728, '910000', '1638000', '1310000', '1300', '2018-02-22 13:20:27', '2018-02-22 13:20:27', '0', '700'),
(638, '2015-05-29', 'The property is 1 x office building, 2 x 2 bedroom residence and a 3 x bedroom residence plus other improvements.  Land Area:   1, 500 square meters.', 729, '30000', '237500', '300000', '150', '2018-02-22 13:37:35', '2018-02-22 13:37:35', '0', '200'),
(639, '2014-11-07', 'the property is a newly built two level 4 x 2 bedrooms apartment plus other improvements. It is situated on a total land area of 700 square meters.', 730, '230300', '0', '1069700', '658', '2018-02-22 15:12:01', '2018-02-22 15:12:01', '0', '350'),
(640, '2014-08-12', 'the property is Medium cost 3 x bedroom residence plus other improvements.\nIt is situated on a total land area of 540 square meters.', 731, '108000', '0', '417000', '540', '2018-02-22 15:19:36', '2018-02-22 15:19:36', '0', '200'),
(641, '2014-04-14', 'The property is a ground level 3 x 2 bedroom units plus detached trade\nstore and storage shed as well as other improvements.\nThey are situated on an 800 square metres of residential\nallotment in City of Lae.', 732, '292000', '0', '283000', '800', '2018-02-22 16:17:00', '2018-02-22 16:17:00', '0', '365'),
(642, '2014-08-08', 'the property is a low cost 3 x bedroom residence plus other improvements.\nIt is situated on a total land area of 450 square meters.', 733, '54000', '0', '83000', '450', '2018-02-22 16:25:59', '2018-02-22 16:25:59', '0', '120'),
(643, '2015-06-09', 'The property is a proposed two level office building and the existing old style 3 x bedroom residence plus other improvements.', 734, '1700000', '0', '2100000', '1455', '2018-02-22 16:39:11', '2018-02-22 16:39:11', '0', '1168'),
(644, '2017-04-28', 'The property is a 2 level commercial building improved with commercial offices plus other improvements. Land Area: 4,140 square meters.', 735, '2900000', '4300000', '4000000', '4140', '2018-02-22 16:45:42', '2018-02-22 16:45:42', '0', '700'),
(645, '2017-03-03', 'the property is a 2 level residential building with 4 x bedrooms plus other improvements. Land Area: 2,520 square meters.', 736, '1260000', '1530000', '960000', '2520', '2018-02-22 16:52:51', '2018-02-22 16:52:51', '0', '500'),
(646, '2017-03-10', 'The property is a residential duplex with 3 x bedrooms plus other improvements.\nLand Area: 546 square meters.', 737, '150000', '500000', '200000', '546', '2018-02-22 17:00:41', '2018-02-22 17:00:41', '0', '275'),
(647, '2017-04-21', 'The property is a standalone 1 x 3 bedroom residential building.\nLand Area: 513 square meters.', 738, '190000', '240000', '150000', '513', '2018-02-22 17:07:14', '2018-02-22 17:07:14', '0', '370'),
(648, '2015-06-01', 'The property is a two level 3 x bedroom duplex and a detached 1 x room canteen plus other improvements. It is situated on a total land area of 841 square meters.', 739, '140000', '0', '250000', '841', '2018-02-22 17:58:57', '2018-02-22 17:58:57', '273000', '166'),
(649, '2015-05-28', 'the property is a 3 bedroom residence\nplus other improvements. It is situated on a total\nland area of 546 square meters', 740, '246000', '0', '60000', '546', '2018-02-22 18:03:55', '2018-02-22 18:03:55', '0', '451'),
(650, '2016-02-25', 'The property is a residential compound undergoing construction of\nadditional six (6) Units to the existing three (3) Units. They are two level\nresidential units of 3 x bedrooms plus other improvements.', 741, '540000', '2450000', '1610000', '1200', '2018-02-22 18:14:10', '2018-02-22 18:14:10', '0', '450'),
(651, '2016-03-03', 'the property is a two level 4 x bedroom standalone residence including All normal fixtures, fittings and sewerage systems plus other improvements.', 742, '751300', '1034000', '628700', '1366', '2018-02-22 18:19:50', '2018-02-22 18:19:50', '0', '550'),
(652, '2016-04-18', 'the property is a residential\nCompound of 4 x 3 bedroom detached\nresidential accommodation including all\nnormal fixtures, fittings and sewerage\nsystems plus other improvements', 743, '164000', '918000', '646000', '546', '2018-02-22 18:25:03', '2018-02-22 18:25:03', '0', '300'),
(653, '2016-02-24', 'the property is a three (3) level commercial office building plus other\nimprovements. Land Area: 645 square meters', 744, '260000', '3350000', '2870000', '645', '2018-02-22 18:37:53', '2018-02-22 18:37:53', '0', '403'),
(654, '2015-02-23', 'the property is a lofty warehouse improved with a 2 x level office plus other\nimprovements. It is situated on a total land area of 3, 874 square meters.', 745, '4009600', '5664105', '4290400', '3874', '2018-02-22 18:49:19', '2018-02-22 18:49:19', '0', '1035'),
(655, '2015-06-10', 'the property is a two level 3 x bedroom residence on the upper level and office Units on ground level plus other improvements. It is situated on a total land area of 810 square meters.', 746, '283500', '0', '416500', '0', '2018-02-22 18:55:19', '2018-02-22 18:55:19', '0', '810'),
(656, '2012-04-23', '4 bedrooms stand alone residence, approximately 89.65 square meters of low set   plus other minor improvements. It is situated on approximately 514 square meters of residential allotment in Lae City.', 747, '128000', '0', '192000', '514', '2018-02-22 19:02:27', '2018-02-22 19:02:27', '0', '249'),
(657, '2008-10-01', 'Commercial Shop/Office Complex on completion of construction,It will be approximately 2,239 square meters. It is situated on a 776 square meters of commercial allotment in Goroka.', 748, '776000', '0', '4618000', '776', '2018-02-22 19:10:51', '2018-02-22 19:10:51', '0', '1000'),
(658, '2007-11-19', 'Commercial Shop/Office Complex still under construction, approximately 1990.08 square meters of  . It is situated on a total of 1,300 square meters of consolidated commercial allotments in Lae.', 749, '910000', '0', '3956000', '1300', '2018-02-22 19:20:40', '2018-02-22 19:20:40', '0', '700'),
(659, '2015-07-31', 'the property are 2 x standalone Houses; a 3 x bedroom high set residence\nand a 2 x bedroom ground set residence plus improvements. All normal fixtures, fittings and septic systems plus other improvements.', 750, '934000', '1051840', '816000', '1556', '2018-02-22 19:35:12', '2018-02-22 19:35:12', '0', '600'),
(660, '2015-08-18', 'the property is a low set 3 x bedroom residence plus other improvements.\nLand Area: 811 square meters.', 751, '202750', '401200', '320950', '811', '2018-02-22 19:42:07', '2018-02-22 19:42:07', '0', '250'),
(661, '2017-08-10', '2 levels, 4 x 2 Bedrooms, High cost residential units plus other minor improvements. They are situated on 1312 square meters of residential allotment in Top town, City of Lae.', 752, '1050000', '1211000', '888000', '1312', '2018-02-22 20:48:07', '2018-02-22 20:48:07', '0', '800'),
(662, '2016-10-10', 'The property is a Office, workshop, Barrack Shed Buildings & Staff Residence , approximately 911 square meters plus other associated improvements. The are situated on a total 4312 square meters of general industrial allotment in Goroka', 753, '1725000', '0', '1467000', '4312', '2018-02-22 20:58:22', '2018-02-22 20:58:22', '0', '400'),
(663, '2017-02-20', 'This is an industrial property comprising workshop as well as Managers residence and other complementing improvements. Land Area: 2544 square meters.', 754, '650000', '0', '1380000', '2544', '2018-02-22 22:11:46', '2018-02-27 21:52:41', '0', '256'),
(664, '2017-01-12', 'The property comprises of 2 x retail shops, restaurant, processing building and residential building, shower,toilet lounge,kitchen laundry plus other improvements.', 755, '1800000', '0', '3400000', '1998', '2018-02-23 13:18:15', '2018-02-23 13:18:15', '0', '1000'),
(665, '2016-12-19', 'The property comprises of a workshop/warehouse and office building plus other improvements', 756, '1286000', '0', '2342000', '6770', '2018-02-23 13:23:44', '2018-02-23 13:23:44', '0', '190'),
(666, '2017-02-24', 'The property is a low set residential buildings comprising 3 x bedroom plus other improvements', 757, '180000', '0', '36000', '540', '2018-02-23 15:05:24', '2018-02-23 15:05:24', '0', '333'),
(667, '2017-01-06', 'This is a Property comprises of a warehouse/office workshop and residence plus other improvements. Land area 3900 square meters.', 758, '970000', '900500', '3430000', '3900', '2018-02-23 15:10:39', '2018-02-27 22:07:43', '0', '249'),
(668, '2016-10-28', 'Property comprises of a high set residential building and a detached ground set dwelling plus other improvements. Land area 844 square meters. Proposed development of the site is to comprise a commercial/industrial building comprising 2 level office/residential accommodations, open warehouse and 2 level warehouse plus other improvements.', 759, '1826000', '0', '6174000', '4000', '2018-02-23 15:18:01', '2018-02-23 15:20:46', '0', '457'),
(669, '2017-02-22', 'The property is a 2 level 4 x bedroom residential building with toilet, shower,lounge,kitchen,laundry plus other improvements. Land area: 35', 760, '1200000', '2100000', '990000', '3592', '2018-02-23 15:38:37', '2018-02-23 15:38:37', '0', '335'),
(670, '2016-12-22', 'Property are a retail shop with office accommodation and 2 x ground set freezer/chiller buildings plus other improvements.\nLand area: 1923 square meters Allotment 21\n                   886 Square meters Allotment 26\n                   589 square meters Allotment 27', 761, '2548000', '0', '8752000', '3398', '2018-02-23 15:47:20', '2018-02-23 15:47:20', '0', '750'),
(671, '2017-01-12', 'The property is a 2 level residential building comprising 1 x 2 plus 1 x 3 bedroom with lounge,kitchen,toilet,shower plus other improvements.Land area: 547 square meters.', 762, '150000', '0', '330000', '547', '2018-02-23 15:56:26', '2018-02-23 15:56:26', '0', '274'),
(672, '2017-01-30', 'The property is a high set 3 bedroom residential building with toilet,kitchen,lounge,shower,plus other improvements. Land area approximately 1233 square meters.', 763, '166000', '0', '54000', '1233', '2018-02-23 16:01:21', '2018-02-23 16:01:21', '0', '135'),
(673, '2017-03-15', 'The property is a vacant block fully fenced and ideally located at the foot hiils of the adjacent range. It has good views and developments potential for business or industrial purposes. It is leveled and terraced. it is part of the rising slope and is ready for use as hardstand or other business/Light industrial developments.', 764, '2400000', '0', '0', '11980', '2018-02-23 16:06:18', '2018-02-23 16:15:32', '0', '200'),
(674, '2015-10-07', 'The property is a 2 x level, 2 x bedroom quadruplet building plus other improvements.\nLand Area: 600 square meters', 765, '162000', '0', '454000', '600', '2018-02-23 16:20:17', '2018-02-27 21:40:15', '0', '270'),
(675, '2014-07-29', 'The property is a fully fenced vacant block and is generally a low lying parcel located towards the western end main highlands highway. It is relatively level and is situated a few meters away from the main Highway amongst other portions recently developed. It is ready for use as hardstand or other business/light industrial development.', 766, '1500000', '0', '0', '12000', '2018-02-25 13:07:06', '2018-02-25 13:07:06', '0', '125'),
(676, '2014-10-28', 'The property comprises of a compound 2 x 3 Bedroom Split level Manager’s Residences with associated improvements. They are situated on 1,170 square meters of land portion along Takubar Residential Sea View area.', 767, '211000', '0', '693000', '1170', '2018-02-25 13:14:50', '2018-02-25 13:14:50', '0', '180'),
(677, '2015-10-28', 'Warehouse building with mezzanine floor, and staff quarters plus other improvements. It is situated on 0.442 hectares of industrial allotment, Takubar, Township of Kokopo.', 768, '1547000', '0', '1737000', '4420', '2018-02-25 13:19:04', '2018-02-25 13:19:04', '0', '350'),
(678, '2014-10-28', 'This yard comprises the main office, lofty warehouses with offices, workshops, sheds and residences. They are situated on 2.09 hectares of industrial allotment, Takubar, Township of Kokopo.', 769, '4600000', '0', '10100000', '20900', '2018-02-25 13:23:18', '2018-02-25 13:23:18', '0', '220'),
(679, '2014-10-28', 'Nivani Joinery Yard comprised of Joinery Sheds, Workshops, Showroom and Killen Dryers. They are situated on 0.8240 hectares of industrial allotment, Takubar, Township of Kokopo.', 770, '1800000', '0', '3300000', '8240', '2018-02-25 13:26:03', '2018-02-25 13:26:33', '0', '218'),
(680, '2014-10-28', 'The property comprises Staff Compound # 1 comprising of Staff houses, quarters, flats and makeshift houses. They are situated on 1.125 hectares of industrial allotment, Takubar, Township of Kokopo.', 771, '2250000', '0', '680000', '11250', '2018-02-25 13:32:21', '2018-02-25 13:32:21', '0', '200'),
(681, '2014-10-28', 'The property is a Staff Compound # 2 comprises of 4 x 2 bedroom duplex. They are situated on 0.5 hectares of industrial allotment, Takubar, Township of Kokopo.', 772, '1000000', '0', '950000', '5000', '2018-02-25 13:35:41', '2018-02-25 13:35:41', '0', '200'),
(682, '2014-10-28', 'The property is a Sand Glass Yard comprises a staff quarter and hardstand area. They are situated on 0.665 hectares of land portion in Takubar, Township of Kokopo.', 773, '1230000', '0', '110000', '6650', '2018-02-25 13:40:02', '2018-02-25 13:40:02', '0', '185'),
(683, '2015-11-12', 'The Edge is a morden prestige six level waterfront residential apartment complex having an appropriate gross floor area of 16440 square meters with a total of 63 residential apartments and two retail tenancies.', 774, '16125000', '222850000', '131600000', '160000', '2018-02-28 21:16:09', '2018-02-28 21:16:09', '0', '101'),
(684, '2015-12-28', 'On the property is a split level building comprising 1x1 bedroom, 1x2 bedroom and 2x4 bedroom units and a detached two level building comprising 1x2 bedroom and 1 x 3 bedroom units and ancillary improvements.', 775, '1500000', '0', '1900000', '1365', '2018-02-28 21:25:29', '2018-02-28 21:25:29', '0', '1098'),
(685, '2016-01-05', 'On the property is a proposed single level high set building comprises 1x3 bedroom residence in a gated compound.', 776, '180000', '0', '420000', '300', '2018-02-28 21:34:33', '2018-02-28 21:34:33', '0', '600'),
(686, '2016-01-05', 'On the property is a proposed single level high set building comprises 1x3 bedroom residence in a gated compound.', 777, '180000', '0', '420000', '350', '2018-02-28 21:41:10', '2018-02-28 21:41:10', '0', '514'),
(687, '2016-01-06', 'The property is a substantially completed two level residential building and on completion will comprise 8x2 bedroom units.', 778, '1000000', '0', '1300000', '1520', '2018-02-28 21:51:42', '2018-02-28 21:51:42', '0', '678'),
(688, '2016-01-18', 'The property comprises a substantially completed two level commercial shop building and on the completion will comprise supermarket, offices and amenities', 789, '1000000', '0', '6000000', '607', '2018-03-01 19:46:28', '2018-03-01 19:46:28', '0', '1647'),
(689, '2016-02-26', 'The property is a proposed single level high set building comprises 1 x 3 bedroom residence in a gated compound.', 790, '180000', '0', '420000', '310', '2018-03-01 20:00:04', '2018-03-01 20:00:04', '0', '581'),
(690, '2016-02-26', 'The property is a proposed single level high set building comprises 1x3 bedroom residence in a gated compound.', 791, '180000', '0', '420000', '400', '2018-03-01 20:16:47', '2018-03-01 20:16:47', '0', '450'),
(691, '2018-02-28', 'An executive three bedroom residence with ensuite and w/I robe on the master, low set, in ground pool (needs work), car port, security fenced, generally good condition.', 796, '760000', '0', '420000', '1086', '2018-03-04 15:04:44', '2018-03-04 15:04:44', '0', '700'),
(692, '2016-02-26', 'The property is a split level building comprises 1x 4 bedroom  residence with a detached canteen.', 799, '200000', '0', '360000', '460', '2018-03-04 15:34:48', '2018-03-04 15:34:48', '0', '435'),
(693, '2016-11-08', 'The property has been treated as vacant for this assessment.', 801, '53500000', '0', '0', '76490', '2018-03-04 15:48:07', '2018-03-04 15:48:07', '0', '700'),
(694, '2016-08-23', 'The property is a single level building comprises 1x3 bedroom residence and detached bedsitter.', 802, '1300000', '0', '300000', '1366', '2018-03-04 16:03:45', '2018-03-04 16:03:45', '0', '951'),
(695, '2016-05-16', 'The property is a split level building comprises 2x6 bedroom unit and other improvements.', 805, '1200000', '0', '1400000', '900', '2018-03-04 16:31:13', '2018-03-04 16:31:13', '0', '1333'),
(696, '2016-02-29', 'The property is 2 x single level building each comprises 1x1 bedroom unit, 2x2 bedroom units and 2x3 bedroom units and a detached canteen.', 806, '1200000', '0', '1200000', '2398', '2018-03-04 16:43:27', '2018-03-04 16:43:27', '0', '500'),
(697, '2016-02-29', 'On the property is a split level building comprises 2x3 bedroom units, 1x self contained unit with 1x5 bedroom unit underneath and a detached two level building comprises 2x self contained units and laundry and ancillary improvements.', 807, '400000', '0', '1600000', '854', '2018-03-04 16:53:10', '2018-03-04 16:53:10', '0', '468'),
(698, '2016-02-29', 'On the property is a split level building comprises 1x3 bedroom residence with 1x3 bedroom unit underneath and a attached tri level building comprises 1x3 bedroom and 1x2 bedroom units, and ancillary improvements.', 808, '400000', '0', '2100000', '763', '2018-03-04 17:02:35', '2018-03-04 17:02:35', '0', '524'),
(699, '2015-07-28', 'On the property is 2 x hotel accommodation buildings, a conference building and a residence plus other complementary improvements.', 809, '1300000', '0', '8100000', '7870', '2018-03-04 17:19:17', '2018-03-04 17:19:17', '0', '165'),
(700, '2015-12-31', 'The Property is a single level commercial office building plus other improvement.', 374, '110000', '0', '620000', '0', '2018-03-04 19:54:14', '2018-03-04 19:54:14', '0', '0'),
(701, '2015-12-31', 'The property is a ground level sales office building having an approximate gross floor area of 303 square meters.', 376, '700000', '0', '1100000', '0', '2018-03-04 20:07:06', '2018-03-04 20:07:06', '0', '0'),
(702, '2015-12-31', 'Property is a High-set three bedroom residence having an approximate gross floor area of 104 square meters', 314, '60000', '0', '420000', '543', '2018-03-04 20:17:15', '2018-03-04 20:17:15', '0', '110'),
(703, '2015-12-31', 'The property is a ground level sales and administrative building having an approximate gross floor area of 322 square meters.', 378, '320000', '0', '830000', '0', '2018-03-04 20:32:07', '2018-03-04 20:32:07', '0', '0');
INSERT INTO `valuations` (`id`, `date`, `description`, `property_id`, `land_component`, `insurance_value`, `improvement_component`, `area`, `created_at`, `updated_at`, `forced_sale_value`, `land_value_rate`) VALUES
(704, '2015-12-31', 'The property is a single residential dwelling having an approximate gross floor area of 169 square meters', 377, '500000', '0', '600000', '1947', '2018-03-04 20:35:23', '2018-03-04 20:35:23', '0', '257'),
(705, '2015-12-31', 'The property is a single level multi-unit property with 2x2 bedroom units and 2x3 bedroom units having an approximate gross floor area of 414 square meters.', 379, '700000', '0', '1300000', '1052', '2018-03-04 20:47:04', '2018-03-04 20:47:04', '0', '665'),
(706, '2015-12-31', 'The property is a ground level terminal building having an approximate gross floor area of 596 square meters.', 382, '350000', '0', '300000', '1555', '2018-03-04 21:01:14', '2018-03-04 21:01:14', '0', '255'),
(707, '2015-12-31', 'On the property are two similar style ground level staff quarters each having a floor area of 132 square meters,  a laundry and all in a dilapidated condition', 380, '330000', '0', '0', '3341', '2018-03-04 21:14:31', '2018-03-04 21:14:31', '0', '99'),
(708, '2015-12-31', 'The property is a single level duplex building of 3 bedroom residential accommodation comprising a gross floor area of approximately 169 square meters.', 388, '150000', '0', '350000', '963', '2018-03-04 21:29:17', '2018-03-04 21:29:17', '0', '156'),
(709, '2015-12-31', 'this is a four level older style commercial building with an approximate gross floor area of 4,029 square meters.', 389, '8000000', '0', '7650000', '0', '2018-03-04 21:33:56', '2018-03-04 21:33:56', '0', '0'),
(710, '2015-12-31', 'This is a single level two bedroom high-set duplex building having an approximate gross enclosed floor area of 149square meters.', 390, '210000', '0', '430000', '1717', '2018-03-04 21:37:54', '2018-03-04 21:37:54', '0', '250'),
(711, '2015-12-31', 'The property is a high-set three bedroom residence with enclosed laundry and storage rooms underneath having an approximate gross floor area of 104 square meters.', 391, '60000', '0', '420000', '543', '2018-03-04 21:40:10', '2018-03-04 21:40:10', '0', '110'),
(712, '2015-12-31', 'On the property are a detached office, attached office/storage, 3x warehouses, detached office/storage, 3 x warehouses, detached ablution block and ancillary improvements.', 392, '11650000', '0', '0', '7767', '2018-03-05 21:53:33', '2018-03-05 21:55:41', '0', '1500'),
(713, '2015-12-31', 'The property is a two level 7 x three bedroom townhouses', 393, '1500000', '0', '4500000', '1723', '2018-03-06 14:18:18', '2018-03-06 14:18:18', '0', '871'),
(714, '2015-12-31', 'The property is a three bedroom residence with a bedsitter and laundry underneath.', 394, '1200000', '0', '400000', '1353', '2018-03-06 14:23:51', '2018-03-06 14:23:51', '0', '887'),
(715, '2015-12-31', 'On the property are two blocks each having 4x3 bedroom units.', 395, '2000000', '0', '1500000', '2427', '2018-03-06 14:32:45', '2018-03-06 14:32:45', '0', '824'),
(716, '2015-12-31', 'The property is a three bedroom residence with bedsitter and laundry underneath having an approximate gross floor area of 200 square meters.', 396, '1300000', '0', '500000', '1530', '2018-03-06 14:40:26', '2018-03-06 14:40:26', '0', '327'),
(717, '2015-12-31', 'The property is a split level four(4) bedroom residence with a laundry and carport underneath.', 397, '1000000', '0', '1500000', '1353', '2018-03-06 14:46:01', '2018-03-06 14:46:01', '0', '739'),
(718, '2015-12-31', 'The property is a low set three bedroom residence having an approximate gross floor area of 146 square meters with a detached laundry plus other improvements.', 436, '50000', '0', '150000', '1025', '2018-03-06 14:52:55', '2018-03-06 14:52:55', '0', '49'),
(719, '2015-12-31', 'The property is a high-set three bedroom residence having an enclosed approximate gross floor are of 69 square meters.', 437, '200000', '0', '240000', '2871', '2018-03-06 14:55:29', '2018-03-06 14:55:29', '0', '70'),
(720, '2015-12-31', 'The property is a sales office and adjoined a two bedroom staff accommodation building.', 439, '140000', '0', '260000', '534', '2018-03-06 15:08:31', '2018-03-06 15:08:31', '0', '262'),
(721, '2015-12-31', 'The property is a two level commercial office complex comprising a gross floor area of approximately 640 square meters.', 440, '1500000', '0', '2450000', '0', '2018-03-06 15:17:54', '2018-03-06 15:17:54', '0', '0'),
(722, '2015-12-31', 'The property is a high-set 3 bedroom residential accommodation comprising a gross floor area of approximately 224 square meters.', 441, '1320000', '0', '320000', '2200', '2018-03-06 15:20:24', '2018-03-06 15:20:24', '0', '600'),
(723, '2015-12-31', 'On the property are two single level ground-set residential duplex buildings comprising a gross floor area of approximately 170 square meters each block. The two residential blocks are similar throughout.', 442, '871350', '0', '290000', '1341', '2018-03-06 15:24:21', '2018-03-06 15:24:21', '0', '650'),
(724, '2015-12-31', 'On the property is a two level residential duplex building  of 3 x bedroom comprising a gross floor area approximately 244 square meters.', 444, '373800', '0', '300000', '1246', '2018-03-06 15:30:08', '2018-03-06 15:30:08', '0', '300'),
(726, '2015-12-31', 'The property is a single level commercial office building comprising a gross floor area of approximately 329 square meters.', 445, '660000', '0', '840000', '1090', '2018-03-06 15:38:03', '2018-03-06 15:38:03', '0', '606'),
(727, '2015-12-31', 'Ground level airport terminal building', 375, '0', '0', '550000', '0', '2018-03-08 14:40:57', '2018-03-08 14:40:57', '0', '0'),
(728, '2015-12-31', 'Ground level airport terminal building', 381, '0', '0', '650000', '0', '2018-03-08 14:46:22', '2018-03-08 14:46:22', '0', '0'),
(729, '2015-12-31', 'Ground level airport terminal building', 383, '0', '0', '400000', '0', '2018-03-08 14:48:32', '2018-03-08 14:48:32', '0', '0'),
(730, '2015-12-31', 'On the property are series of Air Niugini Limited operational support, service and administration buildings.', 387, '0', '83900000', '83900000', '0', '2018-03-08 15:00:50', '2018-03-08 15:00:50', '0', '0'),
(731, '2014-12-31', 'Airport Terminal Building', 438, '0', '0', '850000', '0', '2018-03-08 15:08:41', '2018-03-08 15:08:41', '0', '0'),
(732, '2015-12-31', 'On the property is an eight level residential apartment complex, a detached lobby building, generator shed, swimming pool and other ancillary buildings.', 446, '0', '0', '134400000', '0', '2018-03-08 15:15:48', '2018-03-08 15:15:48', '0', '0'),
(733, '2016-01-18', 'This is a single level commercial retail.', 833, '500000', '0', '1200000', '304', '2018-03-11 14:40:33', '2018-03-11 14:40:33', '0', '1645'),
(734, '2017-04-10', 'Property is a low set run-down residential house with a detached 2 level run-down dwelling plus other improvements. It is situated on a total land area of 2000 square meters', 835, '900000', '0', '161000', '2000', '2018-03-18 14:47:50', '2018-03-18 14:47:50', '0', '450'),
(735, '2017-04-10', 'Property is a vacant block fully fenced and ideally located at the corner of Regina Avenue and corallta street. It is fully serviced with approximately 1.8 meters perimeter trim-deck fencing with proper road access.', 836, '580000', '0', '0', '2580', '2018-03-18 14:59:13', '2018-03-25 21:44:56', '0', '225'),
(736, '2016-07-31', 'The property is an extensive dockyard complex.', 840, '6000', '8000', '1000', '995600', '2018-03-20 15:07:23', '2018-03-28 19:57:41', '1000', '521');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `audit_trails`
--
ALTER TABLE `audit_trails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `property_cities`
--
ALTER TABLE `property_cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `property_classes`
--
ALTER TABLE `property_classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `property_lease_types`
--
ALTER TABLE `property_lease_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `property_suburbs`
--
ALTER TABLE `property_suburbs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `property_uses`
--
ALTER TABLE `property_uses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rentals`
--
ALTER TABLE `rentals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rental_areas`
--
ALTER TABLE `rental_areas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rental_inclusions`
--
ALTER TABLE `rental_inclusions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rental_inclusions_tier`
--
ALTER TABLE `rental_inclusions_tier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rental_maintenances`
--
ALTER TABLE `rental_maintenances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rental_periods`
--
ALTER TABLE `rental_periods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rental_ratings_tier`
--
ALTER TABLE `rental_ratings_tier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rental_review_methods`
--
ALTER TABLE `rental_review_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `valuations`
--
ALTER TABLE `valuations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `audit_trails`
--
ALTER TABLE `audit_trails`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=205;
--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `properties`
--
ALTER TABLE `properties`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=841;
--
-- AUTO_INCREMENT for table `property_cities`
--
ALTER TABLE `property_cities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `property_classes`
--
ALTER TABLE `property_classes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `property_lease_types`
--
ALTER TABLE `property_lease_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `property_suburbs`
--
ALTER TABLE `property_suburbs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;
--
-- AUTO_INCREMENT for table `property_uses`
--
ALTER TABLE `property_uses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `rentals`
--
ALTER TABLE `rentals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `rental_areas`
--
ALTER TABLE `rental_areas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `rental_inclusions`
--
ALTER TABLE `rental_inclusions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `rental_inclusions_tier`
--
ALTER TABLE `rental_inclusions_tier`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `rental_maintenances`
--
ALTER TABLE `rental_maintenances`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `rental_periods`
--
ALTER TABLE `rental_periods`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `rental_ratings_tier`
--
ALTER TABLE `rental_ratings_tier`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `rental_review_methods`
--
ALTER TABLE `rental_review_methods`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `valuations`
--
ALTER TABLE `valuations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=737;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
