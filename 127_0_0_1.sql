-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 13, 2024 at 10:04 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `appointments`
--
CREATE DATABASE IF NOT EXISTS `appointments` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `appointments`;

-- --------------------------------------------------------

--
-- Table structure for table `appointment_bookings`
--

CREATE TABLE `appointment_bookings` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `service` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
--
-- Database: `barbie_nail_bar`
--
CREATE DATABASE IF NOT EXISTS `barbie_nail_bar` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `barbie_nail_bar`;
--
-- Database: `barbie_nail_bar_dashboard`
--
CREATE DATABASE IF NOT EXISTS `barbie_nail_bar_dashboard` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `barbie_nail_bar_dashboard`;

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aftercare_videos`
--

CREATE TABLE `aftercare_videos` (
  `id` int(11) NOT NULL,
  `video_title` varchar(255) NOT NULL,
  `video_url` varchar(255) NOT NULL,
  `tips_title` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `tips` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `aftercare_videos`
--

INSERT INTO `aftercare_videos` (`id`, `video_title`, `video_url`, `tips_title`, `created_at`, `tips`) VALUES
(5, 'Nail After Care Tips', ' https://www.youtube.com/embed/1GnTbwSl5zg?si=KRviQ8_5fWqDD3Fi\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cro', 'Nail After Care Tips', '2024-11-02 15:00:46', 'Avoid using your nails as tools.\r\n                    Keep your hands moisturized.\r\n                    Wear gloves when cleaning or doing dishes.\r\n                    Apply cuticle oil daily for stronger nails.'),
(6, 'Eyelash Aftercare Tips', ' https://www.youtube.com/embed/bca8frzzEeg?si=WC8Iw8JohRH1cYSA\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cro', 'Eyelash Aftercare Tips', '2024-11-02 15:02:24', 'Avoid rubbing your eyes or tugging on your lashes.\r\n                    Use a lash brush to keep them tidy.\r\n                    Avoid oil-based makeup removers.\r\n                    Book refills every 2-3 weeks to maintain fullness.'),
(7, 'Eyebrow Aftercare Tips', ' https://www.youtube.com/embed/OwwVRTAt7Nw?si=2ukMyn0Mgnf3itF6\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cro', 'Eyebrow Aftercare Tips', '2024-11-02 15:31:00', 'Avoid over-plucking or waxing too often.\r\nBrush your brows daily to keep them in shape.\r\nApply a brow conditioner or serum.\r\nGet touch-ups every 4-6 weeks.'),
(9, 'Overall Maintenance', 'https://www.youtube.com/embed/4BixEA5UprM?si=TC66dk7xP6JJsN2Q\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" r', 'Overall Maintenance', '2024-11-02 15:46:57', 'Some overall beauty service maintenance tips, Do\'s and Don\'ts');

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `services` text NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `payment_method` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` varchar(20) DEFAULT 'Confirmed',
  `reschedule_count` int(11) DEFAULT 0,
  `original_date` date DEFAULT NULL,
  `original_time` time DEFAULT NULL,
  `cancelled_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `name`, `email`, `phone`, `services`, `date`, `time`, `payment_method`, `created_at`, `status`, `reschedule_count`, `original_date`, `original_time`, `cancelled_at`, `updated_at`) VALUES
(1, 'Zandile', 'mdluli@gmail.com', '0682660852', 'Plain Acrylic - R200', '2024-11-05', '12:30:00', 'Card', '2024-11-03 15:44:29', 'Rescheduled', 0, NULL, NULL, NULL, '2024-11-04 04:48:11'),
(2, 'Royal', 'royal@gmail.com', '0672658965', 'Plain Acrylic - R200, Volume Lash - R200', '2024-11-04', '15:45:00', 'Card', '2024-11-04 11:43:31', 'Cancelled', 0, NULL, NULL, NULL, '2024-11-04 11:48:57'),
(3, 'Kuntra', 'kuntra101@gmail.com', '0682660852', 'Waxing - R200', '2024-11-16', '12:30:00', 'Card', '2024-11-09 14:33:01', 'Confirmed', 0, NULL, NULL, NULL, '2024-11-09 14:33:01'),
(4, 'bandros', 'bandros123@gmail.com', '0723697845', 'Buff & Shine - R150, Waxing - R200', '2024-11-16', '14:00:00', 'Card', '2024-11-09 18:09:38', 'Confirmed', 0, NULL, NULL, NULL, '2024-11-09 18:09:38');

-- --------------------------------------------------------

--
-- Table structure for table `logins`
--

CREATE TABLE `logins` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `login_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `phone_number` varchar(15) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `logins`
--

INSERT INTO `logins` (`id`, `user_id`, `login_time`, `phone_number`, `username`) VALUES
(1, 1, '2024-11-01 10:37:52', NULL, NULL),
(2, 14, '2024-11-01 11:01:14', NULL, NULL),
(3, 15, '2024-11-01 11:05:27', NULL, NULL),
(4, 15, '2024-11-01 11:07:50', NULL, NULL),
(5, 15, '2024-11-01 11:42:18', NULL, NULL),
(6, 16, '2024-11-01 19:11:47', NULL, NULL),
(7, 17, '2024-11-03 10:46:11', '0682660852', 'Maphuma'),
(8, 17, '2024-11-03 10:53:16', '0682660852', 'Maphuma'),
(9, 18, '2024-11-03 11:31:18', '0682369952', 'jayden'),
(10, 17, '2024-11-04 11:35:14', '0682660852', 'Maphuma'),
(11, 25, '2024-11-09 17:56:55', '0723697845', 'Bandros');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `review_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `rating` int(11) DEFAULT NULL CHECK (`rating` between 1 and 5),
  `review_text` text NOT NULL,
  `profile_pic` longblob DEFAULT NULL,
  `review_image` longblob DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`review_id`, `name`, `rating`, `review_text`, `profile_pic`, `review_image`, `created_at`) VALUES
(7, 'Zandile', 4, 'I loved the service', 0x75706c6f6164732f70726f66696c655f706963732f494d472d32303234303930312d5741303030302e6a7067, 0x75706c6f6164732f7265766965775f696d616765732f7374696c6c65746f2e6a7067, '2024-11-04 11:38:36'),
(8, 'Zandile ', 5, 'Good', 0x75706c6f6164732f70726f66696c655f706963732f494d472d32303234303930312d5741303030302e6a7067, 0x75706c6f6164732f7265766965775f696d616765732f313030303035303539322e6a7067, '2024-11-07 16:10:42'),
(9, 'Zandile ', 5, 'Good', 0x75706c6f6164732f70726f66696c655f706963732f494d472d32303234303930312d5741303030302e6a7067, 0x75706c6f6164732f7265766965775f696d616765732f313030303035303539322e6a7067, '2024-11-07 16:10:42'),
(10, 'Zandile ', 5, 'Good', 0x75706c6f6164732f70726f66696c655f706963732f494d472d32303234303930312d5741303030302e6a7067, 0x75706c6f6164732f7265766965775f696d616765732f313030303035303539322e6a7067, '2024-11-07 16:10:42');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `name`, `price`, `image_url`) VALUES
(1, 'Plain Acrylic', 200.00, 'images/plain acrylic nails.jpg'),
(2, 'Plain Long', 250.00, 'images/plain long acrylic.jpg'),
(3, 'French Tips Short', 200.00, 'images/french tips short.jpg'),
(4, 'Medium Nails', 250.00, 'images/medium.jpg'),
(5, 'Long Nails', 300.00, 'images/long.jpeg'),
(6, 'Buff & Shine', 150.00, 'images/buff and shine.jpg'),
(7, 'Gel Overlay Plain', 150.00, 'images/gel overlay plain.jpg'),
(8, 'Soak Off', 80.00, 'images/soak off.jpg'),
(9, 'Gel Pedicure', 200.00, 'images/pedicure.jpeg'),
(10, 'Classic Lash', 150.00, 'images/classic.webp'),
(11, 'Volume Lash', 200.00, 'images/volume.webp'),
(12, 'Cateye Lash', 250.00, 'images/Cateye.jpg'),
(13, 'Anime Lash', 300.00, 'images/anime.jpeg'),
(14, 'Hybrid Lash', 300.00, 'images/hybrid.jpg'),
(15, 'Mega Volume Lash', 350.00, 'images/megavolume.webp'),
(16, 'Mink Lash', 300.00, 'images/mink.jpeg'),
(17, 'Wispy Lash', 250.00, 'images/wispy.jpeg'),
(18, 'Colored Lash', 300.00, 'images/color.jpeg'),
(19, 'Natural Eyebrow Shaping', 150.00, 'images/natural eyebrow.jpeg'),
(20, 'Waxing', 200.00, 'images/waxing.jpeg'),
(21, 'Tinting', 250.00, 'images/tinting.jpeg'),
(22, 'Threading', 300.00, 'images/threading.jpeg'),
(23, '1 Week Nail Course', 800.00, 'images/Nail prep.webp'),
(24, '2 Weeks Nail Course', 1500.00, 'images/acrilic application.webp'),
(25, '3 Weeks Nail Course', 2000.00, 'images/shapes and filing.webp'),
(26, '4 Weeks Nail Course', 3000.00, 'images/Deco.webp');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(80) NOT NULL,
  `email` varchar(120) NOT NULL,
  `phone_number` varchar(15) DEFAULT NULL,
  `signup_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `phone_number`, `signup_date`, `password`) VALUES
(1, 'sila', 'sila@gmail.com', NULL, '2024-10-31 11:44:32', '$2y$10$VwU8kxommYiXrEoNn0wUHeOd1hZtPytLnEvn2LtlmzfydjlM64I7u'),
(3, 'mdluli', 'mdluli@gmail.com', NULL, '2024-10-31 11:47:59', '$2y$10$0DhAKEw51afX9YilwyEtSO9oGtNztxh0cFjgeJ3at9XiVuW6LhtHW'),
(4, 'mich', 'mich@gmail.com', NULL, '2024-10-31 11:49:51', '$2y$10$tIXz3bNh46qgQibWw2eVN..lYmQ8cYsiaw4EppKXpQGjzBIU6OFly'),
(5, 'me', 'me1@gmail.com', NULL, '2024-10-31 11:52:20', '$2y$10$H2hUsI.mJDpbngob0k6dMeB55nsmH65DoLg2g9wm0e005HldNi3rm'),
(6, 'prince', 'prince@gmail.com', NULL, '2024-10-31 12:57:52', '$2y$10$PsfIuHWSUOaNZvRdacEG6.6ILHD2nCjwYMNux.1Qyspd0u86zibj6'),
(7, 'test', 'testing1@gmail.com', NULL, '2024-10-31 22:39:27', '$2y$10$RxXbR7dt3yEzyXwg5.6TT.XmRQUOeL06hF4QuZONTVS0eWYRHDa6y'),
(8, 'scotts', 'scottsmaphuma@gmail.com', NULL, '2024-10-31 23:22:01', '$2y$10$Xe0Liqec/3JSav1Rw827C.h5/A3CFyR3uo0qZj08uV.bNShh3nuqi'),
(9, 'Dad', 'dad@gmail.com', NULL, '2024-11-01 00:10:08', '$2y$10$JCqPSsxjtzlrkVXCJUgS4uOVSAR2CzK4AXt1or9L8n0kcQuhQvAdy'),
(10, 'kyle', 'kyle123@gmail.com', NULL, '2024-11-01 00:20:38', '$2y$10$UeCO4rotFw1HY1UGUKBdfumIWHWMXFHjk8s6ykdFHkIttamlLgG7m'),
(11, 'maradona', 'maradona@gmail.com', NULL, '2024-11-01 10:04:58', '$2y$10$4H0ItNril.40oU4gsEHRfunLrGqh3z3jbdGFtOTrA7cADTjVMp/4m'),
(13, 'ashly', 'ashly@gmail.com', NULL, '2024-11-01 10:05:52', '$2y$10$/O.les3jlx/uHEh7FrhQZugR1UXESgzCmde5nr5ja..pVvfF8/vxm'),
(14, 'betty', 'bettycongwane@gmail.com', NULL, '2024-11-01 10:44:05', '$2y$10$j9PI3d8qkq9LINOFLczGgOShrRkDVuEH6yFheNbnytKE1OY4XlLcK'),
(15, 'Zandile', 'mdlulizandile174@gmail.com', NULL, '2024-11-01 11:04:57', '$2y$10$oWVJmkKGRqIQVV8cDHd7bOv/uaBMo.dFQW3RRADL/YHlFGKN0XF82'),
(16, 'daddy', 'daddy@gmail.com', NULL, '2024-11-01 19:11:20', '$2y$10$jGKFOGc2Fg2iFOj9yWU4d.pp1WbBrsQwXeLgHVtyimjl6pbXP5A/2'),
(17, 'Maphuma', '', '0682660852', '2024-11-03 10:42:30', '$2y$10$kU4SvNU9am0HS9mk5QryXeSyyrlHnrfeyzjJXH9mODyZ.YFNIdc1e'),
(18, 'jayden', 'jayden@gmail.com', '0682369952', '2024-11-03 11:29:35', '$2y$10$SQiDuMDgU12J8xXrBulRnOb/X8vKhIQKl7hR4RXzYFeuqckdrW28i'),
(19, 'ladybug', 'ladybug@gmail.com', '', '2024-11-04 09:26:16', '$2y$10$qe/y8/33ZtfXGTd7NG/aG.DiJ.h.fVREHRDxmn/.3l7LjsbhVSyjO'),
(20, 'T', 't@t', '0000000000', '2024-11-04 11:53:19', '$2y$10$s9A/Yh7YiEW8OPCosEW7Lu3UksXwAdgNH3DBL/T8B4L3iawqhsaHy'),
(21, 'Katra', 'katra@gmail.com', '0692562145', '2024-11-09 14:18:53', '$2y$10$y/znpUXLbuxiCgAgGHEjR.MH3MFzv0J9Bx.xxvgoa97ZL23sAdxo2'),
(24, 'Pammy', 'pammy101@gmail.com', '0685267458', '2024-11-09 14:23:52', '$2y$10$DL7jGnqYl56lBY3akn.7xeLSPqNNrcbEZPG/aUCAgSmHIotLCVlcK'),
(25, 'Bandros', 'bandros123@gmail.com', '0723697845', '2024-11-09 17:55:23', '$2y$10$vA3Ny9jJOAbT31DGHr0OROxcWtqOrbclg.IYsr./a44s/Rgs/Xt76');

-- --------------------------------------------------------

--
-- Table structure for table `visits`
--

CREATE TABLE `visits` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `visits`
--

INSERT INTO `visits` (`id`, `user_id`, `type`, `timestamp`) VALUES
(1, 5, 'signup', '2024-10-31 11:52:20'),
(2, 6, 'signup', '2024-10-31 12:57:53'),
(3, 7, 'signup', '2024-10-31 22:39:28'),
(5, 8, 'signup', '2024-10-31 23:22:02'),
(11, 1, 'login', '2024-10-31 23:48:03'),
(12, 1, 'login', '2024-10-31 23:55:11'),
(13, 9, 'signup', '2024-11-01 00:10:08'),
(14, 10, 'signup', '2024-11-01 00:20:38'),
(15, 8, 'login', '2024-11-01 00:38:03'),
(16, 11, 'signup', '2024-11-01 10:04:58'),
(17, 13, 'signup', '2024-11-01 10:05:53'),
(18, 14, 'signup', '2024-11-01 10:44:06'),
(19, 15, 'signup', '2024-11-01 11:04:57'),
(20, 16, 'signup', '2024-11-01 19:11:20'),
(21, 17, 'signup', '2024-11-03 10:42:31'),
(22, 18, 'signup', '2024-11-03 11:29:36'),
(23, 19, 'signup', '2024-11-04 09:26:16'),
(24, 20, 'signup', '2024-11-04 11:53:19'),
(25, 21, 'signup', '2024-11-09 14:18:54'),
(26, 24, 'signup', '2024-11-09 14:23:52'),
(27, 25, 'signup', '2024-11-09 17:55:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `aftercare_videos`
--
ALTER TABLE `aftercare_videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logins`
--
ALTER TABLE `logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`review_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `phone_number` (`phone_number`);

--
-- Indexes for table `visits`
--
ALTER TABLE `visits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `aftercare_videos`
--
ALTER TABLE `aftercare_videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `logins`
--
ALTER TABLE `logins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `visits`
--
ALTER TABLE `visits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `logins`
--
ALTER TABLE `logins`
  ADD CONSTRAINT `logins_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `visits`
--
ALTER TABLE `visits`
  ADD CONSTRAINT `visits_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
--
-- Database: `barbie_nail_bar_db`
--
CREATE DATABASE IF NOT EXISTS `barbie_nail_bar_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `barbie_nail_bar_db`;

-- --------------------------------------------------------

--
-- Table structure for table `activity_logs`
--

CREATE TABLE `activity_logs` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `action` varchar(50) DEFAULT NULL,
  `timestamp` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(20) DEFAULT 'admin',
  `last_login` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` int(11) NOT NULL,
  `generated_by` int(11) DEFAULT NULL,
  `report_type` varchar(50) DEFAULT NULL,
  `report_date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `available` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `site_visits`
--

CREATE TABLE `site_visits` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `action` varchar(50) DEFAULT NULL,
  `timestamp` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `signup_date` datetime DEFAULT current_timestamp(),
  `last_login` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `generated_by` (`generated_by`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_visits`
--
ALTER TABLE `site_visits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_logs`
--
ALTER TABLE `activity_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `site_visits`
--
ALTER TABLE `site_visits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD CONSTRAINT `activity_logs_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `reports`
--
ALTER TABLE `reports`
  ADD CONSTRAINT `reports_ibfk_1` FOREIGN KEY (`generated_by`) REFERENCES `admin_users` (`id`);

--
-- Constraints for table `site_visits`
--
ALTER TABLE `site_visits`
  ADD CONSTRAINT `site_visits_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;
--
-- Database: `barbie_nail_bar_system`
--
CREATE DATABASE IF NOT EXISTS `barbie_nail_bar_system` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `barbie_nail_bar_system`;

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`, `created_at`) VALUES
(1, 'admin', '$2y$10$ps13KWs0fD1LAIroum.bGOmsTYOmUQxlZUfMA3CrB5/tVyU69Tll2', '2024-10-30 12:45:06');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `password`, `created_at`) VALUES
(1, 'mellow@gmail.com', 'Mellow', '$2y$10$rx3iSKJbXwfBTUHVvBocz.brlRvcjpq9DH.UavIJ/8n77pt4l.swO', '2024-10-30 20:25:19'),
(3, 'mitchelle@gmail.com', 'Mitchelle', '$2y$10$FoGDIwxGgNOOFN9NYWFSNuPYHBnwRppPjrAgJs9MDrGKJ4dBudRQ6', '2024-10-30 20:36:22'),
(4, 'friend@gmail.com', 'friend', '$2y$10$lhwO6TmqHKvteRtOzAwDCOxFEAl3AVDSdv7jEptaFZA9.2dl/D32S', '2024-10-30 20:40:49'),
(5, 'hi@gmail.com', 'hi', '$2y$10$98FL8dWuspcp4Bz31nINE.VtFH/VEUiHdjC/Pcd1/DJV7AIiV4AgG', '2024-10-30 20:41:59'),
(7, 'jelly@gmail.com', 'jelly', '$2y$10$T5wbTlvVUCIoFqq0seZDvu029DkrX3mwsNFTNEQaKFxNZHNqd.NOS', '2024-10-30 21:28:04');

-- --------------------------------------------------------

--
-- Table structure for table `user_activity`
--

CREATE TABLE `user_activity` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `action` varchar(20) NOT NULL,
  `action_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `username` varchar(255) NOT NULL,
  `activity` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_activity`
--

INSERT INTO `user_activity` (`id`, `user_id`, `action`, `action_date`, `username`, `activity`) VALUES
(1, 0, '', '2024-10-30 20:40:49', 'friend', 'User signed up'),
(2, 0, '', '2024-10-30 20:41:59', 'hi', 'User signed up'),
(3, 0, '', '2024-10-30 21:28:05', 'jelly', 'User signed up');

-- --------------------------------------------------------

--
-- Table structure for table `visit_count`
--

CREATE TABLE `visit_count` (
  `id` int(11) NOT NULL,
  `count` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `user_activity`
--
ALTER TABLE `user_activity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visit_count`
--
ALTER TABLE `visit_count`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user_activity`
--
ALTER TABLE `user_activity`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `visit_count`
--
ALTER TABLE `visit_count`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Database: `booking_system`
--
CREATE DATABASE IF NOT EXISTS `booking_system` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `booking_system`;

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `service` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
--
-- Database: `booking_system_db`
--
CREATE DATABASE IF NOT EXISTS `booking_system_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `booking_system_db`;

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `service` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);
--
-- Database: `my_database`
--
CREATE DATABASE IF NOT EXISTS `my_database` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `my_database`;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `action` varchar(50) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
--
-- Database: `my_new_booking_db`
--
CREATE DATABASE IF NOT EXISTS `my_new_booking_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `my_new_booking_db`;

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `service` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `service` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `availability` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `name`, `email`, `service`, `date`, `time`, `created_at`, `availability`) VALUES
(28, 'Zandile', 'bmdluli005@gmail.com', 'Classic Lash - R150', '2024-10-24', '09:30:00', '2024-10-20 18:23:53', 1),
(29, 'Zandile', 'bmdluli005@gmail.com', 'Tinting - R250', '2024-10-26', '07:30:00', '2024-10-20 20:09:38', 1),
(30, 'Menzi', 'menzikyle#2013@gmail.com', '4 Weeks - R3000', '2024-10-24', '15:30:00', '2024-10-21 20:52:16', 1),
(31, 'Menzi', 'menzikyle#2013@gmail.com', '4 Weeks - R3000', '2024-10-24', '15:30:00', '2024-10-21 20:52:16', 1),
(32, 'Menzi', 'menzikyle#2013@7', 'Plain Acrylic - R200, Classic Lash - R150', '2024-09-10', '12:30:00', '2024-10-22 09:55:55', 1),
(33, 'Menzi', 'menzikyle#2013@7', 'Plain Acrylic - R200', '2024-09-25', '12:49:00', '2024-10-22 10:50:04', 1),
(34, 'Pamela', 'pmdluli@8', 'Classic Lash - R150', '2024-08-24', '14:00:00', '2024-10-22 11:00:28', 1),
(35, 'Pamela', 'pmdluli@8', 'Plain Acrylic - R200', '2024-08-22', '14:05:00', '2024-10-22 11:06:21', 1),
(36, 'Zandile Mdluli', 'mdlulizandile174@gmail.com', 'Plain Acrylic - R200, Cateye Lash - R250', '2024-10-26', '15:30:00', '2024-10-22 12:21:40', 1),
(37, 'Kyle', 'pmakgoga@nphs.co.za', 'Plain Acrylic - R200', '2024-10-26', '12:00:00', '2024-10-22 19:16:25', 1),
(38, 'Zandile', 'pmakgoga@nphs.co.za', 'Plain Acrylic - R200, Classic Lash - R150', '2024-10-25', '08:00:00', '2024-10-23 20:03:15', 1),
(39, 'Lerato', 'leratomashita@gmail.com', 'Plain Long - R250', '2024-10-26', '10:15:00', '2024-10-23 20:16:06', 1),
(40, 'Sbo', 'sbo@gmail.com', 'French Tips Short - R200', '2024-11-02', '09:00:00', '2024-10-23 21:22:38', 1),
(41, 'Kyle', 'pmakgoga@nphs.co.za', 'Plain Acrylic - R200', '2024-10-25', '10:00:00', '2024-10-23 21:48:32', 0),
(42, 'Sbo', 'sbo@gmail.com', 'Plain Long - R250', '2024-10-25', '10:00:00', '2024-10-23 21:49:38', 0),
(43, 'Lebo', 'lebom@yahoo-inc.com', 'Classic Lash - R150', '2024-10-26', '09:00:00', '2024-10-23 22:13:33', 0),
(44, 'Lebo', 'lebom@yahoo-inc.com', 'Plain Acrylic - R200', '2024-10-26', '09:00:00', '2024-10-23 22:14:23', 0),
(45, 'Lebo', 'lebom@yahoo-inc.com', 'Cateye Lash - R250', '2024-11-01', '08:00:00', '2024-10-23 22:17:57', 0),
(46, 'Khanyi', 'khanyi@gmail.com', 'Classic Lash - R150', '2024-10-29', '13:00:00', '2024-10-23 22:27:04', 0),
(47, 'Mbali', 'mbali@gmail.com', 'Medium Nails - R250', '2024-10-28', '12:00:00', '2024-10-26 20:17:41', 0),
(48, 'Bruce', 'bmdluli005@gmail.com', 'Buff &amp; Shine - R150', '2024-10-31', '09:30:00', '2024-10-27 19:34:24', 0),
(49, 'Bruce', 'bmdluli005@gmail.com', 'Plain Acrylic', '2024-10-30', '12:30:00', '2024-10-27 19:48:07', 0),
(50, 'Lerato Bradly', 'leratomashita@gmail.com', 'French Tips Short - R200', '2024-10-31', '14:40:00', '2024-10-28 18:34:35', 0),
(51, 'Lerato Bradly', 'leratomashita@gmail.com', 'Long Nails - R300, Tinting - R250', '2024-10-31', '12:30:00', '2024-10-28 18:48:30', 0),
(52, 'Lerato Bradly', 'leratomashita@gmail.com', 'Plain Acrylic - R200', '2024-10-31', '13:30:00', '2024-10-28 18:49:29', 0);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `name`, `price`) VALUES
(1, 'Plain Acrylic', 200.00),
(2, 'Plain Long', 250.00),
(3, 'French Tips Short', 200.00),
(4, 'Medium Nails', 250.00),
(5, 'Long Nails', 300.00),
(6, 'Buff & Shine', 150.00),
(7, 'Gel Overlay Plain', 150.00),
(8, 'Soak Off', 80.00),
(9, 'Gel Pedicure', 200.00),
(10, 'C', 0.00);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"barbie_nail_bar_db\",\"table\":\"admin_users\"},{\"db\":\"my_new_booking_db\",\"table\":\"services\"},{\"db\":\"my_new_booking_db\",\"table\":\"bookings\"},{\"db\":\"booking_system_db\",\"table\":\"bookings\"},{\"db\":\"appointments\",\"table\":\"appointment_bookings\"},{\"db\":\"booking_system\",\"table\":\"bookings\"},{\"db\":\"my_database\",\"table\":\"users\"},{\"db\":\"my_database\",\"table\":\"notifications\"},{\"db\":\"my_new_booking_db\",\"table\":\"appointments\"},{\"db\":\"appointments\",\"table\":\"appointment bookings\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'my_new_booking_db', 'bookings', '{\"CREATE_TIME\":\"2024-10-16 21:31:02\"}', '2024-10-24 08:19:09');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2024-10-29 19:19:43', '{\"Console\\/Mode\":\"collapse\",\"NavigationWidth\":0}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
