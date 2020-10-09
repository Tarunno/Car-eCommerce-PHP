-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 09, 2020 at 10:58 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `car_dealership`
--

CREATE DATABASE `car_dealership`;
-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `id` bigint(11) NOT NULL,
  `manufacturer` varchar(256) NOT NULL,
  `model` varchar(256) NOT NULL,
  `price` varchar(256) NOT NULL,
  `condition` varchar(256) NOT NULL,
  `phone` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `speed` varchar(256) NOT NULL,
  `mileage` varchar(256) NOT NULL,
  `battery` tinytext NOT NULL,
  `fuel` varchar(256) NOT NULL,
  `total_run` varchar(256) NOT NULL,
  `gear` varchar(256) NOT NULL,
  `image` varchar(256) NOT NULL,
  `car_type` varchar(256) NOT NULL,
  `stock` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`id`, `manufacturer`, `model`, `price`, `condition`, `phone`, `email`, `speed`, `mileage`, `battery`, `fuel`, `total_run`, `gear`, `image`, `car_type`, `stock`) VALUES
(25, 'Mazda', '370z', '20000.5', 'ince the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the ', '01863987793', 'tarunno@gmail.com', '250', '55', 'OK', 'Patrol', '20000', 'Auto', 'Carnissan_370z.jpg', 'Sports', 0),
(26, 'Macedes', 'A-class 2020', '40500', 'ince the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the ', '01863987793', 'toma@gmail.com', '170', '60', 'OK', 'Octen  ', '12000', 'Auto', 'CarAclass.jpg', 'Regular', 0),
(27, 'BMW', '2-series 2018', '23000', 'ince the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the ', '01863987793', 'molly@gmail.com', '220', '50', 'OK', 'Patrol', '14500', 'Manual', 'Carbmw2series.jpg', 'Sports', 0),
(28, 'BMW', 'M2 sedan', '20000.5', 'ince the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the ', '01863987793', 'dolly@gmail.com', '250', '54', 'OK', 'Patrol', '12000', 'Auto', 'Carbmwsedan.jpg', 'Regular', 0),
(29, 'Chevrolet', 'Camaro 2019', '32500', 'ince the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the ', '01863987793', 'molly@gmail.com', '250', '55', 'OK', 'Octen  ', '12000', 'Manual', 'Carcamaro.jpg', 'Sports', 0),
(30, 'Macedes', 'G-class 2016', '20000.5', 'ince the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the ', '01863987793', 'molly@gmail.com', '170', '50', 'OK', 'Octen  ', '14500', 'Auto', 'CarGclass.jpg', 'Off road', 0),
(31, 'Nissan', 'GTR r35 2018', '34500', 'ard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It wa', '01863987793', 'dolly@gmail.com', '220', '50', 'Need change', 'Patrol', '20300', 'Manual', 'Cargtr35.jpg', 'Sports', 0),
(32, 'General Motors', 'Hummer H3', '15000', 'ard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It wa', '01863987793', 'srity@gmail.com', '123', '40', 'OK', 'Dessel ', '20000', 'Manual', 'Carh3.jpg', 'Off road', 0),
(33, 'Mazda', 'MX-5 Miara', '20000.5', 'ard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It wa', '01863987793', 'tarunno@gmail.com', '170', '55', 'Need change', 'Dessel ', '14500', 'Manual', 'Carmiata.jpg', 'Sports', 0),
(34, 'Ford', 'Mustang Eco-boost 2016', '23000', 'ard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It wa', '01863987793', 'tarunno@gmail.com', '220', '50', 'OK', 'Dessel ', '12000', 'Auto', 'Carmustang.jpg', 'Sports', 0),
(35, 'Toyota', 'Prias 2019', '12000', 'ard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It wa', '01863987793', 'dolly@gmail.com', '140', '60', 'OK', 'Patrol', '14500', 'Auto', 'Carprias.jpeg', 'Regular', 0),
(36, 'Audi', 'R8 sports 2020', '44000', 'ard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It wa', '01863987793', 'tarunno@gmail.com', '250', '50', 'OK', 'Octen  ', '20000', 'Auto', 'CarR8.jpg', 'Sports', 0),
(38, 'Ford', 'Runner Raptor 2016', '20045', 'ard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It wa', '01863987793', 'tarunno@gmail.com', '170', '55', 'OK', 'Dessel ', '20000', 'Manual', 'Carraptor.jpg', 'Off road', 0),
(39, 'Toyota', 'Runner 2020', '37000', 'ard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It wa', '01863987793', 'tarunno@gmail.com', '200', '50', 'OK', 'Octen  ', '20000', 'Manual', 'Carrunner.jpg', 'Off road', 0),
(40, 'Mazda', 'RX-7 2002', '20000.5', 'ard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It wa', '01863987793', 'tarunno@gmail.com', '220', '55', 'Need change', 'Dessel ', '12000', 'Auto', 'Carrx7.jpg', 'Sports', 0),
(41, 'Toyota', 'Supra 2020', '27500', 'ard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It wa', '01863987793', 'tarunno@gmail.com', '220', '40', 'OK', 'Patrol', 'New', 'Auto', 'Carsupra.jpg', 'Sports', 0),
(42, 'Toyota', 'Camry TRD 2019 ', '21600', 'ard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It wa', '01863987793', 'molly@gmail.com', '180', '46', 'OK', 'Octen  ', '20000', 'Manual', 'Cartoyota_camry.jpg', 'Regular', 0),
(43, 'Range rover', 'Valar V6 2017', '45000', 'ard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It wa', '01863987793', 'tarunno@gmail.com', '200', '50', 'OK', 'Dessel ', '12000', 'Auto', 'Carvalar.jpg', 'Off road', 0),
(44, 'Volks Wagon', 'Beetle 2006', '20000.5', 'ard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It wa', '01863987793', 'tarunno@gmail.com', '123', '55', 'Need change', 'Octen  ', '28000', 'Auto', 'Carvolkswagen_beetle.jpg', 'Regular', 0),
(45, 'Volks Wagon', 'Passat 2020', '12400', 'ard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It wa', '01863987793', 'dolly@gmail.com', '130', '56', 'OK', 'Patrol', 'New', 'Auto', 'Carvolkswagen_passat.jpg', 'Regular', 0),
(46, 'Jeep', 'Wrangler Rubicon 2017', '37800', 'ard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It wa', '01863987793', 'tarunno@gmail.com', '170', '50', 'OK', 'Dessel ', '14500', 'Manual', 'Carwrangler.jpg', 'Off road', 0),
(47, 'General Motors', 'Ram V6 2017', '20240', '500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with', '01863987793', 'tarunno@gmail.com', '140', '55', 'OK', 'Octen  ', '20000', 'Manual', 'Carram.jpg', 'Off road', 0),
(48, 'Lambougini', 'Huracan 2017', '67000', '500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with', '01863987793', 'toma@gmail.com', '220', '37', 'OK', 'Patrol', '12000', 'Auto', 'Carhuracan.jpg', 'Sports', 0),
(49, 'Laxus', 'LC V4 turbo 2014', '22500', '500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with', '01863987793', 'molly@gmail.com', '200', '50', 'Need change', 'Octen  ', '20000', 'Auto', 'CarLexus_LC.jpg', 'Sports', 0),
(50, 'Tesla', 'Model S 2015', '20000.5', 'Tarunno ince the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised', '01863987793', 'toma@gmail.com', '250', '50', 'OK', 'Electric ', '20000', 'Auto', 'CarteslaModelS.jpg', 'Regular', 0);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` bigint(11) NOT NULL,
  `product_name` varchar(256) NOT NULL,
  `user_id` bigint(11) NOT NULL,
  `product_id` bigint(11) NOT NULL,
  `product_price` bigint(20) NOT NULL,
  `user_name` varchar(256) NOT NULL,
  `product_model` varchar(256) NOT NULL,
  `user_email` varchar(256) NOT NULL,
  `product_image` varchar(256) NOT NULL,
  `product_id_2` int(11) NOT NULL DEFAULT -1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `gallary`
--

CREATE TABLE `gallary` (
  `image1` varchar(256) NOT NULL,
  `image2` varchar(256) NOT NULL,
  `image3` varchar(256) NOT NULL,
  `image4` varchar(256) NOT NULL,
  `image5` varchar(256) NOT NULL,
  `image6` varchar(256) NOT NULL,
  `image7` varchar(256) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gallary`
--

INSERT INTO `gallary` (`image1`, `image2`, `image3`, `image4`, `image5`, `image6`, `image7`, `id`) VALUES
('Gallaryb6252dbd054d2f02b45a857741e58cf7.jpg', 'GallaryBronco-Two-Door.jpg', 'gallary1.jpeg', 'GallaryThoughtxc7ygvpaltbng0ix3bxp.jpg', 'GallaryThoughtrocket-bunny-gtr-1.jpg', 'gallary9.jpg', 'gallary10.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `my_thoughts`
--

CREATE TABLE `my_thoughts` (
  `id` int(11) NOT NULL,
  `title` varchar(256) NOT NULL,
  `body` text NOT NULL,
  `image` varchar(256) NOT NULL,
  `create_time` datetime NOT NULL DEFAULT current_timestamp(),
  `tag` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `my_thoughts`
--

INSERT INTO `my_thoughts` (`id`, `title`, `body`, `image`, `create_time`, `tag`) VALUES
(4, 'PRF & F Toyota Supra mk4', 'ype and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Le \r\n<br><br>\r\nThere are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.\r\nThere are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.\r\n', 'Thoughtb6252dbd054d2f02b45a857741e58cf7.jpg', '2020-07-30 12:27:25', 'Supra'),
(5, 'Why everyone love HONDA s2000', ' Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetti\r\n<br><br>\r\nt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n<br> <br>\r\npackages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web', 'ThoughtaXvQZwP_460s.jpg', '2020-07-30 12:31:31', 'S2000'),
(6, 'Land Rover Defender V8 (2018) Features, Design, Driving', 'industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n<br> <br>\r\nindustry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Thoughtmaxresdefault.jpg', '2020-07-30 19:50:54', 'Defender'),
(7, 'The New 2021 Ford Bronco Isn\'t Just an SUV, It\'s a Lifestyle', 't is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n<br> <br>\r\ndable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page', 'ThoughtBronco-Two-Door.jpg', '2020-07-30 19:55:25', 'Bronco'),
(8, 'GM is Reviving \"Hummer\" as New Electric Pickup', 'It is a long established fact that a reader will be distracted by the readable cont\r\n<br> <br>\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n<br> <br>\r\nking it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model ', 'Thoughtxc7ygvpaltbng0ix3bxp.jpg', '2020-07-30 19:57:59', 'Hummer'),
(9, 'Wide Body Rocket Bunny Nissan GT-R 35 V2', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n<br> <br>\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites simes on purpose (injected humour and the like).', 'Thoughtrocket-bunny-gtr-1.jpg', '2020-07-30 20:07:25', 'Rocket bunny'),
(10, ' 2018 Dodge Demon vs Hellcat Challenger - Major Differences', 'Content of a page when looking at its layout. The point of using Lorem Ipsum I.\r\n<br><br>\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n<br><br>\r\nmany web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\n', 'ThoughtDodge-Demon-vs-Hellcat-Challenger.jpg', '2020-07-30 20:09:55', 'Dodge'),
(11, 'Car Comparison Tests - How To Compare Cars', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n<br><br>\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose', 'Thoughtdw-burnett-supras-finals-6-1595000408.jpg', '2020-07-30 20:12:09', 'Comparison');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `address` varchar(256) NOT NULL,
  `city` varchar(256) NOT NULL,
  `phone` varchar(256) NOT NULL,
  `postal_code` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `address`, `city`, `phone`, `postal_code`) VALUES
(7, 4, 'Agrabad access road', 'Chittagong', '0186231231', '1233');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` bigint(20) NOT NULL DEFAULT -1,
  `product_id2` int(11) NOT NULL DEFAULT -1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `product_id2`) VALUES
(17, 7, 50, -1),
(18, 7, 42, -1),
(19, 7, 40, -1),
(20, 7, 43, -1),
(21, 7, -1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `manufacturer` varchar(256) NOT NULL,
  `model` varchar(256) NOT NULL,
  `price` varchar(256) NOT NULL,
  `type` varchar(256) NOT NULL,
  `image` varchar(256) NOT NULL,
  `condition` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `phone` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `manufacturer`, `model`, `price`, `type`, `image`, `condition`, `email`, `phone`) VALUES
(3, 'Toyota', 'Turbo Charger', '100.5', 'Turbo', 'ProductTarboCharger2.jpg', ' is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not o', 'dolly@gmail.com', '01863987793'),
(4, 'General Motors', 'Spare parts', '123', 'Parts', 'ProductspareParts\'.jpg', ' is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not o', 'mahadi@gmail.com', '01863987793'),
(6, 'GDMs', 'Hilux Crank shaft', '300', 'Crank Shaft', 'ProductHilux_crankshaft.jpg', ' is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not o', 'molly@gmail.com', '01863987793'),
(9, 'Nissan', 'Turbo Charger', '45.8', 'Turbo', 'ProductTurboCharger.jpg', ' is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not o', 'molly@gmail.com', '01863987793'),
(10, 'General Motors', 'Still Bushes', '256', 'Bushes', 'ProductstillBushes.jpg', ' is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not o', 'toma@gmail.com', '01863987793'),
(11, 'GDMs', 'Cumming Engine Parts', '1000', 'Parts', 'ProductcummingEngineParts.jpg', ' is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not o', 'dolly@gmail.com', '01863987793'),
(12, 'Toyota', 'Crank shaft', '100.5', 'Crank Shaft', 'Productcrankshaft.jpg', ' is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not o', 'molly@gmail.com', '01863987793'),
(13, 'General Motors', 'OME', '45.8', 'OME', 'ProductOME.jpg', ' is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not o', 'toma@gmail.com', '01863987793'),
(14, 'Rubicon Motors', 'Water pump', '2000.5', 'Pump', 'ProductwaterPump.jpg', ' is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not o', 'tarunno@gmail.com', '01863987793'),
(15, 'General Motors', 'Tharmo State', '100.5', 'Tharmo State', 'ProductTharmoState.jpg', ' is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not o', 'molly@gmail.com', '01863987793');

-- --------------------------------------------------------

--
-- Table structure for table `stories`
--

CREATE TABLE `stories` (
  `id` int(11) NOT NULL,
  `title` varchar(256) NOT NULL,
  `body` varchar(256) NOT NULL,
  `showing` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stories`
--

INSERT INTO `stories` (`id`, `title`, `body`, `showing`) VALUES
(36, 'Supra Rocket bunny kit', 'ndustry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic t', 1),
(37, 'RX-7 tuned upto 1000hp', 'ndustry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic t', 1),
(38, 'GMDs car megazine released ', 'ndustry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic t', 1),
(39, 'Mclran F1 the ultimate beast', 'ndustry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic t', 1),
(40, 'Mahadi hasan tarunno loves cars', 'ndustry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic t', 1),
(41, 'RX-7 Red beauty', 'ndustry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic t', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `username` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL,
  `admin` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `admin`) VALUES
(4, 'Tarunno', 'tarunno@gmail.com', '$2y$10$RF4gmqgXlU9ZQ9EbFNiWHOP.CiIvcPs16OxjKTEvD.mGfDs2ah/d2', 1),
(5, 'Molly', 'molly@gmail.com', '$2y$10$mL/wW1MRtcB7XPkuHo1JZu/tBP/SkzuHDxAYswg9flgMviEU/fBhu', 0),
(8, 'Dolly', 'dolly@gmail.com', '$2y$10$lzFbsUpQjlJmaboCTnFyDeMZCV9tU0zY8o4sg3CPRJNW3b24peSxq', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_ibfk_1` (`user_id`);

--
-- Indexes for table `gallary`
--
ALTER TABLE `gallary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `my_thoughts`
--
ALTER TABLE `my_thoughts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_ibfk_1` (`user_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_ibfk_2` (`order_id`),
  ADD KEY `order_items_ibfk_3` (`product_id`),
  ADD KEY `product_id2` (`product_id2`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stories`
--
ALTER TABLE `stories`
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
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `gallary`
--
ALTER TABLE `gallary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `my_thoughts`
--
ALTER TABLE `my_thoughts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `stories`
--
ALTER TABLE `stories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
