-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 12, 2024 at 11:13 AM
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
-- Database: `social_network`
--

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `content` varchar(255) NOT NULL,
  `likes` int(11) NOT NULL,
  `created_time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `content`, `likes`, `created_time`) VALUES
(1, 3, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 1, '2023-12-01 20:47:24'),
(2, 2, 'heej cao', 2, '2023-12-01 21:00:30'),
(3, 4, 'Hej cao', 0, '2023-12-02 21:33:32');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `profile_image` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `username`, `profile_image`, `email`, `password`) VALUES
(1, 'Milos', 'Petrovic', 'Mimi77', 'uploads/default.jpg', 'm@gmail.com', '$2y$10$t7pOwRaxk4UADNtXqBYPAu019sOFiqqGfTVfHijDmLYHfP/0fPgYq'),
(2, 'Andrija', 'Tesovic', 'Tesa', 'uploads/default.jpg', 't@gmail.com', '$2y$10$ViM.96.XQDLNHkuqY8eGUu0tY/VHge6aKLT0HYiHm6Rq61KlZB2Ee'),
(3, 'Niko', 'Belic', 'Bela', 'uploads/3.jpg', 'nb@gmail.com', '$2y$10$pUoASbYjSAK/34.6YOcp7.jwTqBV8TsFd7/Pc1c5lpe4BNGWYOugW'),
(4, 'Dusan', 'Jankovic', 'Duki', 'uploads/4.jpg', 'dj@gmail.com', '$2y$10$CO4OrKW.QbkCrLb.p4GekedeDsdjborcKKNsBx6SDweEd90g7r/xm');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
