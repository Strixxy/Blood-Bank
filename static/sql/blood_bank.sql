-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 07, 2023 at 05:40 PM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blood bank`
--
CREATE DATABASE IF NOT EXISTS `blood bank` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `blood bank`;

-- --------------------------------------------------------

--
-- Table structure for table `ekm_hsp`
--

DROP TABLE IF EXISTS `ekm_hsp`;
CREATE TABLE IF NOT EXISTS `ekm_hsp` (
  `Hospital` varchar(100) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Contact Info` bigint NOT NULL,
  `Blood Groups Available` varchar(100) NOT NULL,
  `Blood Groups Required` varchar(100) NOT NULL,
  PRIMARY KEY (`Hospital`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `ekm_hsp`
--

INSERT INTO `ekm_hsp` (`Hospital`, `Address`, `Contact Info`, `Blood Groups Available`, `Blood Groups Required`) VALUES
('Amrita Institute of Medical Sciences and\r\nResearch Centre', 'Amrita Lane, Elamakkara P.O. Ponekkara,\r\nKochi-682026,\r\nKerala\r\n', 8281209675, 'A+, A-, B+, B-, O+, O-, AB+, AB-', 'A+, A-, B+, B-, O+, O-, AB+, AB-'),
('Ernakulam Medical Centre', 'Palarivattom, N.H.- 47.\r\nKochi - 682 025', 7735628822, 'A+, A-,O+, O-, AB+, AB-', 'A+, A-, B+, B-'),
('Lakeshore Hospital', 'NH 47 Bypass,\r\nMaradu, Nettoor P.O\r\nKochi - 682 304', 7384956389, 'A+, A-, B+, B-, O+, O-, AB+, AB-', 'A+, A-, B+, B-, O+, O-, AB+, AB-'),
('Luke Memorial Hospital', 'Perumbavoor,\r\nCochin -683 542,\r\nKerala', 0, 'A+, A-, B+, B-, O+, O-, AB+, AB-', ' O+, O-, AB+, AB-'),
('Medical Trust Hospital\r\n', 'MG Road, Cochin - 682 016\r\nKerala, India', 7584903657, 'A+, A-, B+, B-, O+, AB+, AB-', 'A+, A-, B+,'),
('Little Flower Hospital\r\n', 'Angamaly ,\r\nKerala.', 9494856322, 'A+, A-, B+, B-, O+, O-, AB+, AB-', ' B+, B-, O+, O-'),
('Lisie Hospital\r\n', '39/1003, Lisie Hospital Rd,Kochi -18 ,\r\nKerala.', 9444738295, 'A+, A-,O+, O-, AB+, AB-', 'A+, A-, B+, B-, O+, O-');

-- --------------------------------------------------------

--
-- Table structure for table `palakkad_hsp`
--

DROP TABLE IF EXISTS `palakkad_hsp`;
CREATE TABLE IF NOT EXISTS `palakkad_hsp` (
  `Hospital` varchar(100) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Contact Info` bigint NOT NULL,
  `Blood Groups Available` varchar(100) NOT NULL,
  `Blood Groups Required` varchar(100) NOT NULL,
  PRIMARY KEY (`Hospital`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `palakkad_hsp`
--

INSERT INTO `palakkad_hsp` (`Hospital`, `Address`, `Contact Info`, `Blood Groups Available`, `Blood Groups Required`) VALUES
('Palakkad District Hospital\r\n', 'Palakkad , Kerala', 8769784567, 'A+, A-, B+, B-, O+, ', 'O-, AB+, AB-'),
('Fort Hospital', 'Palakkad , Kerala', 9637489456, 'A+, O+, O-, AB+, AB-', ' A-, B+, B-'),
('Lakshmi Nursing Home', 'Palakkad , Kerala', 97856345278, 'A+, A-, B+, B-, AB-', ' O+, O-, AB+'),
('Palakkad Medical and Research Center', 'Palakkad , Kerala', 8946534728, 'A+, A-, O-, AB+, AB-', ' B+, B-, O+,'),
('Assisi Hospital', 'Palakkad , Kerala', 9567846357, ' B-, O+, O-, AB+, AB-', 'A+, A-, B+,'),
('City Hospital', 'Palakkad , Kerala', 8326347288, 'A+, A-, B+, B-, AB-', ' O+, O-, AB+'),
('Balaji Hospital', 'Palakkad , Kerala', 9675345678, 'A+, A-, O-, AB+, AB-', ' B+, B-, O+,');

-- --------------------------------------------------------

--
-- Table structure for table `thrissur_hsp`
--

DROP TABLE IF EXISTS `thrissur_hsp`;
CREATE TABLE IF NOT EXISTS `thrissur_hsp` (
  `Hospital` varchar(100) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Contact Info` bigint NOT NULL,
  `Blood Groups Available` varchar(100) NOT NULL,
  `Blood Groups Required` varchar(100) NOT NULL,
  PRIMARY KEY (`Hospital`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `thrissur_hsp`
--

INSERT INTO `thrissur_hsp` (`Hospital`, `Address`, `Contact Info`, `Blood Groups Available`, `Blood Groups Required`) VALUES
('Thrissur Heart Hospital Limited\r\n', 'Opp. St. Nagar Bus Stand,\r\nThrissur', 8453274866, 'A+, A-, B+, B-, O+, O-, AB+, AB-', 'A+, A-, B+, B-, O+, O-'),
('Amala Cancer Hospital and Research Centre', 'Amala Nagar P. O, Thrissu', 9087678953, 'A+, A-, B+, B-, O+, AB-', 'A+, A-, B+, O-, AB+, AB-'),
('Elite Mission Hospital\r\n\r\n ', 'P. O Koorkenchery, Thrissur,\r\nKerala', 2429322, 'B+, B-, O+, O-, AB+, AB-', 'A+, A-, B+, AB+, AB-'),
('Aswini Hospital (p) Ltd\r\n', 'Karuanakaran Nambiar Rd, Thrissur ,\r\nKerala', 9467836784, 'A+, A-, B+, B- AB+, AB-', 'A+, A-, B+,  O+, O-, '),
('I V G M Hospital\r\n', 'Chalakuday, Irinjalakuda,\r\nKerala', 8936784976, 'B-, O+, O-, AB+, AB-', 'A+, A-, B+,'),
('Lal Memorial Hospital\r\n', 'P. O Madayikonam, Irinjalakuda,\r\nKerala', 836749903, 'A+, A-, B+, AB+, AB-', ' B-, O+, O-,'),
('M I Mission Hospital\r\nChandappura, Kodungallur, Irinjalakuda,\r\nKerala', 'Chandappura, Kodungallur, Irinjalakuda,\r\nKerala', 9463789764, 'A+, A-, O-, AB+, AB-', ' B+, B-, O+,');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
