-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 05, 2022 at 12:19 PM
-- Server version: 5.6.51-cll-lve
-- PHP Version: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `banyan`
--

-- --------------------------------------------------------

--
-- Table structure for table `caregivers`
--

CREATE TABLE `caregivers` (
  `id` bigint(20) NOT NULL,
  `rep_officer_id` bigint(20) DEFAULT NULL,
  `emp_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pin` int(5) DEFAULT NULL,
  `cgiver_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cgiver_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cgiver_desig` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cgiver_project` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cgiver_mob` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cgiver_rep_officer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cgiver_cm_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cgiver_profile_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `caregivers`
--

INSERT INTO `caregivers` (`id`, `rep_officer_id`, `emp_code`, `username`, `password`, `pin`, `cgiver_code`, `cgiver_name`, `cgiver_desig`, `cgiver_project`, `cgiver_mob`, `cgiver_rep_officer`, `cgiver_cm_id`, `cgiver_profile_url`) VALUES
(1, 95, '1002', 'santhony', 'Banyan@123', 1234, 'BCG_01', 'Anthony Samy', 'Health Care Worker', 'ECRC_01', '9786465911', 'Adarsh Babu', 'BCM_0002', 'http://35.211.229.171/portal/public/uploads/images/BCG_01.jpg'),
(2, 95, 'N/A', 'sathish', 'Banyan@123', 1111, 'BCG_02', 'Sathish', 'Health Care Worker', 'ECRC_01', 'N/A', 'Adarsh Babu', 'BCM_0002', NULL),
(3, 95, '11', 'bsulaiman', 'Banyan@123', NULL, 'BCGT_01', 'Sulaiman Basha', 'HCW_Trainee', 'ECRC_01', '7907345633', 'Adarsh Babu', 'BCM_0002', 'http://35.211.229.171/portal/public/uploads/images/BCGT_01.jpg'),
(4, 96, '59', 'apadma', 'Banyan@123', 1234, 'BCG_03', 'Padmavathi A', 'Sr. Health Care Worker', 'ECRC_03', '7358792211', 'Varsha Vinod', 'BCM_0010', 'http://35.211.229.171/portal/public/uploads/images/BCG_03.jpg'),
(5, 96, '634', 'psandhya', 'Banyan@123', 6666, 'BCG_04', 'Sandhya P', 'Health Care Worker', 'ECRC_03', '9940276857', 'Varsha Vinod', 'BCM_0010', 'http://35.211.229.171/portal/public/uploads/images/BCG_04.jpg'),
(6, 96, '614', 'ssanthi', 'Banyan@123', NULL, 'BCG_05', 'Sathya Santhi', 'Sr. Health Care Worker', 'ECRC_03', '7358398194', 'Varsha Vinod', 'BCM_0010', 'http://35.211.229.171/portal/public/uploads/images/BCG_05.jpg'),
(7, 96, '375', 'jhemalatha', 'Banyan@123', NULL, 'BCG_06', 'Hemalatha J', 'Sr. Health Care Worker', 'ECRC_03', '6374409302', 'Varsha Vinod', 'BCM_0010', 'http://35.211.229.171/portal/public/uploads/images/BCG_06.jpg'),
(8, 96, '260', 'msuganthi', 'Banyan@123', NULL, 'BCG_07', 'Suganthi M', 'Sr. Health Care Worker', 'ECRC_03', '6374369084', 'Varsha Vinod', 'BCM_0010', 'http://35.211.229.171/portal/public/uploads/images/BCG_07.jpg'),
(9, 96, '331', 'bsaraswathy', 'Banyan@123', NULL, 'BCG_08', 'Saraswathy B', 'Health Care Worker', 'SH_01', '9043530053', 'Varsha Vinod', 'BCM_0010', 'http://35.211.229.171/portal/public/uploads/images/BCG_08.jpg'),
(10, 96, '794', 'porselvi', 'Banyan@123', NULL, 'BCG_09', 'Porselvi', 'Health Care Worker', 'ECRC_03', '9345277633', 'Varsha Vinod', 'BCM_0010', 'http://35.211.229.171/portal/public/uploads/images/BCG_09.jpg'),
(11, 96, '265', 'pkavitha', 'Banyan@123', NULL, 'BCG_10', 'Kavitha P', 'Sr. Health Care Worker', 'ECRC_03', '9790825777', 'Varsha Vinod', 'BCM_0010', 'http://35.211.229.171/portal/public/uploads/images/BCG_10.jpg'),
(12, 96, '302', 'mdharani', 'Banyan@123', NULL, 'BCG_11', 'Dharani M', 'Sr. Health Care Worker', 'ECRC_03', '9551671652', 'Varsha Vinod', 'BCM_0010', 'http://35.211.229.171/portal/public/uploads/images/BCG_11.jpg'),
(13, 97, '52', 'knanthini', 'Banyan@123', NULL, 'BCG_12', 'Nanthini K', 'Sr. Personal Assistant', 'SH_01', '9884621327', 'Leelavathy Philip', 'BCM_0011', 'http://35.211.229.171/portal/public/uploads/images/BCG_12.jpg'),
(14, 97, '581', 'bsasikala', 'Banyan@123', NULL, 'BCG_13', 'Sasikala B', 'Sr. Personal Assistant', 'SH_01', '9176043566', 'Leelavathy Philip', 'BCM_0011', 'http://35.211.229.171/portal/public/uploads/images/BCG_13.jpg'),
(15, 97, '926', 'dpoorvasi', 'Banyan@123', NULL, 'BCG_14', 'Poovarasi D', 'Personal Assistant', 'SH_01', '7358526990', 'Leelavathy Philip', 'BCM_0011', 'http://35.211.229.171/portal/public/uploads/images/BCG_14.jpg'),
(16, 97, '326', 'myuvarani', 'Banyan@123', NULL, 'BCG_15', 'Yuvarani M', 'Personal Assistant', 'SH_01', '8144357576', 'Leelavathy Philip', 'BCM_0011', 'http://35.211.229.171/portal/public/uploads/images/BCG_15.jpg'),
(17, 97, 'N/A', 'umadevi', 'Banyan@123', NULL, 'BCGT_02', 'Uma Devi', 'PA_Trainee', 'SH_01', 'N/A', 'Leelavathy Philip', 'BCM_0011', 'http://35.211.229.171/portal/public/uploads/images/BCGT_02.jpg'),
(18, 97, '1030', 'chithra', 'Banyan@123', NULL, 'BCG_17', 'Chithra', 'Personal Assistant', 'ECRC_03', '9840833548', 'Leelavathy Philip', 'BCM_0011', 'http://35.211.229.171/portal/public/uploads/images/BCG_17.jpg'),
(19, NULL, 'N/A', 'shwetha', 'Banyan@123', NULL, 'BCGT_03', 'Shwetha', 'PA_Trainee', 'ECRC_03', '7305474971', 'Rekha Y\r\n', 'BCM_0005', 'http://35.211.229.171/portal/public/uploads/images/BCGT_03.jpg'),
(20, 99, '340', 'nkeerthana', 'Banyan@123', 1234, 'BCG_18', 'Keerthana N', 'Sr. Health Care Worker', 'ECRC_03', '9626425729', 'Gayathri K', 'BCM_0004', 'http://35.211.229.171/portal/public/uploads/images/BCG_18.jpg'),
(21, 99, '1047', 'msharmila', 'Banyan@123', NULL, 'BCG_19', 'Sharmila M', 'Health Care Worker', 'ECRC_02', '9626688752', 'Gayathri K', 'BCM_0004', 'http://35.211.229.171/portal/public/uploads/images/BCG_19.jpg'),
(22, 99, '1046', 'smeena', 'Banyan@123', NULL, 'BCG_20', 'S Meena', 'Health Care Worker', 'ECRC_02', '9790534583', 'Gayathri K', 'BCM_0004', 'http://35.211.229.171/portal/public/uploads/images/BCG_20.jpg'),
(23, 99, '1049', 'pavithra', 'Banyan@123', NULL, 'BCG_21', 'Pavithra', 'Health Care Worker', 'CGH_01', '8939659759', 'Gayathri K', 'BCM_0004', 'http://35.211.229.171/portal/public/uploads/images/BCG_21.jpg'),
(24, 99, '817', 'mdivya', 'Banyan@123', NULL, 'BCG_22', 'Divya M', 'Health Care Worker', 'CGH_01', '7397359584', 'Gayathri K', 'BCM_0004', 'http://35.211.229.171/portal/public/uploads/images/BCG_22.jpg'),
(25, 99, '350', 'parimala', 'Banyan@123', NULL, 'BCG_23', 'Parimala', 'Health Care Worker', 'CGH_01', '9578881907', 'Gayathri K', 'BCM_0004', 'http://35.211.229.171/portal/public/uploads/images/BCG_23.jpg'),
(26, 100, '947', 'ddeepa', 'Banyan@123', NULL, 'BCG_24', 'Deepa D', 'Personal Assistant', 'SH_02', '7867839315', 'Sagayamary', 'BCM_0006', 'http://35.211.229.171/portal/public/uploads/images/BCG_24.jpg'),
(27, 100, 'N/A', 'rajeshwari', 'Banyan@123', NULL, 'BCGT_04', 'Rajeshwari', 'PA_Trainee', 'SH_02', 'N/A', 'Sagayamary', 'BCM_0006', '\\N\r\n'),
(28, NULL, 'N/A', 'rathi', 'Banyan@123', NULL, 'BCGT_05', 'Rathi', 'PA_Trainee', 'SH_02', '7397484275', 'Shahanas\r\n', 'BCM_0007', 'http://35.211.229.171/portal/public/uploads/images/BCGT_05.jpg'),
(29, 100, '1055', 'loganayaki', 'Banyan@123', NULL, 'BCGT_06', 'Loganayaki', 'PA_Trainee', 'ECRC_03', '9940436214', 'Sagayamary', 'BCM_0006', 'http://35.211.229.171/portal/public/uploads/images/BCGT_06.jpg'),
(30, 100, '561', 'earunadevi', 'Banyan@123', NULL, 'BCG_25', 'Arunadevi E', 'Sr. Personal Assistant', 'SH_02', '9600642473', 'Sagayamary', 'BCM_0006', '\\N\r\n'),
(31, 100, '1056', 'sumathi', 'Banyan@123', NULL, 'BCGT_07', 'Sumathi', 'Personal Assistant', 'SH_02', 'N/A', 'Sagayamary', 'BCM_0006', 'http://35.211.229.171/portal/public/uploads/images/BCGT_07.jpg'),
(32, 100, '928', 'rmaheshwari', 'Banyan@123', NULL, 'BCG_26', 'R Maheswari', 'Personal Assistant', 'SH_02', '7338952780', 'Sagayamary', 'BCM_0006', '\\N\r\n'),
(33, 100, 'N/A', 'navviya', 'Banyan@123', NULL, 'BCGT_08', 'Navviya', 'PA_Trainee', 'SH_02', 'N/A', 'Sagayamary', 'BCM_0006', 'http://35.211.229.171/portal/public/uploads/images/BCGT_08.jpg'),
(34, 100, '1053', 'skdeepa', 'Banyan@123', NULL, 'BCGT_09', 'Deepa SK', 'Personal Assistant \r\n', 'SH_02', '9003910508\r\n', 'Sagayamary', 'BCM_0006', 'http://35.211.229.171/portal/public/uploads/images/BCGT_09.jpg'),
(35, 100, '6', 'arani', 'Banyan@123', NULL, 'BCGT_10', 'Actor Rani', 'PA_Trainee', 'SH_02', 'N/A', 'Sagayamary', 'BCM_0006', 'http://35.211.229.171/portal/public/uploads/images/BCGT_10.jpg'),
(36, 100, '434', 'fathima', 'Banyan@123', NULL, 'BCGT_11', 'Fathima', 'Sr. Personal Assistant', 'SH_02', '9677179092\r\n', 'Sagayamary', 'BCM_0006', 'http://35.211.229.171/portal/public/uploads/images/BCGT_11.jpg'),
(37, 100, 'N/A', 'jeyanthi', 'Banyan@123', NULL, 'BCGT_12', 'Jeyanthi', 'PA_Trainee', 'SH_02', 'N/A', 'Sagayamary', 'BCM_0006', '\\N\r\n'),
(38, 100, 'N/A', 'spoulin', 'Banyan@123', NULL, 'BCG_27', 'Poulin Suganthi', 'Personal Assistant', 'SH_02', 'N/A', 'Sagayamary', 'BCM_0006', 'http://35.211.229.171/portal/public/uploads/images/BCG_27.jpg'),
(39, 100, '1017', 'erose', 'Banyan@123', NULL, 'BCG_28', 'Rose E', 'Personal Assistant', 'SH_02', '7358450793', 'Sagayamary', 'BCM_0006', 'http://35.211.229.171/portal//public/uploads/images/BCG_28.jpg'),
(40, 100, '945', 'jayasuba', 'Banyan@123', NULL, 'BCG_29', 'Jayasuba', 'Personal Assistant', 'SH_02', '6369751092', 'Sagayamary', 'BCM_0006', 'http://35.211.229.171/portal/public/uploads/images/BCG_29.jpg'),
(41, 100, 'N/A', 'rmaria', 'Banyan@123', NULL, 'BCGT_13', 'Maria Rita', 'PA_Trainee', 'SH_02', 'N/A', 'Sagayamary', 'BCM_0006', 'http://35.211.229.171/portal/public/uploads/images/BCGT_13.jpg'),
(42, 100, '746', 'kramya', 'Banyan@123', NULL, 'BCG_30', 'Ramya K', 'Personal Assistant', 'SH_02', '7397406857', 'Sagayamary', 'BCM_0006', '\\N\r\n'),
(43, 100, 'N/A', 'ckalpana', 'Banyan@123', NULL, 'BCGT_14', 'Kalpana C', 'PA_Trainee', 'SH_02', 'N/A', 'Sagayamary', 'BCM_0006', 'http://35.211.229.171/portal/public/uploads/images/BCGT_14.jpg'),
(44, 100, '1021', 'jparimala', 'Banyan@123', NULL, 'BCG_31', 'Parimala J', 'Personal Assistant', 'SH_02', '6380935955', 'Sagayamary', 'BCM_0006', 'http://35.211.229.171/portal/public/uploads/images/BCG_31.jpg'),
(45, 100, '1019', 'ksasikala', 'Banyan@123', NULL, 'BCG_32', 'K Sasikala', 'Personal Assistant', 'SH_02', '9790354470', 'Sagayamary', 'BCM_0006', 'http://35.211.229.171/portal/public/uploads/images/BCG_32.jpg'),
(46, 100, 'N/A', 'nselvi', 'Banyan@123', NULL, 'BCGT_15', 'Selvi N', 'PA_Trainee', 'SH_02', 'N/A', 'Sagayamary', 'BCM_0006', 'http://35.211.229.171/portal/public/uploads/images/BCGT_15.jpg'),
(47, 100, 'N/A', 'mrekha', 'Banyan@123', NULL, 'BCGT_16', 'Rekha M', 'PA_Trainee', 'SH_02', 'N/A', 'Sagayamary', 'BCM_0006', 'http://35.211.229.171/portal/public/uploads/images/BCGT_16.jpg'),
(48, 100, '623', 'karuna', 'Banyan@123', NULL, 'BCG_33', 'Aruna K', 'Sr. Personal Assistant', 'SH_02', '7373464412', 'Sagayamary', 'BCM_0006', 'http://35.211.229.171/portal/public/uploads/images/BCG_33.jpg'),
(49, 102, '804', 'sjeevanathi', 'Banyan@123', 852, 'BCG_34', 'Jeevanathi S', 'Personal Assistant', 'SH_03', '7867941772', 'Amali Margret', 'BCM_0003', 'http://35.211.229.171/portal/public/uploads/images/BCG_34.jpg'),
(50, 102, '708', 'rshanthi', 'Banyan@123', NULL, 'BCG_35', 'Shanthi R', 'Personal Assistant', 'SH_03', '9585829574', 'Amali Margret', 'BCM_0003', 'http://35.211.229.171/portal/public/uploads/images/BCG_35.jpg'),
(51, 102, '922', 'amanjula', 'Banyan@123', 1111, 'BCG_36', 'Manjula A', 'Personal Assistant', 'SH_03', '8110905725', 'Amali Margret', 'BCM_0003', 'http://35.211.229.171/portal/public/uploads/images/BCG_36.jpg'),
(52, 102, 'N/A', 'rdeepa', 'Banyan@123', NULL, 'BCGT_17', 'Deepa Rani', 'PA_Trainee', 'SH_03', '9003126011', 'Amali Margret', 'BCM_0003', 'http://35.211.229.171/portal/public/uploads/images/BCGT_17.jpg'),
(53, 102, '978', 'jevicinal', 'Banyan@123', 7890, 'BCG_37', 'Vincial Jayamary E', 'Personal Assistant', 'SH_03', '9787693404', 'Amali Margret', 'BCM_0003', 'http://35.211.229.171/portal/public/uploads/images/BCG_37.jpg'),
(54, 102, 'N/A', 'melizabeth', 'Banyan@123', NULL, 'BCGT_18', 'Elisabeth Mary', 'PA_Trainee', 'SH_03', '8508480511', 'Amali Margret', 'BCM_0003', 'http://35.211.229.171/portal/public/uploads/images/BCGT_18.jpg'),
(55, 102, 'N/A', 'arockiyamary', 'Banyan@123', NULL, 'BCGT_19', 'Arockiya Mary', 'PA_Trainee', 'SH_03', '9597912807', 'Amali Margret', 'BCM_0003', 'http://35.211.229.171/portal/public/uploads/images/BCGT_19.jpg'),
(56, 102, 'N/A', 'irundhayamary', 'Banyan@123', NULL, 'BCGT_20', 'Irudhaya Mary', 'PA_Trainee', 'SH_03', '7708195929', 'Amali Margret', 'BCM_0003', 'http://35.211.229.171/portal/public/uploads/images/BCGT_20.jpg'),
(57, 102, '1033', 'asanthasheela', 'Banyan@123', NULL, 'BCG_38', 'Santhasheela A', 'Personal Assistant', 'SH_03', '7868992667', 'Amali Margret', 'BCM_0003', 'http://35.211.229.171/portal/public/uploads/images/BCG_38.jpg'),
(58, 102, '705', 'samalorpavamary', 'Banyan@123', NULL, 'BCG_39', 'Amalorpavamary S', 'Personal Assistant', 'SH_03', '9787137310', 'Amali Margret', 'BCM_0003', 'http://35.211.229.171/portal/public/uploads/images/BCG_39.jpg'),
(59, NULL, 'N/A', 'ilo1', 'Banyan@123', NULL, 'ILO_01', 'Independent Living', 'N/A', 'SH_01', NULL, NULL, 'BCM_0000', NULL),
(60, 101, '733', 'ramlatht', 'Banyan@123', NULL, 'BCG_40', 'Ramlath T', 'Personal Assistant', 'KL_01', '9539936809', 'Shahanas', 'BCM_0007', 'http://35.211.229.171/portal/public/uploads/images/BCG_40.jpg'),
(61, 101, '872', 'soumini', 'Banyan@123', NULL, 'BCG_41', 'Soumini', 'Personal Assistant', 'KL_01', '9539936809', 'Shahanas', 'BCM_0007', 'http://35.211.229.171/portal/public/uploads/images/BCG_41.jpg'),
(62, 101, '915', 'sreeja', 'Banyan@123', NULL, 'BCG_42', 'Sreeja', 'Personal Assistant', 'KL_01', '9539936809', 'Shahanas', 'BCM_0007', 'http://35.211.229.171/portal/public/uploads/images/BCG_42.jpg'),
(63, 101, '904', 'mkgeetha', 'Banyan@123', NULL, 'BCG_43', 'Geetha MK', 'Personal Assistant', 'KL_01', '9539936809', 'Shahanas', 'BCM_0007', 'http://35.211.229.171/portal/public/uploads/images/BCG_43.jpg'),
(64, 101, '1025', 'kpjameela', 'Banyan@123', NULL, 'BCG_44', 'Jameela KP', 'Personal Assistant', 'KL_01', '9539936809', 'Shahanas', 'BCM_0007', 'http://35.211.229.171/portal/public/uploads/images/BCG_44.jpg'),
(65, 101, '766', 'sheeja', 'Banyan@123', NULL, 'BCG_45', 'Sheeja', 'Personal Assistant', 'KL_01', '9539936809', 'Shahanas', 'BCM_0007', 'http://35.211.229.171/portal/public/uploads/images/BCG_45.jpg'),
(66, 101, '992', 'ratheedevi', 'Banyan@123', NULL, 'BCG_46', 'Ratheedevi', 'Personal Assistant', 'KL_01', '9539936809', 'Shahanas', 'BCM_0007', 'http://35.211.229.171/portal/public/uploads/images/BCG_46.jpg'),
(67, 101, '912', 'mnfaisal', 'Banyan@123', 1234, 'BCG_47', 'Faisal MN', 'Personal Assistant', 'KL_01', NULL, 'Shahanas', 'BCM_0007', 'http://35.211.229.171/portal/public/uploads/images/BCG_47.jpg'),
(68, 101, '916', 'presanna', 'Banyan@123', NULL, 'BCG_48', 'Presanna', 'Personal Assistant', 'KL_01', NULL, 'Shahanas', 'BCM_0007', 'http://35.211.229.171/portal/public/uploads/images/BCG_48.jpg'),
(69, 101, '893', 'lajilal', 'Banyan@123', NULL, 'BCG_49', 'Lajilal', 'Personal Assistant', 'KL_01', NULL, 'Shahanas', 'BCM_0007', 'http://35.211.229.171/portal/public/uploads/images/BCG_49.jpg'),
(70, 101, '1023', 'subaida', 'Banyan@123', NULL, 'BCG_50', 'Subaida', 'Personal Assistant', 'KL_01', NULL, 'Shahanas', 'BCM_0007', 'http://35.211.229.171/portal/public/uploads/images/BCG_50.jpg'),
(71, 101, '934', 'vsharmila', 'Banyan@123', NULL, 'BCG_51', 'Sharmila V', 'Personal Assistant', 'KL_01', NULL, 'Shahanas', 'BCM_0007', 'http://35.211.229.171/portal/public/uploads/images/BCG_51.jpg'),
(72, 101, '935', 'shamseera', 'Banyan@123', NULL, 'BCG_52', 'Shamseera', 'Personal Assistant', 'KL_01', NULL, 'Shahanas', 'BCM_0007', 'http://35.211.229.171/portal/public/uploads/images/BCG_52.jpg'),
(73, 101, '735', 'pmaimoona', 'Banyan@123', NULL, 'BCG_53', 'Maimoona P', 'Personal Assistant', 'KL_01', NULL, 'Shahanas', 'BCM_0007', 'http://35.211.229.171/portal/public/uploads/images/BCG_53.jpg'),
(74, 101, 'C019', 'tpradeep', 'Banyan@123', NULL, 'BCG_54', 'Pradeep T', 'Personal Assistant', 'KL_01', NULL, 'Shahanas', 'BCM_0007', 'http://35.211.229.171/portal/public/uploads/images/BCG_54.jpg'),
(75, 104, '900', 'usha', 'Banyan@123', NULL, 'BCG_55', 'Usha', 'Personal Assistant', 'KL_01', NULL, 'Shyapin', 'BCM_0008', 'http://35.211.229.171/portal/public/uploads/images/BCG_55.jpg'),
(76, 104, '998', 'crama', 'Banyan@123', NULL, 'BCG_56', 'Rama Chandran', 'Personal Assistant', 'KL_01', NULL, 'Shyapin', 'BCM_0008', NULL),
(77, 105, '954', 'mrukiya', 'Banyan@123', NULL, 'BCG_57', 'Rukiya Babasaheb Majgaonkar', 'Personal Assistant', 'MH_01', '7666875345', 'Aakanksha', 'BCM_0001', NULL),
(78, 105, '953', 'mshehnaz', 'Banyan@123', NULL, 'BCG_58', 'Shehnaz Rafique Mujawar', 'Personal Assistant', 'MH_01', '7249758318', 'Aakanksha', 'BCM_0001', NULL),
(79, 105, '955', 'hmohsina', 'Banyan@123', NULL, 'BCG_59', 'Mohsina Hakim', 'Personal Assistant', 'MH_01', '9284837953', 'Aakanksha', 'BCM_0001', NULL),
(80, 105, '1012', 'wpradnya', 'Banyan@123', NULL, 'BCG_60', 'Pradnya Prakash Wadkar', 'Personal Assistant', 'MH_01', '7058828630', 'Aakanksha', 'BCM_0001', NULL),
(81, 105, '1013', 'gshaila', 'Banyan@123', NULL, 'BCG_61', 'Shaila Rajendra Ghawadi', 'Personal Assistant', 'MH_01', '7757885411', 'Aakanksha', 'BCM_0001', NULL),
(82, 105, '1028', 'pnikita', 'Banyan@123', NULL, 'BCG_62', 'Nikita Nitin Patil', 'Personal Assistant', 'MH_01', '9420274231', 'Aakanksha', 'BCM_0001', NULL),
(83, 105, '979', 'baarti', 'Banyan@123', NULL, 'BCG_63', 'Aarti Sushil Bhowad', 'Personal Assistant', 'MH_01', '8390753383', 'Aakanksha', 'BCM_0001', NULL),
(84, 105, '1029', 'rasmita', 'Banyan@123', NULL, 'BCG_64', 'Asmita Dipak Rahate', 'Personal Assistant', 'MH_01', '8805598293', 'Aakanksha', 'BCM_0001', NULL),
(85, 106, '1031', 'pshardha', 'Banyan@123', NULL, 'BCG_65', 'Shardha Shriniwas Papola', 'Personal Assistant', 'MH_02', '9324219093', 'Sonal', 'BCM_0009', NULL),
(86, 106, '991', 'btejashree', 'Banyan@123', NULL, 'BCG_66', 'Tejashree Karan Bobade', 'Personal Assistant', 'MH_02', '8657239922', 'Sonal', 'BCM_0009', NULL),
(87, 106, '1006', 'plata', 'Banyan@123', NULL, 'BCG_67', 'Lata Tukaram Pawar', 'Personal Assistant', 'MH_02', '8928585411', 'Sonal', 'BCM_0009', NULL),
(88, 99, '1020', 'apriyanka', 'Banyan@123', NULL, 'BCG_68', 'A Priyanka', 'Health Care Worker', 'ECRC_03', '7338967069', 'Gayathri K', 'BCM_0004', NULL),
(89, 107, '1003', 'ranand', 'Banyan@123', NULL, 'BCG_69', 'Anand Raj', 'Health Care Worker', 'ECRC_02', '9047318027', 'Rishab Kumar Anand', 'BCM_0012', NULL),
(90, 108, '789', 'mabraham', 'Banyan@123', NULL, 'BCG_70', 'Abraham M', 'Personal Assistant', 'ECRC_03', NULL, 'Harilal Pillai', 'BCM_0013', NULL),
(91, 99, '1068', 'pmanila', 'Banyan@123', NULL, 'BCG_71', 'Manila P', 'Nurse', 'ECRC_03', '8608464617', 'Gayathri K', 'BCM_0004', NULL),
(93, 99, NULL, 'sangeetha', 'Banyan@123', NULL, 'BCG_73', 'Sangeetha', 'Health Care Worker', 'ECRC_03', '9361915459', 'Gayathri K', 'BCM_0004', NULL),
(95, 95, '26', 'kishore', 'Banyan@123', 1234, 'BCG_75', 'Kishore', 'Health Care Worker', 'ECRC_01', '7358706555', 'Adarsh Babu', 'BCM_0002', NULL),
(96, 100, '23', 'lpriya', 'Banyan@123', NULL, 'BCG_76', 'Priya Logesh', 'Personal Assistant', 'ECRC_03', '9841359534', 'Sagayamary', 'BCM_0006', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `caregiver_project_codes`
--

CREATE TABLE `caregiver_project_codes` (
  `id` bigint(20) NOT NULL,
  `caregiver_id` bigint(20) NOT NULL,
  `project_code_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `caregiver_project_codes`
--

INSERT INTO `caregiver_project_codes` (`id`, `caregiver_id`, `project_code_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 95, 1),
(5, 21, 2),
(6, 22, 2),
(7, 89, 2),
(8, 4, 3),
(9, 5, 3),
(10, 6, 3),
(11, 7, 3),
(12, 8, 3),
(13, 10, 3),
(14, 11, 3),
(15, 12, 3),
(16, 18, 3),
(17, 19, 3),
(18, 20, 3),
(19, 29, 3),
(20, 88, 3),
(21, 90, 3),
(22, 91, 3),
(23, 93, 3),
(24, 96, 3),
(25, 9, 4),
(26, 13, 4),
(27, 14, 4),
(28, 15, 4),
(29, 16, 4),
(30, 17, 4),
(31, 59, 4),
(32, 26, 5),
(33, 27, 5),
(34, 28, 5),
(35, 30, 5),
(36, 31, 5),
(37, 32, 5),
(38, 33, 5),
(39, 34, 5),
(40, 35, 5),
(41, 36, 5),
(42, 37, 5),
(43, 38, 5),
(44, 39, 5),
(45, 40, 5),
(46, 41, 5),
(47, 42, 5),
(48, 43, 5),
(49, 44, 5),
(50, 45, 5),
(51, 46, 5),
(52, 47, 5),
(53, 48, 5),
(54, 49, 6),
(55, 50, 6),
(56, 51, 6),
(57, 52, 6),
(58, 53, 6),
(59, 54, 6),
(60, 55, 6),
(61, 56, 6),
(62, 57, 6),
(63, 58, 6),
(64, 77, 7),
(65, 78, 7),
(66, 79, 7),
(67, 80, 7),
(68, 81, 7),
(69, 82, 7),
(70, 83, 7),
(71, 84, 7),
(72, 85, 8),
(73, 86, 8),
(74, 87, 8),
(75, 23, 9),
(76, 24, 9),
(77, 25, 9),
(78, 60, 11),
(79, 61, 11),
(80, 62, 11),
(81, 63, 11),
(82, 64, 11),
(83, 65, 11),
(84, 66, 11),
(85, 67, 11),
(86, 68, 11),
(87, 69, 11),
(88, 70, 11),
(89, 71, 11),
(90, 72, 11),
(91, 73, 11),
(92, 74, 11),
(93, 75, 11),
(94, 76, 11);

-- --------------------------------------------------------

--
-- Table structure for table `casemanagers`
--

CREATE TABLE `casemanagers` (
  `cm_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cm_userID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cm_password` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cm_Name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cm_Center` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cm_Contact` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `casemanagers`
--

INSERT INTO `casemanagers` (`cm_ID`, `cm_userID`, `cm_password`, `cm_Name`, `cm_Center`, `cm_Contact`) VALUES
('BCM_0001', NULL, NULL, 'Aakanksha', NULL, 9413033329),
('BCM_0002', NULL, NULL, 'Adarsh Babu', NULL, 7907345633),
('BCM_0003', NULL, NULL, 'Amali Margret', NULL, 7358706009),
('BCM_0004', NULL, NULL, 'Gayathri K', NULL, 7358766561),
('BCM_0005', NULL, NULL, 'Rekha Y', NULL, 7358333962),
('BCM_0006', NULL, NULL, 'Sagayamary', NULL, 9629250415),
('BCM_0007', NULL, NULL, 'Shahanas', NULL, 9539936809),
('BCM_0008', NULL, NULL, 'Shyapin', NULL, 7358069130),
('BCM_0009', NULL, NULL, 'Sonal', NULL, 9987430918),
('BCM_0010', NULL, NULL, 'Varsha Vinod', NULL, 9000711608),
('BCM_0011', NULL, NULL, 'Leelavathi Phillip', NULL, NULL),
('BCM_0012', NULL, NULL, 'Rishab Kumar Anand', NULL, NULL),
('BCM_0013', NULL, NULL, 'Harilal Pillai', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `clients_active`
--

CREATE TABLE `clients_active` (
  `id` bigint(20) NOT NULL,
  `center_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `center_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `client_file_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `client_fname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `client_lname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `client_cgiver1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `client_cgiver2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `client_cgiver3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `client_doa` date DEFAULT NULL,
  `client_adm_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `client_age` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `client_gender` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `client_religion` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `client_state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `client_city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `client_district` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `client_ps` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `client_post` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `client_taluk` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `client_location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `client_marital` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `client_idmark` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `client_occupation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `client_education` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `client_language` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `client_relative_avl` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `client_relative_address_1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `client_relative_address_2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `client_daff` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `client_family_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `client_family_size` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `client_family_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `client_referred` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `client_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `client_discharged` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `client_height` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `clients_active`
--

INSERT INTO `clients_active` (`id`, `center_code`, `center_name`, `client_file_number`, `client_fname`, `client_lname`, `client_cgiver1`, `client_cgiver2`, `client_cgiver3`, `client_doa`, `client_adm_type`, `client_age`, `client_gender`, `client_religion`, `client_state`, `client_city`, `client_district`, `client_ps`, `client_post`, `client_taluk`, `client_location`, `client_marital`, `client_idmark`, `client_occupation`, `client_education`, `client_language`, `client_relative_avl`, `client_relative_address_1`, `client_relative_address_2`, `client_daff`, `client_family_type`, `client_family_size`, `client_family_phone`, `client_referred`, `client_active`, `client_discharged`, `client_height`) VALUES
(1, 'ECRC_01', 'ECRC - Santhome', '2011/BSR/001-A', 'Suresh', 'N/A', 'BCG_01', 'N/A', NULL, '2011-01-01', 'Voluntary', '60', 'Male', 'Hindu', 'Tamil nadu', 'N/A', 'Chennai', 'N/A', 'N/A', 'N/A', 'Urban', 'Single', 'N/A', 'Unemployed', '12', 'Tamil', 'N/A', 'N/A', 'N/A', 'N/A', 'Nuclear', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(2, 'ECRC_01', 'ECRC - Santhome', '2011/BSR/039', 'Narasimma moorthy', 'N/A', 'BCG_02', 'N/A', NULL, '2011-11-03', 'Voluntary', '46', 'Male', 'Hindu', 'Karnataka', 'N/A', 'maruthi deva nagar', 'N/A', 'N/A', 'N/A', 'N/A', 'Married', 'N/A', 'Skilled Worker', '1', 'Kannada', 'N/A', 'N/A', 'N/A', 'N/A', 'Nuclear', 'N/A', '95500000000', 'IMH', '1', 'N/A', NULL),
(4, 'ECRC_01', 'ECRC - Santhome', '2014/BSR/055', 'Ajay Ram', 'N/A', 'BCG_01', 'N/A', NULL, '2013-11-15', 'Voluntary', '35', 'Male', 'Hindu', 'Maharashtra', 'Lonar', 'Vidharba', 'Akola', 'malegaun', 'washim,Maharashtra', 'Urban', 'Single', 'N/A', 'N/A', '7', 'Hindi', 'N/A', 'N/A', 'N/A', '30', 'living alone', 'N/A', 'N/A', 'Rescue', '1', 'N/A', NULL),
(5, 'ECRC_01', 'ECRC - Santhome', '2013/BSR/025', 'Anil Kumar/Selva mani', 'N/A', 'BCG_01', 'N/A', NULL, '2013-09-21', 'Voluntary', '36', 'Male', 'Hindu', 'Tamil nadu', 'Door 425,santhome tent 3', 'Chennai', 'E1', 'N/A', 'N/A', 'N/A', 'Separated', 'N/A', 'Unemployed', '8', 'Tamil', 'Yes', '425,santhome tent 3', 'N/A', '0', 'Joint Family', '6', 'N/A', 'Referred by family members', '1', 'N/A', NULL),
(53, 'ECRC_01', 'ECRC - Santhome', '2013/BSR/028', 'Rajendran', 'N/A', 'BCG_01', 'N/A', NULL, '2013-01-01', 'Voluntary', '45', 'Male', 'Hindu', 'Tamil nadu', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Urban', 'Married', 'N/A', 'Unemployed', 'N/A', 'Tamil', 'N/A', 'N/A', 'N/A', 'N/A', 'Nuclear', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(57, 'ECRC_01', 'ECRC - Santhome', '2013/BSR/015', 'Robert', 'N/A', 'BCG_01', 'N/A', NULL, '2013-01-01', 'Voluntary', '30', 'Male', 'Christian', 'Tamil nadu', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'A block mole in the fore head', 'N/A', 'N/A', 'Tamil', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Rescue', '1', 'N/A', NULL),
(175, 'ECRC_01', 'ECRC - Santhome', '2016/BSR/004', 'Narayanan', 'N/A', 'BCG_01', 'N/A', NULL, '2016-02-03', 'Voluntary', '35', 'Male', 'Hindu', 'Tamil nadu', 'N/A', 'Trichy', 'N/A', 'N/A', 'N/A', 'N/A', 'Single', 'N/A', 'Unemployed', '10', 'Tamil', 'N/A', 'N/A', 'N/A', 'N/A', 'Living alone', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(196, 'SH_01', 'Shared Housing (Urban)', '2016/BSR/040-A', 'Gunasekar', 'N/A', 'BCG_75', 'N/A', NULL, '2016-11-03', 'Voluntary', '44', 'Male', 'Hindu', 'Tamil nadu', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Separated', 'DNA', 'Skilled worker', '15', 'Tamil', 'N/A', 'N/A', 'N/A', 'N/A', 'Living alone', '1', 'N/A', 'N/A', '1', 'N/A', NULL),
(209, 'ECRC_01', 'ECRC - Santhome', '2016/BSR/007', 'Murali', 'N/A', 'BCG_01', 'N/A', NULL, '2016-03-08', 'Voluntary', '45', 'Male', 'Hindu', 'Tamil nadu', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Rural', 'Single', 'One black mole', 'Unemployed', '5', 'Tamil', 'No', 'N/A', 'N/A', 'N/A', 'Living Alone', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(221, 'ECRC_01', 'ECRC - Santhome', '2017/BSR/013', 'Mahesh', 'N/A', 'BCG_02', 'N/A', NULL, '2006-04-17', 'Voluntary', '30', 'Male', 'Hindu', 'Tamil nadu', 'N/A', 'Tirunelveli', 'N/A', 'N/A', 'N/A', 'Urban', 'Single', 'DNA', 'Unemployed', '15', 'Tamil', 'Yes', 'N/A', 'N/A', '120', 'Living Alone', '6', 'N/A', 'N/A', '1', 'N/A', NULL),
(247, 'ECRC_01', 'ECRC - Santhome', '2017/BSR/015', 'Rehamathullah', 'N/A', 'BCGT_01', 'N/A', NULL, '2017-05-02', 'Voluntary', '35', 'Male', 'Muslim', 'Tamil Nadu', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Single', 'N/A', 'Unemployed', 'N/A', 'Tamil', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(249, 'ECRC_01', 'ECRC - Santhome', '2017/BSR/009', 'Kathir', 'N/A', 'BCG_01', 'N/A', NULL, '2017-03-14', 'Voluntary', '25', 'Male', 'Hindu', 'Tamil Nadu', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Rural', 'Single', 'One small black mole on the right fore arm', 'Unemployed', '0', 'Hindi', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(252, 'SH_01', 'Shared Housing (Urban)', '2017/BSR/035', 'Ram Kumar', 'N/A', 'BCG_02', 'N/A', NULL, '2017-10-21', 'Voluntary', '33', 'Male', 'Hindu', 'Tamil Nadu', 'N/A', 'Kanchipuram', 'N/A', 'N/A', 'Urapakkam', 'Urban', 'Single', 'DNA', 'Unemployed', '10', 'Tamil', 'N/A', 'N/A', 'N/A', 'N/A', 'Joint Family', '4', 'N/A', 'Urapakkam', '1', 'N/A', NULL),
(253, 'SH_01', 'Shared Housing (Urban)', '2017/BSR/025', 'Gopal', 'N/A', 'BCG_02', 'N/A', NULL, '2017-07-28', 'Voluntary', '35', 'Male', 'Hindu', 'Tamil Nadu', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Tamil', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(266, 'ECRC_01', 'ECRC - Santhome', '2018/BSR/007', 'Balki', 'N/A', 'BCG_01', 'N/A', NULL, '2018-04-04', 'Voluntary', '45', 'Male', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'A blunt mole on left forehead', 'N/A', 'N/A', 'Hindi', 'No', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Choolaimedu', '1', 'N/A', NULL),
(273, 'ECRC_01', 'ECRC - Santhome', '2018/BSR/012', 'Kasi', 'N/A', 'BCG_01', 'N/A', NULL, '2018-05-12', 'Voluntary', '43', 'Male', 'Hindu', 'Odisha', 'Banapur', 'Khora', 'Raipur', 'Raipur', 'N/A', 'N/A', 'Single', 'A Black Mole on right hand', 'Skilled Worker', '0', 'Hindi', 'Yes', 'Pappu(Friend)', 'N/A', '122', 'Nuclear', 'N/A', 'N/A', 'Santhome', '1', 'N/A', NULL),
(277, 'ECRC_03', 'ECRC - Mogappair', '2018/BSR/016', 'Sudist Pandey', 'N/A', 'BCG_69', 'N/A', NULL, '2018-08-08', 'Voluntary', '40', 'Male', 'Hindu', 'Bihar', 'Jitkahiya', 'Purbi Champaran', 'Mehsi', 'Mehsi', 'N/A', 'Rural', 'Single', 'A small black mole on thev right hand', 'Unemployed', 'N/A', 'Hindi', 'Yes', 'N/A', 'N/A', '547', 'N/A', 'N/A', 'N/A', 'Pattinapakkam', '1', 'N/A', NULL),
(283, 'ECRC_01', 'ECRC - Santhome', '2018/BSR/022', 'Mithra', 'N/A', 'BCG_01', 'N/A', NULL, '2018-10-27', 'Voluntary', '35', 'Male', 'Hindu', 'Tamil Nadu', 'Pookadai', 'Chennai', 'C1', 'Central', 'Central', 'Urban', 'N/A', 'A mole on right chest', 'Unemployed', '0', 'Bengali', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Pookadai', '1', 'N/A', NULL),
(292, 'ECRC_01', 'ECRC - Santhome', '2018/BSR/031', 'Sunny panja', 'N/A', 'BCGT_01', 'N/A', NULL, '2018-12-22', 'Voluntary', '38', 'Male', 'Hindu', 'West Bengal', 'Dewilpur', 'N/A', 'Payla wanan', 'Palthola', 'Howrah', 'Urban', 'N/A', 'A Mole on left check', 'Unemployed', '5', 'Bengali', 'N/A', 'N/A', 'N/A', 'N/A', 'Nuclear', 'N/A', 'N/A', 'MGR college', '1', 'N/A', NULL),
(293, 'SH_01', 'Shared Housing (Urban)', '2018/BSR/032', 'Arulanathan', 'N/A', 'BCGT_01', 'N/A', NULL, '2018-12-28', 'Voluntary', '45', 'Male', 'Christian', 'Tamil nadu', 'Kodaikanal', 'N/A', 'Ambatturai', 'N/A', 'N/A', 'Rural', 'Single', 'A tattoo as in left hand', 'Unemployed', '6', 'Tamil', 'No', 'N/A', 'N/A', '60', 'Joint Family', '5', 'N/A', 'ECRC - Kovalam', '1', 'N/A', NULL),
(295, 'ECRC_01', 'ECRC - Santhome', '2019/BSR/002', 'Bidut', 'N/A', 'BCGT_01', 'N/A', NULL, '2019-02-07', 'Voluntary', '58', 'Male', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Hindi', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Near santhome', '1', 'N/A', NULL),
(319, 'ECRC_01', 'ECRC - Santhome', '2019/BSR/026', 'Uma shankar', 'N/A', 'BCGT_01', 'N/A', NULL, '2019-09-04', 'Involuntary', '50', 'Male', 'Hindu', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Urban', 'N/A', 'N/A', 'N/A', 'N/A', 'Tamil', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'keezhkatalai,police station', '1', 'N/A', NULL),
(322, 'ECRC_01', 'ECRC - Santhome', '2019/BSR/029', 'Anil kumar', 'N/A', 'BCG_01', 'N/A', NULL, '2019-09-17', 'Voluntary', '47', 'Male', 'Hindu', 'Tamil nadu', 'N/A', 'Pollachi', 'N/A', 'N/A', 'N/A', 'Rural', 'Single', 'A black mole on right chest, A black mole left near ear', 'Skilled Worker', '12', 'Tamil', 'N/A', 'N/A', 'N/A', 'N/A', 'Nuclear', 'N/A', 'N/A', 'Reffered from Hope trust', '1', 'N/A', NULL),
(331, 'ECRC_01', 'ECRC - Santhome', '2019/BSR/038', 'Madhavan', 'N/A', 'BCGT_01', 'N/A', NULL, '2019-11-04', 'N/A', '25', 'Male', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Unemployed', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Saidapet', '1', 'N/A', NULL),
(333, 'ECRC_01', 'ECRC - Santhome', '2019/BSR/040', 'Murali dharan', 'N/A', 'BCGT_01', 'N/A', NULL, '2019-11-15', 'N/A', '30', 'Male', 'Hindu', 'N/A', 'Arammanai', 'Ramanadhapuram', 'N/A', 'N/A', 'Arammanai', 'N/A', 'Single', 'A black mole on for head above nose', 'Skilled worker', '10', 'Tamil', 'N/A', 'N/A', 'N/A', '5', 'Joint Family', '4', 'N/A', 'Poonamale', '1', 'N/A', NULL),
(335, 'ECRC_01', 'ECRC - Santhome', '2019/BSR/042', 'Parthiban', 'N/A', 'BCGT_01', 'N/A', NULL, '2019-11-19', 'Involuntary', '50', 'Male', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Mole on the right ARM', 'Skilled worker', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'T-12, Police station(Near panjob bank)', '1', 'N/A', NULL),
(338, 'ECRC_01', 'ECRC - Santhome', '2019/BSR/045', 'Raj Kumar', 'N/A', 'BCGT_01', 'N/A', NULL, '2019-12-06', 'Voluntary', '49', 'Male', 'Hindu', 'Tamil nadu', 'N/A', 'Chennai', 'N/A', 'N/A', 'N/A', 'Urban', 'Single', 'A black mole medial to right ripple and a Black mole medial to left nipple', 'Skilled worker', '13', 'Tamil', 'N/A', 'N/A', 'N/A', '1', 'Nuclear', '2', 'N/A', 'Tollgate- Thiruvettriyur', '1', 'N/A', NULL),
(341, 'ECRC_01', 'ECRC - Santhome', '2019/BSR/048', 'Kamal', 'N/A', 'BCGT_01', 'N/A', NULL, '2019-12-17', 'N/A', '35', 'Male', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'A mole on neck', 'N/A', '0', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(353, 'ECRC_01', 'ECRC - Santhome', '2020/BSR/012', 'Kishore Kumar', 'N/A', 'BCGT_01', 'BCG_02', NULL, '2020-02-13', 'N/A', '32', 'Male', 'Hindu', 'Tamil Nadu', 'Choolaimedu', 'Thiruvallur', 'Choolaimedu', 'N/A', 'N/A', 'Urban', 'Separated', 'A black mole to the right to left nipple', 'Skilled worker', '7', 'Tamil', 'Yes', 'Chennai', 'N/A', '24', 'Living Alone', '1', 'N/A', 'N/A', '1', 'N/A', NULL),
(356, 'ECRC_01', 'ECRC - Santhome', '2020/BSR/015', 'Saravanan', 'N/A', 'BCG_01', 'N/A', NULL, '2020-02-24', 'N/A', '49', 'Male', 'Hindu', 'Tamil Nadu', 'Ambathur', 'Thiruvallur', 'N/A', 'Ambattur', 'Teacher colony', 'Urban', 'Married', 'A small block mole an the right fovearm', 'Beggar', '8', 'Tamil', 'Yes', 'Kakalur,Thiruvallur', 'N/A', '120', 'Living Alone', '1', 'N/A', 'N/A', '1', 'N/A', NULL),
(357, 'ECRC_01', 'ECRC - Santhome', '2020/BSR/016', 'Rajesh', 'N/A', 'BCG_02', 'N/A', NULL, '2020-02-25', 'N/A', '24', 'Male', 'Hindu', 'Tamil Nadu', 'Porur', 'Thiruvallur', 'porur', 'N/A', 'N/A', 'Urban', 'Married', 'One block mole on the left palm', 'Skilled worker', '10', 'Tamil', 'Yes', 'Porur', 'N/A', '3', 'Living Alone', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(358, 'ECRC_01', 'ECRC - Santhome', '2020/BSR/017', 'Narayanan', 'N/A', 'BCG_01', 'N/A', NULL, '2020-02-28', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(360, 'ECRC_01', 'ECRC - Santhome', '2020/BSR/019', 'Chakrapani', 'N/A', 'BCG_02', 'N/A', NULL, '2020-03-14', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(363, 'ECRC_01', 'ECRC - Santhome', '2020/BSR/022', 'Durai', 'N/A', 'BCG_01', 'N/A', NULL, '2020-03-19', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(364, 'ECRC_01', 'ECRC - Santhome', '2020/BSR/023', 'Irfan', 'N/A', 'BCG_02', 'N/A', NULL, '2020-03-21', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(365, 'ECRC_03', 'ECRC - Mogappair', '2020/BSR/024', 'Kunal', 'N/A', 'BCG_69', 'N/A', NULL, '2020-03-22', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(366, 'ECRC_01', 'ECRC - Santhome', '2020/BSR/025', 'Vishal', 'N/A', 'BCG_02', 'N/A', NULL, '2020-03-29', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(368, 'ECRC_01', 'ECRC - Santhome', '2020/BSR/027', 'Hari', 'N/A', 'BCG_02', 'N/A', NULL, '2020-05-08', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(371, 'SH_02', 'Shared Housing (Rural)', 'R-03', 'Siddamma', 'Mudalaiah', 'BCGT_11', 'BCGT_12', NULL, '2015-10-13', 'Voluntary', '58', 'Female', 'Hindu', 'Tamil Nadu', 'Thiruporur', 'Kanchipuram', 'Thiruporur', 'Thiruporur', 'Thiruporur', 'Rural', 'Married', 'One mole in back,one mole in left side cheek,one wart in undereye.', 'Beggar', '6', 'Kannada', 'No', 'N/A', 'N/A', 'N/A', 'Nuclear', 'N/A', 'N/A', 'Nalam worker', '1', 'N/A', NULL),
(372, 'SH_02', 'Shared Housing (Rural)', 'R-04', 'Nandhu/Rajeshwari', 'Ramanadhan', 'BCG_27', 'BCG_28', NULL, '2015-10-16', 'N/A', '32', 'Female', 'Hindu', 'Tamil Nadu', 'Mahabalipuram', 'Kanchipuram', 'Mahabalipuram', 'Thirukazhikundram', 'Thirukazhikundram', 'Rural', 'Single', 'Mole and per scar in left side shoulder', 'Beggar', '10', 'Tamil', 'No', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '9840042060', 'Sethuraman', '1', 'N/A', NULL),
(379, 'SH_02', 'Shared Housing (Rural)', 'R-11', 'Kaveri', 'Krishnamoorthy', 'BCGT_10', 'N/A', NULL, '2016-03-30', 'Voluntary', '60', 'Female', 'Hindu', 'Tamil Nadu', 'Samiyavaram', 'Madurai', 'Madurai', 'Sameiyanallur', 'Sameiyanallur', 'Rural', 'Widowed', 'left hand 4th finger white patch', 'Beggar', '5', 'Tamil', 'Yes', 'Father: Chellappa Mudaliyuar and need search address', 'Mother: Chellammal', 'N/A', 'N/A', 'N/A', 'N/A', 'Dr. Shantha', '1', 'N/A', NULL),
(389, 'SH_02', 'Shared Housing (Rural)', 'R-21', 'Lakshmi', 'SriRam Naik', 'BCG_30', 'BCGT_14', NULL, '2016-08-25', 'Voluntary', '50', 'Female', 'Hindu', 'Andhra Pradesh', 'Adadakala palli', 'Ananthpur', 'Penakonda TQ', 'Penakonda TQ', 'Penakonda TQ', 'Urban', 'Widowed', 'One tattoo in right side forearm,pox scar in left side arm,mole in right and left side neck', 'Unemployed', 'N/A', 'Telugu', 'No', 'Husband died,no children -from Bangalore', 'N/A', 'N/A', 'Living Alone', '1', 'N/A', 'N/A', '1', 'N/A', NULL),
(395, 'SH_02', 'Shared Housing (Rural)', 'R-27', 'Rathna', 'Preethappa', 'BCGT_10', 'N/A', NULL, '2017-01-19', 'Voluntary', 'N/A', 'Female', 'Christian', 'Tamil Nadu', 'Kelambakkam', 'Kanchipuram', 'Thiruporur', 'Thiruporur', 'Kelambakkam', 'Rural', 'Single', 'Ledt side abdomen down one molar,left side thigh up down 2 molar', 'Unemployed', '12', 'Telugu', 'Yes', 'Bannahalli village,Malar/Bazeline ,Kolar dt,Karnataka', 'Muniyappa Brother-Rathnakka Relative ,Tekal post office', '4', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(406, 'ECRC_02', 'ECRC - Kovalam', 'R-38', 'Fathima', 'Musuf Gani', 'BCG_19', 'N/A', NULL, '2017-06-12', 'N/A', '56', 'Female', 'Muslim', 'Bihar', 'Adhapur', 'Buxar', 'Buxar block', 'Buxar block', 'Adhapur', 'Urban', 'Married', 'scar in left shoulder,and one scare in left thigh.', 'Beggar', 'N/A', 'Telugu', 'Yes', 'Son-Yakoob and Mohammad-Adhapur panchayet,BUXAR district,Patna,Bihar.Land mark: Baba Dharga', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Auto Driver Babu-ECRC - Kovalam', '1', 'N/A', NULL),
(408, 'ECRC_03', 'ECRC - Mogappair', 'R-40', 'Habiba', 'Tajudheen', 'BCG_03', 'BCG_04', NULL, '2017-07-08', 'Voluntary', '42', 'Female', 'Muslim', 'Tamil Nadu', 'Guduvanchery', 'Chennai', 'Guduvanchery', 'Guduvanchery', 'Guduvanchery main road', 'Urban', 'Widowed', 'One mole in left forearm,right wrist little bit bend', 'Beggar', '5', 'Tamil', 'Yes', 'Mathina-Salam Shaaibu(Mother in law)', 'No:8,7th street,Gandhi Nagar,Maraimalai nagar', '1', 'Joint Family', '5', '9444041716', 'Shared housing -staff Vaijayanthi', '1', 'N/A', NULL),
(415, 'ECRC_02', 'ECRC - Kovalam', 'R-47', 'Saritha/Lakshmi', 'Thangavel', 'BCG_19', 'N/A', NULL, '2017-11-16', 'Voluntary', '60', 'Female', 'Hindu', 'Tamil Nadu', 'Thiruvanmayur', 'Thiruvanmayur', 'Thiruvanmayur', 'Thiruvanmayur', 'Thiruvanmayur', 'Rural', 'Separated', 'N/A', 'Beggar', 'Illiterate', 'Tamil', 'No', 'N/A', 'N/A', 'N/A', 'Nuclear', '4', 'N/A', 'Mr.Siva -Resident of Besant nagar', '1', 'N/A', NULL),
(416, 'SH_02', 'Shared Housing (Rural)', 'R-48', 'Kenchamma', 'NK', 'BCGT_11', 'BCGT_12', NULL, '2017-11-16', 'Voluntary', '55', 'Female', 'Hindu', 'Karnataka', 'Arehalli', 'Hassan', 'Arehalli', 'Arehalli', 'Arehalli', 'N/A', 'Single', 'Tatoo in the right wrist', 'Beggar', '4', 'Tamil', 'No', 'Mr.Bhaivappe -father,Mr.Bhyakka -mother,Ayodhya Nagar house,Vijaya Nagar,Vidhhyanegesa,Bellari District,Karnataka', 'Jayalakshmi-own sister,.sells idlies at Bellari /Vijayanagar.', 'N/A', 'N/A', '4', 'N/A', 'N/A', '1', 'N/A', NULL),
(427, 'ECRC_03', 'ECRC - Mogappair', 'R-59', 'Suneetha', 'Matharam', 'BCG_09', 'N/A', NULL, '2018-01-29', 'N/A', '50', 'Female', 'Hindu', 'Haryana', 'Nadhari', 'Fathabad', 'Nadhari', 'Nadhari', 'Nadhari', 'N/A', 'Married', 'A black mole in the face right side ,below the eyes.', 'Beggar', 'Illiterate', 'Hindi', 'No', 'Ram Parker -Husband,Haryana', 'N/A', 'N/A', 'N/A', '5', 'N/A', 'Staff SH', '1', 'N/A', NULL),
(436, 'ECRC_03', 'ECRC - Mogappair', 'R-68', 'Indhra', 'N/A', 'BCG_09', 'N/A', NULL, '2018-05-12', 'InVoluntary', '28', 'Female', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(442, 'ECRC_02', 'ECRC - Kovalam', 'R-74', 'Mumtaj', 'Abdhul Rahaman', 'BCG_23', 'N/A', NULL, '2018-09-18', 'Voluntary', '45', 'Female', 'Muslim', 'N/A', 'Bathi Devangeri', 'N/A', 'N/A', 'N/A', 'Bhasha Nagar,Devanageri', 'Rural', 'Widowed', 'A black mole on her forehead', 'Beggar', 'Illiterate', 'Kannada, Urdu', 'No', 'Mr.Abdhul Rahaman-Bhasha Nagar,Devanegeri', 'Mr.Samudheen-Bathi Nagar,Devanageri', '12', 'N/A', '2', 'N/A', 'Gayathri and Kavitha', '1', 'N/A', NULL),
(450, 'ECRC_02', 'ECRC - Kovalam', 'R-82', 'Katheeja Begam', 'Nazir Ahammed', 'BCG_23', 'N/A', NULL, '2018-11-10', 'Voluntary', '35', 'Female', 'Muslim', 'Tamil Nadu', 'Chinna masoothi st', 'Chennai', 'Ponthamalli', 'N/A', 'Poonthamalli', 'Rural', 'Widowed', 'A black mole below to her right eye', 'Unemployed', '2', 'Tamil, Urdu', 'No', 'Nazir Ahammed (2nd Husband)', 'Kayaru Nisha (Sister), Chinna masoothi st,Kumaranchavadi,Poonthamalli', '3', 'N/A', 'N/A', '7299436930', 'Nalam worker', '1', 'N/A', NULL),
(454, 'ECRC_03', 'ECRC - Mogappair', 'R-86', 'Bala', 'N/A', 'BCG_09', 'N/A', NULL, '2019-02-11', 'Voluntary', '45', 'Female', 'Hindu', 'N/A', 'Old washermenpet', 'Chennai', 'N/A', 'N/A', 'Singarathottam', 'Urban', 'Single', 'Mole in left side neck', 'N/A', '12', 'Tamil, Telugu', 'Yes', 'Azhagusamy chettiar, old washermenpet-singarathottam', 'N/A', 'N/A', 'N/A', 'N/A', '9940675494', 'Banyan Staff', '1', 'N/A', NULL),
(456, 'ECRC_02', 'ECRC - Kovalam', 'R-88', 'Shanmuga Vadivu', 'Krishna reddy', 'BCG_18', 'N/A', NULL, '2019-02-16', 'Voluntary', '55', 'Female', 'Hindu', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Rural', 'Widowed', 'N/A', 'Worked in lawyer\'s house', 'Illiterate', 'Tamil', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '4', 'N/A', 'Nalam Mobilizer', '1', 'N/A', NULL),
(460, 'ECRC_02', 'ECRC - Kovalam', 'R-92', 'Salma', 'Nafeez', 'BCG_18', 'N/A', NULL, '2019-09-08', 'Voluntary', '43', 'Female', 'Muslim', 'Karnataka', 'N/A', 'Bangalore', 'N/A', 'N/A', 'N/A', 'N/A', 'Separated', 'Two small black moles', 'Unskilled Worker', '5', 'Hindi', 'Yes', 'Nafeez, near Zaiba Shadi Mahal, Tannery road, Bangalore', 'N/A', '4', 'Nuclear', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(468, 'ECRC_03', 'ECRC - Mogappair', '7', 'Sugunamma', 'N/A', 'BCG_03', 'BCG_04', NULL, '1994-02-07', 'N/A', '50', 'Female', 'Hindu', 'Tamil Nadu', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Urban ', 'Widowed', 'N/A', 'N/A', 'Primary', 'Tamil', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(487, 'ECRC_03', 'ECRC - Mogappair', '26', 'Prema', 'N/A', 'BCG_05', 'N/A', NULL, '1994-11-30', 'N/A', '26', 'Female', 'N/A', 'Karnataka', 'Bangalore- cont Bangalore', 'Bangalore', 'N/A', 'N/A', 'N/A', 'Urban', 'Single', 'N/A', 'N/A', 'Secondary ', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(493, 'SH_02', 'Shared Housing (Rural)', '32', 'Vanisree', 'N/A', 'BCGT_10', 'N/A', NULL, '1994-06-20', 'N/A', '42', 'Female', 'N/A', 'Tamil Nadu', 'Chennai', 'Chennai', 'N/A', 'Aminjikarai', 'Chennai', 'N/A', 'Married', 'N/A', 'N/A', 'N/A', 'Tamil', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(501, 'SH_01', 'Shared Housing (Urban)', '40', 'Sargunamma', 'N/A', 'BCG_12', 'N/A', NULL, '1995-04-03', 'N/A', '40', 'Female', 'Hindu', 'Tamil Nadu', 'Chennai', 'Chennai', 'N/A', 'Gopalapuram', 'Chennai', 'N/A', 'Married', 'N/A', 'N/A', '9', 'Tamil', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(506, 'CGH_01', 'CGH (BALM)', '45', 'Susiladevi', 'N/A', 'BCG_23', 'N/A', NULL, '1995-04-06', 'N/A', 'N/A', 'Female', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Married', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(516, 'SH_03', 'Shared Housing (Trichy)', '55', 'Marychitra', 'N/A', 'BCG_34', 'N/A', NULL, '1995-05-18', 'N/A', '25', 'Female', 'Hindu', 'N/A', 'N/A', 'not able to identify', 'N/A', 'N/A', 'N/A', 'N/A', 'Single', 'N/A', 'N/A', 'Secondary ', 'Tamil', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(518, 'SH_02', 'Shared Housing (Rural)', '57', 'Karleena', 'N/A', 'BCG_29', 'BCGT_13', NULL, '1994-07-09', 'N/A', '45', 'Female', 'Christian', 'Tamil Nadu', 'Purasavakkam,Chennai', 'Chennai', 'N/A', 'N/A', 'N/A', 'Urban', 'N/A', 'N/A', 'N/A', '9', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(531, 'SH_01', 'Shared Housing (Urban)', '70', 'Pooja', 'N/A', 'BCG_03', 'BCG_04', NULL, '1998-07-23', 'N/A', '35', 'Female', 'N/A', 'Maharashtra', 'Ratnagiri', 'ratnagiri', 'N/A', 'N/A', 'N/A', 'N/A', 'Married', 'N/A', 'N/A', 'Secondary ', 'Hindi', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(540, 'SH_02', 'Shared Housing (Rural)', '79', 'Radha', 'N/A', 'BCG_26', 'BCGT_08', NULL, '1994-07-28', 'N/A', '45', 'Female', 'N/A', 'Tamil Nadu', 'SadaiyaUnknownuppam, chennai', 'Chennai', 'N/A', 'N/A', 'N/A', 'N/A', 'Married', 'N/A', 'N/A', 'Secondary ', 'Tamil', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '69434879', 'N/A', '1', 'N/A', NULL),
(586, 'ECRC_02', 'ECRC - Kovalam', '125', 'Tamil Rani', 'N/A', 'BCG_03', 'BCG_04', NULL, '1996-06-21', 'N/A', '37', 'Female', 'N/A', 'Tamil Nadu', 'krishnagiri, TK. Dharmapuri. ', 'Dharmapuri', 'N/A', 'N/A', 'N/A', 'Rural', 'Single', 'N/A', 'N/A', 'Secondary ', 'Tamil', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '9786643415', 'N/A', '1', 'N/A', NULL),
(598, 'SH_01', 'Shared Housing (Urban)', '137', 'Meena Bai', 'N/A', 'BCG_08', 'BCGT_02', NULL, '1996-09-30', 'N/A', '40', 'Female', 'Christian', 'Uttar Pradesh', 'Banaras', 'Banaras', 'N/A', 'N/A', 'N/A', 'N/A', 'Married', 'N/A', 'N/A', 'Secondary ', 'Gujarati', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(601, 'SH_01', 'Shared Housing (Urban)', '140', 'Priyavardhani', 'N/A', 'BCG_03', 'BCG_04', NULL, '1996-10-29', 'N/A', '42', 'Female', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Married', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(621, 'CGH_01', 'CGH (BALM)', '160', 'Majibunisa', 'N/A', 'BCG_21', 'N/A', NULL, '1997-03-07', 'N/A', '40', 'Female', 'Muslim', 'Tamil Nadu', 'Mount road, chennai', 'Chennai', 'N/A', 'N/A', 'N/A', 'N/A', 'Married', 'N/A', 'N/A', 'Higher Secondary', 'Hindi', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(628, 'ECRC_03', 'ECRC - Mogappair', '167', 'Kalpana', 'N/A', 'BCG_05', 'N/A', NULL, '1997-04-26', 'N/A', '20', 'Female', 'Hindu', 'N/A', 'Bombay', 'Mumbau', 'N/A', 'N/A', 'N/A', 'N/A', 'Separated', 'N/A', 'N/A', 'Secondary ', 'Tamil', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '8082328399, 9952038808', 'N/A', '1', 'N/A', NULL),
(648, 'CGH_01', 'CGH (BALM)', '187', 'Anna Mary', 'N/A', 'BCG_21', 'N/A', NULL, '1994-10-15', 'N/A', '53', 'Female', 'Christian', 'Tamil Nadu', 'N/A', 'Trichy', 'N/A', 'N/A', 'N/A', 'N/A', 'Single', 'N/A', 'N/A', 'Graduate', 'Tamil', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '0431-2616010', 'N/A', '1', 'N/A', NULL),
(654, 'ECRC_03', 'ECRC - Mogappair', '193', 'Leela', 'N/A', 'BCG_06', 'BCG_07', NULL, '1997-09-20', 'N/A', '40', 'Female', 'Hindu', 'Tamil Nadu', 'Triplicane (husband)', 'Chennai', 'N/A', 'N/A', 'N/A', 'Urban', 'Live-In Relationship', 'N/A', 'N/A', 'Graduate', 'Tamil', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(665, 'SH_01', 'Shared Housing (Urban)', '204', 'Selvi', 'N/A', 'ILO_01', 'N/A', NULL, '1997-11-24', 'N/A', '25', 'Female', 'N/A', 'Tamil Nadu', 'Orphan nal', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Single', 'N/A', 'N/A', 'N/A', 'Tamil', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(669, 'ECRC_02', 'ECRC - Kovalam', '208', 'Kanaga ', 'Kumari', 'BCG_18', 'N/A', NULL, '1998-07-01', 'N/A', '20', 'Female', 'N/A', 'N/A', 'Ulovapadu Mandalam, Prakasam dt', 'Prakasam', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Telugu', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '958599-239482', 'N/A', '1', 'N/A', '150'),
(697, 'SH_01', 'Shared Housing (Urban)', '236', 'Geetha', 'N/A', 'BCG_06', 'BCG_12', NULL, '1998-08-05', 'N/A', 'N/A', 'Female', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(702, 'SH_02', 'Shared Housing (Rural)', '241', 'Rani', 'Actor ', 'BCGT_11', 'N/A', NULL, '1998-08-28', 'N/A', '55', 'Female', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(706, 'CGH_01', 'CGH (BALM)', '245', 'Anuradha', 'N/A', 'BCG_22', 'N/A', NULL, '1994-12-03', 'N/A', '30', 'Female', 'Hindu', 'Tamil Nadu', 'Mint, CHENNAI', 'Chennai', 'N/A', 'N/A', 'N/A', 'N/A', 'Single', 'N/A', 'N/A', 'Primary', 'Tamil', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(731, 'SH_03', 'Shared Housing (Trichy)', '270', 'Lakshmi ', 'Mary', 'BCG_34', 'N/A', NULL, '1998-12-22', 'N/A', '36', 'Female', 'Christian', 'Tamil Nadu', 'Keelakurchi, Ponmalai', 'Trichy', 'N/A', 'N/A', 'N/A', 'Rural', 'Single', 'N/A', 'N/A', 'N/A', 'Tamil', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(734, 'SH_03', 'Shared Housing (Trichy)', '273', 'Mari Lakshmi', 'N/A', 'BCG_35', 'N/A', NULL, '1994-12-28', 'N/A', '48', 'Female', 'Hindu', 'Tamil Nadu', 'Annanagar,Chennai', 'Chennai', 'N/A', 'N/A', 'N/A', 'Urban', 'N/A', 'N/A', 'N/A', 'N/A', 'Tamil', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(740, 'SH_03', 'Shared Housing (Trichy)', '279', 'Dhanalakshmi', 'N/A', 'BCG_34', 'N/A', NULL, '1995-01-03', 'N/A', '48', 'Female', 'N/A', 'N/A', 'Manampu chavady, tanjore', 'Tanjore', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(754, 'ECRC_03', 'ECRC - Mogappair', '293', 'Soniya', 'N/A', 'BCG_08', 'N/A', NULL, '1999-03-03', 'N/A', '32', 'Female', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Single', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(759, 'SH_02', 'Shared Housing (Rural)', '298', 'Vasantha ', 'Rani', 'BCG_29', 'BCGT_13', NULL, '1995-01-18', 'N/A', '54', 'Female', 'Hindu', 'Tamil Nadu', 'Kodaikanal', 'Dindigul', 'N/A', 'N/A', 'N/A', 'N/A', 'Married', 'N/A', 'N/A', 'N/A', 'Tamil', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(768, 'SH_03', 'Shared Housing (Trichy)', '307', 'Lilly', 'N/A', 'BCG_36', 'BCGT_17', NULL, '1995-01-26', 'N/A', '50', 'Female', 'Hindu', 'Tamil Nadu', 'Teynampet,Chennai', 'Chennai', 'N/A', 'N/A', 'N/A', 'N/A', 'Married', 'N/A', 'N/A', 'Primary', 'Tamil', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(781, 'SH_01', 'Shared Housing (Urban)', '320', 'Pushpa', 'N/A', 'BCG_12', 'N/A', NULL, '1999-03-08', 'N/A', '40', 'Female', 'Hindu', 'Tamil Nadu', ' kilpauk, Chennai', 'Chennai', 'N/A', 'N/A', 'N/A', 'Urban', 'Single', 'N/A', 'N/A', 'Primary', 'Tamil', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(788, 'SH_01', 'Shared Housing (Urban)', '327', 'Jennifer', 'N/A', 'ILO_01', 'N/A', NULL, '1995-02-11', 'N/A', 'N/A', 'Female', 'N/A', 'N/A', 'Phalaknama', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(791, 'SH_01', 'Shared Housing (Urban)', '330', 'Rukmani', 'N/A', 'BCG_13', 'BCG_14', NULL, '1999-10-15', 'N/A', '65', 'Female', 'Hindu', 'Tamil Nadu', 'Mambalam, Chennai', 'Chennai', 'N/A', 'N/A', 'N/A', 'Urban', 'Widowed', 'N/A', 'N/A', 'N/A', 'Tamil', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '04426700744, 26705486', 'N/A', '1', 'N/A', NULL),
(802, 'SH_03', 'Shared Housing (Trichy)', '341', 'Kaliamma', 'N/A', 'BCG_35', 'N/A', NULL, '1995-02-23', 'N/A', '50', 'Female', 'Hindu', 'N/A', 'Usulampatti, marudhe', 'Ooty', 'N/A', 'N/A', 'N/A', 'N/A', 'Married', 'N/A', 'N/A', 'Primary', 'Tamil', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(836, 'ECRC_03', 'ECRC - Mogappair', '375', 'Rani', 'N/A', 'BCG_03', 'BCG_04', NULL, '2000-06-20', 'N/A', '35', 'Female', 'Hindu', 'Tamil Nadu', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Rural', 'Single', 'N/A', 'N/A', 'Illiterate', 'Tamil', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(846, 'SH_01', 'Shared Housing (Urban)', '385', 'Por selvi', 'N/A', 'ILO_01', 'N/A', NULL, '2000-05-08', 'N/A', '22', 'Female', 'N/A', 'Tamil Nadu', 'Muthuraman Patti,Virudunagar.', 'Virudunagar', 'N/A', 'N/A', 'N/A', 'Rural', 'Single', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(857, 'CGH_01', 'CGH (BALM)', '396', 'Dhanalakshmi', 'N/A', 'BCG_22', 'N/A', NULL, '1995-04-10', 'N/A', '52', 'Female', 'Hindu', 'N/A', '(Ennore)  Tambaram', 'Kanchipuram', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Telugu', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(863, 'SH_03', 'Shared Housing (Trichy)', '402', 'Shanthy ', 'Xavier', 'BCG_37', 'BCGT_18', NULL, '1995-04-16', 'N/A', '40', 'Female', 'Hindu', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Single', 'N/A', 'N/A', 'N/A', 'Tamil', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(867, 'ECRC_03', 'ECRC - Mogappair', '406', 'Lokamma', 'N/A', 'BCG_06', 'BCG_07', NULL, '2000-11-14', 'N/A', '40', 'Female', 'N/A', 'Tamil Nadu', 'Villivakkam,Chennai.', 'Chennai', 'N/A', 'N/A', 'N/A', 'N/A', 'Single', 'N/A', 'N/A', 'N/A', 'Tamil', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(884, 'SH_01', 'Shared Housing (Urban)', '423', 'Seethalamma', 'N/A', 'BCG_14', 'BCG_15', NULL, '2000-12-31', 'N/A', '38', 'Female', 'N/A', 'Andhra Pradesh', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Single', 'N/A', 'N/A', 'N/A', 'Telugu', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(889, 'ECRC_03', 'ECRC - Mogappair', '428', 'Uma', 'N/A', 'BCG_08', 'N/A', NULL, '2001-11-01', 'N/A', '32', 'Female', 'Christian', 'Tamil Nadu', 'Otteri, Chennai', 'Chennai', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Secondary ', 'Tamil', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(891, 'SH_03', 'Shared Housing (Trichy)', '430', 'Latha (Mute)', 'N/A', 'BCGT_19', 'BCGT_20', NULL, '2001-01-26', 'N/A', '29', 'Female', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(906, 'SH_02', 'Shared Housing (Rural)', '445', 'Selvarani', 'N/A', 'BCGT_05', 'BCGT_06', NULL, '2001-03-14', 'N/A', '45', 'Female', 'Hindu', 'Tamil Nadu', 'ONGO', 'Chennai', 'N/A', 'N/A', 'N/A', 'N/A', 'Married', 'N/A', 'N/A', 'Primary', 'Tamil', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(919, 'SH_02', 'Shared Housing (Rural)', '458', 'Chellammal', 'N/A', 'BCG_27', 'BCG_28', NULL, '2001-04-20', 'N/A', '50', 'Female', 'N/A', 'Tamil Nadu', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Married', 'N/A', 'N/A', 'N/A', 'Tamil', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(940, 'ECRC_03', 'ECRC - Mogappair', '479', 'Shenbagavalli', 'N/A', 'BCG_03', 'BCG_04', NULL, '2001-12-06', 'N/A', 'N/A', 'Female', 'N/A', 'Tamil Nadu', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'urban', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(947, 'SH_03', 'Shared Housing (Trichy)', '486', 'Chandan', 'N/A', 'BCG_37', 'BCGT_18', NULL, '1995-06-25', 'N/A', '45', 'Female', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Married', 'N/A', 'N/A', 'N/A', 'Hindi', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(986, 'ECRC_03', 'ECRC - Mogappair', '525', 'Shangubai', 'N/A', 'BCG_05', 'N/A', NULL, '2001-08-22', 'N/A', '50', 'Female', 'Hindu', 'Tamil Nadu', 'TB', 'Chennai', 'N/A', 'N/A', 'N/A', 'N/A', 'Widowed', 'N/A', 'N/A', 'N/A', 'Hindi', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(992, 'SH_03', 'Shared Housing (Trichy)', '531', 'Manimekalai', 'N/A', 'BCG_38', 'N/A', NULL, '1995-08-04', 'N/A', '45', 'Female', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Single', 'N/A', 'N/A', 'Primary', 'Tamil', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(1014, 'SH_02', 'Shared Housing (Rural)', '553', 'Deiva Jothi', 'N/A', 'BCG_32', 'N/A', NULL, '1995-08-26', 'N/A', '58', 'Female', 'Hindu', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Single', 'N/A', 'N/A', 'N/A', 'Tamil', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(1025, 'SH_02', 'Shared Housing (Rural)', '564', 'Nagavalli', 'N/A', 'BCG_32', 'N/A', NULL, '2001-10-13', 'N/A', 'N/A', 'Female', 'N/A', 'Andhra Pradesh', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(1033, 'SH_02', 'Shared Housing (Rural)', '572', 'Vasanthi', 'N/A', 'BCGT_19', 'BCGT_20', NULL, '1995-09-12', 'N/A', '42', 'Female', 'Hindu', 'N/A', 'Kasthuribai nagar, Tambaram', 'Kanchipuram', 'N/A', 'N/A', 'N/A', 'N/A', 'Single', 'N/A', 'N/A', 'N/A', 'Tamil', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(1041, 'SH_01', 'Shared Housing (Urban)', '580', 'Vanitha', 'Shyamala', 'BCG_14', 'BCG_15', NULL, '1970-01-01', 'N/A', '41', 'Female', 'N/A', 'Karnataka', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Single', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(1055, 'SH_02', 'Shared Housing (Rural)', '594', 'Bindhu ', 'Elis', 'BCG_27', 'BCG_28', NULL, '1995-10-01', 'N/A', '61', 'Female', 'Hindu', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Married', 'N/A', 'N/A', 'Secondary ', 'Tamil', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(1062, 'CGH_01', 'CGH (BALM)', '601', 'Angamma', 'N/A', 'BCG_21', 'N/A', NULL, '2001-11-12', 'N/A', '35', 'Female', 'Hindu', 'Tamil Nadu', 'Vellore', 'Vellore', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Tamil', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(1066, 'ECRC_03', 'ECRC - Mogappair', '605', 'Allah', 'N/A', 'BCG_05', 'N/A', NULL, '2001-12-19', 'N/A', '40', 'Female', 'Hindu', 'West Bengal', 'Kowtala', 'KOLKATA', 'N/A', 'N/A', 'N/A', 'N/A', 'Married', 'N/A', 'N/A', 'N/A', 'Hindi', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(1073, 'SH_01', 'Shared Housing (Urban)', '612', 'Ramla ', 'Mary', 'BCG_12', 'N/A', NULL, '2001-12-24', 'N/A', '45', 'Female', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Single', 'N/A', 'N/A', 'Secondary ', 'Tamil', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(1083, 'SH_02', 'Shared Housing (Rural)', '622', 'Sandhya', 'N/A', 'BCG_31', 'N/A', NULL, '2002-03-04', 'N/A', 'N/A', 'Female', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(1100, 'ECRC_03', 'ECRC - Mogappair', '639', 'Anitha', 'N/A', 'BCG_03', 'BCG_04', NULL, '2002-01-01', 'N/A', '22', 'Female', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(1115, 'CGH_01', 'CGH (BALM)', '654', 'Manju', 'N/A', 'BCG_22', 'N/A', NULL, '2002-02-20', 'N/A', '59', 'Female', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Tamil', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(1134, 'ECRC_03', 'ECRC - Mogappair', '673', 'Abiba ', 'Ayusha', 'BCG_06', 'BCG_07', NULL, '1995-11-29', 'N/A', '52', 'Female', 'Muslim', 'N/A', 'Gandhi Nagar, Pallavaram', 'Kanchipuram', 'N/A', 'N/A', 'N/A', 'N/A', 'Married', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(1144, 'ECRC_02', 'ECRC - Kovalam', '683', 'Jayarani', 'N/A', 'BCG_30', 'BCGT_14', NULL, '1995-12-08', 'N/A', 'N/A', 'Female', 'Hindu', 'Tamil Nadu', 'PeruUnknownallathur,Chennai', 'Chennai', 'N/A', 'N/A', 'N/A', 'N/A', 'Married', 'N/A', 'N/A', 'Primary', 'Tamil', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '9940552128 hersister mr', 'N/A', '1', 'N/A', NULL),
(1157, 'ECRC_03', 'ECRC - Mogappair', '696', 'Anamika', 'N/A', 'BCG_06', 'BCG_07', NULL, '2002-06-03', 'N/A', 'N/A', 'Female', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(1173, 'SH_02', 'Shared Housing (Rural)', '712', 'Halima ', 'Begum', 'BCGT_04', 'N/A', NULL, '1995-12-31', 'N/A', '60', 'Female', 'N/A', 'N/A', 'Nagapatinam', 'Nagapatinam', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Tamil', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(1176, 'SH_01', 'Shared Housing (Urban)', '715', 'Vijayarani', 'N/A', 'BCG_12', 'N/A', NULL, '2002-11-07', 'N/A', '30', 'Female', 'Hindu', 'Tamil Nadu', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Rural', 'Single', 'N/A', 'N/A', 'Secondary ', 'Tamil', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(1188, 'SH_01', 'Shared Housing (Urban)', '727', 'Megala', 'N/A', 'BCG_12', 'N/A', NULL, '2002-08-08', 'N/A', '25', 'Female', 'Hindu', 'Tamil Nadu', 'Kannadasan Nagar,Chennai', 'Chennai', 'N/A', 'N/A', 'N/A', 'N/A', 'Single', 'N/A', 'N/A', 'Secondary ', 'Tamil', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(1219, 'ECRC_03', 'ECRC - Mogappair', '758', 'Bagyamary', 'N/A', 'BCG_03', 'BCG_04', NULL, '2002-06-09', 'N/A', '27', 'Female', 'N/A', 'Tamil Nadu', 'Thiruvottriyur,Chennai', 'Chennai', 'N/A', 'N/A', 'N/A', 'N/A', 'Married', 'N/A', 'N/A', 'N/A', 'Tamil', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '9940568431', 'N/A', '1', 'N/A', NULL),
(1221, 'SH_03', 'Shared Housing (Trichy)', '760', 'Malathi', 'N/A', 'BCG_38', 'N/A', NULL, '2002-09-09', 'N/A', '45', 'Female', 'Hindu', 'N/A', 'Basorani palk, kolkatta', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Married', 'N/A', 'N/A', 'Secondary ', 'Tamil', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '28554787', 'N/A', '1', 'N/A', NULL),
(1236, 'SH_03', 'Shared Housing (Trichy)', '774', 'Mary', 'Shantini', 'BCG_37', 'BCGT_18', NULL, '1996-02-15', 'N/A', '40', 'Female', 'Christian', 'Tamil Nadu', 'Manali new town,Chennai', 'Chennai', 'N/A', 'N/A', 'N/A', 'N/A', 'Married', 'N/A', 'N/A', 'Higher Secondary', 'Tamil', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '5941860', 'N/A', '1', 'N/A', NULL),
(1239, 'ECRC_02', 'ECRC - Kovalam', '777', 'Gloria  (named by Banyan)', 'N/A', 'BCG_20', 'N/A', NULL, '2002-04-10', 'N/A', '80', 'Female', 'Hindu', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Single', 'N/A', 'N/A', 'N/A', 'Malayalam', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(1246, 'SH_03', 'Shared Housing (Trichy)', '784', 'Stella Mary', 'N/A', 'BCG_34', 'N/A', NULL, '1996-02-22', 'N/A', '30', 'Female', 'Christian', 'N/A', 'Bangalore', 'Bangalore', 'N/A', 'N/A', 'N/A', 'N/A', 'Single', 'N/A', 'N/A', 'N/A', 'Tamil', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(1266, 'SH_01', 'Shared Housing (Urban)', '804', 'Shanti ', 'Akila', 'BCG_08', 'BCGT_02', NULL, '2002-03-11', 'N/A', '31', 'Female', 'N/A', 'Haryana', 'Badsa', 'Jhajjar', 'N/A', 'N/A', 'Bahadurgarh', 'N/A', 'Married', 'N/A', 'N/A', 'Primary', 'Telugu', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(1278, 'SH_02', 'Shared Housing (Rural)', '816', 'Amudha', 'N/A', 'BCG_29', 'BCGT_13', NULL, '1996-03-19', 'N/A', '70', 'Female', 'N/A', 'Tamil Nadu', 'Narasingapuram Village', 'Tiruvannamalai', 'N/A', 'Keel Villivanam Post', 'Vandavasi', 'N/A', 'Married', 'N/A', 'N/A', 'N/A', 'Tamil', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(1288, 'SH_03', 'Shared Housing (Trichy)', '826', 'Deivani', 'N/A', 'BCG_34', 'N/A', NULL, '1996-03-27', 'N/A', '60', 'Female', 'Hindu', 'N/A', 'Poogga magai', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Separated', 'N/A', 'N/A', 'Secondary ', 'Tamil', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(1301, 'SH_02', 'Shared Housing (Rural)', '839', 'Sunanda', 'N/A', 'BCG_32', 'N/A', NULL, '1996-04-07', 'N/A', '48', 'Female', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Married', 'N/A', 'N/A', 'N/A', 'Telugu', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(1303, 'SH_02', 'Shared Housing (Rural)', '841', 'Manjuli', 'N/A', 'BCGT_15', 'BCGT_16', NULL, '1996-04-09', 'N/A', '50', 'Female', 'N/A', 'N/A', 'hopponbau karikand village', 'BALLIA', 'N/A', 'N/A', 'N/A', 'N/A', 'Married', 'N/A', 'N/A', 'N/A', 'Hindi', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(1306, 'SH_02', 'Shared Housing (Rural)', '844', 'Nanthini', 'N/A', 'BCGT_15', 'BCGT_16', NULL, '1996-04-12', 'N/A', '48', 'Female', 'N/A', 'Tamil Nadu', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Urban', 'N/A', 'N/A', 'N/A', 'N/A', 'Hindi', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(1308, 'SH_02', 'Shared Housing (Rural)', '846', 'Narasammal', 'N/A', 'BCGT_10', 'N/A', NULL, '1996-04-14', 'N/A', '50', 'Female', 'Muslim', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Telugu', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(1318, 'SH_03', 'Shared Housing (Trichy)', '856', 'Jesima ', 'Begum', 'BCGT_19', 'BCGT_20', NULL, '2002-12-25', 'N/A', '25', 'Female', 'Christian', 'N/A', 'Pudukkotai', 'Pudukkotai', 'N/A', 'N/A', 'N/A', 'N/A', 'Divorced', 'N/A', 'N/A', 'N/A', 'Tamil', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(1330, 'ECRC_03', 'ECRC - Mogappair', '868', 'Lakshmi ', 'Prema', 'BCG_06', 'BCG_07', NULL, '1996-05-03', 'N/A', '47', 'Female', 'Hindu', 'Tamil Nadu', 'Maduravoyal,Chennai', 'Chennai', 'N/A', 'N/A', 'N/A', 'N/A', 'Single', 'N/A', 'N/A', 'Primary', 'Tamil', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(1333, 'SH_02', 'Shared Housing (Rural)', '871', 'Mangayakarasi', 'N/A', 'BCG_24', 'N/A', NULL, '2003-01-13', 'N/A', '22', 'Female', 'Hindu', 'Tamil Nadu', 'Mugappair,Chennai', 'Chennai', 'N/A', 'N/A', 'N/A', 'N/A', 'Married', 'N/A', 'N/A', 'Primary', 'Tamil', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '4426880732', 'N/A', '1', 'N/A', NULL),
(1337, 'SH_02', 'Shared Housing (Rural)', '875', 'Vijaya', 'N/A', 'BCG_18', 'N/A', NULL, '2003-01-21', 'N/A', '40', 'Female', 'Hindu', 'Tamil Nadu', 'N/A', 'Chennai', 'N/A', 'N/A', 'N/A', 'N/A', 'Single', 'N/A', 'N/A', 'Illiterate', 'Telugu', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(1350, 'CGH_01', 'CGH (BALM)', '888', 'Mangala', 'N/A', 'BCG_21', 'N/A', NULL, '2003-01-31', 'N/A', '45', 'Female', 'N/A', 'Tamil Nadu', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Rural', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(1351, 'SH_02', 'Shared Housing (Rural)', '889', 'Daisy', 'N/A', 'BCG_26', 'BCGT_08', NULL, '2003-04-02', 'N/A', '30', 'Female', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Single', 'N/A', 'N/A', 'Higher Secondary', 'Tamil', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(1356, 'CGH_01', 'CGH (BALM)', '894', 'Shanthi ', 'Senthil', 'BCG_21', 'N/A', NULL, '2003-09-02', 'N/A', '39', 'Female', 'Christian', 'Tamil Nadu', 'Thiru vi ka Nagar, Chennai', 'Chennai', 'N/A', 'N/A', 'N/A', 'N/A', 'Married', 'N/A', 'N/A', 'Graduate', 'Tamil', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(1362, 'CGH_01', 'CGH (BALM)', '900', 'Ashachandrika ', 'Devi', 'BCG_22', 'N/A', NULL, '2003-12-02', 'N/A', '34', 'Female', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(1367, 'ECRC_03', 'ECRC - Mogappair', '905', 'Swarna', 'Sulochana', 'BCG_06', 'BCG_07', NULL, '2003-02-15', 'N/A', 'N/A', 'Female', 'N/A', 'N/A', 'ONGO', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '04426700744, 26705486', 'N/A', '1', 'N/A', NULL),
(1376, 'ECRC_03', 'ECRC - Mogappair', '914', 'Meena', 'N/A', 'BCG_06', 'BCG_07', NULL, '2003-02-03', 'N/A', '41', 'Female', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Married', 'N/A', 'N/A', 'N/A', 'Hindi', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(1378, 'ECRC_03', 'ECRC - Mogappair', '916', 'Varalakshmi', 'N/A', 'BCG_05', 'N/A', NULL, '2003-03-03', 'N/A', 'N/A', 'Female', 'N/A', 'Andhra Pradesh', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(1398, 'CGH_01', 'CGH (BALM)', '936', 'Iskamma', 'N/A', 'BCG_21', 'N/A', NULL, '2003-03-22', 'N/A', '28', 'Female', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Tamil', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(1411, 'SH_02', 'Shared Housing (Rural)', '949', 'Gowri/ Shakila', 'N/A', 'BCG_30', 'BCGT_14', NULL, '1996-07-02', 'N/A', '47', 'Female', 'N/A', 'N/A', 'Town hall, Vellore', 'Vellore', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Secondary ', 'Tamil', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '222356, 222456', 'N/A', '1', 'N/A', NULL),
(1414, 'SH_03', 'Shared Housing (Trichy)', '952', 'Padmini ', 'Rasukutty', 'BCG_36', 'BCGT_17', NULL, '1996-07-04', 'N/A', '46', 'Female', 'N/A', 'N/A', 'Barani sangar street, pollachi', 'Pollachi', 'N/A', 'N/A', 'N/A', 'N/A', 'Married', 'N/A', 'N/A', 'N/A', 'Tamil', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(1420, 'ECRC_03', 'ECRC - Mogappair', '958', 'Rani ', 'Baskar', 'BCG_06', 'BCG_07', NULL, '1996-07-08', 'N/A', '45', 'Female', 'Hindu', 'Tamil Nadu', 'Mugapair east, Chennai', 'Chennai', 'N/A', 'N/A', 'N/A', 'N/A', 'Married', 'N/A', 'N/A', 'N/A', 'Tamil', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '9884771756, 988460546, 9551040015', 'N/A', '1', 'N/A', NULL),
(1424, 'SH_03', 'Shared Housing (Trichy)', '962', 'Pongodi', 'N/A', 'BCG_34', 'N/A', NULL, '1996-07-11', 'N/A', '30', 'Female', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Secondary ', 'Tamil', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(1427, 'SH_01', 'Shared Housing (Urban)', '965', 'Kalavathi', 'N/A', 'BCG_13', 'BCG_14', NULL, '2003-10-04', 'N/A', '50', 'Female', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Hindi', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL);
INSERT INTO `clients_active` (`id`, `center_code`, `center_name`, `client_file_number`, `client_fname`, `client_lname`, `client_cgiver1`, `client_cgiver2`, `client_cgiver3`, `client_doa`, `client_adm_type`, `client_age`, `client_gender`, `client_religion`, `client_state`, `client_city`, `client_district`, `client_ps`, `client_post`, `client_taluk`, `client_location`, `client_marital`, `client_idmark`, `client_occupation`, `client_education`, `client_language`, `client_relative_avl`, `client_relative_address_1`, `client_relative_address_2`, `client_daff`, `client_family_type`, `client_family_size`, `client_family_phone`, `client_referred`, `client_active`, `client_discharged`, `client_height`) VALUES
(1429, 'SH_02', 'Shared Housing (Rural)', '967', 'Jayanthi', 'N/A', 'BCGT_11', 'N/A', NULL, '1996-07-14', 'N/A', '30', 'Female', 'Hindu', 'Tamil Nadu', 'Mylapore,Chennai', 'Chennai', 'N/A', 'N/A', 'N/A', 'N/A', 'Single', 'N/A', 'N/A', 'Higher Secondary', 'Tamil', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(1433, 'ECRC_03', 'ECRC - Mogappair', '971', 'Kosaladevi', 'N/A', 'BCG_03', 'BCG_04', NULL, '2003-04-14', 'N/A', '57', 'Female', 'N/A', 'N/A', 'Chennayavaram', 'Thirunelveli', 'N/A', 'N/A', 'N/A', 'N/A', 'Married', 'N/A', 'N/A', 'Illiterate', 'Tamil', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(1460, 'ECRC_03', 'ECRC - Mogappair', '998', 'Sumathi', 'N/A', 'BCG_05', 'N/A', NULL, '2003-05-15', 'N/A', '37', 'Female', 'Hindu', 'N/A', 'Bengarpet ', 'Vellore', 'N/A', 'N/A', 'N/A', 'N/A', 'Single', 'N/A', 'N/A', 'Secondary ', 'Tamil', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(1464, 'SH_02', 'Shared Housing (Rural)', '1002', 'Tamilarasi', 'N/A', 'BCG_24', 'N/A', NULL, '1996-08-13', 'N/A', '50', 'Female', 'N/A', 'N/A', 'Kadurach, mayaladuthurai', 'mayaladuthurai', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Tamil', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(1471, 'SH_02', 'Shared Housing (Rural)', '1009', 'Fathima', 'N/A', 'BCG_30', 'BCGT_14', NULL, '2003-05-26', 'N/A', '55', 'Female', 'Muslim', 'N/A', 'ONGO', 'Hydrabad', 'N/A', 'N/A', 'N/A', 'N/A', 'Married', 'N/A', 'N/A', 'N/A', 'Hindi', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '04426700744, 26705486', 'N/A', '1', 'N/A', NULL),
(1489, 'ECRC_03', 'ECRC - Mogappair', '1027', 'Salma', 'N/A', 'BCG_03', 'N/A', NULL, '2003-06-20', 'N/A', '16', 'Female', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Married', 'N/A', 'N/A', 'Primary', 'Hindi', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(1533, 'SH_02', 'Shared Housing (Rural)', '1071', 'Kamakshi', 'N/A', 'BCG_26', 'BCGT_08', NULL, '1996-10-05', 'N/A', '50', 'Female', 'Hindu', 'Tamil Nadu', 'Chennai', 'Chennai', 'N/A', 'Choolaimedu', 'Chennai', 'N/A', 'Married', 'N/A', 'N/A', 'Primary', 'Tamil', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(1560, 'ECRC_03', 'ECRC - Mogappair', '1098', 'Shenaz / Nagmma', 'N/A', 'BCG_05', 'N/A', NULL, '2003-03-09', 'N/A', '30', 'Female', 'Muslim', 'Tamil Nadu', 'Valasaravakam, Virugambakam,Chennai', 'Chennai', 'N/A', 'N/A', 'N/A', 'N/A', 'Married', 'N/A', 'N/A', 'Primary', 'Tamil', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(1562, 'ECRC_03', 'ECRC - Mogappair', '1100', 'Neha / Heera', 'N/A', 'BCG_05', 'N/A', NULL, '2003-06-09', 'N/A', '38', 'Female', 'N/A', 'Bihar', 'Gohani village', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Married', 'N/A', 'N/A', 'Illiterate', 'Hindi', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(1569, 'SH_01', 'Shared Housing (Urban)', '1107', 'Neeliama', 'N/A', 'BCG_03', 'N/A', NULL, '2003-09-19', 'N/A', '32', 'Female', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Hindi', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(1582, 'SH_02', 'Shared Housing (Rural)', '1120', 'Jayalakshmi', 'N/A', 'BCGT_11', 'BCGT_12', NULL, '1996-11-13', 'N/A', '40', 'Female', 'Hindu', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Single', 'N/A', 'N/A', 'N/A', 'Tamil', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(1590, 'SH_03', 'Shared Housing (Trichy)', '1128', 'Sharadha ', 'Sushma', 'BCG_39', 'BCGT_19', NULL, '2003-09-10', 'N/A', '30', 'Female', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Married', 'N/A', 'N/A', 'N/A', 'Hindi', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(1593, 'SH_01', 'Shared Housing (Urban)', '1131', 'Chennamma', 'N/A', 'ILO_01', 'N/A', NULL, '2003-05-12', 'N/A', 'N/A', 'Female', 'Hindu', 'N/A', 'Prodathur, Kaddapa dist', 'Kadappa', 'N/A', 'N/A', 'N/A', 'N/A', 'Single', 'N/A', 'N/A', 'Secondary ', 'Telugu', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '9989411763', 'N/A', '1', 'N/A', NULL),
(1606, 'SH_03', 'Shared Housing (Trichy)', '1144', 'Rajeswari', 'N/A', 'BCG_37', 'BCGT_18', NULL, '2003-10-27', 'N/A', '25', 'Female', 'Hindu', 'Tamil Nadu', 'Kallakurichi', 'Villupuram', 'N/A', 'N/A', 'N/A', 'N/A', 'Single', 'N/A', 'N/A', 'Secondary ', 'Tamil', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '9786855580', 'N/A', '1', 'N/A', NULL),
(1609, 'ECRC_03', 'ECRC - Mogappair', '1147', 'Swarna', 'N/A', 'BCG_08', 'N/A', NULL, '1996-12-07', 'N/A', '52', 'Female', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Married', 'N/A', 'N/A', 'N/A', 'Telugu', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(1613, 'SH_02', 'Shared Housing (Rural)', '1151', 'Soorthi', 'N/A', 'BCGT_15', 'BCGT_16', NULL, '1996-12-10', 'N/A', '50', 'Female', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Married', 'N/A', 'N/A', 'Illiterate', 'Hindi', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(1633, 'SH_02', 'Shared Housing (Rural)', '1171', 'Saroja ', 'Devi', 'BCGT_04', 'N/A', NULL, '1996-12-27', 'N/A', '58', 'Female', 'Hindu', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Married', 'N/A', 'N/A', 'Higher Secondary', 'Tamil', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(1652, 'SH_02', 'Shared Housing (Rural)', '1190', 'Sreeja', 'N/A', 'BCG_29', 'BCGT_13', NULL, '1997-01-10', 'N/A', '55', 'Female', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Hindi', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(1668, 'SH_03', 'Shared Housing (Trichy)', '1206', 'Jayalakshmi', 'N/A', 'BCG_36', 'BCGT_17', NULL, '1997-01-21', 'N/A', '42', 'Female', 'Hindu', 'N/A', 'Santosh puram,tambaram,Chennai', 'Kanchipuram', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Tamil', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(1681, 'CGH_01', 'CGH (BALM)', '1219', 'Shanthi', 'Thulukanam', 'BCG_23', 'N/A', NULL, '2004-01-27', 'N/A', '45', 'Female', 'Hindu', 'Tamil Nadu', 'Tondiarpet,Chennai', 'Chennai', 'N/A', 'N/A', 'N/A', 'N/A', 'Single', 'N/A', 'N/A', 'N/A', 'Tamil', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(1696, 'CGH_01', 'CGH (BALM)', '1234', 'Anthonyamma', 'N/A', 'BCG_21', 'N/A', NULL, '2004-02-13', 'N/A', '43', 'Female', 'Christian', 'N/A', 'kilmanavaoor', 'Vellore', 'N/A', 'N/A', 'N/A', 'N/A', 'Single', 'N/A', 'N/A', 'N/A', 'Tamil', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(1698, 'CGH_01', 'CGH (BALM)', '1236', 'Shirely', 'N/A', 'BCG_22', 'N/A', NULL, '1997-02-12', 'N/A', '55', 'Female', 'Christian', 'N/A', 'L.C.Road, Kolkata park cincil', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Higher Secondary', 'English', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(1712, 'ECRC_03', 'ECRC - Mogappair', '1250', 'Kumudha', 'N/A', 'BCG_08', 'N/A', NULL, '2004-02-26', 'N/A', '32', 'Female', 'Hindu', 'Tamil Nadu', 'Chetpet,( below the bridge) Chennai', 'Chennai', 'N/A', 'N/A', 'N/A', 'N/A', 'Single', 'N/A', 'N/A', 'Primary', 'Tamil', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(1725, 'SH_02', 'Shared Housing (Rural)', '1263', 'Girija', 'N/A', 'BCGT_11', 'BCGT_12', NULL, '1997-03-01', 'N/A', '60', 'Female', 'Hindu', 'Tamil Nadu', 'Lingichetty street,Parrys,Chennai', 'chennai', 'N/A', 'N/A', 'N/A', 'N/A', 'Single', 'N/A', 'N/A', 'N/A', 'Tamil', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(1732, 'CGH_01', 'CGH (BALM)', '1270', 'Jyothi', 'N/A', 'BCG_22', 'N/A', NULL, '1997-03-07', 'N/A', 'N/A', 'Female', 'N/A', 'N/A', 'Panchanepatty,Dindigul', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(1741, 'SH_02', 'Shared Housing (Rural)', '1279', 'Muthamma', 'N/A', 'BCG_32', 'N/A', NULL, '1997-03-15', 'N/A', '40', 'Female', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Tamil', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(1746, 'SH_02', 'Shared Housing (Rural)', '1284', 'Latha', 'N/A', 'BCG_25', 'BCGT_07', NULL, '2004-07-04', 'N/A', '30', 'Female', 'Hindu', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Single', 'N/A', 'N/A', 'Illiterate', 'Hindi', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(1757, 'SH_01', 'Shared Housing (Urban)', '1295', 'Bhagyalakshmi', 'N/A', 'ILO_01', 'N/A', NULL, '1997-03-25', 'N/A', '31', 'Female', 'Hindu', 'Tamil Nadu', 'N/A', 'chennai', 'N/A', 'N/A', 'N/A', 'N/A', 'Single', 'N/A', 'N/A', 'Secondary ', 'Tamil', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(1758, 'CGH_01', 'CGH (BALM)', '1296', 'Kamala', 'N/A', 'BCG_23', 'N/A', NULL, '1997-03-26', 'N/A', '45', 'Female', 'Hindu', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Secondary ', 'Tamil', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(1760, 'SH_02', 'Shared Housing (Rural)', '1298', 'Sundhari', 'N/A', 'BCG_25', 'BCGT_07', NULL, '2004-04-25', 'N/A', '27', 'Female', 'Hindu', 'N/A', 'Raja Gopalpuram, Naidupetta', 'Nellore', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Tamil', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(1767, 'SH_02', 'Shared Housing (Rural)', '1305', 'Mariamma', 'N/A', 'BCG_31', 'N/A', NULL, '1997-04-02', 'N/A', '42', 'Female', 'N/A', 'N/A', 'Thuvaramkurichi, Pattukottai', 'pattukotai', 'N/A', 'N/A', 'N/A', 'N/A', 'Married', 'N/A', 'N/A', 'N/A', 'Tamil', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(1775, 'SH_02', 'Shared Housing (Rural)', '1313', 'Vijaya/old', 'N/A', 'BCG_29', 'BCGT_13', NULL, '2004-09-05', 'N/A', '30', 'Female', 'Hindu', 'Tamil Nadu', 'Chennai', 'Chennai', 'N/A', 'Red Hills', 'Chennai', 'N/A', 'Married', 'N/A', 'N/A', 'N/A', 'Tamil', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(1794, 'SH_01', 'Shared Housing (Urban)', '1332', 'Kudisa', 'Khadija', 'BCG_08', 'BCGT_02', NULL, '2004-02-06', 'N/A', '58', 'Female', 'Christian', 'N/A', 'Grokhpur jilla, Dhuvayur gauv', 'GORAKPUR', 'N/A', 'N/A', 'N/A', 'N/A', 'Married', 'N/A', 'N/A', 'Illiterate', 'Bengali', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(1803, 'SH_02', 'Shared Housing (Rural)', '1341', 'Sugantha', 'N/A', 'BCG_25', 'BCGT_07', NULL, '2004-09-06', 'N/A', '35', 'Female', 'Hindu', 'Tamil Nadu', 'Madaravoyal,Chennai', 'Chennai', 'N/A', 'N/A', 'N/A', 'N/A', 'Married', 'N/A', 'N/A', 'Secondary ', 'Tamil', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(1804, 'ECRC_03', 'ECRC - Mogappair', '1342', 'Srilakshmi', 'N/A', 'BCG_08', 'N/A', NULL, '2004-11-06', 'N/A', '25', 'Female', 'N/A', 'N/A', 'Jayanagar colony, cuddapah', 'Cuddappah', 'N/A', 'N/A', 'N/A', 'N/A', 'Single', 'N/A', 'N/A', 'Secondary ', 'Telugu', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '242133', 'N/A', '1', 'N/A', NULL),
(1812, 'ECRC_03', 'ECRC - Mogappair', '1350', 'Vasuki/ Saroja', 'N/A', 'BCG_06', 'BCG_07', NULL, '2004-06-17', 'N/A', '60', 'Female', 'Hindu', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Widowed', 'N/A', 'N/A', 'Illiterate', 'Tamil', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(1814, 'SH_02', 'Shared Housing (Rural)', '1352', 'Geetha ', 'Raman', 'BCGT_10', 'N/A', NULL, '1997-05-06', 'N/A', '42', 'Female', 'Hindu', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Kannada', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(1815, 'SH_01', 'Shared Housing (Urban)', '1353', 'Bindhu', 'N/A', 'ILO_01', 'N/A', NULL, '2004-06-21', 'N/A', '45', 'Female', 'Hindu', 'Uttar Pradesh', 'Chaurachari, banaras', 'Varanasi', 'N/A', 'N/A', 'N/A', 'N/A', 'Married', 'N/A', 'N/A', 'N/A', 'Hindi', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(1830, 'SH_02', 'Shared Housing (Rural)', '1368', 'Nimoni/ Yesodha', 'N/A', 'BCG_31', 'N/A', NULL, '1997-05-16', 'N/A', '40', 'Female', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Married', 'N/A', 'N/A', 'N/A', 'Hindi', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(1839, 'SH_02', 'Shared Housing (Rural)', '1377', 'Chengamma', 'N/A', 'BCG_31', 'N/A', NULL, '1997-05-25', 'N/A', '65', 'Female', 'N/A', 'N/A', 'Supna pillai street, pattukotai', 'pattukotai', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Tamil', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(1853, 'SH_02', 'Shared Housing (Rural)', '1391', 'Kelen/ Karitha Sharitha', 'N/A', 'BCGT_15', 'BCGT_16', NULL, '1997-06-06', 'N/A', '53', 'Female', 'Hindu', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Married', 'N/A', 'N/A', 'N/A', 'Hindi', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(1866, 'SH_03', 'Shared Housing (Trichy)', '1404', 'Malliga', 'N/A', 'N/A', 'N/A', NULL, '2004-08-20', 'N/A', '23', 'Female', 'N/A', 'N/A', 'Geminthathanur,Odukkalampatti,Jeyamkondan', 'Thanjavur', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Tamil', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(1871, 'SH_02', 'Shared Housing (Rural)', '1409', 'Ammu', 'N/A', 'BCG_25', 'BCGT_07', NULL, '1997-06-19', 'N/A', '40', 'Female', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Primary', 'Hindi', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(1879, 'ECRC_02', 'ECRC - Kovalam', '1417', 'Kalaiselvi', 'N/A', 'BCG_19', 'N/A', NULL, '1997-06-26', 'N/A', '45', 'Female', 'Hindu', 'Tamil Nadu', 'Palalathamoilker, samiyar thottam street', 'chennai', 'N/A', 'N/A', 'N/A', 'Rural', 'Single', 'N/A', 'N/A', 'N/A', 'Tamil', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(1887, 'ECRC_03', 'ECRC - Mogappair', '1425', 'Mehrunisha', 'N/A', 'BCG_08', 'N/A', NULL, '1997-07-01', 'N/A', '58', 'Female', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Hindi', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(1891, 'ECRC_03', 'ECRC - Mogappair', '1429', 'Nalini', 'N/A', 'BCG_03', 'BCG_04', NULL, '2004-09-22', 'N/A', '20', 'Female', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Tamil', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(1897, 'SH_02', 'Shared Housing (Rural)', '1435', 'Divya ', 'Lakshmi', 'BCGT_05', 'BCGT_06', NULL, '2004-02-10', 'N/A', '40', 'Female', 'Hindu', 'Tamil Nadu', 'Jammalapakkam kovali, Nellore', 'Nellore', 'N/A', 'N/A', 'N/A', 'N/A', 'Married', 'N/A', 'N/A', 'Primary', 'Telugu', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(1899, 'ECRC_03', 'ECRC - Mogappair', '1437', 'Kasthuri', 'N/A', 'BCG_06', 'BCG_07', NULL, '2004-04-10', 'N/A', '40', 'Female', 'Hindu', 'Tamil Nadu', 'Korrukupetai,Chennai', 'Chennai', 'N/A', 'N/A', 'N/A', 'N/A', 'Widowed', 'N/A', 'N/A', 'N/A', 'Tamil', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(1905, 'SH_02', 'Shared Housing (Rural)', '1443', 'Bala ', 'Balram', 'BCGT_09', 'N/A', NULL, '1997-07-13', 'N/A', '68', 'Female', 'Hindu', 'Tamil Nadu', 'Muthamizh nagar, Chennai', 'chennai', 'N/A', 'N/A', 'N/A', 'N/A', 'Single', 'N/A', 'N/A', 'Post Graduate', 'Tamil', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(1918, 'ECRC_02', 'ECRC - Kovalam', '1456', 'Shakthi', 'N/A', 'BCG_19', 'N/A', NULL, '1997-07-24', 'N/A', '60', 'Female', 'Hindu', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Single', 'N/A', 'N/A', 'Secondary ', 'Mute', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(1920, 'SH_02', 'Shared Housing (Rural)', '1458', 'Ramani', 'N/A', 'BCGT_09', 'N/A', NULL, '1997-07-26', 'N/A', 'N/A', 'Female', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(1935, 'SH_01', 'Shared Housing (Urban)', '1473', 'Jayanthi', 'N/A', 'BCG_12', 'N/A', NULL, '2005-07-07', 'N/A', '30', 'Female', 'Hindu', 'N/A', 'Chrompet,Chennai', 'KANCHIPURAM', 'N/A', 'N/A', 'N/A', 'N/A', 'Married', 'N/A', 'N/A', 'N/A', 'Tamil', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(1948, 'SH_01', 'Shared Housing (Urban)', '1486', 'Kuppamma', 'Rukmani', 'BCG_13', 'BCG_14', NULL, '2005-10-19', 'N/A', '70', 'Female', 'N/A', 'Tamil Nadu', 'kundrathur,Chennai', 'Chennai', 'N/A', 'N/A', 'N/A', 'N/A', 'Married', 'N/A', 'N/A', 'Illiterate', 'Tamil', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(1958, 'SH_02', 'Shared Housing (Rural)', '1496', 'Usha ', 'Nandhini', 'BCG_25', 'BCGT_07', NULL, '1997-08-25', 'N/A', '39', 'Female', 'Hindu', 'Tamil Nadu', 'Triplicane, chennai', 'chennai', 'N/A', 'N/A', 'N/A', 'N/A', 'Single', 'N/A', 'N/A', 'Secondary ', 'Tamil', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(1965, 'SH_01', 'Shared Housing (Urban)', '1503', 'Eashwari', 'N/A', 'BCG_06', 'BCG_08', NULL, '2006-10-04', 'N/A', '32', 'Female', 'N/A', 'Tamil Nadu', 'kilpauk garden,Chennai', 'Chennai', 'N/A', 'N/A', 'N/A', 'N/A', 'Married', 'N/A', 'N/A', 'Primary', 'Tamil', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(1978, 'SH_03', 'Shared Housing (Trichy)', '1516', 'Kalaiselvi', 'N/A', 'N/A', 'N/A', NULL, '2006-05-09', 'N/A', '21', 'Female', 'Hindu', 'Tamil Nadu', 'Red hills,Chennai', 'Chennai', 'N/A', 'N/A', 'N/A', 'N/A', 'Single', 'N/A', 'N/A', 'Graduate', 'Tamil', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '9380605007', 'N/A', '1', 'N/A', NULL),
(1985, 'SH_02', 'Shared Housing (Rural)', '1523', 'Sujatha', 'N/A', 'BCG_24', 'N/A', NULL, '2007-01-03', 'N/A', '55', 'Female', 'Hindu', 'Tamil Nadu', 'Chengalpattu', 'Chennai', 'N/A', 'N/A', 'N/A', 'N/A', 'Separated', 'N/A', 'N/A', 'Graduate', 'Tamil', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(1986, 'ECRC_03', 'ECRC - Mogappair', '1524', 'Gowri', 'N/A', 'BCG_06', 'BCG_07', NULL, '2007-03-15', 'N/A', '60', 'Female', 'N/A', 'N/A', 'Referred to ONGO', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Tamil', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(1987, 'SH_03', 'Shared Housing (Trichy)', '1525', 'Bhawani', 'N/A', 'BCG_36', 'BCGT_17', NULL, '2007-03-23', 'N/A', '28', 'Female', 'Hindu', 'N/A', 'pc, Kovalam', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Single', 'N/A', 'N/A', 'Illiterate', 'Telugu', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(1994, 'ECRC_03', 'ECRC - Mogappair', '1532', 'Mythili', 'N/A', 'BCG_05', 'BCG_09', NULL, '2007-05-06', 'N/A', '21', 'Female', 'Hindu', 'Tamil Nadu', 'Triplicane, chennai', 'Chennai', 'N/A', 'N/A', 'N/A', 'N/A', 'Single', 'N/A', 'N/A', 'Secondary ', 'Tamil', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(1997, 'SH_03', 'Shared Housing (Trichy)', '1535', 'Bindu', 'N/A', 'BCG_08', 'BCGT_02', NULL, '2006-12-24', 'N/A', '30', 'Female', 'N/A', 'Tamil Nadu', 'Mangadu,Chennai', 'Chennai', 'N/A', 'N/A', 'N/A', 'N/A', 'Married', 'N/A', 'N/A', 'N/A', 'Tamil', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(2027, 'ECRC_03', 'ECRC - Mogappair', '1565', 'Sonia', 'N/A', 'BCG_09', 'N/A', NULL, '2008-06-27', 'N/A', '21', 'Female', 'Hindu', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Married', 'N/A', 'N/A', 'N/A', 'Mute', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(2030, 'SH_02', 'Shared Housing (Rural)', '1568', 'Ranganayaki ', 'N/A', 'BCGT_09', 'N/A', NULL, '1997-10-07', 'N/A', '60', 'Female', 'Hindu', 'Tamil Nadu', 'Aduthurai', 'Perambalur', 'N/A', 'N/A', 'Veppur', 'N/A', 'Widowed', 'N/A', 'N/A', 'Secondary ', 'Tamil', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(2040, 'SH_02', 'Shared Housing (Rural)', '1578', 'Akoliyamma', 'N/A', 'BCG_33', 'N/A', NULL, '2009-01-21', 'N/A', '20', 'Female', 'Christian', 'Bangladesh', 'Jollapur', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Married', 'N/A', 'N/A', 'Illiterate', 'Bengali', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(2044, 'SH_03', 'Shared Housing (Trichy)', '1582', 'Nagu', 'N/A', 'BCG_38', 'N/A', NULL, '2009-04-24', 'N/A', '52', 'Female', 'N/A', 'Tamil Nadu', 'Trichy', 'Trichy', 'N/A', 'Jeeva Nagar', 'Trichy', 'N/A', 'Married', 'N/A', 'N/A', 'Secondary ', 'Tamil', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(2050, 'SH_02', 'Shared Housing (Rural)', '1588', 'Mageshwari', 'N/A', 'BCG_30', 'BCGT_14', NULL, '2009-07-09', 'N/A', '34', 'Female', 'Hindu', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Secondary ', 'Tamil', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(2060, 'ECRC_03', 'ECRC - Mogappair', '1598', 'Kalavathy ', 'Rattan', 'BCG_06', 'BCG_07', NULL, '2010-09-12', 'N/A', '65', 'Female', 'N/A', 'Maharashtra', 'ONGO', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Married', 'N/A', 'N/A', 'Illiterate', 'Hindi', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '04426700744, 26705486', 'N/A', '1', 'N/A', NULL),
(2064, 'SH_01', 'Shared Housing (Urban)', '1602', 'Saraswathi', 'N/A', 'BCG_17', 'BCGT_03', NULL, '2010-11-05', 'N/A', '35', 'Female', 'N/A', 'Tamil Nadu', 'Meenambakkam,Chennai', 'Chennai', 'N/A', 'N/A', 'N/A', 'N/A', 'Single', 'N/A', 'N/A', 'Illiterate', 'Tamil', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(2065, 'ECRC_03', 'ECRC - Mogappair', '1603', 'Mithra', 'N/A', 'BCG_08', 'N/A', NULL, '2010-12-10', 'N/A', '35', 'Female', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Mute', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(2068, 'SH_01', 'Shared Housing (Urban)', '1606', 'Gajani', 'N/A', 'BCG_14', 'BCG_15', NULL, '2011-02-23', 'N/A', '40', 'Female', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Married', 'N/A', 'N/A', 'N/A', 'Telugu', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(2072, 'SH_01', 'Shared Housing (Urban)', '1610', 'Vimala', 'N/A', 'BCG_13', 'BCG_14', NULL, '2011-04-15', 'N/A', '30', 'Female', 'N/A', 'N/A', 'Sellur, Madurai', 'Madurai', 'N/A', 'N/A', 'N/A', 'N/A', 'Separated', 'N/A', 'N/A', 'Higher Secondary', 'Tamil', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(2079, 'SH_02', 'Shared Housing (Rural)', '1617', 'Latha', 'Mittu', 'BCG_33', 'N/A', NULL, '2011-05-06', 'N/A', '45', 'Female', 'Hindu', 'Tamil Nadu', 'Kellys, Chennai', 'Chennai', 'N/A', 'N/A', 'N/A', 'N/A', 'Widowed', 'N/A', 'N/A', 'Primary', 'Tamil', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(2081, 'SH_01', 'Shared Housing (Urban)', '1619', 'Mariam ', 'Swami', 'BCG_05', 'N/A', NULL, '2011-05-31', 'N/A', '39', 'Female', 'Hindu', 'Tamil Nadu', 'N/A', 'Chennai', 'N/A', 'N/A', 'N/A', 'N/A', 'Separated', 'N/A', 'N/A', 'N/A', 'Hindi', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(2088, 'SH_02', 'Shared Housing (Rural)', '1626', 'Rudhra', 'N/A', 'BCGT_15', 'BCGT_16', NULL, '2011-08-01', 'N/A', '42', 'Female', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Married', 'N/A', 'N/A', 'N/A', 'Hindi', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(2091, 'ECRC_03', 'ECRC - Mogappair', '1629', 'Samrudh', 'N/A', 'BCG_05', 'N/A', NULL, '2011-08-31', 'N/A', '31', 'Female', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Married', 'N/A', 'N/A', 'N/A', 'Tamil', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(2105, 'SH_01', 'Shared Housing (Urban)', '1643', 'Rupa', 'N/A', 'ILO_01', 'N/A', NULL, '2012-06-14', 'N/A', '40', 'Female', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Married', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(2106, 'SH_03', 'Shared Housing (Trichy)', '1644', 'Bhanumathi', 'N/A', 'BCG_38', 'N/A', NULL, '2012-06-26', 'N/A', '25', 'Female', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Married', 'N/A', 'N/A', 'N/A', 'Tamil', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(2107, 'SH_03', 'Shared Housing (Trichy)', '1645', 'Nalini', 'N/A', 'BCG_39', 'BCGT_19', NULL, '2012-07-18', 'N/A', '40', 'Female', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Graduate', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(2116, 'ECRC_03', 'ECRC - Mogappair', '1654', 'Vijayalakshmi', 'N/A', 'BCG_05', 'BCG_09', NULL, '2013-01-08', 'N/A', 'N/A', 'Female', 'N/A', 'Tamil Nadu', 'N/A', 'Chennai', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(2120, 'ECRC_03', 'ECRC - Mogappair', '1658', 'Saheena', 'N/A', 'BCG_08', 'BCG_09', NULL, '2013-04-03', 'N/A', '35', 'Female', 'Muslim', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Hindi', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(2123, 'SH_02', 'Shared Housing (Rural)', '1661', 'Pattammal', 'N/A', 'BCG_27', 'BCG_28', NULL, '2013-04-12', 'N/A', 'N/A', 'Female', 'Hindu', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Tamil', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(2133, 'SH_01', 'Shared Housing (Urban)', '1671', 'Vijaya', 'N/A', 'BCG_14', 'BCG_15', NULL, '2013-05-18', 'N/A', '30', 'Female', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Single', 'N/A', 'N/A', 'N/A', 'Telugu', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(2138, 'SH_01', 'Shared Housing (Urban)', '1676', 'Padma', 'N/A', 'BCG_17', 'BCGT_03', NULL, '2013-07-03', 'N/A', '40', 'Female', 'Hindu', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Married', 'N/A', 'N/A', 'N/A', 'Telugu', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(2159, 'CGH_01', 'CGH (BALM)', '1697', 'Srividhya', 'N/A', 'BCG_22', 'N/A', NULL, '2014-02-22', 'N/A', 'N/A', 'Female', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(2162, 'SH_02', 'Shared Housing (Rural)', '1700', 'Malliga', 'N/A', 'BCG_26', 'BCGT_08', NULL, '2014-02-24', 'N/A', '44', 'Female', 'N/A', 'Tamil Nadu', 'N/A', 'Chennai', 'Unknown', 'Kambar street', 'Anna nagar', 'N/A', 'N/A', 'A mole on the left nose, A mole on the left showlder', 'N/A', 'N/A', 'Tamil', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(2186, 'SH_02', 'Shared Housing (Rural)', '1724', 'Gloria', 'Vasanthi', 'BCG_24', 'N/A', NULL, '2014-11-21', 'Involuntary', '55', 'Female', 'N/A', 'Tamil Nadu', 'N/A', 'N/A', 'Unknown', 'Unknown', 'Unknown', 'Urban', 'N/A', 'A Mole on her left eye', 'N/A', 'N/A', 'Tamil', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Banyan Staff', '1', 'N/A', NULL),
(2196, 'SH_02', 'Shared Housing (Rural)', '1734', 'Uma', 'Maheshwari', 'BCGT_11', 'BCGT_12', NULL, '2015-01-02', 'N/A', '32', 'Female', 'Hindu', 'Tamil Nadu', 'N/A', 'Chennai', 'Unknown', 'Santhome', 'Chennai', 'Urban', 'Single', 'A scar on right cheek', 'N/A', '7', 'Tamil', 'Yes', 'N/A', 'N/A', '4', 'Nuclear', '4', 'N/A', 'Public', '1', 'N/A', NULL),
(2209, 'SH_03', 'Shared Housing (Trichy)', '1747', 'Lakshmi', 'N/A', 'BCGT_19', 'BCGT_20', NULL, '2015-04-13', 'Involuntary', '50', 'Female', 'Hindu', 'Tamil Nadu', 'N/A', 'N/A', 'Unknown', 'Unknown', 'Unknown', 'Rural', 'Married', 'A black mole on cheek', 'Agricultural labourer', 'Illiterate', 'Tamil', 'No', 'N/A', 'N/A', 'N/A', 'Nuclear', '2', 'N/A', 'Community', '1', 'N/A', NULL),
(2220, 'SH_03', 'Shared Housing (Trichy)', '1758', 'Nisha', 'Banu', 'BCG_35', 'N/A', NULL, '2015-06-02', 'Involuntary', '40', 'Female', 'Hindu', 'Tamil Nadu', 'PuliyaUnknownodi', 'Theni', 'Unknown', 'Unknown', 'Unknown', 'Rural', 'Married', 'A mole on the neck', 'UNemployed', 'N/A', 'Tamil, Hindi', 'Yes', 'PuliyaUnknownudi', 'N/A', '90', 'N/A', 'N/A', 'N/A', 'Community', '1', 'N/A', NULL),
(2231, 'ECRC_03', 'ECRC - Mogappair', '1769', 'Thanjaiamma', 'N/A', 'BCG_08', 'BCG_09', NULL, '2015-07-31', 'Involuntary', '50', 'Female', 'Hindu', 'Tamil Nadu', 'Muthupattalam', 'Chennai', 'Alanthur', 'Unknown', 'Unknown', 'Urban', 'N/A', 'N/A', 'Unemployed', '4', 'Tamil', 'Yes', 'N/A', 'N/A', '90', 'N/A', '1', 'N/A', 'Public', '1', 'N/A', NULL),
(2232, 'SH_02', 'Shared Housing (Rural)', '1770', 'Prema', 'N/A', 'BCGT_05', 'BCGT_06', NULL, '2015-08-05', 'N/A', '55', 'Female', 'Hindu', 'Tamil Nadu', 'Chennai', 'Chennai', 'J3.Guindy', 'NK', 'NK', 'N/A', 'N/A', 'A black mole in left Check', 'N/A', 'N/A', 'Tamil', 'N/A', 'NK', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Public', '1', 'N/A', NULL),
(2238, 'ECRC_03', 'ECRC - Mogappair', '1776', 'Shakira', 'N/A', 'BCG_08', 'BCG_09', NULL, '2015-10-01', 'Involuntary', '32', 'Female', 'No Religion', 'Bihar', 'N/A', 'NR', 'NR', 'NR', 'NR', 'N/A', 'N/A', 'A mole on her right Cheek', 'N/A', 'N/A', 'Hindi', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Krishna(9994764871)', '1', 'N/A', NULL),
(2244, 'SH_01', 'Shared Housing (Urban)', '1782', 'Saraswathi', 'Premkumar', 'BCG_17', 'BCGT_03', NULL, '2015-11-12', 'Involuntary', '30', 'Female', 'Hindu', 'Tamil Nadu', 'Mannarkudi', 'Pattukottai', 'NK', 'NK', 'NK', 'Rural', 'Widowed', 'N/A', 'N/A', 'N/A', 'Tamil', 'Yes', 'Mananrkudi', 'N/A', '4', 'Joint Family', 'N/A', 'N/A', 'Public', '1', '43284', NULL),
(2247, 'SH_01', 'Shared Housing (Urban)', '1785', 'Deepika', 'N/A', 'BCG_12', 'BCG_13', NULL, '2015-11-29', 'Involuntary', 'N/A', 'Female', 'No Religion', 'N/A', 'N/A', 'NR', 'NR', 'NR', 'NR', 'N/A', 'N/A', 'A tattoo On her Right Wrist', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Public', '1', 'N/A', NULL),
(2252, 'ECRC_03', 'ECRC - Mogappair', '1790', 'Marikolunthu', 'N/A', 'BCG_05', 'N/A', NULL, '2015-12-10', 'Involuntary', '38', 'Female', 'HIndu', 'Tamil Nadu', 'N/A', 'NR', 'NR', 'NR', 'NR', 'N/A', 'Married', 'N/A', 'Beggar', 'N/A', 'Tamil', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(2260, 'ECRC_03', 'ECRC - Mogappair', '1798', 'Bibiya', 'Gandhi', 'BCG_10', 'N/A', NULL, '2016-01-06', 'Involuntary', '30', 'Female', 'Hindu', 'Chhattisgarh', 'Raigarh', 'NR', 'NR', 'NR', 'NR', 'Rural', 'Married', 'Blaack mole on right cheek', 'N/A', 'N/A', 'Hindi', 'No', 'N/A', 'N/A', 'N/A', 'N/A', '5', 'N/A', 'The Banyan Staff', '1', 'N/A', NULL),
(2261, 'ECRC_03', 'ECRC - Mogappair', '1799', 'Nirjalan ', 'Devi', 'BCG_06', 'BCG_07', NULL, '2016-01-09', 'Involuntary', '60', 'Female', 'Hindu', 'Uttar Pradesh', 'Delhi', 'NR', 'NR', 'NR', 'NR', 'Rural', 'N/A', 'Right Hand-disfigured', 'Beggar', 'N/A', 'Hindi', 'No', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Other Client', '1', 'N/A', NULL),
(2268, 'ECRC_03', 'ECRC - Mogappair', '1806', 'Geetha', 'N/A', 'BCG_03', 'N/A', NULL, '2016-01-26', 'Involuntary', '60', 'Female', 'Hindu', 'N/A', 'Ooty', 'Ooty', 'NR', 'NR', 'NR', 'Rural', 'Married', 'Small black mole on  the right Shoulder', 'Unemployed', '2', 'Tamil', 'N/A', 'N/A', 'N/A', 'N/A', 'Living Alone', 'N/A', 'N/A', 'The Banyan Staff', '1', 'N/A', NULL),
(2269, 'ECRC_03', 'ECRC - Mogappair', '1807', 'Chandra Kantha (PANNA)', 'N/A', 'BCG_08', 'N/A', NULL, '2016-02-04', 'Involuntary', '35', 'Female', 'N/A', 'N/A', 'NK', 'NK', 'NK', 'NK', 'NK', 'Rural', 'Married', 'Black mole on right side of neck', 'N/A', 'N/A', 'N/A', 'N/A', 'NK', 'NK', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(2271, 'ECRC_03', 'ECRC - Mogappair', '1809', 'Meera', 'N/A', 'BCG_06', 'BCG_07', NULL, '2016-02-13', 'Involuntary', '58', 'Female', 'No Religion', 'N/A', 'N/A', 'N/A', 'DNA', 'DNA', 'DNA', 'N/A', 'Single', '2 tattoos on her left foreaem', 'Beggar', 'N/A', 'Hindi', 'No', 'N/A', 'N/A', 'N/A', 'Living Alone', 'N/A', 'N/A', 'Community', '1', 'N/A', NULL),
(2282, 'ECRC_03', 'ECRC - Mogappair', '1820', 'Katibiya', 'N/A', 'BCG_06', 'BCG_07', NULL, '2016-03-18', 'N/A', '50', 'Female', 'N/A', 'Uttar Pradesh', 'N/A', 'N/A', 'DNA', 'DNA', 'DNA', 'N/A', 'N/A', 'N/A', 'Beggar', 'N/A', 'Hindi', 'N/A', 'DNA', 'DNA', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(2286, 'SH_02', 'Shared Housing (Rural)', '1824', 'Poongodi', 'N/A', 'BCGT_04', 'N/A', NULL, '2016-03-31', 'Involuntary', '40', 'Female', 'Hindu', 'Tamil Nadu', 'Chennai', 'Chennai', 'N/A', 'Kottivakkam (9th Street)', 'Chennai', 'Urban', 'Single', 'N/A', 'Unemployed', 'Illiterate', 'Tamil', 'YES', '9th Street, Kotivakkam', 'DNA', '30', 'Nuclear', '2', 'N/A', 'The Banyan Staff', '1', 'N/A', NULL),
(2290, 'SH_02', 'Shared Housing (Rural)', '1828', 'Geetha', 'N/A', 'BCGT_09', 'N/A', NULL, '2016-04-23', 'Involuntary', '45', 'Female', 'Hindu', 'Tamil Nadu', 'Chennai', 'Chennai', 'Veppery', 'Veppery', 'Chennai', 'Urban', 'Single', 'N/A', 'Unemployed', '10', 'Tamil', 'N/A', 'DNA', 'DNA', 'N/A', 'Nuclear', '3', 'N/A', 'The Police', '1', 'N/A', NULL),
(2297, 'SH_02', 'Shared Housing (Rural)', '1835', 'Sunantha', 'N/A', 'BCGT_05', 'BCGT_06', NULL, '2016-05-31', 'Involuntary', '40', 'Female', 'N/A', 'N/A', 'N/A', 'N/A', 'DNA', 'DNA', 'DNA', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'DNA', 'DNA', 'N/A', 'N/A', 'N/A', 'N/A', 'Ms. Vijayalakshmi(Area Person)', '1', 'N/A', NULL),
(2300, 'ECRC_03', 'ECRC - Mogappair', '1838', 'Fathima', 'Sandhya', 'BCG_08', 'N/A', NULL, '2016-07-02', 'Involuntary', '36', 'Female', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Urban', 'Married', 'N/A', 'Unemployed', '5', 'Tamil', 'N/A', 'N/A', 'N/A', '30', 'Nuclear', '2', 'N/A', 'Selvi illam', '1', 'N/A', NULL),
(2303, 'ECRC_03', 'ECRC - Mogappair', '1841', 'Suman', 'N/A', 'BCG_08', 'N/A', NULL, '2016-07-06', 'Involuntary', '50', 'Female', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Married', 'N/A', 'N/A', 'N/A', 'Hindi', 'N/A', 'N/A', 'N/A', 'N/A', 'Nuclear', '2', 'N/A', 'BALM Student', '1', 'N/A', NULL),
(2318, 'ECRC_03', 'ECRC - Mogappair', '1856', 'Karishma', 'N/A', 'BCG_08', 'N/A', NULL, '2016-10-24', 'Voluntary', '25', 'Female', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'A mole on right shoulder', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(2323, 'ECRC_03', 'ECRC - Mogappair', '1861', 'Basanthi', 'N/A', 'BCG_08', 'N/A', NULL, '2016-12-29', 'Involuntary', '50', 'Female', 'Hindu', 'West Bengal', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Rural', 'Separated', 'N/A', 'Unskilled Worker', 'Illiterate', 'Bengali', 'No', 'N/A', 'N/A', 'Many years', 'Living Alone', 'N/A', 'N/A', 'Public', '1', 'N/A', NULL),
(2328, 'ECRC_03', 'ECRC - Mogappair', '1866', 'Jayanthi Rani Christiana', 'N/A', 'BCG_05', 'N/A', NULL, '2017-02-07', 'Involuntary', '46', 'Female', 'christian', 'Tamil Nadu', 'Madampakam', 'Chennai', 'DNA', 'DNA', 'DNA', 'Urban', 'Single', 'A mole on her upper lips', 'Unemployed', '17', 'Tamil', 'yes', 'No,75,Dheenerganapathy Nagar,3rd St,Madambakkam,Ch-126', 'Orchid Grove,Siva foundation,G1 door no/Plot no- 75,Dhenupuri Housing colony 3rd st,Dhenu ganapathy nagar, Madambakkam, Ch-73', '2', 'Nuclear', '2', '9176585450/ 8939510992', 'Social Service - Ward Counselor', '1', 'N/A', NULL),
(2344, 'ECRC_03', 'ECRC - Mogappair', '1882', 'Aasma', 'N/A', 'BCG_05', 'N/A', NULL, '2017-06-03', 'Involuntary', '50', 'Female', 'N/A', 'N/A', 'N/A', 'N/A', 'DNA', 'DNA', 'DNA', 'N/A', 'N/A', 'One injuary mark at right eye brow end', 'N/A', 'N/A', 'Hindi', 'N/A', 'Maharastra', 'DNA', 'N/A', 'N/A', 'N/A', 'N/A', 'Dr. Lalitha', '1', 'N/A', NULL),
(2350, 'ECRC_03', 'ECRC - Mogappair', '1888', 'Alka', 'N/A', 'BCG_05', 'N/A', NULL, '2017-07-04', 'N/A', '45', 'Female', 'N/A', 'N/A', 'N/A', 'N/A', 'DNA', 'DNA', 'DNA', 'N/A', 'N/A', 'A mole at the centre of neck', 'N/A', 'N/A', 'N/A', 'N/A', 'DNA', 'DNA', 'N/A', 'N/A', 'N/A', 'N/A', 'Public', '1', 'N/A', NULL),
(2354, 'SH_01', 'Shared Housing (Urban)', '1892', 'Umadevi', 'N/A', 'ILO_01', 'N/A', NULL, '2017-07-07', 'Involuntary', '35', 'Female', 'Hindu', 'Tamil Nadu', 'N/A', 'Chennai', 'DNA', 'DNA', 'DNA', 'Urban', 'Single', 'A mole at loewr end of neck was breast', 'skilled worker', '15', 'Tamil, Hindi, English', 'No', 'Ms.Sri devi 2/1048,Raja rajeswari St,Madipakkam land mark,Madipakkam bus stand near.', 'Mr.Ramasamy(umadevi uncle )Nalvali kollai,Alladi kumulai,Pattukottai,Tanjore dist', '5', 'Joint Family', '5', '9092831678/ 9843397196/ 8939475241', 'N/A', '1', 'N/A', NULL),
(2358, 'SH_01', 'Shared Housing (Urban)', '1896', 'Jayalakshmi', 'N/A', 'ILO_01', 'N/A', NULL, '2017-08-04', 'Involuntary', '45', 'Female', 'Hindu', 'Tamil Nadu', 'N/A', 'Chennai', 'DNA', 'DNA', 'DNA', 'Urban', 'Widowed', 'A scar on left hand', 'Home Maker', '10', 'Tamil', 'Yes', '3/62,Gandhiji St,3rd St,Kakanji nagar,Vyasarpadi,Ch-39', 'Raja Building contractor ,Anna nagar west', '48', 'Living Alone', '1', '9381196680', 'Lakshmi (BALM faculty)', '1', '', NULL),
(2369, 'SH_02', 'Shared Housing (Rural)', '1907', 'Saraswathy', 'N/A', 'BCGT_05', 'BCGT_06', NULL, '2017-11-23', 'Involuntary', '50', 'Female', 'Hindu', 'Tamil Nadu', 'City', 'Chennai', 'Peravalur', 'Perambur', 'NA', 'Urban', 'Separated', 'A black mole on left arm near elbow', 'Skilled worker', '6', 'Tamil', 'Yes', 'Father : Shanmugam(Rented house),No 12,Veera  ragavam St,Vetri nagar ,Peravalur,Ch-81', 'N/A', '365', 'Nuclear', '6', '9176485206', 'Police station', '1', 'N/A', NULL),
(2370, 'ECRC_03', 'ECRC - Mogappair', '1908', 'Sharmili', 'N/A', 'BCG_05', 'N/A', NULL, '2017-12-02', 'Involuntary', '47', 'Female', 'Hindu', 'Tamil Nadu', 'Chennai', 'Chennai', 'NA', 'Nanganallur', 'DNA', 'Urban', 'Single', 'A black mole on the right chin', 'unemployed', '15', 'Tamil', 'N/A', 'Mr,Rasamani,5 VOC nagar,Pammal-75,Chennai', 'Mr,Devi,4 JP street,west mambalam-33,Chennai', 'N/A', 'Living Alone', '1', '9940253401', 'N/A', '1', 'N/A', NULL),
(2382, 'ECRC_03', 'ECRC - Mogappair', '1920', 'Anusiya', 'N/A', 'BCG_11', 'N/A', NULL, '2018-04-09', 'Involuntary', '35', 'Female', 'Hindu', 'Karnataka', 'Darumapuri', 'Hassan', 'Alur', 'Alur', 'Alur', 'Rural', 'Married', 'N/A', 'Home Maker', '10', 'Kannada', 'Yes', 'Manje gouda ,Darumapur,Alur talk,Hassan district,Karnataka', 'DNA', '1', 'Nuclear', '4', '8861178434', 'N/A', '1', 'N/A', NULL),
(2385, 'ECRC_03', 'ECRC - Mogappair', '1923', 'Mathiazhagi', 'N/A', 'BCG_11', 'N/A', NULL, '2018-05-23', 'Involuntary', '45', 'Female', 'Hindu', 'Tamil Nadu', 'Tamil Nadu', 'NA', 'NA', 'NA', 'NA', 'Rural', 'Married', 'A mole on the check and eye brow', 'Home Maker', 'Illiterate', 'Tamil', 'N/A', 'Available in kaveripakam', 'N/A', '2', 'Nuclear', '4', 'N/A', 'Public ', '1', 'N/A', NULL),
(2387, 'ECRC_03', 'ECRC - Mogappair', '1925', 'Santhra', 'N/A', 'BCG_06', 'N/A', NULL, '2018-07-07', 'N/A', '50', 'Female', 'Hindu', 'Odisha', 'Pichinada', 'Bhuvaneswar', 'Rehali', 'Sambalpur', 'Sambalpur', 'Rural', 'Widowed', 'A block mole on right ear', 'Agricultural labourer', 'Illiterate', 'Hindi', 'Yes', 'Arun srth,Near gauri mandir,Kevurawadi,Junchon', 'N/A', 'N/A', 'N/A', '8', 'N/A', 'N/A', '1', 'N/A', NULL),
(2392, 'ECRC_03', 'ECRC - Mogappair', '1930', 'Malathi', 'Rao', 'BCG_11', 'N/A', NULL, '2018-09-21', 'N/A', '70', 'Female', 'Hindu', 'N/A', 'Manthralayam', 'NA', 'NA', 'NA', 'NA', 'Rural', 'Widowed', 'N/A', 'Unskilled Worker', 'Illiterate', 'Kannada, Marathi', 'Yes', 'N/A', 'N/A', 'N/A', 'Living Alone', '3', 'N/A', 'N/A', '1', 'N/A', NULL),
(2394, 'ECRC_03', 'ECRC - Mogappair', '1932', 'Mary', 'N/A', 'BCG_11', 'N/A', NULL, '2018-10-24', 'Involuntary', '50', 'Female', 'Christian', 'Tamil Nadu', 'N/A', 'Chennai', 'NA', 'NA', 'NA', 'N/A', 'Single', 'N/A', 'N/A', '5', 'Tamil, English', 'No', 'N/A', 'N/A', '36', 'Living Alone', 'N/A', 'N/A', 'Neighbour of the cllient', '1', 'N/A', NULL),
(2395, 'SH_03', 'Shared Housing (Trichy)', '1933', 'Poomani', 'N/A', 'BCG_39', 'BCGT_19', NULL, '2018-11-25', 'Involuntary', '45', 'Female', 'Hindu', 'N/A', 'N/A', 'NA', 'NA', 'NA', 'NA', 'Urban', 'Single', 'N/A', 'Beggar', 'N/A', 'Tamil', 'No', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Volunteer', '1', 'N/A', NULL),
(2401, 'ECRC_03', 'ECRC - Mogappair', '1939', 'Aditi', 'Rajeshwari', 'BCG_11', 'N/A', NULL, '2019-01-26', 'Involuntary', '35', 'Female', 'N/A', 'N/A', 'N/A', 'NA', 'NA', 'NA', 'NA', 'N/A', 'Married', 'A Black mole on forehead', 'N/A', 'N/A', 'Telugu', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'John', '1', 'N/A', NULL),
(2402, 'ECRC_03', 'ECRC - Mogappair', '1940', 'Vennila', 'N/A', 'BCG_11', 'N/A', NULL, '2019-01-27', 'Involuntary', '35', 'Female', 'Muslim', 'Tamil Nadu', 'Barma colony', 'Chennai', 'Red hills', 'Puzhal', 'NA', 'Rural', 'Single', 'Mole right side ebow the lips', 'Unemployed', '4', 'Tamil  ', 'N/A', 'N/A', 'N/A', '1', 'Living Alone', '2', 'N/A', 'N/A', '1', 'N/A', NULL),
(2404, 'ECRC_03', 'ECRC - Mogappair', '1942', 'Varsha', 'N/A', 'BCG_03', 'N/A', NULL, '2019-02-18', 'Voluntary', '34', 'Female', 'Hindu', 'Tamil Nadu', 'N/A', 'Na', 'NA', 'NA', 'NA', 'N/A', 'Separated', 'mole in right hand amole in the right bacj in the neck', 'Professional', '17', 'Tamil, English', 'Yes', 'N/A', 'N/A', 'N/A', 'Nuclear', '3', 'N/A', 'Grish', '1', 'N/A', NULL),
(2406, 'ECRC_03', 'ECRC - Mogappair', '1944', 'Durgavathi', 'N/A', 'BCG_08', 'N/A', NULL, '2019-03-06', 'N/A', '40', 'Female', 'Hindu', 'Bihar', 'Koilawar ,Bhojpur', 'Bhojpur', 'Koilawar', 'NA', 'NA', 'N/A', 'Married', 'N/A', 'Beggar', 'N/A', 'Hindi', 'N/A', 'N/A', 'N/A', 'N/A', 'Nuclear', '9', 'N/A', 'N/A', '1', 'N/A', NULL),
(2409, 'ECRC_03', 'ECRC - Mogappair', '1947', 'Anjali', 'Ghosh', 'BCG_05', 'N/A', NULL, '2019-04-29', 'N/A', '50', 'Female', 'N/A', 'N/A', 'Rajheer', 'N/A', 'DNA', 'DNA', 'DNA', 'N/A', 'N/A', 'N/A', 'N/A', '7', 'Bengali', 'N/A', 'DNA', 'DNA', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(2410, 'ECRC_03', 'ECRC - Mogappair', '1948', 'Janaki', 'N/A', 'BCG_06', 'BCG_07', NULL, '2019-03-03', 'Voluntary', '55', 'Female', 'Hindu', 'Tamil Nadu', 'Yethapur', 'NA', 'NA', 'NA', 'NA', 'Rural', 'N/A', 'N/A', 'N/A', '4', 'Tamil, Telugu, English', 'N/A', 'DNA', 'DNA', '5', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(2417, 'ECRC_03', 'ECRC - Mogappair', '1955', 'Kanchana', 'N/A', 'BCG_08', 'N/A', NULL, '2019-06-22', 'Involuntary', '40', 'Female', 'HIndu', 'Tamil Nadu', '11th street', 'Chennai', 'NA', 'Vyarsarpadi', 'Sharma Nagar', 'Urban', 'Separated', 'N/A', 'N/A', 'N/A', 'Tamil', 'N/A', 'DNA', 'DNA', '12', 'Living Alone', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(2424, 'ECRC_03', 'ECRC - Mogappair', '1962', 'Damayanthi', 'N/A', 'BCG_05', 'N/A', NULL, '2019-09-28', 'Involuntary', '35', 'Female', 'Hindu', 'Odisha', 'Jaipur', 'Jaipur', 'Jaipur', 'NA', 'Bhuvan', 'Rural', 'Widowed', 'A harizental scar above for head in midhline.', 'Skilled worker', 'N/A', 'Hindi', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(2425, 'ECRC_03', 'ECRC - Mogappair', '1963', 'Maya', 'N/A', 'BCG_10', 'N/A', NULL, '2019-09-30', 'Involuntary', '40', 'Female', 'Hindu', 'Tamil Nadu', 'Thirumangalam', 'NA', 'NA', 'NA', 'NA', 'N/A', 'Married', 'A black mole right side', 'Unskilled Worker', '5', 'Tamil  ', 'No', 'N/A', 'N/A', '1', 'Living Alone', '4', 'N/A', 'N/A', '1', 'N/A', NULL),
(2426, 'ECRC_03', 'ECRC - Mogappair', '1964', 'Eswari', 'N/A', 'BCG_10', 'N/A', NULL, '2019-10-05', 'Voluntary', '40', 'Female', 'Hindu', 'Tamil Nadu', 'N/A', 'NA', 'NA', 'Kanagi Nagar', 'NA', 'Rural', 'Married', 'One block mole on the right ', 'Unemployed', 'N/A', 'Tamil', 'Yes', 'N/A', 'N/A', 'N/A', 'Living Alone', '3', 'N/A', 'N/A', '1', 'N/A', NULL),
(2428, 'ECRC_03', 'ECRC - Mogappair', '1966', 'Anitha', 'N/A', 'BCG_10', 'N/A', NULL, '2019-11-14', 'Voluntary', '28', 'Female', 'Hindu', 'Tamil Nadu', 'chithambaram', 'Chithambaram', 'NA', 'NA', 'NA', 'Urban', 'Married', 'A mole on right side neck', 'Unemployed', 'Graduate', 'Tamil, English', 'Yes', 'Chithambaram', 'N/A', '4', 'Living Alone', '2', 'N/A', 'N/A', '1', 'N/A', NULL),
(2429, 'ECRC_03', 'ECRC - Mogappair', '1967', 'Shakunthala', 'N/A', 'BCG_10', 'N/A', NULL, '2019-11-28', 'Voluntary', '40', 'Female', 'Hindu', 'Tamil Nadu', 'Thanikollagam', 'Nagapattinam', 'Thiruturaipundi', 'Vedaranyam', 'Vedaranyam', 'Rural', 'Married', 'A mole on left check bone, A mole on right check bone', 'Beggar', '4', 'Tamil', 'Yes', 'Thanikottagam, Nagapattinam, Tamil Nadu', 'N/A', '7', 'Nuclear', '4', 'N/A', 'N/A', '1', 'N/A', NULL),
(2431, 'ECRC_03', 'ECRC - Mogappair', '1969', 'Ammaaji', 'N/A', 'BCG_10', 'N/A', NULL, '2020-02-06', 'Voluntary', '40', 'Female', 'Muslim', 'Andhra Pradesh', 'Madanapalle', 'N/A', 'Chittoor', 'One Town police station', 'Madanapalle', 'Rural', 'Separated', 'A mole on left side arm, A mole on right side Shoulder', 'Beggar', '5', 'Telugu', 'N/A', 'Madanapalle, Kurubalakotta', 'N/A', '2', 'Nuclear', '2', 'N/A', 'Saraswathy', '1', 'N/A', NULL),
(2432, 'ECRC_03', 'ECRC - Mogappair', '1971', 'Naziya Begam', 'N/A', 'BCG_10', 'N/A', NULL, '2020-02-27', 'N/A', '30', 'Female', 'Muslim', 'N/A', 'N/A', 'NA', 'NA', 'NA', 'NA', 'N/A', 'N/A', 'A mole in right hand, A mole in left side neck', 'N/A', 'N/A', 'Hindi', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(2433, 'SH_01', 'Shared Housing (Urban)', '1970', 'Vijayalakshmi', 'N/A', 'BCG_17', 'BCGT_03', NULL, '2020-02-15', 'N/A', '38', 'Female', 'Hindu', 'Tamil Nadu', 'Jain madam', 'Thiruvanamalai', 'Arani', 'Thirumalai', 'Vadamathimangalam', 'Urban', 'Single', 'A mole on left side neck', 'Unskilled Worker', '12', 'Tamil', 'yes', '(Mother parents) Grand parenst are in Krishnagiri  Rajiv Gandhi street, New pattu, old road, New krishnagiri, Dharmapuri (dt)', 'N/A', '2', 'Living Alone', '2', '9791093424', 'N/A', '1', 'N/A', NULL),
(2434, 'ECRC_03', 'ECRC - Mogappair', '1972', 'Kumudha', 'N/A', 'BCG_10', 'N/A', NULL, '2020-02-29', 'N/A', '42', 'Female', 'Hindu', 'Tamil Nadu', 'Chennai', 'Tiruvallur', 'Thiruverkadu', 'Thiruverkadu', 'Chennai', 'Urban', 'Separated', 'A mole on the right side of the chin', 'Unemployed', '4', 'Tamil', 'Yes', 'Krishnamurthy, Mahatama Ganthi street, Mettu street, Kizh aynambakkam, Opp to Apollo hospital.', 'Renuga/10 3RD street puthu Anna Nagar, Ayanambakkam, Vanagaram, Chennai-600095.', '300', 'Living Alone', '0', '9940077055', 'N/A', '1', 'N/A', NULL),
(2435, 'ECRC_03', 'ECRC - Mogappair', '1973', 'Monika', 'N/A', 'BCG_03', 'BCG_04', NULL, '2020-03-13', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1', 'N/A', NULL),
(2436, 'SH_04', 'Shared Housing - Kerala', '5HAK2', 'Banu', NULL, 'BCG_40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL),
(2437, 'SH_04', 'Shared Housing - Kerala', '5HAK5', 'Sindhu', NULL, 'BCG_40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL),
(2438, 'SH_04', 'Shared Housing - Kerala', '5HAK3', 'Sheena Varghese', NULL, 'BCG_40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL),
(2439, 'SH_04', 'Shared Housing - Kerala', '5HAK11', 'Bunni', NULL, 'BCG_40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL),
(2440, 'SH_04', 'Shared Housing - Kerala', '6HAK3', 'Jameela', NULL, 'BCG_40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL),
(2441, 'SH_04', 'Shared Housing - Kerala', '6HAK14', 'Selvi', NULL, 'BCG_40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL),
(2442, 'SH_04', 'Shared Housing - Kerala', '6HAK9', 'Manju', NULL, 'BCG_41', 'BCG_42', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL),
(2443, 'SH_04', 'Shared Housing - Kerala', '5HAK6', 'Madhubala', NULL, 'BCG_41', 'BCG_42', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL);
INSERT INTO `clients_active` (`id`, `center_code`, `center_name`, `client_file_number`, `client_fname`, `client_lname`, `client_cgiver1`, `client_cgiver2`, `client_cgiver3`, `client_doa`, `client_adm_type`, `client_age`, `client_gender`, `client_religion`, `client_state`, `client_city`, `client_district`, `client_ps`, `client_post`, `client_taluk`, `client_location`, `client_marital`, `client_idmark`, `client_occupation`, `client_education`, `client_language`, `client_relative_avl`, `client_relative_address_1`, `client_relative_address_2`, `client_daff`, `client_family_type`, `client_family_size`, `client_family_phone`, `client_referred`, `client_active`, `client_discharged`, `client_height`) VALUES
(2444, 'SH_04', 'Shared Housing - Kerala', '6HAK13', 'Anitha', NULL, 'BCG_41', 'BCG_42', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL),
(2445, 'SH_04', 'Shared Housing - Kerala', '1HAK1', 'Asha George', NULL, 'BCG_41', 'BCG_42', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL),
(2446, 'SH_04', 'Shared Housing - Kerala', '6HAK8', 'Jayasree', NULL, 'BCG_41', 'BCG_42', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL),
(2447, 'SH_04', 'Shared Housing - Kerala', '5HAK14', 'Gachpana', NULL, 'BCG_41', 'BCG_42', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL),
(2448, 'SH_04', 'Shared Housing - Kerala', 'UNKNOWN', 'Shakeela', NULL, 'BCG_41', 'BCG_42', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL),
(2449, 'SH_04', 'Shared Housing - Kerala', '5HAK7', 'Sreshtta', NULL, 'BCG_43', 'BCG_44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL),
(2450, 'SH_04', 'Shared Housing - Kerala', '6HAK1', 'Badruneesa', NULL, 'BCG_43', 'BCG_44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL),
(2451, 'SH_04', 'Shared Housing - Kerala', '6HAK15', 'Shyni', NULL, 'BCG_43', 'BCG_44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL),
(2452, 'SH_04', 'Shared Housing - Kerala', '6HAK16', 'Radha N.B', NULL, 'BCG_43', 'BCG_44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL),
(2453, 'SH_04', 'Shared Housing - Kerala', 'ECRC/GUV/006', 'Ramani K.A', NULL, 'BCG_43', 'BCG_44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL),
(2454, 'SH_04', 'Shared Housing - Kerala', '3HAK2', 'Babu', NULL, 'BCG_45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL),
(2455, 'SH_04', 'Shared Housing - Kerala', '2HAK3', 'Sashi Kumar', NULL, 'BCG_45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL),
(2456, 'SH_04', 'Shared Housing - Kerala', '4HAK3', 'Manikandan', NULL, 'BCG_45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL),
(2457, 'SH_04', 'Shared Housing - Kerala', '3HAK7', 'Prabhakaran', NULL, 'BCG_45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL),
(2458, 'SH_04', 'Shared Housing - Kerala', '2HAK9', 'Pradeep', NULL, 'BCG_45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL),
(2459, 'SH_04', 'Shared Housing - Kerala', '9HAK2', 'Sudheesh', NULL, 'BCG_45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL),
(2460, 'SH_04', 'Shared Housing - Kerala', '10HAK3', 'Firoz', NULL, 'BCG_46', 'BCG_47', NULL, '2020-09-14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL),
(2461, 'SH_04', 'Shared Housing - Kerala', '3HAK1', 'Albert', NULL, 'BCG_46', 'BCG_47', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL),
(2462, 'SH_04', 'Shared Housing - Kerala', 'ECRC/GUV/002', 'Nandu', NULL, 'BCG_46', 'BCG_47', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL),
(2463, 'SH_04', 'Shared Housing - Kerala', '3HAK9', 'Ambedkar', NULL, 'BCG_46', 'BCG_47', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL),
(2464, 'SH_04', 'Shared Housing - Kerala', '11HAK1', 'Jose Lal', NULL, 'BCG_48', 'BCG_49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL),
(2465, 'SH_04', 'Shared Housing - Kerala', '10HAK1', 'Anil', NULL, 'BCG_48', 'BCG_49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL),
(2466, 'SH_04', 'Shared Housing - Kerala', '11HAK2', 'Ramprasad', NULL, 'BCG_48', 'BCG_49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL),
(2467, 'SH_04', 'Shared Housing - Kerala', '4HAK5', 'Rajan', NULL, 'BCG_48', 'BCG_49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL),
(2468, 'SH_04', 'Shared Housing - Kerala', '3HAK4', 'Rajesh', NULL, 'BCG_48', 'BCG_49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL),
(2469, 'SH_04', 'Shared Housing - Kerala', '1HAK2', 'Kunjimol', NULL, 'BCG_50', 'BCG_51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL),
(2470, 'SH_04', 'Shared Housing - Kerala', '7HAK3', 'Rasamma', NULL, 'BCG_50', 'BCG_51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL),
(2471, 'SH_04', 'Shared Housing - Kerala', '7HAK1', 'Kalyani', NULL, 'BCG_50', 'BCG_51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL),
(2472, 'SH_04', 'Shared Housing - Kerala', '13HAK1', 'Geethanjali', NULL, 'BCG_50', 'BCG_51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL),
(2473, 'SH_04', 'Shared Housing - Kerala', '5HAK4', 'Shobha', NULL, 'BCG_50', 'BCG_51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL),
(2474, 'SH_04', 'Shared Housing - Kerala', '12HAK1', 'Ammini', NULL, 'BCG_52', 'BCG_53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL),
(2475, 'SH_04', 'Shared Housing - Kerala', '12HAK2', 'Janthi', NULL, 'BCG_52', 'BCG_53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL),
(2476, 'SH_04', 'Shared Housing - Kerala', '5HAK1', 'Alphonsa', NULL, 'BCG_52', 'BCG_53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL),
(2477, 'SH_04', 'Shared Housing - Kerala', '7HAK7', 'Usha', NULL, 'BCG_52', 'BCG_53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL),
(2478, 'SH_04', 'Shared Housing - Kerala', '4HAK5', 'Rajan', NULL, 'BCG_54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL),
(2479, 'SH_04', 'Shared Housing - Kerala', '4HAK2', 'Jose', NULL, 'BCG_54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL),
(2480, 'SH_04', 'Shared Housing - Kerala', '2HAK4', 'Vinoy Simon', NULL, 'BCG_54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL),
(2481, 'SH_04', 'Shared Housing - Kerala', '2HAK1', 'Haris', NULL, 'BCG_54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL),
(2482, 'SH_04', 'Shared Housing - Kerala', '2HAK2', 'Narayanan', NULL, 'BCG_54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL),
(2483, 'SH_04', 'Shared Housing - Kerala', '8HAK4', 'Madhuri', NULL, 'BCG_55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL),
(2484, 'SH_04', 'Shared Housing - Kerala', 'ECRC/GUV/004', 'Vijaya Lakshmi', NULL, 'BCG_55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL),
(2485, 'SH_04', 'Shared Housing - Kerala', '8HAK1', 'Kalavathi', NULL, 'BCG_55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL),
(2486, 'SH_04', 'Shared Housing - Kerala', '8HAK3', 'Sheeba', NULL, 'BCG_56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL),
(2487, 'SH_04', 'Shared Housing - Kerala', '13HAK3', 'Preethi', NULL, 'BCG_56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL),
(2488, 'SH_04', 'Shared Housing - Kerala', '5HAK10', 'Sunitha', NULL, 'BCG_56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL),
(2489, 'MH_01', 'Home Again - Ratnagiri', 'RTN001', 'Mamta', NULL, 'BCG_57', 'BCG_58', 'BCG_59', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL),
(2490, 'MH_01', 'Home Again - Ratnagiri', 'RTN002', 'Mangal', NULL, 'BCG_57', 'BCG_58', 'BCG_59', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL),
(2491, 'MH_01', 'Home Again - Ratnagiri', 'RTN005', 'Saunda', NULL, 'BCG_57', 'BCG_58', 'BCG_59', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL),
(2492, 'MH_01', 'Home Again - Ratnagiri', 'RTN007', 'Asha', NULL, 'BCG_57', 'BCG_58', 'BCG_59', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL),
(2493, 'MH_01', 'Home Again - Ratnagiri', 'RTN014', 'Angamma', NULL, 'BCG_57', 'BCG_58', 'BCG_59', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL),
(2494, 'MH_01', 'Home Again - Ratnagiri', 'RTN006', 'Anju', NULL, 'BCG_61', 'BCG_60', 'BCG_62', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL),
(2495, 'MH_01', 'Home Again - Ratnagiri', 'RTN008', 'Jamuna', NULL, 'BCG_61', 'BCG_60', 'BCG_62', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL),
(2496, 'MH_01', 'Home Again - Ratnagiri', 'RTN004', 'Rajmuni', NULL, 'BCG_61', 'BCG_60', 'BCG_62', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL),
(2497, 'MH_01', 'Home Again - Ratnagiri', 'RTN015', 'Durga', NULL, 'BCG_61', 'BCG_60', 'BCG_62', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL),
(2498, 'MH_01', 'Home Again - Ratnagiri', 'RTN009', 'Jayshri', NULL, 'BCG_61', 'BCG_60', 'BCG_62', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL),
(2499, 'MH_01', 'Home Again - Ratnagiri', 'RTN010', 'Devaki', NULL, 'BCG_63', 'BCG_64', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL),
(2500, 'MH_01', 'Home Again - Ratnagiri', 'RTN013', 'Seema', NULL, 'BCG_63', 'BCG_64', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL),
(2501, 'MH_01', 'Home Again - Ratnagiri', 'RTN012', 'Pothy', NULL, 'BCG_63', 'BCG_64', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL),
(2502, 'MH_01', 'Home Again - Ratnagiri', 'RTN011', 'Pankaja', NULL, 'BCG_63', 'BCG_64', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL),
(2503, 'MH_01', 'Home Again - Ratnagiri', 'RTN016', 'Hafiza', NULL, 'BCG_63', 'BCG_64', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL),
(2504, 'MH_02', 'Home Again - Thane', '6HAK5', 'Sangeeta', NULL, 'BCG_65', 'BCG_66', 'BCG_67', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL),
(2505, 'MH_02', 'Home Again - Thane', '5HAK10', 'Sunita', NULL, 'BCG_65', 'BCG_66', 'BCG_67', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL),
(2506, 'MH_02', 'Home Again - Thane', '5HAK8', 'Kamalini', NULL, 'BCG_65', 'BCG_66', 'BCG_67', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL),
(2507, 'MH_02', 'Home Again - Thane', '6HAK12', 'Saroj', NULL, 'BCG_65', 'BCG_66', 'BCG_67', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL),
(2508, 'MH_02', 'Home Again - Thane', '5HAK12', 'Suma', NULL, 'BCG_65', 'BCG_66', 'BCG_67', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL),
(2513, 'ECRC_02', 'ECRC - Kovalam', 'K-2336', 'Pushpa', NULL, 'BCG_18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2514, 'ECRC_02', 'ECRC - Kovalam', 'K-395', 'Rekha', NULL, 'BCG_18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2515, 'ECRC_02', 'ECRC - Kovalam', 'R-95', 'Umayal', NULL, 'BCG_18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2516, 'ECRC_02', 'ECRC - Kovalam', 'R-96', 'Saraswathi', NULL, 'BCG_21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2517, 'ECRC_02', 'ECRC - Kovalam', 'R-97', 'Krishnaveni', NULL, 'BCG_21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2518, 'ECRC_02', 'ECRC - Kovalam', 'R-98', 'Amudha', NULL, 'BCG_21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2519, 'ECRC_02', 'ECRC - Kovalam', 'R-99', 'Asha', NULL, 'BCG_68', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2520, 'ECRC_03', 'ECRC - Mogappair', '2018/BMC/018', 'Manimegalai', NULL, 'BCG_06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2521, 'ECRC_03', 'ECRC - Mogappair', '1HAK4', 'Thresiamma', NULL, 'BCG_06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2522, 'ECRC_03', 'ECRC - Mogappair', '2017/BSR/002', 'Gurunanam', NULL, 'BCG_69', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2523, 'SH_01', 'Shared Housing (Urban)', '225', 'Parvathi', NULL, 'ILO_01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2524, 'SH_01', 'Shared Housing (Urban)', '2014/BLC/200', 'Lakshmi', NULL, 'BCG_15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2525, 'SH_01', 'Shared Housing (Urban)', '9', 'Leela Vishwanath', NULL, 'ILO_01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2526, 'SH_01', 'Shared Housing (Urban)', '1839', 'Bakiya', NULL, 'ILO_01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2527, 'CGH_01', 'CGH (BALM)', 'KER-TCR-67', 'Nanthini', NULL, 'BCG_19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2528, 'SH_02', 'Shared Housing (Rural)', '211', 'Parimala', NULL, 'ILO_01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2529, 'SH_02', 'Shared Housing (Rural)', '1167', 'Devi', NULL, 'ILO_01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2530, 'SH_02', 'Shared Housing (Rural)', 'K-1132', 'Kosalai', NULL, 'ILO_01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2531, 'SH_02', 'Shared Housing (Rural)', 'R-55', 'Shenba', NULL, 'ILO_01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2532, 'SH_02', 'Shared Housing (Rural)', 'S-394', 'Rajeshwari', NULL, 'ILO_01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2533, 'ECRC_03', 'ECRC - Mogappair', '1975', 'Amita Devi', NULL, 'BCG_03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2534, 'ECRC_03', 'ECRC - Mogappair', '1977', 'Murugan', NULL, 'BCG_69', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2535, 'SH_01', 'Shared Housing (Urban)', '2018/BSR/015', 'Ganashekar', NULL, 'BCG_70', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2536, 'SH_02', 'Shared Housing (Rural)', '2011/BKC/029', 'Nirmala Mary', NULL, 'BCG_76', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2537, 'SH_02', 'Shared Housing (Rural)', 'K-342', 'Loganayaki', NULL, 'BCG_32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2538, 'SH_02', 'Shared Housing (Rural)', 'KER/CLT/32', 'Kali', NULL, 'BCG_24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2539, 'ECRC_02', 'ECRC - Kovalam', 'K-280', 'Ellappan', NULL, 'BCG_71', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2540, 'ECRC_02', 'ECRC - Kovalam', 'K-1036', 'Muniyammal', NULL, 'BCG_73', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2541, 'ECRC_03', 'ECRC - Mogappair', '2014/BMC/014', 'Geethamani', NULL, 'BCG_08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2542, 'ECRC_03', 'ECRC - Mogappair', '2019/BMC/133', 'Nirmala', NULL, 'BCG_08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2543, 'SH_01', 'Shared Housing (Urban)', '1HAK6', 'Jessy', NULL, 'BCG_12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2544, 'SH_01', 'Shared Housing (Urban)', '2015/BSR/001', 'Prem Kumar', NULL, 'BCG_75', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2545, 'CGH_01', 'CGH (BALM)', 'R-82', 'Katheeja Begum', NULL, 'BCG_71', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2546, 'SH_02', 'Shared Housing (Rural)', 'R-74', 'Mumtaj', NULL, 'BCGT_10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `client_status`
--

CREATE TABLE `client_status` (
  `id` bigint(20) NOT NULL,
  `date` datetime DEFAULT NULL,
  `center_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `client_file_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `client_cgiver1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `client_cgiver2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `1_1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `1_2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `1_3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `1_4` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `1_5` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `1_6` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cgiver_selfie_url` text COLLATE utf8_unicode_ci,
  `cgiver_coordinates` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `client_status`
--

INSERT INTO `client_status` (`id`, `date`, `center_code`, `client_file_number`, `client_cgiver1`, `client_cgiver2`, `1_1`, `1_2`, `1_3`, `1_4`, `1_5`, `1_6`, `cgiver_selfie_url`, `cgiver_coordinates`) VALUES
(1, '2020-07-30 00:00:00', 'ECRC_01', '2011/BSR/001', 'ECRC_01_01', 'test', '1', '1', '2', '3', '2', '1', NULL, NULL),
(38, '2020-08-18 02:17:22', 'ECRC_01', '2011/BSR/001-A', 'BCG_01', NULL, '1', '2', '3', '3', '4', '4', NULL, NULL),
(39, '2020-08-18 02:17:38', 'ECRC_01', '2013/BSR/025', 'BCG_01', NULL, '1', '2', '2', '3', '3', '4', NULL, NULL),
(40, '2020-08-18 02:20:14', 'ECRC_01', '2011/BSR/001-A', 'BCG_01', NULL, '1', '2', '3', '4', '3', '2', NULL, NULL),
(41, '2020-08-18 02:43:42', 'ECRC_01', '2012/BSR/032', 'BCG_01', NULL, '4', '4', '4', '4', '4', '4', NULL, NULL),
(42, '2020-08-19 00:13:25', 'SH_01', '70', 'BCG_03', NULL, '1', '2', '3', '4', '3', '2', NULL, NULL),
(43, '2020-08-19 00:22:34', 'SH_01', '70', 'BCG_03', NULL, '1', '2', '3', '4', '3', '2', NULL, NULL),
(44, '2020-08-25 02:17:38', 'ECRC_01', '2013/BSR/025', 'BCG_01', NULL, '1', '2', '2', '3', '3', '4', NULL, NULL),
(45, '2020-08-31 10:16:49', 'ECRC_03', 'R-40', 'BCG_03', NULL, '1', '2', '1', '4', '4', '4', NULL, NULL),
(46, '2020-09-08 09:57:26', 'ECRC_02', 'R-92', 'BCG_18', NULL, '1', '1', '1', '1', '1', '1', NULL, NULL),
(47, '2020-09-13 16:51:18', 'ECRC_02', 'R-92', 'BCG_18', NULL, '1', '2', '3', '4', '3', '2', NULL, NULL),
(48, '2020-09-19 10:35:11', 'ECRC_01', '2011/BSR/001-A', 'BCG_01', NULL, '1', '1', '1', '1', '1', '1', NULL, NULL),
(49, '2020-09-19 11:17:58', 'ECRC_01', '2016/BSR/004', 'BCG_01', NULL, '3', '3', '2', '3', '2', '4', NULL, NULL),
(50, '2020-09-20 08:43:37', 'ECRC_03', 'R-40', 'BCG_03', NULL, '1', '2', '1', '2', '1', '2', NULL, NULL),
(51, '2020-09-20 13:12:40', 'ECRC_01', '2011/BSR/001-A', 'BCG_01', NULL, '2', '2', '2', '2', '2', '2', NULL, NULL),
(52, '2020-09-28 00:31:54', 'SH_02', '875', 'BCG_18', NULL, '1', '2', '3', '4', '4', '4', 'http://35.211.229.171/public/uploads/images/2020-09-28_00:31:45_1601233321.jpg', '{\"lat\":\"13.1192826\",\"long\":\"80.2011775\"}'),
(53, '2021-11-30 11:55:06', 'ECRC_01', '2020/BSR/022', 'BCG_01', NULL, '1', '1', '1', '2', '2', '2', 'public/uploads/images/1638253472205_1638253517.jpg', '{\"lat\":\"13.0221839\",\"long\":\"80.2549174\"}'),
(54, '2021-11-30 11:55:53', 'ECRC_01', '2017/BSR/009', 'BCG_01', NULL, '4', '4', '3', '3', '2', '2', 'public/uploads/images/1638253543656_1638253557.jpg', '{\"lat\":\"13.0221839\",\"long\":\"80.2549174\"}'),
(55, '2021-12-02 18:26:10', 'ECRC_02', '208', 'BCG_18', NULL, '2', '3', '2', '3', '2', '2', 'public/uploads/images/1638449760195_1638449774.jpg', '{\"lat\":\"12.8115757\",\"long\":\"80.2423037\"}'),
(56, '2021-12-07 19:37:31', 'ECRC_02', '208', 'BCG_18', NULL, '1', '1', '1', '1', '1', '1', 'public/uploads/images/1638886043007_1638886056.jpg', '{\"lat\":null,\"long\":null}');

-- --------------------------------------------------------

--
-- Table structure for table `diet_chart`
--

CREATE TABLE `diet_chart` (
  `id` bigint(20) NOT NULL,
  `diet_date` date DEFAULT NULL,
  `diet_bfast_time` time DEFAULT NULL,
  `diet_bfast_menu` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `diet_snack1_time` time DEFAULT NULL,
  `diet_snack1_menu` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `diet_lunch_time` time DEFAULT NULL,
  `diet_lunch_menu` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `diet_snack2_time` time DEFAULT NULL,
  `diet_snack2_menu` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `diet_dinner_time` time DEFAULT NULL,
  `diet_dinner_menu` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `diet_followup` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `diet_client_file_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `diet_chart`
--

INSERT INTO `diet_chart` (`id`, `diet_date`, `diet_bfast_time`, `diet_bfast_menu`, `diet_snack1_time`, `diet_snack1_menu`, `diet_lunch_time`, `diet_lunch_menu`, `diet_snack2_time`, `diet_snack2_menu`, `diet_dinner_time`, `diet_dinner_menu`, `diet_followup`, `diet_client_file_number`) VALUES
(1, '2020-08-31', '08:30:00', 'Idli (4) & Sambar', '11:00:00', 'Carrot Juice', '13:00:00', 'Rice, Egg, Spinach', '16:00:00', 'Pulses', '19:00:00', 'Upma', 'Salt Restriction', NULL),
(2, '2020-08-25', '08:30:00', 'Oats', '11:00:00', 'Butter Milk', '13:00:00', 'Variety Rice', '16:00:00', 'Soup', '19:00:00', 'Dosa', 'Difficulty in taking Oats', '2011/BSR/001-A,1219,2014/BSR/055');

-- --------------------------------------------------------

--
-- Table structure for table `dining_master`
--

CREATE TABLE `dining_master` (
  `id` bigint(20) NOT NULL,
  `center_code` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cgiver_code` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` timestamp NULL DEFAULT NULL,
  `status_dinning_clean` tinyint(4) DEFAULT NULL,
  `status_staff_num_dinning` tinyint(4) DEFAULT NULL,
  `status_clients_standing` tinyint(4) DEFAULT NULL,
  `status_hygiene_materials` tinyint(4) DEFAULT NULL,
  `status_server_ppe` tinyint(4) DEFAULT NULL,
  `status_waste_qty` tinyint(4) DEFAULT NULL,
  `status_dinning_waste_clean` tinyint(4) DEFAULT NULL,
  `status_text` text COLLATE utf8_unicode_ci,
  `dining_selfie_url` mediumtext COLLATE utf8_unicode_ci,
  `dining_selfie_latlong` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `dining_master`
--

INSERT INTO `dining_master` (`id`, `center_code`, `cgiver_code`, `date`, `status_dinning_clean`, `status_staff_num_dinning`, `status_clients_standing`, `status_hygiene_materials`, `status_server_ppe`, `status_waste_qty`, `status_dinning_waste_clean`, `status_text`, `dining_selfie_url`, `dining_selfie_latlong`) VALUES
(1, 'ECRC_01', 'BCG_01', '2020-08-25 00:00:00', 0, 1, 1, 1, 0, 1, 1, 'test text', NULL, NULL),
(2, 'ECRC_03', 'BCG_03', '2020-08-29 22:31:00', 0, 11, 1, 1, 1, 11, 0, 'None', NULL, NULL),
(3, 'ECRC_01', 'BCG_01', '2020-08-25 00:00:00', 0, 1, 1, 1, 0, 1, 1, 'test text', 'http://35.211.229.171/portal/public/uploads/images/no-image_1600341683.png', '{\"lat\":\"12.5555\",\"long\":\"80.6666\"}'),
(4, 'ECRC_03', 'BCG_18', '2020-09-19 00:14:00', 1, 12, 1, 0, 0, 12, 0, 'test', 'http://35.211.229.171/portal/public/uploads/images/2020-09-19_00:14:23_1600454685.jpg', '{\"lat\":\"13.1192433\",\"long\":\"80.2012229\"}'),
(5, 'ECRC_03', 'BCG_18', '2020-08-25 00:00:00', 0, 1, 1, 1, 0, 1, 1, 'test text', 'http://35.211.229.171/public/uploads/images/112815900-stock-vector-no-image-available-icon-flat-vector_1600940960.jpg', '{\"lat\":\"12.5555\",\"long\":\"80.6666\"}'),
(6, 'ECRC_03', 'BCG_18', '2020-09-24 15:17:00', 0, 1, 1, 1, 0, 1, 1, 'test text', 'http://35.211.229.171/public/uploads/images/112815900-stock-vector-no-image-available-icon-flat-vector_1600940987.jpg', '{\"lat\":\"12.5555\",\"long\":\"80.6666\"}'),
(7, 'ECRC_03', 'BCG_18', '2020-09-24 15:17:00', 0, 1, 1, 1, 0, 1, 1, 'test text', 'http://35.211.229.171/public/uploads/images/112815900-stock-vector-no-image-available-icon-flat-vector_1600941029.jpg', '{\"lat\":\"12.5555\",\"long\":\"80.6666\"}'),
(8, 'ECRC_03', 'BCG_18', '2020-09-24 15:17:00', 0, 1, 1, 1, 0, 1, 1, 'test text', 'http://35.211.229.171/public/uploads/images/112815900-stock-vector-no-image-available-icon-flat-vector_1600942542.jpg', '{\"lat\":\"12.5555\",\"long\":\"80.6666\"}'),
(9, 'ECRC_03', 'BCG_18', '2020-09-24 15:17:00', 0, 1, 1, 1, 0, 1, 1, 'test text', 'http://35.211.229.171/public/uploads/images/download_1600942560.png', '{\"lat\":\"12.5555\",\"long\":\"80.6666\"}'),
(10, 'ECRC_03', 'BCG_18', '2020-09-24 15:50:00', 0, 111, 0, 0, 0, 111, 0, 'test', 'http://35.211.229.171/public/uploads/images/download_1600943240.png', '{\"lat\":\"13.119243\",\"long\":\"13.119243\"}'),
(11, 'ECRC_03', 'BCG_18', '2020-09-24 15:50:00', 0, 111, 0, 0, 0, 111, 0, 'test', 'http://35.211.229.171/public/uploads/images/JPEG_20200924_160123_3709410466599144043_1600943745.jpg', '{\"lat\":\"13.119243\",\"long\":\"13.119243\"}'),
(12, 'ECRC_03', 'BCG_18', '2020-09-24 16:16:00', 2, 111, 1, 1, 1, 111, 0, '1111', 'http://35.211.229.171/public/uploads/images/2020-09-24_16:01:28_1600944408.jpg', '{\"lat\":\"13.1192433\",\"long\":\"80.2012331\"}');

-- --------------------------------------------------------

--
-- Table structure for table `doctor_Master`
--

CREATE TABLE `doctor_Master` (
  `doc_id` int(11) DEFAULT NULL,
  `doc_username` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `doc_password` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `doc_photo_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `doc_designation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `doc_profile` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `facilities_code`
--

CREATE TABLE `facilities_code` (
  `dining_clean_status_code` int(11) DEFAULT NULL,
  `dining_clean_text` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `facilities_code`
--

INSERT INTO `facilities_code` (`dining_clean_status_code`, `dining_clean_text`) VALUES
(0, 'After Every Meal'),
(1, 'At the end of the Day'),
(2, 'Others');

-- --------------------------------------------------------

--
-- Table structure for table `housekeeping_master`
--

CREATE TABLE `housekeeping_master` (
  `id` bigint(20) NOT NULL,
  `center_code` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cgiver_code` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` timestamp NULL DEFAULT NULL,
  `status_hkoverall` tinyint(4) DEFAULT NULL,
  `status_bathroom` tinyint(4) DEFAULT NULL,
  `status_toiletries` tinyint(4) DEFAULT NULL,
  `status_stocktaking` tinyint(4) DEFAULT NULL,
  `status_garbage` tinyint(4) DEFAULT NULL,
  `status_curtains` tinyint(4) DEFAULT NULL,
  `status_cobwebs` tinyint(4) DEFAULT NULL,
  `status_floormats` tinyint(4) DEFAULT NULL,
  `status_waterchlorine` tinyint(4) DEFAULT NULL,
  `status_notes` longtext COLLATE utf8_unicode_ci,
  `housekeeping_selfie_url` mediumtext COLLATE utf8_unicode_ci,
  `housekeeping_latlong` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `housekeeping_master`
--

INSERT INTO `housekeeping_master` (`id`, `center_code`, `cgiver_code`, `date`, `status_hkoverall`, `status_bathroom`, `status_toiletries`, `status_stocktaking`, `status_garbage`, `status_curtains`, `status_cobwebs`, `status_floormats`, `status_waterchlorine`, `status_notes`, `housekeeping_selfie_url`, `housekeeping_latlong`) VALUES
(1, 'ECRC_01', 'BCG_01', '2020-08-25 00:00:00', 1, 1, 1, 1, 0, 0, 0, 0, 0, 'notes text', NULL, NULL),
(2, NULL, 'BCG_03', '2020-08-29 18:29:00', 1, 1, 1, 1, NULL, 1, 1, 1, 1, 'Testing', NULL, NULL),
(3, 'ECRC_03', 'BCG_03', '2020-08-29 19:02:00', 1, 1, 1, 1, NULL, 1, 1, 1, 0, NULL, NULL, NULL),
(4, 'ECRC_03', 'BCG_03', '2020-08-29 19:03:00', 1, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, NULL, NULL),
(5, 'ECRC_03', 'BCG_03', '2020-08-29 19:15:00', 1, 1, 1, 1, NULL, 1, 1, 1, 1, 'None', NULL, NULL),
(6, 'ECRC_03', 'BCG_03', '2020-08-29 19:22:00', 0, 0, 1, 1, NULL, 1, 0, 0, 1, 'Testin 123', NULL, NULL),
(7, 'ECRC_03', 'BCG_03', '2020-08-30 22:00:00', 1, 1, 1, 0, NULL, 1, 1, 1, 0, 'All good!', NULL, NULL),
(8, 'ECRC_03', 'BCG_03', '2020-08-31 10:38:00', 1, 0, 1, 1, NULL, 1, 1, 1, 1, 'Bathroom stinks!', NULL, NULL),
(9, 'ECRC_01', 'BCG_01', '2020-09-09 12:51:00', 1, 1, 1, 1, NULL, 1, 1, 0, 1, 'this is a sample of the voice recognition module in our app.', NULL, NULL),
(10, 'ECRC_01', 'BCG_01', '2020-08-25 00:00:00', 1, 1, 1, 1, 0, 0, 0, 0, 0, 'notes text', 'http://35.211.229.171/portal/public/uploads/images/no-image-cap_1600341615.png', '{\"lat\":\"12.3333\",\"long\":\"80.4444\"}'),
(11, 'ECRC_03', 'BCG_18', '2020-09-19 00:13:00', 1, 1, 1, 1, NULL, 1, 1, 1, 1, 'test', 'http://35.211.229.171/portal/public/uploads/images/2020-09-19_00:13:06_1600454604.jpg', '{\"lat\":\"13.119243\",\"long\":\"80.2012299\"}'),
(12, 'ECRC_03', 'BCG_03', '2020-09-19 11:30:00', 1, 0, 1, 1, NULL, 1, 1, 0, 0, 'All okay! Writer\'s cafe is clean.', 'http://35.211.229.171/portal/public/uploads/images/2020-09-19_11:30:16_1600495261.jpg', '{\"lat\":\"13.0533544\",\"long\":\"80.2577451\"}'),
(13, 'ECRC_03', 'BCG_03', '2020-09-19 11:46:00', 1, 1, 1, 1, NULL, 1, 0, 0, 0, 'None', 'http://35.211.229.171/portal/public/uploads/images/2020-09-19_11:45:41_1600496209.jpg', '{\"lat\":\"13.0533544\",\"long\":\"80.2577451\"}'),
(14, 'ECRC_03', 'BCG_18', '2020-09-22 10:09:00', 1, 1, 1, 1, NULL, 1, 1, 1, 1, 'test', 'http://35.211.229.171/portal/public/uploads/images/2020-09-22_10:09:08_1600749568.jpg', '{\"lat\":\"13.119243\",\"long\":\"80.2012335\"}'),
(15, 'ECRC_03', 'BCG_18', '2020-09-22 10:13:00', 1, 1, 1, 1, NULL, 1, 1, 1, 1, 'None', 'http://35.211.229.171/portal/public/uploads/images/2020-09-22_10:13:15_1600749809.jpg', '{\"lat\":\"13.1192412\",\"long\":\"80.2012269\"}'),
(16, 'ECRC_03', 'BCG_18', '2020-09-22 10:16:00', 1, 1, 0, 1, NULL, 1, 1, 1, 1, 'None', 'http://35.211.229.171/portal/public/uploads/images/2020-09-22_10:16:03_1600749977.jpg', '{\"lat\":\"13.1192557\",\"long\":\"80.2012097\"}'),
(17, 'ECRC_01', 'BCG_01', '2020-08-25 00:00:00', 1, 1, 1, 1, 0, 0, 0, 0, 0, 'notes text', 'http://35.211.229.171/public/uploads/images/145-1454284_software-for-laser-cutting-engraving-icon-no-image-available_1600939882.png', '{\"lat\":\"12.3333\",\"long\":\"80.4444\"}'),
(18, 'ECRC_03', 'BCG_18', '2020-08-25 00:00:00', 1, 1, 1, 1, NULL, 0, 0, 0, 0, 'notes text', 'http://35.211.229.171/public/uploads/images/145-1454284_software-for-laser-cutting-engraving-icon-no-image-available_1600940346.png', '{\"lat\":\"12.3333\",\"long\":\"80.4444\"}'),
(19, 'ECRC_03', 'BCG_18', '2020-09-24 15:12:00', 1, 1, 1, 1, NULL, 0, 0, 0, 0, 'notes text', 'http://35.211.229.171/public/uploads/images/145-1454284_software-for-laser-cutting-engraving-icon-no-image-available_1600940592.png', '{\"lat\":\"12.3333\",\"long\":\"80.4444\"}'),
(20, 'ECRC_03', 'BCG_18', '2020-09-24 15:12:00', 1, 1, 1, 1, NULL, 0, 0, 0, 0, 'notes text', 'http://35.211.229.171/public/uploads/images/145-1454284_software-for-laser-cutting-engraving-icon-no-image-available_1600940604.png', '{\"lat\":\"12.3333\",\"long\":\"80.4444\"}'),
(21, 'ECRC_03', 'BCG_18', '2020-09-24 15:12:00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 'notes text', 'http://35.211.229.171/public/uploads/images/145-1454284_software-for-laser-cutting-engraving-icon-no-image-available_1600940783.png', '{\"lat\":\"13.1192414\",\"long\":\"80.201233\"}'),
(22, 'ECRC_03', 'BCG_18', '2020-09-24 16:17:00', 1, 1, 1, 1, NULL, 1, 1, 1, 1, 'None', 'http://35.211.229.171/public/uploads/images/2020-09-24_16:17:01_1600944435.jpg', '{\"lat\":\"13.1192426\",\"long\":\"80.2012366\"}'),
(23, 'ECRC_03', 'BCG_18', '2021-12-08 03:16:00', 1, 1, 1, 0, NULL, 0, 0, 1, 0, 'None', 'public/uploads/images/1638888385950_1638888409.jpg', '{\"lat\":\"12.9768577\",\"long\":\"80.258316\"}');

-- --------------------------------------------------------

--
-- Table structure for table `icp_notes`
--

CREATE TABLE `icp_notes` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `client_file_number` varchar(255) DEFAULT NULL,
  `notes` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `icp_parameters`
--

CREATE TABLE `icp_parameters` (
  `id` bigint(20) NOT NULL,
  `icp_code` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icp_category` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icp_specifics` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icp_details` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `icp_parameters`
--

INSERT INTO `icp_parameters` (`id`, `icp_code`, `icp_category`, `icp_specifics`, `icp_details`) VALUES
(1, 'icp_01_01_01', 'Self Care', 'Bed Making', 'Help client identify their beds'),
(2, 'icp_01_01_02', 'Self Care', 'Bed Making', 'Teach proper bed-making'),
(3, 'icp_01_01_03', 'Self Care', 'Bed Making', 'Identifying personal sleeping accessories (bedsheet, pillows etc)'),
(4, 'icp_01_01_04', 'Self Care', 'Bed Making', 'Routine for washing bed covers'),
(5, 'icp_01_01_05', 'Self Care', 'Bed Making', 'Maintaining personal hygiene space'),
(6, 'icp_01_02_01', 'Self Care', 'Dental Care', 'Help client identify their toothbrush, paste and other oral hygiene products'),
(7, 'icp_01_02_02', 'Self Care', 'Dental Care', 'Teach proper ways to brush teeth'),
(8, 'icp_01_02_03', 'Self Care', 'Dental Care', 'Tongue Cleaning'),
(9, 'icp_01_02_04', 'Self Care', 'Dental Care', 'Identifying and reporting health concerns pertaining to oral hygiene'),
(10, 'icp_01_03_01', 'Self Care', 'Bathing', 'Help client understand the need for bathing'),
(11, 'icp_01_03_02', 'Self Care', 'Bathing', 'Help client identify their own bathing products'),
(12, 'icp_01_03_03', 'Self Care', 'Bathing', 'Help client understand the concept of privacy while bathing and coming out of bath'),
(13, 'icp_01_03_04', 'Self Care', 'Bathing', 'Towel and personal hygiene'),
(14, 'icp_01_03_05', 'Self Care', 'Bathing', 'Help client understand the need for washing their own innerwear'),
(15, 'icp_01_04_01', 'Self Care', 'Menstruation', 'Teaching client about Menstruation'),
(16, 'icp_01_04_03', 'Self Care', 'Menstruation', 'Identifying the start of period'),
(17, 'icp_01_04_04', 'Self Care', 'Menstruation', 'Expressing & explaining the pain or mood associated with cycle - emotional regulation (Understanding triggers)'),
(18, 'icp_01_04_05', 'Self Care', 'Menstruation', 'Understanding the choice of products based on preferences'),
(19, 'icp_01_04_06', 'Self Care', 'Menstruation', 'Change of menstrual products'),
(20, 'icp_01_04_07', 'Self Care', 'Menstruation', 'Disposing of menstrual products'),
(21, 'icp_01_04_02', 'Self Care', 'Menstruation', 'Understanding cultural context of client pertaining to menstruation and practices'),
(22, 'icp_01_04_08', 'Self Care', 'Menstruation', 'Understanding their sexual rights '),
(23, 'icp_01_05_01', 'Self Care', 'Hair Care', 'Consent for tonturing of hair, if necessary'),
(24, 'icp_01_05_02', 'Self Care', 'Hair Care', 'Understand the need for head bath'),
(25, 'icp_01_05_03', 'Self Care', 'Hair Care', 'Choosing their own preferred products'),
(26, 'icp_01_05_04', 'Self Care', 'Hair Care', 'Removing lice and nits'),
(27, 'icp_01_05_05', 'Self Care', 'Hair Care', 'Understanding the need for shaving and trimming'),
(28, 'icp_01_05_06', 'Self Care', 'Hair Care', 'Follow saftey protocols during shaving'),
(29, 'icp_01_05_07', 'Self Care', 'Hair Care', 'Exercising choice to remove hair from pubic area and arm pits'),
(30, 'icp_01_05_08', 'Self Care', 'Hair Care', 'Adapting styles they prefer'),
(31, 'icp_01_06_01', 'Self Care', 'Skin Care', 'Identifying scars and wounds as it happens'),
(32, 'icp_01_06_02', 'Self Care', 'Skin Care', 'Explaining preferred skin care'),
(33, 'icp_01_07_01', 'Self Care', 'Toilet Use', 'Understanding need for using toilet'),
(34, 'icp_01_07_02', 'Self Care', 'Toilet Use', 'Identifying the right place to defecate'),
(35, 'icp_01_07_03', 'Self Care', 'Toilet Use', 'Restroom Etiquette'),
(36, 'icp_01_07_04', 'Self Care', 'Toilet Use', 'Cleaning of Genitals'),
(37, 'icp_01_07_05', 'Self Care', 'Toilet Use', 'Cleaning of Restrooms'),
(38, 'icp_01_07_06', 'Self Care', 'Toilet Use', 'Reporting of health needs'),
(39, 'icp_01_08_02', 'Self Care', 'Clothing', 'Understanding when to change, how to change clothes and where to change clothes - privacy '),
(40, 'icp_01_08_03', 'Self Care', 'Clothing', 'Understanding color combinations'),
(41, 'icp_01_08_04', 'Self Care', 'Clothing', 'Disposing used clothes appropriately'),
(42, 'icp_01_08_05', 'Self Care', 'Clothing', 'Identifying issues with clothing - Size does not fit, missing button etc'),
(43, 'icp_01_08_01', 'Self Care', 'Clothing', 'Identifying their preferences according to cultural needs'),
(44, 'icp_01_09_01', 'Self Care', 'Laundry', 'Understanding when to wash'),
(45, 'icp_01_09_02', 'Self Care', 'Laundry', 'Washing clothes appropriately - sorting, organizing, understanding the water needs etc'),
(46, 'icp_01_09_03', 'Self Care', 'Laundry', 'Drying clothes - how to dry and how long to dry'),
(47, 'icp_01_09_04', 'Self Care', 'Laundry', 'Folding clothes'),
(48, 'icp_01_09_05', 'Self Care', 'Laundry', 'Sorting clothes in the cupboard'),
(49, 'icp_01_10_01', 'Self Care', 'Meal Consumption', 'Identifying hunger triggers'),
(50, 'icp_01_10_02', 'Self Care', 'Meal Consumption', 'Washing hands before & after meals and washing dining products'),
(51, 'icp_01_10_03', 'Self Care', 'Meal Consumption', 'Maintaining meal time'),
(52, 'icp_01_10_04', 'Self Care', 'Meal Consumption', 'Follow dinning etiquette'),
(53, 'icp_01_10_05', 'Self Care', 'Meal Consumption', 'Able to sort out preferences'),
(54, 'icp_01_10_06', 'Self Care', 'Meal Consumption', 'Understanding nutritional values'),
(55, 'icp_01_10_07', 'Self Care', 'Meal Consumption', 'Able to follow diet'),
(56, 'icp_01_10_08', 'Self Care', 'Meal Consumption', 'Ability to communicate if there are any discomforts'),
(57, 'icp_01_10_09', 'Self Care', 'Meal Consumption', 'Socializing while dining'),
(58, 'icp_02_01_01', 'Home Management', 'Sweeping & Mpping', 'Understand the need for cleaning the floors'),
(59, 'icp_02_01_02', 'Home Management', 'Sweeping & Mpping', 'Identifying areas potential for dirt'),
(60, 'icp_02_01_03', 'Home Management', 'Sweeping & Mpping', 'Using mop & broom and cleaning them appropriately'),
(61, 'icp_02_01_04', 'Home Management', 'Sweeping & Mpping', 'Clearning waste'),
(62, 'icp_02_01_05', 'Home Management', 'Sweeping & Mpping', 'Changing curtains, matresses and other screens as and when necessary'),
(63, 'icp_02_02_02', 'Home Management', 'Washroom Cleaning', 'Cleaning wash basin & other commodities'),
(64, 'icp_02_02_01', 'Home Management', 'Washroom Cleaning', 'Cleaning toilets and bathrooms'),
(65, 'icp_02_02_03', 'Home Management', 'Washroom Cleaning', 'Unclog the drains'),
(66, 'icp_02_03_01', 'Home Management', 'Repairs & Maintanence', 'Understanding what needs to be repaired'),
(67, 'icp_02_03_02', 'Home Management', 'Repairs & Maintanence', 'Undertaking basic repair work'),
(68, 'icp_02_03_03', 'Home Management', 'Repairs & Maintanence', 'To know whom to contact for what'),
(69, 'icp_02_03_04', 'Home Management', 'Repairs & Maintanence', 'Explaining the repair work to be carried out to the concerened professional'),
(70, 'icp_02_03_05', 'Home Management', 'Repairs & Maintanence', 'Learning to raise complaints and concerns when things are not sorted out'),
(71, 'icp_02_04_01', 'Home Management', 'Groceries & Vegetables Shopping', 'Identifying what needs to be cooked'),
(72, 'icp_02_04_02', 'Home Management', 'Groceries & Vegetables Shopping', 'Listing down the ingredients and the quantity to be purchased'),
(73, 'icp_02_04_03', 'Home Management', 'Groceries & Vegetables Shopping', 'Identifying shops for purchasing the same'),
(74, 'icp_02_04_04', 'Home Management', 'Groceries & Vegetables Shopping', 'Understanding how to check for the quality of groceries'),
(75, 'icp_02_04_05', 'Home Management', 'Groceries & Vegetables Shopping', 'Checking for expiry, MRP and demanding bills'),
(76, 'icp_02_04_06', 'Home Management', 'Groceries & Vegetables Shopping', 'Keeping stock of what is purchased and how much has been spent'),
(77, 'icp_02_05_01', 'Home Management', 'Preparing Meals', 'Knowledge of items that are currently available and understanding what can be prepared out of them'),
(78, 'icp_02_05_02', 'Home Management', 'Preparing Meals', 'Deciding what needs to be cooked and to what extent'),
(79, 'icp_02_05_03', 'Home Management', 'Preparing Meals', 'Choosing vessels that need to be used'),
(80, 'icp_02_05_04', 'Home Management', 'Preparing Meals', 'Knowledge on how to use the kitchen utensils like knife, grinder etc'),
(81, 'icp_02_05_05', 'Home Management', 'Preparing Meals', 'Engaging in the cooking process'),
(82, 'icp_02_05_06', 'Home Management', 'Preparing Meals', 'Knowledge on how to serve food'),
(83, 'icp_02_05_07', 'Home Management', 'Preparing Meals', 'Segregating & emptying leftovers'),
(84, 'icp_02_05_08', 'Home Management', 'Preparing Meals', 'Washing vessels'),
(85, 'icp_02_05_09', 'Home Management', 'Preparing Meals', 'Cleaning the kitchen'),
(86, 'icp_02_06_02', 'Home Management', 'Garbage Disposal', 'Prepare appropriate dustbins with covers'),
(87, 'icp_02_06_03', 'Home Management', 'Garbage Disposal', 'Clearing the dustbins by disposing the contents at the collecting points'),
(88, 'icp_02_06_04', 'Home Management', 'Garbage Disposal', 'Changing covers'),
(89, 'icp_02_06_05', 'Home Management', 'Garbage Disposal', 'Washing dustbins'),
(90, 'icp_02_06_01', 'Home Management', 'Garbage Disposal', 'Segregating waste'),
(91, 'icp_02_07_01', 'Home Management', 'Day-to-Day Affairs', 'Paying bills'),
(92, 'icp_02_07_02', 'Home Management', 'Day-to-Day Affairs', 'Undertaking minor repair works'),
(93, 'icp_02_07_03', 'Home Management', 'Day-to-Day Affairs', 'Coming up with alternatives during shortages'),
(94, 'icp_02_08_01', 'Home Management', 'Home Decor & Aesthetics', 'Coming up with creative strategies to add a sense of aesthetic to the house'),
(95, 'icp_02_08_02', 'Home Management', 'Home Decor & Aesthetics', 'Organizing wardrobe and personal assessts based on preferences'),
(96, 'icp_03_01_01', 'Social Life & Skills', 'Initiating or Joining Conversation', 'Greeting, tone, maintaining eye contact, expressing interest'),
(97, 'icp_03_01_02', 'Social Life & Skills', 'Initiating or Joining Conversation', 'Joining a conversation that is interesting'),
(98, 'icp_03_01_03', 'Social Life & Skills', 'Initiating or Joining Conversation', 'Leaving the conversation'),
(99, 'icp_03_01_04', 'Social Life & Skills', 'Initiating or Joining Conversation', 'Understanding when others want to leave the conversation'),
(100, 'icp_03_02_01', 'Social Life & Skills', 'Recognizing Non-verbal Cues', 'Reading facial expressions'),
(101, 'icp_03_02_02', 'Social Life & Skills', 'Recognizing Non-verbal Cues', 'Understanding gestures and responding appropriately'),
(102, 'icp_03_02_03', 'Social Life & Skills', 'Recognizing Non-verbal Cues', 'Using of hand gestures'),
(103, 'icp_03_03_01', 'Social Life & Skills', 'Speaking Coherently', 'Listening to others'),
(104, 'icp_03_03_03', 'Social Life & Skills', 'Speaking Coherently', 'Staying on the topic'),
(105, 'icp_03_03_02', 'Social Life & Skills', 'Speaking Coherently', 'Clarifying what others are saying'),
(106, 'icp_03_03_04', 'Social Life & Skills', 'Speaking Coherently', 'Asking questions politely'),
(107, 'icp_03_04_02', 'Social Life & Skills', 'Welcoming Others into Conversation', 'Being assertive'),
(108, 'icp_03_04_03', 'Social Life & Skills', 'Welcoming Others into Conversation', 'Gently communicate and move from the place if he/she dont like the topic'),
(109, 'icp_03_04_04', 'Social Life & Skills', 'Welcoming Others into Conversation', 'Communicating with the fellow residents in the home'),
(110, 'icp_03_04_05', 'Social Life & Skills', 'Welcoming Others into Conversation', 'Communicating with people outside the home'),
(111, 'icp_03_04_01', 'Social Life & Skills', 'Welcoming Others into Conversation', 'Taking turns while talking and giving equal chance for others to talk'),
(112, 'icp_03_05_01', 'Social Life & Skills', 'Recognizing Personal Roles', 'Understanding different personal roles - role of sister, daughter, friend etc.'),
(113, 'icp_03_05_02', 'Social Life & Skills', 'Recognizing Personal Roles', 'Understanding various kinds of relationships based on roles'),
(114, 'icp_03_05_03', 'Social Life & Skills', 'Recognizing Personal Roles', 'Differentiate between good and bad touches based on relationships'),
(115, 'icp_03_06_01', 'Social Life & Skills', 'Understanding Relationships', 'Acknowledging the need for friendship'),
(116, 'icp_03_06_02', 'Social Life & Skills', 'Understanding Relationships', 'Maintaining a relationship\r\n'),
(117, 'icp_03_06_03', 'Social Life & Skills', 'Understanding Relationships', 'Use of judgement in making, forming and maintaining intimate relationships'),
(118, 'icp_03_06_04', 'Social Life & Skills', 'Understanding Relationships', 'Understanding the need to ask for help and to offer help\r\n'),
(119, 'icp_03_06_05', 'Social Life & Skills', 'Understanding Relationships', 'Identifying others\' emotions\r\n'),
(120, 'icp_03_06_06', 'Social Life & Skills', 'Understanding Relationships', 'Responding appropriately to their emotions\r\n'),
(121, 'icp_03_06_07', 'Social Life & Skills', 'Understanding Relationships', 'Understanding our own emotions\r\n'),
(122, 'icp_03_06_08', 'Social Life & Skills', 'Understanding Relationships', 'Expressing and explaining our emotions appropriately\r\n'),
(123, 'icp_03_06_09', 'Social Life & Skills', 'Understanding Relationships', 'Being aware of whom to approach to seek emotional help\r\n'),
(124, 'icp_03_06_10', 'Social Life & Skills', 'Understanding Relationships', 'Dealing with unplesant situations\r\n'),
(125, 'icp_03_06_11', 'Social Life & Skills', 'Understanding Relationships', 'Understanding when to disclose and how to disclose personal information\r\n'),
(126, 'icp_03_06_12', 'Social Life & Skills', 'Understanding Relationships', 'Understanding how to react and deal with personal informations that is shared with the client by their friends or relatives\r\n'),
(127, 'icp_03_06_13', 'Social Life & Skills', 'Understanding Relationships', 'Inviting people home and hosting guests\r\n'),
(128, 'icp_03_06_14', 'Social Life & Skills', 'Understanding Relationships', 'Visiting family and friends - planning the visits, understanding when they are free, deciding how long to stay etc\r\n'),
(129, 'icp_03_06_15', 'Social Life & Skills', 'Understanding Relationships', 'Participating in various festivals\r\n'),
(130, 'icp_03_06_16', 'Social Life & Skills', 'Understanding Relationships', 'Organizing events and contributing in organizing - being part of the group'),
(131, 'icp_03_06_17', 'Social Life & Skills', 'Understanding Relationships', 'Being a member of various groups in the community\r\n'),
(132, 'icp_03_06_18', 'Social Life & Skills', 'Understanding Relationships', 'Participating in leisure activities of their choice and allowing others also to\r\n'),
(133, 'icp_03_07_01', 'Social Life & Skills', 'Resolving Conflict', 'Understanding and acknowledging that conflict might arise in a relationship'),
(134, 'icp_03_07_02', 'Social Life & Skills', 'Resolving Conflict', 'Understanding the conflict\r\n'),
(135, 'icp_03_07_03', 'Social Life & Skills', 'Resolving Conflict', 'Listening to others and understanding their perspectives\r\n'),
(136, 'icp_03_07_04', 'Social Life & Skills', 'Resolving Conflict', 'Moving the conflict to a private space\r\n'),
(137, 'icp_03_07_05', 'Social Life & Skills', 'Resolving Conflict', 'Understanding when to stop the discussion or when to continue\r\n'),
(138, 'icp_03_07_06', 'Social Life & Skills', 'Resolving Conflict', 'Being Assertive\r\n'),
(139, 'icp_03_07_07', 'Social Life & Skills', 'Resolving Conflict', 'Apologizing when necessary\r\n'),
(140, 'icp_03_07_08', 'Social Life & Skills', 'Resolving Conflict', 'Understanding forgiveness\r\n'),
(141, 'icp_03_08_01', 'Social Life & Skills', 'Sexual Expression', 'Understanding ones own sexuality'),
(142, 'icp_03_08_02', 'Social Life & Skills', 'Sexual Expression', 'Understanding appropriate means of expressing sexual needs and fulfilling those needs'),
(143, 'icp_03_08_03', 'Social Life & Skills', 'Sexual Expression', 'Understanding when, where and to whom to express sexual needs'),
(144, 'icp_03_08_04', 'Social Life & Skills', 'Sexual Expression', 'Understanding the need for contraceptives and other saftey measures'),
(145, 'icp_03_08_05', 'Social Life & Skills', 'Sexual Expression', 'Understanding about premarital and post-marital sex\r\n'),
(146, 'icp_03_08_06', 'Social Life & Skills', 'Sexual Expression', 'The right to say \'No\' and the right express sexual needs with partner\r\n'),
(147, 'icp_03_08_07', 'Social Life & Skills', 'Sexual Expression', 'Identifying sexual abuse\r\n'),
(148, 'icp_03_08_08', 'Social Life & Skills', 'Sexual Expression', 'Communicating about sexual abuse to the concerened persons\r\n'),
(149, 'icp_03_09_01', 'Social Life & Skills', 'Mobile Phone Usage', 'Understanding the mechanism of communication through phones\r\n'),
(150, 'icp_03_09_02', 'Social Life & Skills', 'Mobile Phone Usage', 'Making note of important phone numbers - family members\r\n'),
(151, 'icp_03_09_03', 'Social Life & Skills', 'Mobile Phone Usage', 'Making note of important phone numbers - Police, Ambulance etc\r\n'),
(152, 'icp_03_09_04', 'Social Life & Skills', 'Mobile Phone Usage', 'Knowing when to recharge and understand basic repairs\r\n'),
(153, 'icp_03_10_01', 'Social Life & Skills', 'Public Transport', 'Knowing where to go - Knowing the full address and landmark'),
(154, 'icp_03_10_06', 'Social Life & Skills', 'Public Transport', 'Seeking help to locate address\r\n'),
(155, 'icp_03_10_05', 'Social Life & Skills', 'Public Transport', 'Navigating through routes\r\n'),
(156, 'icp_03_10_04', 'Social Life & Skills', 'Public Transport', 'Getting down at right place\r\n'),
(157, 'icp_03_10_03', 'Social Life & Skills', 'Public Transport', 'Communicating where to go \r\n'),
(158, 'icp_03_10_02', 'Social Life & Skills', 'Public Transport', 'Understanding which transport to board and where to board\r\n'),
(159, 'icp_03_10_07', 'Social Life & Skills', 'Public Transport', 'Paying fare and getting change'),
(160, 'icp_04_01_01', 'Health Management', 'Unwell or Injured', 'Understanding what is good health\r\n'),
(161, 'icp_04_01_02', 'Health Management', 'Unwell or Injured', 'Understanding what is ill health\r\n'),
(162, 'icp_04_01_03', 'Health Management', 'Unwell or Injured', 'Observing symptoms\r\n'),
(163, 'icp_04_01_04', 'Health Management', 'Unwell or Injured', 'Communicating the symptoms to the right person\r\n'),
(164, 'icp_04_01_05', 'Health Management', 'Unwell or Injured', 'Reaching to people for help\r\n'),
(165, 'icp_04_02_01', 'Health Management', 'Unwell or Injured', 'Understanding what an emergency is\r\n'),
(166, 'icp_04_02_02', 'Health Management', 'Unwell or Injured', 'Assessing the situation\r\n'),
(167, 'icp_04_02_03', 'Health Management', 'Unwell or Injured', 'Taking control of the situation\r\n'),
(168, 'icp_04_02_04', 'Health Management', 'Unwell or Injured', 'Understanding the content and use of the first aid box\r\n'),
(169, 'icp_04_02_05', 'Health Management', 'Unwell or Injured', 'Refilling the first aid box as and when necessary\r\n'),
(170, 'icp_04_03_02', 'Health Management', 'Unwell or Injured', 'Understanding the dosage - taking only prescribed meds\r\n'),
(171, 'icp_04_03_03', 'Health Management', 'Unwell or Injured', 'When and how to take medicines\r\n'),
(172, 'icp_04_03_04', 'Health Management', 'Unwell or Injured', 'Report to doctor if no change in symptoms\r\n'),
(173, 'icp_04_03_05', 'Health Management', 'Unwell or Injured', 'Refilling the medicine boxes - Taking stock of meds, Getting medicines by showing prescription etc\r\n'),
(174, 'icp_04_03_06', 'Health Management', 'Unwell or Injured', 'Follow up on appointments\r\n'),
(175, 'icp_04_03_01', 'Health Management', 'Unwell or Injured', 'Understanding the need for taking medicines\r\n'),
(176, 'icp_04_03_07', 'Health Management', 'Unwell or Injured', 'Checking the availabiltiy of professionals\r\n'),
(177, 'icp_04_03_08', 'Health Management', 'Unwell or Injured', 'Checking the expiry date of the medicines \r\n'),
(178, 'icp_04_03_09', 'Health Management', 'Unwell or Injured', 'Adhering to treatment\r\n'),
(179, 'icp_04_04_01', 'Health Management', 'Lifestyle Choices', 'Understanding alternative lifestyle choices\r\n'),
(180, 'icp_04_04_02', 'Health Management', 'Lifestyle Choices', 'Adhering to exercises and yoga and other means of lifestyle'),
(181, 'icp_04_04_03', 'Health Management', 'Lifestyle Choices', 'Maitaining and following diet\r\n'),
(182, 'icp_04_04_04', 'Health Management', 'Lifestyle Choices', 'Avoiding junk food and taking in nutritious food\r\n'),
(183, 'icp_04_05_04', 'Health Management', 'Physical & Mental Health', 'Seeking appropriate help\r\n'),
(184, 'icp_04_05_03', 'Health Management', 'Physical & Mental Health', 'Understanding how to handle the situation\r\n'),
(185, 'icp_04_05_02', 'Health Management', 'Physical & Mental Health', 'Able to establish their pattern (Thoughts, emotions, physical and behavioral patterns)\r\n'),
(186, 'icp_04_05_01', 'Health Management', 'Physical & Mental Health', 'Understanding their own stress and triggers\r\n'),
(187, 'icp_04_05_05', 'Health Management', 'Physical & Mental Health', 'Avoiding triggers\r\n'),
(188, 'icp_05_01_01', 'Engagement & Employment', 'Interest and Aptitude\r\n\r\n', 'Understanding our own needs and preferences\r\n'),
(189, 'icp_05_01_02', 'Engagement & Employment', 'Interest and Aptitude\r\n\r\n', 'Linking needs and resources\r\n'),
(190, 'icp_05_01_03', 'Engagement & Employment', 'Interest and Aptitude\r\n\r\n', 'Fixing goals\r\n'),
(191, 'icp_05_01_04', 'Engagement & Employment', 'Interest and Aptitude\r\n\r\n', 'Upgrading skills if needed'),
(192, 'icp_05_01_05', 'Engagement & Employment', 'Interest and Aptitude\r\n\r\n', 'Mapping skills and jobs\r\n'),
(193, 'icp_05_02_01', 'Engagement & Employment', 'Daily Routine', 'Understanding the need to follow a schedule\r\n'),
(194, 'icp_05_02_03', 'Engagement & Employment', 'Daily Routine', 'Understanding and calculating the time required to do the tasks'),
(195, 'icp_05_02_02', 'Engagement & Employment', 'Daily Routine', 'Determining the task\r\n'),
(196, 'icp_05_02_04', 'Engagement & Employment', 'Daily Routine', 'Identifying difficulties in performing the tasks\r\n'),
(197, 'icp_05_03_04', 'Engagement & Employment', 'Identifying Opportunities', 'Verifying jobs\r\n'),
(198, 'icp_05_03_03', 'Engagement & Employment', 'Identifying Opportunities', 'Evaluating self to fit into jobs\r\n'),
(199, 'icp_05_03_02', 'Engagement & Employment', 'Identifying Opportunities', 'Matching interests, needs and opportunities\r\n'),
(200, 'icp_05_03_01', 'Engagement & Employment', 'Identifying Opportunities', 'Identifying opportunities through networks and newspapers\r\n'),
(201, 'icp_05_03_05', 'Engagement & Employment', 'Identifying Opportunities', 'To test the authenticity of the jobs\r\n'),
(202, 'icp_05_04_01', 'Engagement & Employment', 'Interviews & Negotiations', 'Understanding the nature of the job being applied for'),
(203, 'icp_05_04_02', 'Engagement & Employment', 'Interviews & Negotiations', 'Getting prepared for interview - knowing about the company, preparing resume\r\n'),
(204, 'icp_05_04_03', 'Engagement & Employment', 'Interviews & Negotiations', 'Understaing interview ettiques, being there on time, focus on body language etc\r\n'),
(205, 'icp_05_04_04', 'Engagement & Employment', 'Interviews & Negotiations', 'Discussion about salary, clarifying any doubts, being assertive\r\n'),
(206, 'icp_05_04_05', 'Engagement & Employment', 'Interviews & Negotiations', 'Decision on whether to reveal about mental health issues or not\r\n'),
(207, 'icp_05_05_02', 'Engagement & Employment', 'Workplace Relations', 'Being aware of responsiblity along with roles\r\n'),
(208, 'icp_05_05_03', 'Engagement & Employment', 'Workplace Relations', 'Communicating effectively\r\n'),
(209, 'icp_05_05_04', 'Engagement & Employment', 'Workplace Relations', 'Knowing boundaries'),
(210, 'icp_05_05_05', 'Engagement & Employment', 'Workplace Relations', 'Communicating about leave\r\n'),
(211, 'icp_05_05_06', 'Engagement & Employment', 'Workplace Relations', 'Managing workplace conflicts\r\n'),
(212, 'icp_05_05_07', 'Engagement & Employment', 'Workplace Relations', 'Understaing the rights of a person\r\n'),
(213, 'icp_05_05_08', 'Engagement & Employment', 'Workplace Relations', 'Expressing concerns regarding reasonable accomodation\r\n'),
(214, 'icp_05_05_01', 'Engagement & Employment', 'Workplace Relations', 'Understand our role in work - Supervisor/supervisee, friend, colleague, team member etc\r\n'),
(215, 'icp_05_06_01', 'Engagement & Employment', 'Working Effectively', 'Taking stock of resources needed to complete the task\r\n'),
(216, 'icp_05_06_02', 'Engagement & Employment', 'Working Effectively', 'Prioritizing various tasks\r\n'),
(217, 'icp_05_06_03', 'Engagement & Employment', 'Working Effectively', 'Develop a sequence of taks to be done\r\n'),
(218, 'icp_05_06_04', 'Engagement & Employment', 'Working Effectively', 'Seeking help when needed\r\n'),
(219, 'icp_05_07_01', 'Engagement & Employment', 'Work-Life Balance', 'Understanding the need for balance between work and life\r\n'),
(220, 'icp_05_07_02', 'Engagement & Employment', 'Work-Life Balance', 'Prioritizing various tasks\r\n'),
(221, 'icp_05_07_03', 'Engagement & Employment', 'Work-Life Balance', 'Focus on time management \r\n'),
(222, 'icp_05_08_01', 'Engagement & Employment', 'Dealing with Stress', 'Understanding triggers\r\n'),
(223, 'icp_05_08_02', 'Engagement & Employment', 'Dealing with Stress', 'Remembering schedules and setting reminders\r\n'),
(224, 'icp_05_08_03', 'Engagement & Employment', 'Dealing with Stress', 'Reaching out to people for help\r\n'),
(225, 'icp_06_01_01', 'Personal Safety', 'Personal Details', 'Knowing ones own phone number and other numbers to contact during emergency\r\n'),
(226, 'icp_06_01_02', 'Personal Safety', 'Personal Details', 'Understanding and identifying landmarks\r\n'),
(227, 'icp_06_01_03', 'Personal Safety', 'Personal Details', 'Identifying places that are not safe to go alone\r\n'),
(228, 'icp_06_02_01', 'Personal Safety', 'Safety Processes', 'Identifying saftey exits in all places\r\n'),
(229, 'icp_06_02_02', 'Personal Safety', 'Safety Processes', 'Knowing how to use saftey equipments like fire extinguishers and others\r\n'),
(230, 'icp_06_02_03', 'Personal Safety', 'Safety Processes', 'Safe use of kitchen equipments - Grinder, Mixy, using water heater, change of cylinders etc\r\n'),
(231, 'icp_06_02_04', 'Personal Safety', 'Safety Processes', 'Use of saftey measures like lockers, purse etc\r\n'),
(232, 'icp_06_02_05', 'Personal Safety', 'Safety Processes', 'Gathering in a safe place during emergency\r\n'),
(233, 'icp_06_02_06', 'Personal Safety', 'Safety Processes', 'Able to navigate community spaces safely - reading road signals, crossing roads, using side lanes etc\r\n'),
(234, 'icp_06_02_07', 'Personal Safety', 'Safety Processes', 'Dealing with strangers - not revealing any personal informations or share any official informations like ATM pins and credit cards\r\n'),
(235, 'icp_06_03_01', 'Personal Safety', 'Relationship Red Flags', 'Understanding different types of abuse\r\n'),
(236, 'icp_06_03_02', 'Personal Safety', 'Relationship Red Flags', 'Understanding personal space and boundary\r\n'),
(237, 'icp_06_03_03', 'Personal Safety', 'Relationship Red Flags', 'Good touch and bad touch'),
(238, 'icp_06_03_04', 'Personal Safety', 'Relationship Red Flags', 'Identifying various forms of exploitation by peers, community, in workplace etc\r\n'),
(239, 'icp_06_03_05', 'Personal Safety', 'Relationship Red Flags', 'Vocalize against violence and abuse\r\n'),
(240, 'icp_06_03_06', 'Personal Safety', 'Relationship Red Flags', 'Understanding legal aid and the need to reach out for help\r\n'),
(241, 'icp_06_03_07', 'Personal Safety', 'Relationship Red Flags', 'Avoiding situations were you might be put at risk\r\n'),
(242, 'icp_06_03_08', 'Personal Safety', 'Relationship Red Flags', 'Learning basic self defense\r\n'),
(243, 'icp_07_01_01', 'Economic Transactions', 'Understanding & Recognizing Currency', 'Understanding the purpose and conept of money\r\n'),
(244, 'icp_07_01_02', 'Economic Transactions', 'Understanding & Recognizing Currency', 'Identifying different denominations\r\n'),
(245, 'icp_07_01_03', 'Economic Transactions', 'Understanding & Recognizing Currency', 'Counting money\r\n'),
(246, 'icp_07_02_03', 'Economic Transactions', 'Performing Simple Calculations', 'Multiplications\r\n'),
(247, 'icp_07_02_02', 'Economic Transactions', 'Performing Simple Calculations', 'Subtractions\r\n'),
(248, 'icp_07_02_01', 'Economic Transactions', 'Performing Simple Calculations', 'Additions\r\n'),
(249, 'icp_07_03_03', 'Economic Transactions', 'Concept of Trade', 'Negotiating and barganing price for the products\r\n'),
(250, 'icp_07_03_02', 'Economic Transactions', 'Concept of Trade', 'Paying for goods and demanding change in return\r\n'),
(251, 'icp_07_03_01', 'Economic Transactions', 'Concept of Trade', 'Understanding the concept of market values\r\n'),
(252, 'icp_07_02_04', 'Economic Transactions', 'Performing Simple Calculations', 'Divisions\r\n'),
(253, 'icp_07_03_04', 'Economic Transactions', 'Concept of Trade', 'Replacing goods if not in good condition\r\n'),
(254, 'icp_07_04_01', 'Economic Transactions', 'Personal Shopping', 'Assessing the needs\r\n'),
(255, 'icp_07_04_02', 'Economic Transactions', 'Personal Shopping', 'Mapping needs and money we have at need\r\n'),
(256, 'icp_07_04_03', 'Economic Transactions', 'Personal Shopping', 'Identify place or shop according to money at hand\r\n'),
(257, 'icp_07_04_04', 'Economic Transactions', 'Personal Shopping', 'Prepare list of things to be purchased'),
(258, 'icp_07_04_05', 'Economic Transactions', 'Personal Shopping', 'Carrying essential items for shopping - bags, cards etc\r\n'),
(259, 'icp_07_05_01', 'Economic Transactions', 'Personal Income', 'Understanding your income and expense\r\n'),
(260, 'icp_07_05_02', 'Economic Transactions', 'Personal Income', 'Prioritizing expenses\r\n'),
(261, 'icp_07_05_03', 'Economic Transactions', 'Personal Income', 'Exploring various options of saving money\r\n'),
(262, 'icp_07_05_04', 'Economic Transactions', 'Personal Income', 'Maintaining account of income and expenses\r\n'),
(263, 'icp_07_05_05', 'Economic Transactions', 'Personal Income', 'Preparing budgets\r\n'),
(264, 'icp_07_06_01', 'Economic Transactions', 'Bank Account Operation', 'Understanding the concept of banking\r\n'),
(265, 'icp_07_06_02', 'Economic Transactions', 'Bank Account Operation', 'Deciding the bank\r\n'),
(266, 'icp_07_06_03', 'Economic Transactions', 'Bank Account Operation', 'Deciding on the nature of the account\r\n'),
(267, 'icp_07_06_04', 'Economic Transactions', 'Bank Account Operation', 'Deciding the amount to be deposited\r\n'),
(268, 'icp_07_06_05', 'Economic Transactions', 'Bank Account Operation', 'Learning how to deposit, withdraw and fill challans\r\n'),
(269, 'icp_07_06_06', 'Economic Transactions', 'Bank Account Operation', 'Use of ATM cards and safe use of pins'),
(270, 'icp_07_06_07', 'Economic Transactions', 'Bank Account Operation', 'Maintaining and updating passbooks\r\n'),
(271, 'icp_07_06_08', 'Economic Transactions', 'Bank Account Operation', 'Understanding the need to maintain confidentiality regarding pins\r\n'),
(272, 'icp_07_07_01', 'Economic Transactions', 'Loans & Dues', 'Thinking twice before getting loan or debts\r\n'),
(273, 'icp_07_07_02', 'Economic Transactions', 'Loans & Dues', 'Assessing our capacity to repay loans and debts\r\n'),
(274, 'icp_07_07_03', 'Economic Transactions', 'Loans & Dues', 'Understanding safe ways to get debts\r\n'),
(275, 'icp_07_07_04', 'Economic Transactions', 'Loans & Dues', 'Awareness about various schemes pertaining to loans\r\n'),
(276, 'icp_07_07_05', 'Economic Transactions', 'Loans & Dues', 'Approaching the right person for help\r\n'),
(277, 'icp_08_01_01', 'Cultural & Spiritual Pursuits', 'Celebrating Festivals', 'Identifying Interests'),
(278, 'icp_08_01_02', 'Cultural & Spiritual Pursuits', 'Celebrating Festivals', 'Exploring various options of celebration'),
(279, 'icp_08_01_03', 'Cultural & Spiritual Pursuits', 'Celebrating Festivals', 'Inviting everybody and to be a part of the community'),
(280, 'icp_08_02_01', 'Cultural & Spiritual Pursuits', 'Participating in Cultural Events\r\n\r\n\r\n', 'Identifying interests\r\n'),
(281, 'icp_08_02_02', 'Cultural & Spiritual Pursuits', 'Participating in Cultural Events\r\n\r\n\r\n', 'Exploring different venues for participating in cultural events\r\n'),
(282, 'icp_08_02_03', 'Cultural & Spiritual Pursuits', 'Participating in Cultural Events\r\n\r\n\r\n', 'Identifying the right person to form as a group\r\n'),
(283, 'icp_08_03_01', 'Cultural & Spiritual Pursuits', 'Identifying Cultural Affiliations', 'Understanding the concept of culture\r\n'),
(284, 'icp_08_03_02', 'Cultural & Spiritual Pursuits', 'Identifying Cultural Affiliations', 'Dressing and preparing foods according to the demands of the culture\r\n'),
(285, 'icp_08_03_03', 'Cultural & Spiritual Pursuits', 'Identifying Cultural Affiliations', 'Understanding the right to follow a particular culture\r\n'),
(286, 'icp_08_03_04', 'Cultural & Spiritual Pursuits', 'Identifying Cultural Affiliations', 'Form groups based on culture\r\n'),
(287, 'icp_09_01_01', 'Citizenship', 'Essential Public Office Awareness', 'Ability to locate PDS\r\n'),
(288, 'icp_09_01_02', 'Citizenship', 'Essential Public Office Awareness', 'Being aware of E-Seva centers\r\n'),
(289, 'icp_09_01_03', 'Citizenship', 'Essential Public Office Awareness', 'Being aware of other public offices like Passport office, EB office etc\r\n'),
(290, 'icp_09_02_01', 'Citizenship', 'Local Current Affairs Awareness', 'Awareness of local leaders\r\n'),
(291, 'icp_09_02_02', 'Citizenship', 'Local Current Affairs Awareness', 'Understanding about Gram panchayats and other local goveranance\r\n'),
(292, 'icp_09_02_03', 'Citizenship', 'Local Current Affairs Awareness', 'Aware of what is happening in the community by interacting with the community\r\n'),
(293, 'icp_09_02_04', 'Citizenship', 'Local Current Affairs Awareness', 'Understanding whom to report to in case of any issues\r\n'),
(294, 'icp_09_03_01', 'Citizenship', 'Participation in Discussions', 'Understanding the need to participate in discussions\r\n'),
(295, 'icp_09_03_02', 'Citizenship', 'Participation in Discussions', 'Being aware of issues that needs to be discussed\r\n'),
(296, 'icp_09_03_03', 'Citizenship', 'Participation in Discussions', 'Acting as peer advocate\r\n'),
(297, 'icp_09_03_04', 'Citizenship', 'Participation in Discussions', 'Understanding and raising awareness regarding opressions and marginalizations\r\n'),
(298, 'icp_10_01_01', 'Interdependence', 'Mutual Reliance & Reciprocity', 'Giving space and preserving our personal boundary\r\n'),
(299, 'icp_10_01_02', 'Interdependence', 'Mutual Reliance & Reciprocity', 'Validating each ones experience and emotions'),
(300, 'icp_10_02_01', 'Interdependence', 'Demonstrating Empathy Towards Co-Residents', 'Being empathetic towards the resident\r\n'),
(301, 'icp_10_02_02', 'Interdependence', 'Demonstrating Empathy Towards Co-Residents', 'Helping at times of need\r\n'),
(302, 'icp_10_02_03', 'Interdependence', 'Demonstrating Empathy Towards Co-Residents', 'Sharing common likes and preferences\r\n'),
(303, 'icp_10_02_04', 'Interdependence', 'Demonstrating Empathy Towards Co-Residents', 'Listening to their concern and offer support\r\n'),
(304, 'icp_10_03_01', 'Interdependence', 'Demonstrating Empathy Towards Staff', 'Understanding the concerns faced by the staff\r\n'),
(305, 'icp_10_03_02', 'Interdependence', 'Demonstrating Empathy Towards Staff', 'Offering help wherever and whenever it is possible\r\n'),
(306, 'icp_10_03_03', 'Interdependence', 'Demonstrating Empathy Towards Staff', 'Listening and understanding their concerns at their own levels.\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `injection_schedule`
--

CREATE TABLE `injection_schedule` (
  `client_file_number` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `injection_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `injection_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `injection_schedule`
--

INSERT INTO `injection_schedule` (`client_file_number`, `injection_name`, `injection_date`) VALUES
('1001', 'Randomizin', '2020-08-31');

-- --------------------------------------------------------

--
-- Table structure for table `kitchen_master`
--

CREATE TABLE `kitchen_master` (
  `id` bigint(20) NOT NULL,
  `center_code` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cgiver_code` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `status_stock_request` tinyint(4) DEFAULT NULL,
  `status_store_clean` tinyint(4) DEFAULT NULL,
  `status_stock_clearance` tinyint(4) DEFAULT NULL,
  `status_kitchen_waste_disposal` tinyint(4) DEFAULT NULL,
  `status_kitchen_clean` tinyint(4) DEFAULT NULL,
  `status_utensil_washed` tinyint(4) DEFAULT NULL,
  `status_text` text COLLATE utf8_unicode_ci,
  `stock_image_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kitchen_selfie_url` text COLLATE utf8_unicode_ci,
  `kitchen_latlong` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `kitchen_master`
--

INSERT INTO `kitchen_master` (`id`, `center_code`, `cgiver_code`, `date`, `status_stock_request`, `status_store_clean`, `status_stock_clearance`, `status_kitchen_waste_disposal`, `status_kitchen_clean`, `status_utensil_washed`, `status_text`, `stock_image_url`, `kitchen_selfie_url`, `kitchen_latlong`) VALUES
(1, 'ECRC_01', 'BCG_01', '2020-08-25 00:00:00', 1, 1, 0, 1, 0, 1, 'text message', 'http://35.211.229.171/portal/public/uploads/images/overlay_1598356117.png', NULL, NULL),
(2, 'ECRC_03', 'BCG_03', '2020-08-29 23:08:00', 1, 1, 0, 11, 1, 0, 'None', 'http://35.211.229.171/portal/public/uploads/images/2020-08-29_23:08:24_1598722719.jpg', NULL, NULL),
(3, 'ECRC_03', 'BCG_03', '2020-08-29 23:10:00', 1, 1, 0, 1, 0, 0, 'Kitchen', 'http://35.211.229.171/portal/public/uploads/images/2020-08-29_23:10:27_1598722856.jpg', NULL, NULL),
(4, 'ECRC_03', 'BCG_03', '2020-08-29 23:13:00', 1, 1, 0, 11, 1, 1, 'testing', 'http://35.211.229.171/portal/public/uploads/images/2020-08-29_23:13:34_1598723038.jpg', NULL, NULL),
(5, 'ECRC_01', 'BCG_01', '2020-08-25 00:00:00', 1, 1, 0, 1, 0, 1, 'text message', 'http://35.211.229.171/portal/public/uploads/images/no-image_1600341537.png', 'http://35.211.229.171/portal/public/uploads/images/tick_1600341537.png', '{\"lat\":\"13.33333\",\"long\":\"80.2222\"}'),
(6, 'ECRC_03', 'BCG_03', '2020-09-19 12:01:00', 1, 1, 1, 5, 1, 1, 'I happened to review on 18 9 2020 review suggest that she has depression with anorexia symptoms that was suggested was to increase the doors of Central to 200 milligrams per day and the team of nurses and health care workers to prevent her from inducing vomiting all through the day if she continues to refuse intake of fluids we should think of transfer using IV fluids after assessment the level of hydration blood pressure pulse spo2 levels should be checked every 4 hours in case there are some difficulties concerns kindly contact Dr Kishore', 'http://35.211.229.171/portal/public/uploads/images/2020-09-19_11:45:41_1600497084.jpg', 'http://35.211.229.171/portal/public/uploads/images/2020-09-19_11:45:41_1600497084.jpg', '{\"lat\":null,\"long\":null}');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`) VALUES
(1, 'English'),
(2, 'Tamil');

-- --------------------------------------------------------

--
-- Table structure for table `medical_screening`
--

CREATE TABLE `medical_screening` (
  `id` bigint(20) NOT NULL,
  `date_time` timestamp NULL DEFAULT NULL,
  `client_file_number` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cgiver_code` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `scalp_injury` tinyint(4) DEFAULT NULL,
  `scalp_pediculosis` tinyint(4) DEFAULT NULL,
  `scalp_dandruff` tinyint(4) DEFAULT NULL,
  `scalp_alopecia` tinyint(4) DEFAULT NULL,
  `eyes_stye` tinyint(4) DEFAULT NULL,
  `eyes_discharge` tinyint(4) DEFAULT NULL,
  `eyes_redness` tinyint(4) DEFAULT NULL,
  `ears_pain` tinyint(4) DEFAULT NULL,
  `ears_discharge` tinyint(4) DEFAULT NULL,
  `nose_block` tinyint(4) DEFAULT NULL,
  `nose_bleeding` tinyint(4) DEFAULT NULL,
  `nose_cold` tinyint(4) DEFAULT NULL,
  `mouth_bo` tinyint(4) DEFAULT NULL,
  `mouth_dentalcarriers` tinyint(4) DEFAULT NULL,
  `mouth_gumbleed` tinyint(4) DEFAULT NULL,
  `mouth_vomit` tinyint(4) DEFAULT NULL,
  `neck_thyroidglandswelling` tinyint(4) DEFAULT NULL,
  `neck_lymphadenitis` tinyint(4) DEFAULT NULL,
  `chest_tenderness` tinyint(4) DEFAULT NULL,
  `chest_galactorrhea` tinyint(4) DEFAULT NULL,
  `chest_sorenipple` tinyint(4) DEFAULT NULL,
  `chest_cough` tinyint(4) DEFAULT NULL,
  `chest_wheezing` tinyint(4) DEFAULT NULL,
  `abdomen_pain` tinyint(4) DEFAULT NULL,
  `abdomen_distension` tinyint(4) DEFAULT NULL,
  `abdomen_diarrhea` tinyint(4) DEFAULT NULL,
  `abdomen_constipation` tinyint(4) DEFAULT NULL,
  `extremities_injury` tinyint(4) DEFAULT NULL,
  `extremities_wound` tinyint(4) DEFAULT NULL,
  `extremities_fracture` tinyint(4) DEFAULT NULL,
  `skin_rashes` tinyint(4) DEFAULT NULL,
  `skin_discoloration` tinyint(4) DEFAULT NULL,
  `genitals_rashes` tinyint(4) DEFAULT NULL,
  `genitals_fungal` tinyint(4) DEFAULT NULL,
  `genitals_whitedischarge` tinyint(4) DEFAULT NULL,
  `genitals_menorrhagia` tinyint(4) DEFAULT NULL,
  `hospital_emergencies` tinyint(4) DEFAULT NULL,
  `hospital_admission` tinyint(4) DEFAULT NULL,
  `vital_temperature` tinyint(4) DEFAULT NULL,
  `vital_pulse` tinyint(4) DEFAULT NULL,
  `vital_respiration` tinyint(4) DEFAULT NULL,
  `vital_bp_sys` tinyint(4) DEFAULT NULL,
  `vital_bp_dias` tinyint(4) DEFAULT NULL,
  `vital_weight` tinyint(4) DEFAULT NULL,
  `vital_bmi` tinyint(4) DEFAULT NULL,
  `vital_period_start` date DEFAULT NULL,
  `vital_period_end` date DEFAULT NULL,
  `medical_screening_selfie_url` mediumtext COLLATE utf8_unicode_ci,
  `medical_screening_latlong` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `medical_screening`
--

INSERT INTO `medical_screening` (`id`, `date_time`, `client_file_number`, `cgiver_code`, `scalp_injury`, `scalp_pediculosis`, `scalp_dandruff`, `scalp_alopecia`, `eyes_stye`, `eyes_discharge`, `eyes_redness`, `ears_pain`, `ears_discharge`, `nose_block`, `nose_bleeding`, `nose_cold`, `mouth_bo`, `mouth_dentalcarriers`, `mouth_gumbleed`, `mouth_vomit`, `neck_thyroidglandswelling`, `neck_lymphadenitis`, `chest_tenderness`, `chest_galactorrhea`, `chest_sorenipple`, `chest_cough`, `chest_wheezing`, `abdomen_pain`, `abdomen_distension`, `abdomen_diarrhea`, `abdomen_constipation`, `extremities_injury`, `extremities_wound`, `extremities_fracture`, `skin_rashes`, `skin_discoloration`, `genitals_rashes`, `genitals_fungal`, `genitals_whitedischarge`, `genitals_menorrhagia`, `hospital_emergencies`, `hospital_admission`, `vital_temperature`, `vital_pulse`, `vital_respiration`, `vital_bp_sys`, `vital_bp_dias`, `vital_weight`, `vital_bmi`, `vital_period_start`, `vital_period_end`, `medical_screening_selfie_url`, `medical_screening_latlong`) VALUES
(1, '2020-08-26 06:23:42', '2011/BSR/001-A', 'BCG_01', 1, 0, 1, 1, 0, 1, 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 0, 1, 0, 1, 0, 0, 1, 0, 1, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 1, 1, 1, 1, '1970-01-01', '1970-01-01', NULL, NULL),
(2, '2020-09-10 18:19:43', '2011/BSR/001-A', 'BCG_01', 1, 0, 1, 1, 0, 1, 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 0, 1, 0, 1, 0, 0, 1, 0, 1, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 1, 1, 1, 1, '1970-01-01', '1970-01-01', NULL, NULL),
(3, '2020-09-11 12:20:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1970-01-01', '1970-01-01', NULL, NULL),
(4, '2020-09-11 12:24:59', '208', 'BCG_18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1970-01-01', '1970-01-01', NULL, NULL),
(5, '2020-09-11 12:26:15', '208', 'BCG_18', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 0, 0, NULL, 1, 1, 1, 0, 1, 0, 0, 1, 1, 0, 0, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1970-01-01', '1970-01-01', NULL, NULL),
(6, '2020-09-11 12:55:51', 'R-92', 'BCG_18', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 111, 111, 111, 111, 111, 111, NULL, '1970-01-01', '1970-01-01', NULL, NULL),
(7, '2020-09-19 05:05:45', '2011/BSR/001-A', 'BCG_01', 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1970-01-01', '1970-01-01', NULL, NULL),
(8, '2020-09-19 05:31:19', 'R-88', 'BCG_18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1970-01-01', '1970-01-01', NULL, NULL),
(9, '2020-09-19 05:45:52', 'R-88', 'BCG_18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1970-01-01', '1970-01-01', NULL, NULL),
(10, '2020-09-19 05:54:26', 'R-88', 'BCG_18', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 122, 12, 121, 121, 121, 121, NULL, '1970-01-01', '1970-01-01', NULL, NULL),
(11, '2020-09-23 05:06:32', '2011/BSR/001-A', 'BCG_01', 1, 0, 1, 1, 0, 1, 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 0, 1, 0, 1, 0, 0, 1, 0, 1, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 1, 1, 1, 1, '1970-01-01', '1970-01-01', 'http://35.211.229.171/portal/public/uploads/images/145-1454284_software-for-laser-cutting-engraving-icon-no-image-available_1600837592.png', '{\"lat\":\"13.1192383\",\"long\":\"13.1192383\"}'),
(12, '2020-09-23 05:07:25', '2011/BSR/001-A', 'BCG_01', 1, 0, 1, 1, 0, 1, 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 0, 1, 0, 1, 0, 0, 1, 0, 1, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 1, 1, 1, 1, '1970-01-01', '1970-01-01', 'http://35.211.229.171/portal/public/uploads/images/145-1454284_software-for-laser-cutting-engraving-icon-no-image-available_1600837645.png', '{\"lat\":\"13.1192383\",\"long\":\"13.1192383\"}'),
(13, '2020-09-23 05:08:29', '875', 'BCG_18', 1, 0, 1, 1, 0, 1, 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 0, 1, 0, 1, 0, 0, 1, 0, 1, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 1, 1, 1, 1, '1970-01-01', '1970-01-01', 'http://35.211.229.171/portal/public/uploads/images/145-1454284_software-for-laser-cutting-engraving-icon-no-image-available_1600837709.png', '{\"lat\":\"13.1192383\",\"long\":\"13.1192383\"}'),
(14, '2020-09-23 05:19:35', '875', 'BCG_18', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 111, 111, 111, 111, 111, 111, NULL, '1970-01-01', '1970-01-01', 'http://35.211.229.171/portal/public/uploads/images/2020-09-23_10:48:17_1600838375.jpg', '{\"lat\":\"13.1192354\",\"long\":\"80.2012272\"}'),
(15, '2020-09-23 05:29:50', '875', 'BCG_18', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 111, 111, 111, 111, 111, 111, NULL, '1970-01-01', '1970-01-01', 'http://35.211.229.171/portal/public/uploads/images/2020-09-23_10:58:36_1600838990.jpg', '{\"lat\":\"13.1191961\",\"long\":\"80.2011854\"}'),
(16, '2021-12-07 21:45:57', '208', 'BCG_18', 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 97, 62, 21, 80, 120, 42, 19, '1970-01-01', '1970-01-01', 'public/uploads/images/1638888275780_1638888357.jpg', '{\"lat\":\"12.9768577\",\"long\":\"80.258316\"}');

-- --------------------------------------------------------

--
-- Table structure for table `medicine_master`
--

CREATE TABLE `medicine_master` (
  `id` bigint(20) NOT NULL,
  `date` datetime DEFAULT NULL,
  `client_file_number` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `client_diagnosis` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `medicine_1_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `medicine_1_strength` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `medicine_1_schedule` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `medicine_2_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `medicine_2_strength` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `medicine_2_schedule` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `medicine_3_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `medicine_3_strength` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `medicine_3_schedule` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `medicine_4_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `medicine_4_strength` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `medicine_4_schedule` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `medicine_5_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `medicine_5_strength` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `medicine_5_schedule` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `medicine_6_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `medicine_6_strength` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `medicine_6_schedule` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `medicine_7_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `medicine_7_strength` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `medicine_7_schedule` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `medicine_8_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `medicine_8_strength` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `medicine_8_schedule` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `medicine_9_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `medicine_9_strength` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `medicine_9_schedule` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `medicine_10_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `medicine_10_strength` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `medicine_10_schedule` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `medicine_11_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `medicine_11_strength` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `medicine_11_schedule` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `medicine_12_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `medicine_12_strength` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `medicine_12_schedule` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `medicine_13_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `medicine_13_strength` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `medicine_13_schedule` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `medicine_14_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `medicine_14_strength` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `medicine_14_schedule` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `medicine_15_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `medicine_15_strength` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `medicine_15_schedule` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `doc_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `medicine_master`
--

INSERT INTO `medicine_master` (`id`, `date`, `client_file_number`, `client_diagnosis`, `medicine_1_name`, `medicine_1_strength`, `medicine_1_schedule`, `medicine_2_name`, `medicine_2_strength`, `medicine_2_schedule`, `medicine_3_name`, `medicine_3_strength`, `medicine_3_schedule`, `medicine_4_name`, `medicine_4_strength`, `medicine_4_schedule`, `medicine_5_name`, `medicine_5_strength`, `medicine_5_schedule`, `medicine_6_name`, `medicine_6_strength`, `medicine_6_schedule`, `medicine_7_name`, `medicine_7_strength`, `medicine_7_schedule`, `medicine_8_name`, `medicine_8_strength`, `medicine_8_schedule`, `medicine_9_name`, `medicine_9_strength`, `medicine_9_schedule`, `medicine_10_name`, `medicine_10_strength`, `medicine_10_schedule`, `medicine_11_name`, `medicine_11_strength`, `medicine_11_schedule`, `medicine_12_name`, `medicine_12_strength`, `medicine_12_schedule`, `medicine_13_name`, `medicine_13_strength`, `medicine_13_schedule`, `medicine_14_name`, `medicine_14_strength`, `medicine_14_schedule`, `medicine_15_name`, `medicine_15_strength`, `medicine_15_schedule`, `doc_id`) VALUES
(1, '2020-08-25 06:36:54', '2011/BSR/001-A', 'Paranoid Schizophrenia', 'Tab. Clozapine', '100MG', '0,0,2', 'Cap. Evion', '400MG', '1,0,1', 'Tab. Lorazepam', '1MG', '0,0,1', 'Tab. Escitalopram', '5MG', '1,0,2', 'Inj. Ativan', '2CC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, '2020-08-25 06:39:48', '2016/BSR/007', 'Psychosis NOS', 'Tab. Clozapine', '100MG', '0,0,3', 'Tab. Lorazepam', '1MG', '1,0,1', 'Inj. Ativan', '2CC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, '2020-08-25 06:42:11', '2013/BSR/015', 'MR with Psychosis', 'Tab. Sodium Valproate', '500MG', '1,0,1.5', 'Tab. Risperidone', '2MG', '0,0,1', 'Tab. THP', '2MG', '1,1,0', 'Inj. Ativan', '2CC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, '2020-08-25 06:43:41', '2020/BSR/022', 'N/A', 'Tab. Risperidone', '2MG', '1,0,3', 'Tab. THP', '2MG', '1,1,0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, '2020-08-25 06:45:01', '2017/BSR/009', 'MR with Psychosis', 'Tab. Risperidone', '2MG', '0,0,3', 'Tab. THP', '2MG', '1,1,0', 'Inj. Ativan', '2CC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, '2020-08-25 06:45:51', '2012/BSR/032', 'Parkinsons', 'Tab. Syndopa', '110MG', '0.5,0,0.5', 'Tab. Escitalopram', '5MG\r\n', '0,0,1', 'Tab. Envas', '5MG', '1,0,1', 'Inj. Ativan', '2CC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, '2020-08-25 06:48:35', '2014/BSR/055', 'MR with BPAD', 'Tab. THP', '2MG', '1,1,0', 'Tab. Chlorpromazine', '100MG', '0,0,1.5', 'Inj. Fluphenazine', '25MG', NULL, 'Inj. Ativan', '2CC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, '2020-08-25 06:49:50', '2013/BSR/025', 'Psychosis', 'Tab. THP', '2MG', '1,1,0', 'Inj. Fluphenazine', '25MG', NULL, 'Tab. Risperidone', '2MG', '0,0,2', 'Inj. Ativan', '2CC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, '2020-08-25 06:51:07', '2013/BSR/028', 'Schizophrenia', 'Tab. Risperidone', '2MG\r\n', '1,0,2', 'Tab. THP', '2MG', '1,1,0', 'Tab. Amisulpride', '100MG', '0,0,3', 'Tab. Chlorpromazine', '100MG', '0,0,1', 'Tab. Sertraline', '50MG', '1,0,0', 'Tab. Metformin', '500MG', '1,0,1', 'Inj. Ativan', '2CC\r\n', NULL, 'Tab. Livogen', '150MG\r\n', '0,0,1', 'Tab. Pantoprazole', '40 MG\r\n', '1,0,0', 'Cap. Vit B-Complex', NULL, '1,1,1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, '2020-08-25 07:01:59', '2018/BSR/007', 'NYD', 'Tab. Risperidone', '2MG', '0,0,2', 'Tab. THP', '2MG', '1,0,1', 'Inj. Fluanxol', '20MG', 'FN,0,0', 'Inj. Ativan', '2CC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, '2020-08-25 07:03:42', '2018/BSR/012', 'Moderate MR with Behavioral Problems', 'Tab. THP', '2MG\r\n', '1,0,0', 'Tab. Risperidone', '2MG', '0,0,1', 'Inj. Ativan', '2CC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, '2020-08-25 07:05:03', '2018/BSR/022', 'Psychosis with Catatonia', 'Tab. Amisulpride', '100MG\r\n', '2,0,2', 'Tab. THP', '2MG', '2,1,0', 'Tab. Lorazepam', '1MG', '0.5,0,1', 'Tab. Clozapine', '100MG', '0,0,1', 'Inj. Ativan', '2CC\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, '2020-08-25 07:06:48', '2019/BSR/029', 'MR', 'Tab. THP', '2MG\r\n', '1,1,0', 'Tab. Sertraline\r\n', '50MG\r\n', '2,1,0', 'Tab. Risperidone', '2MG\r\n', '1,0,2', 'Inj. Ativan', '2CC\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, '2020-08-25 07:10:05', '2019/BSR/040', 'Residual Schizophrenia', 'Tab. Risperidone', '2MG\r\n', '1,0,3', 'Tab. THP', '2MG\r\n', '1,1,0', 'Tab. Sertraline\r\n', '50MG\r\n', '1,0,0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, '2020-08-25 07:11:11', '2018/BSR/031', 'Psychosis NOS', 'Tab. Risperidone', '2MG\r\n', '0,0,2', 'Tab. THP', '2MG\r\n', '1,1,0', 'Inj. Ativan', '2CC\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, '2020-08-25 07:15:22', '2017/BSR/015', 'Severe MR with BH problems with nicotine addiction / Chronic Schizo (IMH)', 'Tab. Chlorpromazine', '100MG\r\n', '1,1,2', 'Tab. THP', '2MG\r\n', '1,1,0', 'Inj. Fluphenazine', '25MG\r\n', NULL, 'Inj. Ativan', '2CC\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, '2020-08-25 07:17:19', '2019/BSR/002', 'Paranoid Schizophrenia', 'Tab. Risperidone', '2MG', '0,0,1', 'Tab. THP', '2MG\r\n', '1,0,0', 'Tab. Escitalopram', '5MG\r\n', '1,0,1', 'Inj. Ativan', '2CC\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, '2020-08-25 07:18:28', '2019/BSR/026', 'MR with Psychosis', 'Tab. Risperidone', '2MG\r\n', '0,0,1', 'Tab. THP', '2MG\r\n', '1,0,0', 'Tab. Vit B-Complex', NULL, '1,0,1', 'Inj. Ativan', '2CC\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, '2020-08-25 07:19:47', '2019/BSR/038', 'MR\r\n', 'Tab. Chlorpromazine', '100MG\r\n', '05,0,2', 'Tab. THP', '2MG\r\n', '1,1,0', 'Tab. Clonidine', '0.5MG\r\n', '0.5,0,0.5', 'Inj. Ativan', '2CC\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, '2020-08-25 07:22:54', '2019/BSR/042', 'Severe MR, Down Syndrome', 'Tab. THP', '2MG\r\n', '1,0,0', 'Tab. Risperidone', '2MG\r\n', '0,0,1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, '2020-08-25 07:24:04', '??', NULL, 'Tab. THP', '2MG\r\n', '1,1,0', 'Tab. Risperidone', '2MG\r\n', '0,0,2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, '2020-08-25 07:24:52', '2019/BSR/045', 'Schizophrenia\r\n', 'Tab. THP', '2MG\r\n', '2,2,0', 'Tab. Livogen', '300MG\r\n', '1,0,1', 'Tab. Risperidone', '2MG\r\n', '1,0,3', 'Inj. Ativan', '2CC\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, '2020-08-25 07:27:43', '2019/BSR/048', 'NYD\r\n', 'Tab. Risperidone', '2MG\r\n', '0,0,1', 'Tab. THP', '2MG\r\n', '1,0,0', 'Tab. Livogen', '300MG\r\n', '0,0,1', 'Cap. Vit B-Complex', NULL, '1,0,1', 'Inj. Ativan', '2CC\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, '2020-08-25 07:29:47', '2018/BSR/032', 'MR with Psychosis', 'Tab. Quetiapine', '100MG\r\n', '0,0,1', 'Tab. THP', '2MG\r\n', '2,1,0', 'Tab. Tenofovir', '300MG\r\n', '1,0,0', 'Cap. Vit B-Complex', NULL, '1,0,1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, '2020-08-25 08:53:03', '2020/BSR/006', 'MR\r\n', 'Tab. THP', '2MG\r\n', '1,0,0\r\n', 'Tab. Risperidone', '2MG\r\n', '0,0,1\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, '2020-08-25 08:54:46', '2020/BSR/012', 'ADS with Behavioral Problems', 'Tab. Quetiapine', '100MG\r\n', '0,0,1\r\n', 'Tab. Escitalopram', '5MG\r\n', '1,0,2\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, '2020-08-25 08:55:56', '2011/BSR/039', 'Residual Schizophrenia\r\n', 'Tab. THP', '2MG\r\n', '1,1,0\r\n', 'Tab. Risperidone', '2MG\r\n', '1,0,3\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, '2020-08-25 08:56:41', '2020/BSR/016', 'Psychosis\r\n', 'Tab. THP', '2MG\r\n', '1,1,0\r\n', 'Inj. Fluanxol', '20MG\r\n', NULL, 'Tab. Metformin', '500MG\r\n', '1,1,2\r\n', 'Tab. Paracetamol', '2MG', '1,0,1\r\n', 'Tab. Risperidone', '2MG\r\n', '1,0,2\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, '2020-08-25 08:58:37', '2020/BSR/015', 'MR with Psychosis\r\n', 'Tab. Livogen', '300MG', '1,0,1\r\n', 'Tab. Quetiapine', '50MG', '0,0,2\r\n', 'Tab. Vit B-Complex', NULL, '1,0,1\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, '2020-08-25 08:59:58', '2017/BSR/013', 'Substance Misuse -Cannabis & Alcohol', 'Tab. THP', '2MG \r\n', '1,1,0\r\n', 'Inj. Fluanxol', '40MG\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, '2020-08-25 09:01:35', '2017/BSR/035', 'BPAD\r\n', 'Tab. Aripiprazole', '10MG', '0,0,1\r\n', 'Tab. Sodium Valproate', '500MG\r\n', '1,0,2\r\n', 'Tab. Quetiapine', '100MG', '1,0,2\r\n', 'Tab. THP', '2MG', '2,1,0\r\n', 'Tab. Chlorpromazine', '100MG', '0,0,1\r\n', 'Tab. THP', '2MG\r\n', '1,1,0\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, '2020-08-25 09:04:01', '2017/BSR/025', 'Psychosis NOS\r\n', 'Tab. Risperidone', '2MG', '1,0,2\r\n', 'Tab. Setraline', '50MG', '1,0,0\r\n', 'Inj. Fluphenazine', '75MG\r\n', NULL, 'Tab. THP', '2MG', '2,1,0\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, '2020-08-25 09:06:17', '2016/BSR/040-A', 'BPAD currently Euthymic', 'Tab. Sodium Valproate', '500MG', '1,0,1\r\n', 'Tab. THP', '2MG', '2,2,0\r\n', 'Tab. Evion', '400MG\r\n', '1,0,1\r\n', 'Tab. Risperidone', '2MG', '1,0,2.5\r\n', 'Tab. Escitalopram', '5MG', '1,0,0\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, '2020-08-25 09:08:11', '2020/BSR/019', 'Moderate MR with Behavioral Problems', 'Tab. Risperidone', '2MG', '0,0,1\r\n', 'Tab. THP', '2MG\r\n', '1,0,0\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, '2020-08-25 09:09:11', '2020/BSR/025', 'MR with Speech Impairment', 'Tab. Livogen', '300MG', '0,0,1\r\n', 'Tab. Vit B-Complex', NULL, '1,0,1\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, '2020-08-25 09:10:00', '2020/BSR/027', 'Chronic Schizophrenia\r\n', 'Tab. Risperidone', '2MG', '1,0,2\r\n', 'Tab. THP', '2MG', '1,1,0\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, '2020-08-25 09:10:53', '2020/BSR/023', 'MR\r\n', 'Tab. Risperidone', '2MG\r\n', '0,0,0.5\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(38, '2020-08-25 09:28:35', '1776', NULL, 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', 'Tab. Livogen', '300MG\r\n', '0,0,1\r\n', 'Tab. Clozapine', '100MG\r\n', '0,0,3\r\n', 'Tab. THP', '2MG\r\n', '1,0,0\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, '2020-08-25 09:29:38', '1799', NULL, 'Tab. Escitalopram', '5MG\r\n', '0,0,2\r\n', 'Tab. Sodium Valproate', '500MG\r\n', '1,0,1\r\n', 'Tab. Sodium Valproate', '200MG\r\n', '0,0,1\r\n', 'Tab. Quetiapine', '100MG\r\n', '0,0,1\r\n', 'Tab. Livogen', '150MG\r\n', '1,0,1\r\n', 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, '2020-08-25 09:31:12', '605', NULL, 'Tab. Livogen', '300MG\r\n', '0,0,1\r\n', 'Tab. Atorvastatin', '10MG\r\n', '0,0,1\r\n', 'Inj. Fluanxol', '20MG\r\n', NULL, 'Tab. THP', '2MG\r\n', '1,1,0\r\n', 'Tab. Calcium', '500MG\r\n', '1,0,1\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, '2020-08-25 09:32:44', '1100', NULL, 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', 'Tab. Livogen', '300MG\r\n', '0,0,1\r\n', 'Tab. THP', '2MG\r\n', '1,1,0\r\n', 'Syp. Serenace', '5MG\r\n', '2ML,2ML,2ML\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(42, '2020-08-25 09:33:59', '1353', NULL, 'Tab. Aspirin', '150MG\r\n', '0,1,0\r\n', 'Tab. Metformin', '500MG\r\n', '1,0,1\r\n', 'Tab. Aten', '50MG\r\n', '1,0,1\r\n', 'Tab. Livogen', '300MG\r\n', '0,0,1\r\n', 'Tab. Risperidone', '2MG\r\n', '0,0,0.5\r\n', 'Tab. Atorvastatin', '10MG\r\n', '0,0,1\r\n', 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(43, '2020-08-25 09:39:05', '1643', NULL, 'Tab. Metformin', '500MG\r\n', '1,0,1\r\n', 'Tab. Livogen', '300MG\r\n', '0,0,1\r\n', 'Tab. Levothyroxine', '50MCG\r\n', '1,0,0\r\n', 'Tab. Aspirin', '150MG\r\n', '0,1,0\r\n', 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', 'Tab. Aripiprazole', '20MG\r\n', '0,0,1\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(44, '2020-08-25 09:41:23', '525', NULL, 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', 'Tab. Levothyroxine', '25MCG\r\n', '1,0,0\r\n', 'Tab. Livogen', '300MG\r\n', '0,0,1\r\n', 'Tab. Clozapine', '100MG\r\n', '1,0,2\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(45, '2020-08-25 09:42:40', '1107', NULL, 'Tab. Aripiprazole', '10MG\r\n', '0,0,3\r\n', 'Tab. Lorazepam', '1MG\r\n', '0,0,1\r\n', 'Tab. Olanzapine', '5MG\r\n', '0,0,2\r\n', 'Tab. Livogen', '300MG\r\n', '0,0,1\r\n', 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(46, '2020-08-25 09:44:17', '639', NULL, 'Tab. Levetiracetam', '500MG\r\n', '1,0,1\r\n', 'Tab. Levothyroxine', '100MCG\r\n', '1,0,0\r\n', 'Tab. THP', '2MG\r\n', '2,2,2\r\n', 'Tab. Sodium Valproate', '500MG\r\n', '1,0,2\r\n', 'Tab. Haloperidol', '1.5MG\r\n', '1,0,1\r\n', 'Tab. Livogen', '300MG\r\n', '0,0,1\r\n', 'Tab. Syndopa', '110MG\r\n', '0.5,0.5,0\r\n', 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(47, '2020-08-25 09:45:27', '1785', NULL, 'Tab. Amisulpride', '200MG\r\n', '1,1,2\r\n', 'Tab. THP', '2MG\r\n', '1,1,0\r\n', 'Tab. Livogen', '300MG\r\n', '0,0,1\r\n', 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', 'Tab. Levothyroxine', '75MCG\r\n', '1,0,0\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(48, '2020-08-25 09:48:06', '900', NULL, 'Tab. Aspirin', '75MG', '0,1,0\r\n', 'Tab. Amisulpride', '200MG', '0,0,1\r\n', 'Tab. Risperidone', '2MG', '0,0,2\r\n', 'Tab. THP', '2MG', '2,1,1\r\n', 'Tab. Syndopa', '110MG', '1,0.5,0\r\n', 'Inj. Fluphenazine', '25MG', 'MONTHLY', 'Tab. Lorazepam', '1MG', '0,0,0.5\r\n', 'Tab. Sodium Valproate', '500MG', '1,0,1\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(49, '2020-08-25 09:59:29', '1798', NULL, 'Tab. THP', '2MG\r\n', '2,1,0\r\n', 'Tab. Risperidone', '2MG\r\n', '1,0,3\r\n', 'Tab. Digoxin', '0.25MG\r\n', '1,0,0\r\n', 'Inj. Fluphenazine', '25MG\r\n', '1,0,0\r\n', 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(50, '2020-08-25 10:00:37', '916', NULL, 'Inj. Nervup', NULL, '1,0,0\r\n', 'Inj. Senorm LA', '50MG\r\n', '1,0,0\r\n', 'Tab. THP', '2MG\r\n', '1,0,0\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(51, '2020-08-25 10:01:38', '965', NULL, 'Tab. Levothyroxine', '25MCG\r\n', '1,0,0\r\n', 'Tab. Risperidone', '2MG\r\n', '1,0,2\r\n', 'Tab. THP', '2MG\r\n', '2,2,2\r\n', 'Tab. Atorvastatin', '10MG\r\n', '0,0,1\r\n', 'Tab. Livogen', '300MG\r\n', '0,0,1\r\n', 'Tab. Aspirin', '150MG\r\n', '0,1,0\r\n', 'Tab. Aten', '25MG\r\n', '1,0,0\r\n', 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(52, '2020-08-25 10:03:12', '1473', NULL, 'Tab. Livogen', '300MG\r\n', '0,0,1\r\n', 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', 'Tab. Clozapine', '50MG\r\n', '0,0,2\r\n', 'Cap. Evion\r\n', '400MG\r\n', '1,1,1\r\n', 'Inj. Fluanxol', '20MG\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(53, '2020-08-25 10:03:58', '1676', NULL, 'Tab. Livogen', '300MG\r\n', '0,0,1\r\n', 'Tab. Levothyroxine', '25MCG\r\n', '1,0,0\r\n', 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', 'Tab. Phenytoin', '100MG\r\n', '0,0,2\r\n', 'Tab. Aripiprazole', '10MG\r\n', '0,0,3\r\n', 'Tab. Sodium Valproate', '500MG\r\n', '1,1,2\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(54, '2020-08-25 10:20:39', '1532', NULL, 'Tab. Haloperidol', '5MG\r\n', '2,1,0\r\n', 'Tab. THP', '2MG\r\n', '2,2,0\r\n', 'Tab. Sodium Valproate', '500MG\r\n', '2,1,0\r\n', 'Tab. Clonazepam', '0.5MG\r\n', '1,1,1\r\n', 'Tab. Levothyroxine', '50MCG\r\n', '1,0,0\r\n', 'Tab. Livogen', '300MG\r\n', '0,0,1\r\n', 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(55, '2020-08-25 10:23:08', '1425', NULL, 'Tab. Clozapine', '100MG\r\n', '0,0,2.5\r\n', 'Tab. Amisulpride', '100MG\r\n', '1,0,1\r\n', 'Tab. THP', '2MG\r\n', '1,1,0\r\n', 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', 'Tab. Livogen', '300MG\r\n', '0,0,1\r\n', 'Tab. Amlong', '5MG\r\n', '1,0,0\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(56, '2020-08-25 10:26:33', '696', NULL, 'Tab. Atorvastatin', '10MG\r\n', '0,0,1\r\n', 'Tab. Metorate', '3MG\r\n', '0,0,1\r\n', 'Tab. Risperidone', '2MG\r\n', '0,0,0.5\r\n', 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', 'Tab. Livogen', '300MG\r\n', '0,0,1\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(57, '2020-08-25 10:28:17', '905', NULL, 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', 'Tab. Lorazepam', '1MG\r\n', '1,1,1\r\n', 'Cap. Evion', '400MG\r\n', '1,0,1\r\n', 'Tab. Metformin', '500MG\r\n', '1,0,1\r\n', 'Tab. Aspirin', '150MG\r\n', '0,1,0\r\n', 'Tab. Atorvastatin', '10MG\r\n', '0,0,1\r\n', 'Tab. Lisinopril', '10MG\r\n', '0.5,0,0\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(58, '2020-08-25 10:30:09', '406', NULL, 'Tab. Lisinopril', '10MG\r\n', '0.5,0,0\r\n', 'Tab. Aspirin', '150MG\r\n', '0,1,0\r\n', 'Tab. Atorvastatin', '10MG\r\n', '0,0,1\r\n', 'Tab. Metformin', '500MG\r\n', '1,1,1\r\n', 'Tab. Livogen', '300MG\r\n', '0,0,1\r\n', 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', 'Tab. Glimepiride', '1MG\r\n', '1,0,1\r\n', 'Tab. THP', '2MG\r\n', '1,0,0\r\n', 'Tab. Haloperidol', '5MG\r\n', '0.5,0,0.5\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(59, '2020-08-25 10:31:36', '330', NULL, 'Tab. Aspirin', '75MG\r\n', '0,1,0\r\n', 'Tab. Amlong', '7.5MG\r\n', '1,0,1\r\n', 'Tab. Envas', '5MG\r\n', '1,0,0\r\n', 'Tab. Livogen', '300MG\r\n', '0,0,1\r\n', 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', 'Tab. Atorvastatin', '10MG\r\n', '0,0,2\r\n', 'Tab. Risperidone', '2MG\r\n', '1,0,3\r\n', 'Tab. THP', '2MG\r\n', '1,0,0\r\n', 'Tab. Lorazepam', '1MG\r\n', '1,0,1\r\n', 'Tab. Sertraline\r\n', '50MG\r\n', '1,0,0\r\n', 'Cap. Evion', '400MG\r\n', '1,0,1\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(60, '2020-08-25 10:35:34', '1350', NULL, 'Tab. Atorvastatin', '10MG\r\n', '0,0,1\r\n', 'Tab. Olanzapine', '5MG\r\n', '0,0,1\r\n', 'Tab. THP', '2MG\r\n', '1,0,0\r\n', 'Tab. Lorazepam', '1MG\r\n', '1,0,1\r\n', 'Tab. Escitalopram', '10MG\r\n', '0,0,1\r\n', 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(61, '2020-08-25 10:39:06', '1598', NULL, 'Tab. Levothyroxine', '50MCG\r\n', '1,0,0\r\n', 'Tab. Atorvastatin', '10MG\r\n', '0,0,1\r\n', 'Tab. Amlong', '5MG\r\n', '1,0,1\r\n', 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', 'Tab. Risperidone', '2MG\r\n', '0,0,1\r\n', 'Tab. THP', '2MG\r\n', '1,0,0\r\n', 'Tab. Livogen', '300MG\r\n', '0,0,1\r\n', 'Tab. Lisinopril', '10MG\r\n', '1,0,1\r\n', 'Tab. Metformin', '500MG\r\n', '1,0,1\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(62, '2020-08-25 10:42:05', '1524', NULL, 'Tab. Livogen', '300MG\r\n', '0,0,1\r\n', 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', 'Tab. Atorvastatin', '10MG\r\n', '0,0,1\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(63, '2020-08-25 10:45:25', '1565', NULL, 'Tab. Olanzapine', '5MG\r\n', '0,0,2\r\n', 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', 'Tab. Atorvastatin', '10MG\r\n', '0,0,1\r\n', 'Tab. Livogen', '300MG\r\n', '0,0,1\r\n', 'Tab. Levothyroxine', '50MCG\r\n', '1,0,0\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(64, '2020-08-25 10:46:33', '971', NULL, 'Tab. Livogen', '300MG\r\n', '0,0,1\r\n', 'Tab. Lorazepam', '1MG\r\n', '0,0,1\r\n', 'Tab. Quetiapine', '25MG\r\n', '1,0,3\r\n', 'Tab. Amlong', '5MG\r\n', '1,0,0\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(65, '2020-08-25 10:47:28', '998', NULL, 'Tab. Clozapine\r\n', '100MG\r\n', '0,0,2.5\r\n', 'Tab. Lorazepam', '1MG\r\n', '1,1,1\r\n', 'Tab. THP', '2MG\r\n', '1,1,0\r\n', 'Tab. Phenytoin', '100MG\r\n', '1,0,2\r\n', 'Tab. Livogen', '300MG\r\n', '0,0,1\r\n', 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', 'Tab. Sodium Valproate', '500MG\r\n', '1,0,1\r\n', 'Tab. Amisulpride', '100MG\r\n', '1,0,1\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(66, '2020-08-25 10:50:17', '1806', NULL, 'Tab. Clozapine', '100MG\r\n', '0,0,1.5\r\n', 'Tab. Livogen', '300MG\r\n', '0,0,1\r\n', 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(67, '2020-08-25 10:51:09', '1629', NULL, 'Tab. Amisulpride', '100MG\r\n', '1,0,2\r\n', 'Tab. Sertraline\r\n', '50MG\r\n', '3,0,0\r\n', 'Tab. THP', '2MG\r\n', '2,1,0\r\n', 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', 'Tab. Clozapine', '100MG\r\n', '1,0,3\r\n', 'Tab. Livogen', '150MG\r\n', '1,1,0\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(68, '2020-08-25 10:52:28', '1503', NULL, 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', 'Inj. Senorm LA', '50MG\r\n', '1,0,0\r\n', 'Tab. Levothyroxine', '75MCG\r\n', '1,0,0\r\n', 'Tab. THP', '2MG\r\n', '1,1,0\r\n', 'Tab. Haloperidol', '5MG\r\n', '1,0,1\r\n', 'Nicotine Gum', '4MG\r\n', '1,1,1\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(69, '2020-08-25 10:55:06', '320', NULL, 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', 'Tab. Gliclazide', NULL, '1,0,1\r\n', 'Tab. THP', '2MG\r\n', '1,1,0\r\n', 'Tab. Amisulpride', '100MG\r\n', '2,0,2\r\n', 'Tab. Atorvastatin', '10MG\r\n', '0,0,1\r\n', 'Tab. Aspirin', '150MG\r\n', '0,1,0\r\n', 'Tab. Levothyroxine', '50MCG\r\n', '1,0,0\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(70, '2020-08-25 10:56:27', '167', NULL, 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', 'Tab. Livogen', '300MG\r\n', '0,0,1\r\n', 'Tab. Levothyroxine', '125MCG\r\n', '1,0,0\r\n', 'Tab. Sertraline\r\n', '50MG\r\n', '2,0,0\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(71, '2020-08-25 10:58:10', '958', NULL, 'Tab. Lorazepam', '1MG\r\n', '1,0,2\r\n', 'Tab. Phenytoin', '100MG\r\n', '0,0,1\r\n', 'Tab. Risperidone', '2MG\r\n', '0,0,1\r\n', 'Tab. THP', '2MG\r\n', '1,0,0\r\n', 'Tab. Levothyroxine', '25MCG\r\n', '1,0,0\r\n', 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', 'Tab. Atorvastatin', '10MG\r\n', '0,0,1\r\n', 'Tab. Livogen', '300MG\r\n', '0,0,1\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(72, '2020-08-25 11:01:29', '1654', NULL, 'Tab. Amisulpride', '200MG\r\n', '1,0,1\r\n', 'Tab. Escitalopram', '5MG\r\n', '0,0,2\r\n', 'Tab. Atorvastatin', '10MG\r\n', '0,0,1\r\n', 'Tab. Livogen', '300MG\r\n', '0,0,1\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(73, '2020-08-25 11:02:26', '1861', NULL, 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', 'Tab. Livogen', '300MG\r\n', '0,1,1\r\n', 'Tab. Atorvastatin', '10MG\r\n', '0,0,1\r\n', 'Tab. Risperidone', '2MG\r\n', '0,0,1\r\n', 'Tab. THP', '2MG\r\n', '1,0,0\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(74, '2020-08-25 11:03:18', '1856', NULL, 'Tab. THP', '2MG\r\n', '2,2,0\r\n', 'Tab. Sodium Valproate', '500MG\r\n', '1,0,1\r\n', 'Tab. Livogen', '300MG\r\n', '0,0,1\r\n', 'Tab. Chlorpromazine', '50MG\r\n', '1,0,1\r\n', 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(75, '2020-08-25 11:04:27', '1841', NULL, 'Tab. Livogen', '300MG\r\n', '0,1,1\r\n', 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(76, '2020-08-25 11:04:58', '1131', NULL, 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', 'Tab. Risperidone', '2MG\r\n', '0,0,1\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(77, '2020-08-25 11:05:35', '1820', NULL, 'Tab. Entehep', '0.5MG\r\n', '1,0,0\r\n', 'Tab. Livogen', '300MG\r\n', '0,0,1\r\n', 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(78, '2020-08-25 11:06:21', '1809', NULL, 'Tab. Risperidone', '2MG\r\n', '0,0,3\r\n', 'Tab. THP', '2MG\r\n', '1,0,0\r\n', 'Tab. Livogen', '300MG\r\n', '0,0,1\r\n', 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', 'Tab. Atorvastatin', '10MG\r\n', '1,0,0\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(79, '2020-08-25 11:08:51', '1807', NULL, 'Tab. THP', '2MG\r\n', '1,1,0\r\n', 'Tab. Risperidone', '2MG\r\n', '0,0,1\r\n', 'Inj. Fluanxol', '20MG\r\n', '1,0,0\r\n', 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', 'Tab. Livogen', '300MG\r\n', '0,0,1\r\n', 'Tab. Atorvastatin', '10MG\r\n', '0,0,1\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(80, '2020-08-25 11:10:32', '1486', NULL, 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', 'Tab. Metformin', '500MG\r\n', '0.5,0,0.5\r\n', 'Tab. Aspirin', '150MG\r\n', '0,1,0\r\n', 'Tab. Levothyroxine', '50MCG\r\n', '1,0,0\r\n', 'Tab. Atorvastatin', '10MG\r\n', '0,0,1\r\n', 'Tab. Aten', '25MG\r\n', '1,0,0\r\n', 'Tab. Risperidone', '2MG\r\n', '1,0,3\r\n', 'Tab. THP', '2MG\r\n', '1,0,0\r\n', 'Inj. Fluanxol', '20MG\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(81, '2020-08-25 11:12:04', '715', NULL, 'Tab. THP', '2MG\r\n', '1,1,0\r\n', 'Tab. Ziprasidone', '20MG\r\n', '1,0,3\r\n', 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(82, '2020-08-25 11:13:22', '204', NULL, 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', 'Tab. Risperidone', '2MG\r\n', '0,0,1\r\n', 'Tab. Livogen', '300MG\r\n', '0,0,1\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(83, '2020-08-25 11:15:12', '914', NULL, 'Tab. Levothyroxine', '25MCG\r\n', '1,0,0\r\n', 'Tab. Livogen', '300MG\r\n', '0,0,1\r\n', 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', 'Tab. Risperidone', '2MG\r\n', '0,0,1\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(84, '2020-08-25 11:16:04', '1671', NULL, 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', 'Tab. Atorvastatin', '10MG\r\n', '0,0,1\r\n', 'Tab. Metformin', '2MG\r\n', '1,1,0\r\n', 'Tab. THP', '2MG\r\n', '1,1,0\r\n', 'Tab. Risperidone', '2MG\r\n', '0,0,2\r\n', 'Tab. Livogen', '300MG\r\n', '0,0,1\r\n', 'Cap. Evion', '400MG\r\n', '1,1,1\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(85, '2020-08-25 11:17:25', '1603', NULL, 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', 'Tab. Folic Acid', NULL, '1,0,0\r\n', 'Tab. Livogen', '300MG\r\n', '1,0,1\r\n', 'Tab. Vit B12', NULL, '1,1,1\r\n', 'Cap. Vit B-Complex', NULL, '1,0,1\r\n', 'Tab. Clozapine', '100MG\r\n', '0,0,2\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(86, '2020-08-25 11:18:34', '1250', NULL, 'Tab. Aripiprazole', '10MG\r\n', '0,0,3\r\n', 'Tab. Atorvastatin', '10MG\r\n', '0,0,1\r\n', 'Tab. Dicorate', '500MG\r\n', '1,0,2\r\n', 'Tab. Lorazepam', '1MG\r\n', '0,0,1\r\n', 'Tab. Livogen', '300MG\r\n', '0,0,1\r\n', 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(87, '2020-08-25 11:20:09', '70', NULL, 'Tab. Aspirin', '150MG\r\n', '0,1,0\r\n', 'Tab. Levothyroxine', '75MCG\r\n', '1,0,0\r\n', 'Tab. Vit B12', NULL, '1,0,1\r\n', 'Tab. Atorvastatin', '10MG\r\n', '0,0,1\r\n', 'Tab. Repace', '25MG\r\n', '1,0,0\r\n', 'Tab. Livogen', '300MG\r\n', '1,0,1\r\n', 'Tab. Phenytoin', '100MG\r\n', '0,0,2\r\n', 'Tab. Haloperidol', '5MG\r\n', '0,0,0.5\r\n', 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', 'Tab. Metformin', '500MG\r\n', '1,0,1\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(88, '2020-08-25 11:21:49', '804', NULL, 'Tab. THP', '2MG\r\n', '1,1,0\r\n', 'Tab. Amisulpride', '200MG\r\n', '1,0.5,4\r\n', 'Tab. Livogen', '300MG\r\n', '0,0,1\r\n', 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(89, '2020-08-25 11:25:17', '1332', NULL, 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', 'Tab. Atorvastatin', '10MG\r\n', '0,0,1\r\n', 'Tab. Levothyroxine', '50MCG\r\n', '1,0,0\r\n', 'Tab. Aten', '50MG\r\n', '1,0,0\r\n', 'Tab. Aspirin', '75MG\r\n', '0,1,0\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(90, '2020-08-25 11:26:28', '1602', NULL, 'Tab. THP', '2MG\r\n', '1,0,0\r\n', 'Tab. Risperidone', '2MG\r\n', '1,0,2\r\n', 'Tab. Vit B12', NULL, '1,0,1\r\n', 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', 'Inj. Fluphenazine', '25MG\r\n', NULL, 'Tab. Atorvastatin', '10MG\r\n', '1,0,0\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(91, '2020-08-25 11:27:40', '1098', NULL, 'Tab. Gliclazide', NULL, '1,0,1\r\n', 'Tab. Metformin', '500MG\r\n', '1,0,1\r\n', 'Tab. Atorvastatin', '10MG\r\n', '0,0,1\r\n', 'Tab. Aspirin', '150MG\r\n', '0,1,0\r\n', 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', 'Tab. Risperidone', '2MG\r\n', '1,0,2\r\n', 'Tab. THP', '2MG\r\n', '1,1,0\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(92, '2020-08-25 11:29:18', '137', NULL, 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', 'Tab. Atorvastatin', '10MG\r\n', '0,0,1\r\n', 'Tab. Livogen', '150MG\r\n', '0,0,1\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(93, '2020-08-25 11:29:59', '423', NULL, 'Tab. Clozapine', '100MG\r\n', '0,0,1.5\r\n', 'Tab. THP', '2MG\r\n', '1,1,0\r\n', 'Tab. Amitriptyline', '50MG\r\n', '0,0,1\r\n', 'Tab. Livogen', '300MG\r\n', '0,0,1\r\n', 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(94, '2020-08-25 11:30:53', '1606', NULL, 'Tab. Livogen', '300MG\r\n', '0,0,1\r\n', 'Tab. Atorvastatin', '10MG\r\n', '0,0,1\r\n', 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', 'Tab. Clozapine', '25MG\r\n', '0,0,2\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(95, '2020-08-25 11:31:40', '479', NULL, 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', 'Tab. Livogen', '150MG\r\n', '0,1,0\r\n', 'Tab. Levetiracetam', '500MG\r\n', '1,1,1\r\n', 'Tab. Carbamazepine', '200MG\r\n', '2,2,2\r\n', 'Tab. Clobazam', '5MG\r\n', '0,0,1\r\n', 'Tab. THP', '2MG\r\n', '1,1,0\r\n', 'Tab. Lorazepam', '1MG\r\n', '0,0,1\r\n', 'Tab. Atorvastatin', '10MG\r\n', '0,0,1\r\n', 'Tab. Haloperidol', '1.5MG\r\n', '1,1,1\r\n', 'Syp. Vit. B-Complex', NULL, '10ML,0,10ML\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(96, '2020-08-25 11:33:39', '1429', NULL, 'Tab. Carbamazepine', '200MG\r\n', '1,0,3\r\n', 'Tab. Phenytoin', '100MG\r\n', '0,0,1.5\r\n', 'Tab. Livogen', '300MG\r\n', '0,0,1\r\n', 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', 'Syp. Vit. B-Complex', NULL, '10ML,0,10ML\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(97, '2020-08-25 11:34:32', '580', NULL, 'Tab. Levothyroxine', '25MCG\r\n', '1,0,0\r\n', 'Tab. Risperidone', '2MG\r\n', '1,1,1\r\n', 'Tab. Lorazepam', '1MG\r\n', '1,0,1\r\n', 'Tab. THP', '2MG\r\n', '1,0,0\r\n', 'Tab. Amisulpride', '100MG\r\n', '0,0,1\r\n', 'Cap. Evion', '400MG\r\n', '1,1,1\r\n', 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(98, '2020-08-25 11:35:44', '193', NULL, 'Tab. Clozapine', '100MG\r\n', '0,0,6\r\n', 'Tab. Setraline', '50MG\r\n', '2,0,0\r\n', 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', 'Tab. Livogen', '300MG\r\n', '0,0,1\r\n', 'Tab. Levothyroxine', '25MCG\r\n', '1,0,0\r\n', 'Tab. Atorvastatin', '10MG\r\n', '0,0,1\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(99, '2020-08-25 11:37:04', '7', NULL, 'Tab. Voglibose', '0.3MG\r\n', '1,1,0\r\n', 'Tab. Gliclazide', NULL, '1,0,1\r\n', 'Tab. Betaloc', '25MG\r\n', '1,0,0\r\n', 'Tab. Ecosprin AV (Aspirin + Atorvastatin)', '75MG\r\n', '0,1,0\r\n', 'Tab. Atorvastatin', '10MG\r\n', '0,0,1\r\n', 'Inj. Insulin', NULL, '8UNIT,0,10UNIT\r\n', 'Tab. Haloperidol', '1.5MG\r\n', '0,0,1\r\n', 'Tab. THP', '2MG\r\n', '1,1,0\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(100, '2020-08-25 11:48:41', '375', NULL, 'Tab. Levothyroxine', '25MCG\r\n', '1,0,0\r\n', 'Tab. Calcium', NULL, '0,0,1\r\n', 'Tab. Folic Acid', '(NULL)', '1,0,0', 'Tab. Livogen', '300MG', '0,0,1\r\n', 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', 'Tab. Metoclopramide', '500MG\r\n', '1,1,1\r\n', 'Tab. Pantoprazole', '40MG\r\n', '1,0,1\r\n', 'Tab. Atorvastatin', '10MG\r\n', '0,0,1\r\n', 'Venus Septiloc Ointment', NULL, NULL, 'Topisal Lotion', '6%', '1,0,0\r\n', 'Tab. Sodium Valproate', '500MG\r\n', '1,1,2\r\n', 'Tab. THP', '2MG\r\n', '1,1,0\r\n', 'Tab. Carbamazepine', '200MG\r\n', '1,0,1\r\n', 'Tab. Quetiapine', '25MG\r\n', '0,0,1\r\n', NULL, NULL, NULL, NULL),
(101, '2020-08-25 11:55:40', '612', NULL, 'Tab. THP', '2MG\r\n', '2,1,0\r\n', 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', 'Cap. Evion', '400MG\r\n', '1,0,1\r\n', 'Inj. Fluphenazine', '25MG\r\n', '1,0,0 \r\n', 'Tab. Amlong', '5MG\r\n', '2,0,2\r\n', 'Tab. Betaloc', '25MG\r\n', '1,0,1\r\n', 'Tab. Envas', '10MG\r\n', '1,0,1\r\n', 'Tab. Aspirin', '75MG\r\n', '0,1,0\r\n', 'Tab. Levothyroxine', '50MCG\r\n', '1,0,0\r\n', 'Tab. Lorazepam', '1MG\r\n', '0,0,1\r\n', 'Tab. Metformin', '500MG\r\n', '0.5,0,0\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(102, '2020-08-25 14:02:02', '1882', NULL, 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', 'Tab. Livogen', '300MG\r\n', '1,0,1\r\n', 'Tab. THP', '2MG\r\n', '1,1,0\r\n', 'Tab. Folic Acid', NULL, '1,0,0\r\n', 'Tab. Vit B12', NULL, '1,1,1\r\n', 'Tab. Vit B-Complex', NULL, '0,0,1\r\n', 'Cap. Pre & Probiotic', NULL, '0,0,1\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(103, '2020-08-25 14:03:23', '1888', NULL, 'Tab. THP', '2MG\r\n', '1,0,0\r\n', 'Tab. Haloperidol', '5MG\r\n', '0,0,1\r\n', 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', 'Tab. Livogen', '150MG\r\n', '0,0,1\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(104, '2020-08-25 14:04:15', '1892', NULL, 'Tab. Risperidone', '2MG\r\n', '0,0,2\r\n', 'Tab. THP', '2MG\r\n', '1,1,0\r\n', 'Tab. Fluoxetine', '20MG\r\n', '1,0,0\r\n', 'Tab. Livogen', '150MG\r\n', '1,0,1\r\n', 'Tab. Levothyroxine', '25MCG\r\n', '1,0,0\r\n', 'Inj. Senorm LA', '50MG\r\n', '1,0,0\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(105, '2020-08-25 14:05:26', '1838', NULL, 'Tab. Clozapine', '100MG\r\n', '0,0,1\r\n', 'Tab. THP', '2MG\r\n', '1,1,0\r\n', 'Tab. Amisulpride', '100MG\r\n', '0,0,0.5\r\n', 'Tab. Carbamazepine', '200MG\r\n', '2,1,2\r\n', 'Tab. Metformin', '500MG\r\n', '1,0,0\r\n', 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', 'Tab. Livogen', '300MG\r\n', '0,0,1\r\n', 'Inj. Fluanxol', '20MG\r\n', '0,0,1\r\n', 'Tab. Levothyroxine', '25MCG\r\n', '1,0,0\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(106, '2020-08-25 14:08:03', '26', NULL, 'Tab. Metformin', '500MG\r\n', '1,0,1\r\n', 'Tab. Aspirin', '150MG\r\n', '0,1,0\r\n', 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', 'Tab. Atorvastatin', '10MG\r\n', '0,0,1\r\n', 'Tab. Levetiracetam', '250MG\r\n', '1,0,1\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(107, '2020-08-25 14:09:21', '40', NULL, 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', 'Tab. Metformin', '500MG\r\n', '1,0,1\r\n', 'Tab. Glimepiride', '1MG\r\n', '1,0,1\r\n', 'Tab. Atorvastatin', '10MG\r\n', '0,0,1\r\n', 'Tab. Aspirin', '75MG\r\n', '0,1,0\r\n', 'Tab. Quetiapine', '25MG\r\n', '0,0,1\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(108, '2020-08-25 14:10:26', '293', NULL, 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', 'Tab. Carbamazepine', '200MG\r\n', '2,1,2\r\n', 'Tab. Haloperidol', '5MG\r\n', '0,0,1\r\n', 'Tab. Sodium Valproate', '200MG\r\n', '1,0,2\r\n', 'Tab. THP', '2MG\r\n', '1,1,0\r\n', 'Tab. Levothyroxine', '25MCG\r\n', '1,0,0\r\n', 'Tab. Livogen', '150MG\r\n', '0,0,1\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(109, '2020-08-25 14:11:44', '673', NULL, 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', 'Tab. Syndopa', '110MG\r\n', '0.5,0.5,0.5\r\n', 'Tab. THP', '2MG\r\n', '1,1,0\r\n', 'Tab. Aspirin\r\n', '150MG\r\n', '0,1,0\r\n', 'Tab. Atorvastatin', '10MG\r\n', '0,0,1\r\n', 'Tab. Rasalect', '0.5MG\r\n', '1,0,0\r\n', 'Tab. Aldactone', '25MG\r\n', '1,0,0\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `medicine_master` (`id`, `date`, `client_file_number`, `client_diagnosis`, `medicine_1_name`, `medicine_1_strength`, `medicine_1_schedule`, `medicine_2_name`, `medicine_2_strength`, `medicine_2_schedule`, `medicine_3_name`, `medicine_3_strength`, `medicine_3_schedule`, `medicine_4_name`, `medicine_4_strength`, `medicine_4_schedule`, `medicine_5_name`, `medicine_5_strength`, `medicine_5_schedule`, `medicine_6_name`, `medicine_6_strength`, `medicine_6_schedule`, `medicine_7_name`, `medicine_7_strength`, `medicine_7_schedule`, `medicine_8_name`, `medicine_8_strength`, `medicine_8_schedule`, `medicine_9_name`, `medicine_9_strength`, `medicine_9_schedule`, `medicine_10_name`, `medicine_10_strength`, `medicine_10_schedule`, `medicine_11_name`, `medicine_11_strength`, `medicine_11_schedule`, `medicine_12_name`, `medicine_12_strength`, `medicine_12_schedule`, `medicine_13_name`, `medicine_13_strength`, `medicine_13_schedule`, `medicine_14_name`, `medicine_14_strength`, `medicine_14_schedule`, `medicine_15_name`, `medicine_15_strength`, `medicine_15_schedule`, `doc_id`) VALUES
(110, '2020-08-25 14:12:59', '140', NULL, 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', 'Tab. THP', '2MG\r\n', '1,1,0\r\n', 'Tab. Haloperidol', '5MG\r\n', '1,0,1\r\n', 'Tab. Metformin', '500MG\r\n', '1,1,1\r\n', 'Tab. Lisinopril', '10MG\r\n', '1,0,0\r\n', 'Tab. Levothyroxine', '50MCG\r\n', '1,0,0\r\n', 'Inj. Insulin', NULL, '20UNIT,0,20UNIT\r\n', 'Tab. Atorvastatin', '10MG\r\n', '0,0,1\r\n', 'Tab. Aspirin', '75MG\r\n', '0,1,0\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(111, '2020-08-25 14:14:52', '1610', NULL, 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', 'Tab. Livogen', '300MG\r\n', '0,0,1\r\n', 'Tab. THP', '2MG\r\n', '1,1,0\r\n', 'Tab. Risperidone', '2MG\r\n', '1,0,3\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(112, '2020-08-25 14:15:53', '1908', NULL, 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', 'Tab. THP', '2MG\r\n', '1,0,0\r\n', 'Tab. Risperidone', '2MG\r\n', '1,0,2\r\n', 'Tab. Levothyroxine', '25MCG\r\n', '1,0,0\r\n', 'Tab. Livogen', '300MG\r\n', '0,0,1\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(113, '2020-08-25 14:16:45', 'R-40', NULL, 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', 'Tab. Metformin', '500MG\r\n', '1,0,1\r\n', 'Tab. Quetiapine', '25MG\r\n', '0,0,0.5\r\n', 'Tab. Gelusil', NULL, '1,1,1\r\n', 'Tab. Pantoprazole', '20MG\r\n', '1,1,1\r\n', 'Tab. Amlopres', NULL, '1,0,0\r\n', 'Tab. Atorvastatin', '10MG\r\n', '0,0,1\r\n', 'Tab. Metoprolol', '50MG\r\n', '1,0,0\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(114, '2020-08-25 14:18:21', '1658', NULL, 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', 'Tab. THP', '2MG\r\n', '1,1,0\r\n', 'Nicotine Gum', '2MG\r\n', '1,1,1\r\n', 'Tab. Phenergan', '25MG\r\n', '1,0,1\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(115, '2020-08-25 14:23:03', '1147', NULL, 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', 'Tab. Amisulpride', '100MG\r\n', '1,0,1\r\n', 'Tab. Clozapine', '100MG\r\n', '0,0,4.5\r\n', 'Tab. THP', '2MG\r\n', '2,2,0\r\n', 'Tab. Livogen', '300MG\r\n', '0,0,1\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(116, '2020-08-25 14:24:32', '428', NULL, 'Tab. THP', '2MG\r\n', '2,1,0\r\n', 'Tab. Risperidone', '2MG\r\n', '1,0,3\r\n', 'Tab. Metformin', '500MG\r\n', '2,1,1\r\n', 'Tab. Glimepiride', '2MG\r\n', '1,1,1\r\n', 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', 'Tab. Folic Acid', NULL, '1,0,0\r\n', 'Tab. Vit B12', NULL, '1,1,1\r\n', 'Inj. Fluanxol', '20MG\r\n', '1,0,0\r\n', 'Tab. Atorvastatin', '10MG\r\n', '0,0,1\r\n', 'Tab. Lisinopril', '10MG\r\n', '2,0,0\r\n', 'Tab. Livogen', '300MG\r\n', '0,0,1\r\n', 'Tab. Amlong', '5MG\r\n', '1,0,0\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(117, '2020-08-25 14:26:44', 'R-59', NULL, 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', 'Tab. Livogen', '300MG\r\n', '0,0,1\r\n', 'Tab. Haloperidol', '5MG\r\n', '0,0,1\r\n', 'Tab. THP', '2MG\r\n', '1,0,0\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(118, '2020-08-25 14:28:38', '1866', NULL, 'Tab. THP', '2MG\r\n', '1,1,0\r\n', 'Syp. Risperidone', '2MG\r\n', '2ML,2ML,4ML\r\n', 'Cap. Vit B-Complex', NULL, '1,0,0\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(119, '2020-08-25 14:30:37', '236', NULL, 'Tab. Clozapine', '100MG\r\n', '0,0,1\r\n', 'Tab. Escitalopram', '5MG\r\n', '0,0,1\r\n', 'Tab. Livogen', '150MG\r\n', '0,1,0\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(120, '2020-08-25 14:31:48', 'R-68', NULL, 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', 'Tab. Amisulpride', '100MG\r\n', '1,0,1.5\r\n', 'Tab. THP', '2MG\r\n', '1,1,0\r\n', 'Tab. Livogen', '300MG\r\n', '1,0,1\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(121, '2020-08-25 14:32:53', '1923', NULL, 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', 'Tab. Metformin', '500MG\r\n', '1,0,1\r\n', 'Tab. Atorvastatin', '10MG\r\n', '0,0,1\r\n', 'Tab. THP', '2MG\r\n', '1,0,0\r\n', 'Tab. Risperidone', '2MG\r\n', '0,0,1\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(122, '2020-08-25 14:36:33', '727', NULL, 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', 'Tab. THP', '2MG\r\n', '1,1,0\r\n', 'Tab. Fluanxol', '1MG\r\n', '0,0,2\r\n', 'Inj. Fluanxol', '20MG\r\n', '1,0,0\r\n', 'Tab. Livogen', '300MG\r\n', '0,0,1\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(123, '2020-08-25 14:37:31', '1925', NULL, 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', 'Tab. Sodium Valproate', '500MG\r\n', '1,1,2\r\n', 'Tab. Quetiapine', '100MG\r\n', '0,0,2\r\n', 'Tab. THP', '2MG\r\n', '1,1,0\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(124, '2020-08-25 14:38:28', '1896', NULL, 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', 'Tab. THP', '2MG\r\n', '1,1,0\r\n', 'Tab. Haloperidol', '5MG\r\n', '0,0,1\r\n', 'Tab. Lorazepam', '1MG\r\n', '1,0,1\r\n', 'Inj. Senorm LA', '50MG\r\n', '1,0,0\r\n', 'Tab. Atorvastatin', '10MG\r\n', '0,0,1\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(125, '2020-08-25 14:39:47', '1930', NULL, 'Tab. Quetiapine', '25MG\r\n', '1,1,1\r\n', 'Tab. THP', '2MG\r\n', '1,1,0\r\n', 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', 'Tab. Livogen', '300MG\r\n', '0,0,1\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(126, '2020-08-25 14:43:31', '1932', NULL, 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', 'Tab. THP', '2MG\r\n', '1,1,0\r\n', 'Tab. Risperidone', '2MG\r\n', '0,0,2\r\n', 'Tab. Atorvastatin', '10MG\r\n', '0,0,1\r\n', 'Inj. Fluanxol', '20MG\r\n', '1,0,0\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(127, '2020-08-25 14:46:07', '1939', NULL, 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', 'Tab. Livogen', '300MG\r\n', '1,1,1\r\n', 'Tab. Risperidone', '2MG\r\n', '1,0,2\r\n', 'Tab. THP', '2MG\r\n', '1,1,0\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(128, '2020-08-25 14:46:58', '1940', NULL, 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', 'Tab. Levothyroxine', '50MCG\r\n', '1,0,0\r\n', 'Tab. Livogen', '300MG\r\n', '0,0,1\r\n', 'Tab. Olanzapine', '5MG\r\n', '1,1,2\r\n', 'Tab. THP', '2MG\r\n', '2,2,0\r\n', 'Tab. Phenergan', '25MG\r\n', '1,1,1\r\n', 'Inj. Fluphenazine', '25MG\r\n', '0,0,1\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(129, '2020-08-25 14:47:49', '1342', NULL, 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', 'Tab. Phenergan', '25MG\r\n', '1,1,1\r\n', 'Tab. THP', '2MG\r\n', '2,1,0\r\n', 'Tab. Clozapine', '100MG\r\n', '0,0,3\r\n', 'Tab. Lorazepam', '1MG\r\n', '1,1,1\r\n', 'Inj. Fluanxol', '20MG\r\n', '1,0,0\r\n', 'Tab. Metformin', '500MG\r\n', '1,0,1\r\n', 'Tab. Glimepiride', '1MG\r\n', '1,0,0\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(130, '2020-08-25 14:51:24', '1944', NULL, 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', 'Tab. Risperidone', '2MG\r\n', '0,0,3\r\n', 'Tab. THP', '2MG\r\n', '1,1,0\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(131, '2020-08-25 14:52:20', '1948', NULL, 'Tab. Risperidone', '2MG\r\n', '0,0,1\r\n', 'Tab. THP', '2MG\r\n', '1,1,0\r\n', 'Tab. Sodium Valproate', '500MG\r\n', '0,0,1\r\n', 'Tab. Livogen', '300MG\r\n', '0,0,1\r\n', 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', 'Tab. Levothyroxine', '25MCG\r\n', '1,0,0\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(132, '2020-08-25 14:53:31', '1947', NULL, 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(133, '2020-08-25 14:54:09', 'R-86', NULL, 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', 'Tab. Clozapine', '50MG\r\n', '0,0,1.5\r\n', 'Tab. THP', '2MG\r\n', '1,1,0\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(134, '2020-08-25 14:55:54', '1920', NULL, 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', 'Tab. Haloperidol', '5MG\r\n', '0,0,1\r\n', 'Tab. THP', '2MG\r\n', '1,1,0\r\n', 'Tab. Livogen', '150MG\r\n', '0,0,1\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(135, '2020-08-25 14:58:15', '1955', NULL, 'Tab. Calcium', '500MG', '1,0,0\r\n', 'Tab. Livogen', '300MG\r\n', '0,0,1\r\n', 'Tab. Levothyroxine', '25MCG\r\n', '1,0,0\r\n', 'Tab. Sodium Valproate', '200MG\r\n', '1,1,1\r\n', 'Tab. THP', '2MG\r\n', '2,2,2\r\n', 'Tab. Phenergan', '25MG\r\n', '1,0,1\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(136, '2020-08-25 15:01:01', '270', NULL, 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', 'Tab. Folic Acid', '5MG\r\n', '1,0,0\r\n', 'Tab. Phenytoin', '100MG\r\n', '1,0,3\r\n', 'Tab. Lorazepam', '1MG\r\n', '1,0,2\r\n', 'Tab. Olanzapine', '5MG\r\n', '0,0,2\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(137, '2020-08-25 15:02:08', '1971', NULL, 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', 'Tab. Risperidone', '2MG\r\n', '0,0,1\r\n', 'Tab. THP', '2MG\r\n', '1,0,0\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(138, '2020-08-25 15:03:28', '1972', NULL, 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', 'Tab. Haloperidol', '5MG\r\n', '0,0,1\r\n', 'Tab. Lorazepam', '1MG\r\n', '0,0,1\r\n', 'Tab. THP', '2MG\r\n', '1,1,0\r\n', 'Tab. Livogen', '150MG\r\n', '1,0,0\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(139, '2020-08-25 15:04:44', '1973', NULL, 'Tab. THP', '2MG\r\n', '2,0,0\r\n', 'Tab. Phenergan', '25MG\r\n', '1,0,1\r\n', 'Tab. Risperidone', '2MG\r\n', '0,0,1', 'Tab. Evion', '400MG\r\n', '1,1,1\r\n', 'Tab. Livogen', '300MG\r\n', '0,0,1\r\n', 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(140, '2020-08-25 15:06:07', '1942', NULL, 'Tab. Levothyroxine', '50MCG\r\n', '1,0,0\r\n', 'Tab. Escitalopram', '10MG\r\n', '0,0,2\r\n', 'Tab. Clonazepam', '0.5MG\r\n', '0,0,1\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(141, '2020-08-25 15:07:35', '1437', NULL, 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', 'Tab. Folic Acid', NULL, '1,0,0\r\n', 'Tab. Vit B12', '500MG\r\n', '1,1,1\r\n', 'Tab. Spirinolactone', '25MG\r\n', '4,0,0\r\n', 'Tab. Furosemide', '40MG\r\n', '0.5,0,0.5\r\n', 'Tab. Inderol', '40MG\r\n', '0.5,0.5,0\r\n', 'Tab. Levothyroxine', '25MCG\r\n', '1,0,0\r\n', 'Tab. Livogen', '300MG\r\n', '1,0,0\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(142, '2020-08-25 15:09:09', '125', NULL, 'Tab. Clozapine', '100MG\r\n', '1,0,4\r\n', 'Tab. THP', '2MG\r\n', '1,1,0\r\n', 'Tab. Amisulpride', '100MG\r\n', '0,0,1.5\r\n', 'Tab. Levothyroxine', '75MCG\r\n', '1,0,0\r\n', 'Tab. Chlorpromazine', '100MG\r\n', '1,1,1\r\n', 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', 'Tab. Livogen', '300MG\r\n', '0,0,1\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(143, '2020-08-25 15:10:14', '1969', NULL, 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', 'Tab. Risperidone', '2MG\r\n', '0,0,2\r\n', 'Tab. Autrin', '300MG\r\n', '0,0,1\r\n', 'Tab. Levothyroxine', '25MCG\r\n', '1,0,0\r\n', 'Tab. THP', '2MG\r\n', '1,1,0\r\n', 'Inj. Fluanxol', '60MG\r\n', '1,0,0\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(144, '2020-08-25 15:13:12', '1027', NULL, 'Tab. THP', '2MG\r\n', '1,1,0\r\n', 'Tab. Chlorpromazine', '100MG\r\n', '0,0,2\r\n', 'Inj. Fluphenazine', '75MG\r\n', '3,0,0\r\n', 'Tab. Atorvastatin', '10MG\r\n', '0,0,1\r\n', 'Tab. Livogen', '300MG\r\n', '0,0,1\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(145, '2020-08-25 15:14:31', '758', NULL, 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', 'Tab. Livogen', '300MG\r\n', '1,0,1\r\n', 'Tab. Vit B12', '500MG\r\n', '1,0,1\r\n', 'Tab. Sodium Valproate', '500MG\r\n', '1,0,2\r\n', 'Tab. Risperidone', '2MG\r\n', '0,0,0.5\r\n', 'Tab. THP', '2MG\r\n', '1,0,0\r\n', 'Tab. Levothyroxine', '75MCG\r\n', '1,0,0\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(146, '2020-08-25 15:17:59', '1769', NULL, 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', 'Tab. Atorvastatin', '10MG\r\n', '0,0,1\r\n', 'Tab. Amlong', '5MG\r\n', '0.5,0,0\r\n', 'Tab. THP', '2MG\r\n', '1,1,0\r\n', 'Tab. Risperidone', '2MG\r\n', '0,0,1\r\n', 'Cap. Vit B-Complex', NULL, '0,1,0\r\n', 'Inj. Fluanxol', '20MG\r\n', '1,0,0\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(147, '2020-08-25 15:22:03', '1967', NULL, 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', 'Tab. Vit B12', NULL, '1,0,1\r\n', 'Tab. Folic Acid', NULL, '1,0,0\r\n', 'Tab. THP', '2MG\r\n', '1,1,0\r\n', 'Tab. Risperidone', '2MG\r\n', '0,0,2\r\n', 'Syp. Dexorange', '500MG\r\n', '10ML,0,10ML\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(148, '2020-08-25 15:23:16', '1966', NULL, 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', 'Tab. Risperidone', '2MG\r\n', '1,0,3\r\n', 'Tab. THP', '2MG\r\n', '1,1,0\r\n', 'Tab. Livogen', '300MG\r\n', '1,0,1\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(149, '2020-08-25 15:25:26', '1962', NULL, 'Tab. THP', '2MG\r\n', '1,1,0\r\n', 'Tab. Clozapine', '100MG\r\n', '1,0,4\r\n', 'Tab. Amisulpride', '100MG\r\n', '0,0,0.5\r\n', 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', 'Tab. Livogen', '150MG\r\n', '1,0,1\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(150, '2020-08-25 15:26:36', '1963', NULL, 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', 'Tab. Ziprasidone', '20MG\r\n', '0,0,1\r\n', 'Tab. THP', '2MG\r\n', '1,1,0\r\n', 'T.MAYA', '100MG\r\n', '0,0,1\r\n', 'Tab. Livogen', '300MG\r\n', '0,0,1\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(151, '2020-08-25 15:28:42', '1964', NULL, 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', 'Tab. Livogen', '300MG\r\n', '1,0,1\r\n', 'Tab. Risperidone', '2MG\r\n', '0,0,3\r\n', 'Tab. THP', '2MG\r\n', '1,1,0\r\n', 'Tab. Olanzapine', '5MG\r\n', '0,0,1\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(152, '2020-08-26 11:40:23', '1907', NULL, 'Tab. Risperidone', '2MG', '1,0,3', 'Tab. Aripiprazole', '10MG', '0,0,0.5', 'Tab. THP', '2MG', '1,1,0', 'Tab. Calcium ', '500MG', '1,0,0', 'Syp. Cremaffin', NULL, NULL, 'Tab. Gelusil', NULL, '1,0,0', 'Inj. Fluanxol', '40MG\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(153, '2020-08-26 11:43:21', '445', NULL, 'Tab. Clozapine', '100MG\r\n', '0,0,2\r\n', 'Tab. Imipramine', '75MG\r\n', '0,0,1\r\n', 'Tab. THP', '2MG\r\n', '1,0,1\r\n', 'Tab. Atorvastatin', '10MG\r\n', '0,0,1\r\n', 'Tab. Livogen', '150MG\r\n', '2,0,0\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(154, '2020-08-26 11:45:03', '1770', NULL, 'Tab. THP', '2MG\r\n', '1,1,1\r\n', 'Tab. Olanzapine', '5MG\r\n', '0,0,0.5\r\n', 'Tab. Atorvastatin', '10MG\r\n', '0,0,1\r\n', 'Tab. Levothyroxine', '75MCG\r\n', '1,0,0\r\n', 'Inj. Fluanxol', '20MG\r\n', NULL, 'Inj. Fluanxol', '40MG\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(155, '2020-08-26 11:45:59', '1835', NULL, 'Tab. Escitalopram', '10MG\r\n', '0,0,1.25', 'Tab. Risperidone', '2MG\r\n', '1,0,4\r\n', 'Tab. Haloperidol', '5MG\r\n', '0,0,1\r\n', 'Tab. THP', '2MG\r\n', '1,1,0\r\n', 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', 'Tab. Livogen', '150MG\r\n', '1,0,1\r\n', 'Tab. Levothyroxine', '50MCG\r\n', '1,0,0\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(156, '2020-08-26 11:48:21', '1435', NULL, 'Tab. Risperidone', '2MG\r\n', '1,0,4\r\n', 'Tab. Chlorpromazine', '100MG\r\n', '0,0,1\r\n', 'Tab. Lorazepam', '1MG\r\n', '0.5,0,0\r\n', 'Tab. THP', '2MG\r\n', '1,1,1\r\n', 'Inj. Fluphenazine', '50MG\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(157, '2020-08-26 11:49:28', '1496', NULL, 'Tab. Clozapine', '100MG\r\n', '0,0,3\r\n', 'Tab. Risperidone', '2MG\r\n', '0,0,3\r\n', 'Tab. THP', '2MG\r\n', '1,1,1\r\n', 'Tab. Sodium Valproate', '200MG\r\n', '1,0,1\r\n', 'Tab. Aripiprazole', '10MG\r\n', '0,0,1.5\r\n', 'Tab. Escitalopram', '10MG\r\n', '0,0,0.5\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(158, '2020-08-26 11:52:37', '1409', NULL, 'Tab. Lorazepam', '1MG\r\n', '0,0,1\r\n', 'Cap. Evion', '400MG\r\n', '1,1,1\r\n', 'Tab. Amisulpride', '100MG\r\n', '0,0,0.5\r\n', 'Tab. Carbamazepine', '200MG\r\n', '0.5,0,1\r\n', 'Tab. THP', '2MG\r\n', '1,1,1\r\n', 'Tab. Inderol', '10MG\r\n', '1,0,0\r\n', 'Tab. Sodium Valproate', '200MG\r\n', '0,0,1\r\n', 'Tab. Levothyroxine', '25MCG\r\n', '1,0,0\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(159, '2020-08-26 11:56:45', '1284', NULL, 'Tab. Clozapine', '100MG\r\n', '0,0,1\r\n', 'Tab. Clozapine', '50MG\r\n', '0,0,1\r\n', 'Tab. Amisulpride', '100MG\r\n', '0,0,1.5\r\n', 'Tab. Fluoxetine', '20MG\r\n', '1,0,0\r\n', 'Tab. THP', '2MG\r\n', '1,0,2\r\n', 'Tab. Lorazepam', '1MG\r\n', '1,0,1\r\n', 'Cap. Evion', '400MG\r\n', '1,0,1\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(160, '2020-08-26 11:58:02', '1298', NULL, 'Tab. Clozapine', '100MG\r\n', '0,0,1\r\n', 'Tab. Risperidone', '2MG\r\n', '0,0,2.75\r\n', 'Tab. Escitalopram', '10MG\r\n', '0,0,1\r\n', 'Tab. THP', '2MG\r\n', '1,1,0\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(161, '2020-08-26 11:58:56', '1341', NULL, 'Tab. Sodium Valproate', '200MG\r\n', '1,0,1\r\n', 'Tab. Lorazepam', '1MG\r\n', '0,0,0.5\r\n', 'Tab. Escitalopram', '10MG\r\n', '0,0,0.25\r\n', 'Tab. THP', '2MG\r\n', '1,0,0\r\n', 'Tab. Levothyroxine', '25MCG\r\n', '1,0,0\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(162, '2020-08-26 12:02:28', '1151', NULL, 'Tab. Risperidone', '2MG\r\n', '1,0,2.5\r\n', 'Tab. THP', '2MG\r\n', '1,1,0\r\n', 'Tab. Escitalopram', '10MG\r\n', '0,0,1\r\n', 'Tab. Metformin', '500MG\r\n', '1,0,1\r\n', 'Tab. Glimepiride', NULL, '1,0,0\r\n', 'Tab. Aspirin', '150MG\r\n', '0,1,0\r\n', 'Tab. Atorvastatin', '10MG\r\n', '0,0,1\r\n', 'Tab. Livogen', '150MG\r\n', '1,0,1\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(163, '2020-08-26 12:04:20', '1626', NULL, 'Tab. Aripiprazole', '10MG\r\n', '0,0,2\r\n', 'Tab. Amisulpride', '200MG\r\n', '1,0,2\r\n', 'Tab. THP', '2MG\r\n', '1,1,0\r\n', 'Tab. Livogen', '150MG\r\n', '1,0,1\r\n', 'Tab. Chlorpromazine', '50MG\r\n', '0,0,1\r\n', 'Cap. Evion', '400MG\r\n', '1,1,1\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(164, '2020-08-26 12:05:56', '841', NULL, 'Tab. Atorvastatin', '10MG\r\n', '0,0,1\r\n', 'Tab. Aspirin', '150MG\r\n', '0,1,0\r\n', 'Tab. Syndopa', '110MG\r\n', '0.5,0.5,0\r\n', 'Tab. Glimepiride', '1MG\r\n', '0.5,0,0.5\r\n', 'Tab. Metformin', '500MG\r\n', '1,0,1\r\n', 'Tab. Escitalopram', '10MG\r\n', '0,0,1\r\n', 'Tab. Risperidone', '2MG\r\n', '0,0,3\r\n', 'Tab. Amisulpride', '100MG\r\n', '0,0,1\r\n', 'Tab. THP', '2MG\r\n', '1,1,0\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(165, '2020-08-26 12:08:16', '844', NULL, 'Tab. Clozapine', '25MG\r\n', '0,0,1\r\n', 'Tab. THP', '2MG\r\n', '1,0,0\r\n', 'Tab. Fluoxetine', '20MG\r\n', '1,0,0\r\n', 'Tab. Livogen', '150MG\r\n', '1,0,0\r\n', 'Tab. Lisinopril', '10MG\r\n', '4,0,0\r\n', 'Tab. Aten', '25MG\r\n', '1,0,0\r\n', 'Tab. Lorazepam', '1MG\r\n', '0.5,0,0.5\r\n', 'Tab. Amlong', '10MG\r\n', '1,0,0\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(166, '2020-08-26 12:09:36', '298', NULL, 'Tab. Chlorpromazine', '100MG\r\n', '0,0,1\r\n', 'Tab. Risperidone', '2MG\r\n', '1,0,3\r\n', 'Tab. THP', '2MG\r\n', '1,1,1\r\n', 'Tab. Amisulpride', '200MG\r\n', '1,0,2\r\n', 'Tab. Clozapine', '100MG\r\n', '0,0,2\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(167, '2020-08-26 12:10:30', '816', NULL, 'Tab. Risperidone', '2MG\r\n', '0,0,2.5\r\n', 'Tab. THP', '2MG\r\n', '1,1,0\r\n', 'Tab. Amisulpride', '200MG\r\n', '1,0,2\r\n', 'Tab. Lorazepam', '1MG\r\n', '0,0,1\r\n', 'Tab. Levothyroxine', '175MCG\r\n', '1,0,0\r\n', 'Inj. Fluphenazine', '50MG\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(168, '2020-08-26 12:11:35', '1313', NULL, 'Tab. Escitalopram', '10MG\r\n', '0,0,1.5\r\n', 'Tab. Phenytoin', '100MG\r\n', '0,0,1\r\n', 'Tab. Risperidone', '2MG\r\n', '0,0,0.25\r\n', 'Tab. Atorvastatin', '10MG\r\n', '0,0,1\r\n', 'Tab. Levothyroxine', '75MCG\r\n', '1,0,0\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(169, '2020-08-26 12:12:50', '1002', NULL, 'Tab. Quetiapine', '100MG\r\n', '0,0,1\r\n', 'Tab. Risperidone', '2MG\r\n', '1,0,0\r\n', 'Tab. Clonazepam', '0.5MG\r\n', '0.5,0.5,0\r\n', 'Tab. Livogen', '150MG\r\n', '1,0,0', 'Cap. Evion', '400MG\r\n', '1,0,1\r\n', 'Tab. Levothyroxine', '25MCG\r\n', '1,0,0\r\n', 'Betnovate Ointment', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(170, '2020-08-26 12:15:12', '57', NULL, 'Tab. Clozapine', '100MG\r\n', '0,0,2\r\n', 'Tab. Lorazepam', '1MG\r\n', '0.5,0.5,1\r\n', 'Cap. Evion', '400MG\r\n', '1,1,1\r\n', 'Tab. THP', '2MG\r\n', '1,1,1\r\n', 'Adult Diapers', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(171, '2020-08-26 12:16:21', '1190', NULL, 'Tab. Clozapine', '100MG\r\n', '0,0,2\r\n', 'Tab. Amisulpride', '200MG\r\n', '0,0,1\r\n', 'Tab. THP', '2MG\r\n', '1,0,1\r\n', 'Tab. Imipramine', '75MG\r\n', '0,0,1\r\n', 'Tab. Levothyroxine', '50MCG\r\n', '1,0,0\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(172, '2020-08-26 12:17:16', '949', NULL, 'Tab. Clozapine', '100MG\r\n', '1,0,1\r\n', 'Tab. THP', '2MG\r\n', '1,0,1\r\n', 'Tab. Aripiprazole', '10MG\r\n', '0,0,2\r\n', 'Tab. Vit B-Complex', NULL, '1,0,0\r\n', 'Tab. Chlorpromazine', '100MG\r\n', '0,0,2\r\n', 'Tab. Pantoprazole', '40MG\r\n', '1,0,0\r\n', 'Tab. Clonazepam', '0.5MG\r\n', '1,1,1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(173, '2020-08-27 10:27:56', 'R-21', NULL, 'Tab. Risperidone', '2MG\r\n', '0,0,1.5\r\n', 'Tab. Sodium Valproate', '500MG\r\n', '1,0,1\r\n', 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', 'Tab. Fluoxetine', '20MG\r\n', '1,0,0\r\n', 'Tab. Amitriptyline', '25MG\r\n', '0,0,1\r\n', 'Tab. Paracetamol', '500MG\r\n', '0.5,0.5,0\r\n', 'Tab. Levothyroxine', '400MG\r\n', '1,0,0\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(174, '2020-08-27 10:28:58', '1009', NULL, 'Tab. Escitalopram', '10MG', '1,0,0.5', 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', 'Tab. Vit B-Complex', NULL, '1,0,0\r\n', 'Tab. Levothyroxine', '25MCG\r\n', '1,0,0\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(175, '2020-08-27 10:31:56', '1588', NULL, 'Tab. Clozapine', '100MG', '0,0,2', 'Tab. THP', '2MG', '1,1,1', 'Tab. Imipramine', '75MG\r\n', '0,0,1\r\n', 'Tab. Risperidone', '2MG\r\n', '0,0,1', 'Tab. Livogen', '150MG\r\n', '1,0,0\r\n', 'Inj. Fluphenazine', '25MG\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(176, '2020-08-27 10:33:52', '241', NULL, 'Inj. Fluanxol', '20MG\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(177, '2020-08-27 10:34:37', '1368', NULL, 'Tab. Risperidone', '2MG\r\n', '0,0,2.5\r\n', 'Tab. Lorazepam', '1MG\r\n', '0,0,0.5\r\n', 'Tab. Sodium Valproate', '500MG\r\n', '1,0,1\r\n', 'Tab. Escitalopram', '10MG\r\n', '0.5,0,1\r\n', 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', 'Tab. Vit B-Complex', NULL, '1,0,0\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(178, '2020-08-27 10:47:33', '1377', NULL, 'Tab. Risperidone', '2MG\r\n', '0,0,3\r\n', 'Tab. THP', '2MG\r\n', '1,1,0\r\n', 'Tab. Escitalopram', '10MG\r\n', '0,0,1\r\n', 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', 'Tab. Syndopa', '110MG\r\n', '1,1,0\r\n', 'Syp. Potassium Chloride', '10ML\r\n', '1,1,1', 'Tab. Levothyroxine', '25MCG', '1,0,0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(179, '2020-08-27 10:50:34', '839', NULL, 'Tab. Sodium Valproate', '500MG', '1,0,1', 'Tab. Clozapine', '100MG', '0,0,2', 'Tab. Amisulpride', '200MG', '1,1,1', 'Tab. THP', '2MG', '1,1,1', 'Tab. Calcium', '500MG', '1,0,0', 'Cap. Evion', '400MG', '1,0,1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(180, '2020-08-27 10:52:41', '564', NULL, 'Tab. Escitalopram', '10MG\r\n', '0,0,1\r\n', 'Tab. Amisulpride', '200MG\r\n', '0,0,1\r\n', 'Tab. THP', '2MG\r\n', '1,1,0\r\n', 'Tab. Amisulpride', '100MG\r\n', '1,0,1\r\n', 'Tab. Risperidone', '2MG\r\n', '0,0,2\r\n', 'Tab. Sodium Valproate', '500MG\r\n', '1,0,1\r\n', 'Cap. Evion', '400MG\r\n', '1,1,0\r\n', 'Tab. Levothyroxine', '25MCG\r\n', '1,0,0\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(181, '2020-08-27 11:18:58', '553', NULL, 'Tab. THP', '2MG\r\n', '1,0,1\r\n', 'Tab. Escitalopram', '10MG\r\n', '0,0,0.5\r\n', 'Tab. Risperidone', '2MG\r\n', '0,0,0.5\r\n', 'Tab. Clozapine', '100MG\r\n', '0,0,1\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(182, '2020-08-27 11:20:13', '1279', NULL, 'Tab. Sodium Valproate', '500MG\r\n', '1,0,1\r\n', 'Tab. Escitalopram', '10MG\r\n', '0,0,1\r\n', 'Tab. Haloperidol', '5MG\r\n', '0.5,0,0.5\r\n', 'Tab. Pantoprazole', '40MG\r\n', '1,0,0\r\n', 'Tab. THP', '2MG\r\n', '1,1,1\r\n', 'Inj. Phenergan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(183, '2020-08-27 11:24:29', '1305', NULL, 'Tab. THP', '2MG\r\n', '1,1,1\r\n', 'Tab. Livogen', '150MG\r\n', '1,0,0\r\n', 'Tab. Fluanxol', '1MG\r\n', '1,0,1\r\n', 'Tab. Risperidone', '2MG\r\n', '0,0,2\r\n', 'Tab. Imipramine', '75MG\r\n', '0,0,0.5\r\n', 'Tab. Calcium 500\r\n', '500MG\r\n', '1,0,0\r\n', 'Inj. Fluanxol', '20MG\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(184, '2020-08-27 11:27:21', '1617', NULL, 'Tab. THP', '2MG\r\n', '1,1,0\r\n', 'Tab. Risperidone', '2MG\r\n', '0,0,2\r\n', 'Tab. Clonazepam', '0.5MG\r\n', '0,0,1\r\n', 'Tab. Livogen', '150MG\r\n', '1,0,0\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(185, '2020-08-27 11:31:25', '1578', NULL, 'Tab. THP', '2MG\r\n', '1,0,0\r\n', 'Tab. Clozapine', '100MG\r\n', '0,0,2\r\n', 'Tab. Atorvastatin', '10MG\r\n', '0,0,1\r\n', 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(186, '2020-08-27 11:32:19', '1828', NULL, 'Tab. Clozapine', '100MG\r\n', '0,0,1\r\n', 'Tab. Aripiprazole', '10MG\r\n', '0,0,2\r\n', 'Tab. THP', '2MG\r\n', '1,1,0\r\n', 'Tab. Metformin', '500MG\r\n', '1,0,0\r\n', 'Tab. Calcium', '500MG\r\n', '0,1,0\r\n', 'Tab. Escitalopram', '10MG\r\n', '0,0,1.25\r\n', 'Tab. Livogen', '150MG\r\n', '0,1,0\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(187, '2020-08-27 11:33:22', '1443', NULL, 'Tab. Risperidone', '2MG\r\n', '0,0,1\r\n', 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', 'Tab. THP', '2MG\r\n', '1,0,0\r\n', 'Tab. Escitalopram', '5MG\r\n', '0.5,0,0.5\r\n', 'Tab. Aripiprazole', '10MG\r\n', '0,0,0.5\r\n', 'Tab. Vit B-Complex', NULL, '1,0,0\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(188, '2020-08-27 11:34:43', '1458', NULL, 'Tab. THP', '2MG\r\n', '1,1,0\r\n', 'Tab. Risperidone', '2MG\r\n', '0,0,3\r\n', 'Tab. Aten', '25MG\r\n', '1,0,0\r\n', 'Tab. Olanzapine', '5MG\r\n', '0,0,1\r\n', 'Tab. Clonazepam', '0.5MG\r\n', '0,0,1\r\n', 'Tab. Escitalopram', '10MG\r\n', '0,0,1.25\r\n', 'Inj. Fluanxol', '20MG\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(189, '2020-08-27 12:00:18', '875', NULL, 'Tab. Metformin', '500MG\r\n', '1,0,1\r\n', 'Tab. Atorvastatin', '10MG\r\n', '0,0,1\r\n', 'Tab. Aspirin', '75MG\r\n', '0,1,0\r\n', 'Tab. Livogen', '150MG\r\n', '1,0,0\r\n', 'Tab. Levothyroxine', '12.5MCG\r\n', '1,0,0\r\n', 'Tab. Risperidone', '2MG\r\n', '0,0,1\r\n', 'Tab. THP', '2MG\r\n', '1,1,0\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(190, '2020-08-27 12:02:32', '1724', NULL, 'Tab. Clozapine', '100MG\r\n', '0,0,2\r\n', 'Tab. Amisulpride', '100MG\r\n', '0,0,3\r\n', 'Tab. Imipramine', '75MG\r\n', '0,0,1\r\n', 'Tab. Risperidone', '2MG\r\n', '1,0,3\r\n', 'Tab. Lorazepam', '1MG\r\n', '1,0,2\r\n', 'Tab. THP', '2MG\r\n', '2,1,1\r\n', 'Tab. Levothyroxine', '25MCG\r\n', '1,0,0\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(191, '2020-08-27 12:04:03', '1391', NULL, 'Tab. Haloperidol', '5MG\r\n', '0,0,1.5\r\n', 'Tab. THP', '2MG\r\n', '1,1,0\r\n', 'Tab. Levothyroxine', '25MCG\r\n', '1,0,0\r\n', 'Tab. Livogen', '150MG\r\n', '1,0,1\r\n', 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', 'Tab. Amlong', '5MG\r\n', '0.5,0,0\r\n', 'Tab. Imipramine', '25MG\r\n', '0,0,2\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(192, '2020-08-27 12:05:26', '1661', NULL, 'Tab. Risperidone', '2MG\r\n', '0,0,2\r\n', 'Tab. THP', '2MG\r\n', '1,1,0\r\n', 'Tab. Escitalopram', '10MG\r\n', '0,0,1\r\n', 'Tab. Haloperidol', '5MG\r\n', '0,0,1', 'Tab. Sodium Valproate', '500MG\r\n', '0,0,1\r\n', 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', 'Tab. Fluoxetine', '20MG\r\n', '1,0,0\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(193, '2020-08-27 12:07:45', '458', NULL, 'Tab. Risperidone', '2MG\r\n', '1,0,3.5\r\n', 'Tab. THP', '2MG\r\n', '1,1,0\r\n', 'Tab. Lorazepam', '1MG\r\n', '1,1,0\r\n', 'Tab. Metformin', '500MG\r\n', '0.5,0,0.5\r\n', 'Tab. Aspirin', '150MG\r\n', '0,1,0\r\n', 'Cap. Evion', '400MG\r\n', '1,1,1\r\n', 'Tab. Escitalopram', '10MG\r\n', '1.25,0,1.25\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(194, '2020-08-27 12:09:24', '594', NULL, 'Tab. Risperidone', '2MG\r\n', '0,0,2.5\r\n', 'Tab. THP', '2MG\r\n', '1,0,0\r\n', 'Tab. Livogen', '150MG\r\n', '1,0,0\r\n', 'Tab. Escitalopram', '10MG\r\n', '0,0,1\r\n', 'Tab. Lorazepam', '1MG\r\n', '0,0,1\r\n', 'Cap. Evion', '400MG\r\n', '1,0,0\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(195, '2020-08-27 12:10:12', 'R-04', NULL, 'Tab. Clozapine', '50MG\r\n', '0,0,1\r\n', 'Tab. Escitalopram', '10MG\r\n', '0,0,1\r\n', 'Tab. Imipramine', '25MG\r\n', '0,0,1\r\n', 'Tab. THP', '2MG\r\n', '1,1,0\r\n', 'Tab. Haloperidol', '5MG\r\n', '0,0,1\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(196, '2020-08-27 12:11:15', '1523', NULL, 'Tab. Amisulpride', '200MG\r\n', '0,0,1\r\n', 'Tab. Levetiracetam', '500MG\r\n', '1,0,0\r\n', 'Tab. Vit B-Complex', NULL, '1,0,0\r\n', 'Tab. Escitalopram', '10MG\r\n', '0,0,1\r\n', 'Tab. Risperidone', '2MG\r\n', '0,0,1\r\n', 'Tab. Clonazepam', '0.5MG\r\n', '0,0,1\r\n', 'Tab. THP', '2MG\r\n', '1,0,0\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(197, '2020-08-27 12:15:34', '1171', NULL, 'Tab. THP', '2MG\r\n', '1,0,0\r\n', 'Tab. Metformin', '500MG\r\n', '1,1,1\r\n', 'Tab. Atorvastatin', '10MG\r\n', '0,0,1\r\n', 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', 'Tab. Aripiprazole', '10MG\r\n', '0,0,2\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(198, '2020-08-27 12:20:03', '871', NULL, 'Tab. Cabergolin', '0.25MG\r\n', '0,0,1\r\n', 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', 'Tab. Livogen', '150MG\r\n', '1,0,1\r\n', 'Tab. Clozapine', '100MG\r\n', '0,0,3\r\n', 'Tab. Atorvastatin', '10MG\r\n', '0,0,1\r\n', 'Tab. Metformin', '250MG\r\n', '0.5,0,0.5\r\n', 'Tab. Imipramine', '75MG\r\n', '0,0,1\r\n', 'Tab. Aripiprazole', '10MG\r\n', '0,0,3\r\n', 'Tab. THP', '2MG\r\n', '1,1,1\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(199, '2020-08-27 12:25:40', '712', NULL, 'Cap. Evion', '400MG\r\n', '1,1,0\r\n', 'Tab. Calcium\r\n', '500MG\r\n', '1,0,0\r\n', 'Tab. Vit B-Complex', NULL, '1,0,0\r\n', 'Gentamicine Eye Drops', NULL, NULL, 'Tab. Aripiprazole', '10MG\r\n', '0,0,2\r\n', 'Tab. Livogen', '150MG\r\n', '1,0,1\r\n', 'Tab. THP', '2MG\r\n', '1,1,0\r\n', 'Tab. Levothyroxine', '75MCG\r\n', '1,0,0\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(200, '2020-08-27 12:26:52', '1824', NULL, 'Tab. THP', '2MG\r\n', '1,0,0\r\n', 'Tab. Amisulpride', '200MG\r\n', '0,0,2\r\n', 'Tab. Risperidone', '2MG\r\n', '0,0,2.5\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(201, '2020-08-27 12:30:59', '32', NULL, 'Tab. Risperidone', '2MG\r\n', '0,0,1.5\r\n', 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', 'Tab. Haloperidol', '1.5MG\r\n', '1,0,1\r\n', 'Tab. THP', '2MG\r\n', '1,1,0\r\n', 'Tab. Escitalopram', '10MG\r\n', '0,0,1.5\r\n', 'Tab. Lorazepam', '1MG\r\n', '0,0,1\r\n', 'Tab. Levothyroxine', '75MCG\r\n', '1,0,0\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(202, '2020-08-27 12:32:45', '1734', NULL, 'Tab. THP', '2MG\r\n', '1,1,0\r\n', 'Tab. Amisulpride', '100MG\r\n', '0,0,1.5\r\n', 'Tab. Amisulpride', '200MG\r\n', '0,0,1\r\n', 'Tab. Livogen', '150MG\r\n', '1,0,0\r\n', 'Tab. Escitalopram', '10MG\r\n', '0.5,0,0.5\r\n', 'Tab. Imipramine', '75MG\r\n', '0,0,0.5\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(203, '2020-08-27 12:33:55', '1120', NULL, 'Tab. Risperidone', '2MG\r\n', '0,0,0.5\r\n', 'Syp. Dexorange', NULL, '10ML,10ML,0\r\n', 'Tab. Calcium', '500MG', '1,0,0', 'Tab. THP', '2MG', '1,0,0', 'Asthalin Inhaler', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(204, '2020-08-27 12:35:48', 'R-03', NULL, 'Tab. Olanzapine', '5MG\r\n', '0,0,1\r\n', 'Tab. Lasilactone', '50MG\r\n', '1,0,0\r\n', 'Cap. Evion', '400MG\r\n', '1,0,1\r\n', 'Tab. THP', '2MG\r\n', '1,0,0\r\n', 'Tab. Digoxin', '0.25MG\r\n', '1,0,0\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(205, '2020-08-27 12:42:36', '1263', NULL, 'Tab. Metoprolol', '50MG\r\n', '0.5,0,1\r\n', 'Tab. Risperidone', '2MG\r\n', '0,0,1\r\n', 'Tab. THP', '2MG\r\n', '1,0,0\r\n', 'Tab. Ecosprin AV (Aspirin + Atorvastatin)', '75MG\r\n', '0,1,0\r\n', 'Tab. Clozapine', '25MG\r\n', '0,0,1\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(206, '2020-08-27 12:44:11', '846', NULL, 'Tab. Haloperidol', '5MG\r\n', '1,1,2\r\n', 'Tab. Sodium Valproate', '500MG\r\n', '1,0,2\r\n', 'Tab. THP', '2MG\r\n', '1,1,0\r\n', 'Tab. Livogen', '150MG\r\n', '1,0,0\r\n', 'Tab. Metformin', '500MG\r\n', '1,0,1\r\n', 'Tab. Risperidone', '2MG\r\n', '0,0,2.5\r\n', 'Tab. Tenofovir', '25MG\r\n', '1,0,0\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(207, '2020-08-27 12:45:33', '1352', NULL, 'Tab. Haloperidol', '5MG\r\n', '0,0,1\r\n', 'Tab. THP', '2MG\r\n', '2,1,1\r\n', 'Tab. Phenergan', '25MG\r\n', '0,0,1\r\n', 'Tab. Olanzapine', '5MG\r\n', '0,0,1\r\n', 'Tab. Sodium Valproate', '200MG\r\n', '1,0,0\r\n', 'Inj. Senorm LA', '50MG\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(208, '2020-08-27 12:46:45', 'R-11', NULL, 'Tab. Clozapine', '25MG\r\n', '0,0,1\r\n', 'Tab. Metformin', '500MG\r\n', '1,0,1\r\n', 'Tab. THP', '2MG\r\n', '2,1,1\r\n', 'Tab. Risperidone', '2MG\r\n', '0.5,0,0.5\r\n', 'Tab. Imipramine', '75MG\r\n', '0,0,1\r\n', 'Cap. Evion', '400MG\r\n', '1,0,1\r\n', 'Tab. Livogen', '150MG\r\n', '1,0,1\r\n', 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', 'Tab. Deriphyllin', NULL, '1,0,0\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(209, '2020-08-27 12:48:28', 'R-48', NULL, 'Tab. Risperidone', '2MG\r\n', '0,0,2\r\n', 'Tab. THP', '2MG\r\n', '1,1,0\r\n', 'Tab. Calcium', '500MG\r\n', '0,0,1\r\n', 'Tab. Livogen', '150MG\r\n', '0,1,0\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(210, '2020-08-27 12:49:35', 'R-27', NULL, 'Tab. Aripiprazole', '10MG\r\n', '0,0,2\r\n', 'Tab. Escitalopram', '10MG\r\n', '0,0,1\r\n', 'Tab. THP', '2MG\r\n', '1,1,0\r\n', 'Tab. Lorazepam', '1MG\r\n', '0,0,1\r\n', 'Salbutamol Inhaler', NULL, '1,1,1\r\n', 'Tab. Vit B-Complex', NULL, '1,0,1\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(211, '2020-08-27 12:50:48', '1568', NULL, 'Tab. THP', '2MG\r\n', '1,1,0\r\n', 'Tab. Risperidone', '2MG\r\n', '0,0,1.5\r\n', 'Tab. Metformin', '500MG\r\n', '0.5,0,0.5\r\n', 'Tab. Escitalopram', '10MG\r\n', '0,0,1', 'Tab. Clozapine', '100MG\r\n', '0,0,1.5\r\n', 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', 'Tab. Livogen', '150MG\r\n', '1,0,0\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(212, '2020-08-27 12:52:55', '967', NULL, 'Tab. Chlorpromazine', '100MG\r\n', '0,0,0.5\r\n', 'Tab. Sodium Valproate', '500MG\r\n', '0,0,1\r\n', 'Tab. Levothyroxine', '25MCG', '1,0,0\r\n', 'Tab. THP', '2MG\r\n', '1,0,0\r\n', 'Tab. Lorazepam', '1MG\r\n', '0,0,1\r\n', 'Inj. Fluphenazine', '25MG\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(213, '2020-08-27 12:56:00', '1700', NULL, 'Tab. Clozapine', '25MG\r\n', '0,0,1\r\n', 'Tab. Livogen', '150MG\r\n', '1,0,0\r\n', 'Tab. Vit B-Complex', NULL, '1,0,0\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(214, '2020-08-27 12:56:35', '1071', NULL, 'Tab. Risperidone', '2MG\r\n', '0.5,0,3\r\n', 'Tab. Escitalopram', '10MG\r\n', '0,0,1\r\n', 'Tab. THP', '2MG\r\n', '1,1,0\r\n', 'Tab. Amisulpride', '200MG\r\n', '1,0,1\r\n', 'Tab. Inderol', '10MG\r\n', '1,0,1\r\n', 'Tab. Ursocol', '150MG\r\n', '1,0,1\r\n', 'Tab. Tenofovir', '25MG\r\n', '1,0,0\r\n', 'Tab. Aldactone', '25MG\r\n', '0.5,0.5,0\r\n', 'Tab. Clonazepam', '0.5MG\r\n', '0,0,1\r\n', 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(215, '2020-08-27 12:57:52', '889', NULL, 'Tab. Levetiracetam', '500MG\r\n', '1,0,1\r\n', 'Tab. Risperidone', '2MG\r\n', '0.5,0,1.5\r\n', 'Tab. Chlorpromazine', '100MG\r\n', '0,0,1\r\n', 'Tab. THP', '2MG\r\n', '1,1,1\r\n', 'Tab. Lorazepam', '1MG\r\n', '0,0,1\r\n', 'Tab. Deriphyllin', NULL, '1,0,0\r\n', 'Inj. Renerve plus', NULL, NULL, 'Inj. Senorm LA', '25MG\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `medicine_master` (`id`, `date`, `client_file_number`, `client_diagnosis`, `medicine_1_name`, `medicine_1_strength`, `medicine_1_schedule`, `medicine_2_name`, `medicine_2_strength`, `medicine_2_schedule`, `medicine_3_name`, `medicine_3_strength`, `medicine_3_schedule`, `medicine_4_name`, `medicine_4_strength`, `medicine_4_schedule`, `medicine_5_name`, `medicine_5_strength`, `medicine_5_schedule`, `medicine_6_name`, `medicine_6_strength`, `medicine_6_schedule`, `medicine_7_name`, `medicine_7_strength`, `medicine_7_schedule`, `medicine_8_name`, `medicine_8_strength`, `medicine_8_schedule`, `medicine_9_name`, `medicine_9_strength`, `medicine_9_schedule`, `medicine_10_name`, `medicine_10_strength`, `medicine_10_schedule`, `medicine_11_name`, `medicine_11_strength`, `medicine_11_schedule`, `medicine_12_name`, `medicine_12_strength`, `medicine_12_schedule`, `medicine_13_name`, `medicine_13_strength`, `medicine_13_schedule`, `medicine_14_name`, `medicine_14_strength`, `medicine_14_schedule`, `medicine_15_name`, `medicine_15_strength`, `medicine_15_schedule`, `doc_id`) VALUES
(216, '2020-08-27 13:00:26', '79', NULL, 'Tab. Metformin', '500MG\r\n', '1,0,1\r\n', 'Tab. Clozapine', '500MG\r\n', '0,0,1\r\n', 'Tab. THP', '2MG\r\n', '1,0,1\r\n', 'Tab. Aripiprazole', '10MG\r\n', '0,0,3\r\n', 'Tab. Lorazepam', '1MG\r\n', '0,0,1.5\r\n', 'Tab. Livogen', '150MG\r\n', '0,1,0\r\n', 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(217, '2020-08-27 13:15:14', '402', NULL, 'Tab. Risperidone', '2MG\r\n', '0,0,0.5\r\n', 'Tab. Lorazepam', '1MG\r\n', '0,0,1.5\r\n', 'Tab. Livogen', '150MG\r\n', '1,0,1\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(218, '2020-08-27 13:15:44', '774', NULL, 'Tab. Sodium Valproate', '500MG\r\n', '1,1,2\r\n', 'Tab. Clozapine', '100MG\r\n', '0,0,2\r\n', 'Tab. Carbamazepine', '200MG\r\n', '1,1,2\r\n', 'Tab. Aripiprazole', '10MG\r\n', '0,0,3\r\n', 'Tab. Levothyroxine', '100MG\r\n', '1,0,0\r\n', 'Tab. Livogen', '150MG\r\n', '1,0,0\r\n', 'Tab. Pilex', NULL, '1,0,1\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(219, '2020-08-27 13:16:45', '486', NULL, 'Tab. Risperidone', '2MG\r\n', '0,0,1\r\n', 'Tab. Levothyroxine', '75MG\r\n', '1,0,0\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(220, '2020-08-27 14:33:34', '1144', NULL, 'Cap. Evion', '400MG\r\n', '1,0,0\r\n', 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', 'Tab. Livogen', '150MG\r\n', '0,0,2\r\n', 'Tab. Levothyroxine', '50MG\r\n', '1,0,0\r\n', 'Tab. Sodium Valproate', '500MG\r\n', '1,1,2\r\n', 'Tab. Clozapine', '100MG\r\n', '0,0,2.5\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(221, '2020-08-27 14:35:34', '1516', NULL, 'Tab. THP', '2MG\r\n', '1,1,0\r\n', 'Tab. Clozapine', '100MG\r\n', '0,0,1.5\r\n', 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', 'Cap. Evion', '400MG\r\n', '1,0,1\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(222, '2020-08-27 14:38:15', '1644', NULL, 'Inj. Fluanxol', '40MG f/n\r\n', '0,1Amp,0\r\n', 'Tab. Olanzapine', '5MG\r\n', '0,0,4\r\n', 'Tab. Livogen', '150MG\r\n', '1,0,1\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(223, '2020-08-27 14:38:52', '760', NULL, 'Inj. Fluanxol', '20MG\r\n', '1Amp,0,0\r\n', 'Tab. THP', '2MG\r\n', '1,1,0\r\n', 'Tab. Risperidone', '2MG\r\n', '1,0,2\r\n', 'Tab. Clozapine', '25MG\r\n', '0,0,1\r\n', 'Tab. Levothyroxine', '25MG\r\n', '1,0,0\r\n', 'Cap. Evion', '400MG\r\n', '1,0,1\r\n', 'Tab. Aspirin', '75MG\r\n', '0,1,0\r\n', 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(224, '2020-08-27 14:40:16', '1582', NULL, 'Tab. Atorvastatin', '10MG\r\n', '0,0,1\r\n', 'Tab. Amlip', '5MG\r\n', '1,0,1\r\n', 'Tab. Livogen', '150MG\r\n', '0,1,0\r\n', 'Tab. Clopilet', '75MG\r\n', '1,0,0\r\n', 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', 'Tab. Aripiprazole', '10MG\r\n', '0,0,2\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(225, '2020-08-27 14:41:14', '531', NULL, 'Inj. Fluphenazine', '25MG F/N\r\n', '1Amp,0,0\r\n', 'Tab. THP', '2MG\r\n', '1,1,0\r\n', 'Tab. Olanzapine', '5MG\r\n', '0,0,4\r\n', 'Tab. Melatonin', '3MG\r\n', '0,0,1\r\n', 'Tab. Livogen', '150MG\r\n', '1,0,0\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(226, '2020-08-27 14:41:58', '341', NULL, 'Inj. Senorm LA', '50MG F/N\r\n', '1Amp,0,0\r\n', 'Tab. Sodium Valproate', '500MG\r\n', '1,0,1\r\n', 'Tab. THP', '2MG\r\n', '1,0,0\r\n', 'Tab. Melatonin', '3MG\r\n', '0,0,1\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(227, '2020-08-27 14:42:53', '1758\r\n', NULL, 'Inj. Fluphenazine', '25MG F/N\r\n', '1Amp,0,0\r\n', 'Tab. THP', '2MG\r\n', '1,1,0\r\n', 'Tab. Aripiprazole', '10MG\r\n', '0,0,3\r\n', 'Tab. Livogen', '150MG\r\n', '1,0,0\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(228, '2020-08-27 14:43:31', '273', NULL, 'Tab. Clozapine', '100MG\r\n', '0,0,4\r\n', 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', 'Tab. Levothyroxine', '50MG\r\n', '1,0,0\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(229, '2020-08-27 14:44:06', '307', NULL, 'Tab. Risperidone', '2MG\r\n', '0,0,1\r\n', 'Tab. Livogen', '150MG\r\n', '1,0,0\r\n', 'Tab. Metoprolol', '12.5MG\r\n', '1,0,0\r\n', 'Tab. Atorvastatin', '10MG\r\n', '0,0,0.5\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(230, '2020-08-27 14:45:13', '952', NULL, 'Tab. Clozapine', '100MG\r\n', '0,0,2\r\n', 'Tab. Livogen', '150MG\r\n', '1,0,0\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(231, '2020-08-27 14:45:47', '1525', NULL, 'Tab. Sodium Valproate', '500MG\r\n', '1,1,2\r\n', 'Tab. Phenytoin', '100MG\r\n', '1,0,1\r\n', 'Tab. THP', '2MG\r\n', '1,1,0\r\n', 'Tab. Levothyroxine', '100MG\r\n', '1,0,0\r\n', 'Tab. Livogen', '150MG\r\n', '0,0,1\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(232, '2020-08-27 14:47:04', '1206', NULL, 'Inj. Senorm LA', '50MG F/N\r\n', '1Amp,0,0\r\n', 'Tab. THP', '2MG\r\n', '1,1,0\r\n', 'Tab. Risperidone', '2MG\r\n', '0,0,3\r\n', 'Tab. Metformin', '500MG\r\n', '1,0,0\r\n', 'Tab. Atorvastatin', '10MG\r\n', '0,0,1\r\n', 'Tab. Aspirin', '75MG\r\n', '0,1,0\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(233, '2020-08-27 14:49:17', '826', NULL, 'Tab. Livogen', '150MG\r\n', '1,0,0\r\n', 'Tab. Atorvastatin', '10MG\r\n', '0,0,1\r\n', 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', 'Tab. THP', '2MG\r\n', '1,1,0\r\n', 'Tab. Risperidone', '2MG\r\n', '1,0,2\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(234, '2020-08-27 14:50:29', '55', NULL, 'Tab. Aripiprazole', '10MG\r\n', '0,0,0.5\r\n', 'Tab. THP', '2MG\r\n', '1,0,0\r\n', 'Tab. Livogen', '150MG\r\n', '1,0,0\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(235, '2020-08-27 14:50:59', '962', NULL, 'Tab. Risperidone', '2MG\r\n', '1,0,2\r\n', 'Tab. THP', '2MG\r\n', '1,1,0\r\n', 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', 'Tab. Metformin', '500 MG\r\n', '1,0,1\r\n', 'Tab. Atorvastatin', '10MG\r\n', '0,0,1\r\n', 'Tab. Livogen', '150mg\r\n', '0,1,0\r\n', 'Tab. Aspirin', '75MG\r\n', '0,1,0\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(236, '2020-08-27 14:52:20', '784', NULL, 'Tab. Phenytoin', '100MG\r\n', '1,0,1\r\n', 'Tab. Aripiprazole', '10MG\r\n', '1,0,1\r\n', 'Tab. THP', '2MG\r\n', '1,0,0\r\n', 'Tab. Carbamazepine', '200MG\r\n', '1,0,2\r\n', 'Tab. Livogen', '150MG\r\n', '1,0,0\r\n', 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(237, '2020-08-27 14:53:25', '572', NULL, 'Tab. Aripiprazole', '10MG\r\n', '0,0,1\r\n', 'Tab. Livogen', '150MG\r\n', '1,0,1\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(238, '2020-08-27 14:54:02', '430', NULL, 'Tab. Sodium Valproate', '500MG\r\n', '1,1,1\r\n', 'Tab. Phenytoin', '100MG\r\n', '0,0,3\r\n', 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', 'Tab. Livogen', '150MG\r\n', '1,0,0\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(239, '2020-08-27 15:18:35', '1747', NULL, 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', 'Tab. Livogen', '150MG\r\n', '0,1,0\r\n', 'Cap. Atorfit', '20MG\r\n', '0,0,1\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(240, '2020-08-27 15:19:45', '1645', NULL, 'Inj. Fluanxol', '40MG F/N\r\n', '1AMP,0,0', 'Tab. Risperidone', '2MG\r\n', '2,0,2\r\n', 'Tab. THP', '2MG\r\n', '1,1,0\r\n', 'Tab. Aspirin', '75MG\r\n', '0,1,0\r\n', 'Tab. Atorvastatin', '10MG\r\n', '0,0,1\r\n', 'Tab. Levothyroxine', '100MG\r\n', '1,0,0\r\n', 'Tab. Metoprolol', '25MG\r\n', '1,0,0\r\n', 'Tab. Envas', '5MG\r\n', '0,0,1\r\n', 'Tab. Furosemide', '40MG\r\n', '0.5,0,0\r\n', 'Tab. Isosorbide dinitrate', '5MG SOS\r\n', '1,1,1\r\n', 'Tab. Gliclazide', '500MG\r\n', '1,0,1\r\n', 'Tab. Vaglibose', '0.2MG\r\n', '1,1,1\r\n', 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', 'Tab. Vit B-Complex (SOS)', NULL, NULL, NULL, NULL, NULL, NULL),
(241, '2020-08-27 15:21:53', '856', NULL, 'Inj. Fluphenazine', '75MG F/N\r\n', '1AMP,0,0', 'Tab. Inderol', '40MG\r\n', '0.5,0.5,0\r\n', 'Tab. Clozapine', '100MG\r\n', '0,0,2\r\n', 'Tab. THP', '2MG\r\n', '1,1,0\r\n', 'Tab. Escitalopram', '10MG\r\n', '1,1,0\r\n', 'Tab. Clonazepam', '0.5MG\r\n', '1,1,0\r\n', 'Tab. Levothyroxine', '25MG\r\n', '1,0,0\r\n', 'Cap. Evion', '400MG\r\n', '1,1,1\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(242, '2020-08-27 15:23:32', '1404', NULL, 'Inj. Fluanxol', '80MG F/N\r\n', '1AMP,0,0', 'Tab. Risperidone', '2MG\r\n', '1,0,3\r\n', 'Tab. THP', '2MG\r\n', '1,1,0\r\n', 'Tab. Aripiprazole', '10MG\r\n', '0,0,1.5\r\n', 'Tab. Livogen', '150MG\r\n', '1,0,0\r\n', 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(243, '2020-08-27 15:24:39', '1933', NULL, 'Tab. Risperidone', '2MG\r\n', '0,0,1\r\n', 'Tab. Livogen', '150MG\r\n', '2,0,2\r\n', 'Tab. Calcium', '500MG\r\n', '1,0,0\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(244, '2020-08-27 15:26:42', '1535', NULL, 'Tab. Risperidone', '2MG\r\n', '1,0,2\r\n', 'Tab. THP', '2MG\r\n', '1,1,0\r\n', 'Tab. Setraline', '50MG\r\n', '2,0,0\r\n', 'Tab. Metformin', '500MG\r\n', '1,0,1.5\r\n', 'Tab. Amlip', '2.5MG\r\n', '1,0,0\r\n', 'Tab. Atorvastatin', '10MG\r\n', '0,0,1\r\n', 'Tab. Aspirin', '150MG\r\n', '0,1,0\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(245, '2020-08-27 15:32:03', 'R-47', NULL, 'Tab. Lorazepam', '1MG\r\n', '1,1,1\r\n', 'Tab. Inderol', '10MG\r\n', '1,0,0\r\n', 'Tab. Clozapine', '100MG\r\n', '0,0,1\r\n', 'Cap. Evion', '400MG\r\n', '1,0,1\r\n', 'Tab. Sodium Valproate', '200MG\r\n', '0,0,1\r\n', 'Tab. Clozapine', '150MG\r\n', '0,0,1\r\n', 'Syp. Omilcal', NULL, '1,0,0\r\n', 'Tab. THP', '2MG\r\n', '1,1,0\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(246, '2020-08-27 15:33:14', 'R-92', NULL, 'Inj. Fluanxol', '20MG', NULL, 'Tab. THP', '2MG\r\n', '1,1,0\r\n', 'Tab. Livogen', '150MG\r\n', '1,0,0\r\n', 'Tab. Chlorpromazine', '100MG\r\n', '0,0,1\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(247, '2020-08-27 15:34:58', '1417', NULL, 'Inj. Fluanxol', '20MG', NULL, 'Tab. Risperidone', '2MG\r\n', '0,0,4\r\n', 'Tab. THP', '2MG\r\n', '1,1,0\r\n', 'Tab. Metformin', '500MG\r\n', '1,0,1\r\n', 'Tab. Daonil', '5MG\r\n', '1,0,0\r\n', 'Tab. Lisinopril', '10MG\r\n', '1,0,0\r\n', 'Tab. Aspirin', '75MG\r\n', '0,1,0\r\n', 'Tab. Livogen', '150MG\r\n', '1,0,0\r\n', 'Tab. Atorvastatin', '20MG\r\n', '0,0,1\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(248, '2020-08-27 15:36:28', '1456', NULL, 'Tab. Quetiapine', '100MG\r\n', '0,0,0.5\r\n', 'Tab. Sodium Valproate', '200MG\r\n', '1,0,1\r\n', 'Tab. THP', '2MG\r\n', '1,1,0\r\n', 'Tab. Metformin', '500MG\r\n', '1,0,1\r\n', 'Tab. Levothyroxine', '100MG\r\n', '1,0,0\r\n', 'Tab. Atorvastatin', '20MG\r\n', '0,0,1\r\n', 'Tab. Livogen', '150MG\r\n', '1,0,0\r\n', 'Tab. Aspirin', '75MG\r\n', '0,1,0\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(249, '2020-08-27 15:37:38', 'R-38', NULL, 'Tab. Quetiapine', '100MG\r\n', '1,0,3\r\n', 'Tab. Escitalopram', '10MG\r\n', '0,0,0.5\r\n', 'Tab. THP', '2MG\r\n', '1,1,0\r\n', 'Tab. Sodium Valproate', '200MG\r\n', '1,0,1\r\n', 'Tab. Risperidone', '2MG\r\n', '0.5,0,0.5\r\n', 'Tab. Livogen', '150MG\r\n', '1,1,1\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(250, '2020-08-27 15:38:58', '208', NULL, 'Tab. Levetiracetam', '500MG\r\n', '0.5,0,1\r\n', 'Tab. Livogen', '150MG\r\n', '1,0,1\r\n', 'Tab. Haloperidol', '5MG\r\n', '0,0,1\r\n', 'Tab. Clobazam', '5MG\r\n', '0,0,1\r\n', 'Tab. Lorazepam', '1MG\r\n', '1,1,1\r\n', 'Cap. Evion', '400MG\r\n', '1,1,1\r\n', 'Tab. Vit B-Complex', NULL, '1,0,1\r\n', 'Tab. Ursocol', '300MG\r\n', '1,0,1\r\n', 'Tab. Acetylcysteine', '600MG\r\n', '1,0,1\r\n', 'Tab. Inderol', '10MG\r\n', '1,0,0\r\n', 'Tab. Livogen', NULL, '1,1,1\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(251, '2020-08-27 15:42:06', '777', NULL, 'Tab. Quetiapine', '100MG\r\n', '0,0,2\r\n', 'Tab. Sodium Valproate', '500MG\r\n', '1,0,0\r\n', 'Tab. THP', '2MG\r\n', '1,1,1\r\n', 'Tab. Risperidone', '2MG\r\n', '0.5,0,1.5\r\n', 'Tab. Levothyroxine', '100MG\r\n', '1,0,0\r\n', 'Tab. Envas', '10MG\r\n', '0,0,1\r\n', 'Tab. Livogen', '150MG\r\n', '1,0,0\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(252, '2020-08-27 15:43:42', 'R-88', NULL, 'Tab. Amisulpride', '100MG\r\n', '0,0,0.5\r\n', 'Tab. Sodium Valproate', '500MG\r\n', '1,0,1\r\n', 'Tab. THP', '2MG\r\n', '1,1,1\r\n', 'Tab. Livogen', '150MG\r\n', '1,0,0\r\n', 'Tab. Calcium\r\n', '500MG\r\n', '1,0,0\r\n', 'Tab. Phenergan', '25MG\r\n', '0,0,1\r\n', 'Tab. Levothyroxine', '75MG\r\n', '1,0,0\r\n', 'Tab. Levothyroxine (Sat & Sun Only)', '100MCG\r\n', '1,0,0\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(253, '2020-08-27 15:45:25', '683', NULL, 'Tab. Atorvastatin', '20MG\r\n', '0,0,1\r\n', 'Tab. Quetiapine', '100MG\r\n', '0,0,0.5\r\n', 'Tab. Sodium Valproate', '500MG\r\n', '1,0,2\r\n', 'Tab. Clonazepam', '0.5MG\r\n', '0.5,0.5,0\r\n', 'Tab. THP', '2MG\r\n', '1,1,0\r\n', 'Tab. Metformin', '500MG\r\n', '0.5,0,0.5\r\n', 'Tab. Levothyroxine', '150MG\r\n', '1,0,0\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(254, '2020-08-27 15:55:09', '245', NULL, 'Tab. Olanzapine', '25MG \r\n', '0,0,1\r\n', 'Tab. THP', '2MG\r\n', '1,0,0\r\n', 'Tab. Hydroxychloroquine', '200MG\r\n', '0,0,1\r\n', 'Tab. Calcium', '150MG\r\n', '0,0,0.5\r\n', 'Tab. Livogen', '150MG\r\n', '1,0,0\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(255, '2020-08-27 15:58:00', '1234', NULL, 'Tab. Levothyroxine', '25MCG\r\n', '1,0,0\r\n', 'Tab. Vit B-Complex', NULL, '1,0,0\r\n', 'Syp. Risperidone', '60ML\r\n', '0.5ml,0,1.5ml\r\n', 'Tab. Livogen', '150MG\r\n', '1,0,1\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(256, '2020-08-27 15:58:59', '187', NULL, 'Tab. Carbamazepine', '200MG\r\n', '1,1,3\r\n', 'Tab. Risperidone', '2MG\r\n', '0,0,1.5\r\n', 'Tab. Atorvastatin', '10MG\r\n', '0,0,1\r\n', 'Tab. Calcium\r\n', '500MG\r\n', '1,0,0\r\n', 'Tab. Levothyroxine', '25MCG\r\n', '1,0,0\r\n', 'Tab. Topiramate', '50MG\r\n', '0.5,0,0.5\r\n', 'Tab. Livogen', '150MG\r\n', '1,0,0\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(257, '2020-08-27 16:00:45', '601', NULL, 'Tab. Clozapine', '100MG\r\n', '0,0,2\r\n', 'Cap. Fluoxetine', '20MG\r\n', '1,1,0\r\n', 'Tab. Sertraline\r\n', '50MG\r\n', '2,0,2\r\n', 'Tab. Amisulpride', '100MG\r\n', '0,0,1\r\n', 'Tab. Deriphyllin', '150MG\r\n', '1,1,1\r\n', 'Tab. Lorazepam', '1MG\r\n', '0.5,0.5,0\r\n', 'Tab. Risperidone', '2MG\r\n', '0,0,1\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(258, '2020-08-27 16:03:51', '396', NULL, 'Tab. Sodium Valproate', '500MG\r\n', '2,0,2\r\n', 'Tab. Haloperidol', '5MG\r\n', '1,0,1\r\n', 'Tab. THP', '2MG\r\n', '1,1,0\r\n', 'Tab. Phenytoin', '100MG\r\n', '1,1,1\r\n', 'Tab. Aspirin', '75MG\r\n', '1,0,0\r\n', 'Tab. Livogen', '150MG\r\n', '1,0,0\r\n', 'Tab. Calcium\r\n', '500MG\r\n', '1,0,0\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(259, '2020-08-27 16:05:21', '1219', NULL, 'Tab. Phenytoin', '100MG\r\n', '1,0,2\r\n', 'Tab. Aripiprazole', '10MG\r\n', '0,0,3\r\n', 'Tab. THP', '2MG\r\n', '1,1,1\r\n', 'Tab. Sodium Valproate', '500MG\r\n', '1,0,1\r\n', 'Tab. Risperidone', '2MG\r\n', '0,0,1\r\n', 'Tab. Lorazepam', '1MG\r\n', '0,0,1\r\n', 'Tab. Livogen', '150MG\r\n', '1,0,0\r\n', 'Tab. Clozapine', '100MG\r\n', '0,0,1\r\n', 'Tab. Clozapine', '50MG\r\n', '0,0,1\r\n', 'Tab. Clozapine', '25MG\r\n', '0,0,1\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(260, '2020-08-27 16:07:54', '1270', NULL, 'Inj. Fluanxol', '20MG Monthly\r\n', '0,0,0\r\n', 'Tab. Metformin', '500MG\r\n', '1,0,1\r\n', 'Tab. Atorvastatin', '20MG \r\n', '0,0,1\r\n', 'Tab. Aspirin', '75MG\r\n', '0,1,0\r\n', 'Tab. THP', '2MG\r\n', '1,0,0\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(261, '2020-08-27 16:09:34', '1296', NULL, 'Tab. Risperidone', '2MG\r\n', '0,0,1.5\r\n', 'Tab. Levothyroxine', '50MCG\r\n', '1,0,0\r\n', 'Tab. Livogen', '150MG\r\n', '1,0,0\r\n', 'Tab. Imipramine', '75MG\r\n', '0,0,1\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(262, '2020-08-27 16:10:42', 'R-74', NULL, 'Tab. Risperidone', '2MG\r\n', '0,0,1\r\n', 'Tab. THP', '2MG\r\n', '1,1,0\r\n', 'Tab. Imipramine', '75MG\r\n', '0,0,1\r\n', 'Tab. Escitalopram', '10MG\r\n', '0,0,1\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(263, '2020-08-27 16:11:20', '888', NULL, 'Tab. Quetiapine', '100MG\r\n', '0,0,2\r\n', 'Tab. THP', '2MG\r\n', '1,0,1\r\n', 'Tab. Risperidone', '2MG\r\n', '1,0,1\r\n', 'Tab. Levothyroxine', '50MCG\r\n', '1,0,0\r\n', 'Tab. Escitalopram', '10MG\r\n', '0,0,0.75\r\n', 'Syp. Vit. B-Complex', NULL, '1TSP,1TSP,1TSP', 'Tab. Aripiprazole', '10MG\r\n', '0,0,1\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(264, '2020-08-27 16:13:42', '1697', NULL, 'Tab. Aripiprazole', '10MG\r\n', '0,0,1\r\n', 'Tab. Levothyroxine', '25MCG\r\n', '1,0,0\r\n', 'Tab. Calcium\r\n', '500MG\r\n', '1,0,0\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(265, '2020-08-27 16:14:46', '1236', NULL, 'Tab. Atorvastatin', '20MG \r\n', '0,0,1\r\n', 'Tab. Livogen', '150MG\r\n', '1,0,1\r\n', 'Tab. Calcium\r\n', '500MG\r\n', '1,0,0\r\n', 'Tab. Aten', '50MG\r\n', '1,0,0\r\n', 'Tab. Escitalopram', '10MG\r\n', '0,0,1\r\n', 'Tab. Levothyroxine', '25MCG\r\n', '1,0,0\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(266, '2020-08-27 20:13:55', 'R-82', NULL, 'Tab. Risperidone', '2MG\r\n', '0,0,1\r\n', 'Tab. THP', '2MG\r\n', '1,1,1\r\n', 'Tab. Lorazepam', '1MG\r\n', '0,0,1\r\n', 'Cap. Evion', '400MG\r\n', '1,1,1\r\n', 'Tab. Phenergan', '25mg\r\n', '0,0,1\r\n', 'Tab. Inderol', '10MG\r\n', '1,0,1\r\n', 'Tab. Clozapine', '25MG\r\n', '0,0,1\r\n', 'Tab. Clozapine', '100MG\r\n', '0,0,2\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(267, '2020-08-27 20:21:48', '160', NULL, 'Tab. Levothyroxine', '25MCG\r\n', '1,0,0\r\n', 'Tab. Sodium Valproate', '500MG\r\n', '1,0,1\r\n', 'Tab. Sertraline\r\n', '50MG\r\n', '1,0,1\r\n', 'Tab. THP', '2MG\r\n', '1,1,0\r\n', 'Tab. Amisulpride', '200MG\r\n', '1,0,1\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(268, '2020-08-27 20:25:12', '654', NULL, 'Tab. Sodium Valproate', '500MG\r\n', '1,0,1\r\n', 'Tab. THP', '2MG\r\n', '1,1,1\r\n', 'Tab. Inderol', '20MG \r\n', '1,1,0\r\n', 'Cap. Evion', '400MG\r\n', '1,1,1\r\n', 'Tab. Risperidone', '2MG\r\n', '0.5,0,0.5\r\n', 'Tab. Syndopa', '110MG\r\n', '0.5,0.5,0\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(269, '2020-08-27 20:26:47', '894', NULL, 'Inj. Fluanxol', '40MG IM Monthly\r\n', NULL, 'Tab. Risperidone', '2MG\r\n', '0,0,2\r\n', 'Tab. Livogen', '150MG\r\n', '0,0,2\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(270, '2020-08-27 20:27:54', '45', NULL, 'Tab. Aripiprazole', '10MG\r\n', '0,0,2\r\n', 'Tab. Vit B-Complex', NULL, '1,0,0\r\n', 'Tab. Evion', '400MG\r\n', '1,1,1\r\n', 'Tab. Escitalopram', '10MG\r\n', '0,0,1\r\n', 'Tab. Livogen', '150MG\r\n', '1,0,0\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(271, '2020-08-27 20:28:45', '936', NULL, 'Tab. Levothyroxine', '50MCG\r\n', '1,0,0\r\n', 'Tab. THP', '2MG\r\n', '1,1,0\r\n', 'Tab. Sodium Valproate', '500MG\r\n', '1,0,1\r\n', 'Syp. Potassium Chloride', NULL, '1 TSP,1 TSP,1 TSP', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(272, '2020-08-27 20:29:53', '125', NULL, 'Tab. Clozapine', '100MG\r\n', '1,0,4\r\n', 'Tab. THP', '2MG\r\n', '1,1,0\r\n', 'Tab. Chlorpromazine', '100MG\r\n', '1,0,1\r\n', 'Tab. Levothyroxine', '75MG\r\n', '1,0,0\r\n', 'Tab. Calcium\r\n', '500MG\r\n', '1,0,0\r\n', 'Cap. Fluoxetine', '20MG\r\n', '2,0,0\r\n', 'Tab. Amisulpride', '200MG\r\n', '0,0,1\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `parameters`
--

CREATE TABLE `parameters` (
  `id` bigint(20) NOT NULL,
  `category_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sub_category` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `score` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `score_text` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `score_description` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `parameters`
--

INSERT INTO `parameters` (`id`, `category_code`, `category`, `sub_category`, `score`, `score_text`, `score_description`) VALUES
(1, '1_1', 'Self_Care', 'Bathing', '1', 'Can Improve', 'Not able to identify personal care kit, doesn\'t use her own toiletries, is unable to bath herself appropriately, needs support '),
(2, '1_1', 'Self_Care', 'Bathing', '2', 'Satisfactory', 'Marginal improvement, is able to use her personal care kit largely, need some support '),
(3, '1_1', 'Self_Care', 'Bathing', '3', 'Good', 'Looks forward to morning ritual, self motivated and reliant, concerned about privacy'),
(4, '1_1', 'Self_Care', 'Bathing', '4', 'Very Good', 'Part of daily life, supports others as well, independent and self motivate, privacy a right and essential'),
(5, '1_2', 'Self_Care', 'Grooming', '1', 'Can Improve', 'Unable to manage personal articles and clothes, clothes size fit poor, undergarments not cared for or used, no interest/ pleasure in culture appropriate dressing/ grooming.'),
(6, '1_2', 'Self_Care', 'Grooming', '2', 'Satisfactory', 'Wears mismatched clothes, gradual improvement in management of  personal articles and cupboard,, interest in grooming somewhat better .'),
(7, '1_2', 'Self_Care', 'Grooming', '3', 'Good', 'Is able to organise and maintain her cupboard, articles etc on a consistent basis, undergarments use hygienic, culture appropriate dressing, focus on person style enhanced'),
(8, '1_2', 'Self_Care', 'Grooming', '4', 'Very Good', 'Clothes well stacked and arranged in cupboard, interested in grooming and dressing, has personal style preferences, undergarments hygiene good, clothes fit well and maintained well- washed, ironed and used only by the client, desire to buy her own clothes, encourages others to dress well '),
(9, '1_3', 'Self_Care', 'Toilet_Use', '1', 'Can Improve', 'Flush use minimal, personal hygiene poor, privacy unessential , no concept or knowledge of toilet/ personal hygiene minimal or non existent - owing to deprivation etc ( not solely attributed to mental ill health)'),
(10, '1_3', 'Self_Care', 'Toilet_Use', '2', 'Satisfactory', 'Proficiency in  flush use, cleaning toilet after use ,exposure to  concepts around hygiene and its impact on health, and   privacy.'),
(11, '1_3', 'Self_Care', 'Toilet_Use', '3', 'Good', 'Improved hygiene levels, clear on health related concepts, values privacy , understands needs of others residing in the same space who will access the same toilet'),
(12, '1_3', 'Self_Care', 'Toilet_Use', '4', 'Very Good', 'Keps toilet clean for next person, washes hands, maintains privacy, good awareness of personal hygiene and care.'),
(13, '1_4', 'Self_Care', 'Meal_time', '1', 'Can Improve', 'Difficulty in cleaning/ washing plates, not very concerned with cleanliness of utensils used ( plate/ glass/ spoon/ ladles / vessels, hand hygiene inadequate, eating etiquette can be improved ( fold sleeves, eat without dropping food on self, serve adequate portions etc), nail hygiene can be improved, oral hygiene post meal can be improved.'),
(14, '1_4', 'Self_Care', 'Meal_time', '2', 'Satisfactory', 'Marginal improvement on above areas.'),
(15, '1_4', 'Self_Care', 'Meal_time', '3', 'Good', 'Is concerned about cleanliness of utensils used in cooking, utensils that she uses, mealtime etiquette of those seated on her/ his table, provision of hygienic food and clean drinking water, availability of water to wash hands and mouth before and after meal time.'),
(16, '1_4', 'Self_Care', 'Meal_time', '4', 'Very Good', 'All of the above and encourages organisation and co- residents to keep place clean, also concerned about the aesthetic  around meal time.'),
(17, '1_5', 'Self_Care', 'Menstrual_Hygiene', '1', 'Can Improve', 'Isn\'t aware of the beginning of a period, doesn\'t use sanitary pad/ difficulty in using sanitary pad, doesn\'t wish to change undergarments when soiled, hand hygiene  inadequate after use of pad/ toilet. '),
(18, '1_5', 'Self_Care', 'Menstrual_Hygiene', '2', 'Satisfactory', 'Awareness around menstrual hygiene better,overall , desire to manage her period better very much there '),
(19, '1_5', 'Self_Care', 'Menstrual_Hygiene', '3', 'Good', 'use of pads and clean inner wear , hand hygiene good, toilet use and hygiene good.'),
(20, '1_5', 'Self_Care', 'Menstrual_Hygiene', '4', 'Very Good', 'Uses pads when menstruating, changes and discards pads into dustbin, (wrapped in paper), hand and personal hygiene good,  Inner wear clean and washed well , particular about soap availability and use, helps spread awareness amongst others.'),
(21, '1_6', 'Self_Care', 'Bed_Hygiene', '1', 'Can Improve', 'not particular about clean bedding, bed bugs and food maybe present on bed'),
(22, '1_6', 'Self_Care', 'Bed_Hygiene', '2', 'Satisfactory', 'Bed Sheets  are washed but not consistently.'),
(23, '1_6', 'Self_Care', 'Bed_Hygiene', '3', 'Good', 'With minimal support, manages her bedding well.'),
(24, '1_6', 'Self_Care', 'Bed_Hygiene', '4', 'Very Good', 'maintains bedding well, concerned about dorm/ ward hygiene and ensured all beds clean, use of dustbins for waste.');

-- --------------------------------------------------------

--
-- Table structure for table `project_code_name`
--

CREATE TABLE `project_code_name` (
  `id` bigint(20) NOT NULL,
  `project_code` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `project_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `project_code_name`
--

INSERT INTO `project_code_name` (`id`, `project_code`, `project_name`) VALUES
(1, 'ECRC_01', 'ECRC - Santhome'),
(2, 'ECRC_02', 'ECRC - Kovalam'),
(3, 'ECRC_03', 'ECRC - Mogappair'),
(4, 'SH_01', 'Shared Housing (Urban)'),
(5, 'SH_02', 'Shared Housing (Rural)'),
(6, 'SH_03', 'Shared Housing (Trichy)'),
(7, 'MH_01', 'Home Again - Ratnagiri'),
(8, 'MH_02', 'Home Again - Thane'),
(9, 'CGH_01', 'CGH (BALM)'),
(10, 'SH_04', 'Shared Housing - Kerala'),
(11, 'KL_01', 'Kovalam');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` bigint(20) NOT NULL,
  `language_id` bigint(20) NOT NULL,
  `parameter_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `emp_code` varchar(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `pass_word` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `is_rep_officer` tinyint(1) DEFAULT '0',
  `user_group_id` bigint(20) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `emp_code`, `username`, `pass_word`, `email`, `is_rep_officer`, `user_group_id`, `updated_at`) VALUES
(1, 'BCG_01', 'santhony', 'Banyan@123', NULL, 0, NULL, '2021-11-29 15:18:26'),
(2, 'BCG_02', 'sathish', 'Banyan@123', NULL, 0, NULL, '2021-11-29 15:18:26'),
(3, 'BCGT_01', 'bsulaiman', 'Banyan@123', NULL, 0, NULL, '2021-11-29 15:18:26'),
(4, 'BCG_03', 'apadma', 'Banyan@123', NULL, 0, NULL, '2021-11-29 15:18:26'),
(5, 'BCG_04', 'psandhya', 'Banyan@123', NULL, 0, NULL, '2021-11-29 15:18:26'),
(6, 'BCG_05', 'ssanthi', 'Banyan@123', NULL, 0, NULL, '2021-11-29 15:18:26'),
(7, 'BCG_06', 'jhemalatha', 'Banyan@123', NULL, 0, NULL, '2021-11-29 15:18:26'),
(8, 'BCG_07', 'msuganthi', 'Banyan@123', NULL, 0, NULL, '2021-11-29 15:18:26'),
(9, 'BCG_08', 'bsaraswathy', 'Banyan@123', NULL, 0, NULL, '2021-11-29 15:18:26'),
(10, 'BCG_09', 'porselvi', 'Banyan@123', NULL, 0, NULL, '2021-11-29 15:18:26'),
(11, 'BCG_10', 'pkavitha', 'Banyan@123', NULL, 0, NULL, '2021-11-29 15:18:26'),
(12, 'BCG_11', 'mdharani', 'Banyan@123', NULL, 0, NULL, '2021-11-29 15:18:26'),
(13, 'BCG_12', 'knanthini', 'Banyan@123', NULL, 0, NULL, '2021-11-29 15:18:26'),
(14, 'BCG_13', 'bsasikala', 'Banyan@123', NULL, 0, NULL, '2021-11-29 15:18:26'),
(15, 'BCG_14', 'dpoorvasi', 'Banyan@123', NULL, 0, NULL, '2021-11-29 15:18:26'),
(16, 'BCG_15', 'myuvarani', 'Banyan@123', NULL, 0, NULL, '2021-11-29 15:18:26'),
(17, 'BCGT_02', 'umadevi', 'Banyan@123', NULL, 0, NULL, '2021-11-29 15:18:26'),
(18, 'BCG_17', 'chithra', 'Banyan@123', NULL, 0, NULL, '2021-11-29 15:18:26'),
(19, 'BCGT_03', 'shwetha', 'Banyan@123', NULL, 0, NULL, '2021-11-29 15:18:26'),
(20, 'BCG_18', 'nkeerthana', 'Banyan@123', NULL, 0, NULL, '2021-11-29 15:18:26'),
(21, 'BCG_19', 'msharmila', 'Banyan@123', NULL, 0, NULL, '2021-11-29 15:18:26'),
(22, 'BCG_20', 'smeena', 'Banyan@123', NULL, 0, NULL, '2021-11-29 15:18:26'),
(23, 'BCG_21', 'pavithra', 'Banyan@123', NULL, 0, NULL, '2021-11-29 15:18:26'),
(24, 'BCG_22', 'mdivya', 'Banyan@123', NULL, 0, NULL, '2021-11-29 15:18:26'),
(25, 'BCG_23', 'parimala', 'Banyan@123', NULL, 0, NULL, '2021-11-29 15:18:26'),
(26, 'BCG_24', 'ddeepa', 'Banyan@123', NULL, 0, NULL, '2021-11-29 15:18:26'),
(27, 'BCGT_04', 'rajeshwari', 'Banyan@123', NULL, 0, NULL, '2021-11-29 15:18:26'),
(28, 'BCGT_05', 'rathi', 'Banyan@123', NULL, 0, NULL, '2021-11-29 15:18:26'),
(29, 'BCGT_06', 'loganayaki', 'Banyan@123', NULL, 0, NULL, '2021-11-29 15:18:26'),
(30, 'BCG_25', 'earunadevi', 'Banyan@123', NULL, 0, NULL, '2021-11-29 15:18:26'),
(31, 'BCGT_07', 'sumathi', 'Banyan@123', NULL, 0, NULL, '2021-11-29 15:18:26'),
(32, 'BCG_26', 'rmaheshwari', 'Banyan@123', NULL, 0, NULL, '2021-11-29 15:18:26'),
(33, 'BCGT_08', 'navviya', 'Banyan@123', NULL, 0, NULL, '2021-11-29 15:18:26'),
(34, 'BCGT_09', 'skdeepa', 'Banyan@123', NULL, 0, NULL, '2021-11-29 15:18:26'),
(35, 'BCGT_10', 'arani', 'Banyan@123', NULL, 0, NULL, '2021-11-29 15:18:26'),
(36, 'BCGT_11', 'fathima', 'Banyan@123', NULL, 0, NULL, '2021-11-29 15:18:26'),
(37, 'BCGT_12', 'jeyanthi', 'Banyan@123', NULL, 0, NULL, '2021-11-29 15:18:26'),
(38, 'BCG_27', 'spoulin', 'Banyan@123', NULL, 0, NULL, '2021-11-29 15:18:26'),
(39, 'BCG_28', 'erose', 'Banyan@123', NULL, 0, NULL, '2021-11-29 15:18:26'),
(40, 'BCG_29', 'jayasuba', 'Banyan@123', NULL, 0, NULL, '2021-11-29 15:18:26'),
(41, 'BCGT_13', 'rmaria', 'Banyan@123', NULL, 0, NULL, '2021-11-29 15:18:26'),
(42, 'BCG_30', 'kramya', 'Banyan@123', NULL, 0, NULL, '2021-11-29 15:18:26'),
(43, 'BCGT_14', 'ckalpana', 'Banyan@123', NULL, 0, NULL, '2021-11-29 15:18:26'),
(44, 'BCG_31', 'jparimala', 'Banyan@123', NULL, 0, NULL, '2021-11-29 15:18:26'),
(45, 'BCG_32', 'ksasikala', 'Banyan@123', NULL, 0, NULL, '2021-11-29 15:18:26'),
(46, 'BCGT_15', 'nselvi', 'Banyan@123', NULL, 0, NULL, '2021-11-29 15:18:26'),
(47, 'BCGT_16', 'mrekha', 'Banyan@123', NULL, 0, NULL, '2021-11-29 15:18:26'),
(48, 'BCG_33', 'karuna', 'Banyan@123', NULL, 0, NULL, '2021-11-29 15:18:26'),
(49, 'BCG_34', 'sjeevanathi', 'Banyan@123', NULL, 0, NULL, '2021-11-29 15:18:26'),
(50, 'BCG_35', 'rshanthi', 'Banyan@123', NULL, 0, NULL, '2021-11-29 15:18:26'),
(51, 'BCG_36', 'amanjula', 'Banyan@123', NULL, 0, NULL, '2021-11-29 15:18:26'),
(52, 'BCGT_17', 'rdeepa', 'Banyan@123', NULL, 0, NULL, '2021-11-29 15:18:26'),
(53, 'BCG_37', 'jevicinal', 'Banyan@123', NULL, 0, NULL, '2021-11-29 15:18:26'),
(54, 'BCGT_18', 'melizabeth', 'Banyan@123', NULL, 0, NULL, '2021-11-29 15:18:26'),
(55, 'BCGT_19', 'arockiyamary', 'Banyan@123', NULL, 0, NULL, '2021-11-29 15:18:26'),
(56, 'BCGT_20', 'irundhayamary', 'Banyan@123', NULL, 0, NULL, '2021-11-29 15:18:26'),
(57, 'BCG_38', 'asanthasheela', 'Banyan@123', NULL, 0, NULL, '2021-11-29 15:18:26'),
(58, 'BCG_39', 'samalorpavamary', 'Banyan@123', NULL, 0, NULL, '2021-11-29 15:18:26'),
(59, 'ILO_01', 'ilo1', 'Banyan@123', NULL, 0, NULL, '2021-11-29 15:18:26'),
(60, 'BCG_40', 'ramlatht', 'Banyan@123', NULL, 0, NULL, '2021-11-29 15:18:26'),
(61, 'BCG_41', 'soumini', 'Banyan@123', NULL, 0, NULL, '2021-11-29 15:18:26'),
(62, 'BCG_42', 'sreeja', 'Banyan@123', NULL, 0, NULL, '2021-11-29 15:18:26'),
(63, 'BCG_43', 'mkgeetha', 'Banyan@123', NULL, 0, NULL, '2021-11-29 15:18:26'),
(64, 'BCG_44', 'kpjameela', 'Banyan@123', NULL, 0, NULL, '2021-11-29 15:18:26'),
(65, 'BCG_45', 'sheeja', 'Banyan@123', NULL, 0, NULL, '2021-11-29 15:18:26'),
(66, 'BCG_46', 'ratheedevi', 'Banyan@123', NULL, 0, NULL, '2021-11-29 15:18:26'),
(67, 'BCG_47', 'mnfaisal', 'Banyan@123', NULL, 0, NULL, '2021-11-29 15:18:26'),
(68, 'BCG_48', 'presanna', 'Banyan@123', NULL, 0, NULL, '2021-11-29 15:18:26'),
(69, 'BCG_49', 'lajilal', 'Banyan@123', NULL, 0, NULL, '2021-11-29 15:18:26'),
(70, 'BCG_50', 'subaida', 'Banyan@123', NULL, 0, NULL, '2021-11-29 15:18:26'),
(71, 'BCG_51', 'vsharmila', 'Banyan@123', NULL, 0, NULL, '2021-11-29 15:18:26'),
(72, 'BCG_52', 'shamseera', 'Banyan@123', NULL, 0, NULL, '2021-11-29 15:18:26'),
(73, 'BCG_53', 'pmaimoona', 'Banyan@123', NULL, 0, NULL, '2021-11-29 15:18:26'),
(74, 'BCG_54', 'tpradeep', 'Banyan@123', NULL, 0, NULL, '2021-11-29 15:18:26'),
(75, 'BCG_55', 'usha', 'Banyan@123', NULL, 0, NULL, '2021-11-29 15:18:26'),
(76, 'BCG_56', 'crama', 'Banyan@123', NULL, 0, NULL, '2021-11-29 15:18:26'),
(77, 'BCG_57', 'mrukiya', 'Banyan@123', NULL, 0, NULL, '2021-11-29 15:18:26'),
(78, 'BCG_58', 'mshehnaz', 'Banyan@123', NULL, 0, NULL, '2021-11-29 15:18:26'),
(79, 'BCG_59', 'hmohsina', 'Banyan@123', NULL, 0, NULL, '2021-11-29 15:18:26'),
(80, 'BCG_60', 'wpradnya', 'Banyan@123', NULL, 0, NULL, '2021-11-29 15:18:26'),
(81, 'BCG_61', 'gshaila', 'Banyan@123', NULL, 0, NULL, '2021-11-29 15:18:26'),
(82, 'BCG_62', 'pnikita', 'Banyan@123', NULL, 0, NULL, '2021-11-29 15:18:26'),
(83, 'BCG_63', 'baarti', 'Banyan@123', NULL, 0, NULL, '2021-11-29 15:18:26'),
(84, 'BCG_64', 'rasmita', 'Banyan@123', NULL, 0, NULL, '2021-11-29 15:18:26'),
(85, 'BCG_65', 'pshardha', 'Banyan@123', NULL, 0, NULL, '2021-11-29 15:18:26'),
(86, 'BCG_66', 'btejashree', 'Banyan@123', NULL, 0, NULL, '2021-11-29 15:18:26'),
(87, 'BCG_67', 'plata', 'Banyan@123', NULL, 0, NULL, '2021-11-29 15:18:26'),
(88, 'BCG_68', 'apriyanka', 'Banyan@123', NULL, 0, NULL, '2021-11-29 15:18:26'),
(89, 'BCG_69', 'ranand', 'Banyan@123', NULL, 0, NULL, '2021-11-29 15:18:26'),
(90, 'BCG_70', 'mabraham', 'Banyan@123', NULL, 0, NULL, '2021-11-29 15:18:26'),
(91, 'BCG_71', 'pmanila', 'Banyan@123', NULL, 0, NULL, '2021-11-29 15:18:26'),
(92, 'BCG_73', 'sangeetha', 'Banyan@123', NULL, 0, NULL, '2021-11-29 15:18:26'),
(93, '', 'kishore', 'Banyan@123', NULL, 0, NULL, NULL),
(94, '', 'lpriya', 'Banyan@123', NULL, 0, NULL, NULL),
(95, 'BCM_0002', 'adarsh_babu', 'Banyan@123', NULL, 1, NULL, NULL),
(96, 'BCM_0010', 'varsha_vinod', 'Banyan@123', NULL, 1, NULL, NULL),
(97, 'BCM_0011', 'leelavathy_philip', 'Banyan@123', NULL, 1, NULL, NULL),
(98, 'BCM_0005', 'rekha_y', 'Banyan@123', NULL, 1, NULL, NULL),
(99, 'BCM_0004', 'gayathri_k', 'Banyan@123', NULL, 1, NULL, NULL),
(100, 'BCM_0006', 'sagayamary', 'Banyan@123', NULL, 1, NULL, NULL),
(101, 'BCM_0007', 'shahanas', 'Banyan@123', NULL, 1, NULL, NULL),
(102, 'BCM_0003', 'amali_margret', 'Banyan@123', NULL, 1, NULL, NULL),
(104, 'BCM_0008', 'shyapin', 'Banyan@123', NULL, 1, NULL, NULL),
(105, 'BCM_0001', 'aakanksha', 'Banyan@123', NULL, 1, NULL, NULL),
(106, 'BCM_0009', 'sonal', 'Banyan@123', NULL, 1, NULL, NULL),
(107, 'BCM_0012', 'rishab_kumar_anand', 'Banyan@123', NULL, 1, NULL, NULL),
(108, 'BCM_0013', 'harilal_pillai', 'Banyan@123', NULL, 1, NULL, NULL),
(109, '0', 'admin', '123456', NULL, 0, 1, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `caregivers`
--
ALTER TABLE `caregivers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `caregiver_project_codes`
--
ALTER TABLE `caregiver_project_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients_active`
--
ALTER TABLE `clients_active`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `client_status`
--
ALTER TABLE `client_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `diet_chart`
--
ALTER TABLE `diet_chart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dining_master`
--
ALTER TABLE `dining_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `housekeeping_master`
--
ALTER TABLE `housekeeping_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `icp_notes`
--
ALTER TABLE `icp_notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `icp_parameters`
--
ALTER TABLE `icp_parameters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kitchen_master`
--
ALTER TABLE `kitchen_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medical_screening`
--
ALTER TABLE `medical_screening`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medicine_master`
--
ALTER TABLE `medicine_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parameters`
--
ALTER TABLE `parameters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_code_name`
--
ALTER TABLE `project_code_name`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
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
-- AUTO_INCREMENT for table `caregivers`
--
ALTER TABLE `caregivers`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `caregiver_project_codes`
--
ALTER TABLE `caregiver_project_codes`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `clients_active`
--
ALTER TABLE `clients_active`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2547;

--
-- AUTO_INCREMENT for table `client_status`
--
ALTER TABLE `client_status`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `diet_chart`
--
ALTER TABLE `diet_chart`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `dining_master`
--
ALTER TABLE `dining_master`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `housekeeping_master`
--
ALTER TABLE `housekeeping_master`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `icp_notes`
--
ALTER TABLE `icp_notes`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `icp_parameters`
--
ALTER TABLE `icp_parameters`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=307;

--
-- AUTO_INCREMENT for table `kitchen_master`
--
ALTER TABLE `kitchen_master`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `medical_screening`
--
ALTER TABLE `medical_screening`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `medicine_master`
--
ALTER TABLE `medicine_master`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=273;

--
-- AUTO_INCREMENT for table `parameters`
--
ALTER TABLE `parameters`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `project_code_name`
--
ALTER TABLE `project_code_name`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
