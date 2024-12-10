-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 10, 2024 at 03:51 AM
-- Server version: 8.0.31
-- PHP Version: 8.1.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `alamats`
--

DROP TABLE IF EXISTS `alamats`;
CREATE TABLE IF NOT EXISTS `alamats` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province_id` int NOT NULL,
  `kota_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `alamats`
--

INSERT INTO `alamats` (`id`, `created_at`, `updated_at`, `user_id`, `alamat`, `province_id`, `kota_id`) VALUES
(1, NULL, '2024-10-21 00:55:15', 1, 'Jl Pemuda 73', 10, 399),
(2, '2024-10-28 00:33:48', '2024-10-28 00:52:11', 2, 'Jl. Soekarno no.12', 10, 181);

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
CREATE TABLE IF NOT EXISTS `cities` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `city_id` int NOT NULL,
  `province_id` int NOT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postal_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2506 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `created_at`, `updated_at`, `city_id`, `province_id`, `province`, `type`, `city_name`, `postal_code`) VALUES
(2005, '2024-10-21 01:17:41', '2024-10-21 01:17:41', 1, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Aceh Barat', '23681'),
(2006, '2024-10-21 01:17:41', '2024-10-21 01:17:41', 2, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Aceh Barat Daya', '23764'),
(2007, '2024-10-21 01:17:41', '2024-10-21 01:17:41', 3, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Aceh Besar', '23951'),
(2008, '2024-10-21 01:17:41', '2024-10-21 01:17:41', 4, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Aceh Jaya', '23654'),
(2009, '2024-10-21 01:17:41', '2024-10-21 01:17:41', 5, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Aceh Selatan', '23719'),
(2010, '2024-10-21 01:17:41', '2024-10-21 01:17:41', 6, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Aceh Singkil', '24785'),
(2011, '2024-10-21 01:17:41', '2024-10-21 01:17:41', 7, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Aceh Tamiang', '24476'),
(2012, '2024-10-21 01:17:41', '2024-10-21 01:17:41', 8, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Aceh Tengah', '24511'),
(2013, '2024-10-21 01:17:41', '2024-10-21 01:17:41', 9, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Aceh Tenggara', '24611'),
(2014, '2024-10-21 01:17:41', '2024-10-21 01:17:41', 10, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Aceh Timur', '24454'),
(2015, '2024-10-21 01:17:41', '2024-10-21 01:17:41', 11, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Aceh Utara', '24382'),
(2016, '2024-10-21 01:17:41', '2024-10-21 01:17:41', 12, 32, 'Sumatera Barat', 'Kabupaten', 'Agam', '26411'),
(2017, '2024-10-21 01:17:41', '2024-10-21 01:17:41', 13, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Alor', '85811'),
(2018, '2024-10-21 01:17:41', '2024-10-21 01:17:41', 14, 19, 'Maluku', 'Kota', 'Ambon', '97222'),
(2019, '2024-10-21 01:17:41', '2024-10-21 01:17:41', 15, 34, 'Sumatera Utara', 'Kabupaten', 'Asahan', '21214'),
(2020, '2024-10-21 01:17:41', '2024-10-21 01:17:41', 16, 24, 'Papua', 'Kabupaten', 'Asmat', '99777'),
(2021, '2024-10-21 01:17:41', '2024-10-21 01:17:41', 17, 1, 'Bali', 'Kabupaten', 'Badung', '80351'),
(2022, '2024-10-21 01:17:41', '2024-10-21 01:17:41', 18, 13, 'Kalimantan Selatan', 'Kabupaten', 'Balangan', '71611'),
(2023, '2024-10-21 01:17:41', '2024-10-21 01:17:41', 19, 15, 'Kalimantan Timur', 'Kota', 'Balikpapan', '76111'),
(2024, '2024-10-21 01:17:41', '2024-10-21 01:17:41', 20, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kota', 'Banda Aceh', '23238'),
(2025, '2024-10-21 01:17:41', '2024-10-21 01:17:41', 21, 18, 'Lampung', 'Kota', 'Bandar Lampung', '35139'),
(2026, '2024-10-21 01:17:41', '2024-10-21 01:17:41', 22, 9, 'Jawa Barat', 'Kabupaten', 'Bandung', '40311'),
(2027, '2024-10-21 01:17:41', '2024-10-21 01:17:41', 23, 9, 'Jawa Barat', 'Kota', 'Bandung', '40111'),
(2028, '2024-10-21 01:17:41', '2024-10-21 01:17:41', 24, 9, 'Jawa Barat', 'Kabupaten', 'Bandung Barat', '40721'),
(2029, '2024-10-21 01:17:41', '2024-10-21 01:17:41', 25, 29, 'Sulawesi Tengah', 'Kabupaten', 'Banggai', '94711'),
(2030, '2024-10-21 01:17:41', '2024-10-21 01:17:41', 26, 29, 'Sulawesi Tengah', 'Kabupaten', 'Banggai Kepulauan', '94881'),
(2031, '2024-10-21 01:17:41', '2024-10-21 01:17:41', 27, 2, 'Bangka Belitung', 'Kabupaten', 'Bangka', '33212'),
(2032, '2024-10-21 01:17:41', '2024-10-21 01:17:41', 28, 2, 'Bangka Belitung', 'Kabupaten', 'Bangka Barat', '33315'),
(2033, '2024-10-21 01:17:41', '2024-10-21 01:17:41', 29, 2, 'Bangka Belitung', 'Kabupaten', 'Bangka Selatan', '33719'),
(2034, '2024-10-21 01:17:41', '2024-10-21 01:17:41', 30, 2, 'Bangka Belitung', 'Kabupaten', 'Bangka Tengah', '33613'),
(2035, '2024-10-21 01:17:41', '2024-10-21 01:17:41', 31, 11, 'Jawa Timur', 'Kabupaten', 'Bangkalan', '69118'),
(2036, '2024-10-21 01:17:41', '2024-10-21 01:17:41', 32, 1, 'Bali', 'Kabupaten', 'Bangli', '80619'),
(2037, '2024-10-21 01:17:41', '2024-10-21 01:17:41', 33, 13, 'Kalimantan Selatan', 'Kabupaten', 'Banjar', '70619'),
(2038, '2024-10-21 01:17:41', '2024-10-21 01:17:41', 34, 9, 'Jawa Barat', 'Kota', 'Banjar', '46311'),
(2039, '2024-10-21 01:17:41', '2024-10-21 01:17:41', 35, 13, 'Kalimantan Selatan', 'Kota', 'Banjarbaru', '70712'),
(2040, '2024-10-21 01:17:41', '2024-10-21 01:17:41', 36, 13, 'Kalimantan Selatan', 'Kota', 'Banjarmasin', '70117'),
(2041, '2024-10-21 01:17:41', '2024-10-21 01:17:41', 37, 10, 'Jawa Tengah', 'Kabupaten', 'Banjarnegara', '53419'),
(2042, '2024-10-21 01:17:41', '2024-10-21 01:17:41', 38, 28, 'Sulawesi Selatan', 'Kabupaten', 'Bantaeng', '92411'),
(2043, '2024-10-21 01:17:41', '2024-10-21 01:17:41', 39, 5, 'DI Yogyakarta', 'Kabupaten', 'Bantul', '55715'),
(2044, '2024-10-21 01:17:41', '2024-10-21 01:17:41', 40, 33, 'Sumatera Selatan', 'Kabupaten', 'Banyuasin', '30911'),
(2045, '2024-10-21 01:17:41', '2024-10-21 01:17:41', 41, 10, 'Jawa Tengah', 'Kabupaten', 'Banyumas', '53114'),
(2046, '2024-10-21 01:17:41', '2024-10-21 01:17:41', 42, 11, 'Jawa Timur', 'Kabupaten', 'Banyuwangi', '68416'),
(2047, '2024-10-21 01:17:41', '2024-10-21 01:17:41', 43, 13, 'Kalimantan Selatan', 'Kabupaten', 'Barito Kuala', '70511'),
(2048, '2024-10-21 01:17:41', '2024-10-21 01:17:41', 44, 14, 'Kalimantan Tengah', 'Kabupaten', 'Barito Selatan', '73711'),
(2049, '2024-10-21 01:17:41', '2024-10-21 01:17:41', 45, 14, 'Kalimantan Tengah', 'Kabupaten', 'Barito Timur', '73671'),
(2050, '2024-10-21 01:17:41', '2024-10-21 01:17:41', 46, 14, 'Kalimantan Tengah', 'Kabupaten', 'Barito Utara', '73881'),
(2051, '2024-10-21 01:17:41', '2024-10-21 01:17:41', 47, 28, 'Sulawesi Selatan', 'Kabupaten', 'Barru', '90719'),
(2052, '2024-10-21 01:17:41', '2024-10-21 01:17:41', 48, 17, 'Kepulauan Riau', 'Kota', 'Batam', '29413'),
(2053, '2024-10-21 01:17:41', '2024-10-21 01:17:41', 49, 10, 'Jawa Tengah', 'Kabupaten', 'Batang', '51211'),
(2054, '2024-10-21 01:17:41', '2024-10-21 01:17:41', 50, 8, 'Jambi', 'Kabupaten', 'Batang Hari', '36613'),
(2055, '2024-10-21 01:17:41', '2024-10-21 01:17:41', 51, 11, 'Jawa Timur', 'Kota', 'Batu', '65311'),
(2056, '2024-10-21 01:17:41', '2024-10-21 01:17:41', 52, 34, 'Sumatera Utara', 'Kabupaten', 'Batu Bara', '21655'),
(2057, '2024-10-21 01:17:41', '2024-10-21 01:17:41', 53, 30, 'Sulawesi Tenggara', 'Kota', 'Bau-Bau', '93719'),
(2058, '2024-10-21 01:17:41', '2024-10-21 01:17:41', 54, 9, 'Jawa Barat', 'Kabupaten', 'Bekasi', '17837'),
(2059, '2024-10-21 01:17:41', '2024-10-21 01:17:41', 55, 9, 'Jawa Barat', 'Kota', 'Bekasi', '17121'),
(2060, '2024-10-21 01:17:41', '2024-10-21 01:17:41', 56, 2, 'Bangka Belitung', 'Kabupaten', 'Belitung', '33419'),
(2061, '2024-10-21 01:17:41', '2024-10-21 01:17:41', 57, 2, 'Bangka Belitung', 'Kabupaten', 'Belitung Timur', '33519'),
(2062, '2024-10-21 01:17:41', '2024-10-21 01:17:41', 58, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Belu', '85711'),
(2063, '2024-10-21 01:17:41', '2024-10-21 01:17:41', 59, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Bener Meriah', '24581'),
(2064, '2024-10-21 01:17:41', '2024-10-21 01:17:41', 60, 26, 'Riau', 'Kabupaten', 'Bengkalis', '28719'),
(2065, '2024-10-21 01:17:41', '2024-10-21 01:17:41', 61, 12, 'Kalimantan Barat', 'Kabupaten', 'Bengkayang', '79213'),
(2066, '2024-10-21 01:17:41', '2024-10-21 01:17:41', 62, 4, 'Bengkulu', 'Kota', 'Bengkulu', '38229'),
(2067, '2024-10-21 01:17:41', '2024-10-21 01:17:41', 63, 4, 'Bengkulu', 'Kabupaten', 'Bengkulu Selatan', '38519'),
(2068, '2024-10-21 01:17:41', '2024-10-21 01:17:41', 64, 4, 'Bengkulu', 'Kabupaten', 'Bengkulu Tengah', '38319'),
(2069, '2024-10-21 01:17:41', '2024-10-21 01:17:41', 65, 4, 'Bengkulu', 'Kabupaten', 'Bengkulu Utara', '38619'),
(2070, '2024-10-21 01:17:41', '2024-10-21 01:17:41', 66, 15, 'Kalimantan Timur', 'Kabupaten', 'Berau', '77311'),
(2071, '2024-10-21 01:17:41', '2024-10-21 01:17:41', 67, 24, 'Papua', 'Kabupaten', 'Biak Numfor', '98119'),
(2072, '2024-10-21 01:17:41', '2024-10-21 01:17:41', 68, 22, 'Nusa Tenggara Barat (NTB)', 'Kabupaten', 'Bima', '84171'),
(2073, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 69, 22, 'Nusa Tenggara Barat (NTB)', 'Kota', 'Bima', '84139'),
(2074, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 70, 34, 'Sumatera Utara', 'Kota', 'Binjai', '20712'),
(2075, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 71, 17, 'Kepulauan Riau', 'Kabupaten', 'Bintan', '29135'),
(2076, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 72, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Bireuen', '24219'),
(2077, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 73, 31, 'Sulawesi Utara', 'Kota', 'Bitung', '95512'),
(2078, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 74, 11, 'Jawa Timur', 'Kabupaten', 'Blitar', '66171'),
(2079, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 75, 11, 'Jawa Timur', 'Kota', 'Blitar', '66124'),
(2080, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 76, 10, 'Jawa Tengah', 'Kabupaten', 'Blora', '58219'),
(2081, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 77, 7, 'Gorontalo', 'Kabupaten', 'Boalemo', '96319'),
(2082, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 78, 9, 'Jawa Barat', 'Kabupaten', 'Bogor', '16911'),
(2083, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 79, 9, 'Jawa Barat', 'Kota', 'Bogor', '16119'),
(2084, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 80, 11, 'Jawa Timur', 'Kabupaten', 'Bojonegoro', '62119'),
(2085, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 81, 31, 'Sulawesi Utara', 'Kabupaten', 'Bolaang Mongondow (Bolmong)', '95755'),
(2086, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 82, 31, 'Sulawesi Utara', 'Kabupaten', 'Bolaang Mongondow Selatan', '95774'),
(2087, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 83, 31, 'Sulawesi Utara', 'Kabupaten', 'Bolaang Mongondow Timur', '95783'),
(2088, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 84, 31, 'Sulawesi Utara', 'Kabupaten', 'Bolaang Mongondow Utara', '95765'),
(2089, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 85, 30, 'Sulawesi Tenggara', 'Kabupaten', 'Bombana', '93771'),
(2090, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 86, 11, 'Jawa Timur', 'Kabupaten', 'Bondowoso', '68219'),
(2091, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 87, 28, 'Sulawesi Selatan', 'Kabupaten', 'Bone', '92713'),
(2092, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 88, 7, 'Gorontalo', 'Kabupaten', 'Bone Bolango', '96511'),
(2093, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 89, 15, 'Kalimantan Timur', 'Kota', 'Bontang', '75313'),
(2094, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 90, 24, 'Papua', 'Kabupaten', 'Boven Digoel', '99662'),
(2095, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 91, 10, 'Jawa Tengah', 'Kabupaten', 'Boyolali', '57312'),
(2096, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 92, 10, 'Jawa Tengah', 'Kabupaten', 'Brebes', '52212'),
(2097, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 93, 32, 'Sumatera Barat', 'Kota', 'Bukittinggi', '26115'),
(2098, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 94, 1, 'Bali', 'Kabupaten', 'Buleleng', '81111'),
(2099, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 95, 28, 'Sulawesi Selatan', 'Kabupaten', 'Bulukumba', '92511'),
(2100, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 96, 16, 'Kalimantan Utara', 'Kabupaten', 'Bulungan (Bulongan)', '77211'),
(2101, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 97, 8, 'Jambi', 'Kabupaten', 'Bungo', '37216'),
(2102, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 98, 29, 'Sulawesi Tengah', 'Kabupaten', 'Buol', '94564'),
(2103, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 99, 19, 'Maluku', 'Kabupaten', 'Buru', '97371'),
(2104, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 100, 19, 'Maluku', 'Kabupaten', 'Buru Selatan', '97351'),
(2105, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 101, 30, 'Sulawesi Tenggara', 'Kabupaten', 'Buton', '93754'),
(2106, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 102, 30, 'Sulawesi Tenggara', 'Kabupaten', 'Buton Utara', '93745'),
(2107, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 103, 9, 'Jawa Barat', 'Kabupaten', 'Ciamis', '46211'),
(2108, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 104, 9, 'Jawa Barat', 'Kabupaten', 'Cianjur', '43217'),
(2109, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 105, 10, 'Jawa Tengah', 'Kabupaten', 'Cilacap', '53211'),
(2110, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 106, 3, 'Banten', 'Kota', 'Cilegon', '42417'),
(2111, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 107, 9, 'Jawa Barat', 'Kota', 'Cimahi', '40512'),
(2112, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 108, 9, 'Jawa Barat', 'Kabupaten', 'Cirebon', '45611'),
(2113, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 109, 9, 'Jawa Barat', 'Kota', 'Cirebon', '45116'),
(2114, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 110, 34, 'Sumatera Utara', 'Kabupaten', 'Dairi', '22211'),
(2115, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 111, 24, 'Papua', 'Kabupaten', 'Deiyai (Deliyai)', '98784'),
(2116, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 112, 34, 'Sumatera Utara', 'Kabupaten', 'Deli Serdang', '20511'),
(2117, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 113, 10, 'Jawa Tengah', 'Kabupaten', 'Demak', '59519'),
(2118, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 114, 1, 'Bali', 'Kota', 'Denpasar', '80227'),
(2119, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 115, 9, 'Jawa Barat', 'Kota', 'Depok', '16416'),
(2120, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 116, 32, 'Sumatera Barat', 'Kabupaten', 'Dharmasraya', '27612'),
(2121, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 117, 24, 'Papua', 'Kabupaten', 'Dogiyai', '98866'),
(2122, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 118, 22, 'Nusa Tenggara Barat (NTB)', 'Kabupaten', 'Dompu', '84217'),
(2123, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 119, 29, 'Sulawesi Tengah', 'Kabupaten', 'Donggala', '94341'),
(2124, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 120, 26, 'Riau', 'Kota', 'Dumai', '28811'),
(2125, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 121, 33, 'Sumatera Selatan', 'Kabupaten', 'Empat Lawang', '31811'),
(2126, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 122, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Ende', '86351'),
(2127, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 123, 28, 'Sulawesi Selatan', 'Kabupaten', 'Enrekang', '91719'),
(2128, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 124, 25, 'Papua Barat', 'Kabupaten', 'Fakfak', '98651'),
(2129, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 125, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Flores Timur', '86213'),
(2130, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 126, 9, 'Jawa Barat', 'Kabupaten', 'Garut', '44126'),
(2131, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 127, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Gayo Lues', '24653'),
(2132, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 128, 1, 'Bali', 'Kabupaten', 'Gianyar', '80519'),
(2133, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 129, 7, 'Gorontalo', 'Kabupaten', 'Gorontalo', '96218'),
(2134, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 130, 7, 'Gorontalo', 'Kota', 'Gorontalo', '96115'),
(2135, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 131, 7, 'Gorontalo', 'Kabupaten', 'Gorontalo Utara', '96611'),
(2136, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 132, 28, 'Sulawesi Selatan', 'Kabupaten', 'Gowa', '92111'),
(2137, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 133, 11, 'Jawa Timur', 'Kabupaten', 'Gresik', '61115'),
(2138, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 134, 10, 'Jawa Tengah', 'Kabupaten', 'Grobogan', '58111'),
(2139, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 135, 5, 'DI Yogyakarta', 'Kabupaten', 'Gunung Kidul', '55812'),
(2140, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 136, 14, 'Kalimantan Tengah', 'Kabupaten', 'Gunung Mas', '74511'),
(2141, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 137, 34, 'Sumatera Utara', 'Kota', 'Gunungsitoli', '22813'),
(2142, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 138, 20, 'Maluku Utara', 'Kabupaten', 'Halmahera Barat', '97757'),
(2143, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 139, 20, 'Maluku Utara', 'Kabupaten', 'Halmahera Selatan', '97911'),
(2144, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 140, 20, 'Maluku Utara', 'Kabupaten', 'Halmahera Tengah', '97853'),
(2145, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 141, 20, 'Maluku Utara', 'Kabupaten', 'Halmahera Timur', '97862'),
(2146, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 142, 20, 'Maluku Utara', 'Kabupaten', 'Halmahera Utara', '97762'),
(2147, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 143, 13, 'Kalimantan Selatan', 'Kabupaten', 'Hulu Sungai Selatan', '71212'),
(2148, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 144, 13, 'Kalimantan Selatan', 'Kabupaten', 'Hulu Sungai Tengah', '71313'),
(2149, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 145, 13, 'Kalimantan Selatan', 'Kabupaten', 'Hulu Sungai Utara', '71419'),
(2150, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 146, 34, 'Sumatera Utara', 'Kabupaten', 'Humbang Hasundutan', '22457'),
(2151, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 147, 26, 'Riau', 'Kabupaten', 'Indragiri Hilir', '29212'),
(2152, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 148, 26, 'Riau', 'Kabupaten', 'Indragiri Hulu', '29319'),
(2153, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 149, 9, 'Jawa Barat', 'Kabupaten', 'Indramayu', '45214'),
(2154, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 150, 24, 'Papua', 'Kabupaten', 'Intan Jaya', '98771'),
(2155, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 151, 6, 'DKI Jakarta', 'Kota', 'Jakarta Barat', '11220'),
(2156, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 152, 6, 'DKI Jakarta', 'Kota', 'Jakarta Pusat', '10540'),
(2157, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 153, 6, 'DKI Jakarta', 'Kota', 'Jakarta Selatan', '12230'),
(2158, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 154, 6, 'DKI Jakarta', 'Kota', 'Jakarta Timur', '13330'),
(2159, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 155, 6, 'DKI Jakarta', 'Kota', 'Jakarta Utara', '14140'),
(2160, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 156, 8, 'Jambi', 'Kota', 'Jambi', '36111'),
(2161, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 157, 24, 'Papua', 'Kabupaten', 'Jayapura', '99352'),
(2162, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 158, 24, 'Papua', 'Kota', 'Jayapura', '99114'),
(2163, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 159, 24, 'Papua', 'Kabupaten', 'Jayawijaya', '99511'),
(2164, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 160, 11, 'Jawa Timur', 'Kabupaten', 'Jember', '68113'),
(2165, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 161, 1, 'Bali', 'Kabupaten', 'Jembrana', '82251'),
(2166, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 162, 28, 'Sulawesi Selatan', 'Kabupaten', 'Jeneponto', '92319'),
(2167, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 163, 10, 'Jawa Tengah', 'Kabupaten', 'Jepara', '59419'),
(2168, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 164, 11, 'Jawa Timur', 'Kabupaten', 'Jombang', '61415'),
(2169, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 165, 25, 'Papua Barat', 'Kabupaten', 'Kaimana', '98671'),
(2170, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 166, 26, 'Riau', 'Kabupaten', 'Kampar', '28411'),
(2171, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 167, 14, 'Kalimantan Tengah', 'Kabupaten', 'Kapuas', '73583'),
(2172, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 168, 12, 'Kalimantan Barat', 'Kabupaten', 'Kapuas Hulu', '78719'),
(2173, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 169, 10, 'Jawa Tengah', 'Kabupaten', 'Karanganyar', '57718'),
(2174, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 170, 1, 'Bali', 'Kabupaten', 'Karangasem', '80819'),
(2175, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 171, 9, 'Jawa Barat', 'Kabupaten', 'Karawang', '41311'),
(2176, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 172, 17, 'Kepulauan Riau', 'Kabupaten', 'Karimun', '29611'),
(2177, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 173, 34, 'Sumatera Utara', 'Kabupaten', 'Karo', '22119'),
(2178, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 174, 14, 'Kalimantan Tengah', 'Kabupaten', 'Katingan', '74411'),
(2179, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 175, 4, 'Bengkulu', 'Kabupaten', 'Kaur', '38911'),
(2180, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 176, 12, 'Kalimantan Barat', 'Kabupaten', 'Kayong Utara', '78852'),
(2181, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 177, 10, 'Jawa Tengah', 'Kabupaten', 'Kebumen', '54319'),
(2182, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 178, 11, 'Jawa Timur', 'Kabupaten', 'Kediri', '64184'),
(2183, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 179, 11, 'Jawa Timur', 'Kota', 'Kediri', '64125'),
(2184, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 180, 24, 'Papua', 'Kabupaten', 'Keerom', '99461'),
(2185, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 181, 10, 'Jawa Tengah', 'Kabupaten', 'Kendal', '51314'),
(2186, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 182, 30, 'Sulawesi Tenggara', 'Kota', 'Kendari', '93126'),
(2187, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 183, 4, 'Bengkulu', 'Kabupaten', 'Kepahiang', '39319'),
(2188, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 184, 17, 'Kepulauan Riau', 'Kabupaten', 'Kepulauan Anambas', '29991'),
(2189, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 185, 19, 'Maluku', 'Kabupaten', 'Kepulauan Aru', '97681'),
(2190, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 186, 32, 'Sumatera Barat', 'Kabupaten', 'Kepulauan Mentawai', '25771'),
(2191, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 187, 26, 'Riau', 'Kabupaten', 'Kepulauan Meranti', '28791'),
(2192, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 188, 31, 'Sulawesi Utara', 'Kabupaten', 'Kepulauan Sangihe', '95819'),
(2193, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 189, 6, 'DKI Jakarta', 'Kabupaten', 'Kepulauan Seribu', '14550'),
(2194, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 190, 31, 'Sulawesi Utara', 'Kabupaten', 'Kepulauan Siau Tagulandang Biaro (Sitaro)', '95862'),
(2195, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 191, 20, 'Maluku Utara', 'Kabupaten', 'Kepulauan Sula', '97995'),
(2196, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 192, 31, 'Sulawesi Utara', 'Kabupaten', 'Kepulauan Talaud', '95885'),
(2197, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 193, 24, 'Papua', 'Kabupaten', 'Kepulauan Yapen (Yapen Waropen)', '98211'),
(2198, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 194, 8, 'Jambi', 'Kabupaten', 'Kerinci', '37167'),
(2199, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 195, 12, 'Kalimantan Barat', 'Kabupaten', 'Ketapang', '78874'),
(2200, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 196, 10, 'Jawa Tengah', 'Kabupaten', 'Klaten', '57411'),
(2201, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 197, 1, 'Bali', 'Kabupaten', 'Klungkung', '80719'),
(2202, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 198, 30, 'Sulawesi Tenggara', 'Kabupaten', 'Kolaka', '93511'),
(2203, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 199, 30, 'Sulawesi Tenggara', 'Kabupaten', 'Kolaka Utara', '93911'),
(2204, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 200, 30, 'Sulawesi Tenggara', 'Kabupaten', 'Konawe', '93411'),
(2205, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 201, 30, 'Sulawesi Tenggara', 'Kabupaten', 'Konawe Selatan', '93811'),
(2206, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 202, 30, 'Sulawesi Tenggara', 'Kabupaten', 'Konawe Utara', '93311'),
(2207, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 203, 13, 'Kalimantan Selatan', 'Kabupaten', 'Kotabaru', '72119'),
(2208, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 204, 31, 'Sulawesi Utara', 'Kota', 'Kotamobagu', '95711'),
(2209, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 205, 14, 'Kalimantan Tengah', 'Kabupaten', 'Kotawaringin Barat', '74119'),
(2210, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 206, 14, 'Kalimantan Tengah', 'Kabupaten', 'Kotawaringin Timur', '74364'),
(2211, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 207, 26, 'Riau', 'Kabupaten', 'Kuantan Singingi', '29519'),
(2212, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 208, 12, 'Kalimantan Barat', 'Kabupaten', 'Kubu Raya', '78311'),
(2213, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 209, 10, 'Jawa Tengah', 'Kabupaten', 'Kudus', '59311'),
(2214, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 210, 5, 'DI Yogyakarta', 'Kabupaten', 'Kulon Progo', '55611'),
(2215, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 211, 9, 'Jawa Barat', 'Kabupaten', 'Kuningan', '45511'),
(2216, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 212, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Kupang', '85362'),
(2217, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 213, 23, 'Nusa Tenggara Timur (NTT)', 'Kota', 'Kupang', '85119'),
(2218, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 214, 15, 'Kalimantan Timur', 'Kabupaten', 'Kutai Barat', '75711'),
(2219, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 215, 15, 'Kalimantan Timur', 'Kabupaten', 'Kutai Kartanegara', '75511'),
(2220, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 216, 15, 'Kalimantan Timur', 'Kabupaten', 'Kutai Timur', '75611'),
(2221, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 217, 34, 'Sumatera Utara', 'Kabupaten', 'Labuhan Batu', '21412'),
(2222, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 218, 34, 'Sumatera Utara', 'Kabupaten', 'Labuhan Batu Selatan', '21511'),
(2223, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 219, 34, 'Sumatera Utara', 'Kabupaten', 'Labuhan Batu Utara', '21711'),
(2224, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 220, 33, 'Sumatera Selatan', 'Kabupaten', 'Lahat', '31419'),
(2225, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 221, 14, 'Kalimantan Tengah', 'Kabupaten', 'Lamandau', '74611'),
(2226, '2024-10-21 01:17:42', '2024-10-21 01:17:42', 222, 11, 'Jawa Timur', 'Kabupaten', 'Lamongan', '64125'),
(2227, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 223, 18, 'Lampung', 'Kabupaten', 'Lampung Barat', '34814'),
(2228, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 224, 18, 'Lampung', 'Kabupaten', 'Lampung Selatan', '35511'),
(2229, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 225, 18, 'Lampung', 'Kabupaten', 'Lampung Tengah', '34212'),
(2230, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 226, 18, 'Lampung', 'Kabupaten', 'Lampung Timur', '34319'),
(2231, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 227, 18, 'Lampung', 'Kabupaten', 'Lampung Utara', '34516'),
(2232, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 228, 12, 'Kalimantan Barat', 'Kabupaten', 'Landak', '78319'),
(2233, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 229, 34, 'Sumatera Utara', 'Kabupaten', 'Langkat', '20811'),
(2234, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 230, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kota', 'Langsa', '24412'),
(2235, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 231, 24, 'Papua', 'Kabupaten', 'Lanny Jaya', '99531'),
(2236, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 232, 3, 'Banten', 'Kabupaten', 'Lebak', '42319'),
(2237, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 233, 4, 'Bengkulu', 'Kabupaten', 'Lebong', '39264'),
(2238, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 234, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Lembata', '86611'),
(2239, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 235, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kota', 'Lhokseumawe', '24352'),
(2240, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 236, 32, 'Sumatera Barat', 'Kabupaten', 'Lima Puluh Koto/Kota', '26671'),
(2241, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 237, 17, 'Kepulauan Riau', 'Kabupaten', 'Lingga', '29811'),
(2242, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 238, 22, 'Nusa Tenggara Barat (NTB)', 'Kabupaten', 'Lombok Barat', '83311'),
(2243, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 239, 22, 'Nusa Tenggara Barat (NTB)', 'Kabupaten', 'Lombok Tengah', '83511'),
(2244, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 240, 22, 'Nusa Tenggara Barat (NTB)', 'Kabupaten', 'Lombok Timur', '83612'),
(2245, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 241, 22, 'Nusa Tenggara Barat (NTB)', 'Kabupaten', 'Lombok Utara', '83711'),
(2246, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 242, 33, 'Sumatera Selatan', 'Kota', 'Lubuk Linggau', '31614'),
(2247, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 243, 11, 'Jawa Timur', 'Kabupaten', 'Lumajang', '67319'),
(2248, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 244, 28, 'Sulawesi Selatan', 'Kabupaten', 'Luwu', '91994'),
(2249, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 245, 28, 'Sulawesi Selatan', 'Kabupaten', 'Luwu Timur', '92981'),
(2250, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 246, 28, 'Sulawesi Selatan', 'Kabupaten', 'Luwu Utara', '92911'),
(2251, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 247, 11, 'Jawa Timur', 'Kabupaten', 'Madiun', '63153'),
(2252, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 248, 11, 'Jawa Timur', 'Kota', 'Madiun', '63122'),
(2253, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 249, 10, 'Jawa Tengah', 'Kabupaten', 'Magelang', '56519'),
(2254, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 250, 10, 'Jawa Tengah', 'Kota', 'Magelang', '56133'),
(2255, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 251, 11, 'Jawa Timur', 'Kabupaten', 'Magetan', '63314'),
(2256, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 252, 9, 'Jawa Barat', 'Kabupaten', 'Majalengka', '45412'),
(2257, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 253, 27, 'Sulawesi Barat', 'Kabupaten', 'Majene', '91411'),
(2258, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 254, 28, 'Sulawesi Selatan', 'Kota', 'Makassar', '90111'),
(2259, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 255, 11, 'Jawa Timur', 'Kabupaten', 'Malang', '65163'),
(2260, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 256, 11, 'Jawa Timur', 'Kota', 'Malang', '65112'),
(2261, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 257, 16, 'Kalimantan Utara', 'Kabupaten', 'Malinau', '77511'),
(2262, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 258, 19, 'Maluku', 'Kabupaten', 'Maluku Barat Daya', '97451'),
(2263, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 259, 19, 'Maluku', 'Kabupaten', 'Maluku Tengah', '97513'),
(2264, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 260, 19, 'Maluku', 'Kabupaten', 'Maluku Tenggara', '97651'),
(2265, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 261, 19, 'Maluku', 'Kabupaten', 'Maluku Tenggara Barat', '97465'),
(2266, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 262, 27, 'Sulawesi Barat', 'Kabupaten', 'Mamasa', '91362'),
(2267, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 263, 24, 'Papua', 'Kabupaten', 'Mamberamo Raya', '99381'),
(2268, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 264, 24, 'Papua', 'Kabupaten', 'Mamberamo Tengah', '99553'),
(2269, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 265, 27, 'Sulawesi Barat', 'Kabupaten', 'Mamuju', '91519'),
(2270, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 266, 27, 'Sulawesi Barat', 'Kabupaten', 'Mamuju Utara', '91571'),
(2271, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 267, 31, 'Sulawesi Utara', 'Kota', 'Manado', '95247'),
(2272, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 268, 34, 'Sumatera Utara', 'Kabupaten', 'Mandailing Natal', '22916'),
(2273, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 269, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Manggarai', '86551'),
(2274, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 270, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Manggarai Barat', '86711'),
(2275, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 271, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Manggarai Timur', '86811'),
(2276, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 272, 25, 'Papua Barat', 'Kabupaten', 'Manokwari', '98311'),
(2277, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 273, 25, 'Papua Barat', 'Kabupaten', 'Manokwari Selatan', '98355'),
(2278, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 274, 24, 'Papua', 'Kabupaten', 'Mappi', '99853'),
(2279, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 275, 28, 'Sulawesi Selatan', 'Kabupaten', 'Maros', '90511'),
(2280, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 276, 22, 'Nusa Tenggara Barat (NTB)', 'Kota', 'Mataram', '83131'),
(2281, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 277, 25, 'Papua Barat', 'Kabupaten', 'Maybrat', '98051'),
(2282, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 278, 34, 'Sumatera Utara', 'Kota', 'Medan', '20228'),
(2283, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 279, 12, 'Kalimantan Barat', 'Kabupaten', 'Melawi', '78619'),
(2284, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 280, 8, 'Jambi', 'Kabupaten', 'Merangin', '37319'),
(2285, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 281, 24, 'Papua', 'Kabupaten', 'Merauke', '99613'),
(2286, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 282, 18, 'Lampung', 'Kabupaten', 'Mesuji', '34911'),
(2287, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 283, 18, 'Lampung', 'Kota', 'Metro', '34111'),
(2288, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 284, 24, 'Papua', 'Kabupaten', 'Mimika', '99962'),
(2289, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 285, 31, 'Sulawesi Utara', 'Kabupaten', 'Minahasa', '95614'),
(2290, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 286, 31, 'Sulawesi Utara', 'Kabupaten', 'Minahasa Selatan', '95914'),
(2291, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 287, 31, 'Sulawesi Utara', 'Kabupaten', 'Minahasa Tenggara', '95995'),
(2292, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 288, 31, 'Sulawesi Utara', 'Kabupaten', 'Minahasa Utara', '95316'),
(2293, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 289, 11, 'Jawa Timur', 'Kabupaten', 'Mojokerto', '61382'),
(2294, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 290, 11, 'Jawa Timur', 'Kota', 'Mojokerto', '61316'),
(2295, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 291, 29, 'Sulawesi Tengah', 'Kabupaten', 'Morowali', '94911'),
(2296, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 292, 33, 'Sumatera Selatan', 'Kabupaten', 'Muara Enim', '31315'),
(2297, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 293, 8, 'Jambi', 'Kabupaten', 'Muaro Jambi', '36311'),
(2298, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 294, 4, 'Bengkulu', 'Kabupaten', 'Muko Muko', '38715'),
(2299, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 295, 30, 'Sulawesi Tenggara', 'Kabupaten', 'Muna', '93611'),
(2300, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 296, 14, 'Kalimantan Tengah', 'Kabupaten', 'Murung Raya', '73911'),
(2301, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 297, 33, 'Sumatera Selatan', 'Kabupaten', 'Musi Banyuasin', '30719'),
(2302, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 298, 33, 'Sumatera Selatan', 'Kabupaten', 'Musi Rawas', '31661'),
(2303, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 299, 24, 'Papua', 'Kabupaten', 'Nabire', '98816'),
(2304, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 300, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Nagan Raya', '23674'),
(2305, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 301, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Nagekeo', '86911'),
(2306, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 302, 17, 'Kepulauan Riau', 'Kabupaten', 'Natuna', '29711'),
(2307, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 303, 24, 'Papua', 'Kabupaten', 'Nduga', '99541'),
(2308, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 304, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Ngada', '86413'),
(2309, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 305, 11, 'Jawa Timur', 'Kabupaten', 'Nganjuk', '64414'),
(2310, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 306, 11, 'Jawa Timur', 'Kabupaten', 'Ngawi', '63219'),
(2311, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 307, 34, 'Sumatera Utara', 'Kabupaten', 'Nias', '22876'),
(2312, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 308, 34, 'Sumatera Utara', 'Kabupaten', 'Nias Barat', '22895'),
(2313, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 309, 34, 'Sumatera Utara', 'Kabupaten', 'Nias Selatan', '22865'),
(2314, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 310, 34, 'Sumatera Utara', 'Kabupaten', 'Nias Utara', '22856'),
(2315, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 311, 16, 'Kalimantan Utara', 'Kabupaten', 'Nunukan', '77421'),
(2316, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 312, 33, 'Sumatera Selatan', 'Kabupaten', 'Ogan Ilir', '30811'),
(2317, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 313, 33, 'Sumatera Selatan', 'Kabupaten', 'Ogan Komering Ilir', '30618'),
(2318, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 314, 33, 'Sumatera Selatan', 'Kabupaten', 'Ogan Komering Ulu', '32112'),
(2319, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 315, 33, 'Sumatera Selatan', 'Kabupaten', 'Ogan Komering Ulu Selatan', '32211'),
(2320, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 316, 33, 'Sumatera Selatan', 'Kabupaten', 'Ogan Komering Ulu Timur', '32312'),
(2321, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 317, 11, 'Jawa Timur', 'Kabupaten', 'Pacitan', '63512'),
(2322, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 318, 32, 'Sumatera Barat', 'Kota', 'Padang', '25112'),
(2323, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 319, 34, 'Sumatera Utara', 'Kabupaten', 'Padang Lawas', '22763'),
(2324, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 320, 34, 'Sumatera Utara', 'Kabupaten', 'Padang Lawas Utara', '22753'),
(2325, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 321, 32, 'Sumatera Barat', 'Kota', 'Padang Panjang', '27122'),
(2326, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 322, 32, 'Sumatera Barat', 'Kabupaten', 'Padang Pariaman', '25583'),
(2327, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 323, 34, 'Sumatera Utara', 'Kota', 'Padang Sidempuan', '22727'),
(2328, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 324, 33, 'Sumatera Selatan', 'Kota', 'Pagar Alam', '31512'),
(2329, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 325, 34, 'Sumatera Utara', 'Kabupaten', 'Pakpak Bharat', '22272'),
(2330, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 326, 14, 'Kalimantan Tengah', 'Kota', 'Palangka Raya', '73112'),
(2331, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 327, 33, 'Sumatera Selatan', 'Kota', 'Palembang', '30111'),
(2332, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 328, 28, 'Sulawesi Selatan', 'Kota', 'Palopo', '91911'),
(2333, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 329, 29, 'Sulawesi Tengah', 'Kota', 'Palu', '94111'),
(2334, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 330, 11, 'Jawa Timur', 'Kabupaten', 'Pamekasan', '69319'),
(2335, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 331, 3, 'Banten', 'Kabupaten', 'Pandeglang', '42212'),
(2336, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 332, 9, 'Jawa Barat', 'Kabupaten', 'Pangandaran', '46511'),
(2337, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 333, 28, 'Sulawesi Selatan', 'Kabupaten', 'Pangkajene Kepulauan', '90611'),
(2338, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 334, 2, 'Bangka Belitung', 'Kota', 'Pangkal Pinang', '33115'),
(2339, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 335, 24, 'Papua', 'Kabupaten', 'Paniai', '98765'),
(2340, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 336, 28, 'Sulawesi Selatan', 'Kota', 'Parepare', '91123'),
(2341, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 337, 32, 'Sumatera Barat', 'Kota', 'Pariaman', '25511'),
(2342, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 338, 29, 'Sulawesi Tengah', 'Kabupaten', 'Parigi Moutong', '94411'),
(2343, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 339, 32, 'Sumatera Barat', 'Kabupaten', 'Pasaman', '26318'),
(2344, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 340, 32, 'Sumatera Barat', 'Kabupaten', 'Pasaman Barat', '26511'),
(2345, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 341, 15, 'Kalimantan Timur', 'Kabupaten', 'Paser', '76211'),
(2346, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 342, 11, 'Jawa Timur', 'Kabupaten', 'Pasuruan', '67153'),
(2347, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 343, 11, 'Jawa Timur', 'Kota', 'Pasuruan', '67118'),
(2348, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 344, 10, 'Jawa Tengah', 'Kabupaten', 'Pati', '59114'),
(2349, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 345, 32, 'Sumatera Barat', 'Kota', 'Payakumbuh', '26213'),
(2350, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 346, 25, 'Papua Barat', 'Kabupaten', 'Pegunungan Arfak', '98354'),
(2351, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 347, 24, 'Papua', 'Kabupaten', 'Pegunungan Bintang', '99573'),
(2352, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 348, 10, 'Jawa Tengah', 'Kabupaten', 'Pekalongan', '51161'),
(2353, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 349, 10, 'Jawa Tengah', 'Kota', 'Pekalongan', '51122'),
(2354, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 350, 26, 'Riau', 'Kota', 'Pekanbaru', '28112'),
(2355, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 351, 26, 'Riau', 'Kabupaten', 'Pelalawan', '28311'),
(2356, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 352, 10, 'Jawa Tengah', 'Kabupaten', 'Pemalang', '52319'),
(2357, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 353, 34, 'Sumatera Utara', 'Kota', 'Pematang Siantar', '21126'),
(2358, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 354, 15, 'Kalimantan Timur', 'Kabupaten', 'Penajam Paser Utara', '76311'),
(2359, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 355, 18, 'Lampung', 'Kabupaten', 'Pesawaran', '35312'),
(2360, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 356, 18, 'Lampung', 'Kabupaten', 'Pesisir Barat', '35974'),
(2361, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 357, 32, 'Sumatera Barat', 'Kabupaten', 'Pesisir Selatan', '25611'),
(2362, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 358, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Pidie', '24116'),
(2363, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 359, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Pidie Jaya', '24186'),
(2364, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 360, 28, 'Sulawesi Selatan', 'Kabupaten', 'Pinrang', '91251'),
(2365, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 361, 7, 'Gorontalo', 'Kabupaten', 'Pohuwato', '96419'),
(2366, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 362, 27, 'Sulawesi Barat', 'Kabupaten', 'Polewali Mandar', '91311'),
(2367, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 363, 11, 'Jawa Timur', 'Kabupaten', 'Ponorogo', '63411'),
(2368, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 364, 12, 'Kalimantan Barat', 'Kabupaten', 'Pontianak', '78971'),
(2369, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 365, 12, 'Kalimantan Barat', 'Kota', 'Pontianak', '78112'),
(2370, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 366, 29, 'Sulawesi Tengah', 'Kabupaten', 'Poso', '94615'),
(2371, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 367, 33, 'Sumatera Selatan', 'Kota', 'Prabumulih', '31121'),
(2372, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 368, 18, 'Lampung', 'Kabupaten', 'Pringsewu', '35719'),
(2373, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 369, 11, 'Jawa Timur', 'Kabupaten', 'Probolinggo', '67282'),
(2374, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 370, 11, 'Jawa Timur', 'Kota', 'Probolinggo', '67215'),
(2375, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 371, 14, 'Kalimantan Tengah', 'Kabupaten', 'Pulang Pisau', '74811'),
(2376, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 372, 20, 'Maluku Utara', 'Kabupaten', 'Pulau Morotai', '97771'),
(2377, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 373, 24, 'Papua', 'Kabupaten', 'Puncak', '98981'),
(2378, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 374, 24, 'Papua', 'Kabupaten', 'Puncak Jaya', '98979'),
(2379, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 375, 10, 'Jawa Tengah', 'Kabupaten', 'Purbalingga', '53312'),
(2380, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 376, 9, 'Jawa Barat', 'Kabupaten', 'Purwakarta', '41119'),
(2381, '2024-10-21 01:17:43', '2024-10-21 01:17:43', 377, 10, 'Jawa Tengah', 'Kabupaten', 'Purworejo', '54111'),
(2382, '2024-10-21 01:17:44', '2024-10-21 01:17:44', 378, 25, 'Papua Barat', 'Kabupaten', 'Raja Ampat', '98489'),
(2383, '2024-10-21 01:17:44', '2024-10-21 01:17:44', 379, 4, 'Bengkulu', 'Kabupaten', 'Rejang Lebong', '39112'),
(2384, '2024-10-21 01:17:44', '2024-10-21 01:17:44', 380, 10, 'Jawa Tengah', 'Kabupaten', 'Rembang', '59219'),
(2385, '2024-10-21 01:17:44', '2024-10-21 01:17:44', 381, 26, 'Riau', 'Kabupaten', 'Rokan Hilir', '28992'),
(2386, '2024-10-21 01:17:44', '2024-10-21 01:17:44', 382, 26, 'Riau', 'Kabupaten', 'Rokan Hulu', '28511'),
(2387, '2024-10-21 01:17:44', '2024-10-21 01:17:44', 383, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Rote Ndao', '85982'),
(2388, '2024-10-21 01:17:44', '2024-10-21 01:17:44', 384, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kota', 'Sabang', '23512'),
(2389, '2024-10-21 01:17:44', '2024-10-21 01:17:44', 385, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Sabu Raijua', '85391'),
(2390, '2024-10-21 01:17:44', '2024-10-21 01:17:44', 386, 10, 'Jawa Tengah', 'Kota', 'Salatiga', '50711'),
(2391, '2024-10-21 01:17:44', '2024-10-21 01:17:44', 387, 15, 'Kalimantan Timur', 'Kota', 'Samarinda', '75133'),
(2392, '2024-10-21 01:17:44', '2024-10-21 01:17:44', 388, 12, 'Kalimantan Barat', 'Kabupaten', 'Sambas', '79453'),
(2393, '2024-10-21 01:17:44', '2024-10-21 01:17:44', 389, 34, 'Sumatera Utara', 'Kabupaten', 'Samosir', '22392'),
(2394, '2024-10-21 01:17:44', '2024-10-21 01:17:44', 390, 11, 'Jawa Timur', 'Kabupaten', 'Sampang', '69219'),
(2395, '2024-10-21 01:17:44', '2024-10-21 01:17:44', 391, 12, 'Kalimantan Barat', 'Kabupaten', 'Sanggau', '78557'),
(2396, '2024-10-21 01:17:44', '2024-10-21 01:17:44', 392, 24, 'Papua', 'Kabupaten', 'Sarmi', '99373'),
(2397, '2024-10-21 01:17:44', '2024-10-21 01:17:44', 393, 8, 'Jambi', 'Kabupaten', 'Sarolangun', '37419'),
(2398, '2024-10-21 01:17:44', '2024-10-21 01:17:44', 394, 32, 'Sumatera Barat', 'Kota', 'Sawah Lunto', '27416'),
(2399, '2024-10-21 01:17:44', '2024-10-21 01:17:44', 395, 12, 'Kalimantan Barat', 'Kabupaten', 'Sekadau', '79583'),
(2400, '2024-10-21 01:17:44', '2024-10-21 01:17:44', 396, 28, 'Sulawesi Selatan', 'Kabupaten', 'Selayar (Kepulauan Selayar)', '92812'),
(2401, '2024-10-21 01:17:44', '2024-10-21 01:17:44', 397, 4, 'Bengkulu', 'Kabupaten', 'Seluma', '38811'),
(2402, '2024-10-21 01:17:44', '2024-10-21 01:17:44', 398, 10, 'Jawa Tengah', 'Kabupaten', 'Semarang', '50511'),
(2403, '2024-10-21 01:17:44', '2024-10-21 01:17:44', 399, 10, 'Jawa Tengah', 'Kota', 'Semarang', '50135'),
(2404, '2024-10-21 01:17:44', '2024-10-21 01:17:44', 400, 19, 'Maluku', 'Kabupaten', 'Seram Bagian Barat', '97561'),
(2405, '2024-10-21 01:17:44', '2024-10-21 01:17:44', 401, 19, 'Maluku', 'Kabupaten', 'Seram Bagian Timur', '97581'),
(2406, '2024-10-21 01:17:44', '2024-10-21 01:17:44', 402, 3, 'Banten', 'Kabupaten', 'Serang', '42182'),
(2407, '2024-10-21 01:17:44', '2024-10-21 01:17:44', 403, 3, 'Banten', 'Kota', 'Serang', '42111'),
(2408, '2024-10-21 01:17:44', '2024-10-21 01:17:44', 404, 34, 'Sumatera Utara', 'Kabupaten', 'Serdang Bedagai', '20915'),
(2409, '2024-10-21 01:17:44', '2024-10-21 01:17:44', 405, 14, 'Kalimantan Tengah', 'Kabupaten', 'Seruyan', '74211'),
(2410, '2024-10-21 01:17:44', '2024-10-21 01:17:44', 406, 26, 'Riau', 'Kabupaten', 'Siak', '28623'),
(2411, '2024-10-21 01:17:44', '2024-10-21 01:17:44', 407, 34, 'Sumatera Utara', 'Kota', 'Sibolga', '22522'),
(2412, '2024-10-21 01:17:44', '2024-10-21 01:17:44', 408, 28, 'Sulawesi Selatan', 'Kabupaten', 'Sidenreng Rappang/Rapang', '91613'),
(2413, '2024-10-21 01:17:44', '2024-10-21 01:17:44', 409, 11, 'Jawa Timur', 'Kabupaten', 'Sidoarjo', '61219'),
(2414, '2024-10-21 01:17:44', '2024-10-21 01:17:44', 410, 29, 'Sulawesi Tengah', 'Kabupaten', 'Sigi', '94364'),
(2415, '2024-10-21 01:17:44', '2024-10-21 01:17:44', 411, 32, 'Sumatera Barat', 'Kabupaten', 'Sijunjung (Sawah Lunto Sijunjung)', '27511'),
(2416, '2024-10-21 01:17:44', '2024-10-21 01:17:44', 412, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Sikka', '86121'),
(2417, '2024-10-21 01:17:44', '2024-10-21 01:17:44', 413, 34, 'Sumatera Utara', 'Kabupaten', 'Simalungun', '21162'),
(2418, '2024-10-21 01:17:44', '2024-10-21 01:17:44', 414, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Simeulue', '23891'),
(2419, '2024-10-21 01:17:44', '2024-10-21 01:17:44', 415, 12, 'Kalimantan Barat', 'Kota', 'Singkawang', '79117'),
(2420, '2024-10-21 01:17:44', '2024-10-21 01:17:44', 416, 28, 'Sulawesi Selatan', 'Kabupaten', 'Sinjai', '92615'),
(2421, '2024-10-21 01:17:44', '2024-10-21 01:17:44', 417, 12, 'Kalimantan Barat', 'Kabupaten', 'Sintang', '78619'),
(2422, '2024-10-21 01:17:44', '2024-10-21 01:17:44', 418, 11, 'Jawa Timur', 'Kabupaten', 'Situbondo', '68316'),
(2423, '2024-10-21 01:17:44', '2024-10-21 01:17:44', 419, 5, 'DI Yogyakarta', 'Kabupaten', 'Sleman', '55513'),
(2424, '2024-10-21 01:17:44', '2024-10-21 01:17:44', 420, 32, 'Sumatera Barat', 'Kabupaten', 'Solok', '27365'),
(2425, '2024-10-21 01:17:44', '2024-10-21 01:17:44', 421, 32, 'Sumatera Barat', 'Kota', 'Solok', '27315'),
(2426, '2024-10-21 01:17:44', '2024-10-21 01:17:44', 422, 32, 'Sumatera Barat', 'Kabupaten', 'Solok Selatan', '27779'),
(2427, '2024-10-21 01:17:44', '2024-10-21 01:17:44', 423, 28, 'Sulawesi Selatan', 'Kabupaten', 'Soppeng', '90812'),
(2428, '2024-10-21 01:17:44', '2024-10-21 01:17:44', 424, 25, 'Papua Barat', 'Kabupaten', 'Sorong', '98431'),
(2429, '2024-10-21 01:17:44', '2024-10-21 01:17:44', 425, 25, 'Papua Barat', 'Kota', 'Sorong', '98411'),
(2430, '2024-10-21 01:17:44', '2024-10-21 01:17:44', 426, 25, 'Papua Barat', 'Kabupaten', 'Sorong Selatan', '98454'),
(2431, '2024-10-21 01:17:44', '2024-10-21 01:17:44', 427, 10, 'Jawa Tengah', 'Kabupaten', 'Sragen', '57211'),
(2432, '2024-10-21 01:17:44', '2024-10-21 01:17:44', 428, 9, 'Jawa Barat', 'Kabupaten', 'Subang', '41215'),
(2433, '2024-10-21 01:17:44', '2024-10-21 01:17:44', 429, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kota', 'Subulussalam', '24882'),
(2434, '2024-10-21 01:17:44', '2024-10-21 01:17:44', 430, 9, 'Jawa Barat', 'Kabupaten', 'Sukabumi', '43311'),
(2435, '2024-10-21 01:17:44', '2024-10-21 01:17:44', 431, 9, 'Jawa Barat', 'Kota', 'Sukabumi', '43114'),
(2436, '2024-10-21 01:17:44', '2024-10-21 01:17:44', 432, 14, 'Kalimantan Tengah', 'Kabupaten', 'Sukamara', '74712'),
(2437, '2024-10-21 01:17:44', '2024-10-21 01:17:44', 433, 10, 'Jawa Tengah', 'Kabupaten', 'Sukoharjo', '57514'),
(2438, '2024-10-21 01:17:44', '2024-10-21 01:17:44', 434, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Sumba Barat', '87219'),
(2439, '2024-10-21 01:17:44', '2024-10-21 01:17:44', 435, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Sumba Barat Daya', '87453'),
(2440, '2024-10-21 01:17:44', '2024-10-21 01:17:44', 436, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Sumba Tengah', '87358'),
(2441, '2024-10-21 01:17:44', '2024-10-21 01:17:44', 437, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Sumba Timur', '87112'),
(2442, '2024-10-21 01:17:44', '2024-10-21 01:17:44', 438, 22, 'Nusa Tenggara Barat (NTB)', 'Kabupaten', 'Sumbawa', '84315'),
(2443, '2024-10-21 01:17:44', '2024-10-21 01:17:44', 439, 22, 'Nusa Tenggara Barat (NTB)', 'Kabupaten', 'Sumbawa Barat', '84419'),
(2444, '2024-10-21 01:17:44', '2024-10-21 01:17:44', 440, 9, 'Jawa Barat', 'Kabupaten', 'Sumedang', '45326');
INSERT INTO `cities` (`id`, `created_at`, `updated_at`, `city_id`, `province_id`, `province`, `type`, `city_name`, `postal_code`) VALUES
(2445, '2024-10-21 01:17:44', '2024-10-21 01:17:44', 441, 11, 'Jawa Timur', 'Kabupaten', 'Sumenep', '69413'),
(2446, '2024-10-21 01:17:44', '2024-10-21 01:17:44', 442, 8, 'Jambi', 'Kota', 'Sungaipenuh', '37113'),
(2447, '2024-10-21 01:17:44', '2024-10-21 01:17:44', 443, 24, 'Papua', 'Kabupaten', 'Supiori', '98164'),
(2448, '2024-10-21 01:17:44', '2024-10-21 01:17:44', 444, 11, 'Jawa Timur', 'Kota', 'Surabaya', '60119'),
(2449, '2024-10-21 01:17:44', '2024-10-21 01:17:44', 445, 10, 'Jawa Tengah', 'Kota', 'Surakarta (Solo)', '57113'),
(2450, '2024-10-21 01:17:44', '2024-10-21 01:17:44', 446, 13, 'Kalimantan Selatan', 'Kabupaten', 'Tabalong', '71513'),
(2451, '2024-10-21 01:17:44', '2024-10-21 01:17:44', 447, 1, 'Bali', 'Kabupaten', 'Tabanan', '82119'),
(2452, '2024-10-21 01:17:44', '2024-10-21 01:17:44', 448, 28, 'Sulawesi Selatan', 'Kabupaten', 'Takalar', '92212'),
(2453, '2024-10-21 01:17:44', '2024-10-21 01:17:44', 449, 25, 'Papua Barat', 'Kabupaten', 'Tambrauw', '98475'),
(2454, '2024-10-21 01:17:44', '2024-10-21 01:17:44', 450, 16, 'Kalimantan Utara', 'Kabupaten', 'Tana Tidung', '77611'),
(2455, '2024-10-21 01:17:44', '2024-10-21 01:17:44', 451, 28, 'Sulawesi Selatan', 'Kabupaten', 'Tana Toraja', '91819'),
(2456, '2024-10-21 01:17:44', '2024-10-21 01:17:44', 452, 13, 'Kalimantan Selatan', 'Kabupaten', 'Tanah Bumbu', '72211'),
(2457, '2024-10-21 01:17:44', '2024-10-21 01:17:44', 453, 32, 'Sumatera Barat', 'Kabupaten', 'Tanah Datar', '27211'),
(2458, '2024-10-21 01:17:44', '2024-10-21 01:17:44', 454, 13, 'Kalimantan Selatan', 'Kabupaten', 'Tanah Laut', '70811'),
(2459, '2024-10-21 01:17:44', '2024-10-21 01:17:44', 455, 3, 'Banten', 'Kabupaten', 'Tangerang', '15914'),
(2460, '2024-10-21 01:17:44', '2024-10-21 01:17:44', 456, 3, 'Banten', 'Kota', 'Tangerang', '15111'),
(2461, '2024-10-21 01:17:44', '2024-10-21 01:17:44', 457, 3, 'Banten', 'Kota', 'Tangerang Selatan', '15435'),
(2462, '2024-10-21 01:17:44', '2024-10-21 01:17:44', 458, 18, 'Lampung', 'Kabupaten', 'Tanggamus', '35619'),
(2463, '2024-10-21 01:17:44', '2024-10-21 01:17:44', 459, 34, 'Sumatera Utara', 'Kota', 'Tanjung Balai', '21321'),
(2464, '2024-10-21 01:17:44', '2024-10-21 01:17:44', 460, 8, 'Jambi', 'Kabupaten', 'Tanjung Jabung Barat', '36513'),
(2465, '2024-10-21 01:17:44', '2024-10-21 01:17:44', 461, 8, 'Jambi', 'Kabupaten', 'Tanjung Jabung Timur', '36719'),
(2466, '2024-10-21 01:17:44', '2024-10-21 01:17:44', 462, 17, 'Kepulauan Riau', 'Kota', 'Tanjung Pinang', '29111'),
(2467, '2024-10-21 01:17:44', '2024-10-21 01:17:44', 463, 34, 'Sumatera Utara', 'Kabupaten', 'Tapanuli Selatan', '22742'),
(2468, '2024-10-21 01:17:44', '2024-10-21 01:17:44', 464, 34, 'Sumatera Utara', 'Kabupaten', 'Tapanuli Tengah', '22611'),
(2469, '2024-10-21 01:17:44', '2024-10-21 01:17:44', 465, 34, 'Sumatera Utara', 'Kabupaten', 'Tapanuli Utara', '22414'),
(2470, '2024-10-21 01:17:44', '2024-10-21 01:17:44', 466, 13, 'Kalimantan Selatan', 'Kabupaten', 'Tapin', '71119'),
(2471, '2024-10-21 01:17:44', '2024-10-21 01:17:44', 467, 16, 'Kalimantan Utara', 'Kota', 'Tarakan', '77114'),
(2472, '2024-10-21 01:17:44', '2024-10-21 01:17:44', 468, 9, 'Jawa Barat', 'Kabupaten', 'Tasikmalaya', '46411'),
(2473, '2024-10-21 01:17:44', '2024-10-21 01:17:44', 469, 9, 'Jawa Barat', 'Kota', 'Tasikmalaya', '46116'),
(2474, '2024-10-21 01:17:44', '2024-10-21 01:17:44', 470, 34, 'Sumatera Utara', 'Kota', 'Tebing Tinggi', '20632'),
(2475, '2024-10-21 01:17:44', '2024-10-21 01:17:44', 471, 8, 'Jambi', 'Kabupaten', 'Tebo', '37519'),
(2476, '2024-10-21 01:17:44', '2024-10-21 01:17:44', 472, 10, 'Jawa Tengah', 'Kabupaten', 'Tegal', '52419'),
(2477, '2024-10-21 01:17:44', '2024-10-21 01:17:44', 473, 10, 'Jawa Tengah', 'Kota', 'Tegal', '52114'),
(2478, '2024-10-21 01:17:44', '2024-10-21 01:17:44', 474, 25, 'Papua Barat', 'Kabupaten', 'Teluk Bintuni', '98551'),
(2479, '2024-10-21 01:17:44', '2024-10-21 01:17:44', 475, 25, 'Papua Barat', 'Kabupaten', 'Teluk Wondama', '98591'),
(2480, '2024-10-21 01:17:44', '2024-10-21 01:17:44', 476, 10, 'Jawa Tengah', 'Kabupaten', 'Temanggung', '56212'),
(2481, '2024-10-21 01:17:44', '2024-10-21 01:17:44', 477, 20, 'Maluku Utara', 'Kota', 'Ternate', '97714'),
(2482, '2024-10-21 01:17:44', '2024-10-21 01:17:44', 478, 20, 'Maluku Utara', 'Kota', 'Tidore Kepulauan', '97815'),
(2483, '2024-10-21 01:17:44', '2024-10-21 01:17:44', 479, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Timor Tengah Selatan', '85562'),
(2484, '2024-10-21 01:17:44', '2024-10-21 01:17:44', 480, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Timor Tengah Utara', '85612'),
(2485, '2024-10-21 01:17:44', '2024-10-21 01:17:44', 481, 34, 'Sumatera Utara', 'Kabupaten', 'Toba Samosir', '22316'),
(2486, '2024-10-21 01:17:44', '2024-10-21 01:17:44', 482, 29, 'Sulawesi Tengah', 'Kabupaten', 'Tojo Una-Una', '94683'),
(2487, '2024-10-21 01:17:44', '2024-10-21 01:17:44', 483, 29, 'Sulawesi Tengah', 'Kabupaten', 'Toli-Toli', '94542'),
(2488, '2024-10-21 01:17:44', '2024-10-21 01:17:44', 484, 24, 'Papua', 'Kabupaten', 'Tolikara', '99411'),
(2489, '2024-10-21 01:17:44', '2024-10-21 01:17:44', 485, 31, 'Sulawesi Utara', 'Kota', 'Tomohon', '95416'),
(2490, '2024-10-21 01:17:44', '2024-10-21 01:17:44', 486, 28, 'Sulawesi Selatan', 'Kabupaten', 'Toraja Utara', '91831'),
(2491, '2024-10-21 01:17:44', '2024-10-21 01:17:44', 487, 11, 'Jawa Timur', 'Kabupaten', 'Trenggalek', '66312'),
(2492, '2024-10-21 01:17:44', '2024-10-21 01:17:44', 488, 19, 'Maluku', 'Kota', 'Tual', '97612'),
(2493, '2024-10-21 01:17:44', '2024-10-21 01:17:44', 489, 11, 'Jawa Timur', 'Kabupaten', 'Tuban', '62319'),
(2494, '2024-10-21 01:17:44', '2024-10-21 01:17:44', 490, 18, 'Lampung', 'Kabupaten', 'Tulang Bawang', '34613'),
(2495, '2024-10-21 01:17:44', '2024-10-21 01:17:44', 491, 18, 'Lampung', 'Kabupaten', 'Tulang Bawang Barat', '34419'),
(2496, '2024-10-21 01:17:44', '2024-10-21 01:17:44', 492, 11, 'Jawa Timur', 'Kabupaten', 'Tulungagung', '66212'),
(2497, '2024-10-21 01:17:44', '2024-10-21 01:17:44', 493, 28, 'Sulawesi Selatan', 'Kabupaten', 'Wajo', '90911'),
(2498, '2024-10-21 01:17:44', '2024-10-21 01:17:44', 494, 30, 'Sulawesi Tenggara', 'Kabupaten', 'Wakatobi', '93791'),
(2499, '2024-10-21 01:17:44', '2024-10-21 01:17:44', 495, 24, 'Papua', 'Kabupaten', 'Waropen', '98269'),
(2500, '2024-10-21 01:17:44', '2024-10-21 01:17:44', 496, 18, 'Lampung', 'Kabupaten', 'Way Kanan', '34711'),
(2501, '2024-10-21 01:17:44', '2024-10-21 01:17:44', 497, 10, 'Jawa Tengah', 'Kabupaten', 'Wonogiri', '57619'),
(2502, '2024-10-21 01:17:44', '2024-10-21 01:17:44', 498, 10, 'Jawa Tengah', 'Kabupaten', 'Wonosobo', '56311'),
(2503, '2024-10-21 01:17:44', '2024-10-21 01:17:44', 499, 24, 'Papua', 'Kabupaten', 'Yahukimo', '99041'),
(2504, '2024-10-21 01:17:44', '2024-10-21 01:17:44', 500, 24, 'Papua', 'Kabupaten', 'Yalimo', '99481'),
(2505, '2024-10-21 01:17:44', '2024-10-21 01:17:44', 501, 5, 'DI Yogyakarta', 'Kota', 'Yogyakarta', '55111');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_09_25_014718_edit_users_table', 1),
(6, '2024_09_25_014815_create_alamats_table', 1),
(7, '2024_09_25_014904_create_produks_table', 1),
(8, '2024_09_25_014948_create_transaksis_table', 1),
(9, '2024_10_14_071658_create_provinces_table', 2),
(10, '2024_10_14_071834_create_cities_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `produks`
--

DROP TABLE IF EXISTS `produks`;
CREATE TABLE IF NOT EXISTS `produks` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `nama_produk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ukuran` int NOT NULL DEFAULT '0',
  `berat` int NOT NULL,
  `rasa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga` int NOT NULL,
  `image_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `produks`
--

INSERT INTO `produks` (`id`, `created_at`, `updated_at`, `nama_produk`, `ukuran`, `berat`, `rasa`, `harga`, `image_url`) VALUES
(1, NULL, NULL, 'Almond Premium 250gr', 0, 250, 'Original', 50000, '-'),
(2, NULL, NULL, 'Almond Premium 500gr', 0, 500, 'Original', 95000, '-'),
(3, NULL, NULL, 'Almond Premium 1KG', 0, 1000, 'Original', 190000, '-');

-- --------------------------------------------------------

--
-- Table structure for table `provinces`
--

DROP TABLE IF EXISTS `provinces`;
CREATE TABLE IF NOT EXISTS `provinces` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `province_id` int NOT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=205 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `provinces`
--

INSERT INTO `provinces` (`id`, `created_at`, `updated_at`, `province_id`, `province`) VALUES
(171, '2024-10-21 01:17:34', '2024-10-21 01:17:34', 1, 'Bali'),
(172, '2024-10-21 01:17:34', '2024-10-21 01:17:34', 2, 'Bangka Belitung'),
(173, '2024-10-21 01:17:34', '2024-10-21 01:17:34', 3, 'Banten'),
(174, '2024-10-21 01:17:34', '2024-10-21 01:17:34', 4, 'Bengkulu'),
(175, '2024-10-21 01:17:34', '2024-10-21 01:17:34', 5, 'DI Yogyakarta'),
(176, '2024-10-21 01:17:34', '2024-10-21 01:17:34', 6, 'DKI Jakarta'),
(177, '2024-10-21 01:17:34', '2024-10-21 01:17:34', 7, 'Gorontalo'),
(178, '2024-10-21 01:17:34', '2024-10-21 01:17:34', 8, 'Jambi'),
(179, '2024-10-21 01:17:34', '2024-10-21 01:17:34', 9, 'Jawa Barat'),
(180, '2024-10-21 01:17:34', '2024-10-21 01:17:34', 10, 'Jawa Tengah'),
(181, '2024-10-21 01:17:34', '2024-10-21 01:17:34', 11, 'Jawa Timur'),
(182, '2024-10-21 01:17:34', '2024-10-21 01:17:34', 12, 'Kalimantan Barat'),
(183, '2024-10-21 01:17:34', '2024-10-21 01:17:34', 13, 'Kalimantan Selatan'),
(184, '2024-10-21 01:17:34', '2024-10-21 01:17:34', 14, 'Kalimantan Tengah'),
(185, '2024-10-21 01:17:34', '2024-10-21 01:17:34', 15, 'Kalimantan Timur'),
(186, '2024-10-21 01:17:34', '2024-10-21 01:17:34', 16, 'Kalimantan Utara'),
(187, '2024-10-21 01:17:34', '2024-10-21 01:17:34', 17, 'Kepulauan Riau'),
(188, '2024-10-21 01:17:34', '2024-10-21 01:17:34', 18, 'Lampung'),
(189, '2024-10-21 01:17:34', '2024-10-21 01:17:34', 19, 'Maluku'),
(190, '2024-10-21 01:17:34', '2024-10-21 01:17:34', 20, 'Maluku Utara'),
(191, '2024-10-21 01:17:34', '2024-10-21 01:17:34', 21, 'Nanggroe Aceh Darussalam (NAD)'),
(192, '2024-10-21 01:17:34', '2024-10-21 01:17:34', 22, 'Nusa Tenggara Barat (NTB)'),
(193, '2024-10-21 01:17:35', '2024-10-21 01:17:35', 23, 'Nusa Tenggara Timur (NTT)'),
(194, '2024-10-21 01:17:35', '2024-10-21 01:17:35', 24, 'Papua'),
(195, '2024-10-21 01:17:35', '2024-10-21 01:17:35', 25, 'Papua Barat'),
(196, '2024-10-21 01:17:35', '2024-10-21 01:17:35', 26, 'Riau'),
(197, '2024-10-21 01:17:35', '2024-10-21 01:17:35', 27, 'Sulawesi Barat'),
(198, '2024-10-21 01:17:35', '2024-10-21 01:17:35', 28, 'Sulawesi Selatan'),
(199, '2024-10-21 01:17:35', '2024-10-21 01:17:35', 29, 'Sulawesi Tengah'),
(200, '2024-10-21 01:17:35', '2024-10-21 01:17:35', 30, 'Sulawesi Tenggara'),
(201, '2024-10-21 01:17:35', '2024-10-21 01:17:35', 31, 'Sulawesi Utara'),
(202, '2024-10-21 01:17:35', '2024-10-21 01:17:35', 32, 'Sumatera Barat'),
(203, '2024-10-21 01:17:35', '2024-10-21 01:17:35', 33, 'Sumatera Selatan'),
(204, '2024-10-21 01:17:35', '2024-10-21 01:17:35', 34, 'Sumatera Utara');

-- --------------------------------------------------------

--
-- Table structure for table `transaksis`
--

DROP TABLE IF EXISTS `transaksis`;
CREATE TABLE IF NOT EXISTS `transaksis` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tanggal_order` datetime NOT NULL,
  `tanggal_bayar` datetime DEFAULT NULL,
  `user_id` bigint NOT NULL,
  `alamat_id` bigint NOT NULL,
  `produk_id` bigint NOT NULL,
  `qty` int NOT NULL,
  `weight` int NOT NULL,
  `courier` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `service` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `waktu_kirim` int NOT NULL,
  `ongkos_kirim` int NOT NULL,
  `harga_barang` int NOT NULL,
  `total_harga` int NOT NULL,
  `status_transaksi` enum('PESAN','TERBAYAR','SELESAI') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'PESAN',
  `tanggal_terima` datetime DEFAULT NULL,
  `rating` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaksis`
--

INSERT INTO `transaksis` (`id`, `created_at`, `updated_at`, `tanggal_order`, `tanggal_bayar`, `user_id`, `alamat_id`, `produk_id`, `qty`, `weight`, `courier`, `service`, `waktu_kirim`, `ongkos_kirim`, `harga_barang`, `total_harga`, `status_transaksi`, `tanggal_terima`, `rating`) VALUES
(6, '2024-11-25 00:56:40', '2024-11-25 01:07:24', '2024-11-25 00:00:00', NULL, 2, 2, 1, 1, 1000, 'pos', 'Pos Reguler', 0, 10000, 50000, 60000, 'TERBAYAR', NULL, 1),
(7, '2024-12-08 01:59:14', '2024-12-08 02:02:30', '2024-12-08 00:00:00', NULL, 2, 2, 1, 5, 2000, 'jne', 'REG', 0, 20000, 250000, 270000, 'TERBAYAR', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` enum('KONSUMEN','TOKO') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'KONSUMEN',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role`) VALUES
(1, 'Administrator Toko', 'admin@tokoku.com', '2024-10-07 00:18:01', '$2y$10$U9FIj0ZXjs3XrVDM8o6AGeD3JJBtQNVDU/xQYxefHUv6EeIHarSXG', 'iZgYSNVFR3OZuGRcZ5mVaTiv2ukv4O6Oj3zGp6UItMHmReK8nno8aDa2ydr1', NULL, NULL, 'TOKO'),
(2, 'Konsumen Toko', 'konsumen@tokoku.com', NULL, '$2y$10$r671.eINServX23MfFbcpO/CcUlQZdNTzxyAcEmb4aNIKgn1TTy6u', NULL, '2024-10-28 00:32:43', '2024-10-28 00:32:43', 'KONSUMEN');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
