-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 31 Agu 2019 pada 05.58
-- Versi server: 10.1.37-MariaDB
-- Versi PHP: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `impal`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `nip` varchar(10) NOT NULL,
  `namaAdmin` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`nip`, `namaAdmin`) VALUES
('0174512222', 'dira'),
('1102225111', 'ibnus'),
('1388270004', 'slamet'),
('1882517800', 'riyadi'),
('9991637172', 'thalita');

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `isbn` varchar(50) NOT NULL,
  `tahunTerbit` varchar(5) NOT NULL,
  `penerbit` varchar(50) NOT NULL,
  `penulis` varchar(150) NOT NULL,
  `judulBuku` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`isbn`, `tahunTerbit`, `penerbit`, `penulis`, `judulBuku`) VALUES
('775222112', '2018', 'Mizan', 'Ferdinand', 'Apa itu?'),
('888876412', '2013', 'Erlangga', 'Sukino', 'Matematika Pemula'),
('990017221', '2010', 'Gramedia', 'Raditya Dika', 'Marmut Merah Jambu'),
('994222177', '2014', 'KridaWicaksana', 'Sukanan', 'Pembibitan Pupuk Hibrida'),
('999172221', '2008', 'Kompas', 'Sujiwo Tejo', 'Tuhan Maha Asik');

-- --------------------------------------------------------

--
-- Struktur dari tabel `managebuku`
--

CREATE TABLE `managebuku` (
  `tanggal` varchar(10) NOT NULL,
  `jam` varchar(10) NOT NULL,
  `nip` varchar(10) NOT NULL,
  `isbn` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `managebuku`
--

INSERT INTO `managebuku` (`tanggal`, `jam`, `nip`, `isbn`) VALUES
('08-Jun-201', '08.01', '1388270004', '999172221'),
('19-Agu-201', '11.34', '0174512222', '888876412'),
('19-Jun-201', '14.49', '0174512222', '994222177'),
('27-Agu-201', '10.44', '9991637172', '994222177'),
('28-Mei-201', '13.00', '1102225111', '775222112');

-- --------------------------------------------------------

--
-- Struktur dari tabel `managepembaca`
--

CREATE TABLE `managepembaca` (
  `tanggal` varchar(10) NOT NULL,
  `jam` varchar(10) NOT NULL,
  `nip` varchar(10) NOT NULL,
  `usernamePembaca` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `managepembaca`
--

INSERT INTO `managepembaca` (`tanggal`, `jam`, `nip`, `usernamePembaca`) VALUES
('06-Oct-201', '08.19', '1102225111', 'rezahaha'),
('10-Feb-201', '12.01', '0174512222', 'rezahaha'),
('11-Mei-201', '14.44', '1882517800', 'rajawikaaa'),
('15-Sep-201', '09.31', '1882517800', 'inggarhihi'),
('28-Jun-201', '15.19', '1388270004', 'bagasuuu');

-- --------------------------------------------------------

--
-- Struktur dari tabel `managepenulis`
--

CREATE TABLE `managepenulis` (
  `tanggal` varchar(10) NOT NULL,
  `jam` varchar(10) NOT NULL,
  `nip` varchar(10) NOT NULL,
  `usernamePenulis` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `managepenulis`
--

INSERT INTO `managepenulis` (`tanggal`, `jam`, `nip`, `usernamePenulis`) VALUES
('15-Jul-201', '13.55', '1102225111', 'ekkyyps'),
('20-Agu-201', '09.10', '1882517800', 'sujiwotej'),
('28-Agu-201', '12.43', '1102225111', 'sukisukitime'),
('29-Jul-201', '13.08', '0174512222', 'diraarida'),
('30-Mei-201', '11.30', '1388270004', 'raditya');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembaca`
--

CREATE TABLE `pembaca` (
  `namaPembaca` varchar(200) NOT NULL,
  `emailPembaca` varchar(30) NOT NULL,
  `usernamePembaca` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `tglLahir` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pembaca`
--

INSERT INTO `pembaca` (`namaPembaca`, `emailPembaca`, `usernamePembaca`, `password`, `tglLahir`) VALUES
('bagas priambodo', 'bagas@gmail.com', 'bagasuuu', 'bagasliar', '11-Jan-1995'),
('inggar pancawati', 'inggar@gmail.com', 'inggarhihi', 'inggar1192', '06-Agu-1986'),
('dira prajawika', 'dira@yahoo.co.id', 'rajawikaaa', 'wikatraja12', '23-Mar-2001'),
('reza fahlevi', 'reza@gmail.com', 'rezahaha', 'reza9998', '12-Sep-1990'),
('yunita april', 'yunita@yahoo.com', 'yunitaanita', 'yunitauye', '08-Jun-1990');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penulis`
--

CREATE TABLE `penulis` (
  `namaPenulis` varchar(200) NOT NULL,
  `emailPenulis` varchar(30) NOT NULL,
  `usernamePenulis` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `tglLahir` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `penulis`
--

INSERT INTO `penulis` (`namaPenulis`, `emailPenulis`, `usernamePenulis`, `password`, `tglLahir`) VALUES
('Dira Pancawati', 'dirapenulis@gmail.co.id', 'diraarida', 'anadira', '11-Apr-1998'),
('Ekky Y', 'ekkyyps@gmail.com', 'ekkyyps', 'ekky1717', '23-Mei-1999'),
('Raditya Dika', 'raditya@gmail.co.id', 'raditya', '99raditya', '12-Des-1984'),
('Sujiwo Tejo', 'sujiwobal@gmail.com', 'sujiwotej', '6suji6wo6', '09-Mei-1970'),
('Sukino', 'sukinoaay@yahoo.co.id', 'sukisukitime', '985kinoaa', '19-Juni-1965');

-- --------------------------------------------------------

--
-- Struktur dari tabel `publish`
--

CREATE TABLE `publish` (
  `nip` varchar(10) NOT NULL,
  `isbn` varchar(30) NOT NULL,
  `jam` varchar(6) NOT NULL,
  `tanggal` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `publish`
--

INSERT INTO `publish` (`nip`, `isbn`, `jam`, `tanggal`) VALUES
('0174512222', '999172221', '14.30', '01-Jan-2018'),
('1388270004', '775222112', '08.10', '01-Jan-2018'),
('1388270004', '990017221', '14.36', '01-Jan-2018'),
('1882517800', '888876412', '10.43', '01-Jan-2018'),
('9991637172', '994222177', '11.22', '01-Jan-2018');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`nip`);

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`isbn`);

--
-- Indeks untuk tabel `managebuku`
--
ALTER TABLE `managebuku`
  ADD PRIMARY KEY (`tanggal`,`jam`,`nip`,`isbn`),
  ADD KEY `nip` (`nip`),
  ADD KEY `isbn` (`isbn`);

--
-- Indeks untuk tabel `managepembaca`
--
ALTER TABLE `managepembaca`
  ADD PRIMARY KEY (`tanggal`,`jam`,`nip`,`usernamePembaca`),
  ADD KEY `nip` (`nip`),
  ADD KEY `usernamePembaca` (`usernamePembaca`);

--
-- Indeks untuk tabel `managepenulis`
--
ALTER TABLE `managepenulis`
  ADD PRIMARY KEY (`tanggal`,`jam`,`nip`,`usernamePenulis`),
  ADD KEY `nip` (`nip`),
  ADD KEY `usernamePenulis` (`usernamePenulis`);

--
-- Indeks untuk tabel `pembaca`
--
ALTER TABLE `pembaca`
  ADD PRIMARY KEY (`usernamePembaca`);

--
-- Indeks untuk tabel `penulis`
--
ALTER TABLE `penulis`
  ADD PRIMARY KEY (`usernamePenulis`);

--
-- Indeks untuk tabel `publish`
--
ALTER TABLE `publish`
  ADD PRIMARY KEY (`nip`,`isbn`,`jam`,`tanggal`),
  ADD KEY `isbn` (`isbn`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `managebuku`
--
ALTER TABLE `managebuku`
  ADD CONSTRAINT `managebuku_ibfk_1` FOREIGN KEY (`nip`) REFERENCES `admin` (`nip`),
  ADD CONSTRAINT `managebuku_ibfk_2` FOREIGN KEY (`isbn`) REFERENCES `buku` (`isbn`);

--
-- Ketidakleluasaan untuk tabel `managepembaca`
--
ALTER TABLE `managepembaca`
  ADD CONSTRAINT `managepembaca_ibfk_1` FOREIGN KEY (`nip`) REFERENCES `admin` (`nip`),
  ADD CONSTRAINT `managepembaca_ibfk_2` FOREIGN KEY (`usernamePembaca`) REFERENCES `pembaca` (`usernamePembaca`);

--
-- Ketidakleluasaan untuk tabel `managepenulis`
--
ALTER TABLE `managepenulis`
  ADD CONSTRAINT `managepenulis_ibfk_1` FOREIGN KEY (`nip`) REFERENCES `admin` (`nip`),
  ADD CONSTRAINT `managepenulis_ibfk_2` FOREIGN KEY (`usernamePenulis`) REFERENCES `penulis` (`usernamePenulis`);

--
-- Ketidakleluasaan untuk tabel `publish`
--
ALTER TABLE `publish`
  ADD CONSTRAINT `publish_ibfk_1` FOREIGN KEY (`nip`) REFERENCES `admin` (`nip`),
  ADD CONSTRAINT `publish_ibfk_2` FOREIGN KEY (`isbn`) REFERENCES `buku` (`isbn`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
