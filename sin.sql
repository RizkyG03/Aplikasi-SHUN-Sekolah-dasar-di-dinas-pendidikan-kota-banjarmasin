-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 31, 2023 at 08:51 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sin`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_guru`
--

CREATE TABLE `tb_guru` (
  `nip` int(11) NOT NULL,
  `id_kelas` varchar(20) NOT NULL,
  `nama_guru` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `status` varchar(20) NOT NULL,
  `jenis_kelamin` varchar(20) NOT NULL,
  `telepon` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `jabatan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_guru`
--

INSERT INTO `tb_guru` (`nip`, `id_kelas`, `nama_guru`, `alamat`, `status`, `jenis_kelamin`, `telepon`, `email`, `jabatan`) VALUES
(12345, '6-A', 'M. SUBLI, S.Ag, MA', 'Jl Pramuka', 'Menikah', 'Laki_laki', '+62(851)527-374', 'desaberangas@gmail.com', 'Wali Kelas'),
(55555, '6-B', 'Naufal', 'jl griya permata', 'lajang', 'laki-laki', '+62(851)527-374', 'hahahah@gmail.com', 'Wali Kelas'),
(67890, '6-A', 'Rafii', 'jl ronggolawe', 'Menikah', 'laki-laki', '+62(851)527-371', 'gunawanrizky354@gmail.com', 'Wali Kelas');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kategori_kelas`
--

CREATE TABLE `tb_kategori_kelas` (
  `id_kategoriK` int(11) NOT NULL,
  `nama_kategori` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_kategori_kelas`
--

INSERT INTO `tb_kategori_kelas` (`id_kategoriK`, `nama_kategori`) VALUES
(1, '6 A'),
(2, '6 B');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kelas`
--

CREATE TABLE `tb_kelas` (
  `id_kelas` varchar(20) NOT NULL,
  `nip` int(11) NOT NULL,
  `id_kategoriK` int(11) NOT NULL,
  `nama_kelas` varchar(25) NOT NULL,
  `jumlah_siswa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_kelas`
--

INSERT INTO `tb_kelas` (`id_kelas`, `nip`, `id_kategoriK`, `nama_kelas`, `jumlah_siswa`) VALUES
('6-A', 12345, 1, '6 A', 32),
('6-B', 55555, 2, '6 B', 24),
('6-C', 67890, 2, '6 C', 32);

-- --------------------------------------------------------

--
-- Table structure for table `tb_mapel`
--

CREATE TABLE `tb_mapel` (
  `id_mapel` int(11) NOT NULL,
  `nama_mapel` varchar(50) NOT NULL,
  `kkm` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_mapel`
--

INSERT INTO `tb_mapel` (`id_mapel`, `nama_mapel`, `kkm`) VALUES
(10, 'Bahasa Indonesia', 75),
(11, 'Matematika', 65),
(12, 'Pendidikan Agama', 75),
(13, 'Pkn', 80),
(14, 'IPA', 65),
(15, 'IPS', 75),
(16, 'kimia', 75),
(17, 'fisika', 75);

-- --------------------------------------------------------

--
-- Table structure for table `tb_nilai`
--

CREATE TABLE `tb_nilai` (
  `id_nilai` int(11) NOT NULL,
  `nisn` int(11) NOT NULL,
  `nip` int(11) NOT NULL,
  `id_semester` int(11) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `nilai` int(11) NOT NULL DEFAULT 0,
  `predikat_nilai` varchar(1) DEFAULT '-',
  `tugas` int(11) NOT NULL DEFAULT 0,
  `predikat_tugas` varchar(1) NOT NULL DEFAULT '-',
  `uts` int(11) NOT NULL DEFAULT 0,
  `predikat_uts` varchar(1) NOT NULL DEFAULT '-',
  `uas` int(11) NOT NULL DEFAULT 0,
  `predikat_uas` varchar(1) NOT NULL DEFAULT '-',
  `sikap` varchar(2) NOT NULL DEFAULT '-',
  `kompetensi` varchar(2) NOT NULL DEFAULT '-',
  `keterampilan` varchar(2) NOT NULL DEFAULT '-',
  `catatan` text NOT NULL,
  `tahun_ajaran` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_nilai`
--

INSERT INTO `tb_nilai` (`id_nilai`, `nisn`, `nip`, `id_semester`, `id_mapel`, `nilai`, `predikat_nilai`, `tugas`, `predikat_tugas`, `uts`, `predikat_uts`, `uas`, `predikat_uas`, `sikap`, `kompetensi`, `keterampilan`, `catatan`, `tahun_ajaran`) VALUES
(115, 102362325, 12345, 1, 10, 88, 'A', 88, 'A', 88, 'A', 88, 'A', 'A', 'B', 'B', 'fgfgfg', '2020'),
(116, 102362325, 12345, 1, 11, 88, 'A', 88, 'A', 88, 'A', 88, 'A', 'A', 'B', 'B', 'fgfgfg', '2020'),
(117, 102362325, 12345, 1, 12, 88, 'A', 88, 'A', 88, 'A', 88, 'A', 'A', 'B', 'B', 'fgfgfg', '2020'),
(118, 102362325, 12345, 1, 13, 88, 'A', 88, 'A', 88, 'A', 78, 'B', 'A', 'B', 'B', 'fgfgfg', '2020'),
(119, 102362325, 12345, 1, 14, 88, 'A', 88, 'A', 88, 'A', 88, 'A', 'A', 'B', 'B', 'fgfgfg', '2020'),
(120, 102362325, 12345, 1, 15, 88, 'A', 88, 'A', 88, 'A', 88, 'A', 'A', 'B', 'B', 'fgfgfg', '2020'),
(121, 102362325, 12345, 1, 16, 77, 'B', 77, 'B', 77, 'B', 77, 'B', 'A', 'B', 'B', 'fgfgfg', '2020'),
(122, 117317308, 12345, 1, 10, 88, 'A', 88, 'A', 88, 'A', 88, 'A', 'B', 'B', 'B', 'haloo', '2020'),
(123, 117317308, 12345, 1, 11, 88, 'A', 88, 'A', 0, 'D', 72, 'C', 'B', 'B', 'B', 'haloo', '2020'),
(124, 117317308, 12345, 1, 12, 88, 'A', 88, 'A', 78, 'B', 88, 'A', 'B', 'B', 'B', 'haloo', '2020'),
(125, 117317308, 12345, 1, 13, 88, 'A', 88, 'A', 77, 'B', 88, 'A', 'B', 'B', 'B', 'haloo', '2020'),
(126, 117317308, 12345, 1, 14, 81, 'B', 88, 'A', 88, 'A', 88, 'A', 'B', 'B', 'B', 'haloo', '2020'),
(127, 117317308, 12345, 1, 15, 88, 'A', 88, 'A', 88, 'A', 88, 'A', 'B', 'B', 'B', 'haloo', '2020'),
(128, 117317308, 12345, 1, 16, 77, 'B', 77, 'B', 77, 'B', 77, 'B', 'B', 'B', 'B', 'haloo', '2020'),
(129, 105553129, 12345, 1, 10, 85, 'B', 88, 'A', 88, 'A', 79, 'B', 'B', 'B', 'C', '', '2020'),
(130, 105553129, 12345, 1, 11, 88, 'A', 75, 'B', 88, 'A', 72, 'C', 'B', 'B', 'C', '', '2020'),
(131, 105553129, 12345, 1, 12, 86, 'B', 90, 'A', 88, 'A', 77, 'B', 'B', 'B', 'C', '', '2020'),
(132, 105553129, 12345, 1, 13, 88, 'A', 88, 'A', 88, 'A', 88, 'A', 'B', 'B', 'C', '', '2020'),
(133, 105553129, 12345, 1, 14, 88, 'A', 88, 'A', 88, 'A', 88, 'A', 'B', 'B', 'C', '', '2020'),
(134, 105553129, 12345, 1, 15, 89, 'A', 80, 'B', 88, 'A', 82, 'B', 'B', 'B', 'C', '', '2020'),
(135, 105553129, 12345, 1, 16, 77, 'B', 77, 'B', 77, 'B', 77, 'B', 'B', 'B', 'C', '', '2020'),
(136, 105553129, 12345, 1, 17, 78, 'B', 78, 'B', 77, 'B', 80, 'B', 'B', 'B', 'C', '', '2020'),
(137, 105553129, 12345, 1, 10, 85, 'B', 88, 'A', 78, 'B', 79, 'B', 'C', 'B', 'C', '', '2020'),
(138, 105553129, 12345, 1, 11, 50, 'D', 50, 'D', 50, 'D', 50, 'D', 'C', 'B', 'C', '', '2020'),
(139, 105553129, 12345, 1, 12, 86, 'B', 88, 'A', 78, 'B', 77, 'B', 'C', 'B', 'C', '', '2020'),
(140, 105553129, 12345, 1, 13, 88, 'A', 78, 'B', 77, 'B', 78, 'B', 'C', 'B', 'C', '', '2020'),
(141, 105553129, 12345, 1, 14, 81, 'B', 88, 'A', 78, 'B', 80, 'B', 'C', 'B', 'C', '', '2020'),
(142, 105553129, 12345, 1, 15, 89, 'A', 88, 'A', 85, 'B', 82, 'B', 'C', 'B', 'C', '', '2020'),
(143, 105553129, 12345, 1, 16, 77, 'B', 77, 'B', 77, 'B', 77, 'B', 'C', 'B', 'C', '', '2020'),
(144, 105553129, 12345, 1, 17, 78, 'B', 78, 'B', 77, 'B', 80, 'B', 'C', 'B', 'C', '', '2020');

-- --------------------------------------------------------

--
-- Table structure for table `tb_semester`
--

CREATE TABLE `tb_semester` (
  `id_semester` int(11) NOT NULL,
  `semester` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_semester`
--

INSERT INTO `tb_semester` (`id_semester`, `semester`) VALUES
(1, 'ganjil'),
(2, 'genap');

-- --------------------------------------------------------

--
-- Table structure for table `tb_siswa`
--

CREATE TABLE `tb_siswa` (
  `nisn` int(11) NOT NULL,
  `id_kelas` varchar(20) NOT NULL,
  `nama_siswa` varchar(50) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `agama` varchar(30) NOT NULL,
  `jenis_kelamin` varchar(12) NOT NULL,
  `telepon` varchar(18) NOT NULL,
  `tempat_lahir` varchar(50) NOT NULL,
  `no_kk` int(11) NOT NULL,
  `nama_ayah` varchar(50) NOT NULL DEFAULT '-',
  `nama_ibu` varchar(50) NOT NULL DEFAULT '-',
  `tahun_ajaran` varchar(20) NOT NULL,
  `penilaian` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_siswa`
--

INSERT INTO `tb_siswa` (`nisn`, `id_kelas`, `nama_siswa`, `tanggal_lahir`, `alamat`, `agama`, `jenis_kelamin`, `telepon`, `tempat_lahir`, `no_kk`, `nama_ayah`, `nama_ibu`, `tahun_ajaran`, `penilaian`) VALUES
(654321, '6-B', 'ahadiyat', '2010-05-21', 'jl ronggolawe', 'Islam', 'laki-laki', '+62(851)527-371', 'Banjarmasin', 654457, 'hartono', 'Sulastro', '2020', 0),
(16728897, '6-A', 'ahadiyat', '2008-12-09', 'jl griya permata', 'Islam', 'laki-laki', '+62(851)527-374', 'Banjarmasin', 2147483647, 'ilham', 'Sulastri', '2020', 0),
(85866464, '6-A', 'AULIA RAHMAN', '2008-12-09', 'jl ronggolawe', 'Islam', 'laki-laki', '+62(851)527-371', 'Banjarmasin', 12345678, 'Yanto', 'Sulastri', '2020', 0),
(102362325, '6-A', 'AZRIEL', '2010-05-21', 'jl griya permata', 'Islam', 'laki-laki', '+62(851)527-374', 'Banjarmasin', 2147483647, 'GFDGS', 'Sulastri', '2020', 1),
(105553129, '6-A', 'NOOR LAILA', '2010-05-20', 'jl ronggolawe', 'Islam', 'perempuan', '+62(851)527-372', 'Banjarmasin', 12345678, 'Yanto', 'yanti', '2020', 1),
(105797762, '6-B', 'MUHAMMAD HAIKAL SAHREZA', '2010-12-28', 'jl griya permata', 'Islam', 'laki-laki', '+62(851)527-374', 'Banjarmasin', 2147483647, 'yudi', 'marta', '2020', 0),
(106250048, '6-A', 'PUTRA RAMADHAN', '2010-08-19', 'jl ronggolawe', 'Islam', 'laki-laki', '+62(851)527-372', 'Banjarmasin', 983753223, 'hadi', 'meli', '2020', 0),
(111243314, '6-B', 'SITI KHADIJAH', '2011-04-11', 'jl ronggolawe', 'Islam', 'perempuan', '+62(851)527-371', 'Banjarmasin', 5675675, 'ilham', 'hafsah', '2020', 0),
(116667225, '6-B', 'RAHMADI', '2010-09-21', 'jl pramuka', 'Islam', 'laki-laki', '+62(851)527-371', 'Banjarmasin', 2147483647, 'huda', 'mariati', '2020', 0),
(117317308, '6-A', 'SELFIH', '2011-04-04', 'jl piere tendean', 'Islam', 'perempuan', '+62(851)527-372', 'Banjarmasin', 23456761, 'hartono', 'saidah', '2020', 1),
(117450129, '6-A', 'MUHAMMAD FIRHAN', '2011-10-13', 'jl piere tendean', 'Islam', 'laki-laki', '+62(851)527-372', 'Banjarmasin', 344456336, 'ilham', 'saidah', '2020', 0),
(129162991, '6-A', 'ZAHRA SYIFA\'UL QOLBI', '2012-03-17', 'jl griya permata', 'Islam', 'perempuan', '+62(851)527-374', 'Banjarmasin', 2147483647, 'yudi', 'alifah', '2020', 0),
(232455765, '6-A', 'Agung', '2023-08-07', 'xcvxcvxv', 'Islam', 'laki-laki', '+62(851)527-374', 'Banjarmasin', 983753223, 'Yanto', 'saidah', '2020', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL,
  `level` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `username`, `password`, `level`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin'),
(21, '12345', '827ccb0eea8a706c4c34a16891f84e7b', 'guru'),
(22, '0085866464', '631d0c3ef73a698897c078ef95c7a42b', 'murid'),
(23, '0102362325', '75fffc08e37fe244793726d38d6cb36f', 'murid'),
(24, '0117450129', 'e59935aaaada8fd1bf8f4b05ff45994f', 'murid'),
(25, '0105797762', '5f23bc2f48be63289b5c9dd6e981fc24', 'murid'),
(26, '0105707056', 'd66f3073e6f24e713016ae841f5059b8', 'murid'),
(27, '0105553129', '7753ab545e75b74e8b9ed54fe9f98114', 'murid'),
(28, '0106250048', '7b2c414053e3257d85166495e0f67e26', 'murid'),
(29, '0116667225', 'e52d6a4c76b668dd9499f5fb71db7acc', 'murid'),
(30, '0119449974', 'd7c143ad44133942c1ea396209dbf92c', 'murid'),
(31, '0117317308', 'eb88018169b64c8bad4567d9d31f4a74', 'murid'),
(32, '0111243314', '94621b11ba915897551e8d10413b822f', 'murid'),
(33, '0129162991', 'ee610b1c566da464d7a50f8941723e7f', 'murid'),
(36, '232455765', 'a2beb64f2fb133ba9fab797048d4b427', 'murid'),
(37, '55555', 'c5fe25896e49ddfe996db7508cf00534', 'guru'),
(38, '654321', 'c33367701511b4f6020ec61ded352059', 'murid'),
(39, '16728897', '5ef11264979a7229c2ca418f0a96cda6', 'murid'),
(41, '67890', '1e01ba3e07ac48cbdab2d3284d1dd0fa', 'guru');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_guru`
--
ALTER TABLE `tb_guru`
  ADD PRIMARY KEY (`nip`);

--
-- Indexes for table `tb_kategori_kelas`
--
ALTER TABLE `tb_kategori_kelas`
  ADD PRIMARY KEY (`id_kategoriK`);

--
-- Indexes for table `tb_kelas`
--
ALTER TABLE `tb_kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indexes for table `tb_mapel`
--
ALTER TABLE `tb_mapel`
  ADD PRIMARY KEY (`id_mapel`);

--
-- Indexes for table `tb_nilai`
--
ALTER TABLE `tb_nilai`
  ADD PRIMARY KEY (`id_nilai`);

--
-- Indexes for table `tb_semester`
--
ALTER TABLE `tb_semester`
  ADD PRIMARY KEY (`id_semester`);

--
-- Indexes for table `tb_siswa`
--
ALTER TABLE `tb_siswa`
  ADD PRIMARY KEY (`nisn`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_kategori_kelas`
--
ALTER TABLE `tb_kategori_kelas`
  MODIFY `id_kategoriK` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_mapel`
--
ALTER TABLE `tb_mapel`
  MODIFY `id_mapel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tb_nilai`
--
ALTER TABLE `tb_nilai`
  MODIFY `id_nilai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
