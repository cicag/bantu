-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 26, 2025 at 12:31 PM
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
  `nummin` int(11) DEFAULT NULL,
  `nummax` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `diabetes`
--

INSERT INTO `diabetes` (`id`, `dx`, `ket`, `gejala`, `gbrgejala`, `saran`, `gbrsaran`, `tag`, `nummin`, `nummax`) VALUES
(1, 'Gula Darah Tinggi', 'Kadar gula darah >200mg/dl', '<ol>\r\n<li>Lelah lesu,</li>\r\n<li>Kadar gula darah tinggi (>200mg/dl),</li>\r\n<li>Mulut kering,</li>\r\n<li>Sering merasa haus,</li>\r\n<li>Sering buang air kecil,</li>\r\n<li>Pusing,</li>\r\n<li>Penglihatan kabur,</li>\r\n<li>Nafas terengah-engah dan berbau.</li>\r\n</ol>\r\n\r\nSumber:\r\n<ol>\r\n<li>Kemenkes. (2022, November 17). Mengenal Penyakit Hiperglikemia. https://ayosehat.kemkes.go.id/mengenal-penyakit-hiperglikemia</li>\r\n<li>PPNI. (2016). Standar Diagnosis Keperawatan Indonesia. Jakarta: Ppni.</li>\r\n</ol>', 'bening.webp', '<ol>\r\n<li>Memperbanyak minum,</li>\r\n<li>Lakukan aktivitas fisik selama 30 menit sebanyak 3-4 kali seminggu (bisa dengan jalan-jalan, joging, berenang, bersepeda),</li>\r\n<li>Jangan berolahraga jika gula darah >250mg/dl,</li>\r\n<li>Jaga gula darah mendekati ideal dengan diet makan sesuai piramida makanan diabetes,</li>\r\n<li>Pantau gula darah secara mandiri (target <140mg/dl atau 80-130 saat puasa),</li>\r\n<li>Konsultasikan dan ikuti instruksi medis tentang penggunaan insulin dan obat anti diabetes (OAD).</li>\r\n</ol>\r\n\r\n\r\nSumber:\r\n<ol>\r\n<li>Martiningsih, M., Ahmad, A., Haris, A., & Sukmawati, S. (2022). Edukasi 5 Pilar Diabetes Mellitus Dalam Upaya Pencegahan Hiperglikemia Dan Hipoglikemia di Bima-NTB. Jurnal Pengabdian Masyarakat Jajama (JPMJ), 1(2), 67–75.</li>\r\n<li>PPNI, T. (2018). Standar Intervensi Keperawatan Indonesia: Definisi dan Tindakan Keperawatan. Jakarta: Dewan Persatuan Pusat Persatuan Perawat Nasional Indonesia.</li>\r\n</ol>', 'prmdmakan.webp', 'geliyeng mumet cenat cenut nggeliyeng kencing', 200, 10000),
(2, 'Gula Darah Rendah', 'Kadar gula darah <70mg/dl', 'Tingkat ringan-sedang:\r\n<ol>\r\n<li>Pusing,</li>\r\n<li>Gangguan koordinasi gerak,</li>\r\n<li>Kadar gula darah rendah (<70mg/dl),</li>\r\n<li>Jantung berdebar,</li>\r\n<li>Gemetar,</li>\r\n<li>Pucat,</li>\r\n<li>Lelah,</li>\r\n<li>Bibir kesemutan,</li>\r\n<li>Lapar,</li>\r\n<li>Kesadaran menurun,</li>\r\n<li>Berkeringat,</li>\r\n<li>Mudah marah dan sulit berbicara.</li>\r\n</ol>\r\n\r\n\r\nSumber:\r\n<ol>\r\n<li>PPNI. (2016). Standar Diagnosis Keperawatan Indonesia. Jakarta: PPNI.</li>\r\n<li>Rusdi, M. S. (2020). Hipoglikemia Pada Pasien Diabetes Melitus. Journal Syifa Sciences and Clinical Research (JSSCR), 2(2), Article 2. https://doi.org/10.37311/jsscr.v2i2.4575</li>\r\n<li>Tim Promkes RSST. (2022, July 29). Hipoglikemia. https://yankes.kemkes.go.id/view_artikel/716/hipoglikemi</li>\r\n</ol>', 'smbg.webp', 'Tingkat ringan-sedang (40-70mg/dl):\r\n<ol>\r\n<li>Berikan makanan tinggi karbohidrat (hindari yang berlemak seperti coklat karena lemak menghambat penyerapan gula),</li>\r\n<li>Permen dapat digunakan untuk pertolongan pertama,</li>\r\n<li>Pemberian larutan gula 2-3 sendok makan (sekitar 15gr) dapat meningkatkan glukosa kurang lebih 37,8mg/dl. Larutan gula 20gr untuk meningkatkan glukosa darah kurang lebih 64,8mg/dl,</li>\r\n<li>Larutan gula untuk anak-anak biasanya kurang dari 15gr, pada bayi 6gr, pada balita 8gr, dan pada anak kecil 10gr,</li>\r\n<li>Pemberian susu dan jus jeruk lambat dalam menaikkan kadar gula darah, namun dapat menurunkan gejala,</li>\r\n<li>Jika gejala darah rendah muncul meskipun kadar glukosa darah tidak kurang dari 73mg/dl, berikan snack karbohidrat seperti roti dan satu pisang,</li>\r\n<li>Cek gula darah 15 menit setelah terapi, ulangi terapi sampai setidaknya kadar glukosa mencapai 70mg/dl,</li>\r\n<li>Anjurkan untuk makan (bisa <i>snack</i>) untuk mencegah gula darah rendah berulang,</li>\r\n<li>Anjurkan untuk selalu membawa karbohidrat sederhana (seperti permen, roti, pisang) bagi yang rentan mengalami hipoglikemia.</li>\r\n</ol>\r\n\r\nSumber:\r\n<ol>\r\n<li>P2PTM Kemenkes RI. (2018, December 28). Tips Untuk Mengatasi Hipoglikemia—Penyakit Tidak Menular Indonesia. https://p2ptm.kemkes.go.id/infographic-p2ptm/penyakit-diabetes-melitus/tips-untuk-mengatasi-hipoglikemia</li>\r\n<li>Rusdi, M. S. (2020). Hipoglikemia Pada Pasien Diabetes Melitus. Journal Syifa Sciences and Clinical Research (JSSCR), 2(2), Article 2. https://doi.org/10.37311/jsscr.v2i2.4575</li>\r\n</ol>', 'bening.webp', 'geliyeng mumet tremor nderedek nderegdeg nderekdeg nderegdek nggeliyeng', 40, 70),
(3, 'Gula Darah Rendah Berat', 'Kadar gula darah <40mg/dl', '<ol>\r\n<li>Mengantuk,</li>\r\n<li>Gangguan penglihatan,</li>\r\n<li>Berperilaku aneh, seperti orang mabuk,</li>\r\n<li>Kejang,</li>\r\n<li>Hilang kesadaran.</li>\r\n</ol>\r\n\r\nSumber:\r\n<ol>\r\n<li>Rusdi, M. S. (2020). Hipoglikemia Pada Pasien Diabetes Melitus. Journal Syifa Sciences and Clinical Research (JSSCR), 2(2), Article 2. https://doi.org/10.37311/jsscr.v2i2.4575</li>\r\n</ol>', 'smbg.webp', '<ol>\r\n<li>Segera panggil bantuan, atau antar ke fasilitas kesehatan (Hubungi nomor darurat 112),</li>\r\n<li>Jangan memaksa makan jika penderita sudah mengantuk atau tidak sadarkan diri,</li>\r\n<li>Penderita yang tidak sadar (namun masih ada nadi dan napas) diposisikan ke posisi pemulihan.</li>\r\n</ol>\r\n\r\nSumber:\r\n<ol>\r\n<li>Puskesmas Perampuan. (2025). Hipoglikemia. https://puskesmasmeninting-dikes.lombokbaratkab.go.id/artikel/hipoglikemia/</li>\r\n<li>Menteri Kesehatan Republik Indonesia. (2024). Keputusan Menteri Kesehatan Republik Indonesia Nomor HK.01.07/MENKES/2009/2024 Tentang Pedoman Nasional Pelayanan Klinis Tata Laksana Diabetes Melitus Pada Anak.</li>\r\n</ol>', 'hipoberat.webp', 'pingsan semaput tidak bisa bangun tidur modar', 0, 39),
(4, 'Normal', 'Normal', 'Normal', 'bening.webp', 'Normal', 'bening.webp', 'sehat', 71, 199),
(5, 'Demo video', 'Demonstrasi video', 'Demonstrasi video', 'bening.webp', '<ol>\r\n<li>Saran 1</li>\r\n<li>Saran 2</li>\r\n<li>Saran 3</li>\r\n</ol>\r\n\r\n<h3>Contoh Video Sumber Lokal</h3><video width=\"640\" height=\"360\" controls> <source src=\"asset/vid/demo.webm\" type=\"video/webm\"> Browser Anda tidak mendukung video HTML5.</video>\r\n\r\n<h3>Contoh Video Sumber Youtube</h3> <iframe width=\"640\" height=\"360\" src=\"https://www.youtube.com/embed/2CzFKBWdYCg\" title=\"Foot Exercises for Patient with Diabetes Mellitus\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', 'bening.webp', 'video', NULL, NULL),
(6, 'Luka', 'Kerusakan kulit dan jaringan', '<ol>\r\n<li>Adanya luka terbuka atau tertutup (lecet, robek, tusuk, atau memar),</li>\r\n<li>Nyeri pada area luka,</li>\r\n<li>Perdarahan ringan hingga sedang,</li>\r\n<li>Memar (perubahan warna kulit).</li>\r\n</ol>\r\n\r\nSumber:\r\n<ol>\r\n<li>PPNI (2016). Standar Diagnosis Keperawatan Indonesia: Definisi dan Indikator Diagnostik, Edisi 1. Jakarta: DPP PPNI.</li>\r\n</ol>', 'bening.webp', 'Bersihkan luka dengan cara:\r\n<ol>\r\n<li>Cuci tangan dulu (atau gunakan sarung tangan steril),</li>\r\n<li>Posisikan luka menghadap keatas,</li>\r\n<li>Bilas luka dengan air bersih atau air hangat yang mengalir (rekomendasi dengan air normal saline),</li>\r\n<li>Jika luka tampak kotor, bersihkan dengan sabun (hindari menyabun langsung ke bagian luka untuk mencegah iritasi),</li>\r\n<li>Rendam kain (atau kasa) ke air bersih atau hangat (rekomendasi dengan air normal saline), gunakan untuk mengusap dan membersihkan luka dengan lembut. (catatan: hindari menggunakan kapas, bisa menempel ke luka),</li>\r\n<li>Tutup luka dengan kasa steril/perban/plester sesuai ukuran luka,</li>\r\n<li>Hindarkan perban dari air dan ganti setidaknya setiap tiga hari,</li>\r\n<li>Untuk luka yang lebih serius seperti luka kaki diabetes atau luka dalam yang lambat sembuh, segera konsultasikan ke fasilitas kesehatan.</li>\r\n</ol>\r\n\r\nHimbauan:\r\n<ol>\r\n<li>Jangan menggunakan alkohol langsung ke area luka,</li>\r\n<li>Jangan menggunakan kapas, bisa menempel ke luka.</li>\r\n\r\nSumber:\r\n<ol>\r\n<li>PPNI (2018). Standar Intervensi Keperawatan Indonesia: Definisi dan Tindakan Keperawatan, Edisi 1. Jakarta: DPP PPNI.</li>\r\n</ol>', 'bening.webp', 'luka merah tatu gangren nanah kemerahan koreng sakit berdarah metu getih', NULL, NULL),
(7, 'Luka Baring', 'Luka tekan karena terlalu lama berbaring.', '<ol>\r\n<li>Adanya luka terbuka atau tertutup (lecet, atau memar),</li>\r\n<li>Nyeri pada area luka,</li>\r\n<li>Memar (perubahan warna kulit)</li>\r\n<li>Kesulitan beralih dari tempat tidur, maupun bergerak sehingga hanya mampu berbaring.</li>\r\n</ol>\r\n\r\nSumber:\r\n<ol>\r\n<li>PPNI (2016). Standar Diagnosis Keperawatan Indonesia: Definisi dan Indikator Diagnostik, Edisi 1. Jakarta: DPP PPNI.</li>\r\n</ol>', 'bening.webp', 'Antisipasi dengan cara:\r\n<ol>\r\n<li>Ubah posisi berbaring dengan memiringkan ke kanan atau ke kiri setiap 2 jam,</li>\r\n<li>Bantu pijat area benjolan tulang agar lebih rileks,</li>\r\n<li>Berikan pelembab (bisa serum atau lotion, jangan alkohol),</li>\r\n<li>Usahakan minum lebih banyak air,</li>\r\n<li>Makan lebih banyak buah dan sayur untuk mencukupi nutrisi,</li>\r\n<li>Bantu menjaga tubuh tetap bersih,</li>\r\n<li>Jika ditemukan luka tekan, lakukan perawatan luka.</li>\r\n</ol>\r\n\r\nSumber:\r\n<ol>\r\n<li>PPNI (2018). Standar Intervensi Keperawatan Indonesia: Definisi dan Tindakan Keperawatan, Edisi 1. Jakarta: DPP PPNI.</li>\r\n</ol>', 'bening.webp', 'luka merah nanah sakit baring berbaring tidak bangun kembang amben dekubitus gletak nggletak', NULL, NULL),
(8, 'Bergerak tidak leluasa', 'Sulit bergerak dengan leluasa.', '<ol>\r\n<li>Kesulitan menggerakkan tangan atau kaki,</li>\r\n<li>Merasa lemah, tidak leluasa bergerak,</li>\r\n<li>Terasa sakit saat bergerak,</li>\r\n<li>Sendi kaku.</li>\r\n</ol>\r\n\r\nSumber:\r\n<ol>\r\n<li>PPNI (2016). Standar Diagnosis Keperawatan Indonesia: Definisi dan Indikator Diagnostik, Edisi 1. Jakarta: DPP PPNI.</li>\r\n</ol>', 'bening.webp', '<ol>\r\n<li>Dukung dan dampingi untuk melakukan aktivitas sederhana semampunya, seperti bangkit dari tempat tidur, berpindah ke tempat duduk, atau berjalan kecil beberapa langkah maju atau mundur.</li>\r\n<li>Pertimbangkan untuk memberikan alat bantu berjalan seperti tongkat, kruk, dan kursi roda</li>\r\n\r\nSumber:\r\n<ol>\r\n<li>PPNI (2018). Standar Intervensi Keperawatan Indonesia: Definisi dan Tindakan Keperawatan, Edisi 1. Jakarta: DPP PPNI.</li>\r\n</ol>', 'bening.webp', 'berbaring, sulit berjalan, kaku, tibo, jatuh', NULL, NULL);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
