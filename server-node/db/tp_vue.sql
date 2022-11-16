-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Nov 15, 2022 at 11:11 PM
-- Server version: 5.7.34
-- PHP Version: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tp_vue`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `categorie` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `categorie`, `price`, `photo`, `createdAt`, `updatedAt`) VALUES
(70, 'Ezo', 'Quoi de mieux qu\'un arrosoir qui est tellement beau qu\'on veut le garder comme déco ? Minimaliste, cette oeuvre d\'art est pour ceux qui aime joindre l\'utile à l\'agréable.', 'Accessoirs', 50, 'arrosoir.jpeg', '2022-11-13 01:26:28', '2022-11-13 04:45:50'),
(71, 'Monstera', 'Pas le pouce vert ? Pas de problème ! avec cette plante grâce qui requiert un minimum d\'attention, vous serez rassuré de savoir qu\'elle restera verte et belle dans votre appartement.', 'Plantes', 35, 'monstera.jpeg', '2022-11-13 04:43:36', '2022-11-13 04:43:36'),
(72, 'Peperomia', 'Pas le pouce vert ? Pas de problème ! avec cette plante grâce qui requiert un minimum d\'attention, vous serez rassuré de savoir qu\'elle restera verte et belle dans votre appartement.', 'Plantes', 40, 'peperomia.jpeg', '2022-11-13 04:47:08', '2022-11-13 04:47:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
