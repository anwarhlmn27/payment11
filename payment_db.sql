-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 01, 2024 at 06:37 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `payment_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_account`
--

CREATE TABLE `tbl_account` (
  `id_account` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `nik_k` varchar(9) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `akses` enum('admin','user') NOT NULL,
  `tgl_input` timestamp NOT NULL DEFAULT current_timestamp(),
  `role_id` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_account`
--

INSERT INTO `tbl_account` (`id_account`, `nama`, `nik_k`, `email`, `password`, `akses`, `tgl_input`, `role_id`) VALUES
(1, 'Raysa', '150023', 'aktidata@gmail.com', '93b9143aa1da09268f91e4d4945c52b3', 'admin', '2020-05-31 04:00:00', 0),
(13, 'Jaenur Ridwan', '170035', 'jaenuridwan@gmail.com', 'a44ea2abb39f21db2e3de3962317bb3c', 'user', '2022-10-08 05:02:47', 0),
(14, 'Sukirman Suparta', '160029', 'Sukirman@akti.ac.id', '9e7bee7d5a016b753b28a390b43516aa', 'user', '2022-10-08 05:03:41', 0),
(15, 'Sudiyono', '160030', 'sdyn79@gmail.com', '2523734b86deef4063da067e32445c2d', 'user', '2022-10-08 05:04:34', 0),
(16, 'Dedi Mulyadi', '200083', 'dmsalsya9@gmail.com', 'e9cb532e0976c6bd38dca60ce2639304', 'user', '2022-10-08 05:05:38', 0),
(17, 'Rian Abdul Rohman', '200084', 'rianabdulrohman.oce83@gmail.com', '31ed3f8cf79cb161c7aac2767f962f22', 'user', '2022-10-08 05:06:49', 0),
(19, 'Sriyono', '190075', 'Sriyono178@gmail.com', 'eff8185e4281c22e5e3f5073c066fe01', 'user', '2022-10-08 05:08:40', 0),
(20, 'Mellinda Efendi', '180055', 'Mellindaefendi6@gmail.com', '92e042a0ce8b2441976ea92055cfee19', 'user', '2022-10-08 05:09:18', 0),
(21, 'Aflah Is Nainiah', '180059', 'isnainiahaflah@gmail.com', '9a2bf9102e92b328550db1eb5f3d6537', 'user', '2022-10-08 05:10:24', 0),
(22, 'Yunita Sania Maharani', '180058', 'yunitasania@gmail.com', '$2y$10$ylx4/tZhu/uZghX6LZFpDOqw5yKmQLYPYXaNomD7fTpjrwYZGl8cC', 'admin', '2022-10-08 05:11:20', 1),
(23, 'Dinda Ayudha', '180057', 'dindaayudha7@gmail.com', '43c384f60ddc225e87074b2d73c82508', 'user', '2022-10-08 05:12:50', 0),
(25, 'Sifa Alyananda', '2200128', 'sifaalyananda@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'user', '2022-10-10 06:25:14', 0),
(26, 'Dina Kartika Raya', '220084', 'dikaraya88@gmail.com', '5b865f6fa5c8c97f07de62b54a943493', 'user', '2022-10-11 04:04:09', 0),
(27, 'Cintya', '230087', 'tyacintya6@gmail.com', 'b4b8c4f77387af3f66d12a8cb1934ff8', 'user', '2023-09-25 02:05:40', 0),
(33, 'Anwar Hilman', '180047', 'anwarhilman@akti.ac.id', '$2y$10$Dk8dOYlS2w4E0gIGKvtmJO6HtBI8VCvQCugpgQ5xSuWAXqhgC5P5i', 'user', '2024-04-15 09:34:59', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bank`
--

CREATE TABLE `tbl_bank` (
  `id_bank` int(11) NOT NULL,
  `code_bank` int(8) NOT NULL,
  `bank_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_bank`
--

INSERT INTO `tbl_bank` (`id_bank`, `code_bank`, `bank_name`) VALUES
(1, 80017, 'MANDIRI '),
(2, 0, 'PERMATA'),
(4, 140397, 'BCA'),
(5, 4510017, 'BSI'),
(6, 90010, 'BNI'),
(7, 190017, 'PAN INDONESIA /PANIN'),
(8, 220026, 'CIMB NIAGA'),
(9, 1530016, 'BANK SINARMAS'),
(10, 20307, 'BRI'),
(11, 5350014, 'SEABANK '),
(12, 160131, 'MAYBANK'),
(13, 1100019, 'BANK JABAR');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_dosen`
--

CREATE TABLE `tbl_dosen` (
  `id_dosen` int(11) NOT NULL,
  `nik_d` int(9) NOT NULL,
  `nama_d` varchar(100) NOT NULL,
  `kode_status` int(11) NOT NULL,
  `tgl_masuk` date NOT NULL,
  `email` varchar(50) NOT NULL,
  `no_ktp` varchar(50) NOT NULL,
  `no_npwp` varchar(50) NOT NULL,
  `no_rek` varchar(50) NOT NULL,
  `nama_bank` varchar(50) NOT NULL,
  `kode_bank` int(11) NOT NULL,
  `cabang_bank` varchar(100) NOT NULL,
  `kota_bank` varchar(50) NOT NULL,
  `nama_akun_bank` varchar(50) NOT NULL,
  `ket` text NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_dosen`
--

INSERT INTO `tbl_dosen` (`id_dosen`, `nik_d`, `nama_d`, `kode_status`, `tgl_masuk`, `email`, `no_ktp`, `no_npwp`, `no_rek`, `nama_bank`, `kode_bank`, `cabang_bank`, `kota_bank`, `nama_akun_bank`, `ket`, `create_date`) VALUES
(31, 111111, 'Utik Surtika Dewi', 3, '2022-11-05', 'utik@gmail.com', '3215034908660001', '09.268.749.0-408.001', '346001017905531', 'BRI', 20307, 'JKT KPO', 'JAKARTA', 'Utik Surtika Dewi', '', '2022-11-05 07:50:35'),
(32, 223333, 'Yani Koerniawan', 1, '2022-11-05', 'yani@gmail.com', '3216202811760002', '59.112.562.0-413.000', '1231231234', 'BCA', 140397, 'KANTOR PUSAT', 'JAKARTA', 'Yani Koerniawan', '', '2022-11-05 08:21:33');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_input_t`
--

CREATE TABLE `tbl_input_t` (
  `id_input_t` int(11) NOT NULL,
  `id_transaksi` int(11) NOT NULL,
  `kode_vendor` varchar(10) NOT NULL,
  `nik_k` int(9) NOT NULL,
  `jumlah` varchar(12) NOT NULL,
  `tujuan_tf` varchar(50) NOT NULL,
  `ket` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_karyawan`
--

CREATE TABLE `tbl_karyawan` (
  `id_karyawan` int(11) NOT NULL,
  `nik_k` int(9) NOT NULL,
  `nama_k` varchar(100) NOT NULL,
  `jabatan` varchar(12) DEFAULT NULL,
  `unit` varchar(50) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `akses` enum('Employee','Admin') DEFAULT NULL,
  `role_id` int(2) NOT NULL,
  `tgl_masuk` date NOT NULL,
  `email` varchar(50) NOT NULL,
  `no_ktp` varchar(50) NOT NULL,
  `no_npwp` varchar(50) NOT NULL,
  `no_rek` varchar(50) NOT NULL,
  `nama_bank` varchar(50) NOT NULL,
  `kode_bank` int(11) NOT NULL,
  `cabang_bank` varchar(100) NOT NULL,
  `kota_bank` varchar(50) NOT NULL,
  `nama_akun_bank` varchar(50) NOT NULL,
  `no_bpjs_kes` int(30) DEFAULT NULL,
  `no_bpjs_tk` int(30) DEFAULT NULL,
  `ptkp` int(11) DEFAULT NULL,
  `pbpjskes` enum('Ya','Tidak') DEFAULT NULL,
  `pbpjstk` enum('Ya','Tidak') DEFAULT NULL,
  `basic_salary` int(11) DEFAULT NULL,
  `transport` int(11) DEFAULT NULL,
  `komunikasi` int(11) DEFAULT NULL,
  `makan` int(11) DEFAULT NULL,
  `tunjangan_shift` int(11) DEFAULT NULL,
  `bpk` int(11) NOT NULL,
  `ket` text NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_karyawan`
--

INSERT INTO `tbl_karyawan` (`id_karyawan`, `nik_k`, `nama_k`, `jabatan`, `unit`, `status`, `akses`, `role_id`, `tgl_masuk`, `email`, `no_ktp`, `no_npwp`, `no_rek`, `nama_bank`, `kode_bank`, `cabang_bank`, `kota_bank`, `nama_akun_bank`, `no_bpjs_kes`, `no_bpjs_tk`, `ptkp`, `pbpjskes`, `pbpjstk`, `basic_salary`, `transport`, `komunikasi`, `makan`, `tunjangan_shift`, `bpk`, `ket`, `create_date`) VALUES
(12, 150023, 'Raysa Indah Berliani', 'Staff', 'Keuangan', 4, 'Employee', 0, '2022-08-01', 'raysaindahberliani@gmail.com', '3215036204920003', '66.035.052.1-408.000', '1091373837', 'Bank BCA', 140397, 'KANTOR PUSAT', 'JAKARTA', 'Raysa Indah Berliani', 2147483647, 2147483647, 54000000, 'Ya', 'Ya', 5317367, 578947, 157895, 19000, 0, 411579, '', '2022-08-29 19:29:25'),
(15, 180047, 'Anwar Hilman', 'Staff', 'IT & Kerjasama', 4, 'Employee', 0, '2022-09-05', 'anwarhilman@akti.ac.id', '3215012711890004', '58.079.031.9-408.000', '0069347177100', 'BJB', 1100019, 'MENARA BANK JABAR JL.NARIPAN N', 'BANDUNG', 'Anwar Hilman', 1669625559, 2147483647, 67500000, 'Ya', 'Ya', 5112853, 578947, 115789, 19000, 0, 411579, '', '2022-09-04 16:53:49'),
(16, 170035, 'Jaenur Ridwan', 'Staff', 'Sarana & Prasarana', 4, 'Employee', 0, '2017-02-17', 'jaenuridwan@gmail.com', '3171080310890001', '98.447.501.2-024.000', '9919323288', 'Permata', 0, '0', '0', 'Jaenur Ridwan', 2147483647, 2147483647, 63000000, 'Ya', 'Ya', 5112853, 578947, 115789, 19000, 0, 411579, '', '2022-09-26 08:49:08'),
(17, 160029, 'Sukirman Suparta', 'Caretaker', 'Kemahasiswaan & Alumni', 4, 'Employee', 0, '2022-09-26', 'Sukirman@akti.ac.id', '3216011708500006', '75.228.294.7-435.000', '1560010908889', 'Mandiri', 80017, 'KPO JAKARTA', 'JAKARTA', 'Sukirman Suparta', 2147483647, 2147483647, 58500000, 'Ya', 'Ya', 5112853, 578947, 115789, 19000, 0, 411579, '', '2022-09-26 08:55:41'),
(18, 160030, 'Sudiyono', 'Caretaker', 'Kemahasiswaan & Alumni', 4, 'Employee', 0, '2022-09-26', 'sdyn79@gmail.com', '3215030208590001', '68.778.316.7-408.000', '11601046392505', 'BRI', 20307, 'JKT KPO', 'JAKARTA', 'Sudiyono', 0, 2147483647, 58500000, 'Tidak', 'Ya', 5112853, 578947, 115789, 19000, 0, 411579, '', '2022-09-26 09:19:08'),
(19, 180055, 'Mellinda Efendi', 'Staff', 'BAAK', 4, 'Employee', 0, '2022-09-27', 'Mellindaefendi6@gmail.com', '3213094201950003', '85.294.557.5-439.000', '6785059097', 'BCA', 140397, 'KANTOR PUSAT', 'JAKARTA', 'Mellinda Efendi', 2147483647, 2147483647, 54000000, 'Ya', 'Ya', 4916204, 526316, 115789, 19000, 0, 411579, '', '2022-09-27 05:27:16'),
(20, 200083, 'Dedi Mulyadi', 'Security', 'Kemahasiswaan & Alumni', 4, 'Employee', 0, '2022-09-27', 'dmsalsya9@gmail.com', '3204110310790006', '180059', '1730001808980', 'Mandiri', 80017, 'KPO JAKARTA', 'JAKARTA', 'Dedi Mulyadi', 1821246996, 2147483647, 72000000, 'Ya', 'Ya', 5112853, 526316, 115789, 19000, 0, 411579, '', '2022-09-27 06:21:34'),
(21, 190075, 'Sriyono', 'Caretaker', 'Kemahasiswaan & Alumni', 4, 'Employee', 0, '2022-09-27', 'Sriyono178@gmail.com', '3175070508590006', '67.087.949.3-008.000', '0358845304', 'Permata', 0, '0', '0', 'Sriyono', 1436060103, 2147483647, 58500000, 'Ya', 'Ya', 4127183, 526316, 115789, 19000, 0, 411579, '', '2022-09-27 07:00:35'),
(22, 180057, 'Dinda Ayudha', 'Staff', 'Kelembagaan', 4, 'Employee', 0, '2022-09-27', 'dindaayudha7@gmail.com', '3215147006960003', '90.906.692.0-433.000', '0018101610024072', 'BTN', 2000150, 'HARMONI', 'JAKARTA', 'Dinda Ayudha', 63640967, 2147483647, 54000000, 'Ya', 'Ya', 4127183, 526316, 115789, 19000, 0, 411579, '', '2022-09-27 07:05:22'),
(23, 220084, 'Dina Kartika Raya', 'Staff', 'Perpustakaan', 4, 'Employee', 0, '2022-09-27', 'dikaraya88@gmail.com', '3577034807980002', '630002905621000', '1420016013137', 'Mandiri', 80017, 'KPO JAKARTA', 'JAKARTA', 'Dina Kartika Raya', 787084918, 2147483647, 54000000, 'Ya', 'Ya', 4127183, 526316, 115789, 19000, 0, 411579, '', '2022-09-27 07:16:25'),
(24, 200084, 'Rian Abdul Rohman', 'Security', 'Kemahasiswaan & Alumni', 4, 'Employee', 0, '2022-09-27', 'rianabdulrohman.oce83@gmail.com', '3214013006930004', '91.111.486.6-409.000', '040601022564503', 'BRI', 20307, 'JKT KPO', 'JAKARTA', 'Rian Abdul Rohman', 2147483647, 2147483647, 63000000, 'Ya', 'Ya', 4127183, 526316, 115789, 19000, 0, 411579, '', '2022-09-27 07:21:21'),
(28, 180059, 'Aflah Is Nainiah', 'Staff', 'Kemahasiswaan & Alumni', 4, 'Employee', 0, '2022-09-27', 'isnainiahaflah@gmail.com', '3326086005940061', '46.759.517.9-502.000', '6785182671', 'BCA', 140397, 'KANTOR PUSAT', 'JAKARTA', 'AFLAH IS NAINIAH', 614899236, 2147483647, 54000000, 'Ya', 'Ya', 4916204, 526316, 115789, 19000, 0, 411579, '', '2022-09-29 10:19:19'),
(29, 180058, 'Yunita Sania Maharani', 'Staff', 'SPMI', 4, 'Employee', 0, '2022-09-27', 'yunitasania@gmail.com', '3215065906950002', '66.053.127.8-408.000', '0361205269', 'BNI', 90010, 'KP SUDIRMAN', 'JAKARTA', 'Yunita Sania Maharani', 208829845, 2147483647, 54000000, 'Ya', 'Ya', 4916204, 526316, 115789, 19000, 0, 411579, '', '2022-09-29 10:23:16'),
(30, 2200128, 'Sifa Alyananda', 'Staff', 'SDM', 4, 'Employee', 0, '2022-09-01', 'sifaalyananda@gmail.com', '3213094305990006', '63.233.155.9-439.000', '2831597731', 'BCA', 0, '', '0', 'Sifa Alyananda', 334455667, 334455667, 54000000, 'Ya', 'Ya', 4000000, 500000, 150000, 19000, 0, 0, '', '2022-10-10 06:21:58'),
(33, 230087, 'Cintya', 'Staff', 'Yayasan', 4, NULL, 0, '2023-01-01', 'tyacintya6@gmail.com', '321115610199000', '60.551.913.1-408.000', '7425340964', 'BCA', 140397, 'KANTOR PUSAT', 'JAKARTA', 'CINTYA', 1670252049, 2147483647, 54000000, 'Ya', 'Ya', 4127183, 526316, 115789, 19000, NULL, 411579, '', '2023-09-25 01:40:33');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kategori_dosen`
--

CREATE TABLE `tbl_kategori_dosen` (
  `id_kategori` int(11) NOT NULL,
  `kode_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_kategori_dosen`
--

INSERT INTO `tbl_kategori_dosen` (`id_kategori`, `kode_kategori`, `nama_kategori`) VALUES
(1, 1, 'Dosen MKPI (S2)'),
(2, 2, 'Dosen Back Up & Non SKS'),
(3, 3, 'Dosen Eksternal'),
(4, 4, 'Dosen FS & Genba'),
(5, 5, 'Dosen Matrikulasi'),
(6, 6, 'Dosen Traininig & Seminar Umum'),
(7, 7, 'Dosen Shortcourse');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payment_date`
--

CREATE TABLE `tbl_payment_date` (
  `id_payment_date` int(11) NOT NULL,
  `deskripsi_pembayaran_v` text NOT NULL,
  `payment_date` date NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_payment_date`
--

INSERT INTO `tbl_payment_date` (`id_payment_date`, `deskripsi_pembayaran_v`, `payment_date`, `create_date`) VALUES
(30, 'YTI-070-VII-2023', '2023-07-27', '2023-07-26 04:15:18'),
(31, 'YTI-071-VII-23', '2023-07-31', '2023-07-28 02:16:18'),
(32, 'YTI-074-VIII-23', '2023-08-03', '2023-08-02 08:37:40'),
(33, 'YTI-075-VIII-23', '2023-08-08', '2023-08-07 02:29:00'),
(34, 'YTI-076-VIII-23', '2023-08-10', '2023-08-09 08:42:17'),
(35, 'YTI-077-VIII-23', '2023-08-16', '2023-08-15 00:32:20'),
(36, 'YTI-078-VIII-23', '2023-08-16', '2023-08-15 01:48:06'),
(37, 'YTI-079-VIII-23', '2023-08-24', '2023-08-23 02:08:48'),
(38, 'YTI-080-VIII-23', '2023-08-25', '2023-08-24 01:58:00'),
(39, 'YTI-082-VIII-23', '2023-08-31', '2023-08-30 02:46:17'),
(40, 'YTI-089-IX-23', '2023-09-06', '2023-09-06 06:37:37'),
(41, 'YTI-090-IX-23', '2023-09-07', '2023-09-06 06:37:24'),
(42, 'YTI-092-IX-23', '2023-09-21', '2023-09-20 02:26:11'),
(43, 'YTI-095-IX-23', '2023-09-25', '2023-09-22 09:35:50'),
(44, 'YTI-096-IX-23', '2023-09-27', '2023-09-26 02:08:32'),
(45, 'YTI-099-X-23', '2023-10-05', '2023-10-04 07:38:09'),
(46, 'YTI-0101-X-23', '2023-10-12', '2023-10-11 00:53:14'),
(47, 'YTI-01013-X-23', '2023-10-19', '2023-10-18 00:44:35'),
(48, 'YTI-01016-X-2023', '2023-10-25', '2023-10-24 00:52:10'),
(49, 'YTI-01017-X-2023', '2023-10-26', '2023-10-24 02:58:49'),
(50, 'YTI-01019-X-2023', '2023-11-02', '2023-11-01 04:59:29'),
(51, 'YTI-01021-X-2023', '2023-11-09', '2023-11-07 08:20:10'),
(52, 'YTI-01023-X-2023', '2023-11-16', '2023-11-15 03:54:42'),
(53, 'YTI-01025-X-2023', '2023-11-23', '2023-11-22 02:00:38'),
(54, 'YTI-01027-XI-2023', '2023-11-30', '2023-11-29 08:32:54'),
(55, 'YTI-01030-XII-2023', '2023-12-07', '2023-12-06 04:12:09'),
(56, 'YTI-01032-XII-2023', '2023-12-14', '2023-12-13 02:09:52'),
(57, 'YTI-01034-XII-2023', '2023-12-21', '2023-12-20 01:35:54'),
(58, '	YTI-01039-XII-2023', '2023-12-28', '2023-12-27 03:58:07'),
(59, 'YTI-001-I-2024', '2024-01-04', '2024-01-03 02:43:42'),
(60, 'YTI-003-I-2024', '2024-01-11', '2024-01-10 06:13:04'),
(61, 'YTI-004-I-2024', '2024-01-11', '2024-01-10 07:08:28'),
(62, 'YTI-005-I-2024', '2024-01-18', '2024-01-17 07:49:28'),
(63, 'YTI-008-I-2024', '2024-01-25', '2024-01-24 02:28:15'),
(64, 'YTI-011-I-2024', '2024-01-31', '2024-01-30 02:25:21'),
(65, 'YTI-015-I-2024', '2024-02-13', '2024-02-12 08:06:24'),
(66, 'YTI-017-II-2024', '2024-02-22', '2024-02-21 01:24:45'),
(67, 'YTI-018-II-2024', '2024-02-23', '2024-02-21 03:05:28'),
(68, 'YTI-020-II-2024', '2024-02-29', '2024-02-27 07:48:12'),
(69, 'BP YTI 002-III-24', '2024-03-14', '2024-03-13 09:12:45'),
(70, 'YTI-005-III-24', '2024-03-21', '2024-03-19 21:54:58'),
(71, 'YTI-006-III-24', '2024-03-21', '2024-03-19 21:54:42'),
(72, 'BP AKTI 001-IV-2024', '2024-04-04', '2024-04-03 02:03:08'),
(73, 'BP YTI 001-IV-2024', '2024-04-04', '2024-04-03 02:06:25');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payment_v`
--

CREATE TABLE `tbl_payment_v` (
  `id_payment_v` int(11) NOT NULL,
  `nama_vendor` varchar(100) NOT NULL,
  `bank_name` varchar(50) NOT NULL,
  `address_bank` text NOT NULL,
  `bank_city` varchar(30) NOT NULL,
  `bank_code` int(8) NOT NULL,
  `account_name` varchar(100) NOT NULL,
  `account_number` text NOT NULL,
  `currency` varchar(5) NOT NULL,
  `amount_payment` int(15) NOT NULL,
  `description` text NOT NULL,
  `description2` text NOT NULL,
  `email_vendor` varchar(50) NOT NULL,
  `transaction_type` varchar(5) NOT NULL,
  `resident_status` varchar(5) NOT NULL,
  `citizen_status` varchar(5) NOT NULL,
  `payment_date` date NOT NULL,
  `id_payment_date` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_payment_v`
--

INSERT INTO `tbl_payment_v` (`id_payment_v`, `nama_vendor`, `bank_name`, `address_bank`, `bank_city`, `bank_code`, `account_name`, `account_number`, `currency`, `amount_payment`, `description`, `description2`, `email_vendor`, `transaction_type`, `resident_status`, `citizen_status`, `payment_date`, `id_payment_date`, `create_date`) VALUES
(8, 'HOLLAND BAKERY', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'PT MUSTIKA CITRA RASA', '3721771979', 'IDR', 2109100, 'Paid Inv. No : KRWSOT2306-100435', '', 'holland@gmail.com', 'LLG', '0', '0', '2023-07-27', 30, '2024-04-19 06:25:22'),
(9, 'BERKAH MULYO', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'RUSWAN', '2761563094', 'IDR', 3724000, 'Pembelian Pulpen Training LCD 1.000 pcs', '', 'berkah@gmail.com', 'LLG', '0', '0', '2023-07-27', 30, '2024-04-19 06:25:22'),
(10, 'PT SYAKIRA BERKAH JAYA', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'PT SYAKIRA BERKAH JAYA', '1550012281518', 'IDR', 1087800, 'Paid Inv. No : 011/TLC/KWT-FIA.SBJ/VI/2023', '', 'syakira@gmail.com', 'LLG', '0', '0', '2023-07-27', 30, '2024-04-19 06:25:22'),
(11, 'PT SYAKIRA BERKAH JAYA', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'PT SYAKIRA BERKAH JAYA', '1550012281518', 'IDR', 2131500, 'Paid Inv. No : 004/TLC/KWT-FIA.SBJ/VII/2023', '', 'syakira@gmail.com', 'LLG', '0', '0', '2023-07-27', 30, '2024-04-19 06:25:22'),
(12, 'DAPUR NYI ITEUNG', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'SUNARTO', '1320004733383', 'IDR', 1900000, 'Pembelian Lunch Training Low Voltage dan NAL 5 & 7 Juli 23', '', 'dapur@gmail.com', 'LLG', '0', '0', '2023-07-27', 30, '2024-04-19 06:25:22'),
(13, 'PT LAJU LANGGENG SENTOSA', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'LAJU LANGGENG SENTOSA PT', '8761098373', 'IDR', 1276056, 'Paid Inv. No : 2306.LLS.I-05', '', 'laju@gmail.com', 'LLG', '0', '0', '2023-07-27', 30, '2024-04-19 06:25:22'),
(14, 'HOLLAND BAKERY', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'PT MUSTIKA CITRA RASA', '3721771979', 'IDR', 2380000, 'Paid Inv. No : KRWSOT2307-100201', '', 'holland@gmail.com', 'LLG', '0', '0', '2023-07-27', 30, '2024-04-19 06:25:22'),
(15, 'HOLLAND BAKERY', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'PT MUSTIKA CITRA RASA', '3721771979', 'IDR', 2266700, 'Paid Inv. No : KRWSOT2307-100201', '', 'holland@gmail.com', 'LLG', '0', '0', '2023-07-27', 30, '2024-04-19 06:25:22'),
(16, 'MOHAMAD SIDIK PRAMONO', 'BSI', 'KANTOR PUSAT', 'JAKARTA', 4510017, 'MOHAMAD SIDIK PRAMONO', '7282452860', 'IDR', 2340000, 'Honor Trainer Basic Forklift 18,20 & 21 Juli 2023', '', 'sidik@gmail.com', 'LLG', '0', '0', '2023-07-27', 30, '2024-04-19 06:25:22'),
(17, 'MUHAMAD YUSUF RAHADI', 'PERMATA', '0', '0', 0, 'MUHAMAD YUSUF RAHADI', '1217045521', 'IDR', 780000, 'Honor Trainer NAL 20-21 Juli 2023', '', 'yusuf@gmail.com', 'OVB', '0', '0', '2023-07-27', 30, '2024-04-19 06:25:22'),
(18, 'KHALIL GHIBRAN JIWONO', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'KHALIL GHIBRAN JIWONO', '1730001867820', 'IDR', 780000, 'Honor Trainer NAL 20-21 Juli 2023', '', 'khalil@gmail.com', 'LLG', '0', '0', '2023-07-27', 30, '2024-04-19 06:25:22'),
(19, 'MUHAMAD YUSUF RAHADI', 'PERMATA', '0', '0', 0, 'MUHAMAD YUSUF RAHADI', '1217045521', 'IDR', 780000, 'Honor Trainer NAL 13-14 Juli 2023', '', 'yusuf@gmail.com', 'OVB', '0', '0', '2023-07-27', 30, '2024-04-19 06:25:22'),
(20, 'IGNATIUS SRIKUNCORO', 'BNI', 'KP SUDIRMAN', 'JAKARTA', 90010, 'IGNATIUS SRIKUNCORO', '1760306548', 'IDR', 780000, 'Honor Trainer NAL 13-14 Juli 2023', '', 'igna@gmail.com', 'LLG', '0', '0', '2023-07-27', 30, '2024-04-19 06:25:22'),
(21, 'YANI PRANOTO', 'BSI', 'KANTOR PUSAT', 'JAKARTA', 4510017, 'YANI PRANOTO', '7234025960', 'IDR', 780000, 'Honor Trainer HPW JO 12 Juli 2023', '', 'yanip@gmail.com', 'LLG', '0', '0', '2023-07-27', 30, '2024-04-19 06:25:22'),
(22, 'BAMBANG SUTRISNO', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'BAMBANG SUTRISNO', '0060010712481', 'IDR', 780000, 'Honor Trainer HPW JO 14 Juli 2023', '', 'bambang@gmail.com', 'LLG', '0', '0', '2023-07-27', 30, '2024-04-19 06:25:22'),
(23, 'ABDUL ROSYID PRIBADI', 'PERMATA', '0', '0', 0, 'ABDUL ROSYID PRIBADI', '0358978312', 'IDR', 3120000, 'Honor Trainer Karakuri PT CMW 11-13 Juli 2023', '', 'abdul@gmail.com', 'OVB', '0', '0', '2023-07-27', 30, '2024-04-19 06:25:22'),
(24, 'MULIATU RODIAH', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'MULIATU RODIAH', '7630084363', 'IDR', 1500000, 'Perbaikan Panduan Mutu LSP TMMIN Tgl 4 Juli 2023', '', 'muliatu@gmail.com', 'LLG', '0', '0', '2023-07-27', 30, '2024-04-19 06:25:22'),
(25, 'PT HIMAWAN PUTRA', 'PAN INDONESIA /PANIN', 'SENAYAN', 'JAKARTA', 190017, 'HIMAWAN PUTRA, PT.', '0185889995', 'IDR', 24000, 'Refund Pemotongan Pajak PPh 23 Atas Training Anzen Leader TLC', '', 'himawan@gmail.com', 'LLG', '0', '0', '2023-07-27', 30, '2024-04-19 06:25:22'),
(26, 'HERI SETYO', 'BNI', 'KP SUDIRMAN', 'JAKARTA', 90010, 'HERI SETYO', '0210253827', 'IDR', 780000, 'Honor Trainer Karakuri PT CMW 11-13 Juli 2023', '', 'heri@gmail.com', 'LLG', '0', '0', '2023-07-27', 30, '2024-04-19 06:25:22'),
(28, 'PT. CAHAYA INTI PUTRA SEJAHTERA', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'PT. CAHAYA INTI PUTRA SEJAHTERA', '7080228800', 'IDR', 7996002, 'Paid Inv. No : J32307008946', '', 'cahayainti@gmail.com', 'LLG', '0', '0', '2023-07-31', 31, '2024-04-19 06:26:59'),
(29, 'MITRA PLUS SOLUSINDO', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'MITRA PLUS SOLUSINDO', '1250005292834', 'IDR', 4420680, 'Tiket Pesawat AKTI-YTI dengan YTA ', '', 'mitraplus@gmail.com', 'LLG', '0', '0', '2023-07-31', 31, '2024-04-19 06:26:59'),
(30, 'LUTFY EKA BHIARDIAN', 'PERMATA', '0', '0', 0, 'LUTFY EKA BHIARDIAN', '4105701549', 'IDR', 550000, 'Reimb. Biaya Operasional City Tour Matrikulasi A8', '', 'lutfy@gmail.com', 'OVB', '0', '0', '2023-07-31', 31, '2024-04-19 06:26:59'),
(31, 'M. KHAMDANI', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'M. KHAMDANI', '7045056023', 'IDR', 2250000, 'Suspense Petty Cash Asrama Agustus 2023', '', 'khamdani@gmail.com', 'LLG', '0', '0', '2023-07-31', 31, '2024-04-19 06:26:59'),
(32, 'TRAC', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'PT. SERASI AUTORAYA', '3193055512', 'IDR', 11146000, 'Paid Inv. No : 21.07/TRAC/JKT/ABS/VII/2023', '', 'trac@gmail.com', 'LLG', '0', '0', '2023-07-31', 31, '2024-04-19 06:26:59'),
(33, 'MITRA PLUS SOLUSINDO', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'MITRA PLUS SOLUSINDO', '1250005292834', 'IDR', 5475650, 'Tiket Pesawat kegiatan worldskill ASEAN 2023 Singapore', '', 'mitraplus@gmail.com', 'LLG', '0', '0', '2023-07-31', 31, '2024-04-19 06:26:59'),
(34, 'CV. NITASHI RIZKADA ', 'PERMATA', '0', '0', 0, 'CV. NITASHI RIZKADA ', '0970450300', 'IDR', 4051500, 'Paid Inv. No : 00071/NR/VII/23', '', 'nitashi@gmail.com', 'OVB', '0', '0', '2023-07-31', 31, '2024-04-19 06:26:59'),
(35, 'CIPTA GRAFIKA', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'FATHI BAWAZIER', '1090817775', 'IDR', 795000, 'Paid Inv. No : R230718', '', 'ciptagrafika@gmail.com', 'LLG', '0', '0', '2023-07-31', 31, '2024-04-19 06:26:59'),
(36, 'CV. NITASHI RIZKADA ', 'PERMATA', '0', '0', 0, 'CV. NITASHI RIZKADA ', '0970450300', 'IDR', 2122320, 'Paid Inv. No : 00067/NR/VII/23', '', 'nitashi@gmail.com', 'OVB', '0', '0', '2023-07-31', 31, '2024-04-19 06:26:59'),
(37, 'CV. NITASHI RIZKADA ', 'PERMATA', '0', '0', 0, 'CV. NITASHI RIZKADA ', '0970450300', 'IDR', 14685300, 'Paid Inv. No : 00073/NR/VII/23', '', 'nitashi@gmail.com', 'OVB', '0', '0', '2023-07-31', 31, '2024-04-19 06:26:59'),
(38, 'LILI SOLIHUDIN', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'LILI SOLIHUDIN', '1730006389812', 'IDR', 234000, 'Honor Dosen Juli 2023', '', 'lili@gmail.com', 'LLG', '0', '0', '2023-07-31', 31, '2024-04-19 06:26:59'),
(39, 'JOKO PRAMONO', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'Joko Pramono', '1320013381711', 'IDR', 819000, 'Honor Dosen AKTI Juli 2023', '', 'joko@gmail.com', 'LLG', '0', '0', '2023-07-31', 31, '2024-04-19 06:26:59'),
(40, 'UYAT SUYATNA', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'UYAT SUYATNA', '1230006414678', 'IDR', 1228500, 'Honor Dosen AKT Juli 2023', '', 'uyat@gmail.com', 'LLG', '0', '0', '2023-07-31', 31, '2024-04-19 06:26:59'),
(41, 'KARWITANG', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'KARWITANG', '1320010020981', 'IDR', 409500, 'Honor Dosen AKTI Juli 2023', '', 'karwitang@gmail.com', 'LLG', '0', '0', '2023-07-31', 31, '2024-04-19 06:26:59'),
(42, 'HOLLAND BAKERY', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'PT MUSTIKA CITRA RASA', '3721771979', 'IDR', 4476600, 'Paid Inv. No : KRWSOT2307-100371', '', 'holland@gmail.com', 'LLG', '0', '0', '2023-08-03', 32, '2024-04-19 07:21:02'),
(43, 'KEBULI CINTA', 'CIMB NIAGA', 'JAKARTA', 'JAKARTA', 220026, 'WELI NUGROHO', '702129031500', 'IDR', 2500000, ' Lunch Training NAL Basic Forklift dan TJI 21 Juli 23', '', 'kebulicinta@gmail.com', 'LLG', '0', '0', '2023-08-03', 32, '2024-04-19 07:21:02'),
(44, 'DAPUR NYI ITEUNG', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'SUNARTO', '1320004733383', 'IDR', 650000, 'Lunch Training Basic Forklift 20 Juli 2023', '', 'dapur@gmail.com', 'LLG', '0', '0', '2023-08-03', 32, '2024-04-19 07:21:02'),
(45, 'CV. HARAPAN MADANI UTAMA', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'HARAPAN MADANI UTAMA CV', '7402657777', 'IDR', 9584000, 'Paid Inv. No : 0561-2023', '', 'harapanmadani@gmail.com', 'LLG', '0', '0', '2023-08-03', 32, '2024-04-19 07:21:02'),
(46, 'PT SYAKIRA BERKAH JAYA', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'PT SYAKIRA BERKAH JAYA', '1550012281518', 'IDR', 3283000, 'Paid Inv. No : 009 & 010/TLC/KWT-FIA.SBJ/VII/2023', '', 'syakira@gmail.com', 'LLG', '0', '0', '2023-08-03', 32, '2024-04-19 07:21:02'),
(47, 'HOLLAND BAKERY', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'PT MUSTIKA CITRA RASA', '3721771979', 'IDR', 5109700, 'Paid Inv. No : KRWSOT2307-100371', '', 'holland@gmail.com', 'LLG', '0', '0', '2023-08-03', 32, '2024-04-19 07:21:02'),
(48, 'SAHABAT', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'NGADIRIN', '6840342024', 'IDR', 8310400, 'Cetak Buku HPW JO & Banner Skill Kontes', '', 'sahabat@gmail.com', 'LLG', '0', '0', '2023-08-03', 32, '2024-04-19 07:21:02'),
(49, 'SAHABAT', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'NGADIRIN', '6840342024', 'IDR', 16758000, 'Paid Inv. No : P-SHT-06/23/022', '', 'sahabat@gmail.com', 'LLG', '0', '0', '2023-08-03', 32, '2024-04-19 07:21:02'),
(50, 'SAHABAT', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'NGADIRIN', '6840342024', 'IDR', 730000, 'P-SHT-06/23/014', '', 'sahabat@gmail.com', 'LLG', '0', '0', '2023-08-03', 32, '2024-04-19 07:21:02'),
(51, 'DINA KARTIKA RAYA', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'DINA KARTIKA RAYA', '1420016013137', 'IDR', 146250, 'Apresiasi Moderator Shortcourse CNC 3-7 Juli 23', '', 'dina@gmail.com', 'LLG', '0', '0', '2023-08-03', 32, '2024-04-19 07:21:02'),
(52, 'DINA KARTIKA RAYA', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'DINA KARTIKA RAYA', '1420016013137', 'IDR', 146250, 'Apresiasi Moderator Shortcourse Basic PLC 12-16 Juni 23', '', 'dina@gmail.com', 'LLG', '0', '0', '2023-08-03', 32, '2024-04-19 07:21:02'),
(53, 'MURYANTO', 'PERMATA', '0', '0', 0, 'MURYANTO', '1218917506', 'IDR', 3900000, 'Honor Trainer Shortcourse CNC I 3-7 Juli 2023', '', 'muryanto@gmail.com', 'OVB', '0', '0', '2023-08-03', 32, '2024-04-19 07:21:02'),
(54, 'MUHAMMAD RUSYDI', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'MUHAMMAD RUSYDI', '5210825829', 'IDR', 3900000, 'Honor Trainer Shortcourse Basc PLC 12-16 Juni 2023', '', 'rusydi@gmail.com', 'LLG', '0', '0', '2023-08-03', 32, '2024-04-19 07:21:02'),
(55, 'JAENUR RIDWAN', 'PERMATA', '0', '0', 0, 'JAENUR RIDWAN', '9919323288', 'IDR', 200000, 'Reimburse Pembelian Bensin Operasional AKTI', '', 'jaenuridwan@gmail.com', 'OVB', '0', '0', '2023-08-08', 33, '2024-04-19 07:23:29'),
(56, 'CV. NITASHI RIZKADA ', 'PERMATA', '0', '0', 0, 'CV. NITASHI RIZKADA ', '0970450300', 'IDR', 5079360, 'Paid Inv. No : 00062/NR/VI/23', '', 'nitashi@gmail.com', 'OVB', '0', '0', '0000-00-00', 0, '2023-08-07 02:30:51'),
(57, 'HOTEL MERCURE', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'PT. KARAWANG CITY DEVELOPMENT', '1093030072', 'IDR', 738100, 'Paid Inv. No : AR-0171831-INV', '', 'mercure@gmail.com', 'LLG', '0', '0', '2023-08-08', 33, '2024-04-19 07:23:29'),
(58, 'DEVI KARTIKA SARI', 'PERMATA', '0', '0', 0, 'DEVI KARTIKA SARI', '9915804826', 'IDR', 601300, 'Reimburse Snack Tim Akreditasi', '', 'devi@gmail.com', 'OVB', '0', '0', '2023-08-08', 33, '2024-04-19 07:23:29'),
(59, 'MELLINDA EFENDI', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'MELLINDA EFENDI', '6785059097', 'IDR', 2400000, 'Reimburse Fee motivator untuk athlete ASC XIII 2023', '', 'mellinda@gmail.com', 'LLG', '0', '0', '2023-08-08', 33, '2024-04-19 07:23:29'),
(60, 'RIZKI DWI AFRIANTO', 'PERMATA', '0', '0', 0, 'RIZKI DWI AFRIANTO', '1224913970', 'IDR', 17576184, 'Reimburse Pembelian Material Perlombaan PLC', '', 'rizki@gmail.com', 'OVB', '0', '0', '2023-08-08', 33, '2024-04-19 07:23:29'),
(61, 'CV. SEKAI ELITE INDONESIA', 'BANK SINARMAS', 'KP.ZAINAL ARIFIN', 'JAKARTA', 1530016, 'CV. SEKAI ELITE INDONESIA', '0052772737', 'IDR', 14690813, 'Paid Inv. No : 17/I/SE/VII/2023', '', 'sekai@gmail.com', 'LLG', '0', '0', '2023-08-08', 33, '2024-04-19 07:23:29'),
(62, 'PRADITYA ALAMBARA', 'BSI', 'KANTOR PUSAT', 'JAKARTA', 4510017, 'PRADITYA ALAMBARA', '7227847990', 'IDR', 1100000, 'Reimburse Operasional Fee Diskusi Wisuda dan Akreditasi', '', 'praditya@gmail.com', 'LLG', '0', '0', '2023-08-08', 33, '2024-04-19 07:23:29'),
(63, 'MELLINDA EFENDI', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'MELLINDA EFENDI', '6785059097', 'IDR', 450000, 'Reimburse Pembuatan Seragam Batik WSA XIII 2023 Singapore', '', 'mellinda@gmail.com', 'LLG', '0', '0', '2023-08-08', 33, '2024-04-19 07:23:29'),
(64, 'VIKY MAULANA', 'PERMATA', '0', '0', 0, 'VIKY MAULANA', '9919723189', 'IDR', 1562839, 'Reimburse Pembelian Material & Transport PP AKTI Asrama Pelatihan WSA', '', 'viky@gmail.com', 'OVB', '0', '0', '2023-08-08', 33, '2024-04-19 07:23:29'),
(65, 'CV. NITASHI RIZKADA ', 'PERMATA', '0', '0', 0, 'CV. NITASHI RIZKADA ', '0970450300', 'IDR', 2890440, 'Paid Inv. No : 00072/NR/VII/23', '', 'nitashi@gmail.com', 'OVB', '0', '0', '2023-08-08', 33, '2024-04-19 07:23:29'),
(66, 'CV. BUMIAYU SUKSES MANDIRI', 'BRI', 'JKT KPO', 'JAKARTA', 20307, 'CV. BUMIAYU SUKSES MANDIRI', '044401001417303', 'IDR', 5010000, 'Paid Inv. No : 002/BSM-INV/VII/23', '', 'bumiayu@gmail.com', 'LLG', '0', '0', '2023-08-08', 33, '2024-04-19 07:23:29'),
(67, 'CV. NITASHI RIZKADA ', 'PERMATA', '0', '0', 0, 'CV. NITASHI RIZKADA ', '0970450300', 'IDR', 5114880, 'Paid Inv. No : 00070/NR/VII/23', '', 'nitashi@gmail.com', 'OVB', '0', '0', '2023-08-08', 33, '2024-04-19 07:23:29'),
(68, 'CV. NITASHI RIZKADA ', 'PERMATA', '0', '0', 0, 'CV. NITASHI RIZKADA ', '0970450300', 'IDR', 1847040, 'Paid Inv. No : 00074/NR/VII/23', '', 'nitashi@gmail.com', 'OVB', '0', '0', '2023-08-08', 33, '2024-04-19 07:23:29'),
(69, 'CV. JAPA', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'M. RACHMAD', '2750012534', 'IDR', 114273880, 'Paid Inv. No : 134', '', 'japa@gmail.com', 'LLG', '0', '0', '2023-08-08', 33, '2024-04-19 07:23:29'),
(70, 'KEBULI CINTA', 'CIMB NIAGA', 'JAKARTA', 'JAKARTA', 220026, 'WELI NUGROHO', '702129031500', 'IDR', 500000, 'Lunch Diskusi Motivasi untuk WSA XIII 2023 (13 Juli)', '', 'kebulicinta@gmail.com', 'LLG', '0', '0', '2023-08-08', 33, '2024-04-19 07:23:29'),
(71, 'HOLLAND BAKERY', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'PT MUSTIKA CITRA RASA', '3721771979', 'IDR', 149400, 'Paid Inv. No : KRWSOT2307-100268', '', 'holland@gmail.com', 'LLG', '0', '0', '2023-08-08', 33, '2024-04-19 07:23:29'),
(72, 'CV. NITASHI RIZKADA ', 'PERMATA', '0', '0', 0, 'CV. NITASHI RIZKADA ', '0970450300', 'IDR', 4911750, 'Paid Inv. No : 00037/NR/IV/23', '', 'nitashi@gmail.com', 'OVB', '0', '0', '2023-08-08', 33, '2024-04-19 07:23:29'),
(73, 'BPJSKES MAHASISWA AKTI', 'BNI', 'KP SUDIRMAN', 'JAKARTA', 90010, 'PBPU Kolektif - Yayasan Toyota Indonesia', '8888890001311756', 'IDR', 4200000, 'Iuran BPJSKES Mahasiswa AKTI Agust 2023', '', 'bpjs@gmail.com', 'LLG', '0', '0', '2023-08-08', 33, '2024-04-19 07:23:29'),
(74, 'BPJSKES KARYAWAN YTI', 'BNI', 'KP SUDIRMAN', 'JAKARTA', 90010, 'YAYASAN TOYOTA INDONESIA', '8888890001311769', 'IDR', 4189385, 'Iuran BPJSKES Karyawan YTI Agust 2023', '', 'bpjs@gmail.com', 'LLG', '0', '0', '2023-08-08', 33, '2024-04-19 07:23:29'),
(75, 'BPJSTK', 'BNI', 'KP SUDIRMAN', 'JAKARTA', 90010, 'EPS BPJS TK', '418019823000', 'IDR', 6319004, 'Iuran BPJSTK Karyawan YTI Agust 2023', '', 'bpjstk@gmail.com', 'LLG', '0', '0', '2023-08-08', 33, '2024-04-19 07:23:29'),
(76, 'CV. NITASHI RIZKADA ', 'PERMATA', '0', '0', 0, 'CV. NITASHI RIZKADA ', '0970450300', 'IDR', 5079360, 'Paid Inv. No : 00062/NR/VI/23', '', 'nitashi@gmail.com', 'OVB', '0', '0', '2023-08-08', 33, '2024-04-19 07:23:29'),
(77, 'ACHMAD RAIHAN ALI', 'PERMATA', '0', '0', 0, 'ACHMAD RAIHAN ALI', '9916759700', 'IDR', 634500, 'Reimburse Biaya Perjalanan AKTI-Asrama Pelatihan Lomba PLC', '', 'achmad@gmail.com', 'OVB', '0', '0', '2023-08-08', 33, '2024-04-19 07:23:29'),
(78, 'HOLLAND BAKERY', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'PT MUSTIKA CITRA RASA', '3721771979', 'IDR', 1284725, 'Paid Inv. No : KRWSOT2307-100268', '', 'holland@gmail.com', 'LLG', '0', '0', '2023-08-10', 34, '2024-04-19 07:24:17'),
(79, 'CV. JAPA', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'M. RACHMAD', '2750012534', 'IDR', 1472940, 'Paid Inv. No : 133', '', 'japa@gmail.com', 'LLG', '0', '0', '2023-08-10', 34, '2024-04-19 07:24:17'),
(80, 'FATYADI RAMSAF', 'PERMATA', '0', '0', 0, 'FATYADI RAMSAF', '9897831322', 'IDR', 3675000, 'Apresiasi Moderator Eksternal TLC Juli 2023', '', 'fatyadi@gmail.com', 'OVB', '0', '0', '2023-08-10', 34, '2024-04-19 07:24:17'),
(81, 'FERDIANSYAH', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'FERDIANSYAH', '7045006051', 'IDR', 1560000, 'Honor Trainer In Machine Work 27-28 Juli 2023', '', 'ferdiansyah@gmail.com', 'LLG', '0', '0', '2023-08-10', 34, '2024-04-19 07:24:17'),
(82, 'IGNATIUS SRIKUNCORO', 'BNI', 'KP SUDIRMAN', 'JAKARTA', 90010, 'IGNATIUS SRIKUNCORO', '1760306548', 'IDR', 1560000, 'Honor Trainer NAL 27-28 Juli 2023', '', 'igna@gmail.com', 'LLG', '0', '0', '2023-08-10', 34, '2024-04-19 07:24:17'),
(83, 'ANDY RIYATNO', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'ANDY RIYATNO', '9000009790255', 'IDR', 390000, 'Honor Trainer TJI 20-21 Juli 2023', '', 'andy@gmail.com', 'LLG', '0', '0', '2023-08-10', 34, '2024-04-19 07:24:17'),
(84, 'HARIYANTO', 'BSI', 'KANTOR PUSAT', 'JAKARTA', 4510017, 'HARIYANTO', '7278305050', 'IDR', 390000, 'Honor Trainer TJI 20-21 Juli 2023', '', 'hariyanto@gmail.com', 'LLG', '0', '0', '2023-08-10', 34, '2024-04-19 07:24:17'),
(85, 'DASTA PERMANA', 'PERMATA', '0', '0', 0, 'DASTA PERMANA', '4124663437', 'IDR', 390000, 'Honor Trainer TJI 20-21 Juli 2023', '', 'dasta@gmail.com', 'OVB', '0', '0', '2023-08-10', 34, '2024-04-19 07:24:17'),
(86, 'MIETA RAMADHANINGTIYAS', 'PERMATA', '0', '0', 0, 'MIETA RAMADHANINGTIYAS', '4178093423', 'IDR', 975000, 'Apresiasi Tambahan PA Juli 2023', '', 'mieta@gmail.com', 'OVB', '0', '0', '2023-08-10', 34, '2024-04-19 07:24:17'),
(87, 'SAEFUDIN', 'PERMATA', '0', '0', 0, 'SAEFUDIN', '4101938536', 'IDR', 3900000, 'Honor Trainer Shortcourse Basic Pneumatic 24-28 Juli 2023', '', 'saefudin@gmail.com', 'OVB', '0', '0', '2023-08-10', 34, '2024-04-19 07:24:17'),
(89, 'SUGENG PRIHANTONO', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'SUGENG PRIHANTONO', '1320011177962', 'IDR', 390000, 'Honor Trainer TJI 20-21 Juli 2023', '', 'sugeng@gmail.com', 'LLG', '0', '0', '2023-08-10', 34, '2024-04-19 07:24:17'),
(90, 'PT SYAKIRA BERKAH JAYA', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'PT SYAKIRA BERKAH JAYA', '1550012281518', 'IDR', 1293600, 'Paid Inv. No : 006/TLC/KWT-FIA.SBJ/VIII/2023', '', 'syakira@gmail.com', 'LLG', '0', '0', '2023-08-16', 35, '2024-04-19 07:26:07'),
(91, 'DAPUR NYI ITEUNG', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'SUNARTO', '1320004733383', 'IDR', 1100000, 'Pembelian Lunch Training NAL 4 Agustus 2023', '', 'dapur@gmail.com', 'LLG', '0', '0', '2023-08-16', 35, '2024-04-19 07:26:07'),
(92, 'DAPUR NYI ITEUNG', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'SUNARTO', '1320004733383', 'IDR', 2450000, 'Pembelian Lunch Training IMW, TPS SW dan NAL 28 Juli 23 ', '', 'dapur@gmail.com', 'LLG', '0', '0', '2023-08-16', 35, '2024-04-19 07:26:07'),
(93, 'SAHABAT', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'NGADIRIN', '6840342024', 'IDR', 500000, 'Paid Inv. No : P-SHT-07/23/021', '', 'sahabat@gmail.com', 'LLG', '0', '0', '2023-08-16', 35, '2024-04-19 07:26:07'),
(94, 'KEBULI CINTA', 'CIMB NIAGA', 'JAKARTA', 'JAKARTA', 220026, 'WELI NUGROHO', '702129031500', 'IDR', 800000, 'Pembelian Lunch Training TPS SW 26 Juli 23', '', 'kebulicinta@gmail.com', 'LLG', '0', '0', '2023-08-16', 35, '2024-04-19 07:26:07'),
(95, 'CV. HARAPAN MADANI UTAMA', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'HARAPAN MADANI UTAMA CV', '7402657777', 'IDR', 1087800, 'Paid Inv. No : 0562-2023', '', 'harapanmadani@gmail.com', 'LLG', '0', '0', '2023-08-16', 35, '2024-04-19 07:26:07'),
(96, 'PT SYAKIRA BERKAH JAYA', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'PT SYAKIRA BERKAH JAYA', '1550012281518', 'IDR', 2998800, 'Paid Inv. No : 020,021,022/TLC/KWT-FIA.SBJ/VII/2023', '', 'syakira@gmail.com', 'LLG', '0', '0', '2023-08-16', 35, '2024-04-19 07:26:07'),
(97, 'PT SYAKIRA BERKAH JAYA', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'PT SYAKIRA BERKAH JAYA', '1550012281518', 'IDR', 2989000, 'Paid Inv. No : 012,013,015/TLC/KWT-FIA.SBJ/VII/2023', '', 'syakira@gmail.com', 'LLG', '0', '0', '2023-08-16', 35, '2024-04-19 07:26:07'),
(98, 'SAHABAT', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'NGADIRIN', '6840342024', 'IDR', 7438200, 'Paid Inv. No : P-SHT-07/023/011', '', 'sahabat@gmail.com', 'LLG', '0', '0', '2023-08-16', 35, '2024-04-19 07:26:07'),
(99, 'HOLLAND BAKERY', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'PT MUSTIKA CITRA RASA', '3721771979', 'IDR', 402140, 'Paid Inv. No : KRWSOT2307-100537', '', 'holland@gmail.com', 'LLG', '0', '0', '2023-08-16', 35, '2024-04-19 07:26:07'),
(100, 'HOLLAND BAKERY', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'PT MUSTIKA CITRA RASA', '3721771979', 'IDR', 3211600, 'Paid Inv. No : KWRIRR202308-1004', '', 'holland@gmail.com', 'LLG', '0', '0', '2023-08-16', 35, '2024-04-19 07:26:07'),
(101, 'KEBULI CINTA', 'CIMB NIAGA', 'JAKARTA', 'JAKARTA', 220026, 'WELI NUGROHO', '702129031500', 'IDR', 1950000, 'Pembelian Lunch Training Karakuri & NAL 11 & 14 Juli 23', '', 'kebulicinta@gmail.com', 'LLG', '0', '0', '2023-08-16', 35, '2024-04-19 07:26:07'),
(102, 'HOLLAND BAKERY', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'PT MUSTIKA CITRA RASA', '3721771979', 'IDR', 271800, 'Paid Inv. No : KRWSOT2307-100371', '', 'holland@gmail.com', 'LLG', '0', '0', '2023-08-16', 35, '2024-04-19 07:26:07'),
(103, 'HOLLAND BAKERY', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'PT MUSTIKA CITRA RASA', '3721771979', 'IDR', 405000, 'Paid Inv. No : KRWSOT2307-100537', '', 'holland@gmail.com', 'LLG', '0', '0', '2023-08-16', 35, '2024-04-19 07:26:07'),
(104, 'HARI SUNARTO', 'PERMATA', '0', '0', 0, 'HARI SUNARTO', '1221127192', 'IDR', 63000, 'Reimb. Material Spanduk Visit Tamu Media To TLC 5 Agust 23', '', 'hari@gmail.com', 'OVB', '0', '0', '2023-08-16', 35, '2024-04-19 07:26:07'),
(105, 'FATYADI RAMSAF', 'PERMATA', '0', '0', 0, 'FATYADI RAMSAF', '9897831322', 'IDR', 302000, 'Apresiasi Tambahan Moderator Eksternal TLC Juli 23', '', 'fatyadi@gmail.com', 'OVB', '0', '0', '2023-08-16', 35, '2024-04-19 07:26:07'),
(106, 'IGNATIUS SRIKUNCORO', 'BNI', 'KP SUDIRMAN', 'JAKARTA', 90010, 'IGNATIUS SRIKUNCORO', '1760306548', 'IDR', 1560000, 'Honor Trainer NAL 03-04 Agust 23', '', 'igna@gmail.com', 'LLG', '0', '0', '2023-08-16', 35, '2024-04-19 07:26:07'),
(107, 'HOLLAND BAKERY', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'PT MUSTIKA CITRA RASA', '3721771979', 'IDR', 4110900, 'Paid Inv. No : KRWSOT2307-100537', '', 'holland@gmail.com', 'LLG', '0', '0', '2023-08-16', 35, '2024-04-19 07:26:07'),
(108, 'HOLLAND BAKERY', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'PT MUSTIKA CITRA RASA', '3721771979', 'IDR', 149000, 'Paid Inv. No : KRWSOT2307-100511', '', 'holland@gmail.com', 'LLG', '0', '0', '2023-08-16', 36, '2024-04-19 08:12:14'),
(109, 'PT. DEANOVA KARYA MANDIRI', 'BNI', 'KP SUDIRMAN', 'JAKARTA', 90010, 'YANI SURTIANI', '0228808758', 'IDR', 107741200, 'Paid Inv. No : 3007/NSA/VII/2023', '', 'yanisurtiani3011@gmail.com', 'LLG', '0', '0', '2023-08-16', 36, '2024-04-19 08:12:10'),
(110, 'PT. PAKAR UTAMA ', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'PT. PAKAR UTAMA ', '4493033738', 'IDR', 65274100, 'Paid Inv. No : KR.07.23.003', '', 'pakar@gmail.com', 'LLG', '0', '0', '2023-08-16', 36, '2024-04-19 08:12:05'),
(111, 'CV. NITASHI RIZKADA ', 'PERMATA', '0', '0', 0, 'CV. NITASHI RIZKADA ', '0970450300', 'IDR', 2284380, 'Paid Inv. No : 00076/NR/VII/23', '', 'nitashi@gmail.com', 'OVB', '0', '0', '2023-08-16', 36, '2024-04-19 08:12:00'),
(112, 'HOLLAND BAKERY', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'PT MUSTIKA CITRA RASA', '3721771979', 'IDR', 385575, 'Paid Inv. No : KRWSOT2307-100268', '', 'holland@gmail.com', 'LLG', '0', '0', '2023-08-16', 36, '2024-04-19 08:11:55'),
(113, 'CV. NITASHI RIZKADA ', 'PERMATA', '0', '0', 0, 'CV. NITASHI RIZKADA ', '0970450300', 'IDR', 11403030, 'Paid Inv. No : 00063/NR/VI/23', '', 'nitashi@gmail.com', 'OVB', '0', '0', '2023-08-16', 36, '2024-04-19 08:11:50'),
(114, 'CV. JAPA', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'M. RACHMAD', '2750012534', 'IDR', 1845340, 'Paid Inv. No : 136', '', 'japa@gmail.com', 'LLG', '0', '0', '2023-08-24', 37, '2024-04-19 07:26:07'),
(115, 'CV. JAKARUTA GENGOGAKUIN', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'CV. JAKARUTA GENGOGAKUIN', '0060006158814', 'IDR', 1960000, 'Paid Inv. No : 4231/MGR-ADM.FIN-JKT-JGG/VIII/2023', '', 'jakarta.ir@gmail.com', 'LLG', '0', '0', '2023-08-24', 37, '2024-04-19 07:26:07'),
(116, 'NANANG JUANDA', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'NANANG JUANDA', '0060006762235', 'IDR', 780000, 'Honor Trainer RAL 11 Agust 23', '', 'nanang@gmail.com', 'LLG', '0', '0', '2023-08-24', 37, '2024-04-19 07:26:07'),
(117, 'YANI PRANOTO', 'BSI', 'KANTOR PUSAT', 'JAKARTA', 4510017, 'YANI PRANOTO', '7234025960', 'IDR', 780000, 'Honor Trainer HPW JO 10 Agust 23', '', 'yanip@gmail.com', 'LLG', '0', '0', '2023-08-24', 37, '2024-04-19 07:26:07'),
(118, 'MOHAMAD MUCHTAR', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'MOHAMAD MUCHTAR', '7425136216', 'IDR', 390000, 'Honor Trainer QC CL 08-09 Agust 23', '', 'm.muchtar@gmail.com', 'LLG', '0', '0', '2023-08-24', 37, '2024-04-19 07:26:07'),
(119, 'SUTEDY', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'SUTEDY', '1320005625349', 'IDR', 390000, 'Honor Trainer QC CL 08-09 Agust 23', '', 'sutedy@gmail.com', 'LLG', '0', '0', '2023-08-24', 37, '2024-04-19 07:26:07'),
(120, 'AGUNG WICAKSONO', 'BNI', 'KP SUDIRMAN', 'JAKARTA', 90010, 'AGUNG WICAKSONO', '0341149931', 'IDR', 390000, 'Honor Trainer QC CL 08-09 Agust 23', '', 'agung@gmail.com', 'LLG', '0', '0', '2023-08-24', 37, '2024-04-19 07:26:07'),
(121, 'ISWAHYUDI DWI NURCAHYO', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'ISWAHYUDI DWI NURCAHYO', '5271048484', 'IDR', 390000, 'Honor Trainer QC CL 08-09 Agust 23', '', 'iswahyudi@gmail.com', 'LLG', '0', '0', '2023-08-24', 37, '2024-04-19 07:26:07'),
(122, 'CV. NITASHI RIZKADA ', 'PERMATA', '0', '0', 0, 'CV. NITASHI RIZKADA ', '0970450300', 'IDR', 4406700, 'Paid Inv. No : 0085/NR/VIII/23', '', 'nitashi@gmail.com', 'OVB', '0', '0', '2023-08-25', 38, '2024-04-19 07:29:14'),
(123, 'CV. NITASHI RIZKADA ', 'PERMATA', '0', '0', 0, 'CV. NITASHI RIZKADA ', '0970450300', 'IDR', 4229100, 'Paid Inv. No : 00084/NR/VIII/23', '', 'nitashi@gmail.com', 'OVB', '0', '0', '2023-08-25', 38, '2024-04-19 07:29:14'),
(124, 'PT. DEANOVA KARYA MANDIRI', 'BNI', 'KP SUDIRMAN', 'JAKARTA', 90010, 'YANI SURTIANI', '0228808758', 'IDR', 54273380, 'Paid Inv. No : 2317/NSA/VIII/2023', '', 'yanisurtiani3011@gmail.com', 'LLG', '0', '0', '2023-08-25', 38, '2024-04-19 07:29:14'),
(125, 'PT. MIRA PUNCAK KEMUNING', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'PT. MIRA PUNCAK KEMUNING', '1290012422339', 'IDR', 50688000, 'Paid Kwt. No : 21 ', '', 'mira@gmail.com', 'LLG', '0', '0', '2023-08-25', 38, '2024-04-19 07:29:14'),
(126, 'CV. NITASHI RIZKADA ', 'PERMATA', '0', '0', 0, 'CV. NITASHI RIZKADA ', '0970450300', 'IDR', 7768890, 'Paid Inv. No : 00055/NR/VI/23', '', 'nitashi@gmail.com', 'OVB', '0', '0', '2023-08-25', 38, '2024-04-19 07:29:14'),
(127, 'CV. NITASHI RIZKADA ', 'PERMATA', '0', '0', 0, 'CV. NITASHI RIZKADA ', '0970450300', 'IDR', 12243300, 'Paid Inv. No : 00059/NR/VI/23', '', 'nitashi@gmail.com', 'OVB', '0', '0', '2023-08-25', 38, '2024-04-19 07:29:14'),
(128, 'MITRA PLUS SOLUSINDO', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'MITRA PLUS SOLUSINDO', '1250005292834', 'IDR', 3149630, 'Paid Inv. No : 6P/MPS-NDT/VIII/2023', '', 'mitraplus@gmail.com', 'LLG', '0', '0', '2023-08-25', 38, '2024-04-19 07:29:14'),
(129, 'VIKY MAULANA', 'PERMATA', '0', '0', 0, 'VIKY MAULANA', '9919723189', 'IDR', 1279000, 'Reimb. Biaya Transport dan keperluan di Singapura', '', 'viky@gmail.com', 'OVB', '0', '0', '2023-08-25', 38, '2024-04-19 07:29:14'),
(130, 'MELLINDA EFENDI', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'MELLINDA EFENDI', '6785059097', 'IDR', 750000, 'Reimb. Snack acara sarasehan & Kalung Bunga penyambutan athlete WSA XIII 2023', '', 'mellinda@gmail.com', 'LLG', '0', '0', '2023-08-25', 38, '2024-04-19 07:29:14'),
(131, 'Liera Firdha Sesarianti', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'Liera Firdha Sesarianti', '7045062791', 'IDR', 3494220, 'Honor Magang Agustus 2023', '', 'liera@gmail.com', 'LLG', '0', '0', '2023-08-25', 38, '2024-04-19 07:29:14'),
(132, 'DEVI KARTIKA SARI', 'PERMATA', '0', '0', 0, 'DEVI KARTIKA SARI', '9915804826', 'IDR', 3650289, 'Honor Magang Agustus 2023', '', 'devi@gmail.com', 'OVB', '0', '0', '2023-08-25', 38, '2024-04-19 07:29:14'),
(133, 'Median Dwi Syafitri', 'BNI', 'KP SUDIRMAN', 'JAKARTA', 90010, 'Median Dwi Syafitri', '1333403073', 'IDR', 545455, 'Rapel Honor Magang Juni 2023', '', 'median@gmail.com', 'LLG', '0', '0', '2023-08-25', 38, '2024-04-19 07:29:14'),
(134, 'Denny Setiawan', 'BNI', 'KP SUDIRMAN', 'JAKARTA', 90010, 'Denny Setiawan', '0228611274', 'IDR', 545455, 'Rapel Honor Magang Juni 2023', '', 'sarah@gmail.com', 'LLG', '0', '0', '2023-08-25', 38, '2024-04-19 07:29:14'),
(135, 'LARAS ASRI HOTEL', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'PT. ARMADA INVESTAMA', '0130440011', 'IDR', 6358000, 'Paid Inv. No : 0026/VIII-23', '', 'larasasri@gmail.com', 'LLG', '0', '0', '2023-08-25', 38, '2024-04-19 07:29:14'),
(136, 'AMRULLOH IBNU KHOLDUN', 'BNI', 'KP SUDIRMAN', 'JAKARTA', 90010, 'AMRULLOH IBNU KHOLDUN', '0198521629', 'IDR', 22425000, ' Termin 2 Konsultan Akreditasi 23 Pertemuan 03 Feb-27 Jul 2023', '', 'amrulloh@gmail.com', 'LLG', '0', '0', '2023-08-25', 38, '2024-04-19 07:29:14'),
(137, 'ACHMAD RAIHAN ALI', 'PERMATA', '0', '0', 0, 'ACHMAD RAIHAN ALI', '9916759700', 'IDR', 2567502, 'Reimb. Biaya Transport & Penginapan Lomba PLC di PNJ', '', 'raihan@gmail.com', 'OVB', '0', '0', '2023-08-25', 38, '2024-04-19 07:29:14'),
(138, 'MULYANDI', 'BNI', 'KP SUDIRMAN', 'JAKARTA', 90010, 'MULYANDI', '0001718599', 'IDR', 4095000, 'Honor Pelatih Drumband 17 Agustus 2023', '', 'mulyandi@gmail.com', 'LLG', '0', '0', '2023-08-25', 38, '2024-04-19 07:29:14'),
(139, 'Laras Tri Indah Sari', 'SEABANK ', 'KP. R.P.SUROSO', 'JAKARTA', 5350014, 'Laras Tri Indah Sari', '901672831952', 'IDR', 2303438, 'Honor Pelatih Padus 17 Agustus 2023', '', 'laras@gmail.com', 'LLG', '0', '0', '2023-08-25', 38, '2024-04-19 07:29:14'),
(140, 'Panji wirayuda', 'PERMATA', '0', '0', 0, 'Panji wirayuda', '9915130418', 'IDR', 3300000, 'Remb. Tiket kegiatan kunjungan ke GIIAS 2023 66 MP', '', 'panji@gmail.com', 'OVB', '0', '0', '2023-08-25', 38, '2024-04-19 07:29:14'),
(141, 'KIN NO KAGI', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'TANOSHINDO BOGA KELOLA', '1730013526992', 'IDR', 1050000, 'Paid Inv. No : NKW/4144/FINC/TBK/VII/2023', '', 'tanoshindo@gmail.com', 'LLG', '0', '0', '2023-08-31', 39, '2024-04-19 07:29:14'),
(142, 'PT. TRI JAYA EKA UTAMA', 'MAYBANK', 'KCU.THAMRIN', 'JAKARTA', 160131, 'PT. TRI JAYA EKA UTAMA ', '2232013077', 'IDR', 3927928, 'Paid Inv. No : 0034/TJ/Toyota/VII/2023', '', 'trijaya@gmail.com', 'LLG', '0', '0', '2023-08-31', 39, '2024-04-19 07:29:14'),
(143, 'FITRIANI NUR AFFIFAH', 'BRI', 'JKT KPO', 'JAKARTA', 20307, 'FITRIANI NUR AFFIFAH', '42420101593533', 'IDR', 3000000, 'Honor Magang Agustus 2023', '', 'fitriani@gmail.com', 'LLG', '0', '0', '2023-08-31', 39, '2024-04-19 07:29:14'),
(144, 'SYAFITRI FADILLAH', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'SYAFITRI FADILLAH', '1092560877', 'IDR', 3000000, 'Honor Magang Agustus 2023', '', 'syafitri@gmail.com', 'LLG', '0', '0', '2023-08-31', 39, '2024-04-19 07:29:14'),
(145, 'RAYSA INDAH BERLIANI', 'PERMATA', '0', '0', 0, 'RAYSA INDAH BERLIANI', '4176284558', 'IDR', 5900000, 'Cash on Hand AKTI', '', 'raysaindahberliani@gmail.com', 'OVB', '0', '0', '2023-08-31', 39, '2024-04-19 07:29:14'),
(146, 'M. KHAMDANI', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'M. KHAMDANI', '7045056023', 'IDR', 445000, 'Reimburse Repair PLN Asrama ', '', 'khamdani@gmail.com', 'LLG', '0', '0', '2023-08-31', 39, '2024-04-19 07:29:14'),
(147, 'HOLLAND BAKERY', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'PT MUSTIKA CITRA RASA', '3721771979', 'IDR', 1175590, 'Paid Inv. No : KRWSOT2308-100131', '', 'holland@gmail.com', 'LLG', '0', '0', '2023-08-31', 39, '2024-04-19 07:29:14'),
(148, 'CV. JAPA', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'M. RACHMAD', '2750012534', 'IDR', 943740, 'Paid Inv. No : 137', '', 'japa@gmail.com', 'LLG', '0', '0', '2023-08-31', 39, '2024-04-19 07:29:14'),
(149, 'KIN NO KAGI', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'TANOSHINDO BOGA KELOLA', '1730013526992', 'IDR', 5602700, 'Paid Inv. No : NKW/4140/FINC/TBK/VIII/2023', '', 'tanoshindo@gmail.com', 'LLG', '0', '0', '2023-08-31', 39, '2024-04-19 07:29:14'),
(150, 'HOLLAND BAKERY', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'PT MUSTIKA CITRA RASA', '3721771979', 'IDR', 341300, 'Paid Inv. No : KRWSOT2308-100163', '', 'holland@gmail.com', 'LLG', '0', '0', '2023-08-31', 39, '2024-04-19 07:29:14'),
(151, 'HOLLAND BAKERY', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'PT MUSTIKA CITRA RASA', '3721771979', 'IDR', 1018100, 'Paid Inv. No : KRWSOT2307-100511', '', 'holland@gmail.com', 'LLG', '0', '0', '2023-08-31', 39, '2024-04-19 07:29:14'),
(152, 'RIYADI', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'RIYADI', '1200007055838', 'IDR', 390000, 'Honor Trainer  5R 16 Agustus 2023', '', 'riyadi@gmail.com', 'LLG', '0', '0', '2023-08-31', 39, '2024-04-19 07:29:14'),
(153, 'SAEFUDIN', 'PERMATA', '0', '0', 0, 'SAEFUDIN', '4101938536', 'IDR', 3900000, 'Honor Trainer Shortcourse Hydraulic 07-11 Agust 23', '', 'saefudin@gmail.com', 'OVB', '0', '0', '2023-08-31', 39, '2024-04-19 07:29:14'),
(154, 'MIETA RAMADHANINGTIYAS', 'PERMATA', '0', '0', 0, 'MIETA RAMADHANINGTIYAS', '4178093423', 'IDR', 975000, 'Apresiasi Tambahan Program Admin TLC Sistem Jurnal', '', 'mieta@gmail.com', 'OVB', '0', '0', '2023-09-06', 40, '2024-04-19 07:29:14'),
(155, 'LIVIA GINTA RISNA', 'PERMATA', '0', '0', 0, 'LIVIA GINTA RISNA', '4178085919', 'IDR', 487500, 'Apresiasi Tambahan Program Admin TLC Kordinator Program Admin', '', 'livia@gmail.com', 'OVB', '0', '0', '2023-09-06', 40, '2024-04-19 07:29:14'),
(156, 'IGNATIUS SRIKUNCORO', 'BNI', 'KP SUDIRMAN', 'JAKARTA', 90010, 'IGNATIUS SRIKUNCORO', '1760306548', 'IDR', 1560000, 'Honor Trainer NAL 24-25 Agust 2023', '', 'igna@gmail.com', 'LLG', '0', '0', '2023-09-06', 40, '2024-04-19 07:29:14'),
(157, 'ABDUL ROSYID PRIBADI', 'PERMATA', '0', '0', 0, 'ABDUL ROSYID PRIBADI', '0358978312', 'IDR', 1560000, 'Honor Trainer Karakuri for TMClub 22-24 Agust 2023', '', 'abdul@gmail.com', 'OVB', '0', '0', '2023-09-06', 40, '2024-04-19 07:29:14'),
(158, 'WARISNO', 'BSI', 'KANTOR PUSAT', 'JAKARTA', 4510017, 'WARISNO', '7234022340', 'IDR', 780000, 'Honor Trainer Karakuri for TMClub 22-24 Agust 2023', '', 'warisno@gmail.com', 'LLG', '0', '0', '2023-09-06', 40, '2024-04-19 07:29:14'),
(159, 'HARI SUNARTO', 'PERMATA', '0', '0', 0, 'HARI SUNARTO', '1221127192', 'IDR', 780000, 'Honor Trainer Karakuri for TMClub 22-24 Agust 2023', '', 'hari@gmail.com', 'OVB', '0', '0', '2023-09-06', 40, '2024-04-19 07:29:14'),
(160, 'IGNATIUS SRIKUNCORO', 'BNI', 'KP SUDIRMAN', 'JAKARTA', 90010, 'IGNATIUS SRIKUNCORO', '1760306548', 'IDR', 780000, 'Honor Trainer NAL 22-23 Agust 2023', '', 'igna@gmail.com', 'LLG', '0', '0', '2023-09-06', 40, '2024-04-19 07:29:14'),
(161, 'MUHAMAD YUSUF RAHADI', 'PERMATA', '0', '0', 0, 'MUHAMAD YUSUF RAHADI', '1217045521', 'IDR', 780000, 'Honor Trainer NAL 22-23 Agust 2023 ', '', 'yusuf@gmail.com', 'OVB', '0', '0', '2023-09-06', 40, '2024-04-19 07:29:14'),
(162, 'CV. HARAPAN MADANI UTAMA', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'HARAPAN MADANI UTAMA CV', '7402657777', 'IDR', 20490000, 'Paid Inv. No : 0567-2023', '', 'harapanmadani@gmail.com', 'LLG', '0', '0', '2023-09-06', 40, '2024-04-19 07:29:14'),
(163, 'CV. HARAPAN MADANI UTAMA', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'HARAPAN MADANI UTAMA CV', '7402657777', 'IDR', 2058000, 'Paid Inv. No : 0564-2023', '', 'harapanmadani@gmail.com', 'LLG', '0', '0', '2023-09-06', 40, '2024-04-19 07:29:14'),
(164, 'SAHABAT', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'NGADIRIN', '6840342024', 'IDR', 2850000, 'Paid Inv. No : P-SHT-08/23/13', '', 'sahabat@gmail.com', 'LLG', '0', '0', '2023-09-06', 40, '2024-04-19 07:29:14'),
(165, 'MULIATU RODIAH', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'MULIATU RODIAH', '7630084363', 'IDR', 1500000, 'Fee Perbaikan Panduan Mutu LSP TMMIN 21 Agustus 2023', '', 'muliatu@gmail.com', 'LLG', '0', '0', '2023-09-06', 40, '2024-04-19 07:29:14'),
(166, 'SAEFUDIN', 'PERMATA', '0', '0', 0, 'SAEFUDIN', '4101938536', 'IDR', 3900000, 'Honor Trainer Shortcourse Servo & Inventer 21-25 Agustus 2023', '', 'saefudin@gmail.com', 'OVB', '0', '0', '2023-09-06', 40, '2024-04-19 07:29:14'),
(167, 'YAYASAN TOYOTA INDONESIA', 'PERMATA', '0', '0', 0, 'YAYASAN TOYOTA INDONESIA', '0702820073', 'IDR', 1746109053, 'Termin 3 Budget Operasional AKTI Sept - Des 23', '', 'yti@gmail.com', 'OVB', '0', '0', '2023-09-06', 40, '2024-04-19 07:29:14'),
(168, 'AFIEN WIBHAWA', 'PERMATA', '0', '0', 0, 'AFIEN WIBHAWA', '3110329759', 'IDR', 1125000, 'Reimb. Benchmark Dtech Engineering dan AII 20-21 Agust 23', '', 'afien@gmail.com', 'OVB', '0', '0', '2023-09-07', 41, '2024-04-19 07:29:15'),
(169, 'DJATMIKO EDI SUKATON', 'PERMATA', '0', '0', 0, 'DJATMIKO EDI SUKATON', '0201207304', 'IDR', 975000, 'Reimb. Benchmark Dtech Engineering dan AII 20-21 Agust 23', '', 'djatmiko@gmail.com', 'OVB', '0', '0', '2023-09-07', 41, '2024-04-19 07:29:15'),
(170, 'PT. CAHAYA INTI PUTRA SEJAHTERA', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'PT. CAHAYA INTI PUTRA SEJAHTERA', '7080228800', 'IDR', 7996002, 'Paid Inv. No : J32308009560', '', 'cahayainti@gmail.com', 'LLG', '0', '0', '2023-09-07', 41, '2024-04-19 07:29:15'),
(171, 'CV. NITASHI RIZKADA ', 'PERMATA', '0', '0', 0, 'CV. NITASHI RIZKADA ', '0970450300', 'IDR', 2120100, 'Paid Inv. No : 00090/NR/VIII/23', '', 'nitashi@gmail.com', 'OVB', '0', '0', '2023-09-07', 41, '2024-04-19 07:29:15'),
(172, 'CV. NITASHI RIZKADA ', 'PERMATA', '0', '0', 0, 'CV. NITASHI RIZKADA ', '0970450300', 'IDR', 509490, 'Paid Inv. No : 00089/NR/VIII/23', '', 'nitashi@gmail.com', 'OVB', '0', '0', '2023-09-07', 41, '2024-04-19 07:29:15'),
(173, 'CV. NITASHI RIZKADA ', 'PERMATA', '0', '0', 0, 'CV. NITASHI RIZKADA ', '0970450300', 'IDR', 2394270, 'Paid Inv. No : 00092/NR/VIII/23', '', 'nitashi@gmail.com', 'OVB', '0', '0', '2023-09-07', 41, '2024-04-19 07:29:15'),
(174, 'CV. NITASHI RIZKADA ', 'PERMATA', '0', '0', 0, 'CV. NITASHI RIZKADA ', '0970450300', 'IDR', 2646906, 'Paid Inv. No : 00091/NR/VIII/23', '', 'nitashi@gmail.com', 'OVB', '0', '0', '2023-09-07', 41, '2024-04-19 07:29:15'),
(175, 'CIPTA GRAFIKA', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'FATHI BAWAZIER', '1090817775', 'IDR', 731000, 'Paid Inv. No : R230815', '', 'ciptagrafika@gmail.com', 'LLG', '0', '0', '2023-09-07', 41, '2024-04-19 07:29:15'),
(176, 'HOLLAND BAKERY', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'PT MUSTIKA CITRA RASA', '3721771979', 'IDR', 295700, 'Paid Inv. No : KRWSOT2308-100160', '', 'holland@gmail.com', 'LLG', '0', '0', '2023-09-07', 41, '2024-04-19 07:29:15'),
(177, 'CV. JAPA', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'M. RACHMAD', '2750012534', 'IDR', 68266800, 'Paid Inv. No : 135', '', 'japa@gmail.com', 'LLG', '0', '0', '2023-09-07', 41, '2024-04-19 07:29:15'),
(178, 'BPJSKES MAHASISWA AKTI', 'BNI', 'KP SUDIRMAN', 'JAKARTA', 90010, 'PBPU Kolektif - Yayasan Toyota Indonesia', '8888890001311756', 'IDR', 4200000, 'Iuran BPJS Kesehatan Mahasiswa AKTI September 2023', '', 'bpjs@gmail.com', 'LLG', '0', '0', '2023-09-07', 41, '2024-04-19 07:29:15'),
(179, 'BPJSKES KARYAWAN YTI', 'BNI', 'KP SUDIRMAN', 'JAKARTA', 90010, 'YAYASAN TOYOTA INDONESIA', '8888890001311769', 'IDR', 4189385, 'Iuran BPJS Kesehatan Karyawan YTI September 2023', '', 'bpjs@gmail.com', 'LLG', '0', '0', '2023-09-07', 41, '2024-04-19 07:29:15'),
(180, 'BPJSTK', 'BNI', 'KP SUDIRMAN', 'JAKARTA', 90010, 'EPS BPJS TK', '418019823000', 'IDR', 6319006, 'Iuran BPJSTK Karyawan YTI September 2023', '', 'bpjstk@gmail.com', 'LLG', '0', '0', '2023-09-07', 41, '2024-04-19 07:29:15'),
(181, 'M. KHAMDANI', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'M. KHAMDANI', '7045056023', 'IDR', 2250000, 'Suspense Petty Cash Asrama Sept 2023', '', 'khamdani@gmail.com', 'LLG', '0', '0', '2023-09-07', 41, '2024-04-19 07:29:15'),
(182, 'MULYANDI', 'BNI', 'KP SUDIRMAN', 'JAKARTA', 90010, 'MULYANDI', '0001718599', 'IDR', 967812, 'Honor Pelatih Drumband Tambahan dan Peminjaman Alat Tiup', '', 'mulyandi@gmail.com', 'LLG', '0', '0', '2023-09-07', 41, '2024-04-19 07:29:15'),
(183, 'DINA KARTIKA RAYA', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'DINA KARTIKA RAYA', '1420016013137', 'IDR', 4400000, 'Reimburse Biaya Pendaftaran HAKI & Materai', '', 'dina@gmail.com', 'LLG', '0', '0', '2023-09-07', 41, '2024-04-19 07:29:15'),
(184, 'RIZKI DWI AFRIANTO', 'PERMATA', '0', '0', 0, 'RIZKI DWI AFRIANTO', '1224913970', 'IDR', 545000, 'Reimb. Biaya Overhead pengiriman barang project TEFA ke UNSADA', '', 'rizki@gmail.com', 'OVB', '0', '0', '2023-09-07', 41, '2024-04-19 07:29:15'),
(185, 'PT ADISIMA PUTRA UTAMA', 'BRI', 'JKT PO', 'JAKARTA', 20307, 'PT ADISIMA PUTRA UTAMA', '011601111033565', 'IDR', 51351020, 'Paid Inv. No : 002/WP.33/CTR-AKTI/IX/2023', '', 'warung33spesialpepeskrw@gmail.com', 'LLG', '0', '0', '2023-09-21', 42, '2024-04-19 07:29:15'),
(186, 'PT. PAKAR UTAMA ', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'PT. PAKAR UTAMA ', '4493033738', 'IDR', 68546100, 'Paid Inv. No : KR.08.23.003 dan KR.08.23.013', '', 'pakar@gmail.com', 'LLG', '0', '0', '2023-09-21', 42, '2024-04-19 07:29:15'),
(187, 'HOLLAND BAKERY', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'PT MUSTIKA CITRA RASA', '3721771979', 'IDR', 574600, 'Paid Inv. No : KRWSOT2308-100553', '', 'holland@gmail.com', 'LLG', '0', '0', '2023-09-21', 42, '2024-04-19 07:29:15'),
(188, 'CV. NITASHI RIZKADA ', 'PERMATA', '0', '0', 0, 'CV. NITASHI RIZKADA ', '0970450300', 'IDR', 7992000, 'Paid Inv. No : 00097/NR/VIII/23', '', 'nitashi@gmail.com', 'OVB', '0', '0', '2023-09-21', 42, '2024-04-19 07:29:15'),
(189, 'CV. NITASHI RIZKADA ', 'PERMATA', '0', '0', 0, 'CV. NITASHI RIZKADA ', '0970450300', 'IDR', 1581750, 'Paid Inv. No : 00087/NR/VIII/23', '', 'nitashi@gmail.com', 'OVB', '0', '0', '2023-09-21', 42, '2024-04-19 07:29:15'),
(190, 'RAYSA INDAH BERLIANI', 'PERMATA', '0', '0', 0, 'RAYSA INDAH BERLIANI', '4176284558', 'IDR', 13000000, 'Pemberian Reward Pemenang dan Finalis IoT Sangapore', '', 'raysaindahberliani@gmail.com', 'OVB', '0', '0', '2023-09-21', 42, '2024-04-19 07:29:15'),
(191, 'MUHAMMAD RUSYDI', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'MUHAMMAD RUSYDI', '5210825829', 'IDR', 234000, 'Transfer Ulang Atas Honor Penguji Tugas Akhir', '', 'rusydi@gmail.com', 'LLG', '0', '0', '2023-09-21', 42, '2024-04-19 07:29:15'),
(192, 'HOTEL MERCURE', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'PT. KARAWANG CITY DEVELOPMENT', '1093030072', 'IDR', 5063180, 'Transfer Ulang Paid Inv. No : acc.inv/2023/07/0064', '', 'mercure@gmail.com', 'LLG', '0', '0', '2023-09-21', 42, '2024-04-19 07:29:15'),
(193, 'HOTEL MERCURE', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'PT. KARAWANG CITY DEVELOPMENT', '1093030072', 'IDR', 738100, 'Transfer Ualng Paid Inv. No : AR-0171168-INV', '', 'mercure@gmail.com', 'LLG', '0', '0', '2023-09-21', 42, '2024-04-19 07:29:15'),
(194, 'MELLINDA EFENDI', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'MELLINDA EFENDI', '6785059097', 'IDR', 4670400, 'Transfer Ulang Pesangon Karyawan YTI ', '', 'mellinda@gmail.com', 'LLG', '0', '0', '2023-09-21', 42, '2024-04-19 07:29:15'),
(195, 'HOLLAND BAKERY', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'PT MUSTIKA CITRA RASA', '3721771979', 'IDR', 8372300, 'Paid Inv. No : KRWSOT2308-100379', '', 'holland@gmail.com', 'LLG', '0', '0', '2023-09-21', 42, '2024-04-19 07:29:15'),
(196, 'KEBULI CINTA', 'CIMB NIAGA', 'JAKARTA', 'JAKARTA', 220026, 'WELI NUGROHO', '702129031500', 'IDR', 2600000, 'Pembelian Lunch Training TPS SW, Karakuri & NAL 22 Agustus 23', '', 'kebulicinta@gmail.com', 'LLG', '0', '0', '2023-09-21', 42, '2024-04-19 07:29:15'),
(197, 'CV. NITASHI RIZKADA ', 'PERMATA', '0', '0', 0, 'CV. NITASHI RIZKADA ', '0970450300', 'IDR', 11348640, 'Paid Inv. No : 00058/NR/VI/23', '', 'nitashi@gmail.com', 'OVB', '0', '0', '2023-09-21', 42, '2024-04-19 07:29:15'),
(198, 'CV. NITASHI RIZKADA ', 'PERMATA', '0', '0', 0, 'CV. NITASHI RIZKADA ', '0970450300', 'IDR', 12404250, 'Paid Inv. No : 00048/NR/VI/23', '', 'nitashi@gmail.com', 'OVB', '0', '0', '2023-09-21', 42, '2024-04-19 07:29:15'),
(199, 'MURSYID', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'Ir. MURSYID', '4281416400', 'IDR', 4680000, 'Honor Trainer Training Manager Develop. Program PT Sugity 5-8 Sept 23', '', 'mursyid@gmail.com', 'LLG', '0', '0', '2023-09-21', 42, '2024-04-19 07:29:15'),
(200, 'EDY SUSILO DARMAWAN', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'EDY SUSILO DARMAWAN', '2761062745', 'IDR', 1170000, 'Honor Trainer Training Manager Develop. Program PT Sugity 5-8 Sept 23', '', 'edy@gmail.com', 'LLG', '0', '0', '2023-09-21', 42, '2024-04-19 07:29:15'),
(201, 'ANTHONIUS HERADIAN', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'ANTHONIUS HERADIAN', '2291474448', 'IDR', 1170000, 'Honor Trainer Training Manager Develop. Program PT Sugity 5-8 Sept 23', '', 'heradian@gmail.com', 'LLG', '0', '0', '2023-09-21', 42, '2024-04-19 07:29:15'),
(202, 'MO DANIEL SETIAWAN', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'MO DANIEL SETIAWAN', '6590887755', 'IDR', 2340000, 'Honor Trainer Training Manager Develop. Program PT Sugity 5-8 Sept 23', '', 'daniel@gmail.com', 'LLG', '0', '0', '2023-09-21', 42, '2024-04-19 07:29:15'),
(203, 'RACHMASARI', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'RACHMASARI', '0881096071', 'IDR', 975000, 'Honor Fasilitator Training Manager Develop Program PT Sugity 5-8 Sept 23', '', 'rachmasari@gmail.com', 'LLG', '0', '0', '2023-09-21', 42, '2024-04-19 07:29:15'),
(204, 'IRFAN MAULANA', 'PERMATA', '0', '0', 0, 'IRFAN MAULANA', '1221102394', 'IDR', 585000, 'Honor Fasilitator Training Manager Develop Program PT Sugity 5-8 Sept 23', '', 'irfan@gmail.com', 'OVB', '0', '0', '2023-09-21', 42, '2024-04-19 07:29:15'),
(205, 'RISKY AGUNG TARIGAN', 'BSI', 'KANTOR PUSAT', 'JAKARTA', 4510017, 'RISKY AGUNG TARIGAN', '7153717723', 'IDR', 195000, 'Honor Fasilitator Training Manager Develop. Program PT Sugity 5-8 Sept 23', '', 'risky@gamail.com', 'LLG', '0', '0', '2023-09-21', 42, '2024-04-19 07:29:15'),
(206, 'NIKEN PUTRI SEKARINI', 'PERMATA', '0', '0', 0, 'NIKEN PUTRI SEKARINI', '9923821624', 'IDR', 487500, 'Honor Fasilitator Training Manager Develop Program PT Sugity 5-8 Sept 23 ', '', 'niken@gmail.com', 'OVB', '0', '0', '2023-09-21', 42, '2024-04-19 07:29:15'),
(207, 'HERU SUNARTO', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'HERU SUNARTO', '1330014156392', 'IDR', 1560000, 'Honor Trainer TL Role PT TBINA 8-9 Sept 23', '', 'heru@gmail.com', 'LLG', '0', '0', '2023-09-21', 42, '2024-04-19 07:29:15'),
(208, 'DEDI AMBARI', 'BANK JABAR', 'MENARA BANK ', 'BANDUNG', 1100019, 'DEDI AMBARI', '0072535601100', 'IDR', 1560000, 'Honor Trainer TL Role PT TBINA 8-9 Sept 23', '', 'dedi@gmail.com', 'LLG', '0', '0', '2023-09-21', 42, '2024-04-19 07:29:15'),
(209, 'RACHMASARI', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'RACHMASARI', '0881096071', 'IDR', 487500, 'Honor Fasilitator TL Role PT TBINA 8-9 Sept 23', '', 'rachmasari@gmail.com', 'LLG', '0', '0', '2023-09-21', 42, '2024-04-19 07:29:15'),
(210, 'RIDWAN GOZALI', 'PERMATA', '0', '0', 0, 'RIDWAN GOZALI', '4102410551', 'IDR', 390000, 'Honor Fasilitator TL Role PT TBINA 8-9 Sept 23', '', 'ridwan@gmail.com', 'OVB', '0', '0', '2023-09-21', 42, '2024-04-19 07:29:15'),
(211, 'LIVIA GINTA RISNA', 'PERMATA', '0', '0', 0, 'LIVIA GINTA RISNA', '4178085919', 'IDR', 243750, 'Honor Fasilitator TL Role PT TBINA 8-9 Sept 23', '', 'livia@gmail.com', 'OVB', '0', '0', '2023-09-21', 42, '2024-04-19 07:29:15'),
(212, 'FATYADI RAMSAF', 'PERMATA', '0', '0', 0, 'FATYADI RAMSAF', '9897831322', 'IDR', 3775000, 'Apresiasi Moderator Training Eksternal LCD Agust 23', '', 'fatyadi@gmail.com', 'OVB', '0', '0', '2023-09-21', 42, '2024-04-19 07:29:15'),
(213, 'KHALIL GHIBRAN JIWONO', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'KHALIL GHIBRAN JIWONO', '1730001867820', 'IDR', 780000, 'Transfer Ulang Atas Honor Trainer NAL 31 Agust - 1 Sept 23', '', 'khalil@gmail.com', 'LLG', '0', '0', '2023-09-21', 42, '2024-04-19 07:29:15'),
(214, 'IGNATIUS SRIKUNCORO', 'BNI', 'KP SUDIRMAN', 'JAKARTA', 90010, 'IGNATIUS SRIKUNCORO', '1760306548', 'IDR', 780000, 'Transfer Ulang Honor Trainer NAL 29-30 Agust 23', '', 'igna@gmail.com', 'LLG', '0', '0', '2023-09-21', 42, '2024-04-19 07:29:15'),
(215, 'DINA KARTIKA RAYA', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'DINA KARTIKA RAYA', '1420016013137', 'IDR', 146250, 'Transfer Ulang Fee Fasilitator Shortcourse Basic Pneumatic 24 -28 Juli 2023', '', 'dina@gmail.com', 'LLG', '0', '0', '2023-09-21', 42, '2024-04-19 07:29:15');
INSERT INTO `tbl_payment_v` (`id_payment_v`, `nama_vendor`, `bank_name`, `address_bank`, `bank_city`, `bank_code`, `account_name`, `account_number`, `currency`, `amount_payment`, `description`, `description2`, `email_vendor`, `transaction_type`, `resident_status`, `citizen_status`, `payment_date`, `id_payment_date`, `create_date`) VALUES
(216, 'DINA KARTIKA RAYA', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'DINA KARTIKA RAYA', '1420016013137', 'IDR', 404000, 'Transfer Ulang Reimb. Bantex dan Pengiriman Invoice Shortcourse', '', 'dina@gmail.com', 'LLG', '0', '0', '2023-09-21', 42, '2024-04-19 07:29:15'),
(217, 'Liera Firdha Sesarianti', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'Liera Firdha Sesarianti', '7045062791', 'IDR', 4291908, 'Honor Magang September 2023', '', 'liera@gmail.com', 'LLG', '0', '0', '2023-09-25', 43, '2024-04-19 07:42:40'),
(218, 'DEVI KARTIKA SARI', 'PERMATA', '0', '0', 0, 'DEVI KARTIKA SARI', '9915804826', 'IDR', 3355491, 'Honor Magang September 2023', '', 'devi@gmail.com', 'OVB', '0', '0', '2023-09-25', 43, '2024-04-19 07:42:40'),
(219, 'FITRIANI NUR AFFIFAH', 'BRI', 'JKT KPO', 'JAKARTA', 20307, 'FITRIANI NUR AFFIFAH', '424201011593533', 'IDR', 3424855, 'Honor Magang September 2023', '', 'fitriani@gmail.com', 'LLG', '0', '0', '2023-09-25', 43, '2024-04-19 07:42:40'),
(220, 'SYAFITRI FADILLAH', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'SYAFITRI FADILLAH', '1092560877', 'IDR', 3407514, 'Honor Magang September 2023', '', 'syafitri@gmail.com', 'LLG', '0', '0', '2023-09-25', 43, '2024-04-19 07:42:40'),
(221, 'PT. MIRA PUNCAK KEMUNING', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'PT. MIRA PUNCAK KEMUNING', '1290012422339', 'IDR', 4959000, 'Paid Kwitansi No : 26', '', 'mira@gmail.com', 'LLG', '0', '0', '2023-09-27', 44, '2024-04-19 07:42:40'),
(222, 'CV. BUMIAYU SUKSES MANDIRI', 'BRI', 'JKT KPO', 'JAKARTA', 20307, 'CV. BUMIAYU SUKSES MANDIRI', '044401001417303', 'IDR', 1230000, 'Paid Inv. No : 01/BSM-INV/IX/23', '', 'bumiayu@gmail.com', 'LLG', '0', '0', '2023-09-27', 44, '2024-04-19 07:42:40'),
(223, 'CV. NITASHI RIZKADA ', 'PERMATA', '0', '0', 0, 'CV. NITASHI RIZKADA ', '0970450300', 'IDR', 4287930, 'Paid Inv. No : 00099/NR/IX/23', '', 'nitashi@gmail.com', 'OVB', '0', '0', '2023-09-27', 44, '2024-04-19 07:42:40'),
(224, 'CV. NITASHI RIZKADA ', 'PERMATA', '0', '0', 0, 'CV. NITASHI RIZKADA ', '0970450300', 'IDR', 4348425, 'Paid inv. No : 00100/NR/IX/23', '', 'nitashi@gmail.com', 'OVB', '0', '0', '2023-09-27', 44, '2024-04-19 07:42:40'),
(225, 'HOLLAND BAKERY', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'PT MUSTIKA CITRA RASA', '3721771979', 'IDR', 393100, 'Paid Inv. No : KRWSOTS2309-100048', '', 'holland@gmail.com', 'LLG', '0', '0', '2023-09-27', 44, '2024-04-19 07:42:40'),
(226, 'CV. JAPA', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'M. RACHMAD', '2750012534', 'IDR', 584080, 'Paid Inv. No : 140', '', 'japa@gmail.com', 'LLG', '0', '0', '2023-09-27', 44, '2024-04-19 07:42:40'),
(227, 'INTAN AULIA HAPSARI', 'BNI', 'KP SUDIRMAN', 'JAKARTA', 90010, 'INTAN AULIA HAPSARI', '0835218555', 'IDR', 7227273, 'Uang Saku Magang & Rapel Mei-Sept 23', '', 'intan@gmail.com', 'LLG', '0', '0', '2023-09-27', 44, '2024-04-19 07:42:40'),
(228, 'ELFANO SULTAN SYAHBANA', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'ELFANO SULTAN SYAHBANA', '1400022387352', 'IDR', 7227273, 'Uang Saku Magang & Rapel Mei-Sept 2023', '', 'elfano@gmail.com', 'LLG', '0', '0', '2023-09-27', 44, '2024-04-19 07:42:40'),
(229, 'DAPUR NYI ITEUNG', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'SUNARTO', '1320004733383', 'IDR', 800000, 'Pembelian Lunch Training NAL 15 September 2023 ', '', 'dapur@gmail.com', 'LLG', '0', '0', '2023-09-27', 44, '2024-04-19 07:42:40'),
(230, 'CV. HARAPAN MADANI UTAMA', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'HARAPAN MADANI UTAMA CV', '7402657777', 'IDR', 3430000, 'Paid Inv. No : 0573-2023', '', 'harapanmadani@gmail.com', 'LLG', '0', '0', '2023-09-27', 44, '2024-04-19 07:42:40'),
(231, 'PT SYAKIRA BERKAH JAYA', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'PT SYAKIRA BERKAH JAYA', '1550012281518', 'IDR', 1097600, 'Paid Inv. No : 004/TLC/KWT-FIA.SBJ/IX/2023', '', 'syakira@gmail.com', 'LLG', '0', '0', '2023-09-27', 44, '2024-04-19 07:42:40'),
(232, 'SAHABAT', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'NGADIRIN', '6840342024', 'IDR', 19562760, 'Paid Inv. No : P-SHT-08/23/29', '', 'sahabat@gmail.com', 'LLG', '0', '0', '2023-09-27', 44, '2024-04-19 07:42:40'),
(233, 'KEBULI CINTA', 'CIMB NIAGA', 'JAKARTA', 'JAKARTA', 220026, 'WELI NUGROHO', '702129031500', 'IDR', 900000, 'Pembelian Lunch Training NAL 8 Sept 23', '', 'kebulicinta@gmail.com', 'LLG', '0', '0', '2023-09-27', 44, '2024-04-19 07:42:40'),
(234, 'HOLLAND BAKERY', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'PT MUSTIKA CITRA RASA', '3721771979', 'IDR', 4624200, 'Paid Inv. No : KRWSOT2308-100515 dan 100108', '', 'holland@gmail.com', 'LLG', '0', '0', '2023-09-27', 44, '2024-04-19 07:42:40'),
(235, 'KEBULI CINTA', 'CIMB NIAGA', 'JAKARTA', 'JAKARTA', 220026, 'WELI NUGROHO', '702129031500', 'IDR', 2900000, 'Pemb. Lunch Training NAL & TJI 29 Agust-1 Sept 23', '', 'kebulicinta@gmail.com', 'LLG', '0', '0', '2023-09-27', 44, '2024-04-19 07:42:40'),
(236, 'CV. HARAPAN MADANI UTAMA', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'HARAPAN MADANI UTAMA CV', '7402657777', 'IDR', 3057600, 'Paid Inv. No : 0568-2023', '', 'harapanmadani@gmail.com', 'LLG', '0', '0', '2023-09-27', 44, '2024-04-19 07:42:40'),
(237, 'PT SYAKIRA BERKAH JAYA', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'PT SYAKIRA BERKAH JAYA', '1550012281518', 'IDR', 3077200, 'Paid Inv. No : 002/TLC/KWT-FIA.SBJ/IX/2023', '', 'syakira@gmail.com', 'LLG', '0', '0', '2023-09-27', 44, '2024-04-19 07:42:40'),
(238, 'HERU SUNARTO', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'HERU SUNARTO', '1330014156392', 'IDR', 1560000, 'Honor Trainer TL Role 15-16 Sept 23 ', '', 'heru@gmail.com', 'LLG', '0', '0', '2023-09-27', 44, '2024-04-19 07:42:40'),
(239, 'RIDWAN GOZALI', 'PERMATA', '0', '0', 0, 'RIDWAN GOZALI', '4102410551', 'IDR', 390000, 'Fasilitator Training TL Role 15-16 Sept 23 ', '', 'ridwan@gmail.com', 'OVB', '0', '0', '2023-09-27', 44, '2024-04-19 07:42:40'),
(240, 'LULU MAHERNI', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'LULU MAHERNI', '7635275847', 'IDR', 243750, 'Fasilitator Training TL Role 15-16 Sept 23', '', 'lulu@gmail.com', 'LLG', '0', '0', '2023-09-27', 44, '2024-04-19 07:42:40'),
(241, 'MURSYID', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'Ir. MURSYID', '4281416400', 'IDR', 2340000, 'Honor Trainer Supervisor Development Program PT. Sugity', '', 'mursyid@gmail.com', 'LLG', '0', '0', '2023-09-27', 44, '2024-04-19 07:42:40'),
(242, 'ALEX KURNIAWAN', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'ALEX KURNIAWAN', '1250012113585', 'IDR', 780000, 'Honor Trainer Supervisor Development Program PT. Sugity', '', 'alex@gmail.com', 'LLG', '0', '0', '2023-09-27', 44, '2024-04-19 07:42:40'),
(243, 'MUHAMAD JULIARTO', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'MUHAMAD JULIARTO', '5745101451', 'IDR', 780000, 'Honor Trainer Supervisor Development Program PT. Sugity', '', 'juliarto@gmail.com', 'LLG', '0', '0', '2023-09-27', 44, '2024-04-19 07:42:40'),
(244, 'MO DANIEL SETIAWAN', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'MO DANIEL SETIAWAN', '6590887755', 'IDR', 4680000, 'Honor Trainer Supervisor Development Program PT. Sugity', '', 'daniel@gmail.com', 'LLG', '0', '0', '2023-09-27', 44, '2024-04-19 07:42:40'),
(245, 'RACHMASARI', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'RACHMASARI', '0881096071', 'IDR', 975000, 'Fasilitator Training Supervisor Development Program PT. Sugity', '', 'rachmasari@gmail.com', 'LLG', '0', '0', '2023-09-27', 44, '2024-04-19 07:42:40'),
(246, 'RISKY AGUNG TARIGAN', 'BSI', 'KANTOR PUSAT', 'JAKARTA', 4510017, 'RISKY AGUNG TARIGAN', '7153717723', 'IDR', 390000, 'Fasilitator Training Supervisor Development Program PT. Sugity', '', 'risky@gamail.com', 'LLG', '0', '0', '2023-09-27', 44, '2024-04-19 07:42:40'),
(247, 'EFDI DERIAN DANI', 'PERMATA', '0', '0', 0, 'EFDI DERIAN DANI', '4186000930', 'IDR', 780000, 'Fasilitator Training Supervisor Development Program PT. Sugity', '', 'efdi@gmail.com', 'OVB', '0', '0', '2023-09-27', 44, '2024-04-19 07:42:40'),
(248, 'KHALIL GHIBRAN JIWONO', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'KHALIL GHIBRAN JIWONO', '1730001867820', 'IDR', 780000, 'Honor Trainer NAL 14-15 Sept 2023 ', '', 'khalil@gmail.com', 'LLG', '0', '0', '2023-09-27', 44, '2024-04-19 07:42:40'),
(249, 'MUHAMAD YUSUF RAHADI', 'PERMATA', '0', '0', 0, 'MUHAMAD YUSUF RAHADI', '1217045521', 'IDR', 780000, 'Honor Trainer NAL 14-15 Sept 2023', '', 'yusuf@gmail.com', 'OVB', '0', '0', '2023-09-27', 44, '2024-04-19 07:42:40'),
(250, 'KOPERASI KARYAWAN TOYOTA', 'PERMATA', '0', '0', 0, 'KOPERASI KARYAWAN TOYOTA', '0353529005', 'IDR', 9089696, 'Paid Inv. No : 6422/YTI-TIA/06/2023', '', 'kopkar@gmail.com', 'OVB', '0', '0', '2023-09-27', 44, '2024-04-19 07:42:40'),
(251, 'JUHARTONO', 'PERMATA', '0', '0', 0, 'JUHARTONO', '0358623387', 'IDR', 1560000, 'Honor Trainer TL Role 15-16 Sept 23 PT. TBINA', '', 'juhartono@gmail.com', 'OVB', '0', '0', '2023-09-27', 44, '2024-04-19 07:42:40'),
(252, 'CV. HARAPAN MADANI UTAMA', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'HARAPAN MADANI UTAMA CV', '7402657777', 'IDR', 9295000, 'Paid Inv. No : 0569-2023', '', 'harapanmadani@gmail.com', 'LLG', '0', '0', '2023-10-05', 45, '2024-04-19 07:42:40'),
(253, 'PT ADISIMA PUTRA UTAMA', 'BRI', 'JKT PO', 'JAKARTA', 20307, 'PT ADISIMA PUTRA UTAMA', '011601111033565', 'IDR', 294000, 'Paid Inv. No : 003/WP.33/CTR-AKTI/IX/2023', '', 'warung33spesialpepeskrw@gmail.com', 'LLG', '0', '0', '2023-10-05', 45, '2024-04-19 07:42:40'),
(254, 'PT ADISIMA PUTRA UTAMA', 'BRI', 'JKT PO', 'JAKARTA', 20307, 'PT ADISIMA PUTRA UTAMA', '011601111033565', 'IDR', 588000, 'Paid Inv. No : 003/WP.33/CTR-AKTI/IX/2023', '', 'warung33spesialpepeskrw@gmail.com', 'LLG', '0', '0', '2023-10-05', 45, '2024-04-19 07:42:40'),
(255, 'YANI PRANOTO', 'BSI', 'KANTOR PUSAT', 'JAKARTA', 4510017, 'YANI PRANOTO', '7234025960', 'IDR', 780000, 'Honor Trainer HPW JO 20 Sept 2023', '', 'yanip@gmail.com', 'LLG', '0', '0', '2023-10-05', 45, '2024-04-19 07:42:40'),
(256, 'ANDY RIYATNO', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'ANDY RIYATNO', '9000009790255', 'IDR', 390000, 'Honor Trainer TJI 31 Agus - 1 Sept 23', '', 'andy@gmail.com', 'LLG', '0', '0', '2023-10-05', 45, '2024-04-19 07:42:40'),
(257, 'SUGENG PRIHANTONO', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'SUGENG PRIHANTONO', '1320011177962', 'IDR', 390000, 'Honor Trainer TJI 31 Agus - 1 Sept 23', '', 'sugeng@gmail.com', 'LLG', '0', '0', '2023-10-05', 45, '2024-04-19 07:42:40'),
(258, 'AHMAD SAZALI', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'AHMAD SAZALI', '1200007174514', 'IDR', 390000, 'Honor Trainer TJI 31 Agus - 1 Sept 23', '', 'sazali@gmail.com', 'LLG', '0', '0', '2023-10-05', 45, '2024-04-19 07:42:40'),
(259, 'DASTA PERMANA', 'PERMATA', '0', '0', 0, 'DASTA PERMANA', '4124663437', 'IDR', 390000, 'Honor Trainer TJI 31 Agus - 1 Sept 23', '', 'dasta@gmail.com', 'OVB', '0', '0', '2023-10-05', 45, '2024-04-19 07:42:40'),
(260, 'ABDUL ROSYID PRIBADI', 'PERMATA', '0', '0', 0, 'ABDUL ROSYID PRIBADI', '0358978312', 'IDR', 1950000, 'Honor Trainer Karakuri 23 Sept 23', '', 'abdul@gmail.com', 'OVB', '0', '0', '2023-10-05', 45, '2024-04-19 07:42:40'),
(261, 'SUTRISNO', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'SUTRISNO', '1560000037335', 'IDR', 390000, 'Honor Trainer Basic TPS 14 Sept 23', '', 'sutrisno@gmail.com', 'LLG', '0', '0', '2023-10-05', 45, '2024-04-19 07:42:40'),
(262, 'TEGUH CAHYADI', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'TEGUH CAHYADI', '1320005112322', 'IDR', 390000, 'Honor Trainer Basic TPS 14 Sept 23', '', 'teguh@gmail.com', 'LLG', '0', '0', '2023-10-05', 45, '2024-04-19 07:42:40'),
(263, 'EDY SUSILO DARMAWAN', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'EDY SUSILO DARMAWAN', '2761062745', 'IDR', 1250000, 'Reimb. TA Seminar TPS RS Tegalrejo Semarang', '', 'edy@gmail.com', 'LLG', '0', '0', '2023-10-05', 45, '2024-04-19 07:42:40'),
(264, 'JUHARTONO', 'PERMATA', '0', '0', 0, 'JUHARTONO', '0358623387', 'IDR', 975000, 'Reimb. TA Seminar TPS RS Tegalrejo Semarang', '', 'juhartono@gmail.com', 'OVB', '0', '0', '2023-10-05', 45, '2024-04-19 07:42:40'),
(265, 'RACHMASARI', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'RACHMASARI', '0881096071', 'IDR', 1075000, 'Reimb. TA Seminar TPS RS Tegalrejo Semarang', '', 'rachmasari@gmail.com', 'LLG', '0', '0', '2023-10-05', 45, '2024-04-19 07:42:40'),
(266, 'MIETA RAMADHANINGTIYAS', 'PERMATA', '0', '0', 0, 'MIETA RAMADHANINGTIYAS', '4178093423', 'IDR', 975000, 'Apre. Tambahan PA TLC Sistem Jurnal Sept 23', '', 'mieta@gmail.com', 'OVB', '0', '0', '2023-10-05', 45, '2024-04-19 07:42:40'),
(267, 'LIVIA GINTA RISNA', 'PERMATA', '0', '0', 0, 'LIVIA GINTA RISNA', '4178085919', 'IDR', 487500, 'Apre. Tambahan PA TLC Kordinator Program Admin Sept 23', '', 'livia@gmail.com', 'OVB', '0', '0', '2023-10-05', 45, '2024-04-19 07:42:40'),
(268, 'RACHMASARI', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'RACHMASARI', '0881096071', 'IDR', 2067500, 'Reimb. Tiket Pesawat Seminar TPS di RS Telogorejo Semarang', '', 'rachmasari@gmail.com', 'LLG', '0', '0', '2023-10-05', 45, '2024-04-19 07:42:40'),
(269, 'RACHMASARI', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'RACHMASARI', '0881096071', 'IDR', 2326500, 'Reimb. Hotel Edy Seminar TPS di RS Telogorejo Semarang', '', 'rachmasari@gmail.com', 'LLG', '0', '0', '2023-10-05', 45, '2024-04-19 07:42:40'),
(270, 'MULIATU RODIAH', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'MULIATU RODIAH', '7630084363', 'IDR', 1462500, 'Fee Project Perbaikan Panduan Mutu LSP TMMIN15 Sept 23', '', 'muliatu@gmail.com', 'LLG', '0', '0', '2023-10-05', 45, '2024-04-19 07:42:40'),
(271, 'ABDUL ROSYID PRIBADI', 'PERMATA', '0', '0', 0, 'ABDUL ROSYID PRIBADI', '0358978312', 'IDR', 1560000, 'Honor Trainer Karakuri PT Infinity 13 Sept 23', '', 'abdul@gmail.com', 'OVB', '0', '0', '2023-10-05', 45, '2024-04-19 07:42:40'),
(272, 'HARI SUNARTO', 'PERMATA', '0', '0', 0, 'HARI SUNARTO', '1221127192', 'IDR', 585000, 'Honor Fasilitator Karakuri PT Infinity 13 Sept 23', '', 'hari@gmail.com', 'OVB', '0', '0', '2023-10-05', 45, '2024-04-19 07:42:40'),
(273, 'MURSYID', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'Ir. MURSYID', '4281416400', 'IDR', 5910938, 'Honor Consultant Assessment Talent Develop Prog PT Sugity', '', 'mursyid@gmail.com', 'LLG', '0', '0', '2023-10-05', 45, '2024-04-19 07:42:40'),
(274, 'MUHAMMAD YUSUF', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'MUHAMMAD YUSUF', '4130044391', 'IDR', 3839063, 'Honor Consultant Assessment Talent Develop Prog PT Sugity ', '', 'myusuf@gmail.com', 'LLG', '0', '0', '2023-10-05', 45, '2024-04-19 07:42:40'),
(275, 'RACHMASARI', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'RACHMASARI', '0881096071', 'IDR', 3656250, 'Honor Consultant Assessment Talent Develop Prog PT Sugity ', '', 'rachmasari@gmail.com', 'LLG', '0', '0', '2023-10-05', 45, '2024-04-19 07:42:40'),
(276, 'IRFAN MAULANA', 'PERMATA', '0', '0', 0, 'IRFAN MAULANA', '1221102394', 'IDR', 487500, 'Honor Consultant Assessment Talent Develop Prog PT Sugity ', '', 'irfan@gmail.com', 'OVB', '0', '0', '2023-10-05', 45, '2024-04-19 07:42:40'),
(277, 'RIYADI', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'RIYADI', '1200007055838', 'IDR', 390000, 'Honor Trainer 5R 6 September 2023', '', 'riyadi@gmail.com', 'LLG', '0', '0', '2023-10-05', 45, '2024-04-19 07:42:40'),
(278, 'IGNATIUS SRIKUNCORO', 'BNI', 'KP SUDIRMAN', 'JAKARTA', 90010, 'IGNATIUS SRIKUNCORO', '1760306548', 'IDR', 1560000, 'Honor Trainer NAL 7-8 Sept 23', '', 'igna@gmail.com', 'LLG', '0', '0', '2023-10-05', 45, '2024-04-19 07:42:40'),
(279, 'SAMAR KANDI', 'BSI', 'KANTOR PUSAT', 'JAKARTA', 4510017, 'SAMAR KANDI', '7266269430', 'IDR', 1560000, 'Honor Trainer QC Circle Leader 5-6 Sept 23', '', 'kandi@gmail.com', 'LLG', '0', '0', '2023-10-05', 45, '2024-04-19 07:42:40'),
(280, 'MURSYID', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'Ir. MURSYID', '4281416400', 'IDR', 235000, 'Reimb. Lunch meeting Wadir 2 dengan disnaker', '', 'mursyid@gmail.com', 'LLG', '0', '0', '2023-10-05', 45, '2024-04-19 07:42:40'),
(281, 'SYAFITRI FADILLAH', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'SYAFITRI FADILLAH', '1092560877', 'IDR', 146250, 'Fee Fasilitator Short Course Circuit & Trouble 4-8 Sept 23', '', 'syafitri@gmail.com', 'LLG', '0', '0', '2023-10-05', 45, '2024-04-19 07:42:40'),
(282, 'SUHERMANTO', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'SUHERMANTO', '0060006962058', 'IDR', 3900000, 'Honor Trainer Circuit & Trouble 4-8 Sept 23', '', 'suhermanto@gmail.com', 'LLG', '0', '0', '2023-10-05', 45, '2024-04-19 07:42:40'),
(283, 'PT. DEANOVA KARYA MANDIRI', 'BNI', 'KP SUDIRMAN', 'JAKARTA', 90010, 'YANI SURTIANI', '0228808758', 'IDR', 59047940, 'Paid Inv. No : 2335/NSA/IX/2023', '', 'yanisurtiani3011@gmail.com', 'LLG', '0', '0', '2023-10-05', 45, '2024-04-19 07:42:40'),
(284, 'PT JURNAL CONSULTING INDONESIA', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'PT JURNAL CONSULTING INDONESIA', '6040877981', 'IDR', 12553535, 'Paid Performa Invoice No : 1867367', '', 'jurnal@gmail.com', 'LLG', '0', '0', '2023-10-05', 45, '2024-04-19 07:42:40'),
(285, 'MULYANDI', 'BNI', 'KP SUDIRMAN', 'JAKARTA', 90010, 'MULYANDI', '0001718599', 'IDR', 2143750, 'Honor Pelatih Drumband Event Undokai PT. TMMIN', '', 'mulyandi@gmail.com', 'LLG', '0', '0', '2023-10-05', 45, '2024-04-19 07:42:40'),
(286, 'RAYSA INDAH BERLIANI', 'PERMATA', '0', '0', 0, 'RAYSA INDAH BERLIANI', '4176284558', 'IDR', 4400000, 'Cash on Hand', '', 'raysaindahberliani@gmail.com', 'OVB', '0', '0', '2023-10-05', 45, '2024-04-19 07:42:40'),
(287, 'MUHAMAD JULIARTO', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'MUHAMAD JULIARTO', '5745101451', 'IDR', 1150000, 'Reimb. Pendaftaran Kegiatan Lomba Welding', '', 'juliarto@gmail.com', 'LLG', '0', '0', '2023-10-05', 45, '2024-04-19 07:42:40'),
(288, 'DINA KARTIKA RAYA', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'DINA KARTIKA RAYA', '1420016013137', 'IDR', 523521, 'Reimb. TA Undangan Evaluasi Pengembangan Evaluasi Perpus PT', '', 'dina@gmail.com', 'LLG', '0', '0', '2023-10-05', 45, '2024-04-19 07:42:40'),
(289, 'BPJSKES KARYAWAN YTI', 'BNI', 'KP SUDIRMAN', 'JAKARTA', 90010, 'YAYASAN TOYOTA INDONESIA', '8888890001311769', 'IDR', 4189385, 'Iuran BPJS Kesehatan Karyawan YTI Okt 23', '', 'bpjs@gmail.com', 'LLG', '0', '0', '2023-10-05', 45, '2024-04-19 07:42:40'),
(290, 'BPJSKES MAHASISWA AKTI', 'BNI', 'KP SUDIRMAN', 'JAKARTA', 90010, 'PBPU Kolektif - Yayasan Toyota Indonesia', '8888890001311756', 'IDR', 4130000, 'Iuran BPJS Kesehatan Mahasiswa Okt 23', '', 'bpjs@gmail.com', 'LLG', '0', '0', '2023-10-05', 45, '2024-04-19 07:42:40'),
(291, 'BPJSTK', 'BNI', 'KP SUDIRMAN', 'JAKARTA', 90010, 'EPS BPJS TK', '418019823000', 'IDR', 6319006, 'Iuran BPJSTK Karyawan YTI Okt 23', '', 'bpjstk@gmail.com', 'LLG', '0', '0', '2023-10-05', 45, '2024-04-19 07:42:40'),
(292, 'INTAN AULIA HAPSARI', 'BNI', 'KP SUDIRMAN', 'JAKARTA', 90010, 'INTAN AULIA HAPSARI', '0835218555', 'IDR', 420000, 'Rapel Penggantian Uang Makan Pemagangan ITS', '', 'intan@gmail.com', 'LLG', '0', '0', '2023-10-12', 46, '2024-04-19 07:42:40'),
(293, 'ELFANO SULTAN SYAHBANA', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'ELFANO SULTAN SYAHBANA', '1400022387352', 'IDR', 420000, 'Rapel Penggantian Uang Makan Pemagangan ITS', '', 'elfano@gmail.com', 'LLG', '0', '0', '2023-10-12', 46, '2024-04-19 07:42:40'),
(294, 'EDY SUSILO DARMAWAN', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'EDY SUSILO DARMAWAN', '2761062745', 'IDR', 1175000, 'Reimb. TA Benchmark YTI AKTI Dtech Engineering ', '', 'edy@gmail.com', 'LLG', '0', '0', '2023-10-12', 46, '2024-04-19 07:42:40'),
(295, 'M. KHAMDANI', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'M. KHAMDANI', '7045056023', 'IDR', 2250000, 'Suspense Petty Cash Asrama Okt 23', '', 'khamdani@gmail.com', 'LLG', '0', '0', '2023-10-12', 46, '2024-04-19 07:42:40'),
(296, 'CV. JAPA', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'M. RACHMAD', '2750012534', 'IDR', 9032660, 'Tagihan Galon, Air Mineral & Gas Per 21 Agust-10 Sept 23', '', 'japa@gmail.com', 'LLG', '0', '0', '2023-10-12', 46, '2024-04-19 07:42:40'),
(297, 'CV. NITASHI RIZKADA ', 'PERMATA', '0', '0', 0, 'CV. NITASHI RIZKADA ', '0970450300', 'IDR', 8130750, 'Paid Inv. No : 00082/NR/VIII/23', '', 'nitashi@gmail.com', 'OVB', '0', '0', '2023-10-12', 46, '2024-04-19 07:42:40'),
(298, 'CV. NITASHI RIZKADA ', 'PERMATA', '0', '0', 0, 'CV. NITASHI RIZKADA ', '0970450300', 'IDR', 610500, 'Paid Inv. No : 00086/NR/VIII/23', '', 'nitashi@gmail.com', 'OVB', '0', '0', '2023-10-12', 46, '2024-04-19 07:42:40'),
(299, 'HOLLAND BAKERY', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'PT MUSTIKA CITRA RASA', '3721771979', 'IDR', 1484400, 'Paid Inv. No : KRWSOT2309-100048', '', 'holland@gmail.com', 'LLG', '0', '0', '2023-10-12', 46, '2024-04-19 07:42:40'),
(300, 'PT TUV RHEINLAND INDONESIA', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'PT TUV RHEINLAND INDONESIA', '1150098017009', 'IDR', 17440000, 'Paid Inv. No : 246635111', '', 'finance@idn.tuv.com', 'LLG', '0', '0', '2023-10-12', 46, '2024-04-19 07:42:40'),
(301, 'UTIK SURTIKA DEWI', 'BRI', 'JKT KPO', 'JAKARTA', 20307, 'UTIK SURTIKA D SPD', '346001017905531', 'IDR', 15463500, 'Honor Dosen AKTI September 2023', '', 'utik@gmail.com', 'LLG', '0', '0', '2023-10-12', 46, '2024-04-19 07:42:40'),
(302, 'MULYANDI', 'BNI', 'KP SUDIRMAN', 'JAKARTA', 90010, 'MULYANDI', '0001718599', 'IDR', 7995000, 'Honor Dosen AKTI Sept 2023', '', 'mulyandi@gmail.com', 'LLG', '0', '0', '2023-10-12', 46, '2024-04-19 07:42:40'),
(303, 'NURDANI ROCHMAN', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'NURDANI ROCHMAN', '0660770283', 'IDR', 2047500, 'Honor Dosen AKTI Sept 2023', '', 'nurdani@gmail.com', 'LLG', '0', '0', '2023-10-12', 46, '2024-04-19 07:42:40'),
(304, 'IMANUDDIN KAMIL', 'BSI', 'KANTOR PUSAT', 'JAKARTA', 4510017, 'IMANUDDIN KAMIL', '7000765389', 'IDR', 7468500, 'Honor Dosen AKTI Sept 2023', '', 'imanuddin@gmail.com', 'LLG', '0', '0', '2023-10-12', 46, '2024-04-19 07:42:40'),
(305, 'RAYSA INDAH BERLIANI', 'PERMATA', '0', '0', 0, 'RAYSA INDAH BERLIANI', '4176284558', 'IDR', 18000000, 'Suspense Petty Cash Wisuda (Fee Guest)', '', 'raysaindahberliani@gmail.com', 'OVB', '0', '0', '2023-10-12', 46, '2024-04-19 07:42:40'),
(306, 'YUNITA SANIA MAHARANI ', 'BNI', 'KP SUDIRMAN', 'JAKARTA', 90010, 'YUNITA SANIA MAHARANI', '1760306548', 'IDR', 480600, 'Reimburse pembelian snack akreditasi', '', 'yunitasania@gmail.com', 'LLG', '0', '0', '2023-10-12', 46, '2024-04-19 07:42:40'),
(307, 'FATYADI RAMSAF', 'PERMATA', '0', '0', 0, 'FATYADI RAMSAF', '9897831322', 'IDR', 5233000, 'Apresiasi Moderator Training Ekternal TLC Sept 23', '', 'fatyadi@gmail.com', 'OVB', '0', '0', '2023-10-12', 46, '2024-04-19 07:42:40'),
(308, 'RIYADI', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'RIYADI', '1200007055838', 'IDR', 390000, 'Honor Trainer 5R 27 September 2023', '', 'riyadi@gmail.com', 'LLG', '0', '0', '2023-10-12', 46, '2024-04-19 07:42:40'),
(309, 'YOSAFAT SONDANG MARCELLINUS', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'YOSAFAT SONDANG MARCELLINUS', '9000004252012', 'IDR', 780000, 'Honor Trainer PDCA 27 September 2023', '', 'yosafat@gmail.com', 'LLG', '0', '0', '2023-10-12', 46, '2024-04-19 07:42:40'),
(310, 'ACHMAD SUBBAN MALIK', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'ACHMAD SUBBAN MALIK', '1250005302211', 'IDR', 780000, 'Honor Trainer Basic A3 Report 26 September 2023', '', 'subban@gmail.com', 'LLG', '0', '0', '2023-10-12', 46, '2024-04-19 07:42:40'),
(311, 'MO DANIEL SETIAWAN', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'MO DANIEL SETIAWAN', '6590887755', 'IDR', 2340000, 'Honor Trainer TBP Admin For TMCLUB 25 & 27 Sept 23', '', 'daniel@gmail.com', 'LLG', '0', '0', '2023-10-12', 46, '2024-04-19 07:42:40'),
(312, 'ANTHONIUS HERADIAN', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'ANTHONIUS HERADIAN', '2291474448', 'IDR', 1170000, 'Honor Trainer TBP Admin For TMCLUB 25 & 27 Sept 23', '', 'heradian@gmail.com', 'LLG', '0', '0', '2023-10-12', 46, '2024-04-19 07:42:40'),
(313, 'MURSYID', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'Ir. MURSYID', '4281416400', 'IDR', 1170000, 'Honor Trainer TBP Admin For TMCLUB 25 & 27 Sept 23', '', 'mursyid@gmail.com', 'LLG', '0', '0', '2023-10-12', 46, '2024-04-19 07:42:40'),
(314, 'R BRAM ADITYA KUSUMA', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'R BRAM ADITYA KUSUMA', '8030100221', 'IDR', 390000, 'Honor Trainer TCS 22 September 2023', '', 'bram@gmail.com', 'LLG', '0', '0', '2023-10-12', 46, '2024-04-19 07:42:40'),
(315, 'ADE IRWAN DARMAWAN', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'ADE IRWAN DARMAWAN', '1320013028460', 'IDR', 390000, 'Honor Trainer TCS 22 September 2023', '', 'irwan@gmail.com', 'LLG', '0', '0', '2023-10-12', 46, '2024-04-19 07:42:40'),
(316, 'ANDY RIYATNO', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'ANDY RIYATNO', '9000009790255', 'IDR', 390000, 'Honor Trainer TJI 21-22 September 2023', '', 'andy@gmail.com', 'LLG', '0', '0', '2023-10-12', 46, '2024-04-19 07:42:40'),
(317, 'WIBOWO WICAKSONO', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'WIBOWO WICAKSONO', '004150575937', 'IDR', 390000, 'Honor Trainer TJI 21-22 September 2023', '', 'wibowo@gmail.com', 'LLG', '0', '0', '2023-10-12', 46, '2024-04-19 07:42:40'),
(318, 'RIDWAN GOZALI', 'PERMATA', '0', '0', 0, 'RIDWAN GOZALI', '4102410551', 'IDR', 390000, 'Honor Trainer TJI 21-22 September 2023', '', 'ridwan@gmail.com', 'OVB', '0', '0', '2023-10-12', 46, '2024-04-19 07:42:40'),
(319, 'DASTA PERMANA', 'PERMATA', '0', '0', 0, 'DASTA PERMANA', '4124663437', 'IDR', 390000, 'Honor Trainer TJI 21-22 September 2023', '', 'dasta@gmail.com', 'OVB', '0', '0', '2023-10-12', 46, '2024-04-19 07:42:40'),
(320, 'SYAFITRI FADILLAH', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'SYAFITRI FADILLAH', '1092560877', 'IDR', 146250, 'Fee Fasilitator Basic Robotic 18-22 September 2023', '', 'syafitri@gmail.com', 'LLG', '0', '0', '2023-10-12', 46, '2024-04-19 07:42:40'),
(321, 'HOLLAND BAKERY', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'PT MUSTIKA CITRA RASA', '3721771979', 'IDR', 1181100, 'Paid Inv. No : KRWSOT2309-100521', '', 'holland@gmail.com', 'LLG', '0', '0', '2023-10-12', 46, '2024-04-19 07:42:40'),
(322, 'BERKAH MULYO', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'RUSWAN', '2761563094', 'IDR', 3724000, 'Sablon Pulpen Training LCD 1.000 pcs', '', 'berkah@gmail.com', 'LLG', '0', '0', '2023-10-12', 46, '2024-04-19 07:42:40'),
(323, 'SAHABAT', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'NGADIRIN', '6840342024', 'IDR', 4214000, 'Paid Inv. No : P-SHT-09/23/20', '', 'sahabat@gmail.com', 'LLG', '0', '0', '2023-10-12', 46, '2024-04-19 07:42:40'),
(324, 'CV. JAPA', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'M. RACHMAD', '2750012534', 'IDR', 1529780, 'Paid Inv. No : 141', '', 'japa@gmail.com', 'LLG', '0', '0', '2023-10-12', 46, '2024-04-19 07:42:40'),
(325, 'PT SYAKIRA BERKAH JAYA', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'PT SYAKIRA BERKAH JAYA', '1550012281518', 'IDR', 1048600, 'Paid Inv. No : 008/TLC/KWT-FIA.SBJ/IX/2023', '', 'syakira@gmail.com', 'LLG', '0', '0', '2023-10-12', 46, '2024-04-19 07:42:40'),
(326, 'SAHABAT', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'NGADIRIN', '6840342024', 'IDR', 9555000, 'Paid Inv. No : P-SHT-09/23/12', '', 'sahabat@gmail.com', 'LLG', '0', '0', '2023-10-12', 46, '2024-04-19 07:42:40'),
(327, 'CV. HARAPAN MADANI UTAMA', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'HARAPAN MADANI UTAMA CV', '7402657777', 'IDR', 3300150, 'Paid Inv. No : 0572-2023', '', 'harapanmadani@gmail.com', 'LLG', '0', '0', '2023-10-12', 46, '2024-04-19 07:42:40'),
(328, 'KOPERASI KARYAWAN TOYOTA', 'PERMATA', '0', '0', 0, 'KOPERASI KARYAWAN TOYOTA', '0353529005', 'IDR', 19274640, 'Paid Inv. No : 6746/YTI-YTI/09/2023', '', 'kopkar@gmail.com', 'OVB', '0', '0', '2023-10-12', 46, '2024-04-19 07:42:40'),
(329, 'HOLLAND BAKERY', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'PT MUSTIKA CITRA RASA', '3721771979', 'IDR', 2084500, 'Paid Inv. No : KRWSOT2308-100108 dan KRWSOT2309-100444', '', 'holland@gmail.com', 'LLG', '0', '0', '2023-10-12', 46, '2024-04-19 07:42:40'),
(330, 'CV. ARIE', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'ARI KUSNANDAR', '1090990515', 'IDR', 1042328, 'Cetak Modul Shortcourse Circut, Trouble & Robotik', '', 'arikusnandar@gmail.com', 'LLG', '0', '0', '2023-10-12', 46, '2024-04-19 07:42:40'),
(331, 'MKI CONSULTING', 'BRI', 'JKT PO', 'JAKARTA', 20307, 'PT MENARA KADIN INDONESIA', '037801001405303', 'IDR', 10800000, 'Paid Inv. No : 049/Inv./MKI-Publik/CHRMP/Toyota/IX/2023', '', 'syahmuharnis@gmail.com', 'LLG', '0', '0', '2023-10-12', 46, '2024-04-19 07:42:40'),
(332, 'IGNATIUS SRIKUNCORO', 'BNI', 'KP SUDIRMAN', 'JAKARTA', 90010, 'IGNATIUS SRIKUNCORO', '1760306548', 'IDR', 1560000, 'Honor Trainer Training NAL 5-6 Oktober 2023', '', 'igna@gmail.com', 'LLG', '0', '0', '2023-10-12', 46, '2024-04-19 07:42:40'),
(333, 'YUSUF RIDHA ', 'PERMATA', '0', '0', 0, 'YUSUF RIDHA ', '4119331841', 'IDR', 780000, 'Honor Trainer Training Low Voltage 3-4 Oktober 2023', '', 'yridha@gmail.com', 'OVB', '0', '0', '2023-10-12', 46, '2024-04-19 07:42:40'),
(334, 'RIZKI MUHAMMAD PERCEKA', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'RIZKI MUHAMMAD PERCEKA', '1480765075', 'IDR', 780000, 'Honor Trainer Training Low Voltage 3-4 Oktober 2023', '', 'perceka@gmail.com', 'LLG', '0', '0', '2023-10-12', 46, '2024-04-19 07:42:40'),
(335, 'HOTEL MERCURE', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'PT. KARAWANG CITY DEVELOPMENT', '1093030072', 'IDR', 738100, 'Paid Inv. No : AR-0176949-INV', '', 'mercure@gmail.com', 'LLG', '0', '0', '2023-10-12', 46, '2024-04-19 07:42:40'),
(336, 'SAIDUL IDRUS ', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'SAIDUL IDRUS ', '6590154405', 'IDR', 780000, 'Honor Trainer Training HPW JO 03 Oktober 2023', '', 'saidul@gmail.com', 'LLG', '0', '0', '2023-10-12', 46, '2024-04-19 07:42:40'),
(337, 'MKI CONSULTING', 'BRI', 'JKT PO', 'JAKARTA', 20307, 'PT MENARA KADIN INDONESIA', '037801001405303', 'IDR', 100000, 'Kekurangan Pembayaran Atas Inv. No : 049/Inv.MKI-Publik/CHRMP/Toyota/IX/23', '', 'syahmuharnis@gmail.com', 'LLG', '0', '0', '2023-10-19', 47, '2024-04-19 07:42:40'),
(338, 'HOLLAND BAKERY', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'PT MUSTIKA CITRA RASA', '3721771979', 'IDR', 3360100, 'Paid Inv. No : KRWSOT2309-100444', '', 'holland@gmail.com', 'LLG', '0', '0', '2023-10-19', 47, '2024-04-19 07:42:40'),
(339, 'PT SYAKIRA BERKAH JAYA', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'PT SYAKIRA BERKAH JAYA', '1550012281518', 'IDR', 1597400, 'Paid Inv. No : 002/TLC/KWT-FIA.SBJ/X/2023', '', 'syakira@gmail.com', 'LLG', '0', '0', '2023-10-19', 47, '2024-04-19 07:42:40'),
(340, 'SAHABAT', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'NGADIRIN', '6840342024', 'IDR', 14172760, 'Paid Inv. No : P-SHT-08/23/09/', '', 'sahabat@gmail.com', 'LLG', '0', '0', '2023-10-19', 47, '2024-04-19 07:42:40'),
(341, 'CV. HARAPAN MADANI UTAMA', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'HARAPAN MADANI UTAMA CV', '7402657777', 'IDR', 8259860, 'Paid Inv. No : 0575-2023', '', 'harapanmadani@gmail.com', 'LLG', '0', '0', '2023-10-19', 47, '2024-04-19 07:42:40'),
(342, 'KOPERASI KARYAWAN TOYOTA', 'PERMATA', '0', '0', 0, 'KOPERASI KARYAWAN TOYOTA', '0353529005', 'IDR', 4249476, 'Paid Inv. No : 6927/YTI-TIA/09/2023', '', 'kopkar@gmail.com', 'OVB', '0', '0', '2023-10-19', 47, '2024-04-19 07:42:40'),
(343, 'HOLLAND BAKERY', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'PT MUSTIKA CITRA RASA', '3721771979', 'IDR', 1834500, 'Paid Inv. No : KRWSOT2309-100444', '', 'holland@gmail.com', 'LLG', '0', '0', '2023-10-19', 47, '2024-04-19 07:42:40'),
(344, 'HOLLAND BAKERY', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'PT MUSTIKA CITRA RASA', '3721771979', 'IDR', 1581600, 'Paid Inv. No : KRWSOT2310-100232', '', 'holland@gmail.com', 'LLG', '0', '0', '2023-10-19', 47, '2024-04-19 07:42:40'),
(346, 'JUHARTONO', 'PERMATA', '0', '0', 0, 'JUHARTONO', '0358623387', 'IDR', 4680000, 'Honor Trainer TL Role PT Pakarti Riken 4-6 Okt 23', '', 'juhartono@gmail.com', 'OVB', '0', '0', '2023-10-19', 47, '2024-04-19 07:42:40'),
(347, 'LIVIA GINTA RISNA', 'PERMATA', '0', '0', 0, 'LIVIA GINTA RISNA', '4178085919', 'IDR', 1170000, 'Honor Fasilitator TL Role PT Pakarti Riken 4-6 Okt 23', '', 'livia@gmail.com', 'OVB', '0', '0', '2023-10-19', 47, '2024-04-19 07:42:40'),
(348, 'EDY SUSILO DARMAWAN', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'EDY SUSILO DARMAWAN', '2761062745', 'IDR', 1170000, 'Honor Trainer Kaizen & Lean Opr RS Dr Oen Solo ', '', 'edy@gmail.com', 'LLG', '0', '0', '2023-10-19', 47, '2024-04-19 07:42:40'),
(349, 'JUHARTONO', 'PERMATA', '0', '0', 0, 'JUHARTONO', '0358623387', 'IDR', 1560000, 'Honor Trainer Kaizen & Lean Opr RS Dr Oen Solo ', '', 'juhartono@gmail.com', 'OVB', '0', '0', '2023-10-19', 47, '2024-04-19 07:42:40'),
(350, 'RACHMASARI', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'RACHMASARI', '0881096071', 'IDR', 487500, 'Honor Fasilitator Kaizen & Lean Opr RS Dr Oen Solo ', '', 'rachmasari@gmail.com', 'LLG', '0', '0', '2023-10-19', 47, '2024-04-19 07:42:40'),
(351, 'DEDY WIDYO HARTONO', 'BSI', 'KANTOR PUSAT', 'JAKARTA', 4510017, 'DEDY WIDYO HARTONO', '7055218964', 'IDR', 780000, 'Honor Trainer Mentoring A3 Report PT MES 22 Sept 23', '', 'dedy@gmail.com', 'LLG', '0', '0', '2023-10-19', 47, '2024-04-19 07:42:40'),
(352, 'IRFAN MAULANA', 'PERMATA', '0', '0', 0, 'IRFAN MAULANA', '1221102394', 'IDR', 195000, 'Honor Fasilitator Mentoring A3 Report PT MES 22 Sept 23', '', 'irfan@gmail.com', 'OVB', '0', '0', '2023-10-19', 47, '2024-04-19 07:42:40'),
(353, 'NANANG JUANDA', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'NANANG JUANDA', '0060006762235', 'IDR', 780000, 'Honor Trainer RAL 12 Sept 23', '', 'nanang@gmail.com', 'LLG', '0', '0', '2023-10-19', 47, '2024-04-19 07:42:40'),
(354, 'PT. TRI JAYA EKA UTAMA', 'MAYBANK', 'KCU.THAMRIN', 'JAKARTA', 160131, 'PT. TRI JAYA EKA UTAMA ', '2232013077', 'IDR', 3927928, 'Paid Inv. No : 0044/TJ/Toyota/IX/2023', '', 'trijaya@gmail.com', 'LLG', '0', '0', '2023-10-19', 47, '2024-04-19 07:42:40'),
(355, 'CV. NITASHI RIZKADA ', 'PERMATA', '0', '0', 0, 'CV. NITASHI RIZKADA ', '0970450300', 'IDR', 1940280, 'Paid Inv. No : 00102/NR/IX/23', '', 'nitashi@gmail.com', 'OVB', '0', '0', '2023-10-19', 47, '2024-04-19 07:42:40'),
(356, 'RIZAL HAFIZHI', 'PERMATA', '0', '0', 0, 'RIZAL HAFIZHI', '1223845408', 'IDR', 1549000, 'Reimb. tiket dan land trans. welding competition UNY', '', 'rizal@gmail.com', 'OVB', '0', '0', '2023-10-19', 47, '2024-04-19 07:42:40'),
(357, 'RS PERTAMINA BINTANG AMIN LAMPUNG', 'BNI', 'KP SUDIRMAN', 'JAKARTA', 90010, 'RS PERTAMINA-BINTANG AMIN LAMPUNG', '5550088801', 'IDR', 837600, 'Paid Inv. No : 427/S4/PBA-A10/14.04.23', '', 'rspertamina.bintangamin@gmail.com', 'LLG', '0', '0', '2023-10-19', 47, '2024-04-19 07:42:40'),
(358, 'Liera Firdha Sesarianti', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'Liera Firdha Sesarianti', '7045062791', 'IDR', 3771676, 'Honor Magang Oktober 2023', '', 'liera@gmail.com', 'LLG', '0', '0', '2023-10-25', 48, '2024-04-19 07:42:40'),
(359, 'DEVI KARTIKA SARI', 'PERMATA', '0', '0', 0, 'DEVI KARTIKA SARI', '9915804826', 'IDR', 528902, 'Honor Magang Oktober 2023', '', 'devi@gmail.com', 'OVB', '0', '0', '2023-10-25', 48, '2024-04-19 07:42:40'),
(360, 'FITRIANI NUR AFFIFAH', 'BRI', 'JKT KPO', 'JAKARTA', 20307, 'FITRIANI NUR AFFIFAH', '424201011593533', 'IDR', 3442197, 'Honor Magang Oktober 2023', '', 'fitriani@gmail.com', 'LLG', '0', '0', '2023-10-25', 48, '2024-04-19 07:42:40'),
(361, 'SYAFITRI FADILLAH', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'SYAFITRI FADILLAH', '1092560877', 'IDR', 3381503, 'Honor Magang Oktober 2023', '', 'syafitri@gmail.com', 'LLG', '0', '0', '2023-10-25', 48, '2024-04-19 07:42:40'),
(362, 'INTAN AULIA HAPSARI', 'BNI', 'KP SUDIRMAN', 'JAKARTA', 90010, 'INTAN AULIA HAPSARI', '0835218555', 'IDR', 1740000, 'Uang Saku Magang Oktober 2023', '', 'intan@gmail.com', 'LLG', '0', '0', '2023-10-25', 48, '2024-04-19 07:42:40'),
(363, 'ELFANO SULTAN SYAHBANA', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'ELFANO SULTAN SYAHBANA', '1400022387352', 'IDR', 1740000, 'Uang Saku Magang Oktober 2023', '', 'elfano@gmail.com', 'LLG', '0', '0', '2023-10-25', 48, '2024-04-19 07:42:40'),
(364, 'ANTENG DAMARNOTO', 'BRI', 'JKT PO', 'JAKARTA', 20307, 'ANTENG DAMARNOTO', '007401109131507', 'IDR', 200000, 'Reimb. TA Mahasiswa atlet welding Competition di UNY', '', 'anteng@gmail.com', 'LLG', '0', '0', '2023-10-25', 48, '2024-04-19 07:42:40'),
(365, 'RIZAL HAFIZHI', 'PERMATA', '0', '0', 0, 'RIZAL HAFIZHI', '1223845408', 'IDR', 320000, 'Reimb. TA Pendamping mahasiswa Welding Competition UNY', '', 'rizal@gmail.com', 'OVB', '0', '0', '2023-10-25', 48, '2024-04-19 07:42:40'),
(366, 'CV. JAPA', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'M. RACHMAD', '2750012534', 'IDR', 917280, 'Paid Inv. No : 144', '', 'japa@gmail.com', 'LLG', '0', '0', '2023-10-25', 48, '2024-04-19 07:42:40'),
(367, 'KHARIS PERMADIANA RASEF', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'KHARIS PERMADIANA RASEF', '0661276184', 'IDR', 7800000, 'Jasa Analisa Sistem SIAKAD AKTI', '', 'kharis@gmail.com', 'LLG', '0', '0', '2023-10-25', 48, '2024-04-19 07:42:40'),
(368, 'KHARIS PERMADIANA RASEF', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'KHARIS PERMADIANA RASEF', '0661276184', 'IDR', 11700000, 'Pendampingan Persiapan Teknis Akreditasi TOPKR4', '', 'kharis@gmail.com', 'LLG', '0', '0', '2023-10-25', 48, '2024-04-19 07:42:40'),
(369, 'CV. NITASHI RIZKADA ', 'PERMATA', '0', '0', 0, 'CV. NITASHI RIZKADA ', '0970450300', 'IDR', 8015310, 'Paid Inv. No : 00107/NR/X/23', '', 'nitashi@gmail.com', 'OVB', '0', '0', '2023-10-25', 48, '2024-04-19 07:42:40'),
(370, 'HOLLAND BAKERY', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'PT MUSTIKA CITRA RASA', '3721771979', 'IDR', 480500, 'Paid Inv. No : KRWSOT2310-100037', '', 'holland@gmail.com', 'LLG', '0', '0', '2023-10-25', 48, '2024-04-19 07:42:40'),
(371, 'CV. NITASHI RIZKADA ', 'PERMATA', '0', '0', 0, 'CV. NITASHI RIZKADA ', '0970450300', 'IDR', 3234540, 'Paid Inv. No : 00104/NR/IX/23', '', 'nitashi@gmail.com', 'OVB', '0', '0', '2023-10-25', 48, '2024-04-19 07:42:40'),
(372, 'PT ADISIMA PUTRA UTAMA', 'BRI', 'JKT PO', 'JAKARTA', 20307, 'PT ADISIMA PUTRA UTAMA', '011601111033565', 'IDR', 323400, 'Paid Inv. No : 003/WP.33/CTR-AKTI/IX/2023', '', 'warung33spesialpepeskrw@gmail.com', 'LLG', '0', '0', '2023-10-25', 48, '2024-04-19 07:42:40'),
(373, 'PT ADISIMA PUTRA UTAMA', 'BRI', 'JKT PO', 'JAKARTA', 20307, 'PT ADISIMA PUTRA UTAMA', '011601111033565', 'IDR', 44378320, 'Paid Inv. No : 003/WP.33/CTR-AKTI/X/2023', '', 'warung33spesialpepeskrw@gmail.com', 'LLG', '0', '0', '2023-10-25', 48, '2024-04-19 07:42:40'),
(374, 'MELLINDA EFENDI', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'MELLINDA EFENDI', '6785059097', 'IDR', 116700, 'Reimb. Pembelian Pocari Sweat Tamu UGM', '', 'mellinda@gmail.com', 'LLG', '0', '0', '2023-10-25', 48, '2024-04-19 07:42:40'),
(375, 'MUHAMAD JULIARTO', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'MUHAMAD JULIARTO', '5745101451', 'IDR', 1626320, 'Reimb. makan siang untuk tamu UGM', '', 'juliarto@gmail.com', 'LLG', '0', '0', '2023-10-25', 48, '2024-04-19 07:42:40'),
(376, 'R BRAM ADITYA KUSUMA', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'R BRAM ADITYA KUSUMA', '8030100221', 'IDR', 780000, 'Honor Trainer Training TCS 13 Okt 23', '', 'bram@gmail.com', 'LLG', '0', '0', '2023-10-26', 49, '2024-04-19 07:42:40'),
(377, 'IBNU ISKANDARSYAH', 'BSI', 'KANTOR PUSAT', 'JAKARTA', 4510017, 'IBNU ISKANDARSYAH', '7234022010', 'IDR', 780000, 'Honor Trainer Training TCS 13 Okt 23', '', 'ibnu@gmail.com', 'LLG', '0', '0', '2023-10-26', 49, '2024-04-19 07:42:40'),
(378, 'MUHAMAD YUSUF RAHADI', 'PERMATA', '0', '0', 0, 'MUHAMAD YUSUF RAHADI', '1217045521', 'IDR', 780000, 'Honor Trainer Training NAL 12-13 Okt 23', '', 'yusuf@gmail.com', 'OVB', '0', '0', '2023-10-26', 49, '2024-04-19 07:42:40'),
(379, 'BAMBANG SUTRISNO', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'BAMBANG SUTRISNO', '0060010712481', 'IDR', 780000, 'Honor Trainer Training NAL 12-13 Okt 23', '', 'bambang@gmail.com', 'LLG', '0', '0', '2023-10-26', 49, '2024-04-19 07:42:40'),
(380, 'YANI PRANOTO', 'BSI', 'KANTOR PUSAT', 'JAKARTA', 4510017, 'YANI PRANOTO', '7234025960', 'IDR', 780000, 'Honor Trainer HPW JO 9 Okt 23 ', '', 'yanip@gmail.com', 'LLG', '0', '0', '2023-10-26', 49, '2024-04-19 07:42:40'),
(381, 'IGNATIUS SRIKUNCORO', 'BNI', 'KP SUDIRMAN', 'JAKARTA', 90010, 'IGNATIUS SRIKUNCORO', '1760306548', 'IDR', 780000, 'Honor Trainer HPW JO 12 Okt 23', '', 'igna@gmail.com', 'LLG', '0', '0', '2023-10-26', 49, '2024-04-19 07:42:40'),
(382, 'MUHAMAD JULIARTO', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'MUHAMAD JULIARTO', '5745101451', 'IDR', 780000, 'Honor Trainer PDCA 11 Oktober 2023', '', 'juliarto@gmail.com', 'LLG', '0', '0', '2023-10-26', 49, '2024-04-19 07:42:40'),
(383, 'HOTEL MERCURE', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'PT. KARAWANG CITY DEVELOPMENT', '1093030072', 'IDR', 11000000, 'Paid Inv. No : ACC.INV/2023/10/00016', '', 'mercure@gmail.com', 'LLG', '0', '0', '2023-10-26', 49, '2024-04-19 07:42:40'),
(384, 'HERU SUNARTO', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'HERU SUNARTO', '1330014156392', 'IDR', 1560000, 'Honor Trainer TL Role PT TBINA 22-23 Sept 23', '', 'heru@gmail.com', 'LLG', '0', '0', '2023-10-26', 49, '2024-04-19 07:42:40'),
(385, 'DEDI AMBARI', 'BANK JABAR', 'MENARA BANK ', 'BANDUNG', 1100019, 'DEDI AMBARI', '0072535601100', 'IDR', 1560000, 'Honor Trainer TL Role PT TBINA 22-23 Sept 23', '', 'dedi@gmail.com', 'LLG', '0', '0', '2023-10-26', 49, '2024-04-19 07:42:40'),
(386, 'RIDWAN GOZALI', 'PERMATA', '0', '0', 0, 'RIDWAN GOZALI', '4102410551', 'IDR', 1170000, 'Honor Fasilitator TL Role PT TBINA 22-23 Sept 23 ', '', 'ridwan@gmail.com', 'OVB', '0', '0', '2023-10-26', 49, '2024-04-19 07:42:40'),
(387, 'LIVIA GINTA RISNA', 'PERMATA', '0', '0', 0, 'LIVIA GINTA RISNA', '4178085919', 'IDR', 243750, 'Honor Fasilitator TL Role PT TBINA 22-23 Sept 23', '', 'livia@gmail.com', 'OVB', '0', '0', '2023-10-26', 49, '2024-04-19 07:42:40'),
(388, 'SAHABAT', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'NGADIRIN', '6840342024', 'IDR', 6125000, 'Paid Inv. No : P-SHT-10/23/06', '', 'sahabat@gmail.com', 'LLG', '0', '0', '2023-10-26', 49, '2024-04-19 07:42:40'),
(389, 'KEBULI CINTA', 'CIMB NIAGA', 'JAKARTA', 'JAKARTA', 220026, 'WELI NUGROHO', '702129031500', 'IDR', 900000, 'Pembelian Lunch Training NAL 13 Okt 23', '', 'kebulicinta@gmail.com', 'LLG', '0', '0', '2023-10-26', 49, '2024-04-19 07:42:40'),
(390, 'CV. HARAPAN MADANI UTAMA', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'HARAPAN MADANI UTAMA CV', '7402657777', 'IDR', 10290000, 'Paid Inv. No : 0579-2023', '', 'harapanmadani@gmail.com', 'LLG', '0', '0', '2023-10-26', 49, '2024-04-19 07:42:40'),
(391, 'HOLLAND BAKERY', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'PT MUSTIKA CITRA RASA', '3721771979', 'IDR', 1611900, 'Paid Inv. No : KRWSOT2310-100232', '', 'holland@gmail.com', 'LLG', '0', '0', '2023-10-26', 49, '2024-04-19 07:42:40'),
(392, 'KOPERASI KARYAWAN TOYOTA', 'PERMATA', '0', '0', 0, 'KOPERASI KARYAWAN TOYOTA', '0353529005', 'IDR', 6640480, 'Paid Inv. No : 6964/YTI-TIA/10/2023', '', 'kopkar@gmail.com', 'OVB', '0', '0', '2023-10-26', 49, '2024-04-19 07:42:40'),
(393, 'KEBULI CINTA', 'CIMB NIAGA', 'JAKARTA', 'JAKARTA', 220026, 'WELI NUGROHO', '702129031500', 'IDR', 750000, 'Pembelian Lunch Training NAL 5 Oktober 2023', '', 'kebulicinta@gmail.com', 'LLG', '0', '0', '2023-10-26', 49, '2024-04-19 07:42:40'),
(394, 'HOLLAND BAKERY', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'PT MUSTIKA CITRA RASA', '3721771979', 'IDR', 1182500, 'Paid Inv. No : KRWSOT2308-100325', '', 'holland@gmail.com', 'LLG', '0', '0', '2023-10-26', 49, '2024-04-19 07:42:40'),
(395, 'MO DANIEL SETIAWAN', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'MO DANIEL SETIAWAN', '6590887755', 'IDR', 4680000, 'Honor Trainer Practical Problem Solving (TBP Admin) PT Triputra 5 & 8 Okt 23', '', 'daniel@gmail.com', 'LLG', '0', '0', '2023-10-26', 49, '2024-04-19 07:42:40'),
(396, 'IRFAN MAULANA', 'PERMATA', '0', '0', 0, 'IRFAN MAULANA', '1221102394', 'IDR', 390000, 'Honor Fasilitator Practical Problem Solving (TBP Admin) PT Triputra 5 & 8 Okt 23', '', 'irfan@gmail.com', 'OVB', '0', '0', '2023-10-26', 49, '2024-04-19 07:42:40'),
(397, 'NIKEN PUTRI SEKARINI', 'PERMATA', '0', '0', 0, 'NIKEN PUTRI SEKARINI', '9923821624', 'IDR', 243750, 'Honor Fasilitator Practical Problem Solving (TBP Admin) PT Triputra 5 & 8 Okt 23', '', 'niken@gmail.com', 'OVB', '0', '0', '2023-10-26', 49, '2024-04-19 07:42:40'),
(398, 'CV. JAPA', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'M. RACHMAD', '2750012534', 'IDR', 1518020, 'Paid Inv. No : 143', '', 'japa@gmail.com', 'LLG', '0', '0', '2023-11-02', 50, '2024-04-19 07:42:40'),
(399, 'CV. HARAPAN MADANI UTAMA', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'HARAPAN MADANI UTAMA CV', '7402657777', 'IDR', 999600, 'Paid Inv. No : 0586-2023', '', 'harapanmadani@gmail.com', 'LLG', '0', '0', '2023-11-02', 50, '2024-04-19 07:42:40'),
(400, 'DAPUR NYI ITEUNG', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'SUNARTO', '1320004733383', 'IDR', 650000, 'Pembelian Lunch Training Low Voltage 17 Okt 23', '', 'dapur@gmail.com', 'LLG', '0', '0', '2023-11-02', 50, '2024-04-19 07:42:40'),
(401, 'HOLLAND BAKERY', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'PT MUSTIKA CITRA RASA', '3721771979', 'IDR', 1666800, 'Paid Inv. No : KRWSOT2310-100232, 100407', '', 'holland@gmail.com', 'LLG', '0', '0', '2023-11-02', 50, '2024-04-19 07:42:40'),
(402, 'CV. HARAPAN MADANI UTAMA', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'HARAPAN MADANI UTAMA CV', '7402657777', 'IDR', 24559000, 'Paid Inv. No : 0581-2023', '', 'harapanmadani@gmail.com', 'LLG', '0', '0', '2023-11-02', 50, '2024-04-19 07:42:40'),
(403, 'CV. HARAPAN MADANI UTAMA', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'HARAPAN MADANI UTAMA CV', '7402657777', 'IDR', 1200000, 'Paid Inv. No : 0574-2023', '', 'harapanmadani@gmail.com', 'LLG', '0', '0', '2023-11-02', 50, '2024-04-19 07:42:40'),
(404, 'KEBULI CINTA', 'CIMB NIAGA', 'JAKARTA', 'JAKARTA', 220026, 'WELI NUGROHO', '702129031500', 'IDR', 2400000, 'Pembelian Lunch Training TBP Admin & Karakuri 25-26 Sept 23', '', 'kebulicinta@gmail.com', 'LLG', '0', '0', '2023-11-02', 50, '2024-04-19 07:42:40'),
(405, 'RACHMASARI', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'RACHMASARI', '0881096071', 'IDR', 4521314, 'Reimb. Tiket Pesawat Fasilitator Pakarti Riken Surabaya a/n Irfan & Risky', '', 'rachmasari@gmail.com', 'LLG', '0', '0', '2023-11-02', 50, '2024-04-19 07:42:40'),
(406, 'JUHARTONO', 'PERMATA', '0', '0', 0, 'JUHARTONO', '0358623387', 'IDR', 4680000, 'Honor Trainer GL Role 16-18 Okt 23 PT. Pakarti Riken', '', 'juhartono@gmail.com', 'OVB', '0', '0', '2023-11-02', 50, '2024-04-19 07:42:40'),
(407, 'LULU MAHERNI', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'LULU MAHERNI', '7635275847', 'IDR', 365625, 'Honor Fasilitator GL Role 16-18 Okt 23 PT. Pakarti Riken', '', 'lulu@gmail.com', 'LLG', '0', '0', '2023-11-02', 50, '2024-04-19 07:42:40'),
(408, 'MIETA RAMADHANINGTIYAS', 'PERMATA', '0', '0', 0, 'MIETA RAMADHANINGTIYAS', '4178093423', 'IDR', 975000, 'Apresiasi Tambahan Program Admin TLC Sistem Jurnal Okt 23', '', 'mieta@gmail.com', 'OVB', '0', '0', '2023-11-02', 50, '2024-04-19 07:42:40'),
(409, 'LIVIA GINTA RISNA', 'PERMATA', '0', '0', 0, 'LIVIA GINTA RISNA', '4178085919', 'IDR', 487500, 'Apresiasi Tambahan Program Admin TLC Kordinator PA Okt 23', '', 'livia@gmail.com', 'OVB', '0', '0', '2023-11-02', 50, '2024-04-19 07:42:40'),
(410, 'KHALIL GHIBRAN JIWONO', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'KHALIL GHIBRAN JIWONO', '1730001867820', 'IDR', 780000, 'Honor Trainer NAL 19-20 Oktober 2023', '', 'khalil@gmail.com', 'LLG', '0', '0', '2023-11-02', 50, '2024-04-19 07:42:40'),
(411, 'BAMBANG SUTRISNO', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'BAMBANG SUTRISNO', '0060010712481', 'IDR', 780000, 'Honor Trainer NAL 19-20 Oktober 2023', '', 'bambang@gmail.com', 'LLG', '0', '0', '2023-11-02', 50, '2024-04-19 07:42:40'),
(412, 'WIBOWO WICAKSONO', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'WIBOWO WICAKSONO', '004150575937', 'IDR', 390000, 'Honor Trainer TJI 19-20 Okt 23', '', 'wibowo@gmail.com', 'LLG', '0', '0', '2023-11-02', 50, '2024-04-19 07:42:40'),
(413, 'MURTALA', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'MURTALA', '9000014688072', 'IDR', 390000, 'Honor Trainer TJI 19-20 Okt 23', '', 'murtala@gmail.com', 'LLG', '0', '0', '2023-11-02', 50, '2024-04-19 07:42:40'),
(414, 'ANDY RIYATNO', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'ANDY RIYATNO', '9000009790255', 'IDR', 390000, 'Honor Trainer TJI 19-20 Okt 23', '', 'andy@gmail.com', 'LLG', '0', '0', '2023-11-02', 50, '2024-04-19 07:42:40'),
(415, 'ANDI RUSTANDI', 'BSI', 'KANTOR PUSAT', 'JAKARTA', 4510017, 'ANDI RUSTANDI', '7242059720', 'IDR', 390000, 'Honor Trainer TJI 19-20 Okt 23', '', 'andi@gmail.com', 'LLG', '0', '0', '2023-11-02', 50, '2024-04-19 07:42:40'),
(416, 'RIYADI', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'RIYADI', '1200007055838', 'IDR', 390000, 'Honor Trainer Training 5R 18 Okt 23', '', 'riyadi@gmail.com', 'LLG', '0', '0', '2023-11-02', 50, '2024-04-19 07:42:40'),
(417, 'NOVA PRIYADI', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'NOVA PRIYADI', '378118740', 'IDR', 780000, 'Honor Trainer Low Voltage 16-17 Oktober 2023', '', 'nova@gmail.com', 'LLG', '0', '0', '2023-11-02', 50, '2024-04-19 07:42:40'),
(418, 'DAWIYAN DIVA', 'PERMATA', '0', '0', 0, 'DAWIYAN DIVA', '4137482075', 'IDR', 780000, 'Honor Trainer Low Voltage 16-17 Oktober 2023', '', 'dawiyan@gmail.com', 'OVB', '0', '0', '2023-11-02', 50, '2024-04-19 07:42:40'),
(419, 'HARI SUNARTO', 'PERMATA', '0', '0', 0, 'HARI SUNARTO', '1221127192', 'IDR', 780000, 'Honor Trainer Karakuri PT. TAM 26 Sept 23', '', 'hari@gmail.com', 'OVB', '0', '0', '2023-11-02', 50, '2024-04-19 07:42:40'),
(420, 'MUHAMAD JULIARTO', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'MUHAMAD JULIARTO', '5745101451', 'IDR', 3900000, 'Honor Trainer Shortcourse Basic Robotic 18-22 Sept 23', '', 'juliarto@gmail.com', 'LLG', '0', '0', '2023-11-02', 50, '2024-04-19 07:42:40'),
(421, 'SAIDUL IDRUS ', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'SAIDUL IDRUS ', '6590154405', 'IDR', 780000, 'Honor Trainer HPW JO 14 Sept 23 ', '', 'saidul@gmail.com', 'LLG', '0', '0', '2023-11-02', 50, '2024-04-19 07:42:40');
INSERT INTO `tbl_payment_v` (`id_payment_v`, `nama_vendor`, `bank_name`, `address_bank`, `bank_city`, `bank_code`, `account_name`, `account_number`, `currency`, `amount_payment`, `description`, `description2`, `email_vendor`, `transaction_type`, `resident_status`, `citizen_status`, `payment_date`, `id_payment_date`, `create_date`) VALUES
(422, 'HOLLAND BAKERY', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'PT MUSTIKA CITRA RASA', '3721771979', 'IDR', 600400, 'Paid Inv. No : KRW2310-100359', '', 'holland@gmail.com', 'LLG', '0', '0', '2023-11-02', 50, '2024-04-19 07:42:40'),
(423, 'PT. CAHAYA INTI PUTRA SEJAHTERA', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'PT. CAHAYA INTI PUTRA SEJAHTERA', '7080228800', 'IDR', 6396801, 'Paid Inv. No : J32310010294', '', 'cahayainti@gmail.com', 'LLG', '0', '0', '2023-11-02', 50, '2024-04-19 07:42:40'),
(424, 'PT. DEANOVA KARYA MANDIRI', 'BNI', 'KP SUDIRMAN', 'JAKARTA', 90010, 'YANI SURTIANI', '0228808758', 'IDR', 47353600, 'Paid Inv. No : 2345/NSA/X/2023', '', 'yanisurtiani3011@gmail.com', 'LLG', '0', '0', '2023-11-02', 50, '2024-04-19 07:42:40'),
(425, 'CV. NITASHI RIZKADA ', 'PERMATA', '0', '0', 0, 'CV. NITASHI RIZKADA ', '0970450300', 'IDR', 1964700, 'Paid Inv. No : 00103/NR/IX/23', '', 'nitashi@gmail.com', 'OVB', '0', '0', '2023-11-02', 50, '2024-04-19 07:42:40'),
(426, 'CV. NITASHI RIZKADA ', 'PERMATA', '0', '0', 0, 'CV. NITASHI RIZKADA ', '0970450300', 'IDR', 960150, 'Paid Inv. No : 00111/NR/X/23', '', 'nitashi@gmail.com', 'OVB', '0', '0', '2023-11-02', 50, '2024-04-19 07:42:40'),
(427, 'PT. PAKAR UTAMA ', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'PT. PAKAR UTAMA ', '4493033738', 'IDR', 30457600, 'Paid Inv. No : KR.09.23.003', '', 'pakar@gmail.com', 'LLG', '0', '0', '2023-11-02', 50, '2024-04-19 07:42:40'),
(428, 'HOLLAND BAKERY', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'PT MUSTIKA CITRA RASA', '3721771979', 'IDR', 211500, 'Paid Inv. No : KRWSOT2309-100521', '', 'holland@gmail.com', 'LLG', '0', '0', '2023-11-02', 50, '2024-04-19 07:42:40'),
(429, 'CV. NITASHI RIZKADA ', 'PERMATA', '0', '0', 0, 'CV. NITASHI RIZKADA ', '0970450300', 'IDR', 2508600, 'Paid Inv. No : 00106/NR/IX/23', '', 'nitashi@gmail.com', 'OVB', '0', '0', '2023-11-02', 50, '2024-04-19 07:42:40'),
(430, 'Laras Tri Indah Sari', 'SEABANK ', 'KP. R.P.SUROSO', 'JAKARTA', 5350014, 'Laras Tri Indah Sari', '901672831952', 'IDR', 255937, 'Honor Pelatih Padus Wisuda AKTI 2023', '', 'laras@gmail.com', 'LLG', '0', '0', '2023-11-02', 50, '2024-04-19 07:42:40'),
(431, 'HOTEL MERCURE', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'PT. KARAWANG CITY DEVELOPMENT', '1093030072', 'IDR', 738100, 'Paid Inv. No : AR-0180539-INV', '', 'mercure@gmail.com', 'LLG', '0', '0', '2023-11-02', 50, '2024-04-19 07:42:40'),
(432, 'AZZELEA ART', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'AZZELEA ART', '7425326961', 'IDR', 1900000, 'Biaya Kostum Tari & Make Up Mahasiswa Event Wisuda AKTI 2023', '', 'azzelea@gmail.com', 'LLG', '0', '0', '2023-11-02', 50, '2024-04-19 07:42:40'),
(433, 'MELLINDA EFENDI', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'MELLINDA EFENDI', '6785059097', 'IDR', 535000, 'Reimb. Cetak Aktiviti Board, Kalender Akademik, Pembelian Snack Sarah Sehan Direktur ke Mahasiswa Senior', '', 'mellinda@gmail.com', 'LLG', '0', '0', '2023-11-02', 50, '2024-04-19 07:42:40'),
(434, 'IRFAN MAULANA', 'PERMATA', '0', '0', 0, 'IRFAN MAULANA', '1221102394', 'IDR', 600000, 'Reimb. Bensin Acara Pernikahan Aflah (TLC Sunter)', '', 'irfan@gmail.com', 'OVB', '0', '0', '2023-11-09', 51, '2024-04-19 07:42:40'),
(435, 'WIBOWO WICAKSONO', 'BSI', 'KANTOR PUSAT', 'JAKARTA', 4510017, 'WIBOWO WICAKSONO', '7256426380', 'IDR', 390000, 'Transfer Ulang Atas Honor Trainer TJI 19-20 Okt 23', '', 'wibowo@gmail.com', 'LLG', '0', '0', '2023-11-09', 51, '2024-04-19 07:42:40'),
(436, 'NOVA PRIYADI', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'NOVA PRIYADI', '3781187460', 'IDR', 780000, 'Tranfer Ulang Atas Honor Trainer Low Voltage 16-17 Oktober 2023 ', '', 'nova@gmail.com', 'LLG', '0', '0', '2023-11-09', 51, '2024-04-19 07:42:40'),
(437, 'KEBULI CINTA', 'CIMB NIAGA', 'JAKARTA', 'JAKARTA', 220026, 'WELI NUGROHO', '702129031500', 'IDR', 950000, 'Pembelian Lunch Training NAL 27 Okt 23', '', 'kebulicinta@gmail.com', 'LLG', '0', '0', '2023-11-09', 51, '2024-04-19 07:42:40'),
(438, 'SAHABAT', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'NGADIRIN', '6840342024', 'IDR', 2058000, 'Paid Inv. No : P-SHT-10/23/20', '', 'sahabat@gmail.com', 'LLG', '0', '0', '2023-11-09', 51, '2024-04-19 07:42:40'),
(439, 'PT SYAKIRA BERKAH JAYA', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'PT SYAKIRA BERKAH JAYA', '1550012281518', 'IDR', 2195200, 'Paid Inv. No : 011/TLC/KWT-FIA.SBJ/X/2023', '', 'syakira@gmail.com', 'LLG', '0', '0', '2023-11-09', 51, '2024-04-19 07:42:40'),
(440, 'CV. HARAPAN MADANI UTAMA', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'HARAPAN MADANI UTAMA CV', '7402657777', 'IDR', 1293600, 'Paid Inv. No : 0589-2023', '', 'harapanmadani@gmail.com', 'LLG', '0', '0', '2023-11-09', 51, '2024-04-19 07:42:40'),
(441, 'HOLLAND BAKERY', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'PT MUSTIKA CITRA RASA', '3721771979', 'IDR', 2435400, 'Paid Inv. No : KRWSOT2310-100407', '', 'holland@gmail.com', 'LLG', '0', '0', '2023-11-09', 51, '2024-04-19 07:42:40'),
(442, 'SAHABAT', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'NGADIRIN', '6840342024', 'IDR', 12936000, 'Paid Inv. No : P-SHT-10/23/10-15-17', '', 'sahabat@gmail.com', 'LLG', '0', '0', '2023-11-09', 51, '2024-04-19 07:42:40'),
(443, 'DAPUR NYI ITEUNG', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'SUNARTO', '1320004733383', 'IDR', 1000000, 'Pembelian Lunch Training NAL 20 Okt 23', '', 'dapur@gmail.com', 'LLG', '0', '0', '2023-11-09', 51, '2024-04-19 07:42:40'),
(444, 'CV. HARAPAN MADANI UTAMA', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'HARAPAN MADANI UTAMA CV', '7402657777', 'IDR', 10636000, 'Paid Inv. No : 0587-2023', '', 'harapanmadani@gmail.com', 'LLG', '0', '0', '2023-11-09', 51, '2024-04-19 07:42:40'),
(445, 'HOLLAND BAKERY', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'PT MUSTIKA CITRA RASA', '3721771979', 'IDR', 1535400, 'Paid Inv. No : KRWSOT2310-100407', '', 'holland@gmail.com', 'LLG', '0', '0', '2023-11-09', 51, '2024-04-19 07:42:40'),
(446, 'PT SYAKIRA BERKAH JAYA', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'PT SYAKIRA BERKAH JAYA', '1550012281518', 'IDR', 999600, 'Paid Inv. No : 008/TLC/KWT-FIA.SBJ/X/2023', '', 'syakira@gmail.com', 'LLG', '0', '0', '2023-11-09', 51, '2024-04-19 07:42:40'),
(447, 'DAPUR NYI ITEUNG', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'SUNARTO', '1320004733383', 'IDR', 750000, 'Pembelian Lunch Training Low Voltage 3 Okt 23', '', 'dapur@gmail.com', 'LLG', '0', '0', '2023-11-09', 51, '2024-04-19 07:42:40'),
(448, 'DEDY WIDYO HARTONO', 'BSI', 'KANTOR PUSAT', 'JAKARTA', 4510017, 'DEDY WIDYO HARTONO', '7055218964', 'IDR', 780000, 'Honor Trainer BCR (A3 REPORT) PT. TAM', '', 'dedy@gmail.com', 'LLG', '0', '0', '2023-11-09', 51, '2024-04-19 07:42:40'),
(449, 'YANI PRANOTO', 'BSI', 'KANTOR PUSAT', 'JAKARTA', 4510017, 'YANI PRANOTO', '7234025960', 'IDR', 780000, 'Honor Trainer PW JO 27 Okt 23', '', 'yanip@gmail.com', 'LLG', '0', '0', '2023-11-09', 51, '2024-04-19 07:42:40'),
(450, 'FERRY SURANTON', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'FERRY SURANTON', '6590032806', 'IDR', 780000, 'Honor Trainer JI KOTEI KANKETSU 27 Okt 23', '', 'ferry@gmail.com', 'LLG', '0', '0', '2023-11-09', 51, '2024-04-19 07:42:40'),
(451, 'KHALIL GHIBRAN JIWONO', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'KHALIL GHIBRAN JIWONO', '1730001867820', 'IDR', 780000, 'Honor Trainer NAL 26-27 Okt 23', '', 'khalil@gmail.com', 'LLG', '0', '0', '2023-11-09', 51, '2024-04-19 07:42:40'),
(452, 'MUHAMAD YUSUF RAHADI', 'PERMATA', '0', '0', 0, 'MUHAMAD YUSUF RAHADI', '1217045521', 'IDR', 780000, 'Honor Trainer NAL 26-27 Okt 23', '', 'yusuf@gmail.com', 'OVB', '0', '0', '2023-11-09', 51, '2024-04-19 07:42:40'),
(453, 'NANANG JUANDA', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'NANANG JUANDA', '0060006762235', 'IDR', 780000, 'Honor Trainer RAL 25 Okt 23', '', 'nanang@gmail.com', 'LLG', '0', '0', '2023-11-09', 51, '2024-04-19 07:42:40'),
(454, 'R BRAM ADITYA KUSUMA', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'R BRAM ADITYA KUSUMA', '8030100221', 'IDR', 1049000, 'Reimb. Lunch Training NAL For Supplier 26 Okt 23', '', 'bram@gmail.com', 'LLG', '0', '0', '2023-11-09', 51, '2024-04-19 07:42:40'),
(455, 'ANGGI PRASETYO', 'PERMATA', '0', '0', 0, 'ANGGI PRASETYO', '1220760045', 'IDR', 562337, 'Reimb. Template Video Evanto Element ', '', 'anggip@gmail.com', 'OVB', '0', '0', '2023-11-09', 51, '2024-04-19 07:42:40'),
(456, 'JAENUR RIDWAN', 'PERMATA', '0', '0', 0, 'JAENUR RIDWAN', '9919323288', 'IDR', 1370000, 'Reimb. Bensin & Toll Pernikahan Aflah (Staff YTI)', '', 'jaenuridwan@gmail.com', 'OVB', '0', '0', '2023-11-09', 51, '2024-04-19 07:42:40'),
(457, 'MUHAMAD JULIARTO', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'MUHAMAD JULIARTO', '5745101451', 'IDR', 731250, 'Transfer Ulang Honor Penguji TA Agust 23', '', 'juliarto@gmail.com', 'LLG', '0', '0', '2023-11-09', 51, '2024-04-19 07:42:40'),
(458, 'AZALLEA ART', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'INDIRA AZALIA', '7425326961', 'IDR', 1900000, 'Transfer Ulang Biaya Kostum & Make Up Wisuda AKTI 23', '', 'azzelea@gmail.com', 'LLG', '0', '0', '2023-11-09', 51, '2024-04-19 07:42:40'),
(459, 'CV. HARAPAN MADANI UTAMA', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'HARAPAN MADANI UTAMA CV', '7402657777', 'IDR', 7297080, 'Paid Inv. No : 0585-2023', '', 'harapanmadani@gmail.com', 'LLG', '0', '0', '2023-11-09', 51, '2024-04-19 07:42:40'),
(461, 'CV. JAPA', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'M. RACHMAD', '2750012534', 'IDR', 6213200, 'Paid Inv. No : 142', '', 'japa@gmail.com', 'LLG', '0', '0', '2023-11-09', 51, '2024-04-19 07:42:40'),
(462, 'CV. NITASHI RIZKADA ', 'PERMATA', '0', '0', 0, 'CV. NITASHI RIZKADA ', '0970450300', 'IDR', 7747245, 'Paid Inv. No : 00118/NR/X/23', '', 'nitashi@gmail.com', 'OVB', '0', '0', '2023-11-09', 51, '2024-04-19 07:42:40'),
(463, 'BPJSKES MAHASISWA AKTI', 'BNI', 'KP SUDIRMAN', 'JAKARTA', 90010, 'PBPU Kolektif - Yayasan Toyota Indonesia', '8888890001311756', 'IDR', 4515000, 'Iuran BPJS KES Mahasiswa AKTI Nov 23', '', 'bpjs@gmail.com', 'LLG', '0', '0', '2023-11-09', 51, '2024-04-19 07:42:40'),
(464, 'BPJSKES KARYAWAN YTI', 'BNI', 'KP SUDIRMAN', 'JAKARTA', 90010, 'YAYASAN TOYOTA INDONESIA', '8888890001311769', 'IDR', 4189385, 'Iuran BPJS KES Karyawan YTI Nov 23', '', 'bpjs@gmail.com', 'LLG', '0', '0', '2023-11-09', 51, '2024-04-19 07:42:40'),
(465, 'BPJSTK', 'BNI', 'KP SUDIRMAN', 'JAKARTA', 90010, 'EPS BPJS TK', '418019823000', 'IDR', 6319006, 'Iuran BPJSTK Karyawan YTI Nov 23', '', 'bpjstk@gmail.com', 'LLG', '0', '0', '2023-11-09', 51, '2024-04-19 07:42:40'),
(466, 'RAYSA INDAH BERLIANI', 'PERMATA', '0', '0', 0, 'RAYSA INDAH BERLIANI', '4176284558', 'IDR', 4900000, 'Cash On Hand AKTI', '', 'raysaindahberliani@gmail.com', 'OVB', '0', '0', '2023-11-09', 51, '2024-04-19 07:42:40'),
(467, 'YUNITA SANIA MAHARANI ', 'BNI', 'KP SUDIRMAN', 'JAKARTA', 90010, 'YUNITA SANIA MAHARANI', '0361205269', 'IDR', 480600, 'Reimb. Snack Tim Akreditasi', '', 'yunitasania@gmail.com', 'LLG', '0', '0', '2023-11-09', 51, '2024-04-19 07:42:40'),
(468, 'JAENUR RIDWAN', 'PERMATA', '0', '0', 0, 'JAENUR RIDWAN', '9919323288', 'IDR', 1400000, 'Suspense TA ATMI Solo 09-10 Nov 23', '', 'jaenuridwan@gmail.com', 'OVB', '0', '0', '2023-11-09', 51, '2024-04-19 07:42:40'),
(469, 'AFLAH IS NAINIAH', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'AFLAH IS NAINIAH', '6785182671', 'IDR', 700000, 'Reimb. Biaya Operasional Long March Tim Babinsa', '', 'aflah@gmail.com', 'LLG', '0', '0', '2023-11-09', 51, '2024-04-19 07:42:40'),
(470, 'CV. NITASHI RIZKADA ', 'PERMATA', '0', '0', 0, 'CV. NITASHI RIZKADA ', '0970450300', 'IDR', 6047280, 'Paid Inv. No : 00126/NR/X/23', '', 'nitashi@gmail.com', 'OVB', '0', '0', '2023-11-09', 51, '2024-04-19 07:42:40'),
(471, 'PT. TRI JAYA EKA UTAMA', 'MAYBANK', 'KCU.THAMRIN', 'JAKARTA', 160131, 'PT. TRI JAYA EKA UTAMA ', '2232013077', 'IDR', 4387250, 'Paid Inv. No : 0052/TJ/Toyota/X/2023', '', 'trijaya@gmail.com', 'LLG', '0', '0', '2023-11-09', 51, '2024-04-19 07:42:40'),
(472, 'CV. JAPA', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'M. RACHMAD', '2750012534', 'IDR', 7575400, 'Paid Inv. No : 146', '', 'japa@gmail.com', 'LLG', '0', '0', '2023-11-09', 51, '2024-04-19 07:42:40'),
(473, 'HOLLAND BAKERY', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'PT MUSTIKA CITRA RASA', '3721771979', 'IDR', 8528200, 'Paid Inv. No : KRWSOT2310-100265', '', 'holland@gmail.com', 'LLG', '0', '0', '2023-11-09', 51, '2024-04-19 07:42:40'),
(474, 'CV. NITASHI RIZKADA ', 'PERMATA', '0', '0', 0, 'CV. NITASHI RIZKADA ', '0970450300', 'IDR', 4824060, 'Paid Inv. No : 00124/NR/X/23', '', 'nitashi@gmail.com', 'OVB', '0', '0', '2023-11-09', 51, '2024-04-19 07:42:40'),
(475, 'CV. HARAPAN MADANI UTAMA', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'HARAPAN MADANI UTAMA CV', '7402657777', 'IDR', 2429700, 'Paid Inv. No : 0584-2023', '', 'harapanmadani@gmail.com', 'LLG', '0', '0', '2023-11-09', 51, '2024-04-19 07:42:40'),
(476, 'PT. MIRA PUNCAK KEMUNING', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'PT. MIRA PUNCAK KEMUNING', '1290012422339', 'IDR', 15048000, 'Paid No Kwitansi 31', '', 'mira@gmail.com', 'LLG', '0', '0', '2023-11-09', 51, '2024-04-19 07:42:40'),
(477, 'CV. NITASHI RIZKADA ', 'PERMATA', '0', '0', 0, 'CV. NITASHI RIZKADA ', '0970450300', 'IDR', 2042400, 'Paid Inv. No : 00117/NR/X/23', '', 'nitashi@gmail.com', 'OVB', '0', '0', '2023-11-09', 51, '2024-04-19 07:42:40'),
(478, 'CV. NITASHI RIZKADA ', 'PERMATA', '0', '0', 0, 'CV. NITASHI RIZKADA ', '0970450300', 'IDR', 2324340, 'Paid Inv. No : 00119/NR/X/23', '', 'nitashi@gmail.com', 'OVB', '0', '0', '2023-11-09', 51, '2024-04-19 07:42:40'),
(479, 'R BRAM ADITYA KUSUMA', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'R BRAM ADITYA KUSUMA', '8030100221', 'IDR', 1950000, 'Honor Trainer Safety Dojo Skill Standardization 6-8 Nov 23 ', '', 'bram@gmail.com', 'LLG', '0', '0', '2023-11-16', 52, '2024-04-19 07:42:40'),
(480, 'AGUS SRI GUNTORO', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'AGUS SRI GUNTORO', '1250004831475', 'IDR', 390000, 'Honor Trainer Safety Dojo Skill Standardization 6-8 Nov 23', '', 'agus@gmail.com', 'LLG', '0', '0', '2023-11-16', 52, '2024-04-19 07:42:40'),
(481, 'IGNATIUS SRIKUNCORO', 'BNI', 'KP SUDIRMAN', 'JAKARTA', 90010, 'IGNATIUS SRIKUNCORO', '1760306548', 'IDR', 780000, 'Honor Trainer HPW JO 8 Nov 23', '', 'igna@gmail.com', 'LLG', '0', '0', '2023-11-16', 52, '2024-04-19 07:42:40'),
(482, 'SUTRISNO', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'SUTRISNO', '1560000037335', 'IDR', 390000, 'Honor Trainer Basic TPS 3 Nov 23', '', 'sutrisno@gmail.com', 'LLG', '0', '0', '2023-11-16', 52, '2024-04-19 07:42:40'),
(483, 'AKBAR RIYADI', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'AKBAR RIYADI', '4136005570', 'IDR', 390000, 'Honor Trainer Basic TPS 3 Nov 23', '', 'akbar@gmai.com', 'LLG', '0', '0', '2023-11-16', 52, '2024-04-19 07:42:40'),
(484, 'R BRAM ADITYA KUSUMA', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'R BRAM ADITYA KUSUMA', '8030100221', 'IDR', 390000, 'Honor Trainer TCSkill Enrichment 3 Nov 23', '', 'bram@gmail.com', 'LLG', '0', '0', '2023-11-16', 52, '2024-04-19 07:42:40'),
(485, 'DINI LESTARI', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'DINI LESTARI', '9000005180469', 'IDR', 390000, 'Honor Trainer TCSkill Enrichment 3 Nov 23', '', 'dini@gmail.com', 'LLG', '0', '0', '2023-11-16', 52, '2024-04-19 07:42:40'),
(486, 'IGNATIUS SRIKUNCORO', 'BNI', 'KP SUDIRMAN', 'JAKARTA', 90010, 'IGNATIUS SRIKUNCORO', '1760306548', 'IDR', 780000, 'Honor Trainer HPW JC 9-10 Nov 23', '', 'igna@gmail.com', 'LLG', '0', '0', '2023-11-16', 52, '2024-04-19 07:42:40'),
(487, 'NANANG JUANDA', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'NANANG JUANDA', '0060006762235', 'IDR', 390000, 'Honor Trainer HPW JC 9-10 Nov 23', '', 'nanang@gmail.com', 'LLG', '0', '0', '2023-11-16', 52, '2024-04-19 07:42:40'),
(488, 'KHALIL GHIBRAN JIWONO', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'KHALIL GHIBRAN JIWONO', '1730001867820', 'IDR', 780000, 'Honor Trainer NAL 9-10 Nov 23', '', 'khalil@gmail.com', 'LLG', '0', '0', '2023-11-16', 52, '2024-04-19 07:42:40'),
(489, 'BAMBANG SUTRISNO', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'BAMBANG SUTRISNO', '0060010712481', 'IDR', 780000, 'Honor Trainer NAL 9-10 Nov 23', '', 'bambang@gmail.com', 'LLG', '0', '0', '2023-11-16', 52, '2024-04-19 07:42:40'),
(490, 'SYAFITRI FADILLAH', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'SYAFITRI FADILLAH', '1092560877', 'IDR', 146250, 'Fee Fasilitator Robotic Factory 30 Okt - 03 Nov 23', '', 'syafitri@gmail.com', 'LLG', '0', '0', '2023-11-16', 52, '2024-04-19 07:42:40'),
(491, 'MURSYID', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'Ir. MURSYID', '4281416400', 'IDR', 4680000, 'Honor Trainer MGR Role PT Pakarti Riken 26-27 Okt 23', '', 'mursyid@gmail.com', 'LLG', '0', '0', '2023-11-16', 52, '2024-04-19 07:42:40'),
(492, 'RISKY AGUNG TARIGAN', 'BSI', 'KANTOR PUSAT', 'JAKARTA', 4510017, 'RISKY AGUNG TARIGAN', '7153717723', 'IDR', 390000, 'Honor Fasilitator MGR Role PT Pakarti Riken 26-27 Okt 23', '', 'risky@gamail.com', 'LLG', '0', '0', '2023-11-16', 52, '2024-04-19 07:42:40'),
(493, 'WIRAWAN AGUNG NUGROHO', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'WIRAWAN AGUNG NUGROHO', '1250007619760', 'IDR', 780000, 'Honor Trainer JKK 27 Okt 23', '', 'wirawan@gmail.com', 'LLG', '0', '0', '2023-11-16', 52, '2024-04-19 07:42:40'),
(494, 'MURSYID', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'Ir. MURSYID', '4281416400', 'IDR', 5460000, 'Honor Trainer Role PT Pakarti Riken 19 - 20 Okt 23', '', 'mursyid@gmail.com', 'LLG', '0', '0', '2023-11-16', 52, '2024-04-19 07:42:40'),
(495, 'IRFAN MAULANA', 'PERMATA', '0', '0', 0, 'IRFAN MAULANA', '1221102394', 'IDR', 390000, 'Honor Fasilitator SPV Role PT Pakarti Riken 19 - 20 Okt 23 ', '', 'irfan@gmail.com', 'OVB', '0', '0', '2023-11-16', 52, '2024-04-19 07:42:40'),
(496, 'MURSYID', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'Ir. MURSYID', '4281416400', 'IDR', 2450000, ' Reimb. Transport & Allowance Project Training PT Pakarti Riken Okt 23', '', 'mursyid@gmail.com', 'LLG', '0', '0', '2023-11-16', 52, '2024-04-19 07:42:40'),
(497, 'JUHARTONO', 'PERMATA', '0', '0', 0, 'JUHARTONO', '0358623387', 'IDR', 2400000, ' Reimb. Transport & Allowance Project Training PT Pakarti Riken Okt 23', '', 'juhartono@gmail.com', 'OVB', '0', '0', '2023-11-16', 52, '2024-04-19 07:42:40'),
(498, 'IRFAN MAULANA', 'PERMATA', '0', '0', 0, 'IRFAN MAULANA', '1221102394', 'IDR', 750000, 'Reimb. Transport & Allowance Project Training PT Pakarti Riken Okt 23', '', 'irfan@gmail.com', 'OVB', '0', '0', '2023-11-16', 52, '2024-04-19 07:42:40'),
(499, 'RISKY AGUNG TARIGAN', 'BSI', 'KANTOR PUSAT', 'JAKARTA', 4510017, 'RISKY AGUNG TARIGAN', '7153717723', 'IDR', 750000, 'Reimb. Transport & Allowance Project Training PT Pakarti Riken Okt 23', '', 'risky@gamail.com', 'LLG', '0', '0', '2023-11-16', 52, '2024-04-19 07:42:40'),
(500, 'LULU MAHERNI', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'LULU MAHERNI', '7635275847', 'IDR', 850000, 'Reimb. Transport & Allowance Project Training PT Pakarti Riken Okt 23', '', 'lulu@gmail.com', 'LLG', '0', '0', '2023-11-16', 52, '2024-04-19 07:42:40'),
(501, 'YUNITA SANIA MAHARANI ', 'BNI', 'KP SUDIRMAN', 'JAKARTA', 90010, 'YUNITA SANIA MAHARANI', '0361205269', 'IDR', 486300, 'Reimb. Snack untuk Kegiatan progres akreditasi', '', 'yunitasania@gmail.com', 'LLG', '0', '0', '2023-11-16', 52, '2024-04-19 07:42:40'),
(502, 'CV. ARIE', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'ARI KUSNANDAR', '1090990515', 'IDR', 2238320, 'Cetak LKS & ID Card Mahasiswa A8', '', 'arikusnandar@gmail.com', 'LLG', '0', '0', '0000-00-00', 0, '2023-11-15 08:04:56'),
(503, 'YANI KOERNIAWAN', 'BSI', 'KANTOR PUSAT', 'JAKARTA', 4510017, 'YANI KOERNIAWAN', '7098701812', 'IDR', 1267500, 'Honor Dosen Pra Assessment & Akreditasi', '', 'yanik@gmail.com', 'LLG', '0', '0', '2023-11-16', 52, '2024-04-19 07:42:40'),
(504, 'HESSA SINAI SINGADIPOERA', 'PERMATA', '0', '0', 0, 'HESSA SINAI SINGADIPOERA', '4133702860', 'IDR', 1852500, 'Honor Dosen Pra Assessment & Akreditasi', '', 'hessa@gmail.com', 'OVB', '0', '0', '2023-11-16', 52, '2024-04-19 07:42:40'),
(505, 'WINGKY KURNIAWAN', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'WINGKY KURNIAWAN', '6590364809', 'IDR', 682500, 'Honor Dosen Pra Assessment & Akreditasi', '', 'wingky@gmail.com', 'LLG', '0', '0', '2023-11-16', 52, '2024-04-19 07:42:40'),
(506, 'YUI HASTORO SAPARDYANTO', 'PERMATA', '0', '0', 0, 'YUI HASTORO SAPARDYANTO', '970095624', 'IDR', 1852500, 'Honor Dosen Pra Assessment & Akreditasi', '', 'yui@gmail.com', 'OVB', '0', '0', '2023-11-16', 52, '2024-04-19 07:42:40'),
(507, 'INDRAWAN', 'PERMATA', '0', '0', 0, 'INDRAWAN', '0468572338', 'IDR', 682500, 'Honor Dosen Pra Assessment & Akreditasi', '', 'indrawan@gmail.com', 'OVB', '0', '0', '2023-11-16', 52, '2024-04-19 07:42:40'),
(508, 'IMANUDDIN KAMIL', 'BSI', 'KANTOR PUSAT', 'JAKARTA', 4510017, 'IMANUDDIN KAMIL', '7000765389', 'IDR', 1945125, 'Honor Dosen Pra Assessment & Akreditasi', '', 'imanuddin@gmail.com', 'LLG', '0', '0', '2023-11-16', 52, '2024-04-19 07:42:40'),
(509, 'M. KHAMDANI', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'M. KHAMDANI', '7045056023', 'IDR', 450000, 'Reimb. Opr. Longmarch Tim Panitia & Medis', '', 'khamdani@gmail.com', 'LLG', '0', '0', '2023-11-16', 52, '2024-04-19 07:42:40'),
(510, 'CV. ARIE', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'ARI KUSNANDAR', '1090990515', 'IDR', 2238320, 'Cetak LKS & ID Card Mahasiswa A8', '', 'arikusnandar@gmail.com', 'LLG', '0', '0', '2023-11-16', 52, '2024-04-19 07:42:40'),
(511, 'RAYNALDI YUDHA PRASETYA', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'RAYNALDI YUDHA PRASETYA', '1300005410215', 'IDR', 682500, 'Honor Dosen AKTI Pra Assessment & Akreditasi', '', 'raynaldi@gmail.com', 'LLG', '0', '0', '2023-11-16', 52, '2024-04-19 07:42:40'),
(512, 'HOLLAND BAKERY', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'PT MUSTIKA CITRA RASA', '3721771979', 'IDR', 1381800, 'Paid Inv. No : KRWSOTS2309-100048 dan 100521', '', 'holland@gmail.com', 'LLG', '0', '0', '2023-11-23', 53, '2024-04-19 07:42:40'),
(513, 'CV. ARIE', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'ARI KUSNANDAR', '1090990515', 'IDR', 306250, 'Cetak Modul Shortcourse Robotic ', '', 'arikusnandar@gmail.com', 'LLG', '0', '0', '2023-11-23', 53, '2024-04-19 07:42:40'),
(514, 'CV. NITASHI RIZKADA ', 'PERMATA', '0', '0', 0, 'CV. NITASHI RIZKADA ', '0970450300', 'IDR', 6873675, 'Paid Inv. No : 00123/NR/X/23', '', 'nitashi@gmail.com', 'OVB', '0', '0', '2023-11-23', 53, '2024-04-19 07:42:40'),
(515, 'PT. DEANOVA KARYA MANDIRI', 'BNI', 'KP SUDIRMAN', 'JAKARTA', 90010, 'YANI SURTIANI', '0228808758', 'IDR', 1438640, 'Paid Inv. No : 2327/NSA/VIII/2023', '', 'yanisurtiani3011@gmail.com', 'LLG', '0', '0', '2023-11-23', 53, '2024-04-19 07:42:40'),
(516, 'INTAN AULIA HAPSARI', 'BNI', 'KP SUDIRMAN', 'JAKARTA', 90010, 'INTAN AULIA HAPSARI', '0835218555', 'IDR', 1500000, 'Uang Saku Magang ITS Okt 2023', '', 'intan@gmail.com', 'LLG', '0', '0', '2023-11-23', 53, '2024-04-19 07:42:40'),
(517, 'ELFANO SULTAN SYAHBANA', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'ELFANO SULTAN SYAHBANA', '1400022387352', 'IDR', 1500000, 'Uang Saku Magang ITS Okt 2023', '', 'elfano@gmail.com', 'LLG', '0', '0', '2023-11-23', 53, '2024-04-19 07:42:40'),
(518, 'FATYADI RAMSAF', 'PERMATA', '0', '0', 0, 'FATYADI RAMSAF', '9897831322', 'IDR', 5577100, 'Apresiasi Moderator External TLC Okt 23', '', 'fatyadi@gmail.com', 'OVB', '0', '0', '2023-11-23', 53, '2024-04-19 07:42:40'),
(519, 'MSIG', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'MSIG YAYASAN TOYOTA IND', '0643320180003703', 'IDR', 5588330, 'Paid Customer No : 10008340', '', 'sett_pymt@id.msig-asia.com', 'LLG', '0', '0', '2023-11-23', 53, '2024-04-19 07:42:40'),
(520, 'CV. NITASHI RIZKADA ', 'PERMATA', '0', '0', 0, 'CV. NITASHI RIZKADA ', '0970450300', 'IDR', 2473635, 'Paid Inv. No : 00116/NR/X/23', '', 'nitashi@gmail.com', 'OVB', '0', '0', '2023-11-23', 53, '2024-04-19 07:42:40'),
(521, 'CV. NITASHI RIZKADA ', 'PERMATA', '0', '0', 0, 'CV. NITASHI RIZKADA ', '0970450300', 'IDR', 1954710, 'Paid Inv. No : 00122/NR/X/23', '', 'nitashi@gmail.com', 'OVB', '0', '0', '2023-11-23', 53, '2024-04-19 07:42:40'),
(522, 'CV. HARAPAN MADANI UTAMA', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'HARAPAN MADANI UTAMA CV', '7402657777', 'IDR', 12803700, 'Paid Inv. No : 0583-2023', '', 'harapanmadani@gmail.com', 'LLG', '0', '0', '2023-11-23', 53, '2024-04-19 07:42:40'),
(523, 'CV. HARAPAN MADANI UTAMA', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'HARAPAN MADANI UTAMA CV', '7402657777', 'IDR', 7107058, 'Paid Inv. No : 0591-2023', '', 'harapanmadani@gmail.com', 'LLG', '0', '0', '2023-11-23', 53, '2024-04-19 07:42:40'),
(524, 'CV. NITASHI RIZKADA ', 'PERMATA', '0', '0', 0, 'CV. NITASHI RIZKADA ', '0970450300', 'IDR', 2683980, 'Paid Inv. No : 00128/NR/XI/23', '', 'nitashi@gmail.com', 'OVB', '0', '0', '2023-11-23', 53, '2024-04-19 07:42:40'),
(525, 'CV. NITASHI RIZKADA ', 'PERMATA', '0', '0', 0, 'CV. NITASHI RIZKADA ', '0970450300', 'IDR', 1411920, 'Paid Inv. No : 00131/NR/XI/23', '', 'nitashi@gmail.com', 'OVB', '0', '0', '2023-11-23', 53, '2024-04-19 07:42:40'),
(526, 'HOLLAND BAKERY', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'PT MUSTIKA CITRA RASA', '3721771979', 'IDR', 2290600, 'Paid Inv. No : KRW2310-10677', '', 'holland@gmail.com', 'LLG', '0', '0', '2023-11-23', 53, '2024-04-19 07:42:40'),
(527, 'PT ADISIMA PUTRA UTAMA', 'BRI', 'JKT PO', 'JAKARTA', 20307, 'PT ADISIMA PUTRA UTAMA', '011601111033565', 'IDR', 47649560, 'Paid Inv. No : 004/WP.33/CTR-AKTI/X/2023', '', 'warung33spesialpepeskrw@gmail.com', 'LLG', '0', '0', '2023-11-23', 53, '2024-04-19 07:42:40'),
(528, 'CV. NITASHI RIZKADA ', 'PERMATA', '0', '0', 0, 'CV. NITASHI RIZKADA ', '0970450300', 'IDR', 2265510, 'Paid Inv. No : 00129/NR/XI/23', '', 'nitashi@gmail.com', 'OVB', '0', '0', '2023-11-23', 53, '2024-04-19 07:42:40'),
(529, 'PT. TRI JAYA EKA UTAMA', 'MAYBANK', 'KCU.THAMRIN', 'JAKARTA', 160131, 'PT. TRI JAYA EKA UTAMA ', '2232013077', 'IDR', 1942500, 'Paid Inv. No : 0051/TJ/Toyota/X/2023', '', 'trijaya@gmail.com', 'LLG', '0', '0', '2023-11-23', 53, '2024-04-19 07:42:40'),
(530, 'CV. NITASHI RIZKADA ', 'PERMATA', '0', '0', 0, 'CV. NITASHI RIZKADA ', '0970450300', 'IDR', 2594070, 'Paid Inv. No : 00110/NR/X23', '', 'nitashi@gmail.com', 'OVB', '0', '0', '2023-11-23', 53, '2024-04-19 07:42:40'),
(531, 'SYAFITRI FADILLAH', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'SYAFITRI FADILLAH', '1092560877', 'IDR', 3624277, 'Honor Karyawan Magang Nov 23', '', 'syafitri@gmail.com', 'LLG', '0', '0', '2023-11-23', 53, '2024-04-19 07:42:40'),
(532, 'FITRIANI NUR AFFIFAH', 'BRI', 'JKT KPO', 'JAKARTA', 20307, 'FITRIANI NUR AFFIFAH', '424201011593533', 'IDR', 4213873, 'Honor Karyawan Magang Nov 23', '', 'fitriani@gmail.com', 'LLG', '0', '0', '2023-11-23', 53, '2024-04-19 07:42:40'),
(533, 'YUNITA SANIA MAHARANI ', 'BNI', 'KP SUDIRMAN', 'JAKARTA', 90010, 'YUNITA SANIA MAHARANI', '0361205269', 'IDR', 773362, 'Reimb. Snack Tim Akreditasi, Pocari dan Bensin Penjemputan Assesor', '', 'yunitasania@gmail.com', 'LLG', '0', '0', '2023-11-23', 53, '2024-04-19 07:42:40'),
(534, 'AMRULLOH IBNU KHOLDUN', 'BNI', 'KP SUDIRMAN', 'JAKARTA', 90010, 'AMRULLOH IBNU KHOLDUN', '0198521629', 'IDR', 95550000, 'Pelunasan Jasa Konsultan Akreditasi dan Transport', '', 'amrulloh@gmail.com', 'LLG', '0', '0', '2023-11-23', 53, '2024-04-19 07:42:40'),
(535, 'HOTEL MERCURE', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'PT. KARAWANG CITY DEVELOPMENT', '1093030072', 'IDR', 1476200, 'Paid Inv. No : AR-0174733 dan AR-0173960', '', 'mercure@gmail.com', 'LLG', '0', '0', '2023-11-23', 53, '2024-04-19 07:42:40'),
(536, 'CV. NITASHI RIZKADA ', 'PERMATA', '0', '0', 0, 'CV. NITASHI RIZKADA ', '0970450300', 'IDR', 10741470, 'Paid Inv. No : 00115/NR/X/23', '', 'nitashi@gmail.com', 'OVB', '0', '0', '2023-11-23', 53, '2024-04-19 07:42:40'),
(537, 'CV. NITASHI RIZKADA ', 'PERMATA', '0', '0', 0, 'CV. NITASHI RIZKADA ', '0970450300', 'IDR', 22097880, 'Paid Inv. No : 00083/NR/VIII/23', '', 'nitashi@gmail.com', 'OVB', '0', '0', '2023-11-23', 53, '2024-04-19 07:42:40'),
(538, 'AFLAH IS NAINIAH', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'AFLAH IS NAINIAH', '6785182671', 'IDR', 120000, 'Reimb. Cetak Banner Donor Darah & Longmarch', '', 'aflah@gmail.com', 'LLG', '0', '0', '2023-11-23', 53, '2024-04-19 07:42:40'),
(539, 'CV. JAPA', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'M. RACHMAD', '2750012534', 'IDR', 1485680, 'Paid Inv. No : 147', '', 'japa@gmail.com', 'LLG', '0', '0', '2023-11-30', 54, '2024-04-19 07:42:40'),
(540, 'SAHABAT', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'NGADIRIN', '6840342024', 'IDR', 13460300, 'Paid Inv. No : P-SHT-11/23/17', '', 'sahabat@gmail.com', 'LLG', '0', '0', '2023-11-30', 54, '2024-04-19 07:42:40'),
(541, 'DAPUR NYI ITEUNG', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'SUNARTO', '1320004733383', 'IDR', 1000000, 'Pembelian Lunch Training NAL 9 Nov 23', '', 'dapur@gmail.com', 'LLG', '0', '0', '2023-11-30', 54, '2024-04-19 07:42:40'),
(542, 'BERKAH MULYO', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'RUSWAN', '2761563094', 'IDR', 3724000, 'Pulpen Training LCD 1.000 pcs', '', 'berkah@gmail.com', 'LLG', '0', '0', '2023-11-30', 54, '2024-04-19 07:42:40'),
(543, 'PT SYAKIRA BERKAH JAYA', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'PT SYAKIRA BERKAH JAYA', '1550012281518', 'IDR', 1685600, 'Paid Inv. No : 005/TLC/KWT-FIA.SBJ/X/2023', '', 'syakira@gmail.com', 'LLG', '0', '0', '2023-11-30', 54, '2024-04-19 07:42:40'),
(544, 'RIYADI', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'RIYADI', '1200007055838', 'IDR', 390000, 'Honor Trainer Training 5R 8 Nov 23', '', 'riyadi@gmail.com', 'LLG', '0', '0', '2023-11-30', 54, '2024-04-19 07:42:40'),
(545, 'MULIATU RODIAH', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'MULIATU RODIAH', '7630084363', 'IDR', 1462500, 'Project Perbaikan Panduan Mutu LSP TMMIN Nov 23', '', 'muliatu@gmail.com', 'LLG', '0', '0', '2023-11-30', 54, '2024-04-19 07:42:40'),
(546, 'ABDUL ROSYID PRIBADI', 'PERMATA', '0', '0', 0, 'ABDUL ROSYID PRIBADI', '0358978312', 'IDR', 3120000, 'Honor Trainer Training Karakuri for PT. ATI 15-16 Nov 23', '', 'abdul@gmail.com', 'OVB', '0', '0', '2023-11-30', 54, '2024-04-19 07:42:40'),
(547, 'BAMBANG SUTRISNO', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'BAMBANG SUTRISNO', '0060010712481', 'IDR', 780000, 'Honor Trainer Training RAL 20 Nov 23', '', 'bambang@gmail.com', 'LLG', '0', '0', '2023-11-30', 54, '2024-04-19 07:42:40'),
(548, 'SAIDUL IDRUS ', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'SAIDUL IDRUS ', '6590154405', 'IDR', 780000, 'Honor Trainer Training HPW JO 22 Nov 23', '', 'saidul@gmail.com', 'LLG', '0', '0', '2023-11-30', 54, '2024-04-19 07:42:40'),
(549, 'YANI PRANOTO', 'BSI', 'KANTOR PUSAT', 'JAKARTA', 4510017, 'YANI PRANOTO', '7234025960', 'IDR', 780000, 'Honor Trainer Training HPWork JO 21 Nov 23', '', 'yanip@gmail.com', 'LLG', '0', '0', '2023-11-30', 54, '2024-04-19 07:42:40'),
(550, 'MULIATU RODIAH', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'MULIATU RODIAH', '7630084363', 'IDR', 1462500, 'Perbaikan panduan mutu LSP TMMIN Okt 23 ', '', 'muliatu@gmail.com', 'LLG', '0', '0', '2023-11-30', 54, '2024-04-19 07:42:40'),
(551, 'YAYASAN TOYOTA INDONESIA', 'PERMATA', '0', '0', 0, 'YAYASAN TOYOTA INDONESIA', '0702820073', 'IDR', 454516630, 'Request Additional Budget AKTI Des 23', '', 'yti@gmail.com', 'OVB', '0', '0', '2023-11-30', 54, '2024-04-19 07:42:40'),
(552, 'CV. JAPA', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'M. RACHMAD', '2750012534', 'IDR', 31490340, 'Paid Inv. No : 149', '', 'japa@gmail.com', 'LLG', '0', '0', '2023-11-30', 54, '2024-04-19 07:42:40'),
(553, 'CIPTA GRAFIKA', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'FATHI BAWAZIER', '1090817775', 'IDR', 1206000, 'Paid Inv. No : ME231103', '', 'ciptagrafika@gmail.com', 'LLG', '0', '0', '2023-11-30', 54, '2024-04-19 07:42:40'),
(554, 'CV. NITASHI RIZKADA ', 'PERMATA', '0', '0', 0, 'CV. NITASHI RIZKADA ', '0970450300', 'IDR', 1870350, 'Paid Inv. No : 00133/NR/XI/23', '', 'nitashi@gmail.com', 'OVB', '0', '0', '2023-11-30', 54, '2024-04-19 07:42:40'),
(555, 'PT. DEANOVA KARYA MANDIRI', 'BNI', 'KP SUDIRMAN', 'JAKARTA', 90010, 'YANI SURTIANI', '0228808758', 'IDR', 23133880, 'Paid Inv. No : 2352/NSA/X/2023', '', 'yanisurtiani3011@gmail.com', 'LLG', '0', '0', '2023-11-30', 54, '2024-04-19 07:42:40'),
(556, 'CV. HARAPAN MADANI UTAMA', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'HARAPAN MADANI UTAMA CV', '7402657777', 'IDR', 3440000, 'Paid Inv. No : 0592-2023', '', 'harapanmadani@gmail.com', 'LLG', '0', '0', '2023-11-30', 54, '2024-04-19 07:42:40'),
(557, 'CV. NITASHI RIZKADA ', 'PERMATA', '0', '0', 0, 'CV. NITASHI RIZKADA ', '0970450300', 'IDR', 2255520, 'Paid. Inv. No : 00127/NR/XI/23', '', 'nitashi@gmail.com', 'OVB', '0', '0', '2023-11-30', 54, '2024-04-19 07:42:40'),
(558, 'M. KHAMDANI', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'M. KHAMDANI', '7045056023', 'IDR', 300000, 'Remb. Pendaftaran Lomba Badminton FISIP UI OPEN', '', 'khamdani@gmail.com', 'LLG', '0', '0', '2023-11-30', 54, '2024-04-19 07:42:40'),
(559, 'CV. SEKAI ELITE INDONESIA', 'BANK SINARMAS', 'KP.ZAINAL ARIFIN', 'JAKARTA', 1530016, 'CV. SEKAI ELITE INDONESIA', '0052772737', 'IDR', 4896937, 'Paid Inv. No : 33/I/SE/XI/2023', '', 'sekai@gmail.com', 'LLG', '0', '0', '2023-11-30', 54, '2024-04-19 07:42:40'),
(560, 'M. KHAMDANI', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'M. KHAMDANI', '7045056023', 'IDR', 514000, 'Remb. Biaya Operasional Lomba Badminton  UI Depok', '', 'khamdani@gmail.com', 'LLG', '0', '0', '2023-11-30', 54, '2024-04-19 07:42:40'),
(561, 'DAPUR NYI ITEUNG', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'SUNARTO', '1320004733383', 'IDR', 1050000, 'Pembelian Lunch Training NAL 24 Nov 23', '', 'dapur@gmail.com', 'LLG', '0', '0', '2023-12-07', 55, '2024-04-19 07:42:40'),
(562, 'KEBULI CINTA', 'CIMB NIAGA', 'JAKARTA', 'JAKARTA', 220026, 'WELI NUGROHO', '702129031500', 'IDR', 1050000, 'Pembelian Lunch Training NAL 23 Nov 23', '', 'kebulicinta@gmail.com', 'LLG', '0', '0', '2023-12-07', 55, '2024-04-19 07:42:40'),
(563, 'CV. HARAPAN MADANI UTAMA', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'HARAPAN MADANI UTAMA CV', '7402657777', 'IDR', 20694000, 'Paid Inv. No : 0593-2023 ', '', 'harapanmadani@gmail.com', 'LLG', '0', '0', '2023-12-07', 55, '2024-04-19 07:42:40'),
(564, 'KOPERASI KARYAWAN TOYOTA', 'PERMATA', '0', '0', 0, 'KOPERASI KARYAWAN TOYOTA', '0353529005', 'IDR', 10178476, 'Paid Inv. No : 7152/YTI-TIA/11/2023', '', 'kopkar@gmail.com', 'OVB', '0', '0', '2023-12-07', 55, '2024-04-19 07:42:40'),
(565, 'DAPUR NYI ITEUNG', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'SUNARTO', '1320004733383', 'IDR', 700000, 'Pembelian Lunch Training Karakuri 15 Nov 23', '', 'dapur@gmail.com', 'LLG', '0', '0', '2023-12-07', 55, '2024-04-19 07:42:40'),
(566, 'SAHABAT', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'NGADIRIN', '6840342024', 'IDR', 6742400, 'Paid Inv. No : P-SHT-11/23/01', '', 'sahabat@gmail.com', 'LLG', '0', '0', '2023-12-07', 55, '2024-04-19 07:42:40'),
(567, 'HOLLAND BAKERY', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'PT MUSTIKA CITRA RASA', '3721771979', 'IDR', 2014400, 'Paid Inv. No : KRWSOT2310-100605', '', 'holland@gmail.com', 'LLG', '0', '0', '2023-12-07', 55, '2024-04-19 07:42:40'),
(568, 'HOLLAND BAKERY', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'PT MUSTIKA CITRA RASA', '3721771979', 'IDR', 2200000, 'Paid Inv. No : KRWSOT2311-10191', '', 'holland@gmail.com', 'LLG', '0', '0', '2023-12-07', 55, '2024-04-19 07:42:40'),
(569, 'HOLLAND BAKERY', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'PT MUSTIKA CITRA RASA', '3721771979', 'IDR', 1466600, 'Paid Inv. No : KRWSOT2311-10191', '', 'holland@gmail.com', 'LLG', '0', '0', '2023-12-07', 55, '2024-04-19 07:42:40'),
(570, 'HOLLAND BAKERY', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'PT MUSTIKA CITRA RASA', '3721771979', 'IDR', 2120400, 'Paid Inv. No : KRWSOT2311-10191', '', 'holland@gmail.com', 'LLG', '0', '0', '2023-12-07', 55, '2024-04-19 07:42:40'),
(571, 'HOLLAND BAKERY', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'PT MUSTIKA CITRA RASA', '3721771979', 'IDR', 1210100, 'Paid Inv. No : KRWSOT2311-100209', '', 'holland@gmail.com', 'LLG', '0', '0', '2023-12-07', 55, '2024-04-19 07:42:40'),
(572, 'CV. HARAPAN MADANI UTAMA', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'HARAPAN MADANI UTAMA CV', '7402657777', 'IDR', 1764000, 'Paid Inv. No : 0595-2023', '', 'harapanmadani@gmail.com', 'LLG', '0', '0', '2023-12-07', 55, '2024-04-19 07:42:40'),
(573, 'YANI PRANOTO', 'BSI', 'KANTOR PUSAT', 'JAKARTA', 4510017, 'YANI PRANOTO', '7234025960', 'IDR', 780000, 'Honor Trainer HPW JO 27 Nov 23', '', 'yanip@gmail.com', 'LLG', '0', '0', '2023-12-07', 55, '2024-04-19 07:42:40'),
(574, 'KHALIL GHIBRAN JIWONO', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'KHALIL GHIBRAN JIWONO', '1730001867820', 'IDR', 780000, 'Honor Trainer NAL 23-24 Nov 23', '', 'khalil@gmail.com', 'LLG', '0', '0', '2023-12-07', 55, '2024-04-19 07:42:40'),
(575, 'BAMBANG SUTRISNO', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'BAMBANG SUTRISNO', '0060010712481', 'IDR', 780000, 'Honor Trainer NAL 23-24 Nov 23', '', 'bambang@gmail.com', 'LLG', '0', '0', '2023-12-07', 55, '2024-04-19 07:42:40'),
(576, 'IGNATIUS SRIKUNCORO', 'BNI', 'KP SUDIRMAN', 'JAKARTA', 90010, 'IGNATIUS SRIKUNCORO', '1760306548', 'IDR', 780000, 'Honor Trainer HPW JO 28 Nov 23', '', 'igna@gmail.com', 'LLG', '0', '0', '2023-12-07', 55, '2024-04-19 07:42:40'),
(577, 'MURSYID', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'Ir. MURSYID', '4281416400', 'IDR', 5484375, 'Consultant Fee Assessment Talent Develop. Prog. PT Sugity', '', 'mursyid@gmail.com', 'LLG', '0', '0', '2023-12-07', 55, '2024-04-19 07:42:40'),
(578, 'MUHAMMAD YUSUF', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'MUHAMMAD YUSUF', '4130044391', 'IDR', 4387500, 'Consultant Fee Assessment Talent Develop. Prog. PT Sugity', '', 'myusuf@gmail.com', 'LLG', '0', '0', '2023-12-07', 55, '2024-04-19 07:42:40'),
(579, 'RACHMASARI', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'RACHMASARI', '0881096071', 'IDR', 4143750, 'Consultant Fee Assessment Talent Develop. Prog. PT Sugity', '', 'rachmasari@gmail.com', 'LLG', '0', '0', '2023-12-07', 55, '2024-04-19 07:42:40'),
(580, 'IRFAN MAULANA', 'PERMATA', '0', '0', 0, 'IRFAN MAULANA', '1221102394', 'IDR', 243750, 'Consultant Fee Assessment Talent Develop. Prog. PT Sugity', '', 'irfan@gmail.com', 'OVB', '0', '0', '2023-12-07', 55, '2024-04-19 07:42:40'),
(581, 'RISKY AGUNG TARIGAN', 'BSI', 'KANTOR PUSAT', 'JAKARTA', 4510017, 'RISKY AGUNG TARIGAN', '7153717723', 'IDR', 243750, 'Consultant Fee Assessment Talent Develop. Prog. PT Sugity', '', 'risky@gamail.com', 'LLG', '0', '0', '2023-12-07', 55, '2024-04-19 07:42:40'),
(582, 'BAMBANG SUTRISNO', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'BAMBANG SUTRISNO', '0060010712481', 'IDR', 780000, 'Honor Trainer HPW JO 29 Nov 23', '', 'bambang@gmail.com', 'LLG', '0', '0', '2023-12-07', 55, '2024-04-19 07:42:40'),
(583, 'YOSIA INENDATAMA', 'PERMATA', '0', '0', 0, 'YOSIA INENDATAMA', '4119557998', 'IDR', 1560000, 'Honor Trainer NAL 30 Nov - 1 Des 23', '', 'yosia@gmail.com', 'OVB', '0', '0', '2023-12-07', 55, '2024-04-19 07:42:40'),
(584, 'NANANG JUANDA', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'NANANG JUANDA', '0060006762235', 'IDR', 1170000, 'Honor Trainer HPW JC 30 Nov - 1 Des 23', '', 'nanang@gmail.com', 'LLG', '0', '0', '2023-12-07', 55, '2024-04-19 07:42:40'),
(585, 'CV. JAPA', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'M. RACHMAD', '2750012534', 'IDR', 4212040, 'Paid Inv. No : 148', '', 'japa@gmail.com', 'LLG', '0', '0', '2023-12-07', 55, '2024-04-19 07:42:40'),
(586, 'CV. NITASHI RIZKADA ', 'PERMATA', '0', '0', 0, 'CV. NITASHI RIZKADA ', '0970450300', 'IDR', 4259070, 'Paid Inv. No : 00134/NR/XI/23', '', 'nitashi@gmail.com', 'OVB', '0', '0', '2023-12-07', 55, '2024-04-19 07:42:40'),
(587, 'CV. NITASHI RIZKADA ', 'PERMATA', '0', '0', 0, 'CV. NITASHI RIZKADA ', '0970450300', 'IDR', 1498500, 'Paid Inv. No : 00130/NR/XI/23', '', 'nitashi@gmail.com', 'OVB', '0', '0', '2023-12-07', 55, '2024-04-19 07:42:40'),
(588, 'BPJSTK', 'BNI', 'KP SUDIRMAN', 'JAKARTA', 90010, 'EPS BPJS TK', '418019823000', 'IDR', 6576543, 'Iuran BPJSTK Karyawan YTI Des 23', '', 'bpjstk@gmail.com', 'LLG', '0', '0', '2023-12-07', 55, '2024-04-19 07:42:40'),
(589, 'BPJSKES MAHASISWA AKTI', 'BNI', 'KP SUDIRMAN', 'JAKARTA', 90010, 'PBPU Kolektif - Yayasan Toyota Indonesia', '8888890001311756', 'IDR', 3535000, 'Iuran BPJSKES Mahasiswa Des 23', '', 'bpjs@gmail.com', 'LLG', '0', '0', '2023-12-07', 55, '2024-04-19 07:42:40'),
(590, 'BPJSKES KARYAWAN YTI', 'BNI', 'KP SUDIRMAN', 'JAKARTA', 90010, 'YAYASAN TOYOTA INDONESIA', '8888890001311769', 'IDR', 4448194, 'Iuran BPJSKES Karyawan YTI Des 23', '', 'bpjs@gmail.com', 'LLG', '0', '0', '2023-12-07', 55, '2024-04-19 07:42:40'),
(591, 'RAYSA INDAH BERLIANI', 'PERMATA', '0', '0', 0, 'RAYSA INDAH BERLIANI', '4176284558', 'IDR', 4900000, 'Cash on Hand', '', 'raysaindahberliani@gmail.com', 'OVB', '0', '0', '2023-12-07', 55, '2024-04-19 07:42:40'),
(592, 'YUNITA SANIA MAHARANI ', 'BNI', 'KP SUDIRMAN', 'JAKARTA', 90010, 'YUNITA SANIA MAHARANI', '0361205269', 'IDR', 596500, 'Reimb. TA Bimtek Sistem SPMI di Indramayu  ', '', 'yunitasania@gmail.com', 'LLG', '0', '0', '2023-12-07', 55, '2024-04-19 07:42:40'),
(593, 'LUTFY EKA BHIARDIAN', 'PERMATA', '0', '0', 0, 'LUTFY EKA BHIARDIAN', '4105701549', 'IDR', 247000, 'Reimb. Toll & Bensin Kunjungan ke Sunter Plant & Pameran teknologi', '', 'lutfy@gmail.com', 'OVB', '0', '0', '2023-12-07', 55, '2024-04-19 07:42:40'),
(594, 'M. KHAMDANI', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'M. KHAMDANI', '7045056023', 'IDR', 2250000, 'Suspense Petty Cash Asrama Des 2023', '', 'khamdani@gmail.com', 'LLG', '0', '0', '2023-12-07', 55, '2024-04-19 07:42:40'),
(595, 'PT SYAKIRA BERKAH JAYA', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'PT SYAKIRA BERKAH JAYA', '1550012281518', 'IDR', 3346700, 'Paid Inv. No : 007/TLC/KWT-FIA.SBJ/XI/2023', '', 'syakira@gmail.com', 'LLG', '0', '0', '2023-12-14', 56, '2024-04-19 07:42:40'),
(596, 'DAPUR NYI ITEUNG', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'SUNARTO', '1320004733383', 'IDR', 800000, 'Pembelian Lunch Training NAL 1 Des 23', '', 'dapur@gmail.com', 'LLG', '0', '0', '2023-12-14', 56, '2024-04-19 07:42:40'),
(597, 'MIETA RAMADHANINGTIYAS', 'PERMATA', '0', '0', 0, 'MIETA RAMADHANINGTIYAS', '4178093423', 'IDR', 975000, 'Apresiasi Tambahan PA TLC Sistem Jurnal Nov 23', '', 'mieta@gmail.com', 'OVB', '0', '0', '2023-12-14', 56, '2024-04-19 07:42:40'),
(598, 'LIVIA GINTA RISNA', 'PERMATA', '0', '0', 0, 'LIVIA GINTA RISNA', '4178085919', 'IDR', 487500, 'Apresiasi Tambahan PA TLC Kordinator PA Nov 23', '', 'livia@gmail.com', 'OVB', '0', '0', '2023-12-14', 56, '2024-04-19 07:42:40'),
(599, 'FATYADI RAMSAF', 'PERMATA', '0', '0', 0, 'FATYADI RAMSAF', '9897831322', 'IDR', 975000, 'Apresiasi Tambahan PA TLC Handle Aktivitas Safety Sunter & SIO Nov 23', '', 'fatyadi@gmail.com', 'OVB', '0', '0', '2023-12-14', 56, '2024-04-19 07:42:40'),
(600, 'MO DANIEL SETIAWAN', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'MO DANIEL SETIAWAN', '6590887755', 'IDR', 3510000, 'Honor Trainer Training & Mentoring Practical Problem Solving (TBP Admin) PT Triputra 21-22 Nov 23', '', 'daniel@gmail.com', 'LLG', '0', '0', '2023-12-14', 56, '2024-04-19 07:42:40'),
(601, 'IRFAN MAULANA', 'PERMATA', '0', '0', 0, 'IRFAN MAULANA', '1221102394', 'IDR', 390000, 'Honor Fasilitator Training & Mentoring Practical Problem Solving (TBP Admin) PT Triputra 21-22 Nov 23', '', 'irfan@gmail.com', 'OVB', '0', '0', '2023-12-14', 56, '2024-04-19 07:42:40'),
(602, 'NANANG JUANDA', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'NANANG JUANDA', '0060006762235', 'IDR', 780000, 'Honor Trainer RAL 17 November 2023', '', 'nanang@gmail.com', 'LLG', '0', '0', '2023-12-14', 56, '2024-04-19 07:42:40'),
(603, 'NURDANI ROCHMAN', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'NURDANI ROCHMAN', '0660770283', 'IDR', 3900000, 'Honor Trainer Shortcourse Robotic 30 Okt - 03 Nov 23', '', 'nurdani@gmail.com', 'LLG', '0', '0', '2023-12-14', 56, '2024-04-19 07:42:40'),
(604, 'PT. DEANOVA KARYA MANDIRI', 'BNI', 'KP SUDIRMAN', 'JAKARTA', 90010, 'YANI SURTIANI', '0228808758', 'IDR', 23226980, 'Paid Inv. No : 2359/NSA/XI/2023', '', 'yanisurtiani3011@gmail.com', 'LLG', '0', '0', '2023-12-14', 56, '2024-04-19 07:42:40'),
(605, 'PT ADISIMA PUTRA UTAMA', 'BRI', 'JKT PO', 'JAKARTA', 20307, 'PT ADISIMA PUTRA UTAMA', '011601111033565', 'IDR', 23120160, 'Paid Inv. No : 005/WP.33/CTR-AKTI/X/2023', '', 'warung33spesialpepeskrw@gmail.com', 'LLG', '0', '0', '2023-12-14', 56, '2024-04-19 07:42:40'),
(606, 'PT. TRI JAYA EKA UTAMA', 'MAYBANK', 'KCU.THAMRIN', 'JAKARTA', 160131, 'PT. TRI JAYA EKA UTAMA ', '2232013077', 'IDR', 3531532, 'Paid Inv. No : 0059/TJ/Toyota/XI/2023', '', 'trijaya@gmail.com', 'LLG', '0', '0', '2023-12-14', 56, '2024-04-19 07:42:40'),
(607, 'CV. NITASHI RIZKADA ', 'PERMATA', '0', '0', 0, 'CV. NITASHI RIZKADA ', '0970450300', 'IDR', 7856025, 'Paid Inv. No : 00125/NR/X/23', '', 'nitashi@gmail.com', 'OVB', '0', '0', '2023-12-14', 56, '2024-04-19 07:42:40'),
(608, 'PT. PAKAR UTAMA ', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'PT. PAKAR UTAMA ', '4493033738', 'IDR', 48647200, 'Paid Inv. No : KR.10.23.003 dan KR.11.23.003', '', 'pakar@gmail.com', 'LLG', '0', '0', '2023-12-14', 56, '2024-04-19 07:42:40'),
(609, 'PT SYAKIRA BERKAH JAYA', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'PT SYAKIRA BERKAH JAYA', '1550012281518', 'IDR', 1146600, 'Paid Inv. No : 003/TLC/KWT-FIA.SBJ/XII/2023', '', 'syakira@gmail.com', 'LLG', '0', '0', '2023-12-21', 57, '2024-04-19 07:42:40'),
(610, 'RIYADI', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'RIYADI', '1200007055838', 'IDR', 390000, 'Honor Trainer 5R 22 Nov 23', '', 'riyadi@gmail.com', 'LLG', '0', '0', '2023-12-21', 57, '2024-04-19 07:42:40'),
(611, 'FATYADI RAMSAF', 'PERMATA', '0', '0', 0, 'FATYADI RAMSAF', '9897831322', 'IDR', 6191000, 'Apresiasi Moderator Eksternal TLC Nov 23', '', 'fatyadi@gmail.com', 'OVB', '0', '0', '2023-12-21', 57, '2024-04-19 07:42:40'),
(612, 'BAMBANG SUTRISNO', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'BAMBANG SUTRISNO', '0060010712481', 'IDR', 1560000, 'Honor Trainer NAL  7-8 Des 2023', '', 'bambang@gmail.com', 'LLG', '0', '0', '2023-12-21', 57, '2024-04-19 07:42:40'),
(613, 'R BRAM ADITYA KUSUMA', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'R BRAM ADITYA KUSUMA', '8030100221', 'IDR', 1560000, 'Honor Trainer TCS Enrichment 01 Des 23', '', 'bram@gmail.com', 'LLG', '0', '0', '2023-12-21', 57, '2024-04-19 07:42:40'),
(614, 'SAIDUL IDRUS ', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'SAIDUL IDRUS ', '6590154405', 'IDR', 780000, 'Honor Trainer HPW JO 07 Des 23', '', 'saidul@gmail.com', 'LLG', '0', '0', '2023-12-21', 57, '2024-04-19 07:42:40'),
(615, 'YANI PRANOTO', 'BSI', 'KANTOR PUSAT', 'JAKARTA', 4510017, 'YANI PRANOTO', '7234025960', 'IDR', 780000, 'Honor Trainer HPW JO 08 Des 23', '', 'yanip@gmail.com', 'LLG', '0', '0', '2023-12-21', 57, '2024-04-19 07:42:40'),
(616, 'RIYADI', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'RIYADI', '1200007055838', 'IDR', 390000, 'Honor Trainer 5R 06 Des 23', '', 'riyadi@gmail.com', 'LLG', '0', '0', '2023-12-21', 57, '2024-04-19 07:42:40'),
(617, 'IGNATIUS SRIKUNCORO', 'BNI', 'KP SUDIRMAN', 'JAKARTA', 90010, 'IGNATIUS SRIKUNCORO', '1760306548', 'IDR', 780000, 'Honor Trainer RAL 06 Des 23 ', '', 'igna@gmail.com', 'LLG', '0', '0', '2023-12-21', 57, '2024-04-19 07:42:40'),
(618, 'PRADITYA ALAMBARA', 'BSI', 'KANTOR PUSAT', 'JAKARTA', 4510017, 'PRADITYA ALAMBARA', '7227847990', 'IDR', 873015, 'Reimb. Makan Benchmark to PEI 1 Des 23', '', 'praditya@gmail.com', 'LLG', '0', '0', '2023-12-21', 57, '2024-04-19 07:42:40'),
(619, 'WARNOTO', 'PERMATA', '0', '0', 0, 'WARNOTO', '0350334319', 'IDR', 2223000, 'Reimb. TA Sosialisasi PMB dan Bench. ATMI 12-14 Des 23', '', 'warnoto@gmail.com', 'OVB', '0', '0', '2023-12-21', 57, '2024-04-19 07:42:40'),
(620, 'AFIEN WIBHAWA', 'PERMATA', '0', '0', 0, 'AFIEN WIBHAWA', '3110329759', 'IDR', 2024000, 'Reimb. TA Sosialisasi PMB Bench ATMI & Raker CSR 12-17 Des 23', '', 'afien@gmail.com', 'OVB', '0', '0', '2023-12-21', 57, '2024-04-19 07:42:40'),
(621, 'MITRA PLUS SOLUSINDO', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'MITRA PLUS SOLUSINDO', '1250005292834', 'IDR', 3047043, 'Biaya Transport Bpk Afien dan Bpk Warnoto', '', 'mitraplus@gmail.com', 'LLG', '0', '0', '2023-12-21', 57, '2024-04-19 07:42:40'),
(622, 'ABDUL ROSYID PRIBADI', 'PERMATA', '0', '0', 0, 'ABDUL ROSYID PRIBADI', '0358978312', 'IDR', 975000, 'Honor Trainer Seminar Karakuri PT TAM 9 Des 23 ', '', 'abdul@gmail.com', 'OVB', '0', '0', '2023-12-21', 57, '2024-04-19 07:42:40'),
(623, 'HARI SUNARTO', 'PERMATA', '0', '0', 0, 'HARI SUNARTO', '1221127192', 'IDR', 487500, 'Honor Trainer Seminar Karakuri PT TAM 9 Des 23', '', 'hari@gmail.com', 'OVB', '0', '0', '2023-12-21', 57, '2024-04-19 07:42:40'),
(624, 'KARDIMAN', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'KARDIMAN', '1730000370065', 'IDR', 390000, 'Honor Trainer Basic TPS PT TAM 7 Des 2023', '', 'kardiman@gmail.com', 'LLG', '0', '0', '2023-12-21', 57, '2024-04-19 07:42:40'),
(625, 'TEGUH CAHYADI', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'TEGUH CAHYADI', '1320005112322', 'IDR', 390000, 'Honor Trainer Basic TPS PT TAM 7 Des 2023', '', 'teguh@gmail.com', 'LLG', '0', '0', '2023-12-21', 57, '2024-04-19 07:42:40'),
(626, 'MUHAMMAD YUSUF', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'MUHAMMAD YUSUF', '4130044391', 'IDR', 1462500, 'Consultant Fee Standardization Skill PT NSK 1-30 Nov 23', '', 'myusuf@gmail.com', 'LLG', '0', '0', '2023-12-21', 57, '2024-04-19 07:42:40'),
(627, 'JUHARTONO', 'PERMATA', '0', '0', 0, 'JUHARTONO', '0358623387', 'IDR', 3168750, 'Consultant Fee Standardization Skill PT NSK 1-30 Nov 23', '', 'juhartono@gmail.com', 'OVB', '0', '0', '2023-12-21', 57, '2024-04-19 07:42:40'),
(628, 'DEDI AMBARI', 'BANK JABAR', 'MENARA BANK ', 'BANDUNG', 1100019, 'DEDI AMBARI', '0072535601100', 'IDR', 2681250, 'Consultant Fee Standardization Skill PT NSK 1-30 Nov 23', '', 'dedi@gmail.com', 'LLG', '0', '0', '2023-12-21', 57, '2024-04-19 07:42:40');
INSERT INTO `tbl_payment_v` (`id_payment_v`, `nama_vendor`, `bank_name`, `address_bank`, `bank_city`, `bank_code`, `account_name`, `account_number`, `currency`, `amount_payment`, `description`, `description2`, `email_vendor`, `transaction_type`, `resident_status`, `citizen_status`, `payment_date`, `id_payment_date`, `create_date`) VALUES
(629, 'RACHMASARI', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'RACHMASARI', '0881096071', 'IDR', 1950000, 'Consultant Fee Standardization Skill PT NSK 1-30 Nov 23', '', 'rachmasari@gmail.com', 'LLG', '0', '0', '2023-12-21', 57, '2024-04-19 07:42:40'),
(630, 'MULIATU RODIAH', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'MULIATU RODIAH', '7630084363', 'IDR', 1462500, 'Fee Project Perbaikan Panduan Mutu LSP TMMIN Des 23', '', 'muliatu@gmail.com', 'LLG', '0', '0', '2023-12-21', 57, '2024-04-19 07:42:40'),
(631, 'YAYASAN TOYOTA INDONESIA', 'PERMATA', '0', '0', 0, 'YAYASAN TOYOTA INDONESIA', '0702820073', 'IDR', 1452245347, 'Transfer Budget AKTI Term 4 Periode Jan - Mar 2024', '', 'yti@gmail.com', 'OVB', '0', '0', '2023-12-28', 58, '2024-04-19 07:42:40'),
(632, 'HOLLAND BAKERY', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'PT MUSTIKA CITRA RASA', '3721771979', 'IDR', 2014400, 'Pembelian Snack Training NAL 30 Nov - 1 Des 23', '', 'holland@gmail.com', 'LLG', '0', '0', '2023-12-28', 58, '2024-04-19 07:42:40'),
(633, 'PT SYAKIRA BERKAH JAYA', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'PT SYAKIRA BERKAH JAYA', '1550012281518', 'IDR', 1048600, 'Paid Inv. No : 008/TLC/KWT-FIA.SBJ/XII/2023', '', 'syakira@gmail.com', 'LLG', '0', '0', '2023-12-28', 58, '2024-04-19 07:42:40'),
(634, 'HOLLAND BAKERY', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'PT MUSTIKA CITRA RASA', '3721771979', 'IDR', 1794600, 'Paid Inv. No : KRW2312-100204', '', 'holland@gmail.com', 'LLG', '0', '0', '2023-12-28', 58, '2024-04-19 07:42:40'),
(635, 'DAPUR NYI ITEUNG', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'SUNARTO', '1320004733383', 'IDR', 850000, 'Pembelian Lunch Training NAL 08 Des 23', '', 'dapur@gmail.com', 'LLG', '0', '0', '2023-12-28', 58, '2024-04-19 07:42:40'),
(636, 'CV. HARAPAN MADANI UTAMA', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'HARAPAN MADANI UTAMA CV', '7402657777', 'IDR', 2900000, 'Paid Inv. No : 0597-2023', '', 'harapanmadani@gmail.com', 'LLG', '0', '0', '2023-12-28', 58, '2024-04-19 07:42:40'),
(637, 'HERU SUNARTO', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'HERU SUNARTO', '1330014156392', 'IDR', 1560000, ' Honor Trainer Training TL Role 19-21 Des 23 PT Resin Plating Technology', '', 'heru@gmail.com', 'LLG', '0', '0', '2023-12-28', 58, '2024-04-19 07:42:40'),
(638, 'DEDI AMBARI', 'BANK JABAR', 'MENARA BANK ', 'BANDUNG', 1100019, 'DEDI AMBARI', '0072535601100', 'IDR', 1560000, ' Honor Trainer Training TL Role 19-21 Des 23 PT Resin Plating Technology', '', 'dedi@gmail.com', 'LLG', '0', '0', '2023-12-28', 58, '2024-04-19 07:42:40'),
(639, 'JUHARTONO', 'PERMATA', '0', '0', 0, 'JUHARTONO', '0358623387', 'IDR', 1560000, ' Honor Trainer Training TL Role 19-21 Des 23 PT Resin Plating Technology', '', 'juhartono@gmail.com', 'OVB', '0', '0', '2023-12-28', 58, '2024-04-19 07:42:40'),
(640, 'MUHAMMAD YUSUF', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'MUHAMMAD YUSUF', '4130044391', 'IDR', 487500, ' Honor Trainer Training TL Role 19-21 Des 23 PT Resin Plating Technology', '', 'myusuf@gmail.com', 'LLG', '0', '0', '2023-12-28', 58, '2024-04-19 07:42:40'),
(641, 'RIDWAN GOZALI', 'PERMATA', '0', '0', 0, 'RIDWAN GOZALI', '4102410551', 'IDR', 585000, ' Honor Fasilitator Training TL Role 19-21 Des 23 PT Resin Plating Technology', '', 'ridwan@gmail.com', 'OVB', '0', '0', '2023-12-28', 58, '2024-04-19 07:42:40'),
(642, 'RISTIQ FARIYANI QANA\'AH', 'PERMATA', '0', '0', 0, 'RISTIQ FARIYANI QANA\'AH', '9998639007', 'IDR', 365625, ' Honor Fasilitator Training TL Role 19-21 Des 23 PT Resin Plating Technology', '', 'ristiq@gmail.com', 'OVB', '0', '0', '2023-12-28', 58, '2024-04-19 07:42:40'),
(643, 'JUHARTONO', 'PERMATA', '0', '0', 0, 'JUHARTONO', '0358623387', 'IDR', 750000, 'Reimburse Akomodasi Training 5R 11-12 Des 23 Poltek Petrokimia Banten', '', 'juhartono@gmail.com', 'OVB', '0', '0', '2023-12-28', 58, '2024-04-19 07:42:40'),
(644, 'AGUS SRI GUNTORO', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'AGUS SRI GUNTORO', '1250004831475', 'IDR', 620000, 'Reimburse Akomodasi Training 5R 11-12 Des 23 Poltek Petrokimia Banten', '', 'agus@gmail.com', 'LLG', '0', '0', '2023-12-28', 58, '2024-04-19 07:42:40'),
(645, 'JUHARTONO', 'PERMATA', '0', '0', 0, 'JUHARTONO', '0358623387', 'IDR', 3120000, 'Honor Trainer Training 5R to Poltek Banten 11-12 Des 23', '', 'juhartono@gmail.com', 'OVB', '0', '0', '2023-12-28', 58, '2024-04-19 07:42:40'),
(646, 'AGUS SRI GUNTORO', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'AGUS SRI GUNTORO', '1250004831475', 'IDR', 1560000, 'Honor Trainer Training 5R to Poltek Banten 11-12 Des 23', '', 'agus@gmail.com', 'LLG', '0', '0', '2023-12-28', 58, '2024-04-19 07:42:40'),
(647, 'MO DANIEL SETIAWAN', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'MO DANIEL SETIAWAN', '6590887755', 'IDR', 3510000, 'Honor Trainer Training & Mentoring Practical Problem Solving (TBP Admin) PT Triputra 18-19 Des 23', '', 'daniel@gmail.com', 'LLG', '0', '0', '2023-12-28', 58, '2024-04-19 07:42:40'),
(648, 'IRFAN MAULANA', 'PERMATA', '0', '0', 0, 'IRFAN MAULANA', '1221102394', 'IDR', 195000, 'Honor Fasilitator Training & Mentoring Practical Problem Solving (TBP Admin) PT Triputra 18-19 Des 23', '', 'irfan@gmail.com', 'OVB', '0', '0', '2023-12-28', 58, '2024-04-19 07:42:40'),
(649, 'WARNOTO', 'PERMATA', '0', '0', 0, 'WARNOTO', '0350334319', 'IDR', 2261861, 'Reimburse Hotel dan Pesawat Bapak Afien RAKER dan Sosialisasi PMB 16-17 Desember 2023 (Extand)', '', 'warnoto@gmail.com', 'OVB', '0', '0', '2023-12-28', 58, '2024-04-19 07:42:40'),
(650, 'YOSIA INENDATAMA', 'PERMATA', '0', '0', 0, 'YOSIA INENDATAMA', '4119557998', 'IDR', 780000, 'Honor Trainer Training NAL 14-15 Des 23', '', 'yosia@gmail.com', 'OVB', '0', '0', '2023-12-28', 58, '2024-04-19 07:42:40'),
(651, 'BAMBANG SUTRISNO', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'BAMBANG SUTRISNO', '0060010712481', 'IDR', 780000, 'Honor Trainer Training NAL 14-15 Des 23', '', 'bambang@gmail.com', 'LLG', '0', '0', '2023-12-28', 58, '2024-04-19 07:42:40'),
(652, 'HERMAN CATUR NUGROHO', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'HERMAN CATUR NUGROHO', '1020005599227', 'IDR', 780000, 'Honor Trainer Training Basic PDCA For PT TAM 13 Des 23', '', 'herman@gmail.com', 'LLG', '0', '0', '2023-12-28', 58, '2024-04-19 07:42:40'),
(653, 'ABDUL ROSYID PRIBADI', 'PERMATA', '0', '0', 0, 'ABDUL ROSYID PRIBADI', '0358978312', 'IDR', 3120000, 'Honor Trainer Training Karakuri PT ATI 14-15 Desember 2023', '', 'abdul@gmail.com', 'OVB', '0', '0', '2023-12-28', 58, '2024-04-19 07:42:40'),
(654, 'KEBULI CINTA', 'CIMB NIAGA', 'JAKARTA', 'JAKARTA', 220026, 'WELI NUGROHO', '702129031500', 'IDR', 1700000, 'Lunch Training NAL dan Karakuri 14 Des 23 ', '', 'kebulicinta@gmail.com', 'LLG', '0', '0', '2024-01-04', 59, '2024-04-19 07:42:40'),
(655, 'CV. HARAPAN MADANI UTAMA', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'HARAPAN MADANI UTAMA CV', '7402657777', 'IDR', 3925000, 'Paid Inv. No : 0598-2023', '', 'harapanmadani@gmail.com', 'LLG', '0', '0', '2024-01-04', 59, '2024-04-19 07:42:40'),
(656, 'HOLLAND BAKERY', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'PT MUSTIKA CITRA RASA', '3721771979', 'IDR', 3476400, 'Paid Inv. No : KRW2312-100204', '', 'holland@gmail.com', 'LLG', '0', '0', '2024-01-04', 59, '2024-04-19 07:42:40'),
(657, 'KOPERASI KARYAWAN TOYOTA', 'PERMATA', '0', '0', 0, 'KOPERASI KARYAWAN TOYOTA', '0353529005', 'IDR', 22238062, 'Paid Inv. No : 7294/YTI-TIA/12/2023', '', 'kopkar@gmail.com', 'OVB', '0', '0', '2024-01-04', 59, '2024-04-19 07:42:40'),
(658, 'RACHMASARI', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'RACHMASARI', '0881096071', 'IDR', 1162800, 'Reimb. Hotel  Workshop 5R Poltek Banten 11-12 Des 23 ', '', 'rachmasari@gmail.com', 'LLG', '0', '0', '2024-01-04', 59, '2024-04-19 07:42:40'),
(659, 'CV. NITASHI RIZKADA ', 'PERMATA', '0', '0', 0, 'CV. NITASHI RIZKADA ', '0970450300', 'IDR', 7031850, 'Paid Inv. No : 00136/NR/XII/23', '', 'nitashi@gmail.com', 'OVB', '0', '0', '2024-01-04', 59, '2024-04-19 07:42:40'),
(660, 'PT. CAHAYA INTI PUTRA SEJAHTERA', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'PT. CAHAYA INTI PUTRA SEJAHTERA', '7080228800', 'IDR', 4797601, 'Paid Inv. No : J32311011184', '', 'cahayainti@gmail.com', 'LLG', '0', '0', '2024-01-04', 59, '2024-04-19 07:42:40'),
(661, 'CV. NITASHI RIZKADA ', 'PERMATA', '0', '0', 0, 'CV. NITASHI RIZKADA ', '0970450300', 'IDR', 4526580, 'Paid Inv. No : 00137/NR/XII/23', '', 'nitashi@gmail.com', 'OVB', '0', '0', '2024-01-04', 59, '2024-04-19 07:42:40'),
(662, 'HOLLAND BAKERY', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'PT MUSTIKA CITRA RASA', '3721771979', 'IDR', 1163400, 'Paid Inv. No : KRW2311-100209', '', 'holland@gmail.com', 'LLG', '0', '0', '2024-01-04', 59, '2024-04-19 07:42:40'),
(663, 'CV. JAPA', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'M. RACHMAD', '2750012534', 'IDR', 28725760, 'Paid Inv. No : 150', '', 'japa@gmail.com', 'LLG', '0', '0', '2024-01-04', 59, '2024-04-19 07:42:40'),
(664, 'CV. NITASHI RIZKADA ', 'PERMATA', '0', '0', 0, 'CV. NITASHI RIZKADA ', '0970450300', 'IDR', 4222440, 'Paid Inv. No: 00143/NR/XII/23', '', 'nitashi@gmail.com', 'OVB', '0', '0', '2024-01-04', 59, '2024-04-19 07:42:40'),
(665, 'CV. NITASHI RIZKADA ', 'PERMATA', '0', '0', 0, 'CV. NITASHI RIZKADA ', '0970450300', 'IDR', 1348650, 'Paid Inv. No : 00142/NR/XII/23', '', 'nitashi@gmail.com', 'OVB', '0', '0', '2024-01-04', 59, '2024-04-19 07:42:40'),
(666, 'PT ADISIMA PUTRA UTAMA', 'BRI', 'JKT PO', 'JAKARTA', 20307, 'PT ADISIMA PUTRA UTAMA', '011601111033565', 'IDR', 23152500, 'Paid Inv. No : 006/WP.33/CTR-AKTI/XII/2023', '', 'warung33spesialpepeskrw@gmail.com', 'LLG', '0', '0', '2024-01-04', 59, '2024-04-19 07:42:40'),
(667, 'HOLLAND BAKERY', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'PT MUSTIKA CITRA RASA', '3721771979', 'IDR', 520100, 'Paid Inv. No : KRW2312-100199', '', 'holland@gmail.com', 'LLG', '0', '0', '2024-01-04', 59, '2024-04-19 07:42:40'),
(668, 'PT. DEANOVA KARYA MANDIRI', 'BNI', 'KP SUDIRMAN', 'JAKARTA', 90010, 'YANI SURTIANI', '0228808758', 'IDR', 23022160, 'Paid Inv. No : 2368/NSA/XII/2023', '', 'yanisurtiani3011@gmail.com', 'LLG', '0', '0', '2024-01-04', 59, '2024-04-19 07:42:40'),
(669, 'BPJSKES MAHASISWA AKTI', 'BNI', 'KP SUDIRMAN', 'JAKARTA', 90010, 'PBPU Kolektif - Yayasan Toyota Indonesia', '8888890001311756', 'IDR', 3535000, 'Iuran BPJSKES Mahasiswa AKTI Jan 24', '', 'bpjs@gmail.com', 'LLG', '0', '0', '2024-01-04', 59, '2024-04-19 07:42:40'),
(670, 'BPJSKES KARYAWAN YTI', 'BNI', 'KP SUDIRMAN', 'JAKARTA', 90010, 'YAYASAN TOYOTA INDONESIA', '8888890001311769', 'IDR', 4472692, 'Iuran BPJSKES Karyawan YTI Jan 24', '', 'bpjs@gmail.com', 'LLG', '0', '0', '2024-01-04', 59, '2024-04-19 07:42:40'),
(671, 'BPJSTK', 'BNI', 'KP SUDIRMAN', 'JAKARTA', 90010, 'EPS BPJS TK', '418019823000', 'IDR', 6576543, 'Iuran BPJSTK Karyawan YTI Jan 24', '', 'bpjstk@gmail.com', 'LLG', '0', '0', '2024-01-04', 59, '2024-04-19 07:42:40'),
(672, 'MITRA PLUS SOLUSINDO', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'MITRA PLUS SOLUSINDO', '1250005292834', 'IDR', 2289453, 'Biaya Pesawat Sosialisasi PMB & Benchmark an Mellinda', '', 'mitraplus@gmail.com', 'LLG', '0', '0', '2024-01-04', 59, '2024-04-19 07:42:40'),
(673, 'MELLINDA EFENDI', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'MELLINDA EFENDI', '6785059097', 'IDR', 2124000, 'Reimb. TA Sosialisasi PMB & Benchmark 13-15 Des 23', '', 'mellinda@gmail.com', 'LLG', '0', '0', '2024-01-04', 59, '2024-04-19 07:42:40'),
(674, 'ANZ DEKORASI', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'IRFAN ZAELANI', '3780222734', 'IDR', 16604336, 'Biaya Dekorasi Opening Ceremony New Dormitory 18 Des 23', '', 'anz@gmail.com', 'LLG', '0', '0', '2024-01-04', 59, '2024-04-19 07:42:40'),
(675, 'HOLLAND BAKERY', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'PT MUSTIKA CITRA RASA', '3721771979', 'IDR', 2797200, 'Paid Inv. No : HB/0026-KRW/XII/2023', '', 'holland@gmail.com', 'LLG', '0', '0', '2024-01-11', 61, '2024-04-19 07:42:40'),
(676, 'MITRA PLUS SOLUSINDO', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'MITRA PLUS SOLUSINDO', '1250005292834', 'IDR', 6759500, 'Tiket Pesawat dan Kereta to Solo Nov 23', '', 'mitraplus@gmail.com', 'LLG', '0', '0', '2024-01-11', 61, '2024-04-19 07:42:40'),
(677, 'HESSA SINAI SINGADIPOERA', 'PERMATA', '0', '0', 0, 'HESSA SINAI SINGADIPOERA', '4133702860', 'IDR', 3549000, 'Honor Auditor AMI Nov & Des 2023', '', 'hessa@gmail.com', 'OVB', '0', '0', '2024-01-11', 61, '2024-04-19 07:42:40'),
(678, 'RAYSA INDAH BERLIANI', 'PERMATA', '0', '0', 0, 'RAYSA INDAH BERLIANI', '4176284558', 'IDR', 6900000, 'Cash on Hand AKTI', '', 'raysaindahberliani@gmail.com', 'OVB', '0', '0', '2024-01-11', 61, '2024-04-19 07:42:40'),
(679, 'KURNIANSYAH', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'KURNIANSYAH', '0671843222', 'IDR', 60000, 'Reimb. Pembayaran langganan domain akti.ac.id', '', 'kurniansyah@gmail.com', 'LLG', '0', '0', '2024-01-11', 61, '2024-04-19 07:42:40'),
(680, 'HERU SUNARTO', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'HERU SUNARTO', '1330014156392', 'IDR', 1560000, 'Honor Trainer TL Role 26-28 Des 23 PT Resin ', '', 'heru@gmail.com', 'LLG', '0', '0', '2024-01-11', 61, '2024-04-19 07:42:40'),
(681, 'DEDI AMBARI', 'BANK JABAR', 'MENARA BANK ', 'BANDUNG', 1100019, 'DEDI AMBARI', '0072535601100', 'IDR', 1560000, 'Honor Trainer TL Role 26-28 Des 23 PT Resin', '', 'dedi@gmail.com', 'LLG', '0', '0', '2024-01-11', 61, '2024-04-19 07:42:40'),
(682, 'JUHARTONO', 'PERMATA', '0', '0', 0, 'JUHARTONO', '0358623387', 'IDR', 1560000, 'Honor Trainer TL Role 26-28 Des 23 PT Resin ', '', 'juhartono@gmail.com', 'OVB', '0', '0', '2024-01-11', 61, '2024-04-19 07:42:40'),
(683, 'MUHAMMAD YUSUF', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'MUHAMMAD YUSUF', '4130044391', 'IDR', 487500, 'Honor Trainer TL Role 26-28 Des 23 PT Resin ', '', 'myusuf@gmail.com', 'LLG', '0', '0', '2024-01-11', 61, '2024-04-19 07:42:40'),
(684, 'RIDWAN GOZALI', 'PERMATA', '0', '0', 0, 'RIDWAN GOZALI', '4102410551', 'IDR', 585000, 'Honor Fasilitator TL Role 26-28 Des 23 PT Resin ', '', 'ridwan@gmail.com', 'OVB', '0', '0', '2024-01-11', 61, '2024-04-19 07:42:40'),
(685, 'EFDI DERIAN DANI', 'PERMATA', '0', '0', 0, 'EFDI DERIAN DANI', '4186000930', 'IDR', 365625, 'Honor Fasilitator TL Role 26-28 Des 23 PT Resin ', '', 'efdi@gmail.com', 'OVB', '0', '0', '2024-01-11', 61, '2024-04-19 07:42:40'),
(686, 'FATYADI RAMSAF', 'PERMATA', '0', '0', 0, 'FATYADI RAMSAF', '9897831322', 'IDR', 5886000, 'Apresiasi Moderator Eksternal TLC Des 23', '', 'fatyadi@gmail.com', 'OVB', '0', '0', '2024-01-11', 61, '2024-04-19 07:42:40'),
(687, 'RIYADI', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'RIYADI', '1200007055838', 'IDR', 390000, 'Honor Trainer 5R 20 Des 23', '', 'riyadi@gmail.com', 'LLG', '0', '0', '2024-01-11', 61, '2024-04-19 07:42:40'),
(688, 'DAUD NUR RENDRA ARBIANTO', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'DAUD NUR RENDRA ARBIANTO', '8770404089', 'IDR', 780000, 'Honor Trainer JKK 21 Des 23', '', 'daud@gmail.com', 'LLG', '0', '0', '2024-01-11', 61, '2024-04-19 07:42:40'),
(689, 'HUDA FATULLAH', 'BNI', 'KP SUDIRMAN', 'JAKARTA', 90010, 'HUDA FATULLAH', '305321214', 'IDR', 780000, 'Honor Trainer NAL 21-22 Des 23', '', 'huda@gmail.com', 'LLG', '0', '0', '2024-01-11', 61, '2024-04-19 07:42:40'),
(690, 'RIZKY JULISTYA', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'RIZKY JULISTYA', '8760626717', 'IDR', 780000, 'Honor Trainer NAL 21-22 Des 23', '', 'rizkyjulistya@gmail.com', 'LLG', '0', '0', '2024-01-11', 61, '2024-04-19 07:42:40'),
(691, 'NANANG JUANDA', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'NANANG JUANDA', '0060006762235', 'IDR', 780000, 'Honor Trainer RAL 21 Des 23', '', 'nanang@gmail.com', 'LLG', '0', '0', '2024-01-11', 61, '2024-04-19 07:42:40'),
(692, 'CARSA', 'BNI', 'KP SUDIRMAN', 'JAKARTA', 90010, 'Bpk Carsa', '1209956315', 'IDR', 975000, 'Honor Dosen Desember 2023', '', 'carsa@gmail.com', 'LLG', '0', '0', '2024-01-11', 61, '2024-04-19 07:42:40'),
(693, 'HESSA SINAI SINGADIPOERA', 'PERMATA', '0', '0', 0, 'HESSA SINAI SINGADIPOERA', '4133702860', 'IDR', 3285750, 'Honor Dosen Desember 2023', '', 'hessa@gmail.com', 'OVB', '0', '0', '2024-01-11', 61, '2024-04-19 07:42:40'),
(694, 'YUI HASTORO SAPARDYANTO', 'PERMATA', '0', '0', 0, 'YUI HASTORO SAPARDYANTO', '970095624', 'IDR', 1550250, 'Honor Dosen Desember 2023', '', 'yui@gmail.com', 'OVB', '0', '0', '2024-01-11', 61, '2024-04-19 07:42:40'),
(695, 'SURYONO', 'BSI', 'KANTOR PUSAT', ' JAKARTA', 4510017, 'SURYONO', '4510017', 'IDR', 975000, 'Honor Dosen Desember 2023', '', 'suryono@gmail.com', 'LLG', '0', '0', '2024-01-11', 61, '2024-04-19 07:42:40'),
(696, 'ABDUL KHOIR', 'PERMATA', '0', '0', 0, 'ABDUL KHOIR', '970402659', 'IDR', 409500, 'Honor Dosen Desember 2023', '', 'abdulkhoir@gmail.com', 'OVB', '0', '0', '2024-01-11', 61, '2024-04-19 07:42:40'),
(697, 'ENDI SUARDI', 'PERMATA', '0', '0', 0, 'ENDI SUARDI', '4103060503', 'IDR', 351000, 'Honor Dosen Desember 2023', '', 'endi@gmail.com', 'OVB', '0', '0', '2024-01-11', 61, '2024-04-19 07:42:40'),
(698, 'MUHAMAD YAHYA', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'MUHAMAD YAHYA', 'Mandiri', 'IDR', 409500, 'Honor Dosen Desember 2023', '', 'yahya@gmail.com', 'LLG', '0', '0', '2024-01-11', 61, '2024-04-19 07:42:40'),
(699, 'ALDO MAHARDIKA', 'BRI', 'JKT PO', 'JAKARTA', 20307, 'ALDO MAHARDIKA', '013901123569500', 'IDR', 487500, 'Honor Seminar Hubungan Industri Des 23', '', 'aldo@gmail.com', 'LLG', '0', '0', '2024-01-11', 61, '2024-04-19 07:42:40'),
(700, 'YAYAN HERNAYANTO', 'PERMATA', '0', '0', 0, 'YAYAN HERNAYANTO', '4106692446', 'IDR', 682500, 'Honor Seminar Hubungan Industri Des 23', '', 'yayan@gmail.com', 'OVB', '0', '0', '2024-01-11', 61, '2024-04-19 07:42:40'),
(701, 'HENRY SUMARTO', 'PERMATA', '0', '0', 0, 'HENRY SUMARTO', '1210030790', 'IDR', 731250, 'Honor Seminar Hubungan Industri Des 23', '', 'henry@gmail.com', 'OVB', '0', '0', '2024-01-11', 61, '2024-04-19 07:42:40'),
(702, 'DADAN HASBULLAH', 'BSI', 'KANTOR PUSAT', ' JAKARTA', 4510017, 'DADAN HASBULLAH', '4857219840', 'IDR', 487500, 'Honor Seminar Hubungan Industri Des 23', '', 'dadan@gmail.com', 'LLG', '0', '0', '2024-01-11', 61, '2024-04-19 07:42:40'),
(703, 'DWI SUKMA SAPUTRA', 'BSI', 'KANTOR PUSAT', ' JAKARTA', 4510017, 'DWI SUKMA SAPUTRA', '7244668870', 'IDR', 487500, 'Honor Seminar Hubungan Industri Des 23 ', '', 'dwisukma@gmail.com', 'LLG', '0', '0', '2024-01-11', 61, '2024-04-19 07:42:40'),
(704, 'IKRAM FATAHILLAH', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'IKRAM FATAHILLAH', '1320006035423', 'IDR', 487500, 'Honor Seminar Industri Des 23', '', 'ikram@gmail.com', 'LLG', '0', '0', '2024-01-11', 61, '2024-04-19 07:42:40'),
(705, 'SUHANDI', 'BSI', 'KANTOR PUSAT', ' JAKARTA', 4510017, 'SUHANDI', '72278998000', 'IDR', 682500, 'Honor Seminar Hubungan Industri Des 23', '', 'suhandi@gmail.com', 'LLG', '0', '0', '2024-01-11', 61, '2024-04-19 07:42:40'),
(706, 'ENDAN AGUS YUHANDIANA', 'BSI', 'KANTOR PUSAT', ' JAKARTA', 4510017, 'ENDAN AGUS YUHANDIANA', '6942753390', 'IDR', 682500, 'Honor Seminar Industri Des 23', '', 'endan@gmail.com', 'LLG', '0', '0', '2024-01-11', 61, '2024-04-19 07:42:40'),
(707, 'CV. SEKAI ELITE INDONESIA', 'BANK SINARMAS', 'KP.ZAINAL ARIFIN', 'JAKARTA', 1530016, 'CV. SEKAI ELITE INDONESIA', '0052772737', 'IDR', 9793875, 'Paid Inv. No : 36/I/SE/XII/2023', '', 'sekai@gmail.com', 'LLG', '0', '0', '2024-01-18', 62, '2024-04-19 07:42:40'),
(708, 'HOTEL MERCURE', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'PT. KARAWANG CITY DEVELOPMENT', '1093030072', 'IDR', 738100, 'Paid Inv. No : AR-0185653-INV', '', 'mercure@gmail.com', 'LLG', '0', '0', '2024-01-18', 62, '2024-04-19 07:42:40'),
(709, 'HOTEL MERCURE', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'PT. KARAWANG CITY DEVELOPMENT', '1093030072', 'IDR', 738100, 'Paid Inv. No : AR-0185073-INV', '', 'mercure@gmail.com', 'LLG', '0', '0', '2024-01-18', 62, '2024-04-19 07:42:40'),
(710, 'CV. JAPA', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'M. RACHMAD', '2750012534', 'IDR', 32600680, 'Paid Inv. No : 151', '', 'japa@gmail.com', 'LLG', '0', '0', '2024-01-18', 62, '2024-04-19 07:42:40'),
(711, 'PT ADISIMA PUTRA UTAMA', 'BRI', 'JKT PO', 'JAKARTA', 20307, 'PT ADISIMA PUTRA UTAMA', '011601111033565', 'IDR', 22550780, 'Paid Inv. No : 001/WP.33/CTR-AKTI/I/2024', '', 'warung33spesialpepeskrw@gmail.com', 'LLG', '0', '0', '2024-01-18', 62, '2024-04-19 07:42:40'),
(712, 'CV. NITASHI RIZKADA ', 'PERMATA', '0', '0', 0, 'CV. NITASHI RIZKADA ', '0970450300', 'IDR', 20879100, 'Paid Inv. No : 00001/NR/I/24', '', 'nitashi@gmail.com', 'OVB', '0', '0', '2024-01-18', 62, '2024-04-19 07:42:40'),
(713, 'ALDO MAHARDHIKA', 'BRI', 'JKT PO', 'JAKARTA', 20307, 'ALDO MAHARDHIKA', '013901123569500', 'IDR', 487500, 'Trf. Ulng. Honor Seminar Umum Hubungan Industri', '', 'aldo@gmail.com', 'LLG', '0', '0', '2024-01-18', 62, '2024-04-19 07:42:40'),
(714, 'M. KHAMDANI', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'M. KHAMDANI', '7045056023', 'IDR', 990000, 'Reimburse Fee Ustad & Syukuran New Dormitory', '', 'khamdani@gmail.com', 'LLG', '0', '0', '2024-01-18', 62, '2024-04-19 07:42:40'),
(715, 'PT SYAKIRA BERKAH JAYA', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'PT SYAKIRA BERKAH JAYA', '1550012281518', 'IDR', 1891400, 'Paid Inv. No : 013/TLC/KWT-FIA.SBJ/XII/2023', '', 'syakira@gmail.com', 'LLG', '0', '0', '2024-01-18', 62, '2024-04-19 07:42:40'),
(716, 'HOLLAND BAKERY', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'PT MUSTIKA CITRA RASA', '3721771979', 'IDR', 1526300, 'Paid Inv. No : HB/0022-KRW/XII/2023', '', 'holland@gmail.com', 'LLG', '0', '0', '2024-01-18', 62, '2024-04-19 07:42:40'),
(717, 'PT SYAKIRA BERKAH JAYA', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'PT SYAKIRA BERKAH JAYA', '1550012281518', 'IDR', 641900, 'Paid Inv. No : 018/TLC/KWT-FIA.SBJ/XII/2023', '', 'syakira@gmail.com', 'LLG', '0', '0', '2024-01-18', 62, '2024-04-19 07:42:40'),
(718, 'SAHABAT', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'NGADIRIN', '6840342024', 'IDR', 4998000, 'Paid Inv. No : P-SHT-12/23/13', '', 'sahabat@gmail.com', 'LLG', '0', '0', '2024-01-18', 62, '2024-04-19 07:42:40'),
(719, 'CV. HARAPAN MADANI UTAMA', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'HARAPAN MADANI UTAMA CV', '7402657777', 'IDR', 21370000, 'Paid Inv. No : 05599-2023', '', 'harapanmadani@gmail.com', 'LLG', '0', '0', '2024-01-18', 62, '2024-04-19 07:42:40'),
(720, 'CV. HARAPAN MADANI UTAMA', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'HARAPAN MADANI UTAMA CV', '7402657777', 'IDR', 3626000, 'Paid Inv. No : 0600-2023', '', 'harapanmadani@gmail.com', 'LLG', '0', '0', '2024-01-18', 62, '2024-04-19 07:42:40'),
(721, 'FATYADI RAMSAF', 'PERMATA', '0', '0', 0, 'FATYADI RAMSAF', '9897831322', 'IDR', 1990000, 'Kekurangan Trf Apresiasi Tambahan PA ( Sep - Nov ) 2023 Handle Aktivitas Safety Sunter & SIO', '', 'fatyadi@gmail.com', 'OVB', '0', '0', '2024-01-18', 62, '2024-04-19 07:42:40'),
(722, 'MIETA RAMADHANINGTIYAS', 'PERMATA', '0', '0', 0, 'MIETA RAMADHANINGTIYAS', '4178093423', 'IDR', 995000, 'Apresiasi Tambahan PA Desember 2023 Handle Aktivitas Keuangan External Training', '', 'mieta@gmail.com', 'OVB', '0', '0', '2024-01-18', 62, '2024-04-19 07:42:40'),
(723, 'LIVIA GINTA RISNA', 'PERMATA', '0', '0', 0, 'LIVIA GINTA RISNA', '4178085919', 'IDR', 497500, 'Apresiasi Tambahan PA Desember 2023 Koordinator Program Admin', '', 'livia@gmail.com', 'OVB', '0', '0', '2024-01-18', 62, '2024-04-19 07:42:40'),
(724, 'FATYADI RAMSAF', 'PERMATA', '0', '0', 0, 'FATYADI RAMSAF', '9897831322', 'IDR', 995000, 'Apresiasi Tambahan PA Desember 2023 Handle Aktivitas Safety Sunter & SIO', '', 'fatyadi@gmail.com', 'OVB', '0', '0', '2024-01-18', 62, '2024-04-19 07:42:40'),
(725, 'MO DANIEL SETIAWAN', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'MO DANIEL SETIAWAN', '6590887755', 'IDR', 3582000, 'Honor Trainer Training & Mentoring Practical Problem Solving (TBP Admin) PT Triputra ', '', 'daniel@gmail.com', 'LLG', '0', '0', '2024-01-18', 62, '2024-04-19 07:42:40'),
(726, 'IRFAN MAULANA', 'PERMATA', '0', '0', 0, 'IRFAN MAULANA', '1221102394', 'IDR', 200000, 'Honor Fasilitator Training & Mentoring Practical Problem Solving (TBP Admin) PT Triputra', '', 'irfan@gmail.com', 'OVB', '0', '0', '2024-01-18', 62, '2024-04-19 07:42:40'),
(727, 'NIKEN PUTRI SEKARINI', 'PERMATA', '0', '0', 0, 'NIKEN PUTRI SEKARINI', '9923821624', 'IDR', 150000, 'Honor Fasilitator Training & Mentoring Practical Problem Solving (TBP Admin) PT Triputra', '', 'niken@gmail.com', 'OVB', '0', '0', '2024-01-18', 62, '2024-04-19 07:42:40'),
(728, 'YANI PRANOTO', 'BSI', 'KANTOR PUSAT', 'JAKARTA', 4510017, 'YANI PRANOTO', '7234025960', 'IDR', 796000, 'Honor Trainer HPW JO 10 Januari 2024', '', 'yanip@gmail.com', 'LLG', '0', '0', '2024-01-18', 62, '2024-04-19 07:42:40'),
(729, 'MUHAMAD YUSUF RAHADI', 'PERMATA', '0', '0', 0, 'MUHAMAD YUSUF RAHADI', '1217045521', 'IDR', 796000, 'Honor Trainer NAL 11-12 Januari 2024', '', 'yusuf@gmail.com', 'OVB', '0', '0', '2024-01-18', 62, '2024-04-19 07:42:40'),
(730, 'ANGGI DAVID YANUAR', 'BRI', 'JKT PO', 'JAKARTA', 20307, 'ANGGI DAVID YANUAR', '011601004025532', 'IDR', 796000, 'Honor Trainer NAL 11-12 Januari 2024', '', 'anggidavid@gmail.com', 'LLG', '0', '0', '2024-01-18', 62, '2024-04-19 07:42:40'),
(731, 'RIZKY JULISTYA PUTRA', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'RIZKY JULISTYA', '8760626717', 'IDR', 780000, 'Transfer Ulang Honor Trainer NAL 21-22 Desember 2023', '', 'rizkyjulistya@gmail.com', 'LLG', '0', '0', '2024-01-18', 62, '2024-04-19 07:42:40'),
(732, 'RIZKI DWI AFRIANTO', 'PERMATA', '0', '0', 0, 'RIZKI DWI AFRIANTO', '1224913970', 'IDR', 331000, 'Reimb. Toll training di Sunter rizky dan muryanto', '', 'rizki@gmail.com', 'OVB', '0', '0', '2024-01-18', 62, '2024-04-19 07:42:40'),
(733, 'YUNITA SANIA MAHARANI ', 'BNI', 'KP SUDIRMAN', 'JAKARTA', 90010, 'YUNITA SANIA MAHARANI', '0361205269', 'IDR', 659000, 'Reimburse Snack Akreditasi Desember 2023', '', 'yunitasania@gmail.com', 'LLG', '0', '0', '2024-01-18', 62, '2024-04-19 07:42:40'),
(734, 'CV. ARIE', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'ARI KUSNANDAR', '1090990515', 'IDR', 556640, 'Cetak Buku Hydraulic', '', 'arikusnandar@gmail.com', 'LLG', '0', '0', '2024-01-25', 63, '2024-04-19 07:42:40'),
(735, 'CV. NITASHI RIZKADA ', 'PERMATA', '0', '0', 0, 'CV. NITASHI RIZKADA ', '0970450300', 'IDR', 843600, 'Paid Inv. No : 00005/NR/I/24', '', 'nitashi@gmail.com', 'OVB', '0', '0', '2024-01-25', 63, '2024-04-19 07:42:40'),
(736, 'CV. NITASHI RIZKADA ', 'PERMATA', '0', '0', 0, 'CV. NITASHI RIZKADA ', '0970450300', 'IDR', 26090550, 'Paid Inv. No : 00002/NR/I/24', '', 'nitashi@gmail.com', 'OVB', '0', '0', '2024-01-25', 63, '2024-04-19 07:42:40'),
(737, 'PT. DEANOVA KARYA MANDIRI', 'BNI', 'KP SUDIRMAN', 'JAKARTA', 90010, 'YANI SURTIANI', '0228808758', 'IDR', 21584500, 'Paid Inv. No : 2377/NSA/I/2024', '', 'yanisurtiani3011@gmail.com', 'LLG', '0', '0', '2024-01-25', 63, '2024-04-19 07:42:40'),
(738, 'CV. NITASHI RIZKADA ', 'PERMATA', '0', '0', 0, 'CV. NITASHI RIZKADA ', '0970450300', 'IDR', 1370000, 'Paid Inv. No : 00004/NR/I/24', '', 'nitashi@gmail.com', 'OVB', '0', '0', '2024-01-25', 63, '2024-04-19 07:42:40'),
(739, 'PT ADISIMA PUTRA UTAMA', 'BRI', 'JKT PO', 'JAKARTA', 20307, 'PT ADISIMA PUTRA UTAMA', '011601111033565', 'IDR', 2739100, 'Paid Inv. No : 002/WP.33/SO.AKTI/I/2024', '', 'warung33spesialpepeskrw@gmail.com', 'LLG', '0', '0', '2024-01-25', 63, '2024-04-19 07:42:40'),
(740, 'CV. HARAPAN MADANI UTAMA', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'HARAPAN MADANI UTAMA CV', '7402657777', 'IDR', 3562300, 'Paid Inv. No : 0601-2023', '', 'harapanmadani@gmail.com', 'LLG', '0', '0', '2024-01-25', 63, '2024-04-19 07:42:40'),
(741, 'PT. TRI JAYA EKA UTAMA', 'MAYBANK', 'KCU.THAMRIN', 'JAKARTA', 160131, 'PT. TRI JAYA EKA UTAMA ', '2232013077', 'IDR', 3927928, 'Paid Inv. No : 0065/TJ/Toyota/XII/2023', '', 'trijaya@gmail.com', 'LLG', '0', '0', '2024-01-25', 63, '2024-04-19 07:42:40'),
(742, 'PT. TRI JAYA EKA UTAMA', 'MAYBANK', 'KCU.THAMRIN', 'JAKARTA', 160131, 'PT. TRI JAYA EKA UTAMA ', '2232013077', 'IDR', 396396, 'Pengembalian atas Kurang Bayar Pemotongan Rumput Nov 23', '', 'trijaya@gmail.com', 'LLG', '0', '0', '2024-01-25', 63, '2024-04-19 07:42:40'),
(743, 'CV. NITASHI RIZKADA ', 'PERMATA', '0', '0', 0, 'CV. NITASHI RIZKADA ', '0970450300', 'IDR', 9861240, 'Paid Inv. No : 00003/NR/I/24', '', 'nitashi@gmail.com', 'OVB', '0', '0', '2024-01-25', 63, '2024-04-19 07:42:40'),
(744, 'KIN NO KAGI', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'TANOSHINDO BOGA KELOLA', '1730013526992', 'IDR', 1000000, 'Paid Inv. No : NKW/4477/FINC/TBK/XII/2023', '', 'tanoshindo@gmail.com', 'LLG', '0', '0', '2024-01-25', 63, '2024-04-19 07:42:40'),
(745, 'PT. PAKAR UTAMA ', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'PT. PAKAR UTAMA ', '4493033738', 'IDR', 19158600, 'Paid Inv No : KR.12.23.003 dan Pemotongan Kurang Bayar PPh 23', '', 'pakar@gmail.com', 'LLG', '0', '0', '2024-01-25', 63, '2024-04-19 07:42:40'),
(746, 'FITRIANI NUR AFFIFAH', 'BRI', 'JKT KPO', 'JAKARTA', 20307, 'FITRIANI NUR AFFIFAH', '424201011593533', 'IDR', 3000000, 'Honor Karyawan Magang Jan 24', '', 'fitriani@gmail.com', 'LLG', '0', '0', '2024-01-25', 63, '2024-04-19 07:42:40'),
(747, 'SYAFITRI FADILLAH', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'SYAFITRI FADILLAH', '1092560877', 'IDR', 3000000, 'Honor Karyawan Magang Jan 24', '', 'syafitri@gmail.com', 'LLG', '0', '0', '2024-01-25', 63, '2024-04-19 07:42:40'),
(748, 'PT JETORBIT TEKNOLOGI INDONESIA', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'PT JETORBIT TEKNOLOGI INDONESIA', '8020570556', 'IDR', 11976000, 'Paid Inv. No : 52319', '', 'jetorbit@gmail.com', 'LLG', '0', '0', '2024-01-25', 63, '2024-04-19 07:42:40'),
(749, 'DAPUR NYI ITEUNG', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'SUNARTO', '1320004733383', 'IDR', 850000, 'Pembelian Lunch Training NAL 21 Des 23', '', 'dapur@gmail.com', 'LLG', '0', '0', '2024-01-25', 63, '2024-04-19 07:42:40'),
(750, 'ELFANO SULTAN SYAHBANA', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'ELFANO SULTAN SYAHBANA', '1400022387352', 'IDR', 1500000, 'Uang Saku Magang ITS Jan 24', '', 'elfano@gmail.com', 'LLG', '0', '0', '2024-01-25', 63, '2024-04-19 07:42:40'),
(751, 'INTAN AULIA HAPSARI', 'BNI', 'KP SUDIRMAN', 'JAKARTA', 90010, 'INTAN AULIA HAPSARI', '0835218555', 'IDR', 1500000, 'Uang Saku Magang ITS Jan 24', '', 'intan@gmail.com', 'LLG', '0', '0', '2024-01-25', 63, '2024-04-19 07:42:40'),
(752, 'HERU SUNARTO', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'HERU SUNARTO', '1330014156392', 'IDR', 1560000, 'Honor Trainer GL Role PT RPT Batch 1 9-11 Jan 24', '', 'heru@gmail.com', 'LLG', '0', '0', '2024-01-25', 63, '2024-04-19 07:42:40'),
(753, 'DEDI AMBARI', 'BANK JABAR', 'MENARA BANK ', 'BANDUNG', 1100019, 'DEDI AMBARI', '0072535601100', 'IDR', 1560000, 'Honor Trainer GL Role PT RPT Batch 1 9-11 Jan 24 ', '', 'dedi@gmail.com', 'LLG', '0', '0', '2024-01-25', 63, '2024-04-19 07:42:40'),
(754, 'JUHARTONO', 'PERMATA', '0', '0', 0, 'JUHARTONO', '0358623387', 'IDR', 1560000, 'Honor Trainer GL Role PT RPT Batch 1 9-11 Jan 24', '', 'juhartono@gmail.com', 'OVB', '0', '0', '2024-01-25', 63, '2024-04-19 07:42:40'),
(755, 'RIDWAN GOZALI', 'PERMATA', '0', '0', 0, 'RIDWAN GOZALI', '4102410551', 'IDR', 585000, 'Honor Fasilitator GL Role PT RPT Batch 1 9-11 Jan 24', '', 'ridwan@gmail.com', 'OVB', '0', '0', '2024-01-25', 63, '2024-04-19 07:42:40'),
(756, 'SINTIYA MEILASARI', 'PERMATA', '0', '0', 0, 'SINTIYA MEILASARI', '9871577177', 'IDR', 365625, 'Honor Fasilitator GL Role PT RPT Batch 1 9-11 Jan 24', '', 'sintiya@gmail.com', 'OVB', '0', '0', '2024-01-25', 63, '2024-04-19 07:42:40'),
(757, 'RIZKY JULISTYA PUTRA', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'RIZKY JULISTYA PUTRA', '8760626717', 'IDR', 780000, 'Transfer Ulang Honor Trainer NAL 21-22 Des 23', '', 'rizkyjulistya@gmail.com', 'LLG', '0', '0', '2024-01-25', 63, '2024-04-19 07:42:40'),
(758, 'CV. NITASHI RIZKADA ', 'PERMATA', '0', '0', 0, 'CV. NITASHI RIZKADA ', '0970450300', 'IDR', 2931510, 'Paid Inv. No : 00108/NR/X/23', '', 'nitashi@gmail.com', 'OVB', '0', '0', '2024-01-31', 64, '2024-04-19 07:42:40'),
(759, 'CV. NITASHI RIZKADA ', 'PERMATA', '0', '0', 0, 'CV. NITASHI RIZKADA ', '0970450300', 'IDR', 1875900, 'Paid. Inv. No : 00144/NR/XII/23', '', 'nitashi@gmail.com', 'OVB', '0', '0', '2024-01-31', 64, '2024-04-19 07:42:40'),
(760, 'HOLLAND BAKERY', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'PT MUSTIKA CITRA RASA', '3721771979', 'IDR', 260800, 'Paid Inv. No : HB/0026-KRW/XII/2023', '', 'holland@gmail.com', 'LLG', '0', '0', '2024-01-31', 64, '2024-04-19 07:42:40'),
(761, 'FPPTI', 'BRI', 'JKT KPO', 'JAKARTA', 20307, 'REGINA RATNA ARIFIANTY', '164701000285538', 'IDR', 250000, 'Perpanjangan Keanggotaan FPPTI Jabar 2024', '', 'fpptijabar@gmail.com', 'LLG', '0', '0', '2024-01-31', 64, '2024-04-19 07:42:40'),
(762, 'MELLINDA EFENDI', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'MELLINDA EFENDI', '6785059097', 'IDR', 473400, 'Reimb. Snack Dosen Tamu HRD, Banner Akred, Cetak Kalender COE', '', 'mellinda@gmail.com', 'LLG', '0', '0', '2024-01-31', 64, '2024-04-19 07:42:40'),
(763, 'CV. HARAPAN MADANI UTAMA', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'HARAPAN MADANI UTAMA CV', '7402657777', 'IDR', 11124000, 'Paid Inv. No : 0602-2024', '', 'harapanmadani@gmail.com', 'LLG', '0', '0', '2024-01-31', 64, '2024-04-19 07:42:40'),
(764, 'DAPUR NYI ITEUNG', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'SUNARTO', '1320004733383', 'IDR', 950000, 'Pembelian Lunch Training NAL 12 Jan 24', '', 'dapur@gmail.com', 'LLG', '0', '0', '2024-01-31', 64, '2024-04-19 07:42:40'),
(765, 'HOLLAND BAKERY', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'PT MUSTIKA CITRA RASA', '3721771979', 'IDR', 1891000, 'Paid Inv. No : KRW2401-100121', '', 'holland@gmail.com', 'LLG', '0', '0', '2024-01-31', 64, '2024-04-19 07:42:40'),
(766, 'HERU SUNARTO', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'HERU SUNARTO', '1330014156392', 'IDR', 1560000, 'Honor Trainer GL Role PT RPT Batch 2 16-18 Jan 24', '', 'heru@gmail.com', 'LLG', '0', '0', '2024-01-31', 64, '2024-04-19 07:42:40'),
(767, 'DEDI AMBARI', 'BANK JABAR', 'MENARA BANK ', 'BANDUNG', 1100019, 'DEDI AMBARI', '0072535601100', 'IDR', 1560000, 'Honor Trainer GL Role PT RPT Batch 2 16-18 Jan 24', '', 'dedi@gmail.com', 'LLG', '0', '0', '2024-01-31', 64, '2024-04-19 07:42:40'),
(768, 'JUHARTONO', 'PERMATA', '0', '0', 0, 'JUHARTONO', '0358623387', 'IDR', 1560000, 'Honor Trainer GL Role PT RPT Batch 2 16-18 Jan 24', '', 'juhartono@gmail.com', 'OVB', '0', '0', '2024-01-31', 64, '2024-04-19 07:42:40'),
(769, 'RIDWAN GOZALI', 'PERMATA', '0', '0', 0, 'RIDWAN GOZALI', '4102410551', 'IDR', 585000, 'Honor Fasilitator GL Role PT RPT Batch 2 16-18 Jan 24 ', '', 'ridwan@gmail.com', 'OVB', '0', '0', '2024-01-31', 64, '2024-04-19 07:42:40'),
(770, 'RIZKA AYU PERMANA', 'PERMATA', '0', '0', 0, 'RIZKA AYU PERMANA', '9997135757', 'IDR', 365625, 'Honor Fasilitator GL Role PT RPT Batch 2 16-18 Jan 24', '', 'rizka@gmail.com', 'OVB', '0', '0', '2024-01-31', 64, '2024-04-19 07:42:40'),
(771, 'IGNATIUS SRIKUNCORO', 'BNI', 'KP SUDIRMAN', 'JAKARTA', 90010, 'IGNATIUS SRIKUNCORO', '1760306548', 'IDR', 780000, 'Honor Trainer HPW JO 17 Jan 24', '', 'igna@gmail.com', 'LLG', '0', '0', '2024-01-31', 64, '2024-04-19 07:42:40'),
(772, 'BAMBANG SUTRISNO', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'BAMBANG SUTRISNO', '0060010712481', 'IDR', 780000, 'Honor Trainer HPW JO 16 Jan 24', '', 'bambang@gmail.com', 'LLG', '0', '0', '2024-01-31', 64, '2024-04-19 07:42:40'),
(773, 'HUDA FATULLAH', 'BNI', 'KP SUDIRMAN', 'JAKARTA', 90010, 'HUDA FATULLAH', '305321214', 'IDR', 780000, 'Honor Trainer NAL 18-19 Jan 24', '', 'huda@gmail.com', 'LLG', '0', '0', '2024-01-31', 64, '2024-04-19 07:42:40'),
(774, 'BAMBANG SUTRISNO', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'BAMBANG SUTRISNO', '0060010712481', 'IDR', 780000, 'Honor Trainer NAL 18-19 Jan 24', '', 'bambang@gmail.com', 'LLG', '0', '0', '2024-01-31', 64, '2024-04-19 07:42:40'),
(775, 'SAIDUL IDRUS ', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'SAIDUL IDRUS ', '6590154405', 'IDR', 780000, 'Honor Trainer HPW JO 19 Jan 24', '', 'saidul@gmail.com', 'LLG', '0', '0', '2024-01-31', 64, '2024-04-19 07:42:40'),
(776, 'BPJSKES MAHASISWA AKTI', 'BNI', 'KP SUDIRMAN', 'JAKARTA', 90010, 'PBPU Kolektif - Yayasan Toyota Indonesia', '8888890001311756', 'IDR', 3535000, 'Iuran BPJS Kesehatan Mahasiswa Feb 24', '', 'bpjs@gmail.com', 'LLG', '0', '0', '2024-02-13', 65, '2024-04-19 07:42:40'),
(777, 'BPJSKES KARYAWAN YTI', 'BNI', 'KP SUDIRMAN', 'JAKARTA', 90010, 'YAYASAN TOYOTA INDONESIA', '8888890001311769', 'IDR', 3405782, 'Iuran BPJS Kesehatan Karyawan YTI Feb 24', '', 'bpjs@gmail.com', 'LLG', '0', '0', '2024-02-13', 65, '2024-04-19 07:42:40'),
(778, 'BPJSTK', 'BNI', 'KP SUDIRMAN', 'JAKARTA', 90010, 'EPS BPJS TK', '418019823000', 'IDR', 5460419, 'Iuran BPJSTK Karyawan YTI Feb 24', '', 'bpjstk@gmail.com', 'LLG', '0', '0', '2024-02-13', 65, '2024-04-19 07:42:40'),
(779, 'PT. GRAMEDIA ASRI MEDIA', 'BRI', 'JKT PO', 'JAKARTA', 20307, 'Gramedia Asri Media', '001901001783305', 'IDR', 1206500, 'Paid Inv. No : CIVGAM2401-0001', '', 'gramedia@gmail.com', 'LLG', '0', '0', '2024-02-13', 65, '2024-04-19 07:42:40'),
(780, 'CIPTA GRAFIKA', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'FATHI BAWAZIER', '1090817775', 'IDR', 85000, 'Pembelian Id card Magang AKTI', '', 'ciptagrafika@gmail.com', 'LLG', '0', '0', '2024-02-13', 65, '2024-04-19 07:42:40'),
(781, 'PT ADISIMA PUTRA UTAMA', 'BRI', 'JKT PO', 'JAKARTA', 20307, 'PT ADISIMA PUTRA UTAMA', '011601111033565', 'IDR', 23040780, 'Paid Inv. No : 002/WP.33/CTR-AKTI/I/2024', '', 'warung33spesialpepeskrw@gmail.com', 'LLG', '0', '0', '2024-02-13', 65, '2024-04-19 07:42:40'),
(782, 'CV. NITASHI RIZKADA ', 'PERMATA', '0', '0', 0, 'CV. NITASHI RIZKADA ', '0970450300', 'IDR', 1629480, 'Paid Inv. No : 00009/NR/I/24', '', 'nitashi@gmail.com', 'OVB', '0', '0', '2024-02-13', 65, '2024-04-19 07:42:40'),
(783, 'KEBULI CINTA', 'CIMB NIAGA', 'JAKARTA', 'JAKARTA', 220026, 'WELI NUGROHO', '702129031500', 'IDR', 1400000, 'Pemb. Lunch Training Karakuri dan Trainer Standardization 25-26 Jan 24', '', 'kebulicinta@gmail.com', 'LLG', '0', '0', '2024-02-13', 65, '2024-04-19 07:42:40'),
(784, 'DAPUR NYI ITEUNG', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'SUNARTO', '1320004733383', 'IDR', 1000000, 'Pemb. Lunch Training TJI 26 Jan 24 ', '', 'dapur@gmail.com', 'LLG', '0', '0', '2024-02-13', 65, '2024-04-19 07:42:40'),
(785, 'SAHABAT', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'NGADIRIN', '6840342024', 'IDR', 4699100, 'Paid Inv. No : P-SHT-1/24/16', '', 'sahabat@gmail.com', 'LLG', '0', '0', '2024-02-13', 65, '2024-04-19 07:42:40'),
(786, 'CV. HARAPAN MADANI UTAMA', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'HARAPAN MADANI UTAMA CV', '7402657777', 'IDR', 3675000, 'Paid Inv. No : 0606-2024', '', 'harapanmadani@gmail.com', 'LLG', '0', '0', '2024-02-13', 65, '2024-04-19 07:42:40'),
(787, 'KOPERASI KARYAWAN TOYOTA', 'PERMATA', '0', '0', 0, 'KOPERASI KARYAWAN TOYOTA', '0353529005', 'IDR', 7239848, 'Paid Inv. No : 7464/TMMIN-TIA/01/2024', '', 'kopkar@gmail.com', 'OVB', '0', '0', '2024-02-13', 65, '2024-04-19 07:42:40'),
(788, 'MUHAMMAD RUSYDI', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'MUHAMMAD RUSYDI', '5210825829', 'IDR', 3900000, ' Honor Trainer Training PLC 29 Jan - 02 Feb 24', '', 'rusydi@gmail.com', 'LLG', '0', '0', '2024-02-22', 66, '2024-04-19 07:42:40'),
(789, 'IGNATIUS SRIKUNCORO', 'BNI', 'KP SUDIRMAN', 'JAKARTA', 90010, 'IGNATIUS SRIKUNCORO', '1760306548', 'IDR', 780000, 'Honor Trainer Training NAL 1-2 Feb 24 ', '', 'igna@gmail.com', 'LLG', '0', '0', '2024-02-22', 66, '2024-04-19 07:42:40'),
(790, 'IMAM BASHORI', 'PERMATA', '0', '0', 0, 'IMAM BASHORI', '0352195332', 'IDR', 780000, 'Honor Trainer Training NAL 1-2 Februari 2024', '', 'imambashori@gmail.com', 'OVB', '0', '0', '2024-02-22', 66, '2024-04-19 07:42:40'),
(791, 'ABDUL ROSYID PRIBADI', 'PERMATA', '0', '0', 0, 'ABDUL ROSYID PRIBADI', '0358978312', 'IDR', 1560000, 'Honor Trainer Karakuri TMClub 24-26 Jan 24', '', 'abdul@gmail.com', 'OVB', '0', '0', '2024-02-22', 66, '2024-04-19 07:42:40'),
(792, 'HERI SETYO', 'BNI', 'KP SUDIRMAN', 'JAKARTA', 90010, 'HERI SETYO', '0210253827', 'IDR', 780000, 'Honor Trainer Karakuri TMClub 24-26 Jan 24', '', 'heri@gmail.com', 'LLG', '0', '0', '2024-02-22', 66, '2024-04-19 07:42:40'),
(793, 'LILI SOLIHUDIN', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'LILI SOLIHUDIN', '1730006389812', 'IDR', 780000, 'Honor Trainer Karakuri TMClub 24-26 Jan 24', '', 'lili@gmail.com', 'LLG', '0', '0', '2024-02-22', 66, '2024-04-19 07:42:40'),
(794, 'FATYADI RAMSAF', 'PERMATA', '0', '0', 0, 'FATYADI RAMSAF', '9897831322', 'IDR', 3322001, 'Apresiasi Moderator Eksternal TLC Jan 24', '', 'fatyadi@gmail.com', 'OVB', '0', '0', '2024-02-22', 66, '2024-04-19 07:42:40'),
(795, 'SAHABAT', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'NGADIRIN', '6840342024', 'IDR', 6958000, 'Paid Inv. No : P-SHT-1/24/12', '', 'sahabat@gmail.com', 'LLG', '0', '0', '2024-02-22', 66, '2024-04-19 07:42:40'),
(796, 'PT SYAKIRA BERKAH JAYA', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'PT SYAKIRA BERKAH JAYA', '1550012281518', 'IDR', 3626000, 'Paid Inv. No : 002/TLC/KWT-FIA.SBJ/II/2024', '', 'syakira@gmail.com', 'LLG', '0', '0', '2024-02-22', 66, '2024-04-19 07:42:40'),
(797, 'PT SYAKIRA BERKAH JAYA', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'PT SYAKIRA BERKAH JAYA', '1550012281518', 'IDR', 4419800, 'Paid Inv. No : 014/TLC/KWT-FIA.SBJ/I/2024', '', 'syakira@gmail.com', 'LLG', '0', '0', '2024-02-22', 66, '2024-04-19 07:42:40'),
(798, 'CV. HARAPAN MADANI UTAMA', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'HARAPAN MADANI UTAMA CV', '7402657777', 'IDR', 26360000, 'Paid Inv. No : 0612-2024 & 0608-2024', '', 'harapanmadani@gmail.com', 'LLG', '0', '0', '2024-02-22', 66, '2024-04-19 07:42:40'),
(799, 'HOLLAND BAKERY', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'PT MUSTIKA CITRA RASA', '3721771979', 'IDR', 3597000, 'Paid Inv. No : KRW2401-10242', '', 'holland@gmail.com', 'LLG', '0', '0', '2024-02-22', 66, '2024-04-19 07:42:40'),
(800, 'KEBULI CINTA', 'CIMB NIAGA', 'JAKARTA', 'JAKARTA', 220026, 'WELI NUGROHO', '702129031500', 'IDR', 800000, 'Pembelian Lunch Training NAL 18 Jan 24', '', 'kebulicinta@gmail.com', 'LLG', '0', '0', '2024-02-22', 66, '2024-04-19 07:42:40'),
(801, 'KIN NO KAGI', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'TANOSHINDO BOGA KELOLA', '1730013526992', 'IDR', 2250000, 'Paid Inv. No : NKW/4554/FINC/TBK/I/24', '', 'tanoshindo@gmail.com', 'LLG', '0', '0', '2024-02-22', 66, '2024-04-19 07:42:40'),
(802, 'HARI SUNARTO', 'PERMATA', '0', '0', 0, 'HARI SUNARTO', '1221127192', 'IDR', 292500, 'Trf. Ulng. Honor Fasil Training Standardized Skill PT NSK Jan 24', '', 'hari@gmail.com', 'OVB', '0', '0', '2024-02-22', 66, '2024-04-19 07:42:40'),
(803, 'HERY TRIANA ', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'HERY TRIANA ', '1320012801933', 'IDR', 1560000, 'Honor Trainer TJI 25-26 Jan 24', '', 'herytriana@gmail.com', 'LLG', '0', '0', '2024-02-22', 66, '2024-04-19 07:42:40'),
(804, 'SUKANDAR', 'PERMATA', '0', '0', 0, 'SUKANDAR', '4106674057', 'IDR', 1560000, 'Honor Trainer TJI 25-26 Jan 24', '', 'sukandar@gmail.com', 'OVB', '0', '0', '2024-02-22', 66, '2024-04-19 07:42:40'),
(805, 'WARNOTO', 'PERMATA', '0', '0', 0, 'WARNOTO', '0350334319', 'IDR', 300000, 'Reimb. Biaya Transport Presentasi Zahir Online', '', 'warnoto@gmail.com', 'OVB', '0', '0', '2024-02-23', 67, '2024-04-19 07:42:40'),
(806, 'PT. DEANOVA KARYA MANDIRI', 'BNI', 'KP SUDIRMAN', 'JAKARTA', 90010, 'YANI SURTIANI', '0228808758', 'IDR', 47438370, 'Paid Inv. No : 2388/NSA/I/2024', '', 'yanisurtiani3011@gmail.com', 'LLG', '0', '0', '2024-02-23', 67, '2024-04-19 07:42:40'),
(807, 'KIN NO KAGI', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'TANOSHINDO BOGA KELOLA', '1730013526992', 'IDR', 1065000, 'Paid Inv. No : NKW/4554/FINC/TBK/I/2024', '', 'tanoshindo@gmail.com', 'LLG', '0', '0', '2024-02-23', 67, '2024-04-19 07:42:40'),
(808, 'CV. HARAPAN MADANI UTAMA', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'HARAPAN MADANI UTAMA CV', '7402657777', 'IDR', 4435000, 'Paid Inv. No : 0607-2024', '', 'harapanmadani@gmail.com', 'LLG', '0', '0', '2024-02-23', 67, '2024-04-19 07:42:40'),
(809, 'PT. CAHAYA INTI PUTRA SEJAHTERA', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'PT. CAHAYA INTI PUTRA SEJAHTERA', '7080228800', 'IDR', 4797601, 'Paid Inv. No : J32401012224', '', 'cahayainti@gmail.com', 'LLG', '0', '0', '2024-02-23', 67, '2024-04-19 07:42:40'),
(810, 'HOLLAND BAKERY', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'PT MUSTIKA CITRA RASA', '3721771979', 'IDR', 858300, 'Paid Inv. No : 2401-100245', '', 'holland@gmail.com', 'LLG', '0', '0', '2024-02-23', 67, '2024-04-19 07:42:40'),
(811, 'ANWAR HILMAN', 'BANK JABAR', 'MENARA BANK JABAR JL.NARIPAN N', 'BANDUNG', 1100019, 'ANWAR HILMAN', '0069347177100', 'IDR', 7096375, 'Honor Karyawan Kontrak AKTI Unit IT Feb 24', '', 'anwarhilman@gmail.com', 'LLG', '0', '0', '2024-02-23', 67, '2024-04-19 07:42:40'),
(812, 'YUNITA SANIA MAHARANI ', 'BNI', 'KP SUDIRMAN', 'JAKARTA', 90010, 'YUNITA SANIA MAHARANI', '0361205269', 'IDR', 173800, 'Reimb. Pembelian Snack Tim Akreditasi', '', 'yunitasania@gmail.com', 'LLG', '0', '0', '2024-02-23', 67, '2024-04-19 07:42:40'),
(813, 'IMANUDDIN KAMIL', 'BSI', 'KANTOR PUSAT', 'JAKARTA', 4510017, 'IMANUDDIN KAMIL', '7000765389', 'IDR', 5850000, 'Biaya Kontrak Publikasi Penelitian Tahun Akademik 22-23', '', 'imanuddin@gmail.com', 'LLG', '0', '0', '2024-02-23', 67, '2024-04-19 07:42:40'),
(814, 'M. KHAMDANI', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'M. KHAMDANI', '7045056023', 'IDR', 1890000, 'Suspense Kegiatan Renang Mahasiswa A8 Feb 24', '', 'khamdani@gmail.com', 'LLG', '0', '0', '2024-02-23', 67, '2024-04-19 07:42:40'),
(815, 'DINA KARTIKA RAYA', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'DINA KARTIKA RAYA', '1420016013137', 'IDR', 465250, 'Reimb. Snack & Banner Kegiatan PKM SMK Jateng ', '', 'dina@gmail.com', 'LLG', '0', '0', '2024-02-23', 67, '2024-04-19 07:42:40'),
(816, 'SUHERMANTO', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'SUHERMANTO', '0060006962058', 'IDR', 1019500, 'Reimb. Bensin & Toll Interview PMB AKTI SMK Jateng ', '', 'suhermanto@gmail.com', 'LLG', '0', '0', '2024-02-23', 67, '2024-04-19 07:42:40'),
(817, 'HOTEL ASTON PURWOKERTO', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'DELTA PERTIWI PROPERTINDO', '1800020303030', 'IDR', 2154000, 'Biaya Penginapan Kegiatan PKM & PMB 05-06 Feb 2024 ', '', 'hotelaston@gmail.com', 'LLG', '0', '0', '2024-02-23', 67, '2024-04-19 07:42:40'),
(818, 'LARAS ASRI HOTEL', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'PT. ARMADA INVESTAMA', '0130440011', 'IDR', 875000, 'Biaya Penginapan 06-07 Feb 24 an Yui Hastoro', '', 'larasasri@gmail.com', 'LLG', '0', '0', '2024-02-23', 67, '2024-04-19 07:42:40'),
(819, 'YUI HASTORO SAPARDYANTO', 'PERMATA', '0', '0', 0, 'YUI HASTORO SAPARDYANTO', '970095624', 'IDR', 1175000, 'Reimb. TA Interview User PMB AKTI 05-07 Feb 24', '', 'yui@gmail.com', 'OVB', '0', '0', '2024-02-23', 67, '2024-04-19 07:42:40'),
(820, 'DINA KARTIKA RAYA', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'DINA KARTIKA RAYA', '1420016013137', 'IDR', 300000, 'Reimb. TA PkM AKTI 5-6 Feb 2024', '', 'dina@gmail.com', 'LLG', '0', '0', '2024-02-23', 67, '2024-04-19 07:42:40'),
(821, 'EDY SUSILO DARMAWAN', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'EDY SUSILO DARMAWAN', '2761062745', 'IDR', 900000, 'Reimb. Interview User PMB AKTI 05-07 Feb 24 ', '', 'edy@gmail.com', 'LLG', '0', '0', '2024-02-23', 67, '2024-04-19 07:42:40'),
(822, 'LUTFY EKA BHIARDIAN', 'PERMATA', '0', '0', 0, 'LUTFY EKA BHIARDIAN', '4105701549', 'IDR', 265000, 'Reimb. Toll Pemasangan Smart Watering TEF & Genba Pemagangan', '', 'lutfy@gmail.com', 'OVB', '0', '0', '2024-02-23', 67, '2024-04-19 07:42:40'),
(823, 'M. KHAMDANI', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'M. KHAMDANI', '7045056023', 'IDR', 497800, 'Reimb. Transportasi Mahasiswa Pemilu PilPres 2024', '', 'khamdani@gmail.com', 'LLG', '0', '0', '2024-02-23', 67, '2024-04-19 07:42:40'),
(824, 'RAYSA INDAH BERLIANI', 'PERMATA', '0', '0', 0, 'RAYSA INDAH BERLIANI', '4176284558', 'IDR', 516000, 'Reimb. Lunch Event Audit YTI 2023', '', 'raysaindahberliani@gmail.com', 'OVB', '0', '0', '2024-02-29', 68, '2024-04-19 07:42:41'),
(825, 'PT. ZAHIR INTERNATIONAL', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'PT. ZAHIR INTERNATIONAL', ' 2283001393', 'IDR', 10000000, 'Zahir Accounting 7', '', 'zahir@gmail.com', 'LLG', '0', '0', '2024-02-29', 68, '2024-04-19 07:42:41'),
(826, 'MIRAWATI SENSI IDRIS', 'BANK SINARMAS', 'KP.ZAINAL ARIFIN', 'JAKARTA', 1530016, 'MSID QQ YAYASAN TOYOTA INDONESIA', '8314148003', 'IDR', 35861000, 'First and Second Fee Audit YTI 2023', '', 'mirawati@gmail.com', 'LLG', '0', '0', '2024-02-29', 68, '2024-04-19 07:42:41'),
(828, 'CV. NITASHI RIZKADA ', 'PERMATA', '0', '0', 0, 'CV. NITASHI RIZKADA ', '0970450300', 'IDR', 2962590, 'Paid Inv. No : 00012/NR/II/24', '', 'nitashi@gmail.com', 'OVB', '0', '0', '2024-02-29', 68, '2024-04-19 07:42:41'),
(829, 'CV. ARIE', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'ARI KUSNANDAR', '1090990515', 'IDR', 784000, 'Cetak Block Note Kegiatan PKM SMK Jateng', '', 'arikusnandar@gmail.com', 'LLG', '0', '0', '2024-02-29', 68, '2024-04-19 07:42:41'),
(830, 'CV. ARIE', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'ARI KUSNANDAR', '1090990515', 'IDR', 1742636, 'Cetak Modul Basic PLC Full Color', '', 'arikusnandar@gmail.com', 'LLG', '0', '0', '2024-02-29', 68, '2024-04-19 07:42:41'),
(831, 'CV. HARAPAN MADANI UTAMA', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'HARAPAN MADANI UTAMA CV', '7402657777', 'IDR', 1813000, 'Paid Inv. No : 0613-2024', '', 'harapanmadani@gmail.com', 'LLG', '0', '0', '2024-02-29', 68, '2024-04-19 07:42:41'),
(832, 'DAPUR NYI ITEUNG', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'SUNARTO', '1320004733383', 'IDR', 1350000, 'Pembelian Lunch Training Basic PLC & NAL 2 Feb 24', '', 'dapur@gmail.com', 'LLG', '0', '0', '2024-02-29', 68, '2024-04-19 07:42:41'),
(833, 'KEBULI CINTA', 'CIMB NIAGA', 'JAKARTA', 'JAKARTA', 220026, 'WELI NUGROHO', '702129031500', 'IDR', 500000, 'Pembelian Lunch Training Basic PLC  31 Jan 24 ', '', 'kebulicinta@gmail.com', 'LLG', '0', '0', '2024-02-29', 68, '2024-04-19 07:42:41');
INSERT INTO `tbl_payment_v` (`id_payment_v`, `nama_vendor`, `bank_name`, `address_bank`, `bank_city`, `bank_code`, `account_name`, `account_number`, `currency`, `amount_payment`, `description`, `description2`, `email_vendor`, `transaction_type`, `resident_status`, `citizen_status`, `payment_date`, `id_payment_date`, `create_date`) VALUES
(834, 'DJATMIKO EDI SUKATON', 'PERMATA', '0', '0', 0, 'DJATMIKO EDI SUKATON', '0201207304', 'IDR', 975000, 'Suspense TA Assessment SMK Mitra YTA', '', 'djatmiko@gmail.com', 'OVB', '0', '0', '2024-02-29', 68, '2024-04-19 07:42:41'),
(835, 'ADE ROHMAN', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'ADE ROHMAN', '1320012305224', 'IDR', 975000, 'Suspense TA Assessment SMK Mitra YTA', '', 'aderohman@gmail.com', 'LLG', '0', '0', '2024-02-29', 68, '2024-04-19 07:42:41'),
(836, 'MUHAMMAD RUSYDI', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'MUHAMMAD RUSYDI', '5210825829', 'IDR', 3900000, 'Honor Trainer Training Basic PLC 05-12 Feb 24', '', 'rusydi@gmail.com', 'LLG', '0', '0', '2024-02-29', 68, '2024-04-19 07:42:41'),
(837, 'ANDRIE SAFARGI', 'PERMATA', '0', '0', 0, 'ANDRIE SAFARGI', '1218677394', 'IDR', 780000, 'Honor Trainer Karakuri TBINA 12-15 Feb 24', '', 'andrie@gmail.com', 'OVB', '0', '0', '2024-02-29', 68, '2024-04-19 07:42:41'),
(838, 'HERI SETYO', 'BNI', 'KP SUDIRMAN', 'JAKARTA', 90010, 'HERI SETYO', '0210253827', 'IDR', 780000, 'Honor Trainer Karakuri TBINA 12-15 Feb 24', '', 'heri@gmail.com', 'LLG', '0', '0', '2024-02-29', 68, '2024-04-19 07:42:41'),
(839, 'MUHAMMAD TANURI', 'PERMATA', '0', '0', 0, 'MUHAMMAD TANURI', '1217363884', 'IDR', 780000, 'Honor Trainer Karakuri TBINA 12-15 Feb 24', '', 'tanuri@gmail.com', 'OVB', '0', '0', '2024-02-29', 68, '2024-04-19 07:42:41'),
(840, 'RIZKY JULISTYA PUTRA', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'RIZKY JULISTYA PUTRA', '8760626717', 'IDR', 780000, 'Honor Trainer NAL TM Club 15-16 Feb 24', '', 'rizkyjulistya@gmail.com', 'LLG', '0', '0', '2024-02-29', 68, '2024-04-19 07:42:41'),
(841, 'IMAM BASHORI', 'PERMATA', '0', '0', 0, 'IMAM BASHORI', '0352195332', 'IDR', 780000, 'Honor Trainer NAL TM Club 15-16 Feb 24', '', 'imambashori@gmail.com', 'OVB', '0', '0', '2024-02-29', 68, '2024-04-19 07:42:41'),
(842, 'MURSYID', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'Ir. MURSYID', '4281416400', 'IDR', 2340000, 'Honor Trainer Problem Solving Office PT Sugity 15-16 Feb 24', '', 'mursyid@gmail.com', 'LLG', '0', '0', '2024-02-29', 68, '2024-04-19 07:42:41'),
(843, 'EDY SULISTIYONO', 'PERMATA', '0', '0', 0, 'EDY SULISTIYONO', '0437268396', 'IDR', 1170000, 'Honor Trainer Problem Solving Office PT Sugity 15-16 Feb 24', '', 'edysulistiyono@gmail.com', 'OVB', '0', '0', '2024-02-29', 68, '2024-04-19 07:42:41'),
(844, 'RACHMASARI', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'RACHMASARI', '0881096071', 'IDR', 487500, 'Honor Fasil. Problem Solving Office PT Sugity 15-16 Feb 24', '', 'rachmasari@gmail.com', 'LLG', '0', '0', '2024-02-29', 68, '2024-04-19 07:42:41'),
(845, 'NI LUH AYUNDA AMALIA', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'NI LUH AYUNDA AMALIA', '2180644281', 'IDR', 243750, 'Honor Fasil. Problem Solving Office PT Sugity 15-16 Feb 24', '', 'niluh@gmail.com', 'LLG', '0', '0', '2024-02-29', 68, '2024-04-19 07:42:41'),
(846, 'RISKY AGUNG TARIGAN', 'BSI', 'KANTOR PUSAT', 'JAKARTA', 4510017, 'RISKY AGUNG TARIGAN', '7153717723', 'IDR', 390000, 'Honor Fasil. Problem Solving Office PT Sugity 15-16 Feb 24', '', 'risky@gamail.com', 'LLG', '0', '0', '2024-02-29', 68, '2024-04-19 07:42:41'),
(847, 'LULU MAHERNI', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'LULU MAHERNI', '7635275847', 'IDR', 243750, 'Honor Fasil. Problem Solving Office PT Sugity 15-16 Feb 24', '', 'lulu@gmail.com', 'LLG', '0', '0', '2024-02-29', 68, '2024-04-19 07:42:41'),
(848, 'EDY SUSILO DARMAWAN', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'EDY SUSILO DARMAWAN', '2761062745', 'IDR', 2047500, 'Honor Trainer Problem Solving & Hoshin Kanri PT Triputra 19-21 Feb 24', '', 'edy@gmail.com', 'LLG', '0', '0', '2024-02-29', 68, '2024-04-19 07:42:41'),
(849, 'MURSYID', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'Ir. MURSYID', '4281416400', 'IDR', 4680000, 'Honor Trainer Problem Solving & Hoshin Kanri PT Triputra 19-21 Feb 24', '', 'mursyid@gmail.com', 'LLG', '0', '0', '2024-02-29', 68, '2024-04-19 07:42:41'),
(850, 'MUHAMMAD YUSUF', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'MUHAMMAD YUSUF', '4130044391', 'IDR', 1170000, 'Honor Trainer Problem Solving & Hoshin Kanri PT Triputra 19-21 Feb 24', '', 'myusuf@gmail.com', 'LLG', '0', '0', '2024-02-29', 68, '2024-04-19 07:42:41'),
(851, 'RACHMASARI', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'RACHMASARI', '0881096071', 'IDR', 975000, 'Honor Fasil. Problem Solving & Hoshin Kanri PT Triputra 19-21 Feb 24', '', 'rachmasari@gmail.com', 'LLG', '0', '0', '2024-02-29', 68, '2024-04-19 07:42:41'),
(852, 'NI LUH AYUNDA AMALIA', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'NI LUH AYUNDA AMALIA', '2180644281', 'IDR', 243750, 'Honor Fasil. Problem Solving & Hoshin Kanri PT Triputra 19-21 Feb 24 ', '', 'niluh@gmail.com', 'LLG', '0', '0', '2024-02-29', 68, '2024-04-19 07:42:41'),
(853, 'IRFAN MAULANA', 'PERMATA', '0', '0', 0, 'IRFAN MAULANA', '1221102394', 'IDR', 585000, 'Honor Fasil. Problem Solving & Hoshin Kanri PT Triputra 19-21 Feb 24 ', '', 'irfan@gmail.com', 'OVB', '0', '0', '2024-02-29', 68, '2024-04-19 07:42:41'),
(854, 'NIKEN PUTRI SEKARINI', 'PERMATA', '0', '0', 0, 'NIKEN PUTRI SEKARINI', '9923821624', 'IDR', 365625, 'Honor Fasil. Problem Solving & Hoshin Kanri PT Triputra 19-21 Feb 24', '', 'niken@gmail.com', 'OVB', '0', '0', '2024-02-29', 68, '2024-04-19 07:42:41'),
(855, 'HERY TRIANA ', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'HERY TRIANA ', '1320012801933', 'IDR', 3510000, 'Honor Trainer Standardized Skill for PT NSK 10-31 Jan 24', '', 'herytriana@gmail.com', 'LLG', '0', '0', '2024-02-29', 68, '2024-04-19 07:42:41'),
(856, 'JOKO PRAMONO', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'Joko Pramono', '1320013381711', 'IDR', 1755000, 'Honor Trainer Standardized Skill for PT NSK 10-31 Jan 24', '', 'joko@gmail.com', 'LLG', '0', '0', '2024-02-29', 68, '2024-04-19 07:42:41'),
(857, 'HARI SUNARTO', 'PERMATA', '0', '0', 0, 'HARI SUNARTO', '1221127192', 'IDR', 585000, 'Honor Fasil. Standardized Skill for PT NSK 10-31 Jan 24 ', '', 'hari@gmail.com', 'OVB', '0', '0', '2024-02-29', 68, '2024-04-19 07:42:41'),
(858, 'SINTIYA MEILASARI', 'PERMATA', '0', '0', 0, 'SINTIYA MEILASARI', '9871577177', 'IDR', 292500, 'Honor Fasil. Standardized Skill for PT NSK 10-31 Jan 24', '', 'sintiya@gmail.com', 'OVB', '0', '0', '2024-02-29', 68, '2024-04-19 07:42:41'),
(859, 'FERRY SURANTON', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'FERRY SURANTON', '6590032806', 'IDR', 2340000, 'Honor Trainer Ji Kotei Kanketsu PT TBINA 17 Feb 24', '', 'ferry@gmail.com', 'LLG', '0', '0', '2024-02-29', 68, '2024-04-19 07:42:41'),
(860, 'IRFAN MAULANA', 'PERMATA', '0', '0', 0, 'IRFAN MAULANA', '1221102394', 'IDR', 316875, 'Honor Fasil. Ji Kotei Kanketsu PT TBINA 17 Feb 24 ', '', 'irfan@gmail.com', 'OVB', '0', '0', '2024-02-29', 68, '2024-04-19 07:42:41'),
(861, 'MARTHA BETTY SARMA H', 'PERMATA', '0', '0', 0, 'MARTHA BETTY SARMA H', '4119613715', 'IDR', 487500, 'Fee Seminar Kesehatan Mahasiswa AKTI 28 Feb 24', '', 'martha@gmail.com', 'OVB', '0', '0', '2024-02-29', 68, '2024-04-19 07:42:41'),
(862, 'MUHAMAD JULIARTO', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'MUHAMAD JULIARTO', '5745101451', 'IDR', 3850000, 'Pencairan Tahap 1 Pendanaan PKM SMK Texar ', '', 'juliarto@gmail.com', 'LLG', '0', '0', '2024-02-29', 68, '2024-04-19 07:42:41'),
(863, 'JARWANTO', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'JARWANTO', '1200010492416', 'IDR', 2340000, 'Honor Trainer Problem Solving Office PT Sugity 15-16 Feb 24', '', 'jarwanto@gmail.com', 'LLG', '0', '0', '2024-02-29', 68, '2024-04-19 07:42:41'),
(864, 'HOLLAND BAKERY', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'PT MUSTIKA CITRA RASA', '3721771979', 'IDR', 1776400, 'Paid Invoice No. KRWIRR202402-1009', '', 'holland@gmail.com', 'LLG', '0', '0', '2024-03-14', 69, '2024-04-19 07:42:41'),
(865, 'HOLLAND BAKERY', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'PT MUSTIKA CITRA RASA', '3721771979', 'IDR', 2666700, 'Paid Invoice No. KRWIRR202401-1033', '', 'holland@gmail.com', 'LLG', '0', '0', '2024-03-14', 69, '2024-04-19 07:42:41'),
(866, 'PT SYAKIRA BERKAH JAYA', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'PT SYAKIRA BERKAH JAYA', '1550012281518', 'IDR', 2121700, 'Paid Invoice No. 010/TLC/INV-FIA.SBJ/II/2024', '', 'syakira@gmail.com', 'LLG', '0', '0', '2024-03-14', 69, '2024-04-19 07:42:41'),
(867, 'KOPERASI KARYAWAN TOYOTA', 'PERMATA', '0', '0', 0, 'KOPERASI KARYAWAN TOYOTA', '0353529005', 'IDR', 8923684, 'Paid Invoice No. 7611/TMMIN-YTI/02/2024', '', 'kopkar@gmail.com', 'OVB', '0', '0', '2024-03-14', 69, '2024-04-19 07:42:41'),
(868, 'KEBULI CINTA', 'CIMB NIAGA', 'JAKARTA', 'JAKARTA', 220026, 'WELI NUGROHO', '702129031500', 'IDR', 3650000, 'Paid Invoice Nasi Kebuli Pembayaran Lunch Training', '', 'kebulicinta@gmail.com', 'LLG', '0', '0', '2024-03-14', 69, '2024-04-19 07:42:41'),
(869, 'SAHABAT', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'NGADIRIN', '6840342024', 'IDR', 8031100, 'Paid Invoice No. P-SHT-2/24/13', '', 'sahabat@gmail.com', 'LLG', '0', '0', '2024-03-14', 69, '2024-04-19 07:42:41'),
(870, 'CV. HARAPAN MADANI UTAMA', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'HARAPAN MADANI UTAMA CV', '7402657777', 'IDR', 14700000, 'Paid Invoice No. 10071', '', 'harapanmadani@gmail.com', 'LLG', '0', '0', '2024-03-14', 69, '2024-04-19 07:42:41'),
(871, 'HOLLAND BAKERY', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'PT MUSTIKA CITRA RASA', '3721771979', 'IDR', 2672800, 'Paid Invoice No.KRW2402-100257 ', '', 'holland@gmail.com', 'LLG', '0', '0', '2024-03-14', 69, '2024-04-19 07:42:41'),
(872, 'MIETA RAMADHANINGTIYAS', 'PERMATA', '0', '0', 0, 'MIETA RAMADHANINGTIYAS', '4178093423', 'IDR', 975000, 'Apresiasi Tambahan Program Admin No.0428/TIA/TLC/IN/III/2024', '', 'mieta@gmail.com', 'OVB', '0', '0', '2024-03-14', 69, '2024-04-19 07:42:41'),
(873, 'LIVIA GINTA RISNA', 'PERMATA', '0', '0', 0, 'LIVIA GINTA RISNA', '4178085919', 'IDR', 487500, 'Apresiasi Tambahan Program Admin No. 0428/TIA/TLC/IN/III/2024', '', 'livia@gmail.com', 'OVB', '0', '0', '2024-03-14', 69, '2024-04-19 07:42:41'),
(874, 'FATYADI RAMSAF', 'PERMATA', '0', '0', 0, 'FATYADI RAMSAF', '9897831322', 'IDR', 975000, 'Apresiasi Tambahan Program Admin No. 0428/TIA/TLC/IN/III/2024', '', 'fatyadi@gmail.com', 'OVB', '0', '0', '2024-03-14', 69, '2024-04-19 07:42:41'),
(875, 'MOCHAMAD ARIF RACHMAN', 'PERMATA', '0', '0', 0, 'Mochamad Arif Rachman', '358755305', 'IDR', 780000, 'Honor Trainer Karakuri Feb 24', '', 'moch.arifrachman@toyota.co.id', 'OVB', '0', '0', '2024-03-14', 69, '2024-04-19 07:42:41'),
(876, 'WARISNO', 'BSI', 'KANTOR PUSAT', 'JAKARTA', 4510017, 'WARISNO', '7234022340', 'IDR', 780000, 'Honor Trainer Karakuri Feb 24', '', 'warisno@gmail.com', 'LLG', '0', '0', '2024-03-14', 69, '2024-04-19 07:42:41'),
(877, 'LUTFY EKA BHIARDIAN', 'PERMATA', '0', '0', 0, 'LUTFY EKA BHIARDIAN', '4105701549', 'IDR', 780000, 'Honor Trainer Karakuri Feb 24', '', 'lutfy@gmail.com', 'OVB', '0', '0', '2024-03-14', 69, '2024-04-19 07:42:41'),
(878, 'R BRAM ADITYA KUSUMA', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'R BRAM ADITYA KUSUMA', '8030100221', 'IDR', 780000, 'Honor Trainer Toyota Comunication Skill (TCS)', '', 'bram@gmail.com', 'LLG', '0', '0', '2024-03-14', 69, '2024-04-19 07:42:41'),
(879, 'SUNARTO', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'SUNARTO', '1320005936563', 'IDR', 780000, 'Honor Trainer Toyota Comunication Skill (TCS) Feb 24', '', 'sunarto@toyota.co.id', 'LLG', '0', '0', '2024-03-14', 69, '2024-04-19 07:42:41'),
(880, 'MUHAMAD YUSUF RAHADI', 'PERMATA', '0', '0', 0, 'MUHAMAD YUSUF RAHADI', '1217045521', 'IDR', 780000, 'Honor Trainer New Azen Leader Feb 24', '', 'yusuf@gmail.com', 'OVB', '0', '0', '2024-03-14', 69, '2024-04-19 07:42:41'),
(881, 'ANGGI DAVID YANUAR', 'BRI', 'JKT PO', 'JAKARTA', 20307, 'ANGGI DAVID YANUAR', '011601004025532', 'IDR', 780000, 'Honor Trainer New Azen Leader Feb 24', '', 'anggidavid@gmail.com', 'LLG', '0', '0', '2024-03-14', 69, '2024-04-19 07:42:41'),
(882, 'SUHANDI', 'BSI', 'KANTOR PUSAT', ' JAKARTA', 4510017, 'SUHANDI', '72278998000', 'IDR', 780000, 'Honor Trainer  Karakuri Feb 24', '', 'suhandi@gmail.com', 'LLG', '0', '0', '2024-03-14', 69, '2024-04-19 07:42:41'),
(883, 'HERI SETYO', 'BNI', 'KP SUDIRMAN', 'JAKARTA', 90010, 'HERI SETYO', '0210253827', 'IDR', 780000, 'Honor Trainer Karakuri Feb 24', '', 'heri@gmail.com', 'LLG', '0', '0', '2024-03-14', 69, '2024-04-19 07:42:41'),
(884, 'HARI SUNARTO', 'PERMATA', '0', '0', 0, 'HARI SUNARTO', '1221127192', 'IDR', 780000, 'Honor Trainer Karakuri Feb 24', '', 'hari@gmail.com', 'OVB', '0', '0', '2024-03-14', 69, '2024-04-19 07:42:41'),
(885, 'SAEFUDIN', 'PERMATA', '0', '0', 0, 'SAEFUDIN', '4101938536', 'IDR', 3900000, 'Honor Trainer Basic Pneumatic & Hydraulic Feb 24', '', 'saefudin@gmail.com', 'OVB', '0', '0', '2024-03-14', 69, '2024-04-19 07:42:41'),
(886, 'CV. NITASHI RIZKADA ', 'PERMATA', '0', '0', 0, 'CV. NITASHI RIZKADA ', '0970450300', 'IDR', 466478, 'Paid Inv no 0007/NR/VIII/23', '', 'nitashi@gmail.com', 'OVB', '0', '0', '2024-03-21', 70, '2024-04-19 07:42:41'),
(887, 'PT ADISIMA PUTRA UTAMA', 'BRI', 'JKT PO', 'JAKARTA', 20307, 'PT ADISIMA PUTRA UTAMA', '011601111033565', 'IDR', 385000, 'Paid Inv. No 001/WP33/SD-AKTI/II/2024', '', 'warung33spesialpepeskrw@gmail.com', 'LLG', '0', '0', '2024-03-21', 70, '2024-04-19 07:42:41'),
(888, 'CV. NITASHI RIZKADA ', 'PERMATA', '0', '0', 0, 'CV. NITASHI RIZKADA ', '0970450300', 'IDR', 2183370, 'Paid Inv. No 00020/NR/II/24', '', 'nitashi@gmail.com', 'OVB', '0', '0', '2024-03-21', 70, '2024-04-19 07:42:41'),
(889, 'HOLLAND BAKERY', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'PT MUSTIKA CITRA RASA', '3721771979', 'IDR', 353200, 'Paid Inv. No KRWIRR202402-1046', '', 'holland@gmail.com', 'LLG', '0', '0', '2024-03-21', 70, '2024-04-19 07:42:41'),
(890, 'CV. NITASHI RIZKADA ', 'PERMATA', '0', '0', 0, 'CV. NITASHI RIZKADA ', '0970450300', 'IDR', 3321120, 'Paid Inv. No 00017/NR/II/24', '', 'nitashi@gmail.com', 'OVB', '0', '0', '2024-03-21', 70, '2024-04-19 07:42:41'),
(891, 'DAPUR NYI ITEUNG', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'SUNARTO', '1320004733383', 'IDR', 800000, 'Paid Inv. No 3012220018343', '', 'dapur@gmail.com', 'LLG', '0', '0', '2024-03-21', 70, '2024-04-19 07:42:41'),
(892, 'CV. HARAPAN MADANI UTAMA', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'HARAPAN MADANI UTAMA CV', '7402657777', 'IDR', 4900000, 'Paid Inv. No 0624-b-24', '', 'harapanmadani@gmail.com', 'LLG', '0', '0', '2024-03-21', 70, '2024-04-19 07:42:41'),
(893, 'CV. JAPA', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'M. RACHMAD', '2750012534', 'IDR', 3511340, 'Paid Inv. No 154', '', 'japa@gmail.com', 'LLG', '0', '0', '2024-03-21', 70, '2024-04-19 07:42:41'),
(894, 'CV. ARIE', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'ARI KUSNANDAR', '1090990515', 'IDR', 8175160, 'Paid Inv. No 05/III/2024 Copy dan Jilid buku', '', 'arikusnandar@gmail.com', 'LLG', '0', '0', '2024-03-21', 70, '2024-04-19 07:42:41'),
(895, 'KIN NO KAGI', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'TANOSHINDO BOGA KELOLA', '1730013526992', 'IDR', 1000000, 'Paid Inv. No NKW/4645/FINC/TBK/III/2024', '', 'tanoshindo@gmail.com', 'LLG', '0', '0', '2024-03-21', 70, '2024-04-19 07:42:41'),
(896, 'DAPUR NYI ITEUNG', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'SUNARTO', '1320004733383', 'IDR', 1700000, 'Paid Inv. No 06/II/2024 Lucnh training', '', 'dapur@gmail.com', 'LLG', '0', '0', '2024-03-21', 70, '2024-04-19 07:42:41'),
(897, 'PT SYAKIRA BERKAH JAYA', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'PT SYAKIRA BERKAH JAYA', '1550012281518', 'IDR', 9148300, 'Paid Inv. No. 017/TLC/KWT-FIA.SBJ/II/2024, 021/TLC/KWT-FIA.SBJ/II/2024, 002/TLC/KWT-FIA.SBJ/II/2024', '', 'syakira@gmail.com', 'LLG', '0', '0', '2024-03-21', 70, '2024-04-19 07:42:41'),
(898, 'KEBULI CINTA', 'CIMB NIAGA', 'JAKARTA', 'JAKARTA', 220026, 'WELI NUGROHO', '702129031500', 'IDR', 650000, 'Paid Inv. No . 07/II/2024 Lunch training', '', 'kebulicinta@gmail.com', 'LLG', '0', '0', '2024-03-21', 70, '2024-04-19 07:42:41'),
(899, 'JAVA SWISS', 'MANDIRI ', 'KANTOR PUSAT', 'JAKARTA', 80017, 'RIJAL TAUFIK', '4460360078', 'IDR', 5500000, 'Paid Inv. No. 2018031501', '', 'javaswiss@gmail.com', 'LLG', '0', '0', '2024-03-21', 70, '2024-04-19 07:42:41'),
(900, 'MUHAMMAD RUSYDI', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'MUHAMMAD RUSYDI', '5210825829', 'IDR', 652000, 'Travel Allowance Mr. M. Rusydi dalam perjalanan dinas memenuhi undangan LLDIKTI 4, 7 Maret 2024', '', 'rusydi@gmail.com', 'LLG', '0', '0', '2024-03-21', 70, '2024-04-19 07:42:41'),
(901, 'MURYANTO', 'PERMATA', '0', '0', 0, 'MURYANTO', '1218917506', 'IDR', 160000, 'Travel allowance Mr. Muryanto memenuhi undangan LLDIKTI 4 pada 7 Maret 2024', '', 'muryanto@gmail.com', 'OVB', '0', '0', '2024-03-21', 70, '2024-04-19 07:42:41'),
(902, 'MUHAMAD JULIARTO', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'MUHAMAD JULIARTO', '5745101451', 'IDR', 1650000, 'Biaya PKM Pembayaran Tahap II a.n. Bapak Juliarto', '', 'juliarto@gmail.com', 'LLG', '0', '0', '2024-03-21', 70, '2024-04-19 07:42:41'),
(903, 'MUHAMAD JULIARTO', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'MUHAMAD JULIARTO', '5745101451', 'IDR', 1050000, 'Biaya pembayaran MoU penelitian a.n. M.Juliarto Tahap 1', '', 'juliarto@gmail.com', 'LLG', '0', '0', '2024-03-21', 70, '2024-04-19 07:42:41'),
(904, 'MUHAMAD AFRIZAL', 'MANDIRI ', 'JAKARTA PUSAT', 'JAKARTA', 80017, 'MUHAMAD AFRIZAL', '1730004822707', 'IDR', 1462500, 'Perbaikan panduan mutu LSP TMMIN Februari 2024 a/n Muhamad Afrizal', '', 'yunita@akti.ac.id', 'LLG', '0', '0', '2024-03-21', 70, '2024-04-19 07:42:41'),
(905, 'MELLINDA EFENDI', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'MELLINDA EFENDI', '6785059097', 'IDR', 1047438, 'Biaya pelaksanaan PMB 2024 reimburse dan pembelian akun zoom', '', 'mellinda@gmail.com', 'LLG', '0', '0', '2024-03-21', 70, '2024-04-19 07:42:41'),
(906, 'MUHAMMAD YUSUF', 'BCA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'MUHAMMAD YUSUF', '4130044391', 'IDR', 10000000, 'Fee Pembicara Trainer Workshop 2024 ', '', 'myusuf@gmail.com', 'LLG', '0', '0', '2024-03-21', 70, '2024-04-19 07:42:41'),
(907, 'HUDA FATULLAH', 'BNI', 'KP SUDIRMAN', 'JAKARTA', 90010, 'HUDA FATULLAH', '305321214', 'IDR', 780000, 'Honor Trainer Training New Anzen Leader 7-8 Maret 2024', '', 'huda@gmail.com', 'LLG', '0', '0', '2024-03-21', 70, '2024-04-19 07:42:41'),
(908, 'MUHAMAD YUSUF RAHADI', 'PERMATA', '0', '0', 0, 'MUHAMAD YUSUF RAHADI', '1217045521', 'IDR', 780000, 'Honor Trainer Training New Anzen Leader 7-8 Maret 2024', '', 'yusuf@gmail.com', 'OVB', '0', '0', '2024-03-21', 70, '2024-04-19 07:42:41'),
(909, 'NANANG JUANDA', 'MANDIRI ', 'KPO JAKARTA', 'JAKARTA', 80017, 'NANANG JUANDA', '0060006762235', 'IDR', 780000, 'Honor Trainer Training Refreshment Anzen Leaader Tgl: 13 Maret 2024', '', 'nanang@gmail.com', 'LLG', '0', '0', '2024-03-21', 70, '2024-04-19 07:42:41'),
(910, 'YANI PRANOTO', 'BSI', 'KANTOR PUSAT', 'JAKARTA', 4510017, 'YANI PRANOTO', '7234025960', 'IDR', 780000, 'Honor Trainer Training HPW JO Tgl: 5 Maret 2024', '', 'yanip@gmail.com', 'LLG', '0', '0', '2024-03-21', 70, '2024-04-19 07:42:41');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payrol`
--

CREATE TABLE `tbl_payrol` (
  `id_payrol` int(11) NOT NULL,
  `ref_no` varchar(15) NOT NULL,
  `nama_payrol` varchar(50) NOT NULL,
  `id_periode` int(11) NOT NULL,
  `tgl_payrol` date NOT NULL,
  `jumlah_payrol` int(11) NOT NULL,
  `signed` varchar(50) NOT NULL,
  `keterangan` text NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_payrol`
--

INSERT INTO `tbl_payrol` (`id_payrol`, `ref_no`, `nama_payrol`, `id_periode`, `tgl_payrol`, `jumlah_payrol`, `signed`, `keterangan`, `create_date`) VALUES
(12, '01', 'Salary September', 10, '2022-09-20', 71250631, 'Edy Susilo Darmawan ', '', '2022-10-19 07:16:55'),
(13, '02', 'Periode Oktober 2022', 11, '2022-10-20', 68757524, 'Edy Susilo Darmawan ', '', '2022-10-19 11:12:40');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_periode`
--

CREATE TABLE `tbl_periode` (
  `id_periode` int(11) NOT NULL,
  `bulan` enum('Januari','Februari','Maret','April','Mei','Juni','Juli','Agustus','September','Oktober','Nopember','Desember') NOT NULL,
  `tahun` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_periode`
--

INSERT INTO `tbl_periode` (`id_periode`, `bulan`, `tahun`) VALUES
(10, 'September', 2022),
(11, 'Oktober', 2022),
(12, 'Nopember', 2022),
(13, 'Desember', 2022),
(14, 'Januari', 2023),
(15, 'Februari', 2023),
(16, 'Maret', 2023),
(17, 'April', 2023),
(18, 'Mei', 2023),
(19, 'Juni', 2023),
(20, 'Juli', 2023),
(21, 'Agustus', 2023),
(22, 'September', 2023),
(23, 'Oktober', 2023),
(24, 'Nopember', 2023),
(25, 'Desember', 2023),
(29, 'Januari', 2025);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_salary_d`
--

CREATE TABLE `tbl_salary_d` (
  `id_salary_d` int(11) NOT NULL,
  `nik_d` int(9) NOT NULL,
  `id_periode` int(2) NOT NULL,
  `mata_kuliah` varchar(100) NOT NULL,
  `kode_kategori` int(11) NOT NULL,
  `kehadiran` int(2) NOT NULL,
  `nominal_kehadiran` int(11) NOT NULL,
  `in_class` int(2) NOT NULL,
  `nominal_in_class` int(11) NOT NULL,
  `pengawasan_ujian` int(2) NOT NULL,
  `nominal_pengawasan_ujian` int(11) NOT NULL,
  `modul` int(2) NOT NULL,
  `nominal_modul` int(11) NOT NULL,
  `koreksi_ujian` int(3) NOT NULL,
  `nominal_koreksi_ujian` int(11) NOT NULL,
  `transport` int(2) NOT NULL,
  `nominal_transport` int(11) NOT NULL,
  `jumlah_honor` int(11) NOT NULL,
  `pph` int(11) NOT NULL,
  `total_honor_d` int(12) NOT NULL,
  `keterangan` text NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_salary_d`
--

INSERT INTO `tbl_salary_d` (`id_salary_d`, `nik_d`, `id_periode`, `mata_kuliah`, `kode_kategori`, `kehadiran`, `nominal_kehadiran`, `in_class`, `nominal_in_class`, `pengawasan_ujian`, `nominal_pengawasan_ujian`, `modul`, `nominal_modul`, `koreksi_ujian`, `nominal_koreksi_ujian`, `transport`, `nominal_transport`, `jumlah_honor`, `pph`, `total_honor_d`, `keterangan`, `create_date`) VALUES
(14, 111111, 10, 'Pancasila', 0, 5, 300000, 5, 375000, 4, 300000, 4, 320000, 4, 40000, 4, 320000, 1655000, 41375, 1613625, 'test', '2022-11-05 05:38:47'),
(15, 111111, 11, 'Pancasila', 0, 42, 2520000, 42, 3150000, 0, 0, 0, 0, 0, 0, 6, 480000, 6150000, 153750, 5996250, 'Trial', '2022-11-05 06:20:07'),
(16, 223333, 11, 'TPS', 0, 7, 700000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 700000, 17500, 682500, 'Trial', '2022-11-05 06:21:56');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_salary_k`
--

CREATE TABLE `tbl_salary_k` (
  `id_salary_k` int(11) NOT NULL,
  `nik_k` int(9) NOT NULL,
  `id_periode` int(11) NOT NULL,
  `basic_salary` int(11) NOT NULL,
  `transport` int(11) NOT NULL,
  `komunikasi` int(11) NOT NULL,
  `makan` int(11) NOT NULL,
  `bpk` int(11) NOT NULL,
  `jumlah_jam_ot` decimal(10,2) NOT NULL,
  `jumlah_ot` int(11) NOT NULL,
  `total_makan` int(11) NOT NULL,
  `jumlah_apresiasi` int(11) NOT NULL,
  `ppph` int(11) NOT NULL,
  `lpph` int(11) NOT NULL,
  `kpph` int(11) NOT NULL,
  `tpu` int(11) NOT NULL,
  `jumlah_shift` int(11) NOT NULL,
  `tunjangan_3t` int(11) NOT NULL,
  `rapel_ot` int(11) NOT NULL,
  `rapel_gaji` int(11) NOT NULL,
  `bpjs` int(11) NOT NULL,
  `bpjs_dp` int(11) NOT NULL,
  `jht` int(11) NOT NULL,
  `jht_dp` int(11) NOT NULL,
  `asuransidp` int(11) NOT NULL,
  `jumlah_gaji_bruto` int(11) NOT NULL,
  `jumlah_income` int(11) NOT NULL,
  `total_pendapatan` int(12) NOT NULL,
  `total_potongan` int(12) NOT NULL,
  `biaya_jabatan` decimal(10,2) NOT NULL,
  `income_nett` decimal(12,2) NOT NULL,
  `income_nett_1year` decimal(14,2) NOT NULL,
  `pkp_1year` decimal(12,2) NOT NULL,
  `pembulatan` int(11) NOT NULL,
  `pph_terhutang` decimal(10,2) NOT NULL,
  `pph_masa` int(11) NOT NULL,
  `pph_masa_real` decimal(10,2) NOT NULL,
  `amount_gajikaryawan` int(12) NOT NULL,
  `keterangan` text NOT NULL,
  `tgl_release` date NOT NULL,
  `publish` enum('No','Yes') NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_salary_k`
--

INSERT INTO `tbl_salary_k` (`id_salary_k`, `nik_k`, `id_periode`, `basic_salary`, `transport`, `komunikasi`, `makan`, `bpk`, `jumlah_jam_ot`, `jumlah_ot`, `total_makan`, `jumlah_apresiasi`, `ppph`, `lpph`, `kpph`, `tpu`, `jumlah_shift`, `tunjangan_3t`, `rapel_ot`, `rapel_gaji`, `bpjs`, `bpjs_dp`, `jht`, `jht_dp`, `asuransidp`, `jumlah_gaji_bruto`, `jumlah_income`, `total_pendapatan`, `total_potongan`, `biaya_jabatan`, `income_nett`, `income_nett_1year`, `pkp_1year`, `pembulatan`, `pph_terhutang`, `pph_masa`, `pph_masa_real`, `amount_gajikaryawan`, `keterangan`, `tgl_release`, `publish`, `create_date`) VALUES
(99, 170035, 10, 4739608, 578947, 105263, 19000, 0, '44.00', 1205449, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 54238, 216953, 94792, 25594, 242547, 6629267, 6871814, 6871814, 450748, '343590.70', '6433431.30', '77201176.00', '14201176.00', 14201000, '710050.00', 59171, '59171.00', 6421066, '', '2022-09-30', 'Yes', '2022-10-08 03:17:42'),
(100, 180047, 10, 4739608, 578947, 105263, 19000, 0, '36.00', 986277, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 54238, 216953, 94792, 25594, 242547, 6410095, 6652642, 6652642, 421585, '332632.10', '6225217.90', '74702615.00', '7202615.00', 7202000, '360100.00', 30008, '30008.00', 6231057, '', '2022-09-30', 'Yes', '2022-10-08 03:18:45'),
(102, 160030, 10, 4739608, 578947, 105263, 19000, 0, '25.00', 684914, 0, 0, 0, 0, 0, 0, 0, 526316, 0, 0, 0, 0, 94792, 25594, 25594, 6635048, 6660642, 6660642, 188274, '333032.10', '6232817.90', '74793815.00', '16293815.00', 16293000, '814650.00', 67888, '67888.00', 6472368, '', '2022-09-30', 'Yes', '2022-10-08 03:20:32'),
(103, 200083, 10, 4739608, 578947, 105263, 19000, 0, '8.00', 219173, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 54238, 216953, 94792, 25594, 242547, 5642991, 5885538, 5885538, 391577, '294276.90', '5496469.10', '65957629.00', '-6042371.00', -6042742, '-302137.00', 0, '-25178.00', 5493961, '', '2022-09-30', 'Yes', '2022-10-08 03:21:26'),
(104, 190075, 10, 3825894, 578947, 105263, 19000, 0, '0.00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 45943, 183772, 76518, 20660, 204432, 4510104, 4714536, 4714536, 326893, '235726.80', '4402291.20', '52827494.00', '-5672506.00', -5673012, '-283651.00', 0, '-23638.00', 4387643, '', '2022-09-30', 'Yes', '2022-10-08 03:22:09'),
(105, 200084, 10, 3825894, 578947, 105263, 19000, 0, '0.00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 45943, 183772, 76518, 20660, 204432, 4510104, 4714536, 4714536, 326893, '235726.80', '4402291.20', '52827494.00', '-10172506.00', -10173012, '-508651.00', 0, '-42388.00', 4387643, '', '2022-09-30', 'Yes', '2022-10-08 03:22:56'),
(106, 180055, 10, 4557316, 526316, 105263, 19000, 0, '27.00', 711257, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 51889, 207556, 91146, 24610, 232166, 5900152, 6132318, 6132318, 436926, '306615.90', '5734556.10', '68814673.00', '14814673.00', 14814000, '740700.00', 61725, '61725.00', 5695392, '', '2022-09-30', 'Yes', '2022-10-08 03:23:31'),
(107, 180059, 10, 4557316, 526316, 105263, 19000, 0, '32.00', 842972, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 51889, 207556, 91146, 24610, 232166, 6031867, 6264033, 6264033, 443184, '313201.65', '5859685.35', '70316224.00', '16316224.00', 16316000, '815800.00', 67983, '67983.00', 5820849, '', '2022-09-30', 'Yes', '2022-10-08 03:24:11'),
(108, 180058, 10, 4557316, 526316, 105263, 19000, 0, '34.50', 908829, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 51889, 207556, 91146, 24610, 232166, 6097724, 6329890, 6329890, 446309, '316494.50', '5922249.50', '71066994.00', '17066994.00', 17066000, '853300.00', 71108, '71108.00', 5883581, '', '2022-09-30', 'Yes', '2022-10-08 03:24:44'),
(109, 180057, 10, 3825894, 526316, 105263, 19000, 0, '0.00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 45943, 183772, 76518, 20660, 204432, 4457473, 4661905, 4661905, 326893, '233095.25', '4352291.75', '52227501.00', '-1772499.00', -1772998, '-88650.00', 0, '-7388.00', 4335012, '', '2022-09-30', 'Yes', '2022-10-08 03:25:36'),
(110, 220084, 10, 3825894, 526316, 105263, 19000, 0, '32.50', 718737, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 76518, 20660, 20660, 5176210, 5196870, 5196870, 115203, '259843.50', '4860508.50', '58326102.00', '4326102.00', 4326000, '216300.00', 18025, '18025.00', 5081667, '', '2022-09-30', 'Yes', '2022-10-08 03:26:17'),
(111, 160029, 10, 4739608, 578947, 105263, 19000, 0, '0.00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 64764, 259058, 94792, 25594, 284652, 5423818, 5708470, 5708470, 466871, '285423.50', '5328254.50', '63939054.00', '5439054.00', 5439000, '271950.00', 22663, '22663.00', 5241599, '', '2022-09-30', 'Yes', '2022-10-08 03:33:37'),
(115, 150023, 10, 4929193, 578947, 157895, 19000, 0, '12.50', 356156, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 56660, 226641, 98584, 26618, 253259, 6022191, 6275450, 6275450, 476657, '313772.50', '5863093.50', '70357122.00', '16357122.00', 16357000, '817850.00', 68154, '68154.00', 5798793, '', '2022-09-30', 'No', '2022-10-08 04:02:28'),
(118, 200084, 11, 3825894, 578947, 105263, 19000, 0, '8.00', 176920, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 47983, 191932, 76518, 20660, 212592, 4687024, 4899616, 4899616, 337093, '244980.80', '4578117.20', '54937406.00', '-8062594.00', -8063188, '-403159.00', 0, '-33597.00', 4562523, '', '2022-10-25', 'Yes', '2022-10-19 09:35:14'),
(119, 190075, 11, 3825894, 578947, 105263, 19000, 0, '0.00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 47983, 191932, 76518, 20660, 212592, 4510104, 4722696, 4722696, 337093, '236134.80', '4410043.20', '52920518.00', '-5579482.00', -5579964, '-278998.00', 0, '-23250.00', 4385603, '', '2022-10-25', 'Yes', '2022-10-19 09:52:03'),
(120, 180057, 11, 3825894, 526316, 105263, 19000, 0, '0.00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 47983, 191932, 76518, 20660, 212592, 4457473, 4670065, 4670065, 337093, '233503.25', '4360043.75', '52320525.00', '-1679475.00', -1679950, '-83998.00', 0, '-7000.00', 4332972, '', '2022-10-25', 'Yes', '2022-10-19 09:53:26'),
(123, 220084, 11, 3825894, 526316, 105263, 19000, 0, '10.00', 221150, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 82983, 191932, 76518, 20660, 212592, 4678623, 4891215, 4891215, 375597, '244560.75', '4570136.25', '54841635.00', '841635.00', 841000, '42050.00', 3504, '3504.00', 4515618, '', '2022-10-25', 'Yes', '2022-10-19 10:07:07'),
(124, 180047, 11, 4739608, 578947, 105263, 19000, 0, '41.50', 1136958, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 89238, 216953, 94792, 25594, 242547, 6560776, 6803323, 6803323, 428744, '340166.15', '6368364.85', '76420378.00', '8920378.00', 8920000, '446000.00', 37167, '37167.00', 6374579, '', '2022-10-25', 'Yes', '2022-10-19 10:11:39'),
(125, 150023, 11, 4929193, 578947, 157895, 19000, 0, '8.00', 227940, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 91660, 226641, 98584, 26618, 253259, 5893975, 6147234, 6147234, 470566, '307361.70', '5741288.30', '68895460.00', '14895460.00', 14895000, '744750.00', 62063, '62063.00', 5676668, '', '2022-10-25', 'No', '2022-10-19 10:16:37'),
(126, 170035, 11, 4739608, 578947, 105263, 19000, 0, '20.50', 561630, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 89238, 216953, 94792, 25594, 242547, 5985448, 6227995, 6227995, 420165, '311399.75', '5821803.25', '69861639.00', '6861639.00', 6861000, '343050.00', 28588, '28588.00', 5807830, '', '2022-10-25', 'Yes', '2022-10-19 10:17:44'),
(127, 160030, 11, 4739608, 578947, 105263, 19000, 0, '12.00', 328759, 0, 0, 0, 0, 0, 0, 0, 526316, 0, 0, 0, 0, 94792, 25594, 25594, 6278893, 6304487, 6304487, 171357, '315224.35', '5894470.65', '70733648.00', '12233648.00', 12233000, '611650.00', 50971, '50971.00', 6133130, '', '2022-10-25', 'Yes', '2022-10-19 10:19:11'),
(128, 200083, 11, 4739608, 578947, 105263, 19000, 0, '8.00', 219173, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 89238, 216953, 94792, 25594, 242547, 5642991, 5885538, 5885538, 391577, '294276.90', '5496469.10', '65957629.00', '-6042371.00', -6042742, '-302137.00', 0, '-25178.00', 5493961, '', '2022-10-25', 'Yes', '2022-10-19 10:20:58'),
(129, 180059, 11, 4557316, 526316, 105263, 19000, 0, '12.00', 316114, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 86889, 207556, 91146, 24610, 232166, 5505009, 5737175, 5737175, 418159, '286858.75', '5359170.25', '64310043.00', '10310043.00', 10310000, '515500.00', 42958, '42958.00', 5319016, '', '2022-10-25', 'Yes', '2022-10-19 10:22:44'),
(130, 180058, 11, 4557316, 526316, 105263, 19000, 0, '13.00', 342457, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 86889, 207556, 91146, 24610, 232166, 5531352, 5763518, 5763518, 419409, '288175.90', '5384196.10', '64610353.00', '10610353.00', 10610000, '530500.00', 44208, '44208.00', 5344109, '', '2022-10-25', 'Yes', '2022-10-19 10:24:02'),
(131, 180055, 11, 4557316, 526316, 105263, 19000, 0, '21.50', 566372, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 86889, 207556, 91146, 24610, 232166, 5755267, 5987433, 5987433, 430043, '299371.65', '5596915.35', '67162984.00', '13162984.00', 13162000, '658100.00', 54842, '54842.00', 5557390, '', '2022-10-25', 'Yes', '2022-10-19 10:25:02'),
(135, 160029, 11, 4739608, 578947, 105263, 19000, 0, '0.00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 89238, 259058, 94792, 25594, 284652, 5423818, 5708470, 5708470, 456345, '285423.50', '5328254.50', '63939054.00', '5439054.00', 5439000, '271950.00', 22663, '22663.00', 5252125, '', '2022-10-25', 'Yes', '2022-10-25 07:10:22'),
(136, 150023, 12, 4929193, 578947, 157895, 19000, 0, '2.00', 56985, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 91660, 226641, 98584, 26618, 253259, 5723020, 5976279, 5976279, 462445, '298813.95', '5578881.05', '66946573.00', '12946573.00', 12946000, '647300.00', 53942, '53942.00', 5513834, 'November 2022', '2022-11-25', 'No', '2022-11-17 08:43:09'),
(137, 170035, 12, 4739608, 578947, 105263, 19000, 0, '46.50', 1273941, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 89238, 216953, 94792, 25594, 242547, 6697759, 6940306, 6940306, 453998, '347015.30', '6498498.70', '77981984.00', '14981984.00', 14981000, '749050.00', 62421, '62421.00', 6486308, 'November 2022', '2022-11-25', 'Yes', '2022-11-17 08:44:24'),
(138, 160029, 0, 4739608, 578947, 105263, 19000, 0, '9.00', 246569, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 89238, 216953, 94792, 25594, 242547, 5670387, 5912934, 5912934, 423948, '295646.70', '5522495.30', '66269944.00', '7769944.00', 7769000, '388450.00', 32371, '32371.00', 5488986, 'November 2022', '2022-11-25', 'No', '2022-11-17 08:45:26'),
(139, 160029, 12, 4739608, 578947, 105263, 19000, 0, '9.00', 246569, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 89238, 216953, 94792, 25594, 242547, 5670387, 5912934, 5912934, 423948, '295646.70', '5522495.30', '66269944.00', '7769944.00', 7769000, '388450.00', 32371, '32371.00', 5488986, 'November 2022', '2022-11-25', 'Yes', '2022-11-17 08:46:56'),
(140, 160030, 12, 4739608, 578947, 105263, 19000, 0, '14.00', 383552, 0, 0, 0, 0, 0, 0, 0, 526316, 0, 0, 0, 0, 94792, 25594, 25594, 6333686, 6359280, 6359280, 173961, '317964.00', '5946524.00', '71358288.00', '12858288.00', 12858000, '642900.00', 53575, '53575.00', 6185319, 'November 2022', '2022-11-25', 'Yes', '2022-11-17 08:47:53'),
(141, 180047, 12, 4739608, 578947, 105263, 19000, 0, '38.00', 1041070, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 89238, 216953, 94792, 25594, 242547, 6464888, 6707435, 6707435, 424190, '335371.75', '6277271.25', '75327255.00', '7827255.00', 7827000, '391350.00', 32613, '32613.00', 6283245, 'November 2022', '2022-11-25', 'Yes', '2022-11-17 08:49:22'),
(142, 200083, 12, 4739608, 578947, 105263, 19000, 0, '8.00', 219173, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 89238, 216953, 94792, 25594, 242547, 5642991, 5885538, 5885538, 391577, '294276.90', '5496469.10', '65957629.00', '-6042371.00', -6042742, '-302137.00', 0, '-25178.00', 5493961, 'November 2022', '2022-11-25', 'Yes', '2022-11-17 08:50:18'),
(143, 180057, 12, 3825894, 526316, 105263, 19000, 0, '0.00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 82983, 191932, 76518, 20660, 212592, 4457473, 4670065, 4670065, 337093, '233503.25', '4360043.75', '52320525.00', '-1679475.00', -1679950, '-83998.00', 0, '-7000.00', 4332972, 'November 2022', '2022-11-25', 'Yes', '2022-11-17 08:51:02'),
(144, 180058, 12, 4557316, 526316, 105263, 19000, 0, '41.50', 1093229, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 86889, 207556, 91146, 24610, 232166, 6282124, 6514290, 6514290, 455072, '325714.50', '6097429.50', '73169154.00', '19169154.00', 19169000, '958450.00', 79871, '79871.00', 6059218, 'November 2022', '2022-11-25', 'Yes', '2022-11-17 08:51:53'),
(145, 180059, 12, 4557316, 526316, 105263, 19000, 0, '27.00', 711257, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 86889, 207556, 91146, 24610, 232166, 5900152, 6132318, 6132318, 436926, '306615.90', '5734556.10', '68814673.00', '14814673.00', 14814000, '740700.00', 61725, '61725.00', 5695392, 'November 2022', '2022-11-25', 'Yes', '2022-11-17 08:52:42'),
(146, 180055, 12, 4557316, 526316, 105263, 19000, 0, '30.50', 803457, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 86889, 207556, 91146, 24610, 232166, 5992352, 6224518, 6224518, 441305, '311225.90', '5822146.10', '69865753.00', '15865753.00', 15865000, '793250.00', 66104, '66104.00', 5783213, 'November 2022', '2022-11-25', 'Yes', '2022-11-17 08:53:41'),
(147, 200084, 12, 3825894, 578947, 105263, 19000, 0, '8.00', 176920, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 82983, 191932, 76518, 20660, 212592, 4687024, 4899616, 4899616, 337093, '244980.80', '4578117.20', '54937406.00', '-8062594.00', -8063188, '-403159.00', 0, '-33597.00', 4562523, 'November 2022', '2022-11-25', 'Yes', '2022-11-17 08:54:27'),
(148, 190075, 12, 3825894, 578947, 105263, 19000, 0, '4.00', 88460, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 82983, 191932, 76518, 20660, 212592, 4598564, 4811156, 4811156, 337093, '240557.80', '4494080.20', '53928962.00', '-4571038.00', -4571076, '-228554.00', 0, '-19046.00', 4474063, 'November 2022', '2022-11-25', 'Yes', '2022-11-17 08:55:15'),
(149, 220084, 12, 3825894, 526316, 105263, 19000, 0, '41.00', 906715, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 82983, 191932, 76518, 20660, 212592, 5364188, 5576780, 5576780, 373164, '278839.00', '5221423.00', '62657076.00', '8657076.00', 8657000, '432850.00', 36071, '36071.00', 5203616, 'November 2022', '2022-11-25', 'Yes', '2022-11-17 08:56:02'),
(150, 2200128, 10, 0, 0, 0, 0, 0, '10.00', 231214, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 82983, 191932, 80000, 21600, 213532, 4881214, 5094746, 5094746, 354515, '254737.30', '4760008.70', '57120104.00', '3120104.00', 3120000, '156000.00', 13000, '13000.00', 4740231, 'Trial', '2022-09-23', 'No', '2022-12-02 03:16:20'),
(152, 150023, 13, 4929193, 578947, 157895, 19000, 0, '13.00', 370402, 0, 9858386, 0, 0, 0, 0, 0, 0, 0, 0, 91660, 226641, 98584, 26618, 253259, 15894823, 16148082, 16148082, 945624, '807404.10', '15242093.90', '99999999.99', '99999999.99', 128905000, '6445250.00', 537121, '537104.00', 15202458, 'Salary Desember 2022', '2022-12-23', 'No', '2022-12-20 09:45:24'),
(154, 170035, 13, 4739608, 578947, 105263, 19000, 0, '20.00', 547932, 0, 7109412, 0, 0, 0, 0, 0, 0, 0, 0, 89238, 216953, 94792, 25594, 242547, 13081162, 13323709, 13323709, 757220, '666185.45', '12562731.55', '99999999.99', '87752779.00', 87752000, '4387600.00', 365643, '365633.00', 12566489, 'Salary Desember 2022', '2022-12-23', 'Yes', '2022-12-20 09:51:09'),
(155, 160029, 13, 4739608, 578947, 105263, 19000, 0, '0.00', 0, 0, 4739608, 0, 0, 0, 0, 0, 0, 0, 0, 54238, 216953, 94792, 25594, 242547, 10163426, 10405973, 10405973, 637357, '520298.65', '9790882.35', '99999999.99', '58990588.00', 58990000, '2949500.00', 245780, '245792.00', 9768616, 'Salary Desember 2022', '2022-12-23', 'Yes', '2022-12-20 09:53:04'),
(156, 160030, 13, 4739608, 578947, 105263, 19000, 0, '0.00', 0, 0, 7109412, 0, 0, 0, 0, 0, 526316, 0, 0, 0, 0, 94792, 25594, 25594, 13059546, 13085140, 13085140, 493423, '654257.00', '12336091.00', '99999999.99', '89533092.00', 89533000, '4476650.00', 373037, '373054.00', 12591717, 'Salary Desember 2022', '2022-12-23', 'Yes', '2022-12-20 09:58:35'),
(157, 180047, 13, 4739608, 578947, 105263, 19000, 0, '21.00', 575328, 0, 9479216, 0, 0, 0, 0, 0, 0, 0, 0, 54238, 216953, 94792, 25594, 242547, 15478362, 15720909, 15720909, 816297, '786045.45', '14840071.55', '99999999.99', '99999999.99', 110580000, '5529000.00', 424720, '460750.00', 14904612, 'Salary Desember 2022', '2022-12-23', 'Yes', '2022-12-20 10:01:51'),
(158, 200083, 13, 4739608, 578947, 105263, 19000, 0, '0.00', 0, 0, 4739608, 0, 0, 0, 0, 0, 0, 0, 0, 54238, 216953, 94792, 25594, 242547, 10163426, 10405973, 10405973, 391577, '520298.65', '9790882.35', '99999999.99', '45490588.00', 45490000, '2274500.00', 0, '189542.00', 10014396, 'Salary Desember 2022', '2022-12-23', 'Yes', '2022-12-20 10:09:49'),
(159, 180058, 13, 4557316, 526316, 105263, 19000, 0, '17.00', 447829, 0, 9114632, 0, 0, 0, 0, 0, 0, 0, 0, 51889, 207556, 91146, 24610, 232166, 14751356, 14983522, 14983522, 857363, '749176.10', '14143199.90', '99999999.99', '99999999.99', 115718000, '5785900.00', 482162, '482158.00', 14126159, 'Salary Desember 2022', '2022-12-23', 'Yes', '2022-12-20 10:13:08'),
(160, 180059, 13, 4557316, 526316, 105263, 19000, 0, '12.00', 316114, 0, 6835974, 0, 0, 0, 0, 0, 0, 0, 0, 51889, 207556, 91146, 24610, 232166, 12340983, 12573149, 12573149, 742846, '628657.45', '11853345.55', '99999999.99', '88240147.00', 88240000, '4412000.00', 367645, '367667.00', 11830303, 'Salary Desember 2022', '2022-12-23', 'Yes', '2022-12-20 10:16:07'),
(161, 180055, 13, 4557316, 526316, 105263, 19000, 0, '8.00', 210743, 0, 9114632, 0, 0, 0, 0, 0, 0, 0, 0, 51889, 207556, 91146, 24610, 232166, 14514270, 14746436, 14746436, 846112, '737321.80', '13917968.20', '99999999.99', '99999999.99', 113015000, '5650750.00', 470911, '470896.00', 13900324, 'Salary Desember 2022', '2022-12-23', 'Yes', '2022-12-20 10:19:42'),
(164, 200084, 13, 3825894, 578947, 105263, 19000, 0, '0.00', 0, 0, 3825894, 0, 0, 0, 0, 0, 0, 0, 0, 47983, 191932, 76518, 20660, 212592, 8335998, 8548590, 8548590, 337093, '427429.50', '8044642.50', '96535710.00', '33535710.00', 33535000, '1676750.00', 0, '139729.00', 8211497, 'Salary Desember 2022', '2022-12-23', 'Yes', '2022-12-20 10:30:57'),
(167, 190075, 13, 3825894, 578947, 105263, 19000, 0, '0.00', 0, 0, 3825894, 0, 0, 0, 0, 0, 0, 0, 0, 47983, 191932, 76518, 20660, 212592, 8335998, 8548590, 8548590, 337093, '427429.50', '8044642.50', '96535710.00', '38035710.00', 38035000, '1901750.00', 0, '158479.00', 8211497, 'Salary Desember 2022', '2022-12-23', 'Yes', '2022-12-20 10:47:55'),
(168, 180057, 13, 3825894, 526316, 105263, 19000, 0, '0.00', 0, 0, 5738841, 0, 0, 0, 0, 0, 0, 0, 0, 47983, 191932, 76518, 20660, 212592, 10196314, 10408906, 10408906, 337093, '520445.30', '9811942.70', '99999999.99', '63743312.00', 63743000, '3187150.00', 0, '265596.00', 10071813, 'Salary Desember 2022', '2022-12-23', 'Yes', '2022-12-20 10:51:04'),
(169, 220084, 13, 3825894, 526316, 105263, 19000, 0, '23.00', 508645, 0, 3825894, 0, 0, 0, 0, 0, 0, 0, 0, 47983, 191932, 76518, 20660, 212592, 8792012, 9004604, 9004604, 337093, '450230.20', '8477855.80', '99999999.99', '47734270.00', 47734000, '2386700.00', 0, '198892.00', 8667511, 'Salary Desember 2022', '2022-12-23', 'Yes', '2022-12-20 10:56:32'),
(173, 180047, 14, 5112853, 578947, 115789, 19000, 411579, '50.00', 1477703, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 58076, 232304, 102257, 27610, 259914, 7696871, 7956785, 7956785, 511830, '397839.25', '7456688.75', '89480265.00', '21980265.00', 21980000, '1099000.00', 91583, '91583.00', 7444955, 'Salary Jan 23', '2023-01-25', 'Yes', '2023-01-24 10:09:51'),
(175, 170035, 14, 5112853, 578947, 115789, 19000, 411579, '73.00', 2157447, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 58076, 232304, 102257, 27610, 259914, 8376615, 8636529, 8636529, 562868, '431826.45', '8102445.55', '97229347.00', '34229347.00', 34229000, '1711450.00', 142621, '142621.00', 8073661, 'Salary Jan 23', '2023-01-25', 'Yes', '2023-01-24 10:15:48'),
(177, 160029, 14, 5112853, 578947, 115789, 19000, 411579, '0.00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 58076, 232304, 102257, 27610, 259914, 6219168, 6479082, 6479082, 479139, '323954.10', '6052870.90', '72634451.00', '14134451.00', 14134000, '706700.00', 58892, '58892.00', 5999943, 'Salary Jan 23', '2023-01-25', 'Yes', '2023-01-24 10:28:30'),
(178, 160030, 14, 5112853, 578947, 115789, 19000, 411579, '10.00', 295541, 0, 0, 0, 0, 0, 0, 0, 526316, 0, 0, 0, 0, 102257, 27610, 27610, 7041025, 7068635, 7068635, 216763, '353431.75', '6612946.25', '79355355.00', '20855355.00', 20855000, '1042750.00', 86896, '86896.00', 6851872, 'Salary Jan 23', '2023-01-25', 'Yes', '2023-01-24 10:29:43'),
(179, 200083, 14, 5112853, 526316, 115789, 19000, 411579, '0.00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 57550, 230198, 102257, 27610, 257808, 6166537, 6424345, 6424345, 417657, '321217.25', '6000870.75', '72010449.00', '10449.00', 10000, '500.00', 42, '42.00', 6006688, 'Salary Jan 23', '2023-01-25', 'Yes', '2023-01-24 10:30:38'),
(181, 150023, 14, 5317367, 578947, 157895, 19000, 411579, '31.00', 952823, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 60542, 242168, 106347, 28714, 270882, 7418611, 7689493, 7689493, 572704, '384474.65', '7198671.35', '86384056.00', '32384056.00', 32384000, '1619200.00', 134933, '134933.00', 7116789, 'Salary Jan 23', '2023-01-25', 'No', '2023-01-24 10:35:16'),
(182, 180055, 14, 4916204, 526316, 115789, 19000, 411579, '22.50', 639391, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 55583, 222332, 98324, 26548, 248880, 6609279, 6858159, 6858159, 498633, '342907.95', '6416927.05', '77003125.00', '23003125.00', 23003000, '1150150.00', 95846, '95846.00', 6359526, 'Salary Jan 23', '2023-01-25', 'Yes', '2023-01-24 10:41:37'),
(183, 180059, 14, 4916204, 526316, 115789, 19000, 411579, '38.00', 1079860, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 55583, 222332, 98324, 26548, 248880, 7049748, 7298628, 7298628, 519554, '364931.40', '6835372.60', '82024471.00', '28024471.00', 28024000, '1401200.00', 116767, '116767.00', 6779074, 'Salary Jan 23', '2023-01-25', 'Yes', '2023-01-24 10:42:42'),
(184, 180058, 14, 4916204, 526316, 115789, 19000, 411579, '8.00', 227339, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 55583, 222332, 98324, 26548, 248880, 6197227, 6446107, 6446107, 479058, '322305.35', '6025477.65', '72305732.00', '18305732.00', 18305000, '915250.00', 76271, '76271.00', 5967049, 'Salary Jan 23', '2023-01-25', 'Yes', '2023-01-24 10:44:13'),
(185, 190075, 14, 4127183, 526316, 115789, 19000, 411579, '0.00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 51762, 207047, 82544, 22287, 229334, 5180867, 5410201, 5410201, 372744, '270510.05', '5057146.95', '60685763.00', '2185763.00', 2185000, '109250.00', 9104, '9104.00', 5037457, 'Salary Jan 23', '2023-01-25', 'Yes', '2023-01-24 10:47:03'),
(186, 200084, 14, 4127183, 526316, 115789, 19000, 411579, '0.00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 51762, 207047, 82544, 22287, 229334, 5180867, 5410201, 5410201, 363640, '270510.05', '5057146.95', '60685763.00', '-2314237.00', -2314474, '-115724.00', 0, '-9644.00', 5046561, 'Salary Jan 23', '2023-01-25', 'Yes', '2023-01-24 10:50:47'),
(187, 180057, 14, 4127183, 526316, 115789, 19000, 411579, '29.00', 691840, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 51762, 207047, 82544, 22287, 229334, 5872707, 6102041, 6102041, 424357, '305102.05', '5714394.95', '68572739.00', '14572739.00', 14572000, '728600.00', 60717, '60717.00', 5677684, 'Salary Jan 23', '2023-01-25', 'Yes', '2023-01-24 10:53:53'),
(188, 220084, 14, 4127183, 526316, 115789, 19000, 411579, '56.50', 1347895, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 51762, 207047, 82544, 22287, 229334, 6528762, 6758096, 6758096, 455519, '337904.80', '6337647.20', '76051766.00', '22051766.00', 22051000, '1102550.00', 91879, '91879.00', 6302577, 'Salary Jan 23', '2023-01-25', 'Yes', '2023-01-24 10:57:22'),
(189, 150023, 15, 5317367, 578947, 157895, 19000, 411579, '10.00', 307362, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 60542, 242168, 106347, 28714, 270882, 6773150, 7044032, 7044032, 542042, '352201.60', '6585483.40', '79025801.00', '25025801.00', 25025000, '1251250.00', 104271, '104271.00', 6501990, 'Salary Februari 2023', '2023-02-24', 'Yes', '2023-06-07 07:57:03'),
(190, 170035, 15, 5112853, 578947, 115789, 19000, 411579, '46.50', 1374264, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 58076, 232304, 102257, 27610, 259914, 7593432, 7853346, 7853346, 525668, '392667.30', '7358421.70', '88301060.00', '25301060.00', 25301000, '1265050.00', 105421, '105421.00', 7327678, 'Salary Februari 2023', '2023-02-24', 'Yes', '2023-06-07 07:58:38'),
(192, 160029, 15, 5112853, 578947, 115789, 19000, 411579, '0.00', 0, 0, 0, 0, 58892, 0, 0, 0, 0, 0, 0, 58076, 232304, 102257, 27610, 259914, 6278060, 6479082, 6479082, 479139, '323954.10', '6052870.90', '72634451.00', '14134451.00', 14134000, '706700.00', 0, '58892.00', 6058835, 'Salary Februari 2023', '2023-02-24', 'Yes', '2023-06-07 08:44:09'),
(193, 160030, 15, 5112853, 578947, 115789, 19000, 411579, '19.50', 576304, 0, 0, 0, 0, 0, 0, 0, 526316, 0, 0, 0, 0, 102257, 27610, 27610, 7321788, 7349398, 7349398, 230100, '367469.90', '6879671.10', '82556053.00', '24056053.00', 24056000, '1202800.00', 100233, '100233.00', 7119298, 'Salary Februari 2023', '2023-02-24', 'Yes', '2023-06-07 08:46:04'),
(194, 180047, 15, 5112853, 578947, 115789, 19000, 411579, '51.30', 1516123, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 58076, 232304, 102257, 27610, 259914, 7735291, 7995205, 7995205, 513655, '399760.25', '7493187.75', '89918253.00', '22418253.00', 22418000, '1120900.00', 93408, '93408.00', 7481550, 'Salary Februari 2023', '2023-02-24', 'Yes', '2023-06-07 08:47:13'),
(197, 180058, 15, 4916204, 526316, 115789, 19000, 411579, '0.00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 55583, 222332, 98324, 26548, 248880, 5969888, 6218768, 6218768, 468262, '310938.40', '5809505.60', '69714067.00', '15714067.00', 15714000, '785700.00', 65475, '65475.00', 5750506, 'Salary Februari 2023', '2023-02-24', 'Yes', '2023-06-07 08:59:55'),
(198, 180059, 15, 4916204, 526316, 115789, 19000, 411579, '30.00', 852521, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 55583, 222332, 98324, 26548, 248880, 6822409, 7071289, 7071289, 508754, '353564.45', '6619400.55', '79432807.00', '25432807.00', 25432000, '1271600.00', 105967, '105967.00', 6562535, 'Salary Februari 2023', '2023-02-24', 'Yes', '2023-06-07 09:00:53'),
(199, 180055, 15, 4916204, 526316, 115789, 19000, 411579, '14.10', 400685, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 55583, 222332, 98324, 26548, 248880, 6370573, 6619453, 6619453, 487291, '330972.65', '6190156.35', '74281876.00', '20281876.00', 20281000, '1014050.00', 84504, '84504.00', 6132162, 'Salary Februari 2023', '2023-02-24', 'Yes', '2023-06-07 09:02:26'),
(202, 200084, 0, 4127183, 526316, 115789, 19000, 411579, '0.00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 51762, 207047, 82544, 22287, 229334, 5180867, 5410201, 4998622, 363640, '270510.05', '5057146.95', '60685763.00', '-2314237.00', -2314474, '-115724.00', 0, '-9644.00', 5046561, '', '2023-02-24', 'No', '2023-06-07 09:18:38'),
(203, 200084, 15, 4127183, 526316, 115789, 19000, 411579, '0.00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 51762, 207047, 82544, 22287, 229334, 5180867, 5410201, 5410201, 363640, '270510.05', '5057146.95', '60685763.00', '-2314237.00', -2314474, '-115724.00', 0, '-9644.00', 5046561, 'Salary Februari 2023', '2023-02-24', 'Yes', '2023-06-07 09:20:13'),
(204, 200083, 15, 5112853, 526316, 115789, 19000, 411579, '5.50', 162547, 0, 0, 0, 7763, 0, 0, 0, 0, 0, 0, 57550, 230198, 102257, 27610, 257808, 6336847, 6586892, 6586892, 425378, '329344.60', '6155290.40', '73863485.00', '1863485.00', 1863000, '93150.00', 0, '7763.00', 6169277, 'Salary Februari 2023', '2023-02-24', 'Yes', '2023-06-07 09:21:34'),
(207, 190075, 15, 4127183, 526316, 115789, 19000, 411579, '0.00', 0, 0, 0, 0, 9104, 0, 0, 0, 0, 0, 0, 51762, 207047, 82544, 22287, 229334, 5189971, 5410201, 5410201, 372744, '270510.05', '5057146.95', '60685763.00', '2185763.00', 2185000, '109250.00', 0, '9104.00', 5046561, 'Salary Februari 2023', '2023-02-24', 'Yes', '2023-06-30 07:13:21'),
(208, 150023, 16, 5317367, 578947, 157895, 19000, 411579, '0.00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 60542, 242168, 106347, 28714, 270882, 6465788, 6736670, 6736670, 527442, '336833.50', '6293489.50', '75521874.00', '21521874.00', 21521000, '1076050.00', 89671, '89671.00', 6209228, 'Salary Maret 2023', '2023-03-24', 'Yes', '2023-06-30 07:29:10'),
(209, 170035, 16, 5112853, 578947, 115789, 19000, 411579, '69.00', 2039230, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 58076, 232304, 102257, 27610, 259914, 8258398, 8518312, 8518312, 557251, '425915.60', '7990139.40', '95881673.00', '32881673.00', 32881000, '1644050.00', 137004, '137004.00', 7961061, 'Salary Maret 2023', '2023-03-24', 'Yes', '2023-06-30 07:30:46'),
(210, 160029, 16, 5112853, 578947, 115789, 19000, 411579, '0.00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 58076, 232304, 102257, 27610, 259914, 6219168, 6479082, 6479082, 479139, '323954.10', '6052870.90', '72634451.00', '14134451.00', 14134000, '706700.00', 58892, '58892.00', 5999943, 'Salary Maret 2023', '2023-03-24', 'Yes', '2023-06-30 07:41:50'),
(211, 180057, 15, 4127183, 526316, 115789, 19000, 411579, '15.00', 357848, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 51762, 207047, 82544, 22287, 229334, 5538715, 5768049, 5768049, 408494, '288402.45', '5397102.55', '64765231.00', '10765231.00', 10765000, '538250.00', 44854, '44854.00', 5359555, 'Salary Februari 2023', '2023-02-24', 'Yes', '2023-06-30 08:05:53'),
(212, 220084, 15, 4127183, 526316, 115789, 19000, 411579, '57.00', 1359823, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 51762, 207047, 82544, 22287, 229334, 6540690, 6770024, 6770024, 456086, '338501.20', '6348978.80', '76187746.00', '22187746.00', 22187000, '1109350.00', 92446, '92446.00', 6313938, 'Salary Februari 2023', '2023-02-24', 'Yes', '2023-06-30 08:13:38'),
(213, 160030, 16, 5112853, 578947, 115789, 19000, 411579, '12.00', 354649, 0, 0, 0, 0, 0, 0, 0, 526316, 0, 0, 0, 0, 102257, 27610, 27610, 7100133, 7127743, 7127743, 219571, '356387.15', '6669098.85', '80029186.00', '21529186.00', 21529000, '1076450.00', 89704, '89704.00', 6908172, 'Salary Maret 2023', '2023-03-24', 'Yes', '2023-06-30 08:19:20'),
(214, 180047, 16, 5112853, 578947, 115789, 19000, 411579, '41.50', 1226494, 0, 0, 0, 79650, 0, 0, 0, 0, 0, 0, 58076, 232304, 102257, 27610, 259914, 7525312, 7705576, 7293997, 499897, '385278.80', '7218040.20', '86616482.00', '19116482.00', 19116000, '955800.00', 0, '79650.00', 7285329, 'Salary Maret 2023', '2023-03-24', 'Yes', '2023-06-30 08:23:11'),
(215, 200083, 16, 5112853, 526316, 115789, 19000, 411579, '0.00', 0, 0, 0, 0, 42, 0, 0, 0, 0, 0, 0, 57550, 230198, 102257, 27610, 257808, 6166579, 6424345, 6424345, 417657, '321217.25', '6000870.75', '72010449.00', '10449.00', 10000, '500.00', 0, '42.00', 6006730, 'Salary Maret 2023', '2023-03-24', 'Yes', '2023-06-30 08:29:08'),
(216, 180058, 16, 4916204, 526316, 115789, 19000, 411579, '0.00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 55583, 222332, 98324, 26548, 248880, 5969888, 6218768, 6218768, 468262, '310938.40', '5809505.60', '69714067.00', '15714067.00', 15714000, '785700.00', 65475, '65475.00', 5750506, 'Salary Maret 2023', '2023-03-24', 'Yes', '2023-06-30 08:31:14'),
(217, 180059, 16, 4916204, 526316, 115789, 19000, 411579, '60.50', 1719251, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 55583, 222332, 98324, 26548, 248880, 7689139, 7938019, 7938019, 549925, '396900.95', '7442794.05', '89313529.00', '35313529.00', 35313000, '1765650.00', 147138, '147138.00', 7388094, 'Salary Maret 2023', '2023-03-24', 'Yes', '2023-06-30 08:32:19'),
(218, 180055, 16, 4916204, 526316, 115789, 19000, 411579, '41.50', 1179321, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 55583, 222332, 98324, 26548, 248880, 7149209, 7398089, 7398089, 524279, '369904.45', '6929860.55', '83158327.00', '29158327.00', 29158000, '1457900.00', 121492, '121492.00', 6873810, 'Salary Maret 2023', '2023-03-24', 'Yes', '2023-06-30 08:33:15'),
(219, 200084, 16, 4127183, 526316, 115789, 19000, 411579, '0.00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 51762, 207047, 82544, 22287, 229334, 5180867, 5410201, 5410201, 363640, '270510.05', '5057146.95', '60685763.00', '-2314237.00', -2314474, '-115724.00', 0, '-9644.00', 5046561, 'Salary Maret 2023', '2023-03-24', 'Yes', '2023-06-30 08:34:22'),
(220, 190075, 16, 4127183, 526316, 115789, 19000, 411579, '0.00', 0, 0, 0, 0, 9104, 0, 0, 0, 0, 0, 0, 51762, 207047, 82544, 22287, 229334, 5189971, 5410201, 4998622, 372744, '270510.05', '5057146.95', '60685763.00', '2185763.00', 2185000, '109250.00', 0, '9104.00', 5046561, 'Salary Maret 2023', '2023-03-24', 'Yes', '2023-06-30 08:35:14'),
(221, 180057, 16, 4127183, 526316, 115789, 19000, 411579, '12.00', 286279, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 51762, 207047, 82544, 22287, 229334, 5467146, 5696480, 5696480, 405094, '284824.00', '5329112.00', '63949344.00', '9949344.00', 9949000, '497450.00', 41454, '41454.00', 5291386, 'Salary Maret 2023', '2023-03-24', 'Yes', '2023-06-30 08:37:44'),
(222, 220084, 16, 4127183, 526316, 115789, 19000, 411579, '38.00', 906549, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 51762, 207047, 82544, 22287, 229334, 6087416, 6316750, 6316750, 434557, '315837.50', '5918368.50', '71020422.00', '17020422.00', 17020000, '851000.00', 70917, '70917.00', 5882193, 'Salary Maret 2023', '2023-03-24', 'Yes', '2023-06-30 08:44:40'),
(225, 180047, 17, 5112853, 578947, 115789, 19000, 411579, '45.00', 1329933, 0, 5112853, 0, 242862, 0, 0, 0, 0, 0, 0, 58076, 232304, 102257, 27610, 259914, 12904816, 12921868, 12921868, 747672, '646093.40', '12173517.60', '146082211.00', '78582211.00', 78582000, '3929100.00', 84563, '327425.00', 12417058, 'Salary April 2023', '2023-04-19', 'Yes', '2023-06-30 09:14:53'),
(226, 150023, 17, 5317367, 578947, 157895, 19000, 411579, '0.00', 0, 0, 5317367, 0, 225004, 0, 0, 0, 0, 0, 0, 60542, 242168, 106347, 28714, 270882, 12008159, 12054037, 12054037, 780017, '602701.85', '11344988.15', '136139858.00', '82139858.00', 82139000, '4106950.00', 117242, '342246.00', 11499024, 'Salary April 2023', '2023-04-19', 'Yes', '2023-06-30 09:23:39'),
(227, 170035, 17, 5112853, 578947, 115789, 19000, 411579, '86.50', 2556427, 0, 5112853, 0, 242862, 0, 0, 0, 0, 0, 0, 58076, 232304, 102257, 27610, 259914, 14131310, 14148362, 14148362, 824680, '707418.10', '13338686.90', '160064243.00', '97064243.00', 97064000, '4853200.00', 161571, '404433.00', 13566544, 'Salary April 2023', '2023-04-19', 'Yes', '2023-06-30 09:32:40'),
(228, 160029, 17, 5112853, 578947, 115789, 19000, 411579, '0.00', 0, 0, 5112853, 0, 242858, 0, 0, 0, 0, 0, 0, 58076, 232304, 102257, 27610, 259914, 11574879, 11591935, 11591935, 721997, '579596.75', '10910081.25', '130920975.00', '72420975.00', 72420000, '3621000.00', 58892, '301750.00', 11112796, 'Salary April 2023', '2023-04-19', 'Yes', '2023-06-30 09:36:46'),
(229, 160030, 17, 5112853, 578947, 115789, 19000, 411579, '3.50', 103439, 0, 5112853, 0, 242858, 0, 0, 0, 526316, 0, 0, 0, 0, 102257, 27610, 27610, 12204634, 11989386, 11989386, 450496, '599469.30', '11287659.70', '135451916.00', '76951916.00', 76951000, '3847550.00', 77771, '320629.00', 11781748, 'Salary April 2023', '2023-04-19', 'Yes', '2023-06-30 09:40:00'),
(230, 200083, 17, 5112853, 526316, 115789, 19000, 411579, '46.50', 1374264, 0, 5112853, 0, 242858, 0, 0, 0, 0, 0, 0, 57550, 230198, 102257, 27610, 257808, 12896512, 12911462, 12911462, 725794, '645573.10', '12163631.90', '145963583.00', '73963583.00', 73963000, '3698150.00', 65321, '308179.00', 12428526, 'Salary April 2023', '2023-04-19', 'Yes', '2023-06-30 09:43:23'),
(231, 180058, 17, 4916204, 526316, 115789, 19000, 411579, '20.00', 568347, 0, 4916204, 0, 225000, 0, 0, 0, 0, 0, 0, 55583, 222332, 98324, 26548, 248880, 11679439, 11703319, 11703319, 728775, '585165.95', '11019829.05', '132237949.00', '78237949.00', 78237000, '3911850.00', 100988, '325988.00', 11199544, 'Salary April 2023', '2023-04-19', 'Yes', '2023-06-30 09:45:34'),
(232, 180059, 17, 4916204, 526316, 115789, 19000, 411579, '19.50', 554139, 0, 4916204, 0, 225000, 0, 0, 0, 0, 0, 0, 55583, 222332, 98324, 26548, 248880, 11665231, 11689111, 11689111, 728100, '584455.55', '11006331.45', '132075977.00', '78075977.00', 78075000, '3903750.00', 100313, '325313.00', 11186011, 'Salary April 2023', '2023-04-19', 'Yes', '2023-06-30 09:53:42'),
(233, 180055, 17, 4916204, 526316, 115789, 19000, 411579, '54.10', 1537379, 0, 4916204, 0, 225000, 0, 0, 0, 0, 0, 0, 55583, 222332, 98324, 26548, 248880, 12648471, 12672351, 12672351, 774804, '633617.55', '11940409.45', '143284913.00', '89284913.00', 89284000, '4464200.00', 147017, '372017.00', 12122547, 'Salary April 2023', '2023-04-19', 'Yes', '2023-06-30 10:01:12'),
(234, 200084, 17, 4127183, 526316, 115789, 19000, 411579, '0.00', 0, 0, 4127183, 0, 186396, 0, 0, 0, 0, 0, 0, 51762, 207047, 82544, 22287, 229334, 9494446, 9537384, 9537384, 550036, '476869.20', '8977970.80', '107735650.00', '44735650.00', 44735000, '2236750.00', 0, '186396.00', 9173744, 'Salary April 2023', '2023-04-19', 'Yes', '2023-06-30 10:12:09'),
(235, 190075, 17, 4127183, 526316, 115789, 19000, 411579, '0.00', 0, 0, 4127183, 0, 205146, 0, 0, 0, 0, 0, 0, 51762, 207047, 82544, 22287, 229334, 9513196, 9537384, 9537384, 568786, '476869.20', '8977970.80', '107735650.00', '49235650.00', 49235000, '2461750.00', 0, '205146.00', 9173744, 'Salary April 2023', '2023-04-19', 'Yes', '2023-06-30 10:23:30'),
(236, 180057, 17, 4127183, 526316, 115789, 19000, 411579, '22.50', 536772, 0, 4127183, 0, 196038, 0, 0, 0, 0, 0, 0, 51762, 207047, 82544, 22287, 229334, 10040860, 10074156, 10074156, 613032, '503707.80', '9487904.20', '113854850.00', '59854850.00', 59854000, '2992700.00', 53354, '249392.00', 9657162, 'Salary April 2023', '2023-04-19', 'Yes', '2023-06-30 10:28:00'),
(237, 220084, 17, 4127183, 526316, 115789, 19000, 411579, '55.00', 1312110, 0, 3095387, 0, 147030, 0, 0, 0, 0, 0, 0, 51762, 207047, 82544, 22287, 229334, 9735394, 9817698, 9817698, 600853, '490884.90', '9244269.10', '110931229.00', '56931229.00', 56931000, '2846550.00', 90183, '237213.00', 9363875, 'Salary April 2023', '2023-04-19', 'Yes', '2023-06-30 10:32:01'),
(238, 150023, 18, 5317367, 578947, 157895, 19000, 411579, '10.00', 307362, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 60542, 242168, 106347, 28714, 270882, 6773150, 7044032, 7044032, 542042, '352201.60', '6585483.40', '79025801.00', '25025801.00', 25025000, '1251250.00', 104271, '104271.00', 6501990, 'Salary Mei 2023', '2023-05-25', 'Yes', '2023-06-30 10:39:33'),
(239, 170035, 18, 5112853, 578947, 115789, 19000, 411579, '29.00', 857068, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 58076, 232304, 102257, 27610, 259914, 7076236, 7336150, 7336150, 501101, '366807.50', '6867085.50', '82405026.00', '19405026.00', 19405000, '970250.00', 80854, '80854.00', 6835049, 'Salary Mei 2023', '2023-05-25', 'Yes', '2023-06-30 10:40:21'),
(240, 160029, 18, 5112853, 578947, 115789, 19000, 411579, '72.00', 2127893, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 58076, 232304, 102257, 27610, 259914, 8347061, 8606975, 8606975, 580214, '430348.75', '8074369.25', '96892431.00', '38392431.00', 38392000, '1919600.00', 159967, '159967.00', 8026761, 'Salary Mei 2023', '2023-05-25', 'Yes', '2023-06-30 10:41:17'),
(241, 160030, 18, 5112853, 578947, 115789, 19000, 411579, '0.00', 0, 0, 0, 0, 0, 0, 0, 0, 526316, 0, 0, 0, 0, 102257, 27610, 27610, 6745484, 6773094, 6361515, 202725, '338654.70', '6332182.30', '75986188.00', '17486188.00', 17486000, '874300.00', 72858, '72858.00', 6570369, 'Salary Mei 2023', '2023-05-25', 'Yes', '2023-06-30 10:42:15'),
(242, 180047, 18, 5112853, 578947, 115789, 19000, 411579, '24.00', 709298, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 58076, 232304, 102257, 27610, 259914, 6928466, 7188380, 7188380, 475330, '359419.00', '6726704.00', '80720448.00', '13220448.00', 13220000, '661000.00', 55083, '55083.00', 6713050, 'Salary Mei 2023', '2023-05-25', 'Yes', '2023-06-30 10:43:22'),
(243, 200083, 18, 5112853, 526316, 115789, 19000, 411579, '80.00', 2364325, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 57550, 230198, 102257, 27610, 257808, 8530862, 8788670, 8788670, 529961, '439433.50', '8246979.50', '98963754.00', '26963754.00', 26963000, '1348150.00', 112346, '112346.00', 8258709, 'Salary Mei 2023', '2023-05-25', 'Yes', '2023-06-30 10:44:11'),
(244, 180058, 18, 4916204, 526316, 115789, 19000, 411579, '38.00', 1079860, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 55583, 222332, 98324, 26548, 248880, 7049748, 7298628, 7298628, 519554, '364931.40', '6835372.60', '82024471.00', '28024471.00', 28024000, '1401200.00', 116767, '116767.00', 6779074, 'Salary Mei 2023', '2023-05-25', 'Yes', '2023-06-30 10:45:12'),
(245, 180059, 18, 4916204, 526316, 115789, 19000, 411579, '18.00', 511513, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 55583, 222332, 98324, 26548, 248880, 6481401, 6730281, 6730281, 492558, '336514.05', '6295442.95', '75545315.00', '21545315.00', 21545000, '1077250.00', 89771, '89771.00', 6237723, 'Salary Mei 2023', '2023-05-25', 'Yes', '2023-06-30 10:46:01'),
(246, 180055, 18, 4916204, 526316, 115789, 19000, 411579, '41.50', 1179321, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 55583, 222332, 98324, 26548, 248880, 7149209, 7398089, 7398089, 524279, '369904.45', '6929860.55', '83158327.00', '29158327.00', 29158000, '1457900.00', 121492, '121492.00', 6873810, 'Salary Mei 2023', '2023-05-25', 'Yes', '2023-06-30 10:48:00'),
(247, 200084, 18, 4127183, 526316, 115789, 19000, 411579, '72.00', 1717672, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 51762, 207047, 82544, 22287, 229334, 6898539, 7127873, 7127873, 435586, '356393.65', '6688935.35', '80267224.00', '17267224.00', 17267000, '863350.00', 71946, '71946.00', 6692287, 'Salary Mei 2023', '2023-05-25', 'Yes', '2023-06-30 10:48:58'),
(248, 190075, 18, 4127183, 526316, 115789, 19000, 411579, '16.00', 381705, 0, 0, 0, 27238, 0, 0, 0, 0, 0, 0, 51762, 207047, 82544, 22287, 229334, 5589810, 5791906, 5380327, 390878, '289595.30', '5419766.70', '65037200.00', '6537200.00', 6537000, '326850.00', 0, '27238.00', 5428266, 'Salary Mei 2023', '2023-05-25', 'Yes', '2023-06-30 10:50:13'),
(249, 180057, 18, 4127183, 526316, 115789, 19000, 411579, '31.50', 751481, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 51762, 207047, 82544, 22287, 229334, 5932348, 6161682, 5750103, 427190, '308084.10', '5771053.90', '69252647.00', '15252647.00', 15252000, '762600.00', 63550, '63550.00', 5734490, 'Salary Mei 2023', '2023-05-25', 'Yes', '2023-06-30 10:52:28'),
(250, 220084, 18, 4127183, 526316, 115789, 19000, 411579, '35.00', 834979, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 51762, 207047, 82544, 22287, 229334, 6015846, 6245180, 6245180, 431157, '312259.00', '5850377.00', '70204524.00', '16204524.00', 16204000, '810200.00', 67517, '67517.00', 5814023, 'Salary Mei 2023', '2023-05-25', 'Yes', '2023-06-30 10:55:12'),
(251, 150023, 19, 5317367, 578947, 157895, 19000, 411579, '0.00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 60542, 242168, 106347, 28714, 270882, 6465788, 6736670, 6736670, 527442, '336833.50', '6293489.50', '75521874.00', '21521874.00', 21521000, '1076050.00', 89671, '89671.00', 6209228, 'Salary Juni 2023', '2023-06-23', 'No', '2023-06-30 10:57:25'),
(252, 170035, 19, 5112853, 578947, 115789, 19000, 411579, '23.50', 694520, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 58076, 232304, 102257, 27610, 259914, 6913688, 7173602, 7173602, 493376, '358680.10', '6712664.90', '80551979.00', '17551979.00', 17551000, '877550.00', 73129, '73129.00', 6680226, 'Salary Juni 2023', '2023-06-23', 'Yes', '2023-06-30 10:58:09'),
(253, 160029, 19, 5112853, 578947, 115789, 19000, 411579, '0.00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 58076, 232304, 102257, 27610, 259914, 6219168, 6479082, 6479082, 479139, '323954.10', '6052870.90', '72634451.00', '14134451.00', 14134000, '706700.00', 58892, '58892.00', 5999943, 'Salary Juni 2023', '2023-06-23', 'Yes', '2023-06-30 10:59:15'),
(254, 160030, 19, 5112853, 578947, 115789, 19000, 411579, '24.00', 709298, 0, 0, 0, 0, 0, 0, 0, 526316, 0, 0, 0, 0, 102257, 27610, 27610, 7454782, 7482392, 7482392, 236417, '374119.60', '7006015.40', '84072185.00', '25572185.00', 25572000, '1278600.00', 106550, '106550.00', 7245975, 'Salary Juni 2023', '2023-06-23', 'Yes', '2023-06-30 11:00:15'),
(255, 180047, 19, 5112853, 578947, 115789, 19000, 411579, '15.00', 443311, 0, 0, 0, 0, 12633, 0, 0, 0, 0, 0, 58076, 232304, 102257, 27610, 259914, 6649846, 6922393, 6922393, 462697, '346119.65', '6474016.35', '77688196.00', '10188196.00', 10188000, '509400.00', 55083, '42450.00', 6447063, 'Salary Juni 2023', '2023-06-23', 'Yes', '2023-06-30 11:01:10'),
(256, 200083, 19, 5112853, 526316, 115789, 19000, 411579, '15.50', 458088, 0, 0, 0, 21800, 0, 0, 0, 0, 0, 0, 57550, 230198, 102257, 27610, 257808, 6646425, 6882433, 6882433, 439415, '344121.65', '6436054.35', '77232652.00', '5232652.00', 5232000, '261600.00', 0, '21800.00', 6464818, 'Salary Juni 2023', '2023-06-23', 'Yes', '2023-06-30 11:02:31'),
(257, 180058, 19, 4916204, 526316, 115789, 19000, 411579, '9.50', 269965, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 55583, 222332, 98324, 26548, 248880, 6239853, 6488733, 6077154, 481083, '324436.65', '6065972.35', '72791668.00', '18791668.00', 18791000, '939550.00', 78296, '78296.00', 6007650, 'Salary Juni 2023', '2023-06-23', 'Yes', '2023-06-30 11:04:30'),
(258, 180059, 19, 4916204, 526316, 115789, 19000, 411579, '23.00', 653599, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 55583, 222332, 98324, 26548, 248880, 6623487, 6872367, 6872367, 499308, '343618.35', '6430424.65', '77165096.00', '23165096.00', 23165000, '1158250.00', 96521, '96521.00', 6373059, 'Salary Juni 2023', '2023-06-23', 'Yes', '2023-06-30 11:05:19'),
(259, 180055, 19, 4916204, 526316, 115789, 19000, 411579, '26.00', 738851, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 55583, 222332, 98324, 26548, 248880, 6708739, 6957619, 6546040, 503354, '347880.95', '6511414.05', '78136969.00', '24136969.00', 24136000, '1206800.00', 100567, '100567.00', 6454265, 'Salary Juni 2023', '2023-06-23', 'Yes', '2023-06-30 11:06:49'),
(260, 200084, 19, 4127183, 526316, 115789, 19000, 411579, '0.00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 51762, 207047, 82544, 22287, 229334, 5180867, 5410201, 5410201, 363640, '270510.05', '5057146.95', '60685763.00', '-2314237.00', -2314474, '-115724.00', 0, '-9644.00', 5046561, 'Salary Juni 2023', '2023-06-23', 'Yes', '2023-06-30 11:10:05'),
(261, 190075, 19, 4127183, 526316, 115789, 19000, 411579, '0.00', 0, 0, 0, 0, 9104, 0, 0, 0, 0, 0, 0, 51762, 207047, 82544, 22287, 229334, 5189971, 5410201, 5410201, 372744, '270510.05', '5057146.95', '60685763.00', '2185763.00', 2185000, '109250.00', 0, '9104.00', 5046561, 'Salary Juni 2023', '2023-06-23', 'Yes', '2023-06-30 11:11:05'),
(262, 180057, 19, 4127183, 526316, 115789, 19000, 411579, '10.50', 250494, 0, 0, 0, 0, 23799, 0, 0, 0, 0, 0, 51762, 207047, 82544, 22287, 229334, 5407562, 5660695, 5249116, 403394, '283034.75', '5295116.25', '63541395.00', '9541395.00', 9541000, '477050.00', 63553, '39754.00', 5233502, 'Salary Juni 2023', '2023-06-23', 'Yes', '2023-06-30 11:12:38'),
(263, 220084, 19, 4127183, 526316, 115789, 19000, 411579, '13.50', 322063, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 51762, 207047, 82544, 22287, 229334, 5502930, 5732264, 5732264, 406794, '286613.20', '5363106.80', '64357282.00', '10357282.00', 10357000, '517850.00', 43154, '43154.00', 5325470, 'Salary Juni 2023', '2023-06-23', 'Yes', '2023-06-30 11:14:00'),
(264, 150023, 20, 5317367, 578947, 157895, 19000, 411579, '6.00', 184417, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 60542, 242168, 106347, 28714, 270882, 6650205, 6921087, 6921087, 536204, '346054.35', '6468685.65', '77624228.00', '23624228.00', 23624000, '1181200.00', 98433, '98433.00', 6384883, 'Salary Juli 2023', '2023-07-25', 'No', '2023-07-17 06:18:05'),
(265, 160030, 20, 5112853, 578947, 115789, 19000, 411579, '64.50', 1906237, 0, 0, 0, 0, 0, 0, 0, 526316, 0, 0, 0, 0, 102257, 27610, 27610, 8651721, 8679331, 8679331, 293271, '433966.55', '8143107.45', '97717289.00', '39217289.00', 39217000, '1960850.00', 163404, '163404.00', 8386060, 'Salary Juli 2023', '2023-07-25', 'Yes', '2023-07-17 06:23:54'),
(266, 170035, 20, 5112853, 578947, 115789, 19000, 411579, '49.00', 1448149, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 58076, 232304, 102257, 27610, 259914, 7667317, 7927231, 7927231, 529176, '396361.55', '7428612.45', '89143349.00', '26143349.00', 26143000, '1307150.00', 108929, '108929.00', 7398055, 'Salary juli 2023', '2023-07-25', 'Yes', '2023-07-17 06:35:44'),
(267, 180047, 20, 5112853, 578947, 115789, 19000, 411579, '3.50', 103439, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 58076, 232304, 102257, 27610, 259914, 6322607, 6582521, 6582521, 446551, '329126.05', '6151137.95', '73813655.00', '6313655.00', 6313000, '315650.00', 26304, '26304.00', 6135970, 'Salary Juli 2023', '2023-07-25', 'Yes', '2023-07-17 06:41:52'),
(268, 180055, 20, 4916204, 526316, 115789, 19000, 411579, '45.00', 1278781, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 55583, 222332, 98324, 26548, 248880, 7248669, 7497549, 7497549, 529004, '374877.45', '7024347.55', '84292171.00', '30292171.00', 30292000, '1514600.00', 126217, '126217.00', 6968545, 'Salary Juli 2023', '2023-07-25', 'Yes', '2023-07-17 06:47:32'),
(269, 180058, 20, 4916204, 526316, 115789, 19000, 411579, '14.50', 412052, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 55583, 222332, 98324, 26548, 248880, 6381940, 6630820, 6219241, 487833, '331541.00', '6200955.00', '74411460.00', '20411460.00', 20411000, '1020550.00', 85046, '85046.00', 6142987, 'Salary Juli 2023', '2023-07-25', 'Yes', '2023-07-17 06:51:47'),
(270, 180059, 20, 4916204, 526316, 115789, 19000, 411579, '73.50', 2088676, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 55583, 222332, 98324, 26548, 248880, 8058564, 8307444, 7895865, 567470, '415372.20', '7793747.80', '93524974.00', '39524974.00', 39524000, '1976200.00', 164683, '164683.00', 7739974, 'Salary Juli 2023', '2023-07-25', 'Yes', '2023-07-17 06:54:42'),
(271, 180057, 20, 4127183, 526316, 115789, 19000, 411579, '5.00', 119283, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 51762, 207047, 82544, 22287, 229334, 5300148, 5529484, 5529484, 397161, '276474.20', '5170465.80', '62045590.00', '8045590.00', 8045000, '402250.00', 33523, '33521.00', 5132321, 'Salary Juli 2023', '2023-07-25', 'Yes', '2023-07-17 06:57:56'),
(272, 220084, 20, 4127183, 526316, 115789, 19000, 411579, '83.50', 1992022, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 51762, 207047, 82544, 22287, 229334, 7172886, 7402223, 7402223, 486115, '370111.15', '6949567.85', '83394814.00', '29394814.00', 29394000, '1469700.00', 122478, '122475.00', 6916105, 'Salary Juli 2023', '2023-07-25', 'Yes', '2023-07-17 07:02:23'),
(273, 160029, 20, 5112853, 578947, 115789, 19000, 411579, '0.00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 58076, 232304, 102257, 27610, 259914, 6219168, 6479082, 6479082, 479139, '323954.10', '6052870.90', '72634451.00', '14134451.00', 14134000, '706700.00', 58892, '58892.00', 5999943, 'Salary Juli 2023', '2023-07-25', 'Yes', '2023-07-17 07:42:31');
INSERT INTO `tbl_salary_k` (`id_salary_k`, `nik_k`, `id_periode`, `basic_salary`, `transport`, `komunikasi`, `makan`, `bpk`, `jumlah_jam_ot`, `jumlah_ot`, `total_makan`, `jumlah_apresiasi`, `ppph`, `lpph`, `kpph`, `tpu`, `jumlah_shift`, `tunjangan_3t`, `rapel_ot`, `rapel_gaji`, `bpjs`, `bpjs_dp`, `jht`, `jht_dp`, `asuransidp`, `jumlah_gaji_bruto`, `jumlah_income`, `total_pendapatan`, `total_potongan`, `biaya_jabatan`, `income_nett`, `income_nett_1year`, `pkp_1year`, `pembulatan`, `pph_terhutang`, `pph_masa`, `pph_masa_real`, `amount_gajikaryawan`, `keterangan`, `tgl_release`, `publish`, `create_date`) VALUES
(274, 200083, 20, 5112853, 526316, 115789, 19000, 411579, '0.00', 0, 0, 0, 0, 42, 0, 0, 0, 0, 0, 0, 57550, 230198, 102257, 27610, 257808, 6166579, 6424345, 6424345, 417657, '321217.25', '6000870.75', '72010449.00', '10449.00', 10000, '500.00', 0, '42.00', 6006730, 'Salary Juli 2023', '2023-07-25', 'Yes', '2023-07-17 07:44:22'),
(275, 200084, 20, 4127183, 526316, 115789, 19000, 411579, '0.00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 51762, 207047, 82544, 22287, 229334, 5180867, 5410201, 5410201, 363640, '270510.05', '5057146.95', '60685763.00', '-2314237.00', -2314474, '-115724.00', 0, '-9644.00', 5046561, 'Salary Juli 2023', '2023-07-25', 'Yes', '2023-07-17 07:53:58'),
(276, 190075, 20, 4127183, 526316, 115789, 19000, 411579, '0.00', 0, 0, 0, 0, 9104, 0, 0, 0, 0, 0, 0, 51762, 207047, 82544, 22287, 229334, 5189971, 5410201, 5410201, 372744, '270510.05', '5057146.95', '60685763.00', '2185763.00', 2185000, '109250.00', 0, '9104.00', 5046561, 'Salary Juli 2023', '2023-07-25', 'Yes', '2023-07-17 07:58:56'),
(277, 150023, 21, 5317367, 578947, 157895, 19000, 411579, '0.00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 60542, 242168, 106347, 28714, 270882, 6465788, 6736670, 6736670, 527442, '336833.50', '6293489.50', '75521874.00', '21521874.00', 21521000, '1076050.00', 89671, '89671.00', 6209228, 'Salary Agustus 2023', '2023-08-25', 'No', '2023-08-15 15:06:34'),
(278, 170035, 21, 5112853, 578947, 115789, 19000, 411579, '0.00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 58076, 232304, 102257, 27610, 259914, 6219168, 6479082, 6479082, 460389, '323954.10', '6052870.90', '72634451.00', '9634451.00', 9634000, '481700.00', 40142, '40142.00', 6018693, 'Salary Agustus 2023', '2023-08-25', 'Yes', '2023-08-25 01:31:59'),
(279, 160029, 21, 5112853, 578947, 115789, 19000, 411579, '0.00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 58076, 232304, 102257, 27610, 259914, 6219168, 6479082, 6479082, 479139, '323954.10', '6052870.90', '72634451.00', '14134451.00', 14134000, '706700.00', 58892, '58892.00', 5999943, 'Salary Agustus 2023', '2023-08-25', 'Yes', '2023-08-25 01:33:57'),
(280, 160030, 21, 5112853, 578947, 115789, 19000, 411579, '0.00', 0, 0, 0, 0, 0, 0, 0, 0, 526316, 0, 0, 0, 0, 102257, 27610, 27610, 6745484, 6773094, 6773094, 202725, '338654.70', '6332182.30', '75986188.00', '17486188.00', 17486000, '874300.00', 72858, '72858.00', 6570369, 'Salary Agustus 2023', '2023-08-25', 'Yes', '2023-08-25 01:36:06'),
(281, 180047, 21, 5112853, 578947, 115789, 19000, 411579, '0.00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 58076, 232304, 102257, 27610, 259914, 6219168, 6479082, 6479082, 441639, '323954.10', '6052870.90', '72634451.00', '5134451.00', 5134000, '256700.00', 21392, '21392.00', 6037443, 'Salary Agustus 2023', '2023-08-25', 'Yes', '2023-08-25 01:38:08'),
(283, 200083, 21, 5112853, 526316, 115789, 19000, 411579, '0.00', 0, 0, 0, 0, 42, 0, 0, 0, 0, 0, 0, 57550, 230198, 102257, 27610, 257808, 6166579, 6424345, 6424345, 417657, '321217.25', '6000870.75', '72010449.00', '10449.00', 10000, '500.00', 0, '42.00', 6006730, 'Salary Agustus 2023', '2023-08-25', 'Yes', '2023-08-25 01:44:18'),
(284, 180058, 21, 4916204, 526316, 115789, 19000, 411579, '0.00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 55583, 222332, 98324, 26548, 248880, 5969888, 6218768, 6218768, 468262, '310938.40', '5809505.60', '69714067.00', '15714067.00', 15714000, '785700.00', 65475, '65475.00', 5750506, 'Salary Agustus 2023', '2023-08-25', 'Yes', '2023-08-25 01:53:28'),
(285, 180059, 21, 4916204, 526316, 115789, 19000, 411579, '0.00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 55583, 222332, 98324, 26548, 248880, 5969888, 6218768, 6218768, 468262, '310938.40', '5809505.60', '69714067.00', '15714067.00', 15714000, '785700.00', 65475, '65475.00', 5750506, 'Salary Agustus 2023', '2023-08-25', 'Yes', '2023-08-25 01:54:07'),
(286, 180055, 21, 4916204, 526316, 115789, 19000, 411579, '0.00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 55583, 222332, 98324, 26548, 248880, 5969888, 6218768, 6218768, 468262, '310938.40', '5809505.60', '69714067.00', '15714067.00', 15714000, '785700.00', 65475, '65475.00', 5750506, 'Salary Agustus 2023', '2023-08-25', 'Yes', '2023-08-25 01:55:01'),
(287, 200084, 21, 4127183, 526316, 115789, 19000, 411579, '0.00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 51762, 207047, 82544, 22287, 229334, 5180867, 5410201, 5410201, 363640, '270510.05', '5057146.95', '60685763.00', '-2314237.00', -2314474, '-115724.00', 0, '-9644.00', 5046561, 'Salary Agustus 2023', '2023-08-25', 'Yes', '2023-08-25 01:55:40'),
(288, 190075, 21, 4127183, 526316, 115789, 19000, 411579, '0.00', 0, 0, 0, 0, 9104, 0, 0, 0, 0, 0, 0, 51762, 207047, 82544, 22287, 229334, 5189971, 5410201, 5410201, 372744, '270510.05', '5057146.95', '60685763.00', '2185763.00', 2185000, '109250.00', 0, '9104.00', 5046561, 'Salary Agustus 2023', '2023-08-25', 'Yes', '2023-08-25 01:56:51'),
(290, 180057, 21, 4127183, 526316, 115789, 19000, 411579, '0.00', 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 51762, 207047, 82544, 22287, 229334, 5180864, 5410201, 5410201, 391494, '270510.05', '5057146.95', '60685763.00', '6685763.00', 6685000, '334250.00', 27857, '27854.00', 5018704, 'Salary Agustus 2023', '2023-08-25', 'Yes', '2023-08-25 02:02:17'),
(291, 220084, 21, 4127183, 526316, 115789, 19000, 411579, '0.00', 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 51762, 207047, 82544, 22287, 229334, 5180864, 5410201, 5410201, 391494, '270510.05', '5057146.95', '60685763.00', '6685763.00', 6685000, '334250.00', 27857, '27854.00', 5018704, 'Salary Agustus 2023', '2023-08-25', 'Yes', '2023-08-25 02:05:34'),
(292, 150023, 22, 5317367, 578947, 157895, 19000, 411579, '21.00', 645461, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 60542, 242168, 106347, 28714, 270882, 7111249, 7382131, 7382131, 558104, '369106.55', '6906677.45', '82880129.00', '28880129.00', 28880000, '1444000.00', 120333, '120333.00', 6824027, 'Salary September 2023', '2023-09-25', 'No', '2023-09-25 00:31:04'),
(293, 170035, 22, 5112853, 578947, 115789, 19000, 411579, '85.50', 2526872, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 58076, 232304, 102257, 27610, 259914, 8746040, 9005954, 9005954, 580414, '450297.70', '8453399.30', '101440792.00', '38440792.00', 38440000, '1922000.00', 160167, '160167.00', 8425540, 'Salary September 2023', '2023-09-25', 'Yes', '2023-09-25 00:32:18'),
(294, 160029, 22, 5112853, 578947, 115789, 19000, 411579, '0.00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 58076, 232304, 102257, 27610, 259914, 6219168, 6479082, 6479082, 479139, '323954.10', '6052870.90', '72634451.00', '14134451.00', 14134000, '706700.00', 58892, '58892.00', 5999943, 'Salary September 2023', '2023-09-25', 'Yes', '2023-09-25 00:33:48'),
(295, 160030, 22, 5112853, 578947, 115789, 19000, 411579, '99.50', 2940629, 0, 0, 0, 0, 0, 0, 0, 526316, 0, 0, 0, 0, 102257, 27610, 27610, 9686113, 9713723, 9713723, 342405, '485686.15', '9125779.85', '109509358.00', '51009358.00', 51009000, '2550450.00', 212538, '212538.00', 9371318, 'Salary September 2023', '2023-09-25', 'Yes', '2023-09-25 00:35:12'),
(296, 180047, 22, 5112853, 578947, 115789, 19000, 411579, '47.00', 1389041, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 58076, 232304, 102257, 27610, 259914, 7608209, 7868123, 7868123, 507618, '393406.15', '7372459.85', '88469518.00', '20969518.00', 20969000, '1048450.00', 87371, '87371.00', 7360505, 'Salary September 2023', '2023-09-25', 'Yes', '2023-09-25 00:36:14'),
(297, 200083, 22, 5112853, 526316, 115789, 19000, 411579, '0.00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 57550, 230198, 102257, 27610, 257808, 6166537, 6424345, 6424345, 417657, '321217.25', '6000870.75', '72010449.00', '10449.00', 10000, '500.00', 42, '42.00', 6006688, 'Salary September 2023', '2023-09-25', 'Yes', '2023-09-25 01:13:01'),
(298, 180058, 22, 4916204, 526316, 115789, 19000, 411579, '45.50', 1292990, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 55583, 222332, 98324, 26548, 248880, 7262878, 7511758, 7511758, 529679, '375587.90', '7037846.10', '84454153.00', '30454153.00', 30454000, '1522700.00', 126892, '126892.00', 6982079, 'Salary September 2023', '2023-09-25', 'Yes', '2023-09-25 01:15:05'),
(299, 180059, 0, 4916204, 526316, 115789, 19000, 411579, '58.50', 1662416, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 55583, 222332, 98324, 26548, 248880, 7632304, 7881184, 7881184, 547225, '394059.20', '7388800.80', '88665610.00', '34665610.00', 34665000, '1733250.00', 144438, '144438.00', 7333959, 'Salary September 2023', '2023-09-25', 'No', '2023-09-25 01:16:15'),
(300, 180059, 22, 4916204, 526316, 115789, 19000, 411579, '58.50', 1662416, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 55583, 222332, 98324, 26548, 248880, 7632304, 7881184, 7881184, 547225, '394059.20', '7388800.80', '88665610.00', '34665610.00', 34665000, '1733250.00', 144438, '144438.00', 7333959, 'Salary September 2023', '2023-09-25', 'Yes', '2023-09-25 01:18:23'),
(301, 180055, 22, 4916204, 526316, 115789, 19000, 411579, '88.00', 2500728, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 55583, 222332, 98324, 26548, 248880, 8470616, 8719496, 8719496, 587045, '435974.80', '8185197.20', '98222366.00', '44222366.00', 44222000, '2211100.00', 184258, '184258.00', 8132451, 'Salary September 2023', '2023-09-25', 'Yes', '2023-09-25 01:19:12'),
(302, 200084, 22, 4127183, 526316, 115789, 19000, 411579, '0.00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 51762, 207047, 82544, 22287, 229334, 5180867, 5410201, 5410201, 363640, '270510.05', '5057146.95', '60685763.00', '-2314237.00', -2314474, '-115724.00', 0, '-9644.00', 5046561, 'Salary Septemer 2023', '2023-09-25', 'Yes', '2023-09-25 01:20:24'),
(303, 190075, 22, 4127183, 526316, 115789, 19000, 411579, '0.00', 0, 0, 0, 0, 9104, 0, 0, 0, 0, 0, 0, 51762, 207047, 82544, 22287, 229334, 5189971, 5410201, 5410201, 372744, '270510.05', '5057146.95', '60685763.00', '2185763.00', 2185000, '109250.00', 0, '9104.00', 5046561, 'Salary September 2023', '2023-09-25', 'Yes', '2023-09-25 01:21:11'),
(304, 180057, 22, 4127183, 526316, 115789, 19000, 411579, '28.00', 667983, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 51762, 207047, 82544, 22287, 229334, 5848846, 6078184, 6078184, 423223, '303909.20', '5691730.80', '68300770.00', '14300770.00', 14300000, '715000.00', 59587, '59583.00', 5654957, 'Salary September 2023', '2023-09-25', 'Yes', '2023-09-25 01:24:12'),
(305, 220084, 22, 4127183, 526316, 115789, 19000, 411579, '76.50', 1825026, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 51762, 207047, 82544, 22287, 229334, 7005893, 7235227, 7235227, 478186, '361761.35', '6790921.65', '81491060.00', '27491060.00', 27491000, '1374550.00', 114546, '114546.00', 6757041, 'Salary September 2023', '2023-09-25', 'Yes', '2023-09-25 01:28:58'),
(306, 230087, 22, 4127183, 526316, 115789, 19000, 411579, '37.50', 894621, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 51762, 207047, 82544, 22287, 229334, 6075486, 6304822, 6304822, 433990, '315241.10', '5907036.90', '70884443.00', '16884443.00', 16884000, '844200.00', 70352, '70350.00', 5870830, 'Salary September 2023', '2023-09-25', 'Yes', '2023-09-25 01:41:37'),
(307, 150023, 23, 5317367, 578947, 157895, 19000, 411579, '17.50', 537884, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 60542, 242168, 106347, 28714, 270882, 7003672, 7274554, 7274554, 552992, '363727.70', '6804479.30', '81653752.00', '27653752.00', 27653000, '1382650.00', 115221, '115221.00', 6721562, 'Salary Oktober 2023', '2023-10-25', 'No', '2023-10-21 06:33:32'),
(308, 170035, 23, 5112853, 578947, 115789, 19000, 411579, '90.00', 2659866, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 58076, 232304, 102257, 27610, 259914, 8879034, 9138948, 9138948, 586730, '456947.40', '8579743.60', '102956923.00', '39956923.00', 39956000, '1997800.00', 166483, '166483.00', 8552218, 'Salary Oktober 2023', '2023-10-25', 'Yes', '2023-10-21 06:34:23'),
(309, 160029, 0, 5112853, 578947, 115789, 19000, 411579, '0.00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 58076, 232304, 102257, 27610, 259914, 6219168, 6479082, 6479082, 479139, '323954.10', '6052870.90', '72634451.00', '14134451.00', 14134000, '706700.00', 58892, '58892.00', 5999943, 'Salary Oktober 2023', '2023-10-25', 'No', '2023-10-21 06:35:06'),
(310, 160029, 23, 5112853, 578947, 115789, 19000, 411579, '0.00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 58076, 232304, 102257, 27610, 259914, 6219168, 6479082, 6479082, 479139, '323954.10', '6052870.90', '72634451.00', '14134451.00', 14134000, '706700.00', 58892, '58892.00', 5999943, 'Salary Oktober 2023', '2023-10-25', 'Yes', '2023-10-21 06:36:08'),
(311, 160030, 23, 5112853, 578947, 115789, 19000, 411579, '8.00', 236433, 0, 0, 0, 0, 0, 0, 0, 526316, 0, 0, 0, 0, 102257, 27610, 27610, 6981917, 7009527, 7009527, 213955, '350476.35', '6556793.65', '78681524.00', '20181524.00', 20181000, '1009050.00', 84088, '84088.00', 6795572, 'Salary Oktober 2023', '2023-10-25', 'Yes', '2023-10-21 06:37:04'),
(312, 180047, 23, 5112853, 578947, 115789, 19000, 411579, '18.50', 546750, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 58076, 232304, 102257, 27610, 259914, 6765918, 7025832, 7025832, 467610, '351291.60', '6572283.40', '78867401.00', '11367401.00', 11367000, '568350.00', 47363, '47363.00', 6558222, 'Salary Oktober 2023', '2023-10-25', 'Yes', '2023-10-21 06:38:10'),
(313, 200083, 23, 5112853, 526316, 115789, 19000, 411579, '0.00', 0, 0, 0, 0, 42, 0, 0, 0, 0, 0, 0, 57550, 230198, 102257, 27610, 257808, 6166579, 6424345, 6424345, 417657, '321217.25', '6000870.75', '72010449.00', '10449.00', 10000, '500.00', 0, '42.00', 6006730, 'Salary Oktober 2023', '2023-10-25', 'Yes', '2023-10-21 06:38:51'),
(314, 180058, 23, 4916204, 526316, 115789, 19000, 411579, '35.00', 994608, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 55583, 222332, 98324, 26548, 248880, 6964496, 7213376, 7213376, 515504, '360668.80', '6754383.20', '81052598.00', '27052598.00', 27052000, '1352600.00', 112717, '112717.00', 6697872, 'Salary oktober 2023', '2023-10-25', 'Yes', '2023-10-21 06:40:38'),
(315, 180059, 23, 4916204, 526316, 115789, 19000, 411579, '87.00', 2472311, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 55583, 222332, 98324, 26548, 248880, 8442199, 8691079, 8691079, 585695, '434553.95', '8158201.05', '97898413.00', '43898413.00', 43898000, '2194900.00', 182908, '182908.00', 8105384, 'Salary Oktober 2023', '2023-10-25', 'Yes', '2023-10-21 06:41:45'),
(316, 180055, 23, 4916204, 526316, 115789, 19000, 411579, '21.00', 596765, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 55583, 222332, 98324, 26548, 248880, 6566653, 6815533, 6815533, 496608, '340776.65', '6376432.35', '76517188.00', '22517188.00', 22517000, '1125850.00', 93821, '93821.00', 6318925, 'Salary Oktober 2023', '2023-10-25', 'Yes', '2023-10-21 06:42:46'),
(317, 200084, 23, 4127183, 526316, 115789, 19000, 411579, '0.00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 51762, 207047, 82544, 22287, 229334, 5180867, 5410201, 5410201, 363640, '270510.05', '5057146.95', '60685763.00', '-2314237.00', -2314474, '-115724.00', 0, '-9644.00', 5046561, 'Salary Oktober 2023', '2023-10-25', 'Yes', '2023-10-21 06:43:31'),
(318, 190075, 23, 4127183, 526316, 115789, 19000, 411579, '0.00', 0, 0, 0, 0, 9104, 0, 0, 0, 0, 0, 0, 51762, 207047, 82544, 22287, 229334, 5189971, 5410201, 5410201, 372744, '270510.05', '5057146.95', '60685763.00', '2185763.00', 2185000, '109250.00', 0, '9104.00', 5046561, 'Salary Oktober 2023', '2023-10-25', 'Yes', '2023-10-21 06:44:23'),
(319, 180057, 23, 4127183, 526316, 115789, 19000, 411579, '6.50', 155068, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 51762, 207047, 82544, 22287, 229334, 5335933, 5565269, 5565269, 398861, '278263.45', '5204461.55', '62453539.00', '8453539.00', 8453000, '422650.00', 35223, '35221.00', 5166406, 'Salary Oktober 2023', '2023-10-25', 'Yes', '2023-10-21 06:46:53'),
(320, 220084, 23, 4127183, 526316, 115789, 19000, 411579, '78.50', 1872739, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 51762, 207047, 82544, 22287, 229334, 7053602, 7282940, 7282940, 480448, '364147.00', '6836249.00', '82034988.00', '28034988.00', 28034000, '1401700.00', 116812, '116808.00', 6802488, 'Salary Oktober 2023', '2023-10-25', 'Yes', '2023-10-21 06:50:32'),
(321, 230087, 23, 4127183, 526316, 115789, 19000, 411579, '24.00', 572557, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 51762, 207047, 82544, 22287, 229334, 5753420, 5982758, 5982758, 418690, '299137.90', '5601076.10', '67212913.00', '13212913.00', 13212000, '660600.00', 55054, '55050.00', 5564064, 'Salary Oktober 2023', '2023-10-25', 'Yes', '2023-10-21 06:52:20'),
(322, 150023, 24, 5317367, 578947, 157895, 19000, 411579, '70.00', 2151536, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 60542, 242168, 106347, 28714, 270882, 8617324, 8888206, 8888206, 629642, '444410.30', '8337448.70', '100049384.00', '46049384.00', 46049000, '2302450.00', 191871, '191871.00', 8258564, 'Salary November 2023', '2023-11-24', 'No', '2023-11-22 00:38:57'),
(323, 170035, 24, 5112853, 578947, 115789, 19000, 411579, '159.50', 4713873, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 58076, 232304, 102257, 27610, 259914, 10933041, 11192955, 11192955, 684297, '559647.75', '10531050.25', '126372603.00', '63372603.00', 63372000, '3168600.00', 264050, '264050.00', 10508658, 'Salary November 2023', '2023-11-24', 'Yes', '2023-11-22 00:39:58'),
(324, 160029, 24, 5112853, 578947, 115789, 19000, 411579, '0.00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 58076, 232304, 102257, 27610, 259914, 6219168, 6479082, 6479082, 479139, '323954.10', '6052870.90', '72634451.00', '14134451.00', 14134000, '706700.00', 58892, '58892.00', 5999943, 'Salary November 2023', '2023-11-24', 'Yes', '2023-11-22 01:26:55'),
(325, 160030, 24, 5112853, 578947, 115789, 19000, 411579, '28.00', 827514, 0, 0, 0, 0, 0, 0, 0, 526316, 0, 0, 0, 0, 102257, 27610, 27610, 7572998, 7600608, 7600608, 242030, '380030.40', '7118320.60', '85419847.00', '26919847.00', 26919000, '1345950.00', 112163, '112163.00', 7358578, 'Salary November 2023', '2023-11-24', 'Yes', '2023-11-22 01:28:13'),
(326, 180047, 24, 5112853, 578947, 115789, 19000, 411579, '98.00', 2896298, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 58076, 232304, 102257, 27610, 259914, 9115466, 9375380, 9375380, 579214, '468769.00', '8804354.00', '105652248.00', '38152248.00', 38152000, '1907600.00', 158967, '158967.00', 8796166, 'Salary November 2023', '2023-11-24', 'Yes', '2023-11-22 01:29:37'),
(327, 200083, 24, 5112853, 526316, 115789, 19000, 411579, '0.00', 0, 0, 0, 0, 42, 0, 0, 0, 0, 0, 0, 57550, 230198, 102257, 27610, 257808, 6166579, 6424345, 6424345, 417657, '321217.25', '6000870.75', '72010449.00', '10449.00', 10000, '500.00', 0, '42.00', 6006730, 'Salary November 2023', '2023-11-24', 'Yes', '2023-11-22 01:40:10'),
(328, 180058, 24, 4916204, 526316, 115789, 19000, 411579, '98.00', 2784902, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 55583, 222332, 98324, 26548, 248880, 8754790, 9003670, 9003670, 600541, '450183.50', '8455162.50', '101461950.00', '47461950.00', 47461000, '2373050.00', 197754, '197754.00', 8403129, 'Salary November 2023', '2023-11-24', 'Yes', '2023-11-22 01:41:46'),
(329, 180059, 24, 4916204, 526316, 115789, 19000, 411579, '39.50', 1122486, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 55583, 222332, 98324, 26548, 248880, 7092374, 7341254, 7341254, 521579, '367062.70', '6875867.30', '82510408.00', '28510408.00', 28510000, '1425500.00', 118792, '118792.00', 6819675, 'Salary November 2023', '2023-11-24', 'Yes', '2023-11-22 01:43:30'),
(330, 180055, 24, 4916204, 526316, 115789, 19000, 411579, '98.50', 2799110, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 55583, 222332, 98324, 26548, 248880, 8768998, 9017878, 9017878, 601216, '450893.90', '8468660.10', '101623921.00', '47623921.00', 47623000, '2381150.00', 198429, '198429.00', 8416662, 'Salary November 2023', '2023-11-24', 'Yes', '2023-11-22 01:44:36'),
(331, 200084, 24, 4127183, 526316, 115789, 19000, 411579, '0.00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 51762, 207047, 82544, 22287, 229334, 5180867, 5410201, 5410201, 363640, '270510.05', '5057146.95', '60685763.00', '-2314237.00', -2314474, '-115724.00', 0, '-9644.00', 5046561, 'Salary November 2023', '2023-11-24', 'Yes', '2023-11-22 01:47:07'),
(332, 190075, 24, 4127183, 526316, 115789, 19000, 411579, '0.00', 0, 0, 0, 0, 9104, 0, 0, 0, 0, 0, 0, 51762, 207047, 82544, 22287, 229334, 5189971, 5410201, 5410201, 372744, '270510.05', '5057146.95', '60685763.00', '2185763.00', 2185000, '109250.00', 0, '9104.00', 5046561, 'Salary November 2023', '2023-11-24', 'Yes', '2023-11-22 01:47:52'),
(333, 180057, 24, 4127183, 526316, 115789, 19000, 411579, '90.00', 2147089, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 51762, 207047, 82544, 22287, 229334, 7327954, 7557290, 7557290, 493482, '377864.50', '7096881.50', '85162578.00', '31162578.00', 31162000, '1558100.00', 129844, '129842.00', 7063806, 'Salary November 2023', '2023-11-24', 'Yes', '2023-11-22 01:49:41'),
(334, 220084, 24, 4127183, 526316, 115789, 19000, 411579, '91.00', 2170946, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 51762, 207047, 82544, 22287, 229334, 7351811, 7581147, 7581147, 494615, '379057.35', '7119545.65', '85434548.00', '31434548.00', 31434000, '1571700.00', 130977, '130975.00', 7086530, 'Salary November 2023', '2023-11-24', 'Yes', '2023-11-22 01:56:36'),
(335, 230087, 24, 4127183, 526316, 115789, 19000, 411579, '74.50', 1777313, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 51762, 207047, 82544, 22287, 229334, 6958179, 7187514, 7187514, 475919, '359375.70', '6745594.30', '80947132.00', '26947132.00', 26947000, '1347350.00', 112280, '112279.00', 6711594, 'Salary November 2023', '2023-11-24', 'Yes', '2023-11-22 01:58:22'),
(336, 150023, 25, 5317367, 578947, 157895, 19000, 411579, '37.00', 1137240, 0, 5317367, 0, 0, 257846, 0, 0, 0, 0, 0, 60542, 242168, 106347, 28714, 270882, 12662549, 13191277, 13191277, 834038, '659563.85', '12425366.15', '149104394.00', '95104394.00', 95104000, '4755200.00', 654113, '396267.00', 12099393, 'Salary Desember 2023', '2023-12-22', 'No', '2023-12-19 08:41:02'),
(337, 170035, 25, 5112853, 578947, 115789, 19000, 411579, '40.00', 1182163, 0, 5112853, 0, 0, 340429, 0, 0, 0, 0, 0, 58076, 232304, 102257, 27610, 259914, 12173755, 12774098, 12774098, 759401, '638704.90', '12033136.10', '144397633.00', '81397633.00', 81397000, '4069850.00', 679583, '339154.00', 11674268, 'Salary Desember 2023', '2023-12-22', 'Yes', '2023-12-19 08:44:01'),
(338, 160029, 25, 5112853, 578947, 115789, 19000, 411579, '0.00', 0, 0, 5112853, 0, 0, 301756, 0, 0, 0, 0, 0, 58076, 232304, 102257, 27610, 259914, 11030265, 11591935, 11591935, 721997, '579596.75', '10910081.25', '130920975.00', '72420975.00', 72420000, '3621000.00', 603506, '301750.00', 10568182, 'Salary Desember 2023', '2023-12-22', 'Yes', '2023-12-19 08:46:22'),
(339, 160030, 25, 5112853, 578947, 115789, 19000, 411579, '6.00', 177324, 0, 5112853, 0, 0, 301520, 0, 0, 0, 0, 0, 0, 0, 102257, 27610, 27610, 11207825, 11536955, 11536955, 429009, '576847.75', '10857850.25', '130294203.00', '71794203.00', 71794000, '3589700.00', 600662, '299142.00', 10806426, 'Salary Desember 2023', '2023-12-22', 'Yes', '2023-12-19 08:48:18'),
(340, 180047, 25, 5112853, 578947, 115789, 19000, 411579, '10.50', 310318, 0, 5112853, 0, 0, 421128, 0, 0, 0, 0, 0, 58076, 232304, 102257, 27610, 259914, 11221211, 11902253, 11902253, 699239, '595112.65', '11204883.35', '134458600.00', '66958600.00', 66958000, '3347900.00', 700120, '278992.00', 10781886, 'Salary Desember 2023', '2023-12-22', 'Yes', '2023-12-19 08:51:23'),
(341, 200083, 25, 5112853, 526316, 115789, 19000, 411579, '15.50', 458088, 0, 5112853, 0, 0, 272370, 0, 0, 0, 0, 0, 57550, 230198, 102257, 27610, 257808, 11465108, 11995286, 11995286, 682278, '599764.30', '11293264.70', '135519176.00', '63519176.00', 63519000, '3175950.00', 537033, '264663.00', 11040638, 'Salary Desember 2023', '2023-12-22', 'Yes', '2023-12-19 08:53:55'),
(342, 180058, 25, 4916204, 526316, 115789, 19000, 411579, '24.50', 696225, 0, 4916204, 0, 0, 272915, 0, 0, 0, 0, 0, 55583, 222332, 98324, 26548, 248880, 11309402, 11831197, 11831197, 734850, '591559.85', '11141313.15', '133695758.00', '79695758.00', 79695000, '3984750.00', 604978, '332063.00', 10823432, 'Salary Desember 2023', '2023-12-22', 'Yes', '2023-12-19 08:55:50'),
(343, 180059, 25, 4916204, 526316, 115789, 19000, 411579, '0.00', 0, 0, 4916204, 0, 0, 310720, 0, 0, 0, 0, 0, 55583, 222334, 98324, 26548, 248882, 10575372, 11134974, 11134974, 701781, '556748.70', '10479901.30', '125758816.00', '71758816.00', 71758000, '3587900.00', 609712, '298992.00', 10122474, 'Salary Desember 2023', '2023-12-22', 'Yes', '2023-12-19 08:57:39'),
(344, 180055, 25, 4916204, 526316, 115789, 19000, 411579, '31.00', 880938, 0, 4916204, 0, 0, 281682, 0, 0, 0, 0, 0, 55583, 222332, 98324, 26548, 248880, 11485348, 12015910, 12015910, 743625, '600795.50', '11316790.50', '135801486.00', '81801486.00', 81801000, '4090050.00', 622520, '340838.00', 10990603, 'Salary Desember 2023', '2023-12-22', 'Yes', '2023-12-19 09:02:51'),
(345, 200084, 25, 4127183, 526316, 115789, 19000, 411579, '0.00', 0, 0, 4127183, 0, 0, 99108, 0, 0, 0, 0, 0, 51762, 207047, 82544, 22287, 229334, 9208942, 9537384, 9537384, 550036, '476869.20', '8977970.80', '107735650.00', '44735650.00', 44735000, '2236750.00', 285504, '186396.00', 8888240, 'Salary Desember 2023', '2023-12-22', 'Yes', '2023-12-19 09:04:50'),
(346, 190075, 25, 4127183, 526316, 115789, 19000, 411579, '0.00', 0, 0, 4127183, 0, 0, 305241, 0, 0, 0, 0, 0, 51762, 207047, 82544, 22287, 229334, 9002809, 9537384, 9537384, 568786, '476869.20', '8977970.80', '107735650.00', '49235650.00', 49235000, '2461750.00', 510387, '205146.00', 8663357, 'Salary Desember 2023', '2023-12-22', 'Yes', '2023-12-19 09:07:09'),
(347, 180057, 25, 4127183, 526316, 115789, 19000, 411579, '17.00', 405561, 0, 4127183, 0, 0, 176756, 0, 0, 0, 0, 0, 51762, 207047, 82544, 22287, 229334, 9536855, 9942945, 9942945, 783559, '497147.25', '9363253.75', '112359045.00', '58359045.00', 58359000, '2917950.00', 419919, '243163.00', 9159387, 'Salary Desember 2023', '2023-12-22', 'Yes', '2023-12-19 09:09:00'),
(348, 220084, 25, 4127183, 526316, 115789, 19000, 411579, '9.00', 214709, 0, 4127183, 0, 0, 200822, 0, 0, 0, 0, 0, 51762, 207047, 82544, 22287, 229334, 9321937, 9752093, 9752093, 597736, '487604.65', '9181944.35', '110183332.00', '56183332.00', 56183000, '2809150.00', 434918, '234096.00', 8953535, 'Salary Desember 2023', '2023-12-22', 'Yes', '2023-12-19 09:20:12'),
(349, 230087, 25, 4127183, 526316, 115789, 19000, 411579, '5.00', 119283, 0, 4127183, 0, 0, 88069, 0, 0, 0, 0, 0, 51762, 207047, 82544, 22287, 229334, 9339264, 9656667, 9656667, 593203, '482833.35', '9091289.65', '109095476.00', '55095476.00', 55095000, '2754750.00', 317632, '229563.00', 8975395, 'Salary Desember 2023', '2023-12-22', 'Yes', '2023-12-19 09:22:28'),
(351, 180047, 29, 5112853, 578947, 115789, 19000, 411579, '0.00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 58076, 232304, 102257, 27610, 259914, 6219168, 6479082, 6479082, 441639, '323954.10', '6052870.90', '72634451.00', '5134451.00', 5134000, '256700.00', 21392, '21392.00', 6037443, 'tes', '2024-04-25', 'No', '2024-04-13 16:51:27');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_status`
--

CREATE TABLE `tbl_status` (
  `id_status` int(11) NOT NULL,
  `kode_status` int(11) NOT NULL,
  `nama_status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_status`
--

INSERT INTO `tbl_status` (`id_status`, `kode_status`, `nama_status`) VALUES
(1, 1, 'Dosen Internal (NIDN)'),
(2, 2, 'Dosen Internal Back-up'),
(3, 3, 'Dosen External'),
(4, 4, 'Tenaga Kependidikan');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_struktur_salary_dosen`
--

CREATE TABLE `tbl_struktur_salary_dosen` (
  `id_struktur` int(11) NOT NULL,
  `kode_status` int(11) NOT NULL,
  `nilai_kehadiran` int(11) NOT NULL,
  `nilai_in_class` int(11) NOT NULL,
  `nilai_pengawasan_ujian` int(11) NOT NULL,
  `nilai_modul` int(11) NOT NULL,
  `nilai_koreksi_ujian` int(11) NOT NULL,
  `nilai_transport` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_struktur_salary_dosen`
--

INSERT INTO `tbl_struktur_salary_dosen` (`id_struktur`, `kode_status`, `nilai_kehadiran`, `nilai_in_class`, `nilai_pengawasan_ujian`, `nilai_modul`, `nilai_koreksi_ujian`, `nilai_transport`) VALUES
(1, 1, 100000, 0, 0, 0, 0, 0),
(2, 2, 60000, 0, 0, 0, 0, 0),
(3, 3, 60000, 75000, 75000, 80000, 10000, 80000);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transaksi`
--

CREATE TABLE `tbl_transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `nama_transaksi` varchar(20) NOT NULL,
  `ref_no` varchar(15) NOT NULL,
  `tgl_transaksi` date NOT NULL,
  `ket` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_umk`
--

CREATE TABLE `tbl_umk` (
  `id_umk` int(11) NOT NULL,
  `tahun_umk` int(4) NOT NULL,
  `umk` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vendor`
--

CREATE TABLE `tbl_vendor` (
  `id_v` int(11) NOT NULL,
  `kode_vendor` varchar(10) NOT NULL,
  `nama_vendor` varchar(100) NOT NULL,
  `telpon` varchar(13) NOT NULL,
  `email` varchar(50) NOT NULL,
  `npwp` varchar(20) NOT NULL,
  `rek_vendor` varchar(50) NOT NULL,
  `id_bank` varchar(50) NOT NULL,
  `atas_nama` varchar(100) NOT NULL,
  `address_bank` text NOT NULL,
  `bank_city` varchar(30) NOT NULL,
  `kode_bank` int(8) NOT NULL,
  `currency` varchar(5) NOT NULL,
  `transaction_type` varchar(5) NOT NULL,
  `resident_status` varchar(5) NOT NULL,
  `citizen_status` varchar(5) NOT NULL,
  `ket` text NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_vendor`
--

INSERT INTO `tbl_vendor` (`id_v`, `kode_vendor`, `nama_vendor`, `telpon`, `email`, `npwp`, `rek_vendor`, `id_bank`, `atas_nama`, `address_bank`, `bank_city`, `kode_bank`, `currency`, `transaction_type`, `resident_status`, `citizen_status`, `ket`, `create_date`) VALUES
(8, '0', 'DAPUR NYI ITEUNG', '0', 'dapur@gmail.com', '0', '1320004733383', '1', 'SUNARTO', 'KPO JAKARTA', 'JAKARTA', 80017, 'IDR', 'LLG', '0', '0', '', '2023-07-22 06:52:08'),
(9, '0', 'DAWIYAN DIVA', '0', 'dawiyan@gmail.com', '0', '4137482075', '2', 'DAWIYAN DIVA', '0', '0', 0, 'IDR', 'OVB', '0', '0', '', '2023-07-22 08:28:24'),
(10, '0', 'HOLLAND BAKERY', '0', 'holland@gmail.com', '0', '3721771979', '4', 'PT MUSTIKA CITRA RASA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'IDR', 'LLG', '0', '0', '', '2023-07-26 04:25:01'),
(11, '0', 'BERKAH MULYO', '0', 'berkah@gmail.com', '0', '2761563094', '4', 'RUSWAN', 'KANTOR PUSAT', 'JAKARTA', 140397, 'IDR', 'LLG', '0', '0', '', '2023-07-26 04:29:52'),
(12, '0', 'PT SYAKIRA BERKAH JAYA', '0', 'syakira@gmail.com', '0', '1550012281518', '1', 'PT SYAKIRA BERKAH JAYA', 'KPO JAKARTA', 'JAKARTA', 80017, 'IDR', 'LLG', '0', '0', '', '2023-07-26 04:40:00'),
(13, '0', 'PT LAJU LANGGENG SENTOSA', '0', 'laju@gmail.com', '0', '8761098373', '4', 'LAJU LANGGENG SENTOSA PT', 'KANTOR PUSAT', 'JAKARTA', 140397, 'IDR', 'LLG', '0', '0', '', '2023-07-26 04:50:08'),
(14, '0', 'MOHAMAD SIDIK PRAMONO', '0', 'sidik@gmail.com', '0', '7282452860', '5', 'MOHAMAD SIDIK PRAMONO', 'KANTOR PUSAT', 'JAKARTA', 4510017, 'IDR', 'LLG', '0', '0', '', '2023-07-26 04:59:15'),
(15, '0', 'MUHAMAD YUSUF RAHADI', '0', 'yusuf@gmail.com', '0', '1217045521', '2', 'MUHAMAD YUSUF RAHADI', '0', '0', 0, 'IDR', 'OVB', '0', '0', '', '2023-07-26 05:05:03'),
(16, '0', 'KHALIL GHIBRAN JIWONO', '0', 'khalil@gmail.com', '0', '1730001867820', '1', 'KHALIL GHIBRAN JIWONO', 'KPO JAKARTA', 'JAKARTA', 80017, 'IDR', 'LLG', '0', '0', '', '2023-07-26 05:07:14'),
(17, '0', 'IGNATIUS SRIKUNCORO', '0', 'igna@gmail.com', '0', '1760306548', '6', 'IGNATIUS SRIKUNCORO', 'KP SUDIRMAN', 'JAKARTA', 90010, 'IDR', 'LLG', '0', '0', '', '2023-07-26 06:15:19'),
(18, '0', 'YANI PRANOTO', '0', 'yanip@gmail.com', '0', '7234025960', '5', 'YANI PRANOTO', 'KANTOR PUSAT', 'JAKARTA', 4510017, 'IDR', 'LLG', '0', '0', '', '2023-07-26 06:19:54'),
(19, '0', 'BAMBANG SUTRISNO', '0', 'bambang@gmail.com', '0', '0060010712481', '1', 'BAMBANG SUTRISNO', 'KPO JAKARTA', 'JAKARTA', 80017, 'IDR', 'LLG', '0', '0', '', '2023-07-26 06:23:49'),
(20, '0', 'HERI SETYO', '0', 'heri@gmail.com', '0', '0210253827', '6', 'HERI SETYO', 'KP SUDIRMAN', 'JAKARTA', 90010, 'IDR', 'LLG', '0', '0', '', '2023-07-26 06:28:38'),
(21, '0', 'ABDUL ROSYID PRIBADI', '0', 'abdul@gmail.com', '0', '0358978312', '2', 'ABDUL ROSYID PRIBADI', '0', '0', 0, 'IDR', 'OVB', '0', '0', '', '2023-07-26 06:31:48'),
(22, '0', 'MULIATU RODIAH', '0', 'muliatu@gmail.com', '0', '7630084363', '4', 'MULIATU RODIAH', 'KANTOR PUSAT', 'JAKARTA', 140397, 'IDR', 'LLG', '0', '0', '', '2023-07-26 06:53:44'),
(23, '0', 'PT HIMAWAN PUTRA', '0', 'himawan@gmail.com', '0', '0185889995', '7', 'HIMAWAN PUTRA, PT.', 'SENAYAN', 'JAKARTA', 190017, 'IDR', 'LLG', '0', '0', '', '2023-07-26 07:11:27'),
(24, '0', 'MITRA PLUS SOLUSINDO', '0', 'mitraplus@gmail.com', '0', '1250005292834', '1', 'MITRA PLUS SOLUSINDO', 'KPO JAKARTA', 'JAKARTA', 80017, 'IDR', 'LLG', '0', '0', '', '2023-07-26 08:29:54'),
(25, '0', 'PT. CAHAYA INTI PUTRA SEJAHTERA', '0', 'cahayainti@gmail.com', '0', '7080228800', '4', 'PT. CAHAYA INTI PUTRA SEJAHTERA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'IDR', 'LLG', '0', '0', '', '2023-07-28 02:15:24'),
(26, '0', 'LUTFY EKA BHIARDIAN', '0', 'lutfy@gmail.com', '0', '4105701549', '2', 'LUTFY EKA BHIARDIAN', '0', '0', 0, 'IDR', 'OVB', '0', '0', '', '2023-07-28 07:20:51'),
(27, '0', 'M. KHAMDANI', '0', 'khamdani@gmail.com', '0', '7045056023', '4', 'M. KHAMDANI', 'KANTOR PUSAT', 'JAKARTA', 140397, 'IDR', 'LLG', '0', '0', '', '2023-07-28 07:24:03'),
(28, '0', 'CV. NITASHI RIZKADA ', '0', 'nitashi@gmail.com', '0', '0970450300', '2', 'CV. NITASHI RIZKADA ', '0', '0', 0, 'IDR', 'OVB', '0', '0', '', '2023-07-28 07:28:57'),
(29, '0', 'TRAC', '0', 'trac@gmail.com', '0', '3193055512', '4', 'PT. SERASI AUTORAYA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'IDR', 'LLG', '0', '0', '', '2023-07-28 07:34:49'),
(30, '0', 'CIPTA GRAFIKA', '0', 'ciptagrafika@gmail.com', '0', '1090817775', '4', 'FATHI BAWAZIER', 'KANTOR PUSAT', 'JAKARTA', 140397, 'IDR', 'LLG', '0', '0', '', '2023-07-28 08:03:12'),
(31, '0', 'LILI SOLIHUDIN', '0', 'lili@gmail.com', '0', '1730006389812', '1', 'LILI SOLIHUDIN', 'KPO JAKARTA', 'JAKARTA', 80017, 'IDR', 'LLG', '0', '0', '', '2023-07-28 08:08:06'),
(32, '0', 'JOKO PRAMONO', '0', 'joko@gmail.com', '0', '1320013381711', '1', 'Joko Pramono', 'KPO JAKARTA', 'JAKARTA', 80017, 'IDR', 'LLG', '0', '0', '', '2023-07-28 08:10:05'),
(33, '0', 'UYAT SUYATNA', '0', 'uyat@gmail.com', '0', '1230006414678', '1', 'UYAT SUYATNA', 'KPO JAKARTA', 'JAKARTA', 80017, 'IDR', 'LLG', '0', '0', '', '2023-07-28 08:11:55'),
(34, '0', 'KARWITANG', '0', 'karwitang@gmail.com', '0', '1320010020981', '1', 'KARWITANG', 'KPO JAKARTA', 'JAKARTA', 80017, 'IDR', 'LLG', '0', '0', '', '2023-07-28 08:13:09'),
(35, '0', 'KEBULI CINTA', '0', 'kebulicinta@gmail.com', '0', '702129031500', '8', 'WELI NUGROHO', 'JAKARTA', 'JAKARTA', 220026, 'IDR', 'LLG', '0', '0', '', '2023-08-02 08:44:18'),
(36, '0', 'CV. HARAPAN MADANI UTAMA', '0', 'harapanmadani@gmail.com', '0', '7402657777', '4', 'HARAPAN MADANI UTAMA CV', 'KANTOR PUSAT', 'JAKARTA', 140397, 'IDR', 'LLG', '0', '0', '', '2023-08-02 08:49:20'),
(37, '0', 'SAHABAT', '0', 'sahabat@gmail.com', '0', '6840342024', '4', 'NGADIRIN', 'KANTOR PUSAT', 'JAKARTA', 140397, 'IDR', 'LLG', '0', '0', '', '2023-08-02 09:06:14'),
(38, '0', 'DINA KARTIKA RAYA', '0', 'dina@gmail.com', '0', '1420016013137', '1', 'DINA KARTIKA RAYA', 'KPO JAKARTA', 'JAKARTA', 80017, 'IDR', 'LLG', '0', '0', '', '2023-08-02 09:17:47'),
(39, '0', 'MURYANTO', '0', 'muryanto@gmail.com', '0', '1218917506', '2', 'MURYANTO', '0', '0', 0, 'IDR', 'OVB', '0', '0', '', '2023-08-02 09:27:48'),
(40, '0', 'MUHAMMAD RUSYDI', '0', 'rusydi@gmail.com', '0', '5210825829', '4', 'MUHAMMAD RUSYDI', 'KANTOR PUSAT', 'JAKARTA', 140397, 'IDR', 'LLG', '0', '0', '', '2023-08-02 09:31:44'),
(41, '0', 'JAENUR RIDWAN', '0', 'jaenuridwan@gmail.com', '0', '9919323288', '2', 'JAENUR RIDWAN', '0', '0', 0, 'IDR', 'OVB', '0', '0', '', '2023-08-07 02:28:07'),
(42, '0', 'HOTEL MERCURE', '0', 'mercure@gmail.com', '0', '1093030072', '4', 'PT. KARAWANG CITY DEVELOPMENT', 'KANTOR PUSAT', 'JAKARTA', 140397, 'IDR', 'LLG', '0', '0', '', '2023-08-07 02:36:00'),
(43, '0', 'DEVI KARTIKA SARI', '0', 'devi@gmail.com', '0', '9915804826', '2', 'DEVI KARTIKA SARI', '0', '0', 0, 'IDR', 'OVB', '0', '0', '', '2023-08-07 02:38:32'),
(44, '0', 'MELLINDA EFENDI', '0', 'mellinda@gmail.com', '0', '6785059097', '4', 'MELLINDA EFENDI', 'KANTOR PUSAT', 'JAKARTA', 140397, 'IDR', 'LLG', '0', '0', '', '2023-08-07 02:40:58'),
(45, '0', 'RIZKI DWI AFRIANTO', '0', 'rizki@gmail.com', '0', '1224913970', '2', 'RIZKI DWI AFRIANTO', '0', '0', 0, 'IDR', 'OVB', '0', '0', '', '2023-08-07 03:39:07'),
(46, '0', 'CV. SEKAI ELITE INDONESIA', '0', 'sekai@gmail.com', '0', '0052772737', '9', 'CV. SEKAI ELITE INDONESIA', 'KP.ZAINAL ARIFIN', 'JAKARTA', 1530016, 'IDR', 'LLG', '0', '0', '', '2023-08-07 03:48:47'),
(47, '0', 'ACHMAD RAIHAN ALI', '0', 'achmad@gmail.com', '0', '9916759700', '2', 'ACHMAD RAIHAN ALI', '0', '0', 0, 'IDR', 'OVB', '0', '0', '', '2023-08-07 03:51:43'),
(48, '0', 'PRADITYA ALAMBARA', '0', 'praditya@gmail.com', '0', '7227847990', '5', 'PRADITYA ALAMBARA', 'KANTOR PUSAT', 'JAKARTA', 4510017, 'IDR', 'LLG', '0', '0', '', '2023-08-07 03:54:16'),
(49, '0', 'VIKY MAULANA', '0', 'viky@gmail.com', '0', '9919723189', '2', 'VIKY MAULANA', '0', '0', 0, 'IDR', 'OVB', '0', '0', '', '2023-08-07 03:59:15'),
(50, '0', 'CV. BUMIAYU SUKSES MANDIRI', '0', 'bumiayu@gmail.com', '0', '044401001417303', '10', 'CV. BUMIAYU SUKSES MANDIRI', 'JKT KPO', 'JAKARTA', 20307, 'IDR', 'LLG', '0', '0', '', '2023-08-07 04:04:13'),
(51, '0', 'CV. JAPA', '0', 'japa@gmail.com', '0', '2750012534', '4', 'M. RACHMAD', 'KANTOR PUSAT', 'JAKARTA', 140397, 'IDR', 'LLG', '0', '0', '', '2023-08-07 04:09:01'),
(52, '0', 'BPJSKES MAHASISWA AKTI', '0', 'bpjs@gmail.com', '0', '8888890001311756', '6', 'PBPU Kolektif - Yayasan Toyota Indonesia', 'KP SUDIRMAN', 'JAKARTA', 90010, 'IDR', 'LLG', '0', '0', '', '2023-08-07 04:15:57'),
(53, '0', 'BPJSKES KARYAWAN YTI', '0', 'bpjs@gmail.com', '0', '8888890001311769', '6', 'YAYASAN TOYOTA INDONESIA', 'KP SUDIRMAN', 'JAKARTA', 90010, 'IDR', 'LLG', '0', '0', '', '2023-08-07 04:17:02'),
(54, '0', 'BPJSTK', '0', 'bpjstk@gmail.com', '0', '418019823000', '6', 'EPS BPJS TK', 'KP SUDIRMAN', 'JAKARTA', 90010, 'IDR', 'LLG', '0', '0', '', '2023-08-07 04:17:55'),
(55, '0', 'FATYADI RAMSAF', '0', 'fatyadi@gmail.com', '0', '9897831322', '2', 'FATYADI RAMSAF', '0', '0', 0, 'IDR', 'OVB', '0', '0', '', '2023-08-09 08:51:56'),
(56, '0', 'FERDIANSYAH', '0', 'ferdiansyah@gmail.com', '0', '7045006051', '4', 'FERDIANSYAH', 'KANTOR PUSAT', 'JAKARTA', 140397, 'IDR', 'LLG', '0', '0', '', '2023-08-09 08:55:46'),
(57, '0', 'ANDY RIYATNO', '0', 'andy@gmail.com', '0', '9000009790255', '1', 'ANDY RIYATNO', 'KPO JAKARTA', 'JAKARTA', 80017, 'IDR', 'LLG', '0', '0', '', '2023-08-09 09:00:35'),
(58, '0', 'HARIYANTO', '0', 'hariyanto@gmail.com', '0', '7278305050', '5', 'HARIYANTO', 'KANTOR PUSAT', 'JAKARTA', 4510017, 'IDR', 'LLG', '0', '0', '', '2023-08-09 09:05:51'),
(59, '0', 'SUGENG PRIHANTONO', '0', 'sugeng@gmail.com', '0', '1320011177962', '1', 'SUGENG PRIHANTONO', 'KPO JAKARTA', 'JAKARTA', 80017, 'IDR', 'LLG', '0', '0', '', '2023-08-09 09:16:06'),
(60, '0', 'DASTA PERMANA', '0', 'dasta@gmail.com', '0', '4124663437', '2', 'DASTA PERMANA', '0', '0', 0, 'IDR', 'OVB', '0', '0', '', '2023-08-09 09:18:01'),
(61, '0', 'MIETA RAMADHANINGTIYAS', '0', 'mieta@gmail.com', '0', '4178093423', '2', 'MIETA RAMADHANINGTIYAS', '0', '0', 0, 'IDR', 'OVB', '0', '0', '', '2023-08-09 09:25:08'),
(62, '0', 'SAEFUDIN', '0', 'saefudin@gmail.com', '0', '4101938536', '2', 'SAEFUDIN', '0', '0', 0, 'IDR', 'OVB', '0', '0', '', '2023-08-09 09:28:43'),
(63, '0', 'HARI SUNARTO', '0', 'hari@gmail.com', '0', '1221127192', '2', 'HARI SUNARTO', '0', '0', 0, 'IDR', 'OVB', '0', '0', '', '2023-08-15 01:41:53'),
(64, '0', 'PT. DEANOVA KARYA MANDIRI', '0', 'yanisurtiani3011@gmail.com', '0', '0228808758', '6', 'YANI SURTIANI', 'KP SUDIRMAN', 'JAKARTA', 90010, 'IDR', 'LLG', '0', '0', '', '2023-08-15 01:55:42'),
(65, '0', 'PT. PAKAR UTAMA ', '0', 'pakar@gmail.com', '0', '4493033738', '4', 'PT. PAKAR UTAMA ', 'KANTOR PUSAT', 'JAKARTA', 140397, 'IDR', 'LLG', '0', '0', '', '2023-08-15 02:00:52'),
(66, '0', 'CV. JAKARUTA GENGOGAKUIN', '0', 'jakarta.ir@gmail.com', '0', '0060006158814', '1', 'CV. JAKARUTA GENGOGAKUIN', 'KPO JAKARTA', 'JAKARTA', 80017, 'IDR', 'LLG', '0', '0', '', '2023-08-23 02:23:17'),
(67, '0', 'NANANG JUANDA', '0', 'nanang@gmail.com', '0', '0060006762235', '1', 'NANANG JUANDA', 'KPO JAKARTA', 'JAKARTA', 80017, 'IDR', 'LLG', '0', '0', '', '2023-08-23 02:33:50'),
(68, '0', 'MOHAMAD MUCHTAR', '0', 'm.muchtar@gmail.com', '0', '7425136216', '4', 'MOHAMAD MUCHTAR', 'KANTOR PUSAT', 'JAKARTA', 140397, 'IDR', 'LLG', '0', '0', '', '2023-08-23 02:38:41'),
(69, '0', 'SUTEDY', '0', 'sutedy@gmail.com', '0', '1320005625349', '1', 'SUTEDY', 'KPO JAKARTA', 'JAKARTA', 80017, 'IDR', 'LLG', '0', '0', '', '2023-08-23 02:42:15'),
(70, '0', 'ISWAHYUDI DWI NURCAHYO', '0', 'iswahyudi@gmail.com', '0', '5271048484', '4', 'ISWAHYUDI DWI NURCAHYO', 'KANTOR PUSAT', 'JAKARTA', 140397, 'IDR', 'LLG', '0', '0', '', '2023-08-23 02:45:26'),
(71, '0', 'AGUNG WICAKSONO', '0', 'agung@gmail.com', '0', '0341149931', '6', 'AGUNG WICAKSONO', 'KP SUDIRMAN', 'JAKARTA', 90010, 'IDR', 'LLG', '0', '0', '', '2023-08-23 02:47:38'),
(72, '0', 'PT. MIRA PUNCAK KEMUNING', '0', 'mira@gmail.com', '0', '1290012422339', '1', 'PT. MIRA PUNCAK KEMUNING', 'KPO JAKARTA', 'JAKARTA', 80017, 'IDR', 'LLG', '0', '0', '', '2023-08-24 02:08:17'),
(73, '0', 'Liera Firdha Sesarianti', '0', 'liera@gmail.com', '0', '7045062791', '4', 'Liera Firdha Sesarianti', 'KANTOR PUSAT', 'JAKARTA', 140397, 'IDR', 'LLG', '0', '0', '', '2023-08-24 02:20:57'),
(74, '0', 'Median Dwi Syafitri', '0', 'median@gmail.com', '0', '1333403073', '6', 'Median Dwi Syafitri', 'KP SUDIRMAN', 'JAKARTA', 90010, 'IDR', 'LLG', '0', '0', '', '2023-08-24 02:33:55'),
(75, '0', 'Denny Setiawan', '0', 'sarah@gmail.com', '0', '0228611274', '6', 'Denny Setiawan', 'KP SUDIRMAN', 'JAKARTA', 90010, 'IDR', 'LLG', '0', '0', '', '2023-08-24 02:36:31'),
(76, '0', 'LARAS ASRI HOTEL', '0', 'larasasri@gmail.com', '0', '0130440011', '4', 'PT. ARMADA INVESTAMA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'IDR', 'LLG', '0', '0', '', '2023-08-24 02:42:25'),
(77, '0', 'AMRULLOH IBNU KHOLDUN', '0', 'amrulloh@gmail.com', '0', '0198521629', '6', 'AMRULLOH IBNU KHOLDUN', 'KP SUDIRMAN', 'JAKARTA', 90010, 'IDR', 'LLG', '0', '0', '', '2023-08-24 02:49:58'),
(78, '0', 'ACHMAD RAIHAN ALI', '0', 'raihan@gmail.com', '0', '9916759700', '2', 'ACHMAD RAIHAN ALI', '0', '0', 0, 'IDR', 'OVB', '0', '0', '', '2023-08-24 03:03:47'),
(79, '0', 'MULYANDI', '0', 'mulyandi@gmail.com', '0', '0001718599', '6', 'MULYANDI', 'KP SUDIRMAN', 'JAKARTA', 90010, 'IDR', 'LLG', '0', '0', '', '2023-08-24 03:43:44'),
(80, '0', 'Laras Tri Indah Sari', '0', 'laras@gmail.com', '0', '901672831952', '11', 'Laras Tri Indah Sari', 'KP. R.P.SUROSO', 'JAKARTA', 5350014, 'IDR', 'LLG', '0', '0', '', '2023-08-24 03:57:31'),
(81, '0', 'Panji wirayuda', '0', 'panji@gmail.com', '0', '9915130418', '2', 'Panji wirayuda', '0', '0', 0, 'IDR', 'OVB', '0', '0', '', '2023-08-24 04:07:24'),
(82, '0', 'KIN NO KAGI', '0', 'tanoshindo@gmail.com', '0', '1730013526992', '1', 'TANOSHINDO BOGA KELOLA', 'KPO JAKARTA', 'JAKARTA', 80017, 'IDR', 'LLG', '0', '0', '', '2023-08-30 02:30:38'),
(83, '0', 'PT. TRI JAYA EKA UTAMA', '0', 'trijaya@gmail.com', '0', '2232013077', '12', 'PT. TRI JAYA EKA UTAMA ', 'KCU.THAMRIN', 'JAKARTA', 160131, 'IDR', 'LLG', '0', '0', '', '2023-08-30 03:06:00'),
(84, '0', 'FITRIANI NUR AFFIFAH', '0', 'fitriani@gmail.com', '0', '424201011593533', '10', 'FITRIANI NUR AFFIFAH', 'JKT KPO', 'JAKARTA', 20307, 'IDR', 'LLG', '0', '0', '', '2023-08-30 03:17:31'),
(85, '0', 'SYAFITRI FADILLAH', '0', 'syafitri@gmail.com', '0', '1092560877', '4', 'SYAFITRI FADILLAH', 'KANTOR PUSAT', 'JAKARTA', 140397, 'IDR', 'LLG', '0', '0', '', '2023-08-30 03:19:37'),
(86, '0', 'RAYSA INDAH BERLIANI', '0', 'raysaindahberliani@gmail.com', '0', '4176284558', '2', 'RAYSA INDAH BERLIANI', '0', '0', 0, 'IDR', 'OVB', '0', '0', '', '2023-08-30 03:23:05'),
(87, '0', 'RIYADI', '0', 'riyadi@gmail.com', '0', '1200007055838', '1', 'RIYADI', 'KPO JAKARTA', 'JAKARTA', 80017, 'IDR', 'LLG', '0', '0', '', '2023-08-30 04:00:34'),
(88, '0', 'LIVIA GINTA RISNA', '0', 'livia@gmail.com', '0', '4178085919', '2', 'LIVIA GINTA RISNA', '0', '0', 0, 'IDR', 'OVB', '0', '0', '', '2023-09-05 04:06:33'),
(89, '0', 'WARISNO', '0', 'warisno@gmail.com', '0', '7234022340', '5', 'WARISNO', 'KANTOR PUSAT', 'JAKARTA', 4510017, 'IDR', 'LLG', '0', '0', '', '2023-09-05 04:16:24'),
(90, '0', 'YAYASAN TOYOTA INDONESIA', '0', 'yti@gmail.com', '0', '0702820073', '2', 'YAYASAN TOYOTA INDONESIA', '0', '0', 0, 'IDR', 'OVB', '0', '0', '', '2023-09-05 04:30:00'),
(91, '0', 'AFIEN WIBHAWA', '0', 'afien@gmail.com', '0', '3110329759', '2', 'AFIEN WIBHAWA', '0', '0', 0, 'IDR', 'OVB', '0', '0', '', '2023-09-06 06:36:40'),
(92, '0', 'DJATMIKO EDI SUKATON', '0', 'djatmiko@gmail.com', '0', '0201207304', '2', 'DJATMIKO EDI SUKATON', '0', '0', 0, 'IDR', 'OVB', '0', '0', '', '2023-09-06 06:42:05'),
(93, '0', 'PT ADISIMA PUTRA UTAMA', '08118163833', 'warung33spesialpepeskrw@gmail.com', '0', '011601111033565', '10', 'PT ADISIMA PUTRA UTAMA', 'JKT PO', 'JAKARTA', 20307, 'IDR', 'LLG', '0', '0', '', '2023-09-20 02:32:11'),
(94, '0', 'MURSYID', '0', 'mursyid@gmail.com', '0', '4281416400', '4', 'Ir. MURSYID', 'KANTOR PUSAT', 'JAKARTA', 140397, 'IDR', 'LLG', '0', '0', '', '2023-09-20 04:14:34'),
(95, '0', 'EDY SUSILO DARMAWAN', '0', 'edy@gmail.com', '0', '2761062745', '4', 'EDY SUSILO DARMAWAN', 'KANTOR PUSAT', 'JAKARTA', 140397, 'IDR', 'LLG', '0', '0', '', '2023-09-20 04:19:33'),
(96, '0', 'ANTHONIUS HERADIAN', '0', 'heradian@gmail.com', '0', '2291474448', '4', 'ANTHONIUS HERADIAN', 'KANTOR PUSAT', 'JAKARTA', 140397, 'IDR', 'LLG', '0', '0', '', '2023-09-20 04:22:36'),
(97, '0', 'MO DANIEL SETIAWAN', '0', 'daniel@gmail.com', '0', '6590887755', '4', 'MO DANIEL SETIAWAN', 'KANTOR PUSAT', 'JAKARTA', 140397, 'IDR', 'LLG', '0', '0', '', '2023-09-20 04:25:53'),
(98, '0', 'RACHMASARI', '0', 'rachmasari@gmail.com', '0', '0881096071', '4', 'RACHMASARI', 'KANTOR PUSAT', 'JAKARTA', 140397, 'IDR', 'LLG', '0', '0', '', '2023-09-20 04:29:12'),
(99, '0', 'IRFAN MAULANA', '0', 'irfan@gmail.com', '0', '1221102394', '2', 'IRFAN MAULANA', '0', '0', 0, 'IDR', 'OVB', '0', '0', '', '2023-09-20 04:31:26'),
(100, '0', 'RISKY AGUNG TARIGAN', '0', 'risky@gamail.com', '0', '7153717723', '5', 'RISKY AGUNG TARIGAN', 'KANTOR PUSAT', 'JAKARTA', 4510017, 'IDR', 'LLG', '0', '0', '', '2023-09-20 04:35:38'),
(101, '0', 'NIKEN PUTRI SEKARINI', '0', 'niken@gmail.com', '0', '9923821624', '2', 'NIKEN PUTRI SEKARINI', '0', '0', 0, 'IDR', 'OVB', '0', '0', '', '2023-09-20 04:38:12'),
(102, '0', 'HERU SUNARTO', '0', 'heru@gmail.com', '0', '1330014156392', '1', 'HERU SUNARTO', 'KPO JAKARTA', 'JAKARTA', 80017, 'IDR', 'LLG', '0', '0', '', '2023-09-20 04:42:16'),
(103, '0', 'DEDI AMBARI', '0', 'dedi@gmail.com', '0', '0072535601100', '13', 'DEDI AMBARI', 'MENARA BANK ', 'BANDUNG', 1100019, 'IDR', 'LLG', '0', '0', '', '2023-09-20 04:46:26'),
(104, '0', 'RIDWAN GOZALI', '0', 'ridwan@gmail.com', '0', '4102410551', '2', 'RIDWAN GOZALI', '0', '0', 0, 'IDR', 'OVB', '0', '0', '', '2023-09-20 04:49:11'),
(105, '0', 'INTAN AULIA HAPSARI', '0', 'intan@gmail.com', '0', '0835218555', '6', 'INTAN AULIA HAPSARI', 'KP SUDIRMAN', 'JAKARTA', 90010, 'IDR', 'LLG', '0', '0', '', '2023-09-26 02:23:35'),
(106, '0', 'ELFANO SULTAN SYAHBANA', '0', 'elfano@gmail.com', '0', '1400022387352', '1', 'ELFANO SULTAN SYAHBANA', 'KPO JAKARTA', 'JAKARTA', 80017, 'IDR', 'LLG', '0', '0', '', '2023-09-26 02:24:49'),
(107, '0', 'JUHARTONO', '0', 'juhartono@gmail.com', '0', '0358623387', '2', 'JUHARTONO', '0', '0', 0, 'IDR', 'OVB', '0', '0', '', '2023-09-26 03:05:04'),
(108, '0', 'LULU MAHERNI', '0', 'lulu@gmail.com', '0', '7635275847', '4', 'LULU MAHERNI', 'KANTOR PUSAT', 'JAKARTA', 140397, 'IDR', 'LLG', '0', '0', '', '2023-09-26 03:10:00'),
(109, '0', 'ALEX KURNIAWAN', '0', 'alex@gmail.com', '0', '1250012113585', '1', 'ALEX KURNIAWAN', 'KPO JAKARTA', 'JAKARTA', 80017, 'IDR', 'LLG', '0', '0', '', '2023-09-26 03:15:02'),
(110, '0', 'MUHAMAD JULIARTO', '0', 'juliarto@gmail.com', '0', '5745101451', '4', 'MUHAMAD JULIARTO', 'KANTOR PUSAT', 'JAKARTA', 140397, 'IDR', 'LLG', '0', '0', '', '2023-09-26 03:58:44'),
(111, '0', 'EFDI DERIAN DANI', '0', 'efdi@gmail.com', '0', '4186000930', '2', 'EFDI DERIAN DANI', '0', '0', 0, 'IDR', 'OVB', '0', '0', '', '2023-09-26 04:09:39'),
(112, '0', 'KOPERASI KARYAWAN TOYOTA', '0', 'kopkar@gmail.com', '0', '0353529005', '2', 'KOPERASI KARYAWAN TOYOTA', '0', '0', 0, 'IDR', 'OVB', '0', '0', '', '2023-09-26 04:35:06'),
(113, '0', 'AHMAD SAZALI', '0', 'sazali@gmail.com', '0', '1200007174514', '1', 'AHMAD SAZALI', 'KPO JAKARTA', 'JAKARTA', 80017, 'IDR', 'LLG', '0', '0', '', '2023-10-04 07:51:23'),
(114, '0', 'SUTRISNO', '0', 'sutrisno@gmail.com', '0', '1560000037335', '1', 'SUTRISNO', 'KPO JAKARTA', 'JAKARTA', 80017, 'IDR', 'LLG', '0', '0', '', '2023-10-04 07:59:30'),
(115, '0', 'TEGUH CAHYADI', '0', 'teguh@gmail.com', '0', '1320005112322', '1', 'TEGUH CAHYADI', 'KPO JAKARTA', 'JAKARTA', 80017, 'IDR', 'LLG', '0', '0', '', '2023-10-04 08:02:08'),
(116, '0', 'MUHAMMAD YUSUF', '0', 'myusuf@gmail.com', '0', '4130044391', '4', 'MUHAMMAD YUSUF', 'KANTOR PUSAT', 'JAKARTA', 140397, 'IDR', 'LLG', '0', '0', '', '2023-10-04 08:45:54'),
(117, '0', 'SAMAR KANDI', '0', 'kandi@gmail.com', '0', '7266269430', '5', 'SAMAR KANDI', 'KANTOR PUSAT', 'JAKARTA', 4510017, 'IDR', 'LLG', '0', '0', '', '2023-10-04 08:57:27'),
(118, '0', 'SUHERMANTO', '0', 'suhermanto@gmail.com', '0', '0060006962058', '1', 'SUHERMANTO', 'KPO JAKARTA', 'JAKARTA', 80017, 'IDR', 'LLG', '0', '0', '', '2023-10-04 09:04:11'),
(119, '0', 'PT JURNAL CONSULTING INDONESIA', '0', 'jurnal@gmail.com', '0', '6040877981', '4', 'PT JURNAL CONSULTING INDONESIA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'IDR', 'LLG', '0', '0', '', '2023-10-04 09:11:39'),
(120, '0', 'PT TUV RHEINLAND INDONESIA', '0', 'finance@idn.tuv.com', '010718187058000', '1150098017009', '1', 'PT TUV RHEINLAND INDONESIA', 'KPO JAKARTA', 'JAKARTA', 80017, 'IDR', 'LLG', '0', '0', '', '2023-10-11 01:35:48'),
(121, '0', 'UTIK SURTIKA DEWI', '0', 'utik@gmail.com', '0', '346001017905531', '10', 'UTIK SURTIKA D SPD', 'JKT KPO', 'JAKARTA', 20307, 'IDR', 'LLG', '0', '0', '', '2023-10-11 01:55:20'),
(122, '0', 'NURDANI ROCHMAN', '0', 'nurdani@gmail.com', '0', '0660770283', '4', 'NURDANI ROCHMAN', 'KANTOR PUSAT', 'JAKARTA', 140397, 'IDR', 'LLG', '0', '0', '', '2023-10-11 02:00:09'),
(123, '0', 'IMANUDDIN KAMIL', '0', 'imanuddin@gmail.com', '0', '7000765389', '5', 'IMANUDDIN KAMIL', 'KANTOR PUSAT', 'JAKARTA', 4510017, 'IDR', 'LLG', '0', '0', '', '2023-10-11 02:12:52'),
(124, '0', 'YUNITA SANIA MAHARANI ', '0', 'yunitasania@gmail.com', '0', '0361205269', '6', 'YUNITA SANIA MAHARANI', 'KP SUDIRMAN', 'JAKARTA', 90010, 'IDR', 'LLG', '0', '0', '', '2023-10-11 02:32:35'),
(125, '0', 'YOSAFAT SONDANG MARCELLINUS', '0', 'yosafat@gmail.com', '0', '9000004252012', '1', 'YOSAFAT SONDANG MARCELLINUS', 'KPO JAKARTA', 'JAKARTA', 80017, 'IDR', 'LLG', '0', '0', '', '2023-10-11 02:42:05'),
(126, '0', 'ACHMAD SUBBAN MALIK', '0', 'subban@gmail.com', '0', '1250005302211', '1', 'ACHMAD SUBBAN MALIK', 'KPO JAKARTA', 'JAKARTA', 80017, 'IDR', 'LLG', '0', '0', '', '2023-10-11 02:45:32'),
(127, '0', 'R BRAM ADITYA KUSUMA', '0', 'bram@gmail.com', '0', '8030100221', '4', 'R BRAM ADITYA KUSUMA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'IDR', 'LLG', '0', '0', '', '2023-10-11 02:56:11'),
(128, '0', 'ADE IRWAN DARMAWAN', '0', 'irwan@gmail.com', '0', '1320013028460', '1', 'ADE IRWAN DARMAWAN', 'KPO JAKARTA', 'JAKARTA', 80017, 'IDR', 'LLG', '0', '0', '', '2023-10-11 03:01:36'),
(129, '0', 'WIBOWO WICAKSONO', '0', 'wibowo@gmail.com', '0', '7256426380', '5', 'WIBOWO WICAKSONO', 'KANTOR PUSAT', 'JAKARTA', 4510017, 'IDR', 'LLG', '0', '0', '', '2023-10-11 03:09:38'),
(130, '0', 'CV. ARIE', '0', 'arikusnandar@gmail.com', '0', '1090990515', '4', 'ARI KUSNANDAR', 'KANTOR PUSAT', 'JAKARTA', 140397, 'IDR', 'LLG', '0', '0', '', '2023-10-11 03:46:47'),
(131, '0', 'MKI CONSULTING', '0', 'syahmuharnis@gmail.com', '0', '037801001405303', '10', 'PT MENARA KADIN INDONESIA', 'JKT PO', 'JAKARTA', 20307, 'IDR', 'LLG', '0', '0', '', '2023-10-11 03:52:41'),
(132, '0', 'RIZKI MUHAMMAD PERCEKA', '0', 'perceka@gmail.com', '0', '1480765075', '4', 'RIZKI MUHAMMAD PERCEKA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'IDR', 'LLG', '0', '0', '', '2023-10-11 03:59:27'),
(133, '0', 'YUSUF RIDHA ', '0', 'yridha@gmail.com', '0', '4119331841', '2', 'YUSUF RIDHA ', '0', '0', 0, 'IDR', 'OVB', '0', '0', '', '2023-10-11 04:08:07'),
(134, '0', 'SAIDUL IDRUS ', '0', 'saidul@gmail.com', '0', '6590154405', '4', 'SAIDUL IDRUS ', 'KANTOR PUSAT', 'JAKARTA', 140397, 'IDR', 'LLG', '0', '0', '', '2023-10-11 04:13:05'),
(135, '0', 'DEDY WIDYO HARTONO', '0', 'dedy@gmail.com', '0', '7055218964', '5', 'DEDY WIDYO HARTONO', 'KANTOR PUSAT', 'JAKARTA', 4510017, 'IDR', 'LLG', '0', '0', '', '2023-10-18 09:24:12'),
(136, '0', 'RIZAL HAFIZHI', '0', 'rizal@gmail.com', '0', '1223845408', '2', 'RIZAL HAFIZHI', '0', '0', 0, 'IDR', 'OVB', '0', '0', '', '2023-10-18 09:58:41'),
(137, '0', 'RS PERTAMINA BINTANG AMIN LAMPUNG', '0', 'rspertamina.bintangamin@gmail.com', '0', '5550088801', '6', 'RS PERTAMINA-BINTANG AMIN LAMPUNG', 'KP SUDIRMAN', 'JAKARTA', 90010, 'IDR', 'LLG', '0', '0', '', '2023-10-18 10:04:41'),
(138, '0', 'ANTENG DAMARNOTO', '0', 'anteng@gmail.com', '0', '007401109131507', '10', 'ANTENG DAMARNOTO', 'JKT PO', 'JAKARTA', 20307, 'IDR', 'LLG', '0', '0', '', '2023-10-24 01:53:20'),
(139, '0', 'KHARIS PERMADIANA RASEF', '0', 'kharis@gmail.com', '0', '0661276184', '4', 'KHARIS PERMADIANA RASEF', 'KANTOR PUSAT', 'JAKARTA', 140397, 'IDR', 'LLG', '0', '0', '', '2023-10-24 02:00:41'),
(140, '0', 'IBNU ISKANDARSYAH', '0', 'ibnu@gmail.com', '0', '7234022010', '5', 'IBNU ISKANDARSYAH', 'KANTOR PUSAT', 'JAKARTA', 4510017, 'IDR', 'LLG', '0', '0', '', '2023-10-24 03:03:17'),
(141, '0', 'MURTALA', '0', 'murtala@gmail.com', '0', '9000014688072', '1', 'MURTALA', 'KPO JAKARTA', 'JAKARTA', 80017, 'IDR', 'LLG', '0', '0', '', '2023-11-01 06:00:30'),
(142, '0', 'ANDI RUSTANDI', '0', 'andi@gmail.com', '0', '7242059720', '5', 'ANDI RUSTANDI', 'KANTOR PUSAT', 'JAKARTA', 4510017, 'IDR', 'LLG', '0', '0', '', '2023-11-01 06:06:07'),
(143, '0', 'NOVA PRIYADI', '0', 'nova@gmail.com', '0', '3781187460', '4', 'NOVA PRIYADI', 'KANTOR PUSAT', 'JAKARTA', 140397, 'IDR', 'LLG', '0', '0', '', '2023-11-01 06:12:38'),
(144, '0', 'ANGGI PRASETYO', '0', 'anggip@gmail.com', '0', '1220760045', '2', 'ANGGI PRASETYO', '0', '0', 0, 'IDR', 'OVB', '0', '0', '', '2023-11-01 07:10:12'),
(145, '0', 'AZALLEA ART', '0', 'azzelea@gmail.com', '0', '7425326961', '4', 'INDIRA AZALIA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'IDR', 'LLG', '0', '0', '', '2023-11-01 07:15:07'),
(146, '0', 'FERRY SURANTON', '0', 'ferry@gmail.com', '0', '6590032806', '4', 'FERRY SURANTON', 'KANTOR PUSAT', 'JAKARTA', 140397, 'IDR', 'LLG', '0', '0', '', '2023-11-07 09:10:38'),
(147, '0', 'AFLAH IS NAINIAH', '0', 'aflah@gmail.com', '0', '6785182671', '4', 'AFLAH IS NAINIAH', 'KANTOR PUSAT', 'JAKARTA', 140397, 'IDR', 'LLG', '0', '0', '', '2023-11-07 10:11:58'),
(148, '0', 'AGUS SRI GUNTORO', '0', 'agus@gmail.com', '0', '1250004831475', '1', 'AGUS SRI GUNTORO', 'KPO JAKARTA', 'JAKARTA', 80017, 'IDR', 'LLG', '0', '0', '', '2023-11-15 04:07:03'),
(149, '0', 'AKBAR RIYADI', '0', 'akbar@gmai.com', '0', '4136005570', '4', 'AKBAR RIYADI', 'KANTOR PUSAT', 'JAKARTA', 140397, 'IDR', 'LLG', '0', '0', '', '2023-11-15 04:18:10'),
(150, '0', 'DINI LESTARI', '0', 'dini@gmail.com', '0', '9000005180469', '1', 'DINI LESTARI', 'KPO JAKARTA', 'JAKARTA', 80017, 'IDR', 'LLG', '0', '0', '', '2023-11-15 05:53:47'),
(151, '0', 'WIRAWAN AGUNG NUGROHO', '0', 'wirawan@gmail.com', '0', '1250007619760', '1', 'WIRAWAN AGUNG NUGROHO', 'KPO JAKARTA', 'JAKARTA', 80017, 'IDR', 'LLG', '0', '0', '', '2023-11-15 06:34:35'),
(152, '0', 'YANI KOERNIAWAN', '0', 'yanik@gmail.com', '0', '7098701812', '5', 'YANI KOERNIAWAN', 'KANTOR PUSAT', 'JAKARTA', 4510017, 'IDR', 'LLG', '0', '0', '', '2023-11-15 07:32:25'),
(153, '0', 'HESSA SINAI SINGADIPOERA', '0', 'hessa@gmail.com', '0', '4133702860', '2', 'HESSA SINAI SINGADIPOERA', '0', '0', 0, 'IDR', 'OVB', '0', '0', '', '2023-11-15 07:35:08'),
(154, '0', 'WINGKY KURNIAWAN', '0', 'wingky@gmail.com', '0', '6590364809', '4', 'WINGKY KURNIAWAN', 'KANTOR PUSAT', 'JAKARTA', 140397, 'IDR', 'LLG', '0', '0', '', '2023-11-15 07:37:30'),
(155, '0', 'YUI HASTORO SAPARDYANTO', '0', 'yui@gmail.com', '0', '970095624', '2', 'YUI HASTORO SAPARDYANTO', '0', '0', 0, 'IDR', 'OVB', '0', '0', '', '2023-11-15 07:41:26'),
(156, '0', 'INDRAWAN', '0', 'indrawan@gmail.com', '0', '0468572338', '2', 'INDRAWAN', '0', '0', 0, 'IDR', 'OVB', '0', '0', '', '2023-11-15 07:43:24'),
(157, '0', 'RAYNALDI YUDHA PRASETYA', '0', 'raynaldi@gmail.com', '0', '1300005410215', '1', 'RAYNALDI YUDHA PRASETYA', 'KPO JAKARTA', 'JAKARTA', 80017, 'IDR', 'LLG', '0', '0', '', '2023-11-15 07:46:47'),
(158, '0', 'MSIG', '0', 'sett_pymt@id.msig-asia.com', '0', '0643320180003703', '4', 'MSIG YAYASAN TOYOTA IND', 'KANTOR PUSAT', 'JAKARTA', 140397, 'IDR', 'LLG', '0', '0', '', '2023-11-22 03:04:57'),
(159, '0', 'YOSIA INENDATAMA', '0', 'yosia@gmail.com', '0', '4119557998', '2', 'YOSIA INENDATAMA', '0', '0', 0, 'IDR', 'OVB', '0', '0', '', '2023-12-06 06:36:23'),
(160, '0', 'WARNOTO', '0', 'warnoto@gmail.com', '0', '0350334319', '2', 'WARNOTO', '0', '0', 0, 'IDR', 'OVB', '0', '0', '', '2023-12-20 07:24:46'),
(161, '0', 'KARDIMAN', '0', 'kardiman@gmail.com', '0', '1730000370065', '1', 'KARDIMAN', 'KPO JAKARTA', 'JAKARTA', 80017, 'IDR', 'LLG', '0', '0', '', '2023-12-20 07:33:24'),
(162, '0', 'RISTIQ FARIYANI QANA\'AH', '0', 'ristiq@gmail.com', '0', '9998639007', '2', 'RISTIQ FARIYANI QANA\'AH', '0', '0', 0, 'IDR', 'OVB', '0', '0', '', '2023-12-27 07:09:48'),
(163, '0', 'HERMAN CATUR NUGROHO', '0', 'herman@gmail.com', '0', '1020005599227', '1', 'HERMAN CATUR NUGROHO', 'KPO JAKARTA', 'JAKARTA', 80017, 'IDR', 'LLG', '0', '0', '', '2023-12-27 07:23:40'),
(164, '0', 'ANZ DEKORASI', '0', 'anz@gmail.com', '0', '3780222734', '4', 'IRFAN ZAELANI', 'KANTOR PUSAT', 'JAKARTA', 140397, 'IDR', 'LLG', '0', '0', '', '2024-01-03 03:46:15'),
(165, '0', 'KURNIANSYAH', '0', 'kurniansyah@gmail.com', '0', '0671843222', '4', 'KURNIANSYAH', 'KANTOR PUSAT', 'JAKARTA', 140397, 'IDR', 'LLG', '0', '0', '', '2024-01-10 06:42:46'),
(166, '0', 'DAUD NUR RENDRA ARBIANTO', '0', 'daud@gmail.com', '0', '8770404089', '4', 'DAUD NUR RENDRA ARBIANTO', 'KANTOR PUSAT', 'JAKARTA', 140397, 'IDR', 'LLG', '0', '0', '', '2024-01-10 06:52:29'),
(167, '0', 'HUDA FATULLAH', '0', 'huda@gmail.com', '0', '305321214', '6', 'HUDA FATULLAH', 'KP SUDIRMAN', 'JAKARTA', 90010, 'IDR', 'LLG', '0', '0', '', '2024-01-10 06:55:34'),
(168, '0', 'RIZKY JULISTYA PUTRA', '0', 'rizkyjulistya@gmail.com', '0', '8760626717', '4', 'RIZKY JULISTYA PUTRA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'IDR', 'LLG', '0', '0', '', '2024-01-10 06:57:45'),
(169, '0', 'CARSA', '0', 'carsa@gmail.com', '0', '1209956315', '6', 'Bpk Carsa', 'KP SUDIRMAN', 'JAKARTA', 90010, 'IDR', 'LLG', '0', '0', '', '2024-01-10 07:10:27'),
(170, '0', 'SURYONO', '0', 'suryono@gmail.com', '0', '7000599225', '5', 'SURYONO', 'KANTOR PUSAT', ' JAKARTA', 4510017, 'IDR', 'LLG', '0', '0', '', '2024-01-10 07:15:53'),
(171, '0', 'ABDUL KHOIR', '0', 'abdulkhoir@gmail.com', '0', '970402659', '2', 'ABDUL KHOIR', '0', '0', 0, 'IDR', 'OVB', '0', '0', '', '2024-01-10 07:18:14'),
(172, '0', 'MUHAMAD YAHYA', '0', 'yahya@gmail.com', '0', '1320013104048', '1', 'MUHAMAD YAHYA', 'KPO JAKARTA', 'JAKARTA', 80017, 'IDR', 'LLG', '0', '0', '', '2024-01-10 07:20:19'),
(173, '0', 'ENDI SUARDI', '0', 'endi@gmail.com', '0', '4103060503', '2', 'ENDI SUARDI', '0', '0', 0, 'IDR', 'OVB', '0', '0', '', '2024-01-10 07:21:44'),
(174, '0', 'ALDO MAHARDHIKA', '0', 'aldo@gmail.com', '0', '013901123569500', '10', 'ALDO MAHARDHIKA', 'JKT PO', 'JAKARTA', 20307, 'IDR', 'LLG', '0', '0', '', '2024-01-10 07:25:41'),
(175, '0', 'YAYAN HERNAYANTO', '0', 'yayan@gmail.com', '0', '4106692446', '2', 'YAYAN HERNAYANTO', '0', '0', 0, 'IDR', 'OVB', '0', '0', '', '2024-01-10 07:28:52'),
(176, '0', 'HENRY SUMARTO', '0', 'henry@gmail.com', '0', '1210030790', '2', 'HENRY SUMARTO', '0', '0', 0, 'IDR', 'OVB', '0', '0', '', '2024-01-10 07:31:47'),
(177, '0', 'DADAN HASBULLAH', '0', 'dadan@gmail.com', '0', '4857219840', '5', 'DADAN HASBULLAH', 'KANTOR PUSAT', ' JAKARTA', 4510017, 'IDR', 'LLG', '0', '0', '', '2024-01-10 07:35:47'),
(178, '0', 'DWI SUKMA SAPUTRA', '0', 'dwisukma@gmail.com', '0', '7244668870', '5', 'DWI SUKMA SAPUTRA', 'KANTOR PUSAT', ' JAKARTA', 4510017, 'IDR', 'LLG', '0', '0', '', '2024-01-10 07:37:57'),
(179, '0', 'IKRAM FATAHILLAH', '0', 'ikram@gmail.com', '0', '1320006035423', '1', 'IKRAM FATAHILLAH', 'KPO JAKARTA', 'JAKARTA', 80017, 'IDR', 'LLG', '0', '0', '', '2024-01-10 07:41:12'),
(180, '0', 'SUHANDI', '0', 'suhandi@gmail.com', '0', '72278998000', '5', 'SUHANDI', 'KANTOR PUSAT', ' JAKARTA', 4510017, 'IDR', 'LLG', '0', '0', '', '2024-01-10 07:43:37'),
(181, '0', 'ENDAN AGUS YUHANDIANA', '0', 'endan@gmail.com', '0', '6942753390', '5', 'ENDAN AGUS YUHANDIANA', 'KANTOR PUSAT', ' JAKARTA', 4510017, 'IDR', 'LLG', '0', '0', '', '2024-01-10 07:46:21'),
(182, '0', 'ANGGI DAVID YANUAR', '0', 'anggidavid@gmail.com', '0', '011601004025532', '10', 'ANGGI DAVID YANUAR', 'JKT PO', 'JAKARTA', 20307, 'IDR', 'LLG', '0', '0', '', '2024-01-18 01:37:32'),
(183, '0', 'PT JETORBIT TEKNOLOGI INDONESIA', '0', 'jetorbit@gmail.com', '0', '8020570556', '4', 'PT JETORBIT TEKNOLOGI INDONESIA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'IDR', 'LLG', '0', '0', '', '2024-01-24 02:58:00'),
(184, '0', 'SINTIYA MEILASARI', '0', 'sintiya@gmail.com', '0', '9871577177', '2', 'SINTIYA MEILASARI', '0', '0', 0, 'IDR', 'OVB', '0', '0', '', '2024-01-24 03:12:34'),
(185, '0', 'FPPTI', '-', 'fpptijabar@gmail.com', '0', '164701000285538', '10', 'REGINA RATNA ARIFIANTY', 'JKT KPO', 'JAKARTA', 20307, 'IDR', 'LLG', '0', '0', '', '2024-01-30 02:39:30'),
(186, '0', 'RIZKA AYU PERMANA', '0', 'rizka@gmail.com', '0', '9997135757', '2', 'RIZKA AYU PERMANA', '0', '0', 0, 'IDR', 'OVB', '0', '0', '', '2024-01-30 04:40:50'),
(187, '0', 'PT. GRAMEDIA ASRI MEDIA', '0', 'gramedia@gmail.com', '0', '001901001783305', '10', 'Gramedia Asri Media', 'JKT PO', 'JAKARTA', 20307, 'IDR', 'LLG', '0', '0', '', '2024-02-12 08:19:50'),
(188, '0', 'IMAM BASHORI', '0', 'imambashori@gmail.com', '0', '0352195332', '2', 'IMAM BASHORI', '0', '0', 0, 'IDR', 'OVB', '0', '0', '', '2024-02-21 01:56:44'),
(189, '0', 'HERY TRIANA ', '0', 'herytriana@gmail.com', '0', '1320012801933', '1', 'HERY TRIANA ', 'KPO JAKARTA', 'JAKARTA', 80017, 'IDR', 'LLG', '0', '0', '', '2024-02-21 02:59:07'),
(190, '0', 'SUKANDAR', '0', 'sukandar@gmail.com', '0', '4106674057', '2', 'SUKANDAR', '0', '0', 0, 'IDR', 'OVB', '0', '0', '', '2024-02-21 03:03:18'),
(191, '0', 'ANWAR HILMAN', '0', 'anwarhilman@gmail.com', '0', '0069347177100', '13', 'ANWAR HILMAN', 'MENARA BANK JABAR JL.NARIPAN N', 'BANDUNG', 1100019, 'IDR', 'LLG', '0', '0', '', '2024-02-21 03:22:49'),
(192, '0', 'HOTEL ASTON PURWOKERTO', '0', 'hotelaston@gmail.com', '0', '1800020303030', '1', 'DELTA PERTIWI PROPERTINDO', 'KPO JAKARTA', 'JAKARTA', 80017, 'IDR', 'LLG', '0', '0', '', '2024-02-21 06:36:54'),
(193, '0', 'PT. ZAHIR INTERNATIONAL', '0', 'zahir@gmail.com', '0', ' 2283001393', '4', 'PT. ZAHIR INTERNATIONAL', 'KANTOR PUSAT', 'JAKARTA', 140397, 'IDR', 'LLG', '0', '0', '', '2024-02-27 07:53:27'),
(194, '0', 'MIRAWATI SENSI IDRIS', '0', 'mirawati@gmail.com', '0', '8314148003', '9', 'MSID QQ YAYASAN TOYOTA INDONESIA', 'KP.ZAINAL ARIFIN', 'JAKARTA', 1530016, 'IDR', 'LLG', '0', '0', '', '2024-02-27 08:00:57'),
(195, '0', 'ADE ROHMAN', '0', 'aderohman@gmail.com', '0', '1320012305224', '1', 'ADE ROHMAN', 'KPO JAKARTA', 'JAKARTA', 80017, 'IDR', 'LLG', '0', '0', '', '2024-02-28 01:32:50'),
(196, '0', 'ANDRIE SAFARGI', '0', 'andrie@gmail.com', '0', '1218677394', '2', 'ANDRIE SAFARGI', '0', '0', 0, 'IDR', 'OVB', '0', '0', '', '2024-02-28 01:36:16'),
(197, '0', 'MUHAMMAD TANURI', '0', 'tanuri@gmail.com', '0', '1217363884', '2', 'MUHAMMAD TANURI', '0', '0', 0, 'IDR', 'OVB', '0', '0', '', '2024-02-28 01:39:29'),
(198, '0', 'EDY SULISTIYONO', '0', 'edysulistiyono@gmail.com', '0', '0437268396', '2', 'EDY SULISTIYONO', '0', '0', 0, 'IDR', 'OVB', '0', '0', '', '2024-02-28 01:54:58'),
(199, '0', 'NI LUH AYUNDA AMALIA', '0', 'niluh@gmail.com', '0', '2180644281', '4', 'NI LUH AYUNDA AMALIA', 'KANTOR PUSAT', 'JAKARTA', 140397, 'IDR', 'LLG', '0', '0', '', '2024-02-28 02:01:18'),
(200, '0', 'MARTHA BETTY SARMA H', '0', 'martha@gmail.com', '0', '4119613715', '2', 'MARTHA BETTY SARMA H', '0', '0', 0, 'IDR', 'OVB', '0', '0', '', '2024-02-28 02:41:01'),
(201, '0', 'JARWANTO', '0', 'jarwanto@gmail.com', '0', '1200010492416', '1', 'JARWANTO', 'KPO JAKARTA', 'JAKARTA', 80017, 'IDR', 'LLG', '0', '0', '', '2024-02-28 02:45:58'),
(202, '0', 'MOCHAMAD ARIF RACHMAN', '0', 'moch.arifrachman@toyota.co.id', '0', '358755305', '2', 'Mochamad Arif Rachman', '0', '0', 0, 'IDR', 'OVB', '0', '0', '', '2024-03-13 09:48:44'),
(203, '0', 'SUNARTO', '0', 'sunarto@toyota.co.id', '0', '1320005936563', '1', 'SUNARTO', 'KPO JAKARTA', 'JAKARTA', 80017, 'IDR', 'LLG', '0', '0', '', '2024-03-13 15:03:00'),
(204, '0', 'JAVA SWISS', '0', 'javaswiss@gmail.com', '0', '4460360078', '4', 'RIJAL TAUFIK', 'KANTOR PUSAT', 'JAKARTA', 140397, 'IDR', 'LLG', '0', '0', '', '2024-03-20 04:30:29'),
(205, '0', 'MUHAMAD AFRIZAL', '0', 'yunita@akti.ac.id', '0', '1730004822707', '1', 'MUHAMAD AFRIZAL', 'JAKARTA PUSAT', 'JAKARTA', 80017, 'IDR', 'LLG', '0', '0', '', '2024-03-20 05:44:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_account`
--
ALTER TABLE `tbl_account`
  ADD PRIMARY KEY (`id_account`);

--
-- Indexes for table `tbl_bank`
--
ALTER TABLE `tbl_bank`
  ADD PRIMARY KEY (`id_bank`);

--
-- Indexes for table `tbl_input_t`
--
ALTER TABLE `tbl_input_t`
  ADD PRIMARY KEY (`id_input_t`);

--
-- Indexes for table `tbl_karyawan`
--
ALTER TABLE `tbl_karyawan`
  ADD PRIMARY KEY (`id_karyawan`);

--
-- Indexes for table `tbl_kategori_dosen`
--
ALTER TABLE `tbl_kategori_dosen`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `tbl_payment_date`
--
ALTER TABLE `tbl_payment_date`
  ADD PRIMARY KEY (`id_payment_date`);

--
-- Indexes for table `tbl_payment_v`
--
ALTER TABLE `tbl_payment_v`
  ADD PRIMARY KEY (`id_payment_v`);

--
-- Indexes for table `tbl_payrol`
--
ALTER TABLE `tbl_payrol`
  ADD PRIMARY KEY (`id_payrol`);

--
-- Indexes for table `tbl_periode`
--
ALTER TABLE `tbl_periode`
  ADD PRIMARY KEY (`id_periode`);

--
-- Indexes for table `tbl_salary_d`
--
ALTER TABLE `tbl_salary_d`
  ADD PRIMARY KEY (`id_salary_d`);

--
-- Indexes for table `tbl_salary_k`
--
ALTER TABLE `tbl_salary_k`
  ADD PRIMARY KEY (`id_salary_k`);

--
-- Indexes for table `tbl_status`
--
ALTER TABLE `tbl_status`
  ADD PRIMARY KEY (`id_status`);

--
-- Indexes for table `tbl_struktur_salary_dosen`
--
ALTER TABLE `tbl_struktur_salary_dosen`
  ADD PRIMARY KEY (`id_struktur`);

--
-- Indexes for table `tbl_transaksi`
--
ALTER TABLE `tbl_transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indexes for table `tbl_umk`
--
ALTER TABLE `tbl_umk`
  ADD PRIMARY KEY (`id_umk`);

--
-- Indexes for table `tbl_vendor`
--
ALTER TABLE `tbl_vendor`
  ADD PRIMARY KEY (`id_v`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_account`
--
ALTER TABLE `tbl_account`
  MODIFY `id_account` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `tbl_bank`
--
ALTER TABLE `tbl_bank`
  MODIFY `id_bank` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_input_t`
--
ALTER TABLE `tbl_input_t`
  MODIFY `id_input_t` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_karyawan`
--
ALTER TABLE `tbl_karyawan`
  MODIFY `id_karyawan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `tbl_kategori_dosen`
--
ALTER TABLE `tbl_kategori_dosen`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_payment_date`
--
ALTER TABLE `tbl_payment_date`
  MODIFY `id_payment_date` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `tbl_payment_v`
--
ALTER TABLE `tbl_payment_v`
  MODIFY `id_payment_v` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=914;

--
-- AUTO_INCREMENT for table `tbl_payrol`
--
ALTER TABLE `tbl_payrol`
  MODIFY `id_payrol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_periode`
--
ALTER TABLE `tbl_periode`
  MODIFY `id_periode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tbl_salary_d`
--
ALTER TABLE `tbl_salary_d`
  MODIFY `id_salary_d` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_salary_k`
--
ALTER TABLE `tbl_salary_k`
  MODIFY `id_salary_k` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=352;

--
-- AUTO_INCREMENT for table `tbl_status`
--
ALTER TABLE `tbl_status`
  MODIFY `id_status` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_struktur_salary_dosen`
--
ALTER TABLE `tbl_struktur_salary_dosen`
  MODIFY `id_struktur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_transaksi`
--
ALTER TABLE `tbl_transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_umk`
--
ALTER TABLE `tbl_umk`
  MODIFY `id_umk` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_vendor`
--
ALTER TABLE `tbl_vendor`
  MODIFY `id_v` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=206;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
