-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 01, 2025 at 05:00 AM
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
-- Database: `bantu`
--
CREATE DATABASE IF NOT EXISTS `bantu` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bantu`;

-- --------------------------------------------------------

--
-- Table structure for table `diabetes`
--

CREATE TABLE `diabetes` (
  `id` int(11) NOT NULL,
  `dx` varchar(100) DEFAULT NULL,
  `ket` varchar(100) DEFAULT NULL,
  `gejala` longtext DEFAULT NULL,
  `gbrgejala` varchar(100) DEFAULT NULL,
  `saran` longtext DEFAULT NULL,
  `gbrsaran` varchar(100) DEFAULT NULL,
  `tag` varchar(1000) DEFAULT NULL,
  `nummin` int(11) NOT NULL,
  `nummax` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `diabetes`
--

INSERT INTO `diabetes` (`id`, `dx`, `ket`, `gejala`, `gbrgejala`, `saran`, `gbrsaran`, `tag`, `nummin`, `nummax`) VALUES
(1, 'Gula Darah Tinggi', 'Kadar gula darah >200mg/dl', '<ol>\r\n<li>Lelah lesu,</li>\r\n<li>Kadar gula darah tinggi (>200mg/dl),</li>\r\n<li>Mulut kering,</li>\r\n<li>Sering merasa haus,</li>\r\n<li>Sering buang air kecil,</li>\r\n<li>Pusing,</li>\r\n<li>Penglihatan kabur,</li>\r\n<li>Nafas terengah-engah dan berbau.</li>\r\n</ol>', 'bening.png', '<ol>\r\n<li>Memperbanyak minum,</li>\r\n<li>Lakukan aktivitas fisik selama 30 menit sebanyak 3-4 kali seminggu (bisa dengan jalan-jalan, joging, berenang, bersepeda),</li>\r\n<li>Jangan berolahraga jika gula darah >250mg/dl,</li>\r\n<li>Jaga gula darah mendekati ideal dengan diet makan sesuai piramida makanan diabetes,</li>\r\n<li>Pantau gula darah secara mandiri (target <140mg/dl atau 80-130 saat puasa),</li>\r\n<li>Konsultasikan dan ikuti instruksi medis tentang penggunaan insulin dan obat anti diabetes (OAD).</li>\r\n</ol>', 'prmdmakan.jpg', 'geliyeng mumet cenat cenut nggeliyeng', 200, 10000),
(2, 'Gula Darah Rendah', 'Kadar gula darah <70mg/dl', 'Tingkat ringan-sedang:\r\n<ol>\r\n<li>Pusing,</li>\r\n<li>Gangguan koordinasi gerak,</li>\r\n<li>Kadar gula darah rendah (<70mg/dl),</li>\r\n<li>Jantung berdebar,</li>\r\n<li>Gemetar,</li>\r\n<li>Pucat,</li>\r\n<li>Lelah,</li>\r\n<li>Bibir kesemutan,</li>\r\n<li>Lapar,</li>\r\n<li>Kesadaran menurun,</li>\r\n<li>Berkeringat,</li>\r\n<li>Mudah marah dan sulit berbicara.</li>\r\n</ol>', 'smbg.png', 'Tingkat ringan-sedang (40-70mg/dl):\r\n<ol>\r\n<li>Berikan makanan tinggi karbohidrat (hindari yang berlemak seperti coklat karena lemak menghambat penyerapan gula),</li>\r\n<li>Permen dapat digunakan untuk pertolongan pertama,</li>\r\n<li>Pemberian larutan gula 2-3 sendok makan (sekitar 15gr) dapat meningkatkan glukosa kurang lebih 37,8mg/dl. Larutan gula 20gr untuk meningkatkan glukosa darah kurang lebih 64,8mg/dl,</li>\r\n<li>Larutan gula untuk anak-anak biasanya kurang dari 15gr, pada bayi 6gr, pada balita 8gr, dan pada anak kecil 10gr,</li>\r\n<li>Pemberian susu dan jus jeruk lambat dalam menaikkan kadar gula darah, namun dapat menurunkan gejala,</li>\r\n<li>Jika gejala darah rendah muncul meskipun kadar glukosa darah tidak kurang dari 73mg/dl, berikan snack karbohidrat seperti roti dan satu pisang,</li>\r\n<li>Cek gula darah 15 menit setelah terapi, ulangi terapi sampai setidaknya kadar glukosa mencapai 70mg/dl,</li>\r\n<li>Anjurkan untuk makan (bisa <i>snack</i>) untuk mencegah gula darah rendah berulang,</li>\r\n<li>Anjurkan untuk selalu membawa karbohidrat sederhana (seperti permen, roti, pisang) bagi yang rentan mengalami hipoglikemia.</li>\r\n</ol>', 'bening.png', 'geliyeng mumet tremor nderedek nderegdeg nderekdeg nderegdek nggeliyeng', 40, 70),
(3, 'Gula Darah Rendah Berat', 'Kadar gula darah <40mg/dl', '<ol>\r\n<li>Mengantuk,</li>\r\n<li>Gangguan penglihatan,</li>\r\n<li>Berperilaku aneh, seperti orang mabuk,</li>\r\n<li>Kejang,</li>\r\n<li>Hilang kesadaran.</li>\r\n</ol>', 'smbg.png', '<ol>\r\n<li>Segera panggil bantuan, atau antar ke fasilitas kesehatan (Hubungi nomor darurat 112),</li>\r\n<li>Jangan memaksa makan jika tidak sadarkan diri,</li>\r\n<li>Penderita yang tidak sadar (namun masih ada nadi dan napas) diposisikan ke posisi pemulihan.</li>\r\n</ol>', 'hipoberat.png', 'pingsan semaput tidak bisa bangun tidur modar', 0, 39),
(4, 'Normal', 'Normal', 'Normal', 'bening.png', 'Normal', 'bening.png', 'sehat', 71, 199);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `diabetes`
--
ALTER TABLE `diabetes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `diabetes`
--
ALTER TABLE `diabetes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
