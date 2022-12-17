-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 17, 2019 at 09:45 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 5.6.39

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecom`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(100) NOT NULL,
  `brand_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(1, 'HP'),
(2, 'Samsung'),
(3, 'Apple'),
(4, 'Sony'),
(5, 'One+'),
(6, 'Moto'),
(7, 'Asus'),
(8, 'Mi\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(10) NOT NULL,
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(250) NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `qty` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `p_id`, `ip_add`, `user_id`, `qty`) VALUES
(1, 2, '::1', -1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(100) NOT NULL,
  `cat_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'Mobiles'),
(2, 'Laptops'),
(3, 'Led-Tv'),
(4, 'Camera'),
(5, 'Refrigirators'),
(6, 'Headphones'),
(7, 'Electronics Gadgets'),
(8, 'Monitor ');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `trx_id` varchar(255) NOT NULL,
  `p_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `product_id`, `qty`, `trx_id`, `p_status`) VALUES
(1, 2, 7, 1, '07M47684BS5725041', 'Completed'),
(2, 2, 2, 1, '07M47684BS5725041', 'Completed');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `product_cat` int(100) NOT NULL,
  `product_brand` int(100) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` text NOT NULL,
  `product_keywords` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_cat`, `product_brand`, `product_title`, `product_price`, `product_desc`, `product_image`, `product_keywords`) VALUES
(1, 1, 2, 'Samsung Dous 2', 5000, 'Samsung Dous 2 sgh ', 'samsung mobile.jpg', 'samsung mobile electronics'),
(2, 1, 3, 'iPhone 5s', 25000, 'iphone 5s', 'iphone mobile.jpg', 'mobile iphone apple'),
(3, 1, 3, 'iPad', 30000, 'ipad apple brand', 'ipad.jpg', 'apple ipad tablet'),
(4, 1, 3, 'iPhone 6s', 32000, 'Apple iPhone ', 'iphone.jpg', 'iphone apple mobile'),
(5, 1, 3, 'iPad 2', 10000, 'samsung ipad', 'ipad 2.jpg', 'ipad tablet samsung'),
(6, 2, 1, 'Hp Laptop r series', 35000, 'Hp Red and Black combination Laptop', 'k2-_ed8b8f8d-e696-4a96-8ce9-d78246f10ed1.v1.jpg-bc204bdaebb10e709a997a8bb4518156dfa6e3ed-optim-450x450.jpg', 'hp laptop '),
(7, 2, 1, 'Laptop Pavillion', 50000, 'Laptop Hp Pavillion', '12039452_525963140912391_6353341236808813360_n.png', 'Laptop Hp Pavillion'),
(8, 1, 4, 'Sony', 40000, 'Sony Mobile', 'sony mobile.jpg', 'sony mobile'),
(9, 1, 3, 'iPhone New', 12000, 'iphone', 'white iphone.png', 'iphone apple mobile'),
(10, 8, 0, 'DEll monitor', 15000, 'Dell 27\"\" UltraSharp 4K Monitor', '81APuRplViL._AC_SL1500_.jpg', 'monitor'),
(11, 3, 8, 'Mi 43 ', 15000, 'Mi 43 Inch Full HD Smart Android Bluetooth LED TV (4A Pro)', '0-mobile_main.jpg', ''),
(12, 1, 8, 'Realme C2', 8000, '', '61H7VBudoyL._SX425_.jpg', ''),
(13, 1, 8, 'Realme Y2', 9000, '', '71awFg9gYfL._SX569_1.jpg', ''),
(14, 1, 8, 'Redmi note 5', 10999, '', '515stIvrsnL._SX569_1.jpg', ''),
(15, 5, 2, 'Refrigerator', 35000, 'Refrigerator', 'CT_WM_BTS-BTC-AppliancesHome_20150723.jpg', 'refrigerator samsung'),
(16, 6, 4, 'sony headphone', 20000, 'Sony WH-1000XM3 Wireless Industry Leading Noise Cancellation Headphones with Alexa (Black)', '61D4Z3yKPAL._AC_SL1500_.jpg', ''),
(17, 4, 4, 'Sony Camera', 6000, 'Sony DSC W830 Cyber-Shot 20.1 MP Point and Shoot Camera (Black) with 8X Optical Zoom, Free Memory Card and Camera Case', '71djTtiSU5L._AC_SL1200_.jpg', ''),
(18, 1, 5, 'vivo ', 11000, '', '14766-74-2.jpg', ''),
(19, 3, 5, 'OnePlus', 60000, 'OnePlus 138.8 cm (55 inches) Q1 Series 4K Certified Android QLED TV 55Q1IN-1 (Black) (Without Stand)', 'Q1_Pro_Revised_Change.jpg', 'led tv lg'),
(20, 1, 2, 'Samsung Galaxy A50', 12500, '', '131706-v9-samsung-galaxy-a50-mobile-phone-large-2.jpg', ''),
(21, 1, 8, 'Redmi Note 7Pro', 13550, '', '132510-v8-xiaomi-redmi-note-7-pro-mobile-phone-large-2.jpg', ''),
(22, 1, 8, 'Realme Xpro', 15000, '', 'maxresdefault.jpg', ''),
(23, 1, 2, 'Samsung Galaxy Note 3', 10000, '0', 'samsung_galaxy_note3_note3neo.JPG', 'samsung galaxy Note 3 neo'),
(24, 1, 2, 'Samsung Galaxy Note 3', 10000, '', 'samsung_galaxy_note3_note3neo.JPG', 'samsung galxaxy note 3 neo'),
(25, 8, 1, 'Hp monitor', 15000, 'HP 21.5-inch (54.61 cm) Ultra-Slim Full HD Anti Glare IPS Display Monitor with VGA and HDMI Ports - 3WL45AA (Black)', '81V3y+fKGQL._AC_SL1500_.jpg', ''),
(26, 8, 2, 'Samsung Monitor', 15000, 'Samsung 23.5 inch (59.8 cm) Curved LED Backlit Computer Monitor - Full HD, VA Panel with VGA, HDMI, Audio Ports - LC24F390FHWXXL (Black)', '2_3_1_1167.jpg', 'monitor\r\n'),
(27, 2, 1, 'HP 15-da1030tu ', 4000, 'HP 15-da1030tu (Core i5 - 8th Gen /4 GB/1 TB/39.624 cm (15.6 Inch) FHD/Window 10 with MS Office Home & Student 2016) (Silver, 2.18 kg )', '7ec0cf48-9f79-4a2c-84cb-50d2a723277b_1.07862a714cb601c008433699214058d5.jpg\r\n', 'hp laptop'),
(28, 2, 1, 'HP Pavilion', 4299, 'HP Pavilion x360 Core i3 8th Gen - (4 GB/256 GB SSD/Windows 10 Home) 14-dh0107TU 2 in 1 Laptop  (14 inch, Natural Silver, 1.59 kg, With MS Office)', '71t-J3VJtEL._SL1500_.jpg', 'hp pavilion'),
(29, 2, 1, 'HP 240 G7', 250, '(Core i3 7th Gen / 4 GB / 1 TB / 35.56 cm (14 inch) / DOS) (Grey, 1.84 Kg)', '71t-J3VJtEL._SL1500_.jpg\r\n\r\n', ''),
(30, 2, 1, 'HP Envy', 699, '13 Core i5 8th Gen - (8 GB/256 GB SSD/Windows 10 Home) 13-ah0043tu Thin and Light Laptop  (13.3 inch, Natural Silver, 1.21 kg)', '201712AM130000001_15131261920623310015390.jpg\r\n', ''),
(31, 2, 7, 'ASUS ROG', 740000, 'ASUS ROG Strix G G731GT 17.3\" FHD Gaming Laptop GTX 1650 4GB Graphics (Core i5-9300H 9th Gen/8GB RAM/512GB PCIe SSD/Windows 10/Black/2.85 Kg), G731GT-AU041T', '6335912_sd.jpg\r\n', ''),
(32, 2, 7, 'ASUS ZenBook ', 80000, 'Duo UX481 Intel Core i5 10th Gen 14-inch FHD Thin & Light Laptop (8GB RAM/512GB NVMe SSD/Windows 10/2GB GeForce MX250 Graphics/ScreenPad Plus/Celestial Blue/1.50 Kg), UX481FL-B5811T', '81xN-bgEHML._AC_SL1500_.jpg', ''),
(33, 2, 7, 'ASUS VivoBook', 38000, '\r\nASUS VivoBook 15 X509 ( Core i3- 7th Gen/4 GB/PCIEG NVME 256GB SSD/ 15.6\" FHD/ Windows 10/FP/ Thin and Light) X509UA-EJ361T (Transparent Silver /1.9kg)\r\n', '61z-8HvzVFL._AC_SL1500_.jpg', ''),
(34, 2, 7, 'ASUS X507', 40000, 'ASUS X507 ( Core i3-7th Gen | 4 GB | 1TB HDD | 15.6\" FHD | Windows 10 ) Thin and Light X507UA - EJ858T ( Icicle Gold /1.68 kg)', '71pIAI0ie2L._AC_SL1500_.jpg\r\n', ''),
(35, 2, 7, 'Asus Core', 26500, 'Asus Core i3 7th Gen - (4 GB/1 TB HDD/Windows 10 Home) X540UA-GQ683T Laptop  (15.6 inch, Black, 2 kg)', 'asus-na-laptop-original-imafccy6rkbaw9w9.jpeg\r\n', ''),
(36, 3, 2, 'Samsung', 10000, 'Samsung 80 cm (32 Inches) HD Ready LED TV XT-32S7201H (Black)', '71pDCfVBeWL._AC_SL1500_.jpg\r\n', ''),
(37, 3, 2, 'Samsung led tv', 50000, '\r\nSamsung 126 cm (50 Inches) Smart 4K Ultra HD LED TV 50NU6100 (Glossy Black)', '81ddlrlOs4L._AC_SL1500_.jpg\r\n', ''),
(38, 3, 0, 'led tv', 16000, 'TCL 100.3 cm (40 Inches) Full HD LED Smart TV 40S62FS (Black)', '81BbeOd8qXL._AC_SL1500_.jpg\r\n', ''),
(39, 4, 0, 'canon camera', 23000, 'Canon EOS 3000D DSLR Camera Single Kit with 18-55 lens (16 GB Memory Card & Carry Case)  (Black)', 'canon-eos-eos-3000d-dslr-original.jpeg\r\n\r\n', ''),
(40, 4, 1, 'HP S300', 13000, '', 'HP_S300_L_1.jpg\r\n', ''),
(41, 4, 2, 'SAsung Camera', 19990, 'Samsung SMART WB1100F 16.2MP Point and Shoot Digital Camera Black Price List in India', '3564890-zoom.jpg\r\n', ''),
(42, 4, 4, 'Sony camera', 11660, 'Sony CyberShot DSC-WX220/BC IN5  (18.2 MP, 10 Optical Zoom, 102x Digital Zoom, Black)', 'sony-cyber-shot-dsc-wx220-point-shoot-original-imadvgz7hkwpgmt5.jpeg\r\n', ''),
(43, 4, 0, 'Nikon camera', 19990, 'Nikon COOLPIX A900  (20 MP, 35x Optical Zoom, 4x Digital Zoom, Silver)', 'a900-nikon-original-imaezdkuzbtgkggd.jpeg', '');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address1`, `address2`) VALUES
(1, 'Rizwan', 'Khan', 'rizwankhan.august16@gmail.com', '25f9e794323b453885f5181f1b624d0b', '8389080183', 'Rahmat Nagar Burnpur Asansol', 'Asansol'),
(2, 'Rizwan', 'Khan', 'rizwankhan.august16@yahoo.com', '25f9e794323b453885f5181f1b624d0b', '8389080183', 'Rahmat Nagar Burnpur Asansol', 'Asa'),
(3, 'Lovepreet', 'kumar', 'beryalen42@gmail.com', '', '9877089748', '1002/4 st.5 basti jodhewal ', 'ludhiana pu');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
