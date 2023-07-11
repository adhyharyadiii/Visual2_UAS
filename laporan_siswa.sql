-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Waktu pembuatan: 11 Jul 2023 pada 17.08
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laporan_siswa`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `hubungan`
--

CREATE TABLE `hubungan` (
  `id` int(8) NOT NULL,
  `siswa_id` int(8) NOT NULL,
  `ortu_id` int(8) NOT NULL,
  `status_hub` varchar(15) DEFAULT NULL,
  `keterangan` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `hubungan`
--

INSERT INTO `hubungan` (`id`, `siswa_id`, `ortu_id`, `status_hub`, `keterangan`) VALUES
(1, 1, 1, 'Kandung', 'Ayah'),
(2, 1, 2, 'Kandung', 'Ibu'),
(3, 2, 3, 'Kandung', 'Ayah'),
(4, 2, 4, 'Kandung', 'Ibu'),
(5, 3, 5, 'Kandung', 'Ayah'),
(7, 4, 6, 'Tiri', 'Ibu');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas`
--

CREATE TABLE `kelas` (
  `id` int(8) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `jenis` char(1) DEFAULT NULL,
  `jurusan` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kelas`
--

INSERT INTO `kelas` (`id`, `nama`, `jenis`, `jurusan`) VALUES
(1, 'Bunga', 'E', 'IPS'),
(2, 'Sepatu', 'B', 'IPS'),
(3, 'Melati', 'C', 'IPA'),
(4, 'Opera', 'D', 'IPS'),
(5, 'Anggur', 'E', 'IPA');

-- --------------------------------------------------------

--
-- Struktur dari tabel `orang_tua`
--

CREATE TABLE `orang_tua` (
  `id` int(8) NOT NULL,
  `nik` int(16) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `pendidikan` varchar(30) DEFAULT NULL,
  `pekerjaan` varchar(50) DEFAULT NULL,
  `telp` int(14) DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  `agama` varchar(20) DEFAULT NULL,
  `jk` char(1) DEFAULT NULL,
  `status` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `orang_tua`
--

INSERT INTO `orang_tua` (`id`, `nik`, `nama`, `pendidikan`, `pekerjaan`, `telp`, `alamat`, `agama`, `jk`, `status`) VALUES
(1, 6607, 'Wahyundad', 'SMK', 'Petani', 801551, 'Banjarbaru', 'Kristen Katolik', 'P', 'aktif'),
(2, 6607, 'Desi', 'S1', 'PNS', 877123, 'Banjarbaru', 'Islam', 'P', 'aktif'),
(3, 6608, 'Hary', 'SMA', 'Polisi', 876771, 'Banjarbaru', 'Kristen', 'L', 'aktif'),
(4, 6609, 'Okta', 'SMA', 'IRT', 899276, 'Banjarmasin', 'Kristen', 'P', 'aktif'),
(5, 6610, 'Ady', 'S1', 'Tentara', 855253, 'Banjarbaru', 'Hindu', 'L', 'aktif');

-- --------------------------------------------------------

--
-- Struktur dari tabel `poin`
--

CREATE TABLE `poin` (
  `id` int(8) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `bobot` int(3) DEFAULT NULL,
  `jenis` varchar(50) DEFAULT NULL,
  `status` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `poin`
--

INSERT INTO `poin` (`id`, `nama`, `bobot`, `jenis`, `status`) VALUES
(1, 'Datang terlambat ', 5, 'Pelanggaran', 'aktif'),
(2, 'Anak anak', 10, 'Pelanggaran', 'aktif'),
(3, 'Bergandengan tangan', 20, 'Pelanggaran', 'aktif'),
(4, 'Siswa Teladan', 35, 'Prestasi', 'aktif'),
(5, 'Asusila', 35, 'Pelanggaran', 'aktif');

-- --------------------------------------------------------

--
-- Struktur dari tabel `riwayat_poin`
--

CREATE TABLE `riwayat_poin` (
  `id` int(8) NOT NULL,
  `siswa_id` int(8) NOT NULL,
  `poin_id` int(8) NOT NULL,
  `wali_id` int(8) NOT NULL,
  `ortu_id` int(8) NOT NULL,
  `kelas_id` int(8) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `semester` int(1) DEFAULT NULL,
  `status` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `riwayat_poin`
--

INSERT INTO `riwayat_poin` (`id`, `siswa_id`, `poin_id`, `wali_id`, `ortu_id`, `kelas_id`, `tanggal`, `semester`, `status`) VALUES
(1, 1, 1, 1, 1, 1, '2022-04-12', 2, 'aktif'),
(3, 3, 3, 3, 3, 3, '2023-02-24', 2, 'aktif'),
(4, 4, 4, 4, 4, 4, '2023-06-15', 2, 'aktif'),
(5, 5, 5, 5, 5, 5, '2022-09-17', 1, 'aktif'),
(8, 7, 7, 7, 7, 7, '2003-02-20', 6, 'aktif');

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `id` int(8) NOT NULL,
  `nis` int(10) DEFAULT NULL,
  `nisn` int(10) DEFAULT NULL,
  `nama_siswa` varchar(50) DEFAULT NULL,
  `nik` int(16) DEFAULT NULL,
  `tempat_lahir` varchar(50) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `jenis_kelamin` char(1) DEFAULT NULL,
  `tingkat_kelas` int(2) DEFAULT NULL,
  `jurusan` varchar(40) DEFAULT NULL,
  `wali_kelas` varchar(50) DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  `telp` int(14) DEFAULT NULL,
  `hp` int(14) DEFAULT NULL,
  `status` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`id`, `nis`, `nisn`, `nama_siswa`, `nik`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `tingkat_kelas`, `jurusan`, `wali_kelas`, `alamat`, `telp`, `hp`, `status`) VALUES
(1, 2117, 1121, 'Wahyunda', 6609, 'Banjarmasin', '2003-02-19', 'P', 5, 'IPS', 'Pa Kulo', 'Banjarbaru', 804159, 803456, 'aktif'),
(2, 2111, 1121, 'Rini', 6607, 'Banjarbaru', '2002-03-16', 'P', 2, 'IPS', 'Bu Nida', 'Banjarbaru', 832411, 812351, 'aktif'),
(3, 2112, 1122, 'Rizki', 6608, 'Banjarmasin', '2001-12-24', 'L', 3, 'IPA', 'Pa Pogo', 'Banjarbaru', 888921, 824151, 'aktif'),
(4, 2113, 1123, 'Funi', 6609, 'Amuntai', '2002-12-16', 'P', 4, 'IPS', 'Bu Nika', 'Banjarmasin', 887333, 855124, 'aktif'),
(5, 2114, 1124, 'Fajar', 6610, 'Balangan', '2003-06-18', 'L', 5, 'IPA', 'Pa Kulo', 'Banjarbaru', 855521, 861244, 'aktif'),
(6, 2115, 1125, 'Lorad', 6611, 'Balangan', '2003-06-28', 'L', 3, 'IPS', 'Pa Pogo', 'Banjarbaru', 899921, 879531, 'aktif'),
(7, 2116, 1126, 'Jura', 6612, 'Balangan', '2003-07-17', 'P', 4, 'IPA', 'Bu Nika', 'Banjarmasin', 854442, 866543, 'aktif'),
(9, 12412, 42141, 'Adhy', 214141, 'bnafdjw', '2003-02-18', 'L', 2, 'IPS', 'Bu Nida', 'adadwa', 56758, 4214, 'aktif');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(8) NOT NULL,
  `siswa` varchar(50) DEFAULT NULL,
  `password` varchar(10) DEFAULT NULL,
  `level` varchar(10) DEFAULT NULL,
  `status` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `siswa`, `password`, `level`, `status`) VALUES
(1, 'Rudia', 'a1a2a3a4a', 'Admin', 'aktif'),
(2, 'Rina', 's1s2s3s4', 'Admin', 'aktif'),
(11, 'Adhy', 'abcdefgh', 'Admin', 'aktif');

-- --------------------------------------------------------

--
-- Struktur dari tabel `wali_kelas`
--

CREATE TABLE `wali_kelas` (
  `id` int(8) NOT NULL,
  `nip` int(16) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `jk` char(1) DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  `telp` int(14) DEFAULT NULL,
  `matpel` varchar(30) DEFAULT NULL,
  `pendidikan` varchar(20) DEFAULT NULL,
  `status` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `wali_kelas`
--

INSERT INTO `wali_kelas` (`id`, `nip`, `nama`, `jk`, `alamat`, `telp`, `matpel`, `pendidikan`, `status`) VALUES
(1, 3118, 'Ardg', 'P', 'Banjarmasin', 805523, 'IPS', 'SMK', 'aktif'),
(2, 3111, 'Bu Nida', 'P', 'Banjarmasin', 852823, 'IPS', 'S1', 'aktif'),
(3, 3112, 'Pa Pogo', 'L', 'Banjarbaru', 888134, 'IPA', 'SMA', 'aktif'),
(4, 3113, 'Bu Nika', 'P', 'Banjarmasin', 845634, 'IPS', 'SMK', 'aktif'),
(5, 3114, 'Pa Kulo', 'L', 'Banjarbaru', 877342, 'IPA', 'SMA', 'aktif');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `hubungan`
--
ALTER TABLE `hubungan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `orang_tua`
--
ALTER TABLE `orang_tua`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `poin`
--
ALTER TABLE `poin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `riwayat_poin`
--
ALTER TABLE `riwayat_poin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `wali_kelas`
--
ALTER TABLE `wali_kelas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `hubungan`
--
ALTER TABLE `hubungan`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `orang_tua`
--
ALTER TABLE `orang_tua`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `poin`
--
ALTER TABLE `poin`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `riwayat_poin`
--
ALTER TABLE `riwayat_poin`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `wali_kelas`
--
ALTER TABLE `wali_kelas`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
