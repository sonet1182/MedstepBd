-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 11, 2020 at 01:44 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bestlaravel2018`
--

-- --------------------------------------------------------

--
-- Table structure for table `ambcategories`
--

CREATE TABLE `ambcategories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ambcategories`
--

INSERT INTO `ambcategories` (`id`, `parent_id`, `name`, `description`, `url`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(12, 0, 'Barishal', 'Car Category', 'http://wornnarith.cambosoft.com', 1, NULL, '2018-10-22 21:32:33', '2018-11-16 02:00:00'),
(10, 0, 'Chittagong', 'House Category', 'http://wornnarith.cambosoft.com', 1, NULL, '2018-10-22 21:31:29', '2018-11-16 02:05:53'),
(11, 0, 'Dhaka', 'Shoes Category', 'http://wornnarith.cambosoft.com', 1, NULL, '2018-10-22 21:32:14', '2018-11-16 02:07:15'),
(13, 0, 'Khulna', 'Computer Category', 'http://wornnarith.cambosoft.com', 1, NULL, '2018-10-22 21:33:26', '2018-11-16 02:05:43'),
(14, 0, 'Mymensingh', 'Cloths Category', 'http://wornnarith.cambosoft.com', 1, NULL, '2018-10-22 21:34:31', '2018-11-16 02:05:18'),
(15, 12, 'Barishal Sadar', 'Toyota Sub Category of Car', 'http://wornnarith.cambosoft.com', 1, NULL, '2018-10-22 21:35:08', '2018-11-16 01:54:49'),
(16, 10, 'Link House', 'Link House Sub Category', 'http://wornnarith.cambosoft.com', 1, NULL, '2018-10-22 21:56:56', '2018-11-16 02:07:05'),
(17, 11, 'Dhaka District', 'Dhaka Capital', 'http://wornnarith.cambosoft.com', 1, NULL, '2018-10-22 21:58:13', '2018-11-16 01:53:44'),
(18, 13, 'Khulna Sadar', 'khulna', '', 1, NULL, NULL, NULL),
(19, 14, 'Mymensingh Sadar', 'Mymensingh', '', 1, NULL, NULL, NULL),
(9, 0, 'Rajshahi', 'Rajshahi', '', 1, NULL, NULL, NULL),
(8, 0, 'Rangpur', 'Rangpur DIvision', '', 1, NULL, NULL, NULL),
(7, 0, 'Sylhet', 'Sylhet Division', '', 1, NULL, NULL, NULL),
(20, 11, 'Tangail', 'Tangail District', '', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ambulances`
--

CREATE TABLE `ambulances` (
  `id` int(10) UNSIGNED NOT NULL,
  `categories_id` int(11) NOT NULL,
  `p_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `p_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `p_color` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ambulances`
--

INSERT INTO `ambulances` (`id`, `categories_id`, `p_name`, `p_code`, `p_color`, `description`, `price`, `image`, `created_at`, `updated_at`) VALUES
(1, 11, 'Ataur Rahman', 'atr', 'Red', 'Ambulance Driver', 12.00, '1544064607-vionic-shoes-brand.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(10) UNSIGNED NOT NULL,
  `products_id` int(11) NOT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_color` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `user_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `products_id`, `product_name`, `product_code`, `product_color`, `size`, `price`, `quantity`, `user_email`, `session_id`, `created_at`, `updated_at`) VALUES
(41, 31, 'House', 'SKU-House2', 'White and Brown', '10*10', 20.00, 2, 'weshare@gmail.com', 'bKnMoW6lH0eA6ciYTU47tgeayw5CFUzBkjkBb3F5', '2018-12-06 18:17:37', '2018-12-06 18:17:37'),
(42, 34, 'Lenovo ThinkPad', 'SKU-Lenovo X1', 'Black', '15 inch', 10.00, 2, 'weshare@gmail.com', 'bKnMoW6lH0eA6ciYTU47tgeayw5CFUzBkjkBb3F5', '2018-12-06 18:18:26', '2018-12-06 18:18:26'),
(40, 30, 'Link House New LC2', 'SKU-Link House1', 'Gray', 'Small', 10.00, 5, 'weshare@gmail.com', 'SFoV6rkDUv7y5F81nKOo5H3u0ERK3EYkcBQhUrcm', '2018-12-06 17:50:30', '2018-12-06 17:50:30'),
(39, 31, 'House', 'SKU-House1', 'White and Brown', '5*20', 25.00, 4, 'weshare@gmail.com', 'SFoV6rkDUv7y5F81nKOo5H3u0ERK3EYkcBQhUrcm', '2018-12-06 17:49:50', '2018-12-06 17:49:50'),
(36, 33, 'Cole Haan', 'SKU-Haan1', 'Brown', '25', 12.00, 1, 'weshare@gmail.com', 'OrHCEFHcACdGNXet3m2jVbzlJS0VybkkeknXXilx', '2018-12-06 02:18:10', '2018-12-06 02:18:10'),
(37, 32, 'Vionic Shoes Brand', 'SKU-Vionic3', 'All Colors', '30', 20.00, 1, 'weshare@gmail.com', 'OrHCEFHcACdGNXet3m2jVbzlJS0VybkkeknXXilx', '2018-12-06 02:30:33', '2018-12-06 02:30:33'),
(43, 35, 'Cloths', 'SKU-Red', 'Black', 'S', 2.00, 5, 'weshare@gmail.com', 'bKnMoW6lH0eA6ciYTU47tgeayw5CFUzBkjkBb3F5', '2018-12-06 18:18:31', '2018-12-06 18:18:31');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `name`, `description`, `url`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(12, 0, 'Barishal', 'Car Category', 'http://wornnarith.cambosoft.com', 1, NULL, '2018-10-22 21:32:33', '2018-11-16 02:00:00'),
(10, 0, 'Chittagong', 'House Category', 'http://wornnarith.cambosoft.com', 1, NULL, '2018-10-22 21:31:29', '2018-11-16 02:05:53'),
(11, 0, 'Dhaka', 'Shoes Category', 'http://wornnarith.cambosoft.com', 1, NULL, '2018-10-22 21:32:14', '2018-11-16 02:07:15'),
(13, 0, 'Khulna', 'Computer Category', 'http://wornnarith.cambosoft.com', 1, NULL, '2018-10-22 21:33:26', '2018-11-16 02:05:43'),
(14, 0, 'Mymensingh', 'Cloths Category', 'http://wornnarith.cambosoft.com', 1, NULL, '2018-10-22 21:34:31', '2018-11-16 02:05:18'),
(15, 12, 'Pauakhali', 'Barishal', 'http://wornnarith.cambosoft.com', 1, NULL, '2018-10-22 21:35:08', '2018-11-16 01:54:49'),
(16, 10, 'Comilla', 'Link House Sub Category', 'http://wornnarith.cambosoft.com', 1, NULL, '2018-10-22 21:56:56', '2018-11-16 02:07:05'),
(17, 11, 'Gazipur', 'Dhaka Capital', 'http://wornnarith.cambosoft.com', 1, NULL, '2018-10-22 21:58:13', '2018-11-16 01:53:44'),
(18, 13, 'Jessore', 'khulna', '', 1, NULL, NULL, NULL),
(19, 14, 'Netrokona', 'Mymensingh', '', 1, NULL, NULL, NULL),
(9, 0, 'Rajshahi', 'Rajshahi', '', 1, NULL, NULL, NULL),
(8, 0, 'Rangpur', 'Rangpur DIvision', '', 1, NULL, NULL, NULL),
(7, 0, 'Sylhet', 'Sylhet Division', '', 1, NULL, NULL, NULL),
(20, 11, 'Tangail', 'Tangail District', '', 1, NULL, NULL, NULL),
(25, 9, 'Natore', NULL, '', 1, NULL, NULL, NULL),
(26, 9, 'Bogra', NULL, '', 1, NULL, NULL, NULL),
(27, 9, 'Chapainawabganj.', NULL, '', 1, NULL, NULL, NULL),
(28, 9, 'Joypurhat', NULL, '', 1, NULL, NULL, NULL),
(29, 9, 'Naogaon', NULL, '', 1, NULL, NULL, NULL),
(30, 11, 'Narsingdi', NULL, '', 1, NULL, NULL, NULL),
(31, 11, 'Manikganj', NULL, '', 1, NULL, NULL, NULL),
(32, 11, 'Narayanganj', NULL, '', 1, NULL, NULL, NULL),
(33, 11, 'Narshingdi', NULL, '', 1, NULL, NULL, NULL),
(34, 11, 'Gopalganj', NULL, '', 1, NULL, NULL, NULL),
(35, 11, 'Faridpur', NULL, '', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(255) NOT NULL,
  `country_code` varchar(255) NOT NULL,
  `country_name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
(1, 'ac', 'Active', '2020-11-27 08:16:52', '2020-11-27 08:16:52'),
(2, 'in', 'Inactive', '2020-11-27 08:17:24', '2020-11-27 08:17:24');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` int(10) UNSIGNED NOT NULL,
  `coupon_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `amount_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiry_date` date NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `coupon_code`, `amount`, `amount_type`, `expiry_date`, `status`, `created_at`, `updated_at`) VALUES
(6, 'Coupon001', 10, 'Percentage', '2019-12-06', 1, '2018-12-05 20:19:15', '2018-12-05 20:19:15');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_address`
--

CREATE TABLE `delivery_address` (
  `id` int(10) UNSIGNED NOT NULL,
  `users_id` int(11) NOT NULL,
  `users_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pincode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivery_address`
--

INSERT INTO `delivery_address` (`id`, `users_id`, `users_email`, `name`, `address`, `city`, `state`, `country`, `pincode`, `mobile`, `created_at`, `updated_at`) VALUES
(2, 4, 'weshare@gmail.com', 'weshare', 'address', 'city', 'state', 'Cambodia', 'pincode', 'mobile', NULL, NULL),
(3, 1, 'demo@gmail.com', 'WeShare', '123 Street', 'Phnom Penh', 'PP', 'Cambodia', '12252', '010313234', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(3, '2014_10_12_000000_create_users_table', 2),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(8, '2018_10_20_040609_create_categories_table', 3),
(9, '2018_10_24_075802_create_products_table', 4),
(10, '2018_11_08_024109_create_product_att_table', 5),
(11, '2018_11_20_055123_create_tblgallery_table', 6),
(12, '2018_11_26_070031_create_cart_table', 7),
(13, '2018_11_28_072535_create_coupons_table', 8),
(15, '2018_12_01_042342_create_countries_table', 10),
(19, '2018_12_03_043804_add_more_fields_to_users_table', 14),
(17, '2018_12_03_093548_create_delivery_address_table', 12),
(18, '2018_12_05_024718_create_orders_table', 13),
(20, '2018_10_24_075802_create_ambulances_table', 15);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `users_id` int(11) NOT NULL,
  `users_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pincode` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_charges` double(8,2) NOT NULL,
  `coupon_code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupon_amount` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_status` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `grand_total` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `users_id`, `users_email`, `name`, `address`, `city`, `state`, `pincode`, `country`, `mobile`, `shipping_charges`, `coupon_code`, `coupon_amount`, `order_status`, `payment_method`, `grand_total`, `created_at`, `updated_at`) VALUES
(7, 1, 'demo@gmail.com', 'WeShare', '123 Street', 'Phnom Penh', 'PP', '12252', 'Cambodia', '010313234', 0.00, 'NO Coupon', '0', 'success', 'Paypal', '70', '2018-12-06 18:20:18', '2018-12-06 18:20:18'),
(6, 4, 'weshare@gmail.com', 'weshare', 'address', 'city', 'state', 'pincode', 'Cambodia', 'mobile', 0.00, 'Coupon001', '2', 'success', 'Paypal', '18', '2018-12-06 01:45:09', '2018-12-06 01:45:09');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `categories_id` int(11) NOT NULL,
  `p_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `p_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `p_color` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `categories_id`, `p_name`, `p_code`, `p_color`, `description`, `image`, `created_at`, `updated_at`) VALUES
(36, 11, 'Apollo Hospital', 'https://www.evercarebd.com/', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14600.977618350624!2d90.4310576!3d23.8099066!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x92cd609525d76d64!2sEvercare%20Hospital%20Dhaka!5e0!3m2!1sen!2sbd!4v1606801590813!5m2!1sen!2sbd', 'Evercare Hospital Dhaka is a private hospital in Bangladesh and Part of Evercare group. It was previously called Apollo Hospital Dhaka was part of the Apollo Hospital Dhaka.<br>', 'Apollo-Hospital.jpg', NULL, '2020-12-01 09:39:11'),
(39, 11, 'Square Hospital', 'https://www.squarehospital.com/', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14607.352335125215!2d90.3817306!3d23.7531527!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x113b1873c9a9c2c1!2sSquare%20Hospital!5e0!3m2!1sen!2sbd!4v1606794439655!5m2!1sen!2sbd', 'Square Hospital is a private hospital in Dhaka, Bangladesh. It is one of three high-end private hospital in Bangladesh, the other being Apollo Hospital Dhaka and United Hospital, Dhaka. Tapan Chowdhury is the Managing Director of the hospital.', '1606795513-square-hospital.png', '2020-11-30 22:05:16', '2020-11-30 23:22:13'),
(41, 12, 'Sher-E-Bangla Medical College Hospital', 'http://sbmc.edu.bd/', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7362.355878682768!2d90.35854643826201!3d22.684418976015852!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755346c873a5ff3%3A0x6fb531b2a6c798dd!2sSher-E-Bangla%20Medical%20College%20Hospital!5e0!3m2!1sen!2sbd!4v1607025068998!5m2!1sen!2sbd', 'SBMC awards MBBS degree and offers professional training and medical research facility at its hospital with 1000 beds. As per the declaration of overseas registration of the General Medical Council, the awarded MBBS degree during or after October 1984 is eligible to apply for registration in United Kingdom. The college has an area of about 81.545 acres. Student dormitories, nursing institute, nurses\' training institute, dormitory for staff nurses, and residences of teachers are situated on the campus.', '1607024977-sher-e-bangla-medical-college-hospital.jpg', '2020-12-03 13:49:38', '2020-12-03 13:56:04'),
(43, 12, 'Islam Poly Clinic', 'http://facilityregistry.dghs.gov.bd/org_profile.php?org_code=10021266', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3680.934914716282!2d90.36094951402168!3d22.693466685120697!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x37553412fdead03d%3A0x1cb9eb5a6ed493f!2sIslam%20Poly%20Clinic!5e0!3m2!1sen!2sbd!4v1607026359951!5m2!1sen!2sbd', 'Private Hospital / Clinic.&nbsp;Islam Poly Clinic-Barisal Sadar. (145). 586 Views; 124 Patients. Address. Barisal Sadar (kotwali), Barisal, Barisal View on map.', '1607026449-islam-poly-clinic.jpg', '2020-12-03 14:14:10', '2020-12-03 14:14:10'),
(42, 12, 'Ambia Memorial Hospital', 'https://www.doctor360.com.bd/general-hospitals/barisal-district-barisal-8200/ambia-memorial-hospital-general-hospitals', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2188.48307222475!2d90.36058551709507!3d22.706854663220167!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755341bdf4790ad%3A0x8ff0d65468e506f4!2sAmbia%20Memorial%20Hospital!5e0!3m2!1sen!2sbd!4v1607025671626!5m2!1sen!2sbd', 'Ambia Memorial Hospital&nbsp;and Diagnostics Center-Barisal Sadar, 5 Sadar Rd, Barisal Sadar (kotwali), Barisal, Barisal Division, aarogya.us.', '1607026104-ambia-memorial-hospital.jpg', '2020-12-03 14:08:24', '2020-12-03 14:08:24'),
(44, 12, 'Islami Bank Hospital', 'http://www.ibfbd.org/institute/hospitals/islami-bank-hospital-barishal', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d14724.19801730012!2d90.36066055297852!3d22.689200985828897!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x722a1cd9be3e750f!2sIslami%20Bank%20Hospital!5e0!3m2!1sen!2sbd!4v1607026814936!5m2!1sen!2sbd', 'Islami Bank Foundation (IBF) is a social welfare oriented organization created by Islami Bank Bangladesh Limited for the uplift and emancipation of the helpless and downtrodden people of the society.&nbsp;', '1607026844-islami-bank-hospital.jpg', '2020-12-03 14:20:45', '2020-12-03 14:20:45'),
(45, 13, 'Khulna City Medical College', 'http://khulnacitymedicalcollege.edu.bd/about.html', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7355.515298947801!2d89.55476122496674!3d22.811442290241377!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39ff9003acfb15ad%3A0x6a93cbca4d074e3f!2sKhulna%20City%20Medical%20College%20Hospital!5e0!3m2!1sen!2sbd!4v1607027141451!5m2!1sen!2sbd', '<div>ur Mission and Vision</div><div>Khulna City Medical College (KCMC) aspires to achieve national and international recognition for its capability to produce physician with the essential knowledge, skills, dedication and professionalism to successfully continue their profession and pursue a career to better serve the nation through health promotion, prevention, treatment and medical research.</div><div><br></div><div>The mission of KCMC is to Produce Competent, Compassionate, reflective and dedicated health care professionals who ...</div><div><br></div><div>Consider the care and safety of their patients their first concern.</div><div>Establish and maintain good relationship with patients, their attendants and colleagues.</div><div>Are honest, trustworthy and act with integrity.</div><div>Are capable of dealing with common diseases and health problems of the country and are willing to serve the community particularly the rural community; but at the same time acquire firm basis for future training, service and research at both national and international level.</div><div>Are committed to keep their knowledge and skill up-to-date through \'Continuous Professional development\' all through their professional life.</div>', '1607028103-khulna-city-medical-college.jpg', '2020-12-03 14:41:43', '2020-12-03 14:41:43'),
(46, 13, 'Khulna Medical College Hospital', 'https://www.omicsonline.org/universities/Khulna_Medical_College_Hospital/', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3677.296914822021!2d89.53596441496421!3d22.82850198505158!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39ff9abc88a9e461%3A0x78c88f4cd779997d!2sKhulna%20Medical%20College!5e0!3m2!1sen!2sbd!4v1607026974060!5m2!1sen!2sbd', '<div>Khulna Medical College was established in 1992 with only a few students which is located in the city of Khulna near the inter-district Bus Stand at the entrance to the city. It offers an undergraduate and Post-graduate program which is affiliated to the Bangladesh College of Physicians and Surgeons. The current principal is Professor Mahabubul Mohammid.</div><div>The students receive a MBBS degree from University of Rajshahi after the completion of their fifth year and after passing the final Professional MBBS examination.</div><div>This college is directly regulated by Bangladesh Medical and Dental Council, an affiliate of the Bangladesh Ministry of Health.</div><div><br></div><div><br></div>', '1607028305-khulna-medical-college-hospital.jpg', '2020-12-03 14:45:05', '2020-12-03 14:45:05'),
(47, 9, 'Islami Bank Medical College And Hospital', 'https://ibmcr.edu.bd/', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d29069.62945841345!2d88.58190658261907!3d24.391609493724946!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39fbee71c37564bd%3A0x48f0e8496672c48e!2sIslami%20Bank%20Medical%20College%20And%20Hospital%2C%20Rajshahi!5e0!3m2!1sen!2sbd!4v1607025400427!5m2!1sen!2sbd', '<div><br></div><div>The academic activities of Islami Bank Medical College commenced through admission of 50 students in 2003-04 academic session.&nbsp; &nbsp;The admission is based on merit keeping in conformity with Government Order published and adopted by IBMC Academic Council and Governing Body.</div><div>Islami Bank Medical College is established with a view to train the specially selected high quality medical candidates to be called ‘Medical students’ for five academic years. They will follow the medical course according to the syllabus laid down by Bangladesh Medical and Dental Council (BMDC) formulated for MBBS &amp; BDS degree. The degree thus be conferred by the University of Dhaka will be recognized through registration by BMDC.&nbsp; Islami Bank Medical College (IBMC) is committed to create a cadre of high quality doctors both by medical knowledge and high moral values, dedicated for suffering human physically and psychologically in the nation and others across the geographical boundaries.</div><div><br></div>', '1607028561-islami-bank-medical-college-and-hospital.png', '2020-12-03 14:49:22', '2020-12-03 14:49:22'),
(48, 9, 'Popular Diagnostic Centre Ltd', 'https://www.populardiagnostic.com/our-branches/28/Rajshahi', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3634.277390019637!2d88.58155851499323!3d24.37165193428679!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39fbef1dd37b10fd%3A0xcffc44e4bef3f121!2sPopular%20Diagnostic%20Center%20Ltd.!5e0!3m2!1sen!2sbd!4v1607025924032!5m2!1sen!2sbd', '<div>Popular Diagnostic Centre Ltd. is an advanced Centre for diagnostic and medical services. It is one of the prestigious diagnostic complexes of Bangladesh which started its activities in 1983. Popular Diagnostic Centre Ltd. is the largest diagnostic services provider organization in private sector of the country. It is been pioneer in introducing world latest medical equipments and advanced technology to provide round the clock medical investigations and consultancy services.</div><div><br></div><div>LEGAL STATUS Popular Diagnostic Centre Ltd. is a private limited company registered with the Ministry of Health &amp; Family Welfare, People’s Republic Govt. of Bangladesh having License No. 1275 &amp;688.</div><div><br></div>', '1607028753-popular-diagnostic-centre-ltd.jpg', '2020-12-03 14:52:34', '2020-12-03 14:52:34'),
(49, 9, 'Rajshahi Medical College Hospital', 'http://rmc.gov.bd/', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3634.26684263853!2d88.58423721499327!3d24.37201898428667!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39fbef02d4899947%3A0x6c5031675c0796a8!2sRajshahi%20Medical%20College%20Hospital!5e0!3m2!1sen!2sbd!4v1607025190470!5m2!1sen!2sbd', '<div><br></div><div>Rajshahi Medical College (Bengali: রাজশাহী মেডিকেল কলেজ) is a government medical school in Bangladesh, established in 1958. It is located in Rajshahi. It is affiliated with Rajshahi University.</div><div><br></div><div>It was the second such institution in erstwhile East Pakistan after Dhaka Medical College. It has a large hospital that is the central provider for advanced health care in the northern part of Bangladesh.</div><div>Rajshahi Medical College admits 200 students every year for its M.B.B.S. program. Its dental unit admits a further 50 students. Students are admitted in these programs after high school and get a degree after 5 years of study and 1-year internship in the government-owned public hospital.</div><div><br></div><div>After the separation of East Bengal from India in 1947 the people of Rajshahi region was deprived of medical education and healthcare facilities.</div><div><br></div><div>In 1949 some renowned persons of civil society and political persons involved in administration took initiative to establish a private medical school in Rajshahi city. Initially they launched LMF diploma course under State Medical Faculty Dhaka. 80 students were admitted in first batch. In 1954 erstwhile Pakistan government converted it to government medical college. In 1958, it was launched as a complete college. It is the first medical college in northern part of Bangladesh.</div><div><br></div>', '1607028909-rajshahi-medical-college-hospital.jpg', '2020-12-03 14:55:10', '2020-12-03 14:55:10'),
(50, 10, 'Chattogram Medical College', 'https://cmch.gov.bd/', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d59040.20168628714!2d91.79033394094182!3d22.35315288568319!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x30acd882a59437c7%3A0xf99d92fdc17dd741!2z4Kaa4Kaf4KeN4Kaf4KaX4KeN4Kaw4Ka-4KauIOCmruCnh-CmoeCmv-CmleCnh-CmsiDgppXgprLgp4fgppwg4Ka54Ka-4Ka44Kaq4Ka-4Kak4Ka-4Kay!5e0!3m2!1sen!2sbd!4v1607026334946!5m2!1sen!2sbd', 'Chittagong Medical College Hospital was established at the present site in 1960 with only 120 beds and the outpatient services. At that time the young hospital housed only the Departments of Surgery and Gynecology and Obstetrics. Chittagong Hospital Housed the department of Medicine and allied specialties still 1969 and thereafter it remained affiliated with Chittagong Medical College Hospital as one of its teaching hospitals.', '1607063976-chattogram-medical-college.jpg', '2020-12-04 00:39:36', '2020-12-04 00:39:36'),
(51, 10, 'Chattorgram International Medical College', 'https://www.cimch.edu.bd/', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3689.2071588370763!2d91.84223431495617!3d22.38354658528041!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x30ad279087425577%3A0x292022ceedd40da0!2sChattagram%20International%20Medical%20College%20%26%20Hospital%20(CIMCH)!5e0!3m2!1sen!2sbd!4v1607026793975!5m2!1sen!2sbd', '<div><br></div><div>Chattagram International Medical College (CIMC) is a Non-Government medical college with a 250 bed Medical College Hospital established in 2013 at Chandgaon, Chattagram, the main port city of Bangladesh with the approval from Ministry of Health and Family Welfare, Peoples Republic of Bangladesh, Bangladesh Medical and Dental Council (BM&amp;DC), affiliation from University of Chittagong from the very beginning and by Chittagong Medical University from 2017.</div><div><br></div><div>The college is offering a 5 year MBBS graduate course followed by 1 year Internship training as per BM&amp;DC Curriculum. The academic activities of the college is conducted by a group of highly dedicated extraordinary high quality teachers for basic, paraclinical and clinical subjects. The professional examinations are conducted independently by affiliating university following a fully electronically generated coding system. or academic development of the teachers the college is providing faculty development program through regular CME by an independent Medical Education Unit (MEU) headed by a professional medical educationist as per guidance of National Centre for Medical Education (CME), teachers training, workshop, seminar, symposium</div><div><br></div><div><br></div>', '1607064050-chattorgram-international-medical-college.jpg', '2020-12-04 00:40:50', '2020-12-04 00:40:50'),
(52, 11, 'Bangabandhu Sheikh Mujib Medical University', 'https://bsmmu.edu.bd/', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3652.211897647745!2d90.39248801498115!3d23.739821984594627!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755b8954649cee5%3A0x3bdcd530be93b17a!2sBangabandhu%20Sheikh%20Mujib%20Medical%20University%20Hospital!5e0!3m2!1sen!2sbd!4v1607023401862!5m2!1sen!2sbd', '<div><br></div><div>Bangabandhu Sheikh Mujib Medical University (BSMMU) is the premier Postgraduate Medical Institution of the country. It bears the heritage to Institute of Postgraduate Medical Research (IPGMR) which was established in December 1965. In the year 1998 the Government converted IPGMR into a Medical University for expanding the facilities for higher medical education and research in the country. It has an enviable reputation for providing high quality postgraduate education in different specialties. The university has strong link with other professional bodies at home and abroad. The university is expanding rapidly and at present, the university has many departments equipped with modern technology for service, teaching and research. Besides education, the university plays the vital role of promoting research activities in various discipline of medicine. Since its inception, the university has also been delivering general and specialized clinical service as a tertiary level healthcare center.</div><div><br></div>', '1607064149-bangabandhu-sheikh-mujib-medical-university.jpg', '2020-12-04 00:42:29', '2020-12-04 00:42:29'),
(53, 11, 'Enam Dedical College', 'https://emcbd.com/about-us/', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3649.482074931559!2d90.25071441498298!3d23.837009584546838!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755eb44dcb4d975%3A0x25cfe643987539c9!2sEnam%20Medical%20College%20and%20Hospital!5e0!3m2!1sen!2sbd!4v1607023636535!5m2!1sen!2sbd', '<div><br></div><div>The Doctor‑ patient ratio is still far from adequate in this country of more than 160 million people. Along with the Government initiative Private entrepreneurs are also coming forward in the health sector to establish Medical Colleges Including Hospitals. The private sector has already made commendable progress in this field. The Government of Bangladesh has rightly laid down some strict criteria. principles and guidelines to follow and standardize the] Private Medical colleges.</div><div><br></div><div>Enam Medical College was established In 2003, fulfilling all the guidelines and criteria set up by the Ministry of Health and Family Welfare, Bangladesh Medical &amp; Dental Council and University of Dhaka. The government has been pleased to give permission for admission of 50 students In first year MBBS course from the session 2003‑2004 Now the admission capacity Is 145 from last session. The College has also been affiliated with University of Dhaka and also recognized by Bangladesh Medical and Dental Council (BMDC). The training in Enam Medical College Hospital is also recognized by Bangladesh college of Physicians and Surgeons (BCPS). Enam Misdeal College Is also In the recognition List of WHO, FAIMER. AVISINA and IMED.</div>', '1607064218-enam-dedical-college.jpg', '2020-12-04 00:43:38', '2020-12-04 00:43:38'),
(54, 11, 'Shaheed Suhrawardy Medical College and Hospital', 'https://www.shsmc.gov.bd/', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3651.3874211257175!2d90.3691729149817!3d23.76921458458014!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755c0ac0ea174af%3A0x515136eca08d1278!2sShaheed%20Suhrawardy%20Medical%20College%20and%20Hospital!5e0!3m2!1sen!2sbd!4v1607025034068!5m2!1sen!2sbd', '<div><br></div><div>Shaheed Suhrawardy Medical College (ShSMC) is the 14th government medical college of Bangladesh which is established in 2006. It is situated in the north-western part of Dhaka beside the National Parliament House, having a unique architectural campus and excellent academic atmosphere. Shaheed Suhrawardy Medical College Hospital has a long heritage of discharging health care services and also has a proud history of patronizing many medical institutes to establish and flourish. We have a great commitment to provide top class medical education, excellent training and quality research through eminent and experienced teachers.</div><div><br></div><div><br></div>', '1607064276-shaheed-suhrawardy-medical-college-and-hospital.jpg', '2020-12-04 00:44:36', '2020-12-04 00:44:36'),
(55, 14, 'Mymensingh  Government  Hospital & Medical College', 'http://www.mmc.gov.bd/', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d232087.02233929152!2d90.3698797076825!3d24.6457433969915!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x37564f0bb84cc539%3A0xa3d1b21cb813ffd4!2sMymensingh%20Medical%20College!5e0!3m2!1sen!2sbd!4v1607064599109!5m2!1sen!2sbd', 'Mymensingh Medical College is a postgraduate government medical college conducting MBBS, BDS and postgraduate courses in 27 disciplines under Dhaka University and Bangabandhu Sheikh Mujib Medical University (BSMMU). Every year 197 students are admitted in MBBS and 52 in BDS courses of which 10% are foreign students and total of 138 students are admitted in different postgraduate courses.It was started in 1924 in Baghmara as “Lytton Medical School”, according to the name of the then Governor of Bengal Mr. Lytton. The medical school had conducted Licentiate of Medical Faculty (LMF) till 1962. Mymensingh Medical College was named in 1962, which started conducting MBBS course with 32 students as the 1st batch (M 01). Mymensingh Medical Journal is the official journal of Mymensingh Medical College which is an Index Medicus / MEDLINE enlisted journal.&nbsp;<span>The campus shifted to Charpara in 1972 on a total of 84 acres of land.&nbsp;A four storied College building was built with 18,000 sq.m. of floor area. The Hospital building is adjacent to the college building</span>', '1607064715-mymensingh-government-hospital-medical-college.jpg', '2020-12-04 00:51:56', '2020-12-04 00:51:56'),
(56, 14, 'Mymensingh Police Line Hospital', 'https://topdoctorsbd.blogspot.com/2020/10/mymensingh-police-line-hospital.html', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d28987.725124714234!2d90.40323060391256!3d24.74521908292437!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x37564edb174d93a5%3A0x66cce13fbb030719!2sMymensingh%20Police%20Line%20Hospital!5e0!3m2!1sen!2sbd!4v1607065071963!5m2!1sen!2sbd', 'Mymensingh Police Line Hospital is a Hospital in Mymensingh. The address of Mymensingh Police Line Hospital is Mymensingh - Tangail Rd, Mymensingh.&nbsp;', '1607065153-mymensingh-police-line-hospital.jpg', '2020-12-04 00:59:13', '2020-12-04 00:59:13'),
(57, 8, 'Rangpur Community Medical College Hospital', 'https://rcmc.com.bd/rangpur-community-medical-college/', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3593.091712990604!2d89.23321181534409!3d25.76753408363416!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39e331efd913e8f5%3A0x70fd4e7a0784ac7!2sRangpur%20Community%20Medical%20College!5e0!3m2!1sen!2sbd!4v1607065329009!5m2!1sen!2sbd', 'Rangpur Community Medical College&nbsp;is the transformation of a dream of Dr. Md. Mofizuddin Sarker, a son&nbsp;of Lalmonirhat, Bangladesh, to give the most elevated standard of medicinal instruction and station of a model doctor’s facility for the poor &amp; denied rustic individuals of North Bengal.in the year 1975 Dr. Md. Mofizuddin Sarker develop a private Clinic in Rangpur named Nazimuddin Poly Clinic, Which was its sort of first in north Bengal.', '1607065537-rangpur-community-medical-college-hospital.jpg', '2020-12-04 01:05:37', '2020-12-04 01:05:37'),
(58, 8, 'Prime Medical College Hospital, Rangpur', 'https://pmc-bd.org/', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3593.809882185375!2d89.22009301538807!3d25.743800015623478!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39e33224ac5f4f75%3A0x983082f99e9f94a0!2sPrime%20Medical%20College%20Hospital!5e0!3m2!1sen!2sbd!4v1607065667436!5m2!1sen!2sbd', 'Prime Medical College is one of the best medical institute in North Bengal in Private Sector. It is located about half Kilometer from Rangpur Central Bus Terminal and within the Rangpur City Corporation. The college building is surrounded by the green trees adjacent to the Badarganj Road,Rangpur.It was established in 2008 by a group of dedicated people of Rangpur , by the leadership of professor Dr. Md. Akkas Ali Sarker. The ideas of establishing this Medical College is to provide quality Medical Education, Research and Services to the people of the country at affordable cost.', '1607065695-prime-medical-college-hospital-rangpur.jpg', '2020-12-04 01:08:16', '2020-12-04 01:08:16'),
(59, 7, 'Al Haramain Hospital Private Limited', 'https://www.haramainhospital.com/', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3619.265803668131!2d91.87753581532876!3d24.88891348404054!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3751ab2d9985f76f%3A0x5f56b6ff53d48aa6!2sAl%20Haramain%20Hospital%20Private%20Limited!5e0!3m2!1sen!2sbd!4v1607065814416!5m2!1sen!2sbd', '<div><br></div><div>Al Haramain Hospital Private Limited&nbsp;is a Private, ultra-modern, multi-storey and multi-specialty Hospital which is a sister concern of the world renowned&nbsp;Al Haramain Hospital Private Limited Group of Companies. The Hospital is located in the City of Sylhet, Bangladesh. Al Haramain Hospital Pvt. Ltd. is designed to provide world-class, quality health care to the people of Sylhet in particular, and people of the division and beyond in general. Presently it is a 250 Bed hospital, with an expansion plan to increase it to 500 beds, establish a Medical College and a Nursing Institute in future. It has almost all Medical and Surgical specialties.</div>', '1607065934-al-haramain-hospital-private-limited.jpg', '2020-12-04 01:12:14', '2020-12-04 01:12:14'),
(60, 7, 'IBN SINA HOSPITAL SYLHET LTD.', 'http://ibnsinahospitalsylhet.com.bd/', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3619.1854578558828!2d91.87534351532875!3d24.891654884039273!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3751ab2cd07daf7b%3A0x6b15e9357e82b123!2z4KaH4Kas4Kao4KeHIOCmuOCmv-CmqOCmviDgprngpr7gprjgpqrgpr7gpqTgpr7gprIg4Ka44Ka_4Kay4KeH4KafIOCmsuCmv-CmruCmv-Cmn-Cnh-CmoQ!5e0!3m2!1sen!2sbd!4v1607066062707!5m2!1sen!2sbd', 'Ibn Sina Hospital Sylhet Limited, part of Ibn Sina Trust, a renowned health care provider in Bangladesh. With the latest cutting edge technology, top physicians, and an established management system, Ibn Sina Hospital Sylhet Limited brings World Class healthcare to Sylhet at an affordable price.', '1607066094-ibn-sina-hospital-sylhet-ltd.jpg', '2020-12-04 01:14:54', '2020-12-04 01:14:54');

-- --------------------------------------------------------

--
-- Table structure for table `product_att`
--

CREATE TABLE `product_att` (
  `id` int(10) UNSIGNED NOT NULL,
  `products_id` int(11) NOT NULL,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_att`
--

INSERT INTO `product_att` (`id`, `products_id`, `sku`, `size`, `price`, `stock`, `created_at`, `updated_at`) VALUES
(14, 34, 'SKU-Lenovo X1', '15 inch', '10.00', 2, '2018-12-05 20:08:43', '2018-12-05 20:08:43'),
(13, 35, 'SKU-Red', 'S', '2.00', 5, '2018-12-05 20:08:08', '2018-12-05 20:08:08'),
(12, 35, 'SKU-White', 'L', '6.00', 2, '2018-12-05 20:07:42', '2018-12-05 20:07:42'),
(11, 35, 'SKU-Black', 'M', '5.00', 10, '2018-12-05 20:07:11', '2018-12-05 20:07:11'),
(15, 34, 'SKU-Carbon', '14 inch', '4.00', 5, '2018-12-05 20:09:05', '2018-12-05 20:09:05'),
(16, 33, 'SKU-Haan1', '25', '12.00', 3, '2018-12-05 20:09:45', '2018-12-05 20:09:45'),
(17, 33, 'SKU-Haan2', '22', '10.00', 1, '2018-12-05 20:09:58', '2018-12-05 20:09:58'),
(18, 33, 'SKU-Haan3', '19', '2.00', 3, '2018-12-05 20:10:16', '2018-12-05 20:10:16'),
(19, 32, 'SKU-Vionic1', '20', '10.00', 5, '2018-12-05 20:11:02', '2018-12-05 20:11:02'),
(20, 32, 'SKU-Vionic2', '20', '15.00', 4, '2018-12-05 20:11:24', '2018-12-05 20:11:24'),
(21, 32, 'SKU-Vionic3', '30', '20.00', 1, '2018-12-05 20:11:38', '2018-12-05 20:11:38'),
(22, 31, 'SKU-House1', '5*20', '25.00', 4, '2018-12-05 20:12:13', '2018-12-05 20:12:13'),
(23, 31, 'SKU-House2', '10*10', '20.00', 2, '2018-12-05 20:12:30', '2018-12-05 20:12:30'),
(24, 31, 'SKU-House3', '20*20', '20.00', 5, '2018-12-05 20:12:46', '2018-12-05 20:12:46'),
(25, 30, 'SKU-Link House1', 'Small', '10.00', 5, '2018-12-05 20:13:06', '2018-12-05 20:13:06'),
(26, 30, 'SKU-House2', 'Medium', '15.00', 23, '2018-12-05 20:13:23', '2018-12-05 20:13:23'),
(27, 30, 'SKU-House3', 'Large', '5.00', 2, '2018-12-05 20:14:55', '2018-12-05 20:14:55'),
(28, 29, 'SKU-Prius1', 'One Size', '12.00', 2, '2018-12-05 20:15:43', '2018-12-05 20:15:43'),
(29, 28, 'SKU-Lexus Red', 'Size Red', '12.00', 12, '2018-12-05 20:16:28', '2020-11-27 11:53:40'),
(30, 28, 'SKU-Lexus2', 'Size Black', '11.00', 22, '2018-12-05 20:16:48', '2020-11-27 11:53:40'),
(31, 28, 'SKU-Lexus3', 'Size White', '12.00', 2, '2018-12-05 20:17:02', '2020-11-27 11:53:40'),
(32, 27, 'SKU-Hilander', 'Size Black', '50.00', 10, '2018-12-05 20:17:35', '2018-12-05 20:17:35'),
(33, 27, 'SKU-Hilander1', 'Size White', '20.00', 10, '2018-12-05 20:17:46', '2018-12-05 20:17:46'),
(34, 27, 'SKU-Hilande3', 'Size Red', '20.00', 10, '2018-12-05 20:18:01', '2018-12-05 20:18:01'),
(35, 37, 'Shawn Shikder', 'shawn@gmail.com', '22.00', 3, '2020-11-27 09:17:53', '2020-11-27 09:17:53'),
(36, 37, 'Himel', 'Good', '40.00', 3, '2020-11-27 09:20:47', '2020-11-27 09:20:47'),
(37, 37, 'Rakib', 'gvsdfgsg', '60.00', 5, '2020-11-27 09:25:44', '2020-11-27 09:25:44'),
(38, 28, 'agrea', 'agreg', '23.00', 1, '2020-11-27 10:25:13', '2020-11-27 11:53:40'),
(39, 28, 'dbsdf', 'bdfas', 'dafavdvefgvrtvbrt', 2, '2020-11-27 11:27:38', '2020-11-27 11:53:40'),
(40, 28, 'Shimul', 'shimul@gmail.com', 'Good', 4, '2020-11-27 11:52:31', '2020-11-27 11:53:40'),
(41, 29, 'sonet', 'shawn@gmail.com', 'This is a very good Hospital', 4, '2020-11-27 13:39:21', '2020-11-27 13:39:21'),
(42, 31, 'Mridul', 'shawn@gmail.com', 'Not enough good', 3, '2020-11-30 10:07:07', '2020-11-30 10:07:07'),
(43, 39, 'Shawon', 'shawn@gmail.com', 'Square Hospital is popular for their services.', 4, '2020-12-01 00:03:54', '2020-12-01 00:03:54'),
(44, 36, 'shimul', 'shimul@gmail.com', 'good', 5, '2020-12-01 08:51:52', '2020-12-01 08:51:52'),
(45, 36, 'shimul', 'shimul@gmail.com', 'good', 4, '2020-12-01 08:52:17', '2020-12-01 08:52:17'),
(46, 41, 'shimul', 'shimul@gmail.com', 'good', 5, '2020-12-04 02:32:48', '2020-12-04 02:32:48'),
(47, 41, 'halim', 'halim@gmail.com', 'best hospital', 5, '2020-12-04 07:53:57', '2020-12-04 07:53:57'),
(48, 41, 'sonet', 'halim@gmail.com', 'best service', 4, '2020-12-04 07:55:02', '2020-12-04 07:55:02'),
(49, 43, 'shimul', 'shimul@gmail.com', 'best service', 4, '2020-12-04 07:55:44', '2020-12-04 07:55:44'),
(50, 43, 'sonet', 'halim@gmail.com', 'best treatment', 4, '2020-12-04 07:56:17', '2020-12-04 07:56:17'),
(51, 43, 'halim', 'halim@gmail.com', 'avarege', 3, '2020-12-04 07:56:36', '2020-12-04 07:56:36'),
(52, 42, 'khadiza', 'halim@gmail.com', 'average', 3, '2020-12-04 07:57:27', '2020-12-04 07:57:27'),
(53, 42, 'mou', 'shimul@gmail.com', 'bad service', 1, '2020-12-04 07:57:56', '2020-12-04 07:57:56'),
(54, 44, 'halim', 'halim@gmail.com', 'best hospital', 5, '2020-12-04 07:58:40', '2020-12-04 07:58:40'),
(55, 44, 'sonet', 'shimul@gmail.com', 'good service', 4, '2020-12-04 07:59:03', '2020-12-04 07:59:03'),
(56, 44, 'khadiza', 'shimul@gmail.com', 'best service', 5, '2020-12-04 07:59:23', '2020-12-04 07:59:23'),
(57, 50, 'shimul', 'shimul@gmail.com', 'top hospital', 5, '2020-12-04 08:00:11', '2020-12-04 08:00:11'),
(58, 50, 'meem', 'shimul@gmail.com', 'best service', 4, '2020-12-04 08:00:37', '2020-12-04 08:00:37'),
(59, 50, 'imran', 'halim@gmail.com', 'good doctors', 4, '2020-12-04 08:01:20', '2020-12-04 08:01:20'),
(60, 51, 'shofiqul', 'shimul@gmail.com', 'best service', 4, '2020-12-04 08:02:02', '2020-12-04 08:02:02'),
(61, 36, 'robin', 'halim@gmail.com', 'average service', 3, '2020-12-04 08:03:13', '2020-12-04 08:03:13'),
(62, 36, 'mazarul', 'halim@gmail.com', 'bad service', 1, '2020-12-04 08:03:40', '2020-12-04 08:03:40'),
(63, 39, 'shimul', 'shimul@gmail.com', 'Top hospital', 5, '2020-12-04 08:04:45', '2020-12-04 08:04:45'),
(64, 52, 'mou', 'shimul@gmail.com', 'best service', 5, '2020-12-04 08:05:41', '2020-12-04 08:05:41'),
(65, 36, 'Shanto', 'shanto@gmail.com', 'Not Good', 2, '2020-12-04 20:57:58', '2020-12-04 20:57:58'),
(66, 41, 'Sazzad', 'sazzad@gmail.com', 'Not good', 2, '2020-12-05 02:49:50', '2020-12-05 02:49:50'),
(67, 47, 'sonet', 'shawn@gmail.com', 'Enough Good', 4, '2020-12-09 05:29:14', '2020-12-09 05:29:14'),
(68, 41, 'siam', 'siam@gmail.com', 'good', 3, '2020-12-09 08:21:47', '2020-12-09 08:21:47');

-- --------------------------------------------------------

--
-- Table structure for table `tblgallery`
--

CREATE TABLE `tblgallery` (
  `id` int(10) UNSIGNED NOT NULL,
  `products_id` int(11) NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tblgallery`
--

INSERT INTO `tblgallery` (`id`, `products_id`, `image`, `created_at`, `updated_at`) VALUES
(8, 27, '7664271544063472.jpg', '2018-12-05 19:31:12', '2018-12-05 19:31:12'),
(9, 27, '6768551544063472.jpg', '2018-12-05 19:31:13', '2018-12-05 19:31:13'),
(10, 27, '4131281544063473.jpg', '2018-12-05 19:31:13', '2018-12-05 19:31:13'),
(11, 28, '6720891544063734.jpg', '2018-12-05 19:35:34', '2018-12-05 19:35:34'),
(12, 28, '4686631544063734.jpg', '2018-12-05 19:35:34', '2018-12-05 19:35:34'),
(13, 28, '5960611544063759.jpeg', '2018-12-05 19:35:59', '2018-12-05 19:35:59'),
(14, 29, '5146071544063935.JPG', '2018-12-05 19:38:55', '2018-12-05 19:38:55'),
(15, 29, '762811544063935.jpg', '2018-12-05 19:38:55', '2018-12-05 19:38:55'),
(16, 29, '3716041544063935.jpg', '2018-12-05 19:38:56', '2018-12-05 19:38:56'),
(17, 30, '6832831544064156.jpg', '2018-12-05 19:42:37', '2018-12-05 19:42:37'),
(18, 30, '1655391544064157.jpg', '2018-12-05 19:42:37', '2018-12-05 19:42:37'),
(19, 30, '4693601544064157.jpg', '2018-12-05 19:42:37', '2018-12-05 19:42:37'),
(20, 31, '9233341544064441.jpg', '2018-12-05 19:47:21', '2018-12-05 19:47:21'),
(21, 31, '8167501544064441.jpg', '2018-12-05 19:47:22', '2018-12-05 19:47:22'),
(22, 31, '3887071544064442.jpg', '2018-12-05 19:47:22', '2018-12-05 19:47:22'),
(23, 32, '3998691544064618.jpg', '2018-12-05 19:50:18', '2018-12-05 19:50:18'),
(24, 32, '1159141544064618.jpg', '2018-12-05 19:50:18', '2018-12-05 19:50:18'),
(25, 32, '2035101544064618.jpg', '2018-12-05 19:50:18', '2018-12-05 19:50:18'),
(26, 33, '2128501544064917.jpg', '2018-12-05 19:55:17', '2018-12-05 19:55:17'),
(27, 33, '5649911544064917.jpg', '2018-12-05 19:55:17', '2018-12-05 19:55:17'),
(28, 33, '3704141544064917.jpg', '2018-12-05 19:55:17', '2018-12-05 19:55:17'),
(29, 34, '3899431544065346.JPG', '2018-12-05 20:02:26', '2018-12-05 20:02:26'),
(30, 34, '119131544065346.jpg', '2018-12-05 20:02:27', '2018-12-05 20:02:27'),
(31, 34, '6905491544065347.jpg', '2018-12-05 20:02:27', '2018-12-05 20:02:27'),
(32, 35, '981591544065510.jpeg', '2018-12-05 20:05:10', '2018-12-05 20:05:10'),
(33, 35, '5320811544065510.jpg', '2018-12-05 20:05:11', '2018-12-05 20:05:11'),
(34, 35, '1153181544065511.jpg', '2018-12-05 20:05:11', '2018-12-05 20:05:11');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin` tinyint(4) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pincode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `admin`, `remember_token`, `created_at`, `updated_at`, `address`, `city`, `state`, `country`, `pincode`, `mobile`) VALUES
(1, 'WeShare', 'demo@gmail.com', NULL, '$2y$10$m9fNpTgwyBVqqVfsJ9bXUensvx5iqlYhzqmL3khhSpKpgqNQnW0t2', 1, 'I1ENBWyMs9god9g0TMkSAu8wQNsjpdOty7P57wDvhexuRBTjyd806uz6pBtd', '2018-10-15 02:32:54', '2018-12-05 01:39:52', '123 Street', 'Phnom Penh', 'PP', 'Cambodia', '12252', '010313234'),
(4, 'weshare', 'weshare@gmail.com', NULL, '$2y$10$3Ccxg17LYw/.qS7ib5Xcr.T5po6AXUsnjEcEI4IHcQ0MGkcuRfO.O', NULL, 'za7FtmzYvfzBYmkQtE5tfvStl7dY3Z6uZKSpuRtBRIvlbXzM0csZEQYzjuEb', '2018-12-06 01:40:27', '2018-12-06 01:40:27', NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'sonet', 'shawnshikder1996@gmail.com', NULL, '$2y$10$YF4ZNnLdtCMDZxtFr8asd.sO2bP1nYKKq420xVk88GXCI37XD82zG', NULL, '2vpKWFJgxfkXyyCUDtGScunwwWLMRnPfu6z9Dovv4zQor3BPYJD1wDjxmrw3', '2020-11-26 06:12:44', '2020-11-26 06:12:44', 'Tangail Sadar', 'Tangail', 'Dhaka', 'Bangladesh', '1234', '01732379393'),
(6, 'sonet', 'siam@gmail.com', NULL, '$2y$10$VkBwqElC6Edvj0sC1ci2u.fZptsiZzFellNVM0FVNqfMD9v0Jm9S6', NULL, 'DIa733cbUC1SHTXxKNCdCejqB6TbpkX0UCGaHQWEGCMMsh42GtICxPB4DekW', '2020-11-26 06:48:21', '2020-11-26 06:48:21', 'Mirpur', 'Dhaka', 'Dhaka', 'Bangladesh', '1234', '01728046078'),
(7, 'Jahid Hasan', 'jahid@gmail.com', NULL, '$2y$10$br4bLU0CY9rAwyvMDehfxeMabH.FBxbQl0dro0Su8tm42crCjxexm', NULL, 'wYcSqd1EQiRloLC61tXcyPV0pcwWNrN9FJGXkFpaB5dHuMoMdbsNOpHFm32m', '2020-11-26 11:57:28', '2020-11-26 11:57:28', 'Tangail Sadar', 'Tangail', 'Dhaka', 'Inactive', '345', '01913704965'),
(8, 'Ghorami', 'ghorami@gmail.com', NULL, '$2y$10$79RRN2/OjhUuklEqPU5Xx.4GpF/ZZ7quhThTAI8KRr0ajulricpm.', NULL, NULL, '2020-11-30 10:41:17', '2020-11-30 10:41:17', 'Mirpur-1 near Over bridge', 'Dhaka', '123456789', 'Active', '123456789', '01914565237'),
(9, 'Shimul Chandra Gharami', 'shimulgharami30000@gmail.com', NULL, '$2y$10$/YQVbWPH70Sa9aC0ATSGTO3usFscXhNSU2UG0P9LIyOqn2TPSX9mG', NULL, 'UAOc3R26vDg2OQePaSOPEIU8JYG65FG2vBFF7MAjiXckHaQidWwe8Ft8Putx', '2020-12-04 00:21:11', '2020-12-04 00:21:11', 'Dhaka', 'Dhaka', 'Bangladesh', 'Active', '1260', '01944886533'),
(10, 'habib', 'habib@gmail.com', NULL, '$2y$10$nfYxngpeEJnJ7Md2f/IoNegwV/V1.eCP1.r7ZY8LnqqmBbhNz7MuG', NULL, 'je7lfkFBn49B2gavLtBFAZzupYBWp3jXUnt17jKIAClsZer0rzdeGT4tF7CD', '2020-12-04 20:51:38', '2020-12-04 20:51:38', 'Near Sylhet Medical College', 'Dhaka', '1234', 'Inactive', '1234', '01732379393'),
(11, 'Jafor', 'Jafor@gmail.com', NULL, '$2y$10$H.KjYibRKvhTrg3E5R0HLO54N3RjnPIy4I0rC1srQiJlmwQLi5CV2', NULL, 'SbeTxRGn4sXMOTZi7GVmJtzjHmsLttBNijAJ7jYfltusTJSbbYUPGV99BLNV', '2020-12-04 20:54:28', '2020-12-04 20:54:28', 'Sylhet near Bus Stand', 'Sylhet', '1234', 'Active', '1234', '01676376811');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ambcategories`
--
ALTER TABLE `ambcategories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`name`);

--
-- Indexes for table `ambulances`
--
ALTER TABLE `ambulances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`name`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_address`
--
ALTER TABLE `delivery_address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_att`
--
ALTER TABLE `product_att`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblgallery`
--
ALTER TABLE `tblgallery`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `ambcategories`
--
ALTER TABLE `ambcategories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `ambulances`
--
ALTER TABLE `ambulances`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `delivery_address`
--
ALTER TABLE `delivery_address`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `product_att`
--
ALTER TABLE `product_att`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `tblgallery`
--
ALTER TABLE `tblgallery`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
