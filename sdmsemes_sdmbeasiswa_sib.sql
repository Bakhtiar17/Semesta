-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 08 Feb 2023 pada 08.22
-- Versi server: 5.7.41
-- Versi PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sdmsemes_sdmbeasiswa_sib`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `aktivitas_studi`
--

CREATE TABLE `aktivitas_studi` (
  `ID_AKTIVITAS` int(11) NOT NULL,
  `ID_MONITORING` int(11) NOT NULL,
  `SEMESTER` int(11) NOT NULL,
  `DOSBING_1` varchar(100) DEFAULT NULL,
  `DOSBING_2` varchar(100) DEFAULT NULL,
  `TOPIK_JUDUL_DISERTASI` varchar(300) DEFAULT NULL,
  `PRESENTASE_DISERTASI` int(3) DEFAULT NULL,
  `PRESENTASE_KELULUSAN` int(3) DEFAULT NULL,
  `PENJELASAN_KEMAJUAN_STUDI` text NOT NULL,
  `LANGKAH_KONKRIT_SMT_DEPAN` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `aktivitas_studi_ib`
--

CREATE TABLE `aktivitas_studi_ib` (
  `ID_AKTIVITAS_IB` int(11) NOT NULL,
  `ID_MONITORING_IB` int(11) NOT NULL,
  `SEMESTER` int(11) NOT NULL,
  `DOSBING_1` varchar(100) DEFAULT NULL,
  `DOSBING_2` varchar(100) DEFAULT NULL,
  `TOPIK_JUDUL_DISERTASI` varchar(300) DEFAULT NULL,
  `PRESENTASE_DISERTASI` int(3) DEFAULT NULL,
  `PRESENTASE_KELULUSAN` int(3) DEFAULT NULL,
  `PENJELASAN_KEMAJUAN_STUDI` text NOT NULL,
  `LANGKAH_KONKRIT_SMT_DEPAN` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `aktivitas_studi_ib`
--

INSERT INTO `aktivitas_studi_ib` (`ID_AKTIVITAS_IB`, `ID_MONITORING_IB`, `SEMESTER`, `DOSBING_1`, `DOSBING_2`, `TOPIK_JUDUL_DISERTASI`, `PRESENTASE_DISERTASI`, `PRESENTASE_KELULUSAN`, `PENJELASAN_KEMAJUAN_STUDI`, `LANGKAH_KONKRIT_SMT_DEPAN`) VALUES
(1, 2, 1, 'Jojo', 'zaky', 'UAS', 0, 90, 'sejauh ini sangat kondusif', 'banyak banyak belajar membagi waktu meluangkan waktu belajar'),
(2, 1, 1, 'Prof. Sri Agus Sudjarwo, drh., M.S., Ph.D', 'Dr. Rimayanti, drh., M.Kes.', 'Spermatozoa Ayam', 20, 20, 'Berdiskusi dengan dosen pembimbing terkait dengan proposal penelitian, mengikuti tes toefl pada tanggal 25 Maret 2022 tetapi belum mencapai target nilai.', 'Rencana semester depan akan melakukan penelitian dan belajar toefl');

-- --------------------------------------------------------

--
-- Struktur dari tabel `beasiswa`
--

CREATE TABLE `beasiswa` (
  `ID_BEASISWA` int(11) NOT NULL,
  `NAMA_BEASISWA` varchar(50) NOT NULL,
  `PERIODE` int(11) NOT NULL,
  `TGL_PENDAFTARAN` date NOT NULL,
  `TGL_PENUTUPAN` date NOT NULL,
  `LINK_PENGUMUMAN` varchar(100) DEFAULT NULL,
  `LINK_FILE` varchar(100) DEFAULT NULL,
  `KETERANGAN_BEASISWA` text,
  `status_arsip` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `biodata`
--

CREATE TABLE `biodata` (
  `NIK` varchar(20) NOT NULL,
  `EMAIL` varchar(50) DEFAULT NULL,
  `NAMA` varchar(35) DEFAULT NULL,
  `FOTO` varchar(1024) DEFAULT '',
  `FOTO1` varchar(1024) DEFAULT NULL,
  `NO_KTP` varchar(18) DEFAULT NULL,
  `NIDN` varchar(20) DEFAULT NULL,
  `JENIS_KELAMIN` tinyint(1) DEFAULT NULL,
  `STATUS_MENIKAH` tinyint(1) DEFAULT NULL,
  `TEMPAT_LAHIR` varchar(20) DEFAULT NULL,
  `TGL_LAHIR` date DEFAULT NULL,
  `ALAMAT` varchar(200) DEFAULT NULL,
  `KOTA` varchar(20) DEFAULT NULL,
  `KODE_POS` varchar(6) DEFAULT NULL,
  `HANDPHONE` varchar(13) DEFAULT NULL,
  `STATUS` varchar(50) DEFAULT NULL,
  `ID_UNIT_KERJA` int(11) DEFAULT NULL,
  `UNIT_KERJA` varchar(50) DEFAULT NULL,
  `NPWP` varchar(20) DEFAULT NULL,
  `UNIVERSITAS` varchar(50) DEFAULT NULL,
  `PRODI` varchar(30) DEFAULT NULL,
  `IPK` float DEFAULT NULL,
  `GELAR_DEPAN` varchar(64) DEFAULT NULL,
  `GELAR_BELAKANG` varchar(64) DEFAULT NULL,
  `PANGKAT_GOLONGAN` varchar(30) DEFAULT NULL,
  `TMT_PNS` date DEFAULT NULL,
  `STATUS_PEGAWAI` varchar(10) DEFAULT NULL,
  `STATUS_JABATAN` varchar(10) DEFAULT NULL,
  `NAMA_JABATAN` varchar(30) DEFAULT NULL,
  `JENIS_KEPEGAWAIAN` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `biodata`
--

INSERT INTO `biodata` (`NIK`, `EMAIL`, `NAMA`, `FOTO`, `FOTO1`, `NO_KTP`, `NIDN`, `JENIS_KELAMIN`, `STATUS_MENIKAH`, `TEMPAT_LAHIR`, `TGL_LAHIR`, `ALAMAT`, `KOTA`, `KODE_POS`, `HANDPHONE`, `STATUS`, `ID_UNIT_KERJA`, `UNIT_KERJA`, `NPWP`, `UNIVERSITAS`, `PRODI`, `IPK`, `GELAR_DEPAN`, `GELAR_BELAKANG`, `PANGKAT_GOLONGAN`, `TMT_PNS`, `STATUS_PEGAWAI`, `STATUS_JABATAN`, `NAMA_JABATAN`, `JENIS_KEPEGAWAIAN`) VALUES
('195705051983031005', 'endanus-h@fkg.unair.ac.id', 'ENDANUS HARIJANTO', 'http://cybercampus.unair.ac.id/foto_pegawai/', 'http://cybercampus.unair.ac.id/foto_pegawai/', '3578030505570001', '0005055708', 1, 0, 'MALANG', '1957-05-05', 'RUNGKUT KIDUL R.K IV-E/7 SBY(RUNGKUT ASRI TIMUR II NO 10 SBY)', '', '60293', '0318703271', 'PNS', 242, 'Fakultas Kedokteran Gigi', '058128075616000', 'Universitas Airlangga', 'KEDOKTERAN GIGI', NULL, NULL, 'drg., M.Kes', 'IV/a', NULL, 'Dosen', NULL, NULL, 'PNS'),
('195812071988032001', 'nanik-z@fkg.unair.ac.id', 'NANIK ZUBAIDAH', 'http://cybercampus.unair.ac.id/foto_pegawai/', 'http://cybercampus.unair.ac.id/foto_pegawai/', '3578064712580004', '0007125804', 2, 0, 'LAMONGAN', '1958-12-07', 'JL. DUKUH KUPANG TIMUR XIV/84 SBY', '', '0', '5618368', 'PNS', NULL, 'Fakultas Kedokteran Gigi', '041876988614000', 'Universitas Airlangga', 'KEDOKTERAN GIGI', NULL, NULL, 'drg., M.Kes., SpKG(K)', 'IV/c', NULL, 'Dosen', NULL, NULL, 'PNS'),
('195905281984031002', 'doddy.singgih@fisip.unair.ac.id', 'DODDY SUMBODO SINGGIH', 'http://cybercampus.unair.ac.id/foto_pegawai/', 'http://cybercampus.unair.ac.id/foto_pegawai/', '3578032805590002', '0028055906', 1, 0, 'YOGYAKARTA', '1959-05-28', 'JL. MEDAYU SELATAN XIV/N-9 SURABAYA', '', '60295', '081331679090', 'PNS', 321, 'Fakultas Ilmu Sosial dan Ilmu Politik', '058129149615000', 'Universitas Airlangga', 'SOSIOLOGI', NULL, 'Drs.', 'M.Si.', 'IV/c', NULL, 'Dosen', NULL, NULL, 'PNS'),
('196010101987022001', 'noer-u@fkg.unair.ac.id', 'NOER ULFAH', 'http://cybercampus.unair.ac.id/foto_pegawai/', 'http://cybercampus.unair.ac.id/foto_pegawai/', '3515165010600012', '0010106006', 2, 0, 'SIDOARJO', '1960-10-10', 'PURI SURYA JAYA BLOK K4 NO.6 GEDANGAN SDA', '', '0', '08385993001', 'PNS', NULL, 'Fakultas Kedokteran Gigi', '097626949617001', 'Universitas Airlangga', 'KEDOKTERAN GIGI', NULL, NULL, 'drg., Sp.Perio. (K).,M.Kes.', 'III/c', '1987-02-01', 'Dosen', 'Fungsional', 'Lektor', 'PNS'),
('196011281988121001', 'moh.adib@fisip.unair.ac.id', 'MUHAMMAD ADIB', 'http://cybercampus.unair.ac.id/foto_pegawai/', 'http://cybercampus.unair.ac.id/foto_pegawai/', '3578092811600001', '0028116005', 1, 0, 'JOMBANG', '1960-11-28', 'TIRA MEDAYU REGENCY BLOK B-1 RT.002 RW.001 KELURAHAN  MEDOKAN AYU KECAMATAN RUNGKUT SURABAYA', '', '60295', '08155162342', 'PNS', NULL, 'Fakultas Ilmu Sosial dan Ilmu Politik', '771343068606000', 'Universitas Airlangga', 'ILMU SOSIAL', NULL, 'Dr.', 'Drs., MA.', 'IV/b', NULL, 'Dosen', NULL, NULL, 'PNS'),
('196101251980122003', 'rindayati@vokasi.unair.ac.id', 'RINDAYATI', 'http://cybercampus.unair.ac.id/foto_pegawai/196101251980122003-1610099755.jpg', 'http://cybercampus.unair.ac.id/foto_pegawai/196101251980122003-1610099755.jpg', '3525146501610001', '3425016101', 2, 0, 'BLITAR', '1961-01-25', 'Jl. Mahakam 04 Randu Agung Kebomas Gresik', '', '61121', '0313984096', 'PNS', 250, 'Fakultas Kesehatan Masyarakat', '799864327612000 ', 'Universitas Airlangga', 'ADMINISTRASI DAN KEBIJAKAN KES', NULL, NULL, 'S.Kep., Ns., M.Kep.', 'III/d', '1980-12-01', 'Dosen', 'Fungsional', 'Asisten Ahli', 'PNS'),
('196309071990022001', 'devi-r@fkg.unair.ac.id', 'DEVI RIANTI', 'http://cybercampus.unair.ac.id/foto_pegawai/', 'http://cybercampus.unair.ac.id/foto_pegawai/', '3578244709630001', '0007096308', 2, 0, 'SURABAYA', '1963-09-07', 'JL.TENGGILIS MEJOYO SELATAN II/27 SBY', '', '0', '8415088', 'PNS', NULL, 'Fakultas Kedokteran Gigi', '064807134615000', 'Universitas Airlangga', 'KEDOKTERAN GIGI', NULL, NULL, 'drg., M.Kes', 'IV/b', NULL, 'Dosen', NULL, NULL, 'PNS'),
('196312151989031002', 'trisnadi-w-c-p@fst.unair.ac.id', 'TRISNADI WIDYALEKSONO CATUR PUTRANT', 'http://cybercampus.unair.ac.id/foto_pegawai/', 'http://cybercampus.unair.ac.id/foto_pegawai/', '3515181512630003', '0015126305', 1, 0, 'NGAWI', '1963-12-15', 'GRIYO MAPAN SANTOSA FA-V/I WARU SIDOARJO', '', '61256', '08113429166', 'PNS', 248, 'Fakultas Sains dan Teknologi', '815898598643000', 'Universitas Airlangga', 'TEKNIK LINGKUNGAN', NULL, 'Drs.', 'M.Si.', 'III/c', NULL, 'Dosen', NULL, NULL, 'PNS'),
('196501021987011001', 'basuni@staf.unair.ac.id', 'BASUNI', 'http://cybercampus.unair.ac.id/foto_pegawai/', 'http://cybercampus.unair.ac.id/foto_pegawai/', '196501021987011001', NULL, 1, 0, 'BOJONEGORO', '1965-01-02', 'JL.KRUKAH LAMA  VII/6 SURABAYA', '', '0', '08155005839', 'PNS', 67, NULL, '683441109609000', 'Universitas Airlangga', 'KEDOKTERAN', NULL, '-', 'Drs., MM.', NULL, NULL, 'Tendik', NULL, NULL, 'PNS'),
('196509192006042001', 'sofiatun@vokasi.unair.ac.id', 'SOFIATUN', 'https://cybercampus.unair.ac.id/foto_pegawai/196509192006042001-1566268124.jpeg', 'https://cybercampus.unair.ac.id/foto_pegawai/196509192006042001-1566268124.jpeg', '196509192006042001', NULL, 2, 0, NULL, '2065-09-19', NULL, '', '0', NULL, 'PNS', 117, NULL, '356825968619000 ', 'Universitas Airlangga', 'MANAJEMEN PERBANKAN', NULL, NULL, 'S.Kep.Ners.', 'III/b', NULL, 'Tendik', NULL, NULL, 'PNS'),
('196604141992031010', 'susilo.harianto@vokasi.unair.ac.id', 'Susilo Harianto', '/', '/', '3525041404660004', '3414046601', 1, 0, 'GRESIK', '1966-04-14', 'Gluranploso, RT 02, RW 01, Kec. Benjeng Kab. Gresik', '', '61172', '081230948438', 'PNS', 250, 'Fakultas Kesehatan Masyarakat', '799864442642000 ', 'Universitas Airlangga', 'ADMINISTRASI DAN KEBIJAKAN KES', NULL, NULL, 'S.Kep., Ns., M.Kep.', 'III/d', '1994-01-03', 'Dosen', 'Fungsional', 'Lektor', 'PNS'),
('196609261994032001', 'ratna-d@fkh.unair.ac.id', 'RATNA DAMAYANTI', 'http://cybercampus.unair.ac.id/foto_pegawai/196609261994032001-1635308195.jpg', 'http://cybercampus.unair.ac.id/foto_pegawai/196609261994032001-1635308195.jpg', '3578036609660002', '0026096603', 2, 0, 'SURABAYA', '1966-09-26', 'JL. RUNGKUT ASRI BARAT 3 / 7 SURABAYA', '', '60293', '0318702516', 'PNS', 246, 'Fakultas Kedokteran Hewan', '587286790615000', 'Universitas Airlangga', 'KEDOKTERAN HEWAN', NULL, NULL, 'M.Kes., Drh', 'III/c', NULL, 'Dosen', NULL, NULL, 'PNS'),
('196609271997022001', 'santi-m@fkm.unair.ac.id', 'SANTI MARTINI', 'http://cybercampus.unair.ac.id/foto_pegawai/', 'http://cybercampus.unair.ac.id/foto_pegawai/', '3578096709660004', '0027096603', 2, 0, 'MADIUN', '1966-09-27', 'PERUM. ITS BLOK T-18 KEPUTIH SUKOLILO', '', '60111', '0315920984', 'PNS', NULL, 'Fakultas Kesehatan Masyarakat', '683440622606000', 'Universitas Airlangga', 'KESEHATAN MASYARAKAT', NULL, 'Dr.', 'dr., M.Kes', 'IV/a', NULL, 'Dosen', NULL, NULL, 'PNS'),
('196703041992032001', 'miratul-k@fst.unair.ac.id', 'MIRATUL KHASANAH', 'http://cybercampus.unair.ac.id/foto_pegawai/', 'http://cybercampus.unair.ac.id/foto_pegawai/', '3515074403670002', '0004036705', 2, 0, 'TULUNGAGUNG', '1967-03-04', 'PERUM. TAMAN CANDI LOKA BLOK G-II/11 CANDI SIDOARJO', '', '61271', '08123077233', 'PNS', 248, 'Fakultas Sains dan Teknologi', '256513805617000', 'Universitas Airlangga', 'KIMIA', NULL, 'Dr.', 'M.Si.', 'IV/a', NULL, 'Dosen', NULL, NULL, 'PNS'),
('196703061996011001', 'm.luthfi@fkg.unair.ac.id', 'MUHAMMAD LUTHFI', 'http://cybercampus.unair.ac.id/foto_pegawai/', 'http://cybercampus.unair.ac.id/foto_pegawai/', '3578040603670003', '0006036704', 1, 0, 'SURABAYA', '1967-03-06', 'JL.JAGIR SIDORESMO II/8 SBY', '', '0', '8471494', 'PNS', NULL, 'Fakultas Kedokteran Gigi', '086376688609000', 'Universitas Airlangga', 'KEDOKTERAN GIGI', NULL, 'Dr.', 'drg., M.Ke', 'IV/a', NULL, 'Dosen', NULL, NULL, 'PNS'),
('196704022007012042', 'mardiana@staf.unair.ac.id', 'MARDIANA', 'https://cybercampus.unair.ac.id/foto_pegawai/196704022007012042-1479356284.JPG', 'https://cybercampus.unair.ac.id/foto_pegawai/196704022007012042-1479356284.JPG', '196704022007012042', NULL, 2, 0, 'SURABAYA', '1967-04-02', NULL, '', '0', NULL, 'PNS', 189, NULL, '771278710604000', 'Universitas Airlangga', 'KESEHATAN MASYARAKAT', NULL, 'Dra.Ec.', NULL, 'III/d', NULL, 'Tendik', NULL, NULL, 'PNS'),
('196708281993032003', 'nurul_widayati@staf.unair.ac.id', NULL, 'https://cybercampus.unair.ac.id/foto_pegawai/196708281993032003.JPG', 'https://cybercampus.unair.ac.id/foto_pegawai/196708281993032003.JPG', '196708281993032003', NULL, NULL, 0, NULL, NULL, NULL, '', '0', NULL, NULL, NULL, NULL, NULL, 'Universitas Airlangga', NULL, NULL, NULL, NULL, 'III/b', NULL, 'Tendik', NULL, NULL, NULL),
('196802151992031011', 'pcucukrahmadi@vokasi.unair.ac.id', 'CUCUK RAHMADI PURWANTO', '/', '/', '3524191602680003', '3415026801', 1, 0, 'LAMONGAN', '1968-02-15', 'RT04/ RW02 Desa Kembangbahu Kec. Kembangbahu Kab. Lamongan', '', '62282', '081330611024', 'PNS', NULL, 'Fakultas Vokasi', '343313375645000', 'Universitas Airlangga', 'KEPERAWATAN', NULL, NULL, 'S.Kp., M.Kes.', 'IV/a', '2022-04-01', 'Dosen', 'Fungsional', 'Lektor', 'PNS'),
('196806281991031006', 'abdoel.nasir@vokasi.unair.ac.id', 'Abd.Nasir', 'http://cybercampus.unair.ac.id/foto_pegawai/196806281991031006-1610598871.jpg', 'http://cybercampus.unair.ac.id/foto_pegawai/196806281991031006-1610598871.jpg', '3525122806680001', '3428066801', 1, 0, 'SURABAYA', '1968-06-28', 'Bungah, RT 022, RW 008 Bungah Gresik', '', '61152', '081357574200', 'PNS', 250, 'Fakultas Kesehatan Masyarakat', '086665742612000 ', 'Universitas Airlangga', 'ADMINISTRASI DAN KEBIJAKAN KES', NULL, NULL, 'S.Kep., Ns., M.Kep.', 'III/c', '1991-01-03', 'Dosen', 'Fungsional', 'Lektor', 'PNS'),
('196810041998021001', 'mochtar-l@fib.unair.ac.id', 'MOCHTAR LUTFI', 'http://cybercampus.unair.ac.id/foto_pegawai/', 'http://cybercampus.unair.ac.id/foto_pegawai/', '3515060410680004', '0004106803', 1, 0, 'PACITAN', '1968-10-04', 'PERUM.PONDOK TANGGULANGIN ASRI BLK DI/5 SIDOARJO', '', '61200', '0318069396', 'PNS', 252, 'Fakultas Ilmu Budaya', '256931882617000', 'Universitas Airlangga', 'BAHASA DAN SASTRA INDONESIA', NULL, NULL, 'S.S., M.Hum.', 'IV/a', NULL, 'Dosen', NULL, NULL, 'PNS'),
('196901101993032002', 'mahmudah@fkm.unair.ac.id', 'MAHMUDAH', 'http://cybercampus.unair.ac.id/foto_pegawai/', 'http://cybercampus.unair.ac.id/foto_pegawai/', '3515105001690002', '0010016902', 2, 0, 'SIDOARJO', '1969-01-10', 'DS. BECIRONGENGOR KEC. WONOAYU SDA', '', '61261', '03158255890', 'PNS', NULL, 'Fakultas Kesehatan Masyarakat', '683440598603000', 'Universitas Airlangga', 'KESEHATAN MASYARAKAT', NULL, 'Dr.', 'Ir., M.Kes', 'IV/b', NULL, 'Dosen', NULL, NULL, 'PNS'),
('196902212007011001', 'nanangsupriyadi@staf.unair.ac.id', 'NANANG SUPRIYADI', 'https://cybercampus.unair.ac.id/foto_pegawai/196902212007011001-1664412022.jpeg', 'https://cybercampus.unair.ac.id/foto_pegawai/196902212007011001-1664412022.jpeg', '196902212007011001', NULL, 1, 0, NULL, '1969-02-21', NULL, '', '0', NULL, 'PNS', 44, 'Asrama Mahasiswa UA', '771342235603000', 'Universitas Airlangga', NULL, NULL, NULL, NULL, 'II/d', NULL, 'Tendik', NULL, NULL, 'PNS'),
('196906231997022001', 'sriendah.kinasih@fisip.unair.ac.id', 'SRI ENDAH KINASIH', 'http://cybercampus.unair.ac.id/foto_pegawai/196906231997022001-1641824325.jpg', 'http://cybercampus.unair.ac.id/foto_pegawai/196906231997022001-1641824325.jpg', '3578066306690008', '0023066901', 2, 0, 'SURABAYA', '1969-06-23', 'PETEMON BARAT 227 H RT.001 RW.001 KELURAHAN KUPANG KRAJAN KECAMATAN SAWAHAN', '', '60253', '08123595024', 'PNS', 321, 'Fakultas Ilmu Sosial dan Ilmu Politik', '771343100614000', 'Universitas Airlangga', 'ANTROPOLOGI', NULL, NULL, 'S.Sos., M.Si.', 'IV/a', NULL, 'Dosen', NULL, NULL, 'PNS'),
('196907011993031001', 'm-fauzi@staf.unair.ac.id', 'MOCHAMAD FAUZI', 'http://cybercampus.unair.ac.id/foto_pegawai/', 'http://cybercampus.unair.ac.id/foto_pegawai/', '196907011993031001', NULL, 1, 0, 'JOMBANG', '1969-07-01', 'KEDINDING LOR GG.TERATAI No.115 SURABAYA', '', '0', '085230472467', 'PNS', 243, 'Fakultas Hukum', '683440796619000', 'Universitas Airlangga', NULL, NULL, NULL, 'SE.', 'IV/a', NULL, 'Tendik', NULL, NULL, 'PNS'),
('196908101997021001', 'mochjalal@fib.unair.ac.id', 'MOCH. JALAL', 'http://cybercampus.unair.ac.id/foto_pegawai/', 'http://cybercampus.unair.ac.id/foto_pegawai/', '1214071008690006', '0010086905', 1, 0, 'BOJONEGORO', '1969-08-10', 'MUTIARA CITRA ASRI C-5 / 15 CANDI - SIDOARJO', '', '61271', '081331434471', 'PNS', 252, 'Fakultas Ilmu Budaya', '254865280617000', 'Universitas Airlangga', 'BAHASA DAN SASTRA INDONESIA', NULL, NULL, 'S.S., M.Hum.', 'IV/c', '1997-02-01', 'Dosen', 'Fungsional', 'Lektor Kepala', 'PNS'),
('196909121997022001', 'endang_dm@fpk.unair.ac.id', 'ENDANG DEWI MASITHAH', 'http://cybercampus.unair.ac.id/foto_pegawai/196909121997022001-1616654075.jpeg', NULL, '3525135209690013', '0012096902', 2, 0, 'MALANG', NULL, 'MULYOSARI MAS F-21 SURABAYA', '', '60112', '08113003849', 'PNS', NULL, NULL, NULL, 'Universitas Airlangga', 'AKUAKULTUR', NULL, 'Dr.', 'Ir.,MP.', 'III/d', NULL, 'Dosen', NULL, NULL, NULL),
('196912092007011001', 'mochamad-riyadi@staf.unair.ac.id', 'MOCHAMAD RIYADI', 'https://cybercampus.unair.ac.id/foto_pegawai/196912092007011001.JPG', 'https://cybercampus.unair.ac.id/foto_pegawai/196912092007011001.JPG', '196912092007011001', NULL, 1, 0, 'KEDIRI', '1969-12-09', NULL, '', '0', NULL, 'PNS', 100, NULL, '771346848603000', 'Universitas Airlangga', 'PENDIDIKAN PROFESI DOKTER GIGI', NULL, NULL, 'SE', 'II/d', NULL, 'Tendik', NULL, NULL, 'PNS'),
('197003011994121001', 'sugiharto@fst.unair.ac.id', 'SUGIHARTO', 'http://cybercampus.unair.ac.id/foto_pegawai/', 'http://cybercampus.unair.ac.id/foto_pegawai/', '3578100103700009', '0001037003', 1, 0, 'SURABAYA', '1970-03-01', 'JL. MANYAR REJO VI/10 SURABAYA', '', '60118', '087754001430', 'PNS', 248, 'Fakultas Sains dan Teknologi', '252138995619000', 'Universitas Airlangga', 'BIOLOGI', NULL, NULL, 'S.Si., M.Si', 'IV/a', '1997-05-01', 'Dosen', 'Fungsional', 'Lektor Kepala', 'PNS'),
('197004102000122001', 'harmayetty@fkp.unair.ac.id', 'HARMAYETTY', 'http://cybercampus.unair.ac.id/foto_pegawai/197004102000122001-1579752863.jpg', 'http://cybercampus.unair.ac.id/foto_pegawai/197004102000122001-1579752863.jpg', '1304045004700004', '0010047002', 2, 0, 'TANAH DATAR', '1970-04-10', 'JL. WONOREJO SELATAN II KAV 200 NO 35 SURABAYA', '', '0', '08123214824', 'PNS', NULL, 'Fakultas Keperawatan', '148610165204000', 'Universitas Airlangga', 'KEPERAWATAN', NULL, NULL, 'S.Kp., M.Kes.', 'III/c', NULL, 'Dosen', NULL, NULL, 'PNS'),
('197008141995032002', 'lilis.indrawati@staf.unair.ac.id', 'Lilis Indrawati', 'https://cybercampus.unair.ac.id/foto_pegawai/197008141995032002-1637226308.jpg', 'https://cybercampus.unair.ac.id/foto_pegawai/197008141995032002-1637226308.jpg', '197008141995032002', NULL, 2, 0, 'TRENGGALEK', '1970-08-14', 'Jl. Sampit no.37 GKB Gresik', '', '0', '081249929039', 'PNS', 674, NULL, '799864392612000 ', 'Universitas Airlangga', 'KEPERAWATAN', NULL, NULL, 'S.Kep.Ns., M.M.', 'IV/a', '1997-03-01', 'Tendik', 'Pilih Stat', 'staf administrasi akademik', 'PNS'),
('197101042008121001', 'taufik@fst.unair.ac.id', 'TAUFIK', 'http://cybercampus.unair.ac.id/foto_pegawai/197101042008121001-1509957634.JPG', 'http://cybercampus.unair.ac.id/foto_pegawai/197101042008121001-1509957634.JPG', '3578120401710003', '0004017109', 1, 0, 'SURABAYA', '1971-01-04', 'JALAN KEMUDI NO 26 SURABAYA', '', '60163', '085108055597', 'PNS', 248, 'Fakultas Sains dan Teknologi', '269793683613000', 'Universitas Airlangga', 'SISTEM INFORMASI', NULL, NULL, 'S.T., M.Kom.', 'III/c', '2008-12-01', 'Dosen', 'Fungsional', 'Lektor', 'PNS'),
('197104272002122001', 'ariardhi@staf.unair.ac.id', 'ARI ARDHI ASIH SETJOWIJONO', 'https://cybercampus.unair.ac.id/foto_pegawai/197104272002122001-1627103339.jpg', 'https://cybercampus.unair.ac.id/foto_pegawai/197104272002122001-1627103339.jpg', '197104272002122001', NULL, 2, 0, 'SURABAYA', '1971-04-27', NULL, '', '0', NULL, 'PNS', 245, 'Fakultas Farmasi', '683439665619000', 'Universitas Airlangga', NULL, NULL, NULL, 'S.Pd', 'III/a', NULL, 'Tendik', NULL, NULL, 'PNS'),
('197106011995032003', 'emuliana.sulpat@vokasi.unair.ac.id', 'Emuliana Sulpat', 'https://cybercampus.unair.ac.id/foto_pegawai/197106011995032003-1577277240.jpg', 'https://cybercampus.unair.ac.id/foto_pegawai/197106011995032003-1577277240.jpg', '197106011995032003', '3401067101', 2, 0, 'PALEMBANG', '1971-06-01', NULL, '', '61171', NULL, 'PNS', 306, 'Fakultas Vokasi', NULL, 'Universitas Airlangga', NULL, NULL, NULL, 'S.Kep., Ns., M.Kes.', 'III/c', '2017-04-01', 'Tendik', 'Struktural', 'Asisten Ahli', 'PNS'),
('197107122008122001', 'purbandini@fst.unair.ac.id', 'PURBANDINI', 'http://cybercampus.unair.ac.id/foto_pegawai/197107122008122001-1557878896.jpg', 'http://cybercampus.unair.ac.id/foto_pegawai/197107122008122001-1557878896.jpg', '3578145207710005', '0012077103', 2, 0, 'SURABAYA', '1971-07-12', 'GRIYA AIRLANGGA C-14 WONOREJO RUNGKUT SURABAYA', '', '60296', '085230045971', 'PNS', NULL, 'Fakultas Sains dan Teknologi', '241313154604000', 'Universitas Airlangga', 'SISTEM INFORMASI', NULL, NULL, 'S.Si., M.Kom.', 'III/c', '2008-12-01', 'Dosen', 'Fungsional', 'Lektor', 'PNS'),
('197111102007011001', 'sugeng.riyanto@staf.unair.ac.id', 'SUGENG RIYANTO', 'https://cybercampus.unair.ac.id/foto_pegawai/197111102007011001.JPG', 'https://cybercampus.unair.ac.id/foto_pegawai/197111102007011001.JPG', '197111102007011001', NULL, 1, 0, 'NGANJUK', '1971-11-10', NULL, '', '0', NULL, 'PNS', 244, 'Fakultas Ekonomi dan Bisnis', '587282385655000', 'Universitas Airlangga', NULL, NULL, NULL, 'S.E.', 'II/c', NULL, 'Tendik', NULL, NULL, 'PNS'),
('197203022010121001', 'hermawan-s@fk.unair.ac.id', 'HERMAWAN SUSANTO', 'http://cybercampus.unair.ac.id/foto_pegawai/', 'http://cybercampus.unair.ac.id/foto_pegawai/', NULL, '0002037209', 1, 0, 'JOMBANG', '1972-03-02', 'JL.RAYA RUNGKUT MEJOYO 24', '', '60293', '08175255441', 'PNS', 221, 'Fakultas Kedokteran', NULL, 'Universitas Airlangga', 'ILMU PENYAKIT DALAM', NULL, NULL, 'dr., Sp. PD.', 'III/b', NULL, 'Dosen', NULL, NULL, 'PNS'),
('197203241999031001', 'andy.umardiono@vokasi.unair.ac.id', 'ANDY UMARDIONO', 'http://cybercampus.unair.ac.id/foto_pegawai/197203241999031001-1537760392.jpg', 'http://cybercampus.unair.ac.id/foto_pegawai/197203241999031001-1537760392.jpg', '3578082403720004', '0024037201', 1, 0, 'MALANG', '1972-03-24', 'MANYAR SAMBONGAN 75 F SBY', '', '0', '0818319562', 'PNS', 306, 'Fakultas Vokasi', '771343175606000', 'Universitas Airlangga', 'KEPARIWISATAAN / BINA WISATA', NULL, NULL, 'S.Sos., M.Si.', 'III/c', NULL, 'Dosen', NULL, NULL, 'PNS'),
('197203311994032004', 'iswatun@vokasi.unair.ac.id', 'Iswatun', 'http://cybercampus.unair.ac.id/foto_pegawai/197203311994032004-1588738518.jpeg', 'http://cybercampus.unair.ac.id/foto_pegawai/197203311994032004-1588738518.jpeg', '3524177103720001', '3431037201', 2, 0, 'LAMONGAN', '1972-03-31', 'Dukoh, Rt.04, Rw.02 Ds Sukolilo Kec Sukodadi Kab Lamongan', '', '62253', '(031) 5033869', 'PNS', 250, 'Fakultas Kesehatan Masyarakat', '253278915645000', 'Universitas Airlangga', 'ADMINISTRASI DAN KEBIJAKAN KES', NULL, NULL, 'S.Kep., Ns., M.Kep.', 'III/d', '1994-01-04', 'Dosen', 'Fungsional', 'Asisten Ahli', 'PNS'),
('197204012007012001', 'sri.ulimah@staf.unair.ac.id', 'SRI ULIMAH', 'https://cybercampus.unair.ac.id/foto_pegawai/197204012007012001-1630500719.jpeg', 'https://cybercampus.unair.ac.id/foto_pegawai/197204012007012001-1630500719.jpeg', '197204012007012001', NULL, 2, 0, 'JOMBANG', '1972-04-01', NULL, '', '0', NULL, 'PNS', 189, NULL, '683457360611000', 'Universitas Airlangga', 'KESEHATAN MASYARAKAT', NULL, NULL, 'S.E., M.M', 'II/d', NULL, 'Tendik', NULL, NULL, 'PNS'),
('197204242008121002', 'faridlusno@fkm.unair.ac.id', 'M. FARID DIMJATI LUSNO', 'http://cybercampus.unair.ac.id/foto_pegawai/197204242008121002-1549876205.jpg', 'http://cybercampus.unair.ac.id/foto_pegawai/197204242008121002-1549876205.jpg', '3578102404720009', '0024047206', 1, 0, 'SURABAYA', '1972-04-24', 'JL. Karang Asem XII-A/27, SURABAYA', '', '60133', '085231110555', 'PNS', NULL, 'Fakultas Kesehatan Masyarakat', '816068696619000', 'Universitas Airlangga', 'KESEHATAN MASYARAKAT', NULL, NULL, 'dr., M.KL.', 'III/b', NULL, 'Dosen', NULL, NULL, 'PNS'),
('197205021999031002', 'bambang-s-z@ff.unair.ac.id', 'BAMBANG SUBAKTI ZULKARNAIN', 'http://cybercampus.unair.ac.id/foto_pegawai/', 'http://cybercampus.unair.ac.id/foto_pegawai/', '3578240205720001', '0002057205', 1, 0, 'SURABAYA', '1972-05-02', 'JL. KENDANGSARI V NO.1 YKP, SURABAYA', '', '60292', '08113419355', 'PNS', 245, 'Fakultas Farmasi', '194308441615000', 'Universitas Airlangga', 'SPESIALIS FARMASI', NULL, NULL, 'S.Si., Apt., M.Clin.Pharm', 'III/d', '2000-09-01', 'Dosen', 'Fungsional', 'Lektor', 'PNS'),
('197205152005012001', 'dewimeyrasyawati@fib.unair.ac.id', 'DEWI MEYRASYAWATI', 'http://cybercampus.unair.ac.id/foto_pegawai/', 'http://cybercampus.unair.ac.id/foto_pegawai/', '3578035505720004', '0015057210', 2, 0, 'DENPASAR', '1972-05-15', 'JL. MEDOKAN ASRI UTARA 14 / MA III-3 R NO. 3 SURABAYA', '', '60295', '081290318173', 'PNS', NULL, 'Fakultas Ilmu Budaya', '341071785615000', 'Universitas Airlangga', 'BAHASA DAN SASTRA INGGRIS', NULL, NULL, 'S.S., M.A. M.Hum', 'III/c', NULL, 'Dosen', NULL, NULL, 'PNS'),
('197206172009102001', 'rochmatus-solichah@staf.unair.ac.id', 'ROCHMATUS SOLICHAH', 'https://cybercampus.unair.ac.id/foto_pegawai/197206172009102001.JPG', 'https://cybercampus.unair.ac.id/foto_pegawai/197206172009102001.JPG', '197206172009102001', NULL, 2, 0, 'SURABAYA', '1972-06-17', NULL, '', '0', NULL, 'PNS', 534, NULL, '344733647606000', 'Universitas Airlangga', 'BEDAH MULUT DAN MAKSILOFASIAL', NULL, NULL, NULL, 'III/a', NULL, 'Tendik', NULL, NULL, 'PNS'),
('197208091999032001', 'muryantinah.mulyo@psikologi.unair.ac.id', 'MURYANTINAH MULYO HANDAYANI', 'http://cybercampus.unair.ac.id/foto_pegawai/', 'http://cybercampus.unair.ac.id/foto_pegawai/', '3515084908720005', '0009087002', 2, 0, 'NGAWI', '1972-08-09', 'ISTANA MENTARI B4-20 SIDOARJO', '', '0', '08174142700', 'PNS', 251, 'Fakultas Psikologi', '771341906646000', 'Universitas Airlangga', 'PSIKOLOGI PROFESI ', NULL, 'S.Psi', 'M.Psych (Ed & Dev)', 'III/d', NULL, 'Dosen', NULL, NULL, 'PNS'),
('197209202009102002', 'dwisulistiyarini@staf.unair.ac.id', 'Dwi Sulistiyarini', 'http://cybercampus.unair.ac.id/foto_pegawai/197209202009102002-1619428255.jpg', 'http://cybercampus.unair.ac.id/foto_pegawai/197209202009102002-1619428255.jpg', '197209202009102002', NULL, 2, 0, 'NGANJUK', '1972-09-20', 'JL. KARANGMENJANGAN NO.76 SURABAYA', '', '0', NULL, 'PNS', 690, 'Fakultas Teknologi Maju dan Multidisiplin', '587282617655000', 'Universitas Airlangga', NULL, NULL, NULL, 'S.H.', 'III/c', NULL, 'Tendik', NULL, NULL, 'PNS'),
('197212172007012001', 'sugiani@staf.unair.ac.id', 'SUGIANI', 'https://cybercampus.unair.ac.id/foto_pegawai/197212172007012001.JPG', 'https://cybercampus.unair.ac.id/foto_pegawai/197212172007012001.JPG', '197212172007012001', NULL, 2, 0, 'MOJOKERTO', '1972-12-17', NULL, '', '0', NULL, 'PNS', 1, 'Perpustakaan', '771342854606000', 'Universitas Airlangga', NULL, NULL, NULL, NULL, 'II/d', NULL, 'Tendik', NULL, NULL, 'PNS'),
('197301192002122001', 'fadliyahlaila@vokasi.unair.ac.id', 'LAILATUL FADLIYAH', 'http://cybercampus.unair.ac.id/foto_pegawai/197301192002122001-1589170519.jpg', 'http://cybercampus.unair.ac.id/foto_pegawai/197301192002122001-1589170519.jpg', '3525095901730001', '3419017301', 2, 0, 'GRESIK', '1973-01-19', 'Desa Sukorejo RT 1, RW 1, Kec Sidayu Kab Gresik', '', '61153', '031-5033869, ', 'PNS', 250, 'Fakultas Kesehatan Masyarakat', '896919172612000', 'Universitas Airlangga', 'ADMINISTRASI DAN KEBIJAKAN KES', NULL, NULL, 'S.ST., M.K', 'III/b', NULL, 'Dosen', NULL, NULL, 'PNS'),
('197306112008011015', 'gayung-k@fib.unair.ac.id', 'GAYUNG KASUMA', 'http://cybercampus.unair.ac.id/foto_pegawai/', 'http://cybercampus.unair.ac.id/foto_pegawai/', '3471041106730001', '0011067304', 1, 0, 'PALEMBANG', '1973-06-11', 'GRIYA AIRLANGGA BLOK D 33, WONOREJO, RUNGKUT, SURABAYA', '', '0', '0818271926', 'PNS', 252, 'Fakultas Ilmu Budaya', '587287756615000', 'Universitas Airlangga', 'ILMU SEJARAH', NULL, NULL, 'S.S., M.Hum.', 'III/c', NULL, 'Dosen', NULL, NULL, 'PNS'),
('197308231998031008', 'khotibul.umam@vokasi.unair.ac.id', 'Khotibul Umam', 'http://cybercampus.unair.ac.id/foto_pegawai/197308231998031008-1580786741.jpg', 'http://cybercampus.unair.ac.id/foto_pegawai/197308231998031008-1580786741.jpg', '3524172308730001', '3423087301', 1, 0, 'LAMONGAN', '1973-08-23', 'Ds Sukodadi RT 01 RW 03 Sukodadi Lamongan', '', '62253', '085230167800', 'PNS', NULL, 'Fakultas Kesehatan Masyarakat', '344043187645000', 'Universitas Airlangga', 'ADMINISTRASI DAN KEBIJAKAN KES', NULL, NULL, 'M.Kes.', 'III/c', NULL, 'Dosen', NULL, NULL, 'PNS'),
('197312052003122001', 'dyah-f@fk.unair.ac.id', 'DYAH FAUZIAH', 'http://cybercampus.unair.ac.id/foto_pegawai/', 'http://cybercampus.unair.ac.id/foto_pegawai/', '3578034512730001', '0005127309', 2, 0, 'JAKARTA SELATAN', '1973-12-05', 'JL.PENJARINGAN SARI PS 2B/40 SURABAYA', '', '60297', '082291178281', 'PNS', NULL, 'Fakultas Kedokteran', '249561234615000', 'Universitas Airlangga', 'PATOLOGI ANATOMIK', NULL, NULL, 'dr., Sp.PA.', 'III/c', NULL, 'Dosen', NULL, NULL, 'PNS'),
('197312142001122001', 'lusvita-f-n@fib.unair.ac.id', 'LUSVITA FITRI NUZULIYANTI', 'http://cybercampus.unair.ac.id/foto_pegawai/', 'http://cybercampus.unair.ac.id/foto_pegawai/', '3578085412730001', '0014127302', 2, 0, 'BLITAR', '1973-12-14', 'KEDUNGTARUKAN BARU I/32 SURABAYA', '', '0', '03172164500', 'PNS', 252, 'Fakultas Ilmu Budaya', '587287640606000', 'Universitas Airlangga', 'BAHASA DAN SASTRA INGGRIS', NULL, NULL, 'S.S., M.App.Ling.', 'III/b', NULL, 'Dosen', NULL, NULL, 'PNS'),
('197401062005011001', 'habib@feb.unair.ac.id', 'HABIBURROCHMAN', 'http://cybercampus.unair.ac.id/foto_pegawai/197401062005011001-1623648429.jpg', 'http://cybercampus.unair.ac.id/foto_pegawai/197401062005011001-1623648429.jpg', '3578080601740001', '0006017404', 1, 0, 'BANGKALAN', '1974-01-06', 'JLN. KARANG MENJANGAN II/24 SURABAYA', '', '60285', '08121675880', 'PNS', 244, 'Fakultas Ekonomi dan Bisnis', '587281874606000', 'Universitas Airlangga', 'PENDIDIKAN PROFESI AKUNTAN', NULL, NULL, 'SE., M.Si., Ak.', 'III/d', NULL, 'Dosen', NULL, NULL, 'PNS'),
('197401262018035101', 'andimuharwin@staf.unair.ac.id', 'ANDI MUHARWIN', 'https://cybercampus.unair.ac.id/foto_pegawai/197401262018035101.JPG', 'https://cybercampus.unair.ac.id/foto_pegawai/197401262018035101.JPG', '197401262018035101', NULL, 1, 0, 'BANGKALAN', '1974-01-26', 'PANCAR UTARA NO 142 RT 2 RW 2 BURNEH - BANGKALAN', '', '0', '082234437775', 'PEGAWAI TIDAK TETAP', 244, 'Fakultas Ekonomi dan Bisnis', '704861582644000', 'Universitas Airlangga', NULL, NULL, NULL, NULL, NULL, '2014-01-01', 'Tendik', 'Fungsional', 'Driver', 'PEGAWAI TIDAK TETAP'),
('197401271998022001', 'endah.mastuti@psikologi.unair.ac.id', 'ENDAH MASTUTI', 'http://cybercampus.unair.ac.id/foto_pegawai/', 'http://cybercampus.unair.ac.id/foto_pegawai/', '3578036701740002', '0027017405', 2, 0, 'TULUNGAGUNG', '1974-01-27', 'MEDAYU UTARA IV/26 RT 001/009 RUNGKUT, SURABAYA', '', '60295', '08155111953', 'PNS', NULL, 'Fakultas Psikologi', '097666044615001', 'Universitas Airlangga', 'PSIKOLOGI PROFESI ', NULL, NULL, 'S.Psi., M.Si', 'IV/a', NULL, 'Dosen', NULL, NULL, 'PNS'),
('197403201999032001', 'ikaatma@feb.unair.ac.id', 'IKA ATMA KURNIAWANTI', 'http://cybercampus.unair.ac.id/foto_pegawai/', 'http://cybercampus.unair.ac.id/foto_pegawai/', '3578186003740001', '0020037403', 2, 0, 'SURABAYA', '1974-03-20', 'JAGAKARSA RESIDENCE C2 NO.5, JL. KEBAGUSAN RAYA 24 JAKARTA SELATAN', '', '0', '081331411011', 'PNS', 244, 'Fakultas Ekonomi dan Bisnis', '078554763604000', 'Universitas Airlangga', 'AKUNTANSI', NULL, NULL, 'SE., M.Si., Ak.', 'III/c', '2009-10-01', 'Dosen', 'Fungsional', 'Lektor', 'PNS'),
('197406032008011012', 'ahmadin@fst.unair.ac.id', 'AHMADIN', 'http://cybercampus.unair.ac.id/foto_pegawai/', 'http://cybercampus.unair.ac.id/foto_pegawai/', '3573032707870006', '0003067406', 1, 0, 'JOMBANG', '1974-06-03', 'JL. KEDINDING LOR GANG TULIP 25 A SURABAYA', '', '60129', '031-5015947', 'PNS', 248, 'Fakultas Sains dan Teknologi', '340017383619000', 'Universitas Airlangga', 'MATEMATIKA', NULL, 'Dr.', 'S.Si., M.Si.', 'III/d', NULL, 'Dosen', NULL, NULL, 'PNS'),
('197406092018035101', 'akhmad@staf.unair.ac.id', 'AKHMAD', 'https://cybercampus.unair.ac.id/foto_pegawai/139141910-1478229529.JPG', 'https://cybercampus.unair.ac.id/foto_pegawai/139141910-1478229529.JPG', '197406092018035101', NULL, 1, 0, 'KENDAL', '1974-06-09', NULL, '', '0', NULL, 'PEGAWAI TIDAK TETAP', 246, 'Fakultas Kedokteran Hewan', '805243698545000', 'Universitas Airlangga', NULL, NULL, NULL, NULL, NULL, NULL, 'Tendik', NULL, NULL, 'PEGAWAI TIDAK TETAP'),
('197407212006042001', 'erwinoto@fkg.unair.ac.id', 'ERVINA RESTIWULAN WINOTO', 'http://cybercampus.unair.ac.id/foto_pegawai/197407212006042001-1580401536.jpg', 'http://cybercampus.unair.ac.id/foto_pegawai/197407212006042001-1580401536.jpg', '3578096107740002', '0021077405', 2, 0, 'BANJARMASIN', '1974-07-21', 'SEMOLOWARU SELATAN X-12 SBY', '', '60117', '5930343', 'PNS', NULL, 'Fakultas Kedokteran Gigi', '496080359606000', 'Universitas Airlangga', 'KEDOKTERAN GIGI', NULL, NULL, 'drg., Sp.Ort.,M.Kes.', 'III/c', NULL, 'Dosen', NULL, NULL, 'PNS'),
('197407242003122001', 'yuliati@fkg.unair.ac.id', 'YULIATI', 'http://cybercampus.unair.ac.id/foto_pegawai/197407242003122001-1623386660.jpeg', 'http://cybercampus.unair.ac.id/foto_pegawai/197407242003122001-1623386660.jpeg', '3578236407740001', '0024077404', 2, 0, 'SURABAYA', '1974-07-24', 'JL. ASAHAN NO 9  SURABAYA', '', '60241', '0315683333', 'PNS', 242, 'Fakultas Kedokteran Gigi', '683521009609000', 'Universitas Airlangga', 'KEDOKTERAN GIGI', NULL, NULL, 'drg ., M.Kes.', 'III/c', '2003-12-01', 'Dosen', 'Fungsional', 'Lektor', 'PNS'),
('197411092018035201', 'f_widyawati@staf.unair.ac.id', 'FARIDA WIDYAWATI', 'https://cybercampus.unair.ac.id/foto_pegawai/197411092018035201.JPG', 'https://cybercampus.unair.ac.id/foto_pegawai/197411092018035201.JPG', '197411092018035201', NULL, 2, 0, 'SURABAYA', '1974-11-09', ' KEDONDONG KIDUL I/22 D. SURABAYA', '', '0', '081235189787', 'PEGAWAI TIDAK TETAP', 132, NULL, '975581158607000', 'Universitas Airlangga', 'SAINS MANAJEMEN', NULL, NULL, NULL, NULL, '2012-09-01', 'Tendik', 'Pilih Stat', 'Pengadministrasi Akademik', 'PEGAWAI TIDAK TETAP'),
('197412232008102001', 'niswatin@staf.unair.ac.id', 'NISWATIN', 'https://cybercampus.unair.ac.id/foto_pegawai/197412232008102001-1617077349.jpeg', 'https://cybercampus.unair.ac.id/foto_pegawai/197412232008102001-1617077349.jpeg', '197412232008102001', NULL, 2, 0, 'LAMONGAN', '1974-12-23', NULL, '', '0', NULL, 'PNS', 242, 'Fakultas Kedokteran Gigi', '799794847617000', 'Universitas Airlangga', NULL, NULL, NULL, 'S.Sos.', 'III/a', NULL, 'Tendik', NULL, NULL, 'PNS'),
('197501102007011001', 'abdul.soleh.yusuf@staf.unair.ac.id', 'ABDUL SOLEH YUSUF', 'https://cybercampus.unair.ac.id/foto_pegawai/197501102007011001.JPG', 'https://cybercampus.unair.ac.id/foto_pegawai/197501102007011001.JPG', '197501102007011001', NULL, 1, 0, 'SURABAYA', '1975-01-10', NULL, '', '0', NULL, 'PNS', 144, NULL, '097596886616000', 'Universitas Airlangga', 'KEDOKTERAN HEWAN', NULL, NULL, NULL, 'II/c', NULL, 'Tendik', NULL, NULL, 'PNS'),
('197502132005012002', 'endang.mannan@vokasi.unair.ac.id', 'ENDANG FITRIYAH MANNAN', 'http://cybercampus.unair.ac.id/foto_pegawai/', 'http://cybercampus.unair.ac.id/foto_pegawai/', '3504035302750001', '0013027502', 2, 0, 'TULUNGAGUNG', '1975-02-13', 'JL.KAPT.KASIHIN IV/461 TULUNG AGUNG', '', '0', '08883084840', 'PNS', NULL, 'Fakultas Vokasi', '246994628629000', 'Universitas Airlangga', 'PERPUSTAKAAN', NULL, NULL, 'S.Sos., M.Hum.', 'III/c', '2006-01-01', 'Dosen', 'Fungsional', 'Lektor', 'PNS'),
('197505222003121002', 'prayogo@fpk.unair.ac.id', 'PRAYOGO', 'http://cybercampus.unair.ac.id/foto_pegawai/197505222003121002-1595541854.jpg', 'http://cybercampus.unair.ac.id/foto_pegawai/197505222003121002-1595541854.jpg', '3578042205750003', '0022057510', 1, 0, 'SURABAYA', '1975-05-22', 'JL. MAYJEND SUNGKONO 29 SURABAYA', '', '60242', '031-5672637', 'PNS', 321, 'Fakultas Sekolah Ilmu Kesehatan dan Ilmu Alam', '587286931609000', 'Universitas Airlangga', 'AKUAKULTUR (SIKIA.BANYUWANGI)', NULL, NULL, 'S.Pi., MP.', 'III/c', '2005-01-01', 'Dosen', 'Fungsional', 'Lektor', 'PNS'),
('197505262003121006', 'helmy.prasetyo@fisip.unair.ac.id', 'HELMY PRASETYO YUWINANTO', 'http://cybercampus.unair.ac.id/foto_pegawai/197505262003121006-1589679354.jpg', 'http://cybercampus.unair.ac.id/foto_pegawai/197505262003121006-1589679354.jpg', '3578062605750001', '0026057502', 1, 0, 'SURABAYA', '1975-05-26', 'PONDOK MARITIM INDAH BLOK ZZ/2 SBY', '', '60222', '62817391826', 'PNS', 321, 'Fakultas Ilmu Sosial dan Ilmu Politik', '675048003614000', 'Universitas Airlangga', 'ILMU INFORMASI DAN PERPUSTAKAA', NULL, NULL, 'S.Sos., M.KP', 'III/c', '2005-01-01', 'Dosen', 'Fungsional', 'Lektor', 'PNS'),
('197506031998031008', 'henky@staf.unair.ac.id', 'HENKY SOEKMA POETRA', 'http://cybercampus.unair.ac.id/foto_pegawai/', 'http://cybercampus.unair.ac.id/foto_pegawai/', '197506031998031008', NULL, 1, 0, 'JOMBANG', '1975-06-03', 'JL. SEMAMPIR TENGAH 4/21 SURABAYA', '', '0', '0877-5651-290', 'PNS', 245, 'Fakultas Farmasi', '683492359606000', 'Universitas Airlangga', NULL, NULL, NULL, 'ST', 'III/d', NULL, 'Tendik', NULL, NULL, 'PNS'),
('197508312018115201', 'diyah.puspitaningsih@staf.unair.ac.id', 'Diyah Puspitaningsih', 'https://cybercampus.unair.ac.id/foto_pegawai/197508312018115201-1648709905.jpg', 'https://cybercampus.unair.ac.id/foto_pegawai/197508312018115201-1648709905.jpg', '197508312018115201', NULL, 2, 0, 'BOJONEGORO', '1975-08-31', NULL, '', '0', NULL, 'PEGAWAI TIDAK TETAP', 41, 'PINLABS', '755162971618000', 'Universitas Airlangga', NULL, NULL, NULL, NULL, 'Setara III Masa Kerja <= 5', NULL, 'Tendik', NULL, NULL, 'PEGAWAI TIDAK TETAP'),
('197509252006042001', 'titien.soelistyarini@fib.unair.ac.id', 'TITIEN DIAH SOELISTYARINI', 'http://cybercampus.unair.ac.id/foto_pegawai/', 'http://cybercampus.unair.ac.id/foto_pegawai/', '3578226509750001', '0025097509', 2, 0, 'JEMBER', '1975-09-25', 'JL. SEMALANG INDAH IV/2 BLOK S-1 SURABAYA', '', '60117', '0315035676', 'PNS', 252, 'Fakultas Ilmu Budaya', '086340890609000', 'Universitas Airlangga', 'BAHASA DAN SASTRA INGGRIS', NULL, NULL, 'S.S., M.Si.', 'III/d', '2007-07-01', 'Dosen', 'Fungsional', 'Lektor', 'PNS'),
('197511202002121009', 'wandono@staf.unair.ac.id', 'WANDONO', 'https://cybercampus.unair.ac.id/foto_pegawai/197511202002121009-1532502049.jpg', 'https://cybercampus.unair.ac.id/foto_pegawai/197511202002121009-1532502049.jpg', '197511202002121009', NULL, 1, 0, 'SURABAYA', '1975-11-20', NULL, '', '0', NULL, 'PNS', 30, 'Direktorat Sistem Informasi', '683441083606000', 'Universitas Airlangga', NULL, NULL, NULL, 'S.Sos.', 'III/a', NULL, 'Tendik', NULL, NULL, 'PNS'),
('197511212005012002', 'nurul-f@fkm.unair.ac.id', 'NURUL FITRIYAH', 'http://cybercampus.unair.ac.id/foto_pegawai/', 'http://cybercampus.unair.ac.id/foto_pegawai/', '3578086111750006', '0021117505', 2, 0, 'SURAKARTA', '1975-11-21', 'JL. KALIBOKOR II NO. 45 SURABAYA', '', '60283', '081230407373', 'PNS', NULL, 'Fakultas Kesehatan Masyarakat', '187179098606001', 'Universitas Airlangga', 'KESEHATAN MASYARAKAT', NULL, NULL, 'S.K.M., M.P.H.', 'III/d', NULL, 'Dosen', NULL, NULL, 'PNS'),
('197512062008121002', 'fadliama@fst.unair.ac.id', 'FADLI AMA', 'http://cybercampus.unair.ac.id/foto_pegawai/197512062008121002-1616654503.jpg', 'http://cybercampus.unair.ac.id/foto_pegawai/197512062008121002-1616654503.jpg', '3515080612750004', '0706127502', 1, 0, 'BANYUWANGI', '1975-12-06', 'PURI SURYA JAYA, CLUSTER ATHENA BLK I1-41, GEDANGAN - SIDOARJO', '', '61254', '082244447357', 'PNS', 248, 'Fakultas Sains dan Teknologi', '097646517617000', 'Universitas Airlangga', 'TEKNIK BIOMEDIS', NULL, NULL, 'S.T., M.T', 'III/c', '2021-12-01', 'Dosen', 'Fungsional', 'Lektor', 'PNS'),
('197602092008012012', 'widiana-f@fk.unair.ac.id', 'WIDIANA FERRIASTUTI', 'http://cybercampus.unair.ac.id/foto_pegawai/', 'http://cybercampus.unair.ac.id/foto_pegawai/', '3578064902760002', '0009027605', 2, 0, 'SURABAYA', '1976-02-09', 'JL.PERUM.CRIS KENCANA G-36 SURABAYA', '', '60117', '08123590386', 'PNS', 221, 'Fakultas Kedokteran', '251699922614000', 'Universitas Airlangga', 'RADIOLOGI', NULL, NULL, 'dr., Sp.Rad.', 'III/b', NULL, 'Dosen', NULL, NULL, 'PNS'),
('197602192021093101', 'rene.riza.herfany@vokasi.unair.ac.id', 'Abang Rene Riza Herfany', 'http://cybercampus.unair.ac.id/foto_pegawai/197602192021093101-1644839067.jpg', 'http://cybercampus.unair.ac.id/foto_pegawai/197602192021093101-1644839067.jpg', '3578091902760002', NULL, 1, 0, 'SURABAYA', '1976-02-19', 'perum graha dewata blok. jj3 no. 25 rt 01 rw 12 landungsari malang', '', '0', '0811369168', 'CPTNPNS', 306, 'Fakultas Vokasi', '086111051606000', 'Universitas Airlangga', 'MANAJEMEN PEMASARAN', NULL, NULL, 'S.E., M.BA.', 'III/b', '2022-10-09', 'Dosen', 'Fungsional', 'Asisten Ahli', 'CPTNPNS'),
('197602222010122003', 'arina-s@fk.unair.ac.id', NULL, 'http://cybercampus.unair.ac.id/foto_pegawai/', 'http://cybercampus.unair.ac.id/foto_pegawai/', NULL, NULL, NULL, 0, 'SURABAYA', NULL, 'JL.SUTEREJO PRIMA SELATAN I/27 BLOK PC-4 SURABAYA', '', '0', '03170880795, ', NULL, NULL, 'Fakultas Kedokteran', NULL, 'Universitas Airlangga', 'ILMU KESEHATAN ANAK', NULL, NULL, 'dr., M.Kes', 'III/c', NULL, 'Dosen', NULL, NULL, NULL),
('197603242002121001', 'syahrur-m-d-s@fib.unair.ac.id', 'SYAHRUR MARTA DWI SUSILO', 'http://cybercampus.unair.ac.id/foto_pegawai/197603242002121001-1564551361.jpg', 'http://cybercampus.unair.ac.id/foto_pegawai/197603242002121001-1564551361.jpg', '3578092403760000', '0024037602', 1, 0, 'KUDUS', '1976-03-24', 'SUKOLILO PARK REGENCY BLOK F-11 KEPUTIH - SURABAYA', '', '60111', '03158201113', 'PNS', 252, 'Fakultas Ilmu Budaya', '259731032606000', 'Universitas Airlangga', 'STUDI KEJEPANGAN', NULL, NULL, 'S.S., M.A., Ph.D.', 'III/c', NULL, 'Dosen', NULL, NULL, 'PNS'),
('197607152001122001', 'b_yulianti@staf.unair.ac.id', 'BAYU YULIANTI', 'http://cybercampus.unair.ac.id/foto_pegawai/197607152001122001-1629461611.jpeg', 'http://cybercampus.unair.ac.id/foto_pegawai/197607152001122001-1629461611.jpeg', '197607152001122001', NULL, 2, 0, 'SURABAYA', '1976-07-15', 'GADING FAJAR I B5/8 BUDURAN SIDOARJO', '', '0', '081216324824', 'PNS', 246, 'Fakultas Kedokteran Hewan', '345175483643000', 'Universitas Airlangga', NULL, NULL, NULL, 'S.Kom.', NULL, NULL, 'Tendik', NULL, NULL, 'PNS'),
('197607222003121001', 'tino.leonardi@psikologi.unair.ac.id', 'TINO LEONARDI', 'http://cybercampus.unair.ac.id/foto_pegawai/', 'http://cybercampus.unair.ac.id/foto_pegawai/', '1214142207760004', '0022077601', 1, 0, 'MALANG', '1976-07-22', 'DELTA SARI INDAH BLOK AY-50 SIDOARJO', '', '61256', '08563559773', 'CPNS', NULL, 'Fakultas Psikologi', '097736136657000', 'Universitas Airlangga', 'PSIKOLOGI', NULL, NULL, 'S.Psi., M.Psi', 'III/c', NULL, 'Dosen', NULL, NULL, 'CPNS'),
('197607242008012007', 'yuly-s@fkm.unair.ac.id', 'YULY SULISTYORINI', 'http://cybercampus.unair.ac.id/foto_pegawai/', 'http://cybercampus.unair.ac.id/foto_pegawai/', '3504016407760004', '0024077604', 2, 0, 'TULUNGAGUNG', '1976-07-24', 'PERUM WAGE PERMAI F 5 SIDOARJO', '', '0', '08123297014', 'PNS', 250, 'Fakultas Kesehatan Masyarakat', '252850276629000', 'Universitas Airlangga', 'KESEHATAN MASYARAKAT', NULL, NULL, 'S.KM., M.Kes', 'III/b', NULL, 'Dosen', NULL, NULL, 'PNS'),
('197607262005011003', 'dedyp@staf.unair.ac.id', 'DEDY PRIYAMBODO', 'https://cybercampus.unair.ac.id/foto_pegawai/197607262005011003-1630389122.jpeg', 'https://cybercampus.unair.ac.id/foto_pegawai/197607262005011003-1630389122.jpeg', '197607262005011003', NULL, 1, 0, 'SIDOARJO', '1976-07-26', NULL, '', '0', NULL, 'PNS', 30, 'Direktorat Sistem Informasi', '257239285643000', 'Universitas Airlangga', NULL, NULL, NULL, 'A.Md.', 'III/b', NULL, 'Tendik', NULL, NULL, 'PNS'),
('197609012003121001', 'ilham.nuralfian@psikologi.unair.ac.id', 'ILHAM NUR ALFIAN', 'http://cybercampus.unair.ac.id/foto_pegawai/197609012003121001-1593001928.jpg', 'http://cybercampus.unair.ac.id/foto_pegawai/197609012003121001-1593001928.jpg', '3578080109760004', '0001097603', 1, 0, 'SURABAYA', '1976-09-01', 'PERUM SURYA ASRI 1 BLOK A10 NO 17 BUDURAN - SIDOARJO', '', '61252', '031-8070884', 'PNS', NULL, 'Fakultas Psikologi', '587288226606000', 'Universitas Airlangga', 'PSIKOLOGI', NULL, NULL, 'S.Psi., M.Psi.', 'III/d', NULL, 'Dosen', NULL, NULL, 'PNS'),
('197609122018013101', 'arifsudjarwo@staf.unair.ac.id', 'Arif Sudjarwo', 'https://cybercampus.unair.ac.id/foto_pegawai/139080879-1477891915.JPG', 'https://cybercampus.unair.ac.id/foto_pegawai/139080879-1477891915.JPG', '197609122018013101', NULL, 1, 0, 'SURABAYA', '1976-09-12', NULL, '', '0', NULL, 'TETAP NON PNS', 245, 'Fakultas Farmasi', '762880201614000', 'Universitas Airlangga', NULL, NULL, NULL, NULL, 'II/b', NULL, 'Tendik', NULL, NULL, 'TETAP NON PNS'),
('197704042003121002', 'samian@psikologi.unair.ac.id', 'SAMIAN', 'http://cybercampus.unair.ac.id/foto_pegawai/', 'http://cybercampus.unair.ac.id/foto_pegawai/', '3578250404770001', '0004047702', 1, 0, 'BOJONEGORO', '1977-04-04', 'GUNUNG ANYAR HARAPAN ZH-4 SURABAYA', '', '60294', '08563310725', 'PNS', 251, 'Fakultas Psikologi', '587280603615000', 'Universitas Airlangga', 'PSIKOLOGI TERAPAN', NULL, NULL, 'S.Psi., M.Psi.', 'III/d', NULL, 'Dosen', NULL, NULL, 'PNS'),
('197704302005012001', 'rizki-a@fib.unair.ac.id', 'RIZKI ANDINI', 'http://cybercampus.unair.ac.id/foto_pegawai/197704302005012001-1579854196.jpg', 'http://cybercampus.unair.ac.id/foto_pegawai/197704302005012001-1579854196.jpg', '3578187004770002', '0030047705', 2, 0, 'PADANG', '1977-04-30', 'JL. LIDAH WETAN IA / 62 SURABAYA', '', '60213', '082232468377', 'PNS', NULL, 'Fakultas Ilmu Budaya', '587287590604000', 'Universitas Airlangga', 'STUDI KEJEPANGAN', NULL, NULL, 'S.Pd., M.L', 'III/c', NULL, 'Dosen', NULL, NULL, 'PNS'),
('197705052009121001', 'paulus-b-n@fk.unair.ac.id', 'PAULUS BUDIONO NOTOPURO', 'http://cybercampus.unair.ac.id/foto_pegawai/197705052009121001-1597926495.jpg', 'http://cybercampus.unair.ac.id/foto_pegawai/197705052009121001-1597926495.jpg', '3578090505770001', '0005057711', 1, 0, 'SURABAYA', '1977-05-05', 'JL. KLAMPIS SEMOLO TIMUR AB-233 SURABAYA', '', '60119', '0315922939', 'PNS', 221, 'Fakultas Kedokteran', '252115282606000', 'Universitas Airlangga', 'PATOLOGI KLINIK', NULL, 'Dr.', 'dr., Sp.PK.', 'III/c', NULL, 'Dosen', NULL, NULL, 'PNS'),
('197705292003122003', 'fiska@fh.unair.ac.id', 'FISKA SILVIA RADEN RORO', 'http://cybercampus.unair.ac.id/foto_pegawai/', 'http://cybercampus.unair.ac.id/foto_pegawai/', '3578096905770003', '0029057706', 2, 0, 'BLITAR', '1977-05-29', 'JL. NGINDEN INTAN BARAT BLOK C-6/39 SBY', '', '0', '082233181868', 'PNS', 243, 'Fakultas Hukum', '587278847606000', 'Universitas Airlangga', 'ILMU HUKUM', NULL, NULL, 'S.H., M.M., LL.M.', 'III/c', NULL, 'Dosen', NULL, NULL, 'PNS'),
('197706102008102001', 'setiafkh@staf.unair.ac.id', 'SETIANING BUDI ASTATI', 'https://cybercampus.unair.ac.id/foto_pegawai/197706102008102001.JPG', 'https://cybercampus.unair.ac.id/foto_pegawai/197706102008102001.JPG', '197706102008102001', NULL, 2, 0, 'SURABAYA', '1977-06-10', NULL, '', '0', NULL, 'PNS', 669, NULL, '892305160615000', 'Universitas Airlangga', 'PENDIDIKAN PROFESI DOKTER HEWA', NULL, NULL, NULL, 'II/d', '2020-10-01', 'Tendik', 'Fungsional', 'Pengelola Administrasi Dosen d', 'PNS'),
('197706122009122001', 'parwati-h-n@fib.unair.ac.id', 'PARWATI HADI NOORSANTI', 'http://cybercampus.unair.ac.id/foto_pegawai/', 'http://cybercampus.unair.ac.id/foto_pegawai/', '3578095206770004', '0712067701', 2, 0, 'BANJARMASIN', '1977-06-12', 'JL. MEDAYU UTARA I GANG MELATI NO 6 SURABAYA', '', '60295', '081331545230', 'PNS', 252, 'Fakultas Ilmu Budaya', '778264259522000', 'Universitas Airlangga', 'STUDI KEJEPANGAN', NULL, NULL, 'S.S., M.Pd.', 'III/b', NULL, 'Dosen', NULL, NULL, 'PNS'),
('197708012014092002', 'ira.suarilah@fkp.unair.ac.id', 'IRA SUARILAH', 'http://cybercampus.unair.ac.id/foto_pegawai/197708012014092002-1582326101.jpg', 'http://cybercampus.unair.ac.id/foto_pegawai/197708012014092002-1582326101.jpg', '7471024108770001', '0001087705', 2, 0, 'SUMEDANG', '1977-08-01', 'KOMPLEK TNI AL KENJERAN JL. MISTAR NO.3 SURABAYA', '', '60121', '0315913257', 'PNS', NULL, 'Fakultas Keperawatan', '683423040604001', 'Universitas Airlangga', 'KEPERAWATAN', NULL, NULL, 'S.Kp. MSc', 'III/b', NULL, 'Dosen', NULL, NULL, 'PNS'),
('197708112008102002', 'irma.ike.wardani@staf.unair.ac.id', 'IRMA IKE WARDANI', 'https://cybercampus.unair.ac.id/foto_pegawai/197708112008102002-1565684559.jpg', 'https://cybercampus.unair.ac.id/foto_pegawai/197708112008102002-1565684559.jpg', '197708112008102002', NULL, 2, 0, 'SURABAYA', '1977-08-11', NULL, '', '0', NULL, 'PNS', 243, 'Fakultas Hukum', '783292766619000', 'Universitas Airlangga', NULL, NULL, NULL, 'S.H.', 'III/d', NULL, 'Tendik', NULL, NULL, 'PNS'),
('197709192008012013', 'dina.fitrisia@feb.unair.ac.id', 'DINA FITRISIA SEPTIARINI', 'http://cybercampus.unair.ac.id/foto_pegawai/', 'http://cybercampus.unair.ac.id/foto_pegawai/', '3578055909770002', '0719097702', 2, 0, 'PROBOLINGGO', '1977-09-19', 'JLN. MUSI 16 SURABAYA', '', '60264', '0315033642', 'PNS', 244, 'Fakultas Ekonomi dan Bisnis', '078703634607000', 'Universitas Airlangga', 'EKONOMI ISLAM', NULL, NULL, 'SE., MM., Ak.', 'IV/a', '2008-01-01', 'Dosen', 'Fungsional', 'Lektor Kepala', 'PNS'),
('197710052018013201', 'lisawahyuningtyasti@staf.unair.ac.id', 'Lisa Wahyuningtyasti', 'https://cybercampus.unair.ac.id/foto_pegawai/197710052018013201-1569380451.JPG', 'https://cybercampus.unair.ac.id/foto_pegawai/197710052018013201-1569380451.JPG', '197710052018013201', NULL, 2, 0, 'SURABAYA', '1977-10-05', NULL, '', '0', NULL, 'TETAP NON PNS', 350, NULL, '241317023606000', 'Universitas Airlangga', NULL, NULL, NULL, 'S.T.', 'III/b', NULL, 'Tendik', NULL, NULL, 'TETAP NON PNS'),
('197710162000031001', 'arviadi.triharso@staf.unair.ac.id', 'ARVIADI TRI HARSO PUTRO', 'https://cybercampus.unair.ac.id/foto_pegawai/197710162000031001-1509941708.JPG', 'https://cybercampus.unair.ac.id/foto_pegawai/197710162000031001-1509941708.JPG', '197710162000031001', NULL, 1, 0, 'SURABAYA', '1977-10-16', NULL, '', '0', NULL, 'PNS', 38, 'LPT', '683441059606000', 'Universitas Airlangga', NULL, NULL, NULL, 'S.KM', 'III/d', NULL, 'Tendik', NULL, NULL, 'PNS'),
('197710262008012011', 'zakiyatul-f@fk.unair.ac.id', 'ZAKIYATUL FAIZAH', 'http://cybercampus.unair.ac.id/foto_pegawai/197710262008012011-1630054561.jpg', 'http://cybercampus.unair.ac.id/foto_pegawai/197710262008012011-1630054561.jpg', '1256036610770002', '0026107708', 2, 0, 'GRESIK', '1977-10-26', 'PONDOK MARTIM INDAH BLOK V NO 22 SBY', '', '60222', '081335540067', 'PNS', 221, 'Fakultas Kedokteran', '795181221618000', 'Universitas Airlangga', 'ANDROLOGI', NULL, NULL, 'dr., M.Kes.', 'III/c', NULL, 'Dosen', NULL, NULL, 'PNS'),
('197711052008121001', 'noven.suprayogi@feb.unair.ac.id', 'NOVEN SUPRAYOGI', 'http://cybercampus.unair.ac.id/foto_pegawai/', 'http://cybercampus.unair.ac.id/foto_pegawai/', '3578250511770001', '0005117704', 1, 0, 'LUMAJANG', '1977-11-05', 'JLN. GUNUNGANYAR MAS A2-8 SURABAYA', '', '60294', '08123198572', 'PNS', 244, 'Fakultas Ekonomi dan Bisnis', '340075035615000', 'Universitas Airlangga', 'EKONOMI ISLAM', NULL, NULL, 'SE., M.Si., Ak.', 'III/b', NULL, 'Dosen', NULL, NULL, 'PNS'),
('197712202015043101', 'donychrismanto@vokasi.unair.ac.id', 'DONY CHRISMANTO', 'http://cybercampus.unair.ac.id/foto_pegawai/', 'http://cybercampus.unair.ac.id/foto_pegawai/', '3578262012770005', '0020127708', 1, 0, 'SURABAYA', '1977-12-20', 'WISMA PERMAI IX/20 BLOK L-3 SURABAYA', '', '60115', '0315932891', 'TETAP NON PNS', 306, 'Fakultas Vokasi', '249558560619000', 'Universitas Airlangga', 'PARAMEDIK VETERINER', NULL, NULL, 'drh., M.Si.', 'III/b', '2015-04-01', 'Dosen', 'Fungsional', 'Asisten Ahli', 'TETAP NON PNS'),
('197801262006041001', 'badruszaman@fst.unair.ac.id', 'BADRUS ZAMAN', 'http://cybercampus.unair.ac.id/foto_pegawai/197801262006041001-1649230892.jpg', 'http://cybercampus.unair.ac.id/foto_pegawai/197801262006041001-1649230892.jpg', '3578272601780001', '0026017806', 1, 0, 'GRESIK', '1978-01-26', 'GRIYA AIRLANGGA A-4JL. WONOREJO SELATAN, RUNGKUT SURABAYA', '', '60187', '085730141434', 'PNS', NULL, 'Fakultas Sains dan Teknologi', '683491773604000', 'Universitas Airlangga', 'SISTEM INFORMASI', NULL, NULL, 'S.Kom., M.Cs.', 'III/c', '2006-04-01', 'Dosen', 'Fungsional', 'Lektor', 'PNS'),
('197803102010121002', 'm.nurul.fatah@staf.unair.ac.id', 'MUHAMMAD NURUL FATAH', '/', '/', '197803102010121002', NULL, 1, 0, 'SURABAYA', '1978-03-10', 'Jl. Kutisari IX/33', '', '0', '0818588740', 'PNS', 253, 'Fakultas Keperawatan', '781502802615000', 'Universitas Airlangga', NULL, NULL, NULL, 'S.E.', 'III/c', NULL, 'Tendik', NULL, NULL, 'PNS'),
('197803272008121002', 'aria@feb.unair.ac.id', 'TUWANKU ARIA AULIANDRI', 'http://cybercampus.unair.ac.id/foto_pegawai/', 'http://cybercampus.unair.ac.id/foto_pegawai/', '3578022703780003', '0727037804', 1, 0, 'SURABAYA', '1978-03-27', 'FAKULTAS EKONOMI DAN BISNIS. JALAN AIRLANGGA 4 SURABAYA - INDONESIA', '', '60239', '081332529696', 'PNS', 244, 'Fakultas Ekonomi dan Bisnis', '086305885609000', 'Universitas Airlangga', 'MANAJEMEN', NULL, NULL, 'S.E., M.Sc.', 'III/d', NULL, 'Dosen', NULL, NULL, 'PNS'),
('197806282005012002', 'yuani-s@fk.unair.ac.id', 'YUANI SETIAWATI', 'http://cybercampus.unair.ac.id/foto_pegawai/197806282005012002-1574065387.jpg', 'http://cybercampus.unair.ac.id/foto_pegawai/197806282005012002-1574065387.jpg', '3578036806780001', '0028067805', 2, 0, 'SURABAYA', '1978-06-28', 'JL. RAYA KALIRUNGKUT NO. 68 SURABAYA', '', '60293', '03170759256', 'PNS', 221, 'Fakultas Kedokteran', '261573125615000', 'Universitas Airlangga', 'KEDOKTERAN', NULL, NULL, 'dr., M.Ked.', 'III/d', NULL, 'Dosen', NULL, NULL, 'PNS');
INSERT INTO `biodata` (`NIK`, `EMAIL`, `NAMA`, `FOTO`, `FOTO1`, `NO_KTP`, `NIDN`, `JENIS_KELAMIN`, `STATUS_MENIKAH`, `TEMPAT_LAHIR`, `TGL_LAHIR`, `ALAMAT`, `KOTA`, `KODE_POS`, `HANDPHONE`, `STATUS`, `ID_UNIT_KERJA`, `UNIT_KERJA`, `NPWP`, `UNIVERSITAS`, `PRODI`, `IPK`, `GELAR_DEPAN`, `GELAR_BELAKANG`, `PANGKAT_GOLONGAN`, `TMT_PNS`, `STATUS_PEGAWAI`, `STATUS_JABATAN`, `NAMA_JABATAN`, `JENIS_KEPEGAWAIAN`) VALUES
('197807022008101001', 'abdul.azis.subhan@staf.unair.ac.id', 'ABDUL AZIS SUBHAN', 'https://cybercampus.unair.ac.id/foto_pegawai/197807022008101001-1601474775.jpg', 'https://cybercampus.unair.ac.id/foto_pegawai/197807022008101001-1601474775.jpg', '197807022008101001', NULL, 1, 0, 'TULUNGAGUNG', '1978-07-02', NULL, '', '0', NULL, 'PNS', 144, NULL, '269806451644000', 'Universitas Airlangga', 'KEDOKTERAN HEWAN', NULL, NULL, 'A.md', 'II/d', NULL, 'Tendik', NULL, NULL, 'PNS'),
('197807272003122001', 'yuliaindarti@fib.unair.ac.id', 'YULIA INDARTI', 'http://cybercampus.unair.ac.id/foto_pegawai/', 'http://cybercampus.unair.ac.id/foto_pegawai/', '3515136707780011', '0027067803', 2, 0, 'MALANG', '1978-07-27', 'PERUM SAXOFONE LAND KAV 32-34 MALANG', '', '0', '081331507865', 'PNS', NULL, 'Fakultas Ilmu Budaya', '587287673623000', 'Universitas Airlangga', 'BAHASA DAN SASTRA INGGRIS', NULL, NULL, 'S.S., M.A.', 'III/c', '2005-02-01', 'Dosen', 'Fungsional', 'Lektor', 'PNS'),
('197808112005011002', 'agus.sutiyono@staf.unair.ac.id', 'AGUS SUTIYONO', 'http://cybercampus.unair.ac.id/foto_pegawai/', 'http://cybercampus.unair.ac.id/foto_pegawai/', '197808112005011002', NULL, 1, 0, 'REMBANG', '1978-08-11', 'GRIYA AIRLANGGA BLOK D-9 WONOREJO SELATAN SURABAYA', '', '0', '081357472341', 'PNS', 254, 'Fakultas Perikanan dan Kelautan', '771309598606000', 'Universitas Airlangga', NULL, NULL, NULL, 'S.Sos.', NULL, NULL, 'Tendik', NULL, NULL, 'PNS'),
('197810222008011005', 'arief-b@fk.unair.ac.id', 'ARIEF BAKHTIAR', 'http://cybercampus.unair.ac.id/foto_pegawai/', 'http://cybercampus.unair.ac.id/foto_pegawai/', '3578172210780001', '0022107810', 1, 0, 'SURABAYA', '1978-10-22', 'JL. SIDOTOPO WETAN, SIDOMULYO 3A/5 SURABAYA', '', '60128', '081553252192', 'PNS', 221, 'Fakultas Kedokteran', '260651526619000', 'Universitas Airlangga', 'PULMONOLOGI DAN ILMU KEDOKTERA', NULL, NULL, 'dr., Sp.P.', 'III/c', '2008-01-01', 'Dosen', 'Fungsional', 'Lektor', 'PNS'),
('197811082005012003', 'nove.anna@vokasi.unair.ac.id', 'NOVE EKA VARIANT ANNA', 'http://cybercampus.unair.ac.id/foto_pegawai/197811082005012003-1549508224.jpg', 'http://cybercampus.unair.ac.id/foto_pegawai/197811082005012003-1549508224.jpg', '3515074811780005', '0008117802', 2, 0, 'MOJOKERTO', '1978-11-08', 'TAMAN TIARA REGENCY MEDITERAN CLUSTER BLOK D3/15, SIDOARJO', '', '61252', '081803034107', 'PNS', NULL, 'Fakultas Vokasi', '249429465617000', 'Universitas Airlangga', 'PERPUSTAKAAN', NULL, NULL, 'S.Sos., MIMS.', 'III/c', '2005-01-05', 'Dosen', 'Fungsional', 'Lektor', 'PNS'),
('197812172005012001', 'endahpurwanti@fst.unair.ac.id', 'ENDAH PURWANTI', 'http://cybercampus.unair.ac.id/foto_pegawai/197812172005012001-1509959566.JPG', 'http://cybercampus.unair.ac.id/foto_pegawai/197812172005012001-1509959566.JPG', '3578175712780003', '0017127801', 2, 0, 'SURABAYA', '1978-12-17', 'BULAK BANTENG LOR BHINEKA 7/17 SURABAYA', '', '60127', '081330708536', 'PNS', 248, 'Fakultas Sains dan Teknologi', '683491955619000', 'Universitas Airlangga', 'SISTEM INFORMASI', NULL, NULL, 'S.Si., M.Kom.', 'III/c', NULL, 'Dosen', NULL, NULL, 'PNS'),
('197812252018013101', 'kasimun@staf.unair.ac.id', 'Kasimun', 'https://cybercampus.unair.ac.id/foto_pegawai/197812252018013101-1537846481.JPG', 'https://cybercampus.unair.ac.id/foto_pegawai/197812252018013101-1537846481.JPG', '197812252018013101', NULL, 1, 0, 'NGANJUK', '1978-12-25', NULL, '', '0', NULL, 'TETAP NON PNS', 244, 'Fakultas Ekonomi dan Bisnis', '975581067655000', 'Universitas Airlangga', NULL, NULL, NULL, NULL, 'II/b', '2019-01-01', 'Tendik', 'Fungsional', 'Administrasi Kerumahtanggaan', 'TETAP NON PNS'),
('197901252006042001', 'nilam@fh.unair.ac.id', 'NILAM ANDALIA KURNIASARI.', 'http://cybercampus.unair.ac.id/foto_pegawai/', 'http://cybercampus.unair.ac.id/foto_pegawai/', '3578266501790002', '0025017903', 2, 0, 'LAMONGAN', '1979-01-25', 'JL. GUBENG KERTAJAYA VII RAYA/29 SURABAYA', '', '60286', '08113344079', 'PNS', 243, 'Fakultas Hukum', '587278953619000', 'Universitas Airlangga', 'ILMU HUKUM', NULL, NULL, 'S.H., LL.M.', 'III/b', NULL, 'Dosen', NULL, NULL, 'PNS'),
('197902012010121002', 'lucky-andriyanto@fk.unair.ac.id', 'LUCKY ANDRIYANTO (RSUA)', '/', '/', '3578060102790004', '0001027907', 1, 0, 'SURABAYA', '1979-02-01', 'Griya Babatan Mukti Blok i no 11', '', '60227', '082139569569', 'PNS', 221, 'Fakultas Kedokteran', '346045909614000', 'Universitas Airlangga', 'ANESTESIOLOGI DAN TERAPI INTEN', NULL, NULL, 'dr., Sp.An.KAP', 'III/b', '2010-12-01', 'Dosen', 'Fungsional', 'Asisten Ahli', 'PNS'),
('197902052006042001', 'febriastuti-c@fkg.unair.ac.id', 'FEBRIASTUTI CAHYANI', 'http://cybercampus.unair.ac.id/foto_pegawai/', 'http://cybercampus.unair.ac.id/foto_pegawai/', '3578264502790001', '0005027909', 2, 0, 'SURABAYA', '1979-02-05', 'JL. MULYOSARI BARU NO. 63 SBY', '', '60112', '081938483676', 'PNS', 242, 'Fakultas Kedokteran Gigi', '249083916619000', 'Universitas Airlangga', 'KEDOKTERAN GIGI', NULL, NULL, 'drg., SpKG., M.Kes.', 'III/d', '2007-01-04', 'Dosen', 'Fungsional', 'Lektor', 'PNS'),
('197902062018013101', 'mohnur@staf.unair.ac.id', 'Moh. Nur Qomari', 'https://cybercampus.unair.ac.id/foto_pegawai/139121443-1476930434.JPG', 'https://cybercampus.unair.ac.id/foto_pegawai/139121443-1476930434.JPG', '197902062018013101', NULL, 1, 0, 'MOJOKERTO', '1979-02-06', NULL, '', '0', NULL, 'TETAP NON PNS', 194, NULL, '661362350603000', 'Universitas Airlangga', 'PSIKOLOGI', NULL, NULL, 'S.Psi.', 'III/b', NULL, 'Tendik', NULL, NULL, 'TETAP NON PNS'),
('197904032007101002', 'andri.setijawan@staf.unair.ac.id', 'ANDRI SETIJAWAN', 'https://cybercampus.unair.ac.id/foto_pegawai/197904032007101002.JPG', 'https://cybercampus.unair.ac.id/foto_pegawai/197904032007101002.JPG', '197904032007101002', NULL, 1, 0, 'SURABAYA', '1979-04-03', NULL, '', '0', NULL, 'PNS', 244, 'Fakultas Ekonomi dan Bisnis', '587282559603000', 'Universitas Airlangga', NULL, NULL, NULL, 'SH', 'III/a', NULL, 'Tendik', NULL, NULL, 'PNS'),
('197904082015043201', 'tia-s@fib.unair.ac.id', 'TIA SARASWATI', 'http://cybercampus.unair.ac.id/foto_pegawai/197904082015043201-1606884363.jpg', 'http://cybercampus.unair.ac.id/foto_pegawai/197904082015043201-1606884363.jpg', '3578054804790004', '0008047905', 2, 0, 'JAKARTA SELATAN', '1979-04-08', 'JL. TEMPEL SUKOREJO V / 32A RT. 06 RW. 09 KEL. WONOREJO KEC. TEGALSARI SURABAYA 60263', '', '60263', '0315317008', 'TETAP NON PNS', 252, 'Fakultas Ilmu Budaya', '475577037607000', 'Universitas Airlangga', 'STUDI KEJEPANGAN', NULL, NULL, 'S.S. M.Hum.', 'III/b', '2016-05-01', 'Dosen', 'Fungsional', 'Asisten Ahli', 'TETAP NON PNS'),
('197904092008012013', 'deby-k@fk.unair.ac.id', 'DEBY KUSUMANINGRUM', 'http://cybercampus.unair.ac.id/foto_pegawai/197904092008012013-1560923536.jpg', 'http://cybercampus.unair.ac.id/foto_pegawai/197904092008012013-1560923536.jpg', '3578094904790005', '0009047908', 2, 0, 'SURABAYA', '1979-04-09', 'DK. BUNGKAL NO. 57', '', '60217', '0817310563', 'PNS', 221, 'Fakultas Kedokteran', '257456913955000', 'Universitas Airlangga', 'MIKROBIOLOGI KLINIK', NULL, NULL, 'dr.M.Si.,Sp MK', 'III/c', '2009-09-01', 'Dosen', 'Fungsional', 'Lektor', 'PNS'),
('197904122020013201', 'dinar@staf.unair.ac.id', 'Dinar Adriaty', 'https://cybercampus.unair.ac.id/foto_pegawai/197904122018035201-1575619083.jpg', 'https://cybercampus.unair.ac.id/foto_pegawai/197904122018035201-1575619083.jpg', '197904122020013201', NULL, 2, 0, 'SURABAYA', '1979-04-12', 'kalibokor 2/70', '', '0', '08165414604', 'TETAP NON PNS', 38, 'LPT', '723490157606000', 'Universitas Airlangga', NULL, NULL, NULL, 'S.Si.', 'III/a', '2021-04-01', 'Tendik', 'Pilih Stat', 'Peneliti', 'TETAP NON PNS'),
('197905152007012001', 'dyah.srirahayu@vokasi.unair.ac.id', 'DYAH PUSPITASARI SRIRAHAYU', 'http://cybercampus.unair.ac.id/foto_pegawai/197905152007012001-1576125841.jpg', 'http://cybercampus.unair.ac.id/foto_pegawai/197905152007012001-1576125841.jpg', '3578295505790002', '0715057903', 2, 0, 'KLATEN', '1979-05-15', 'BOGORAMI INDAH REGENCY BLOK C/17 SURABAYA', '', '60124', '082245193661', 'PNS', 306, 'Fakultas Vokasi', '253903389525000', 'Universitas Airlangga', 'PERPUSTAKAAN', NULL, NULL, 'S.Kom., M.Hum.', 'III/d', NULL, 'Dosen', NULL, NULL, 'PNS'),
('197905192009122003', 'wardah-r-i@fk.unair.ac.id', 'WARDAH RAHMATUL ISLAMIYAH', 'http://cybercampus.unair.ac.id/foto_pegawai/', 'http://cybercampus.unair.ac.id/foto_pegawai/', '3578265905790003', '0019057906', 2, 0, 'SURABAYA', '1979-05-19', 'JL. MULYOSARI UTARA I/36 SURABAYA', '', '60112', '0315935044', 'PNS', 221, 'Fakultas Kedokteran', '343673596619000', 'Universitas Airlangga', 'NEUROLOGI', NULL, NULL, 'dr., Sp.S', 'III/d', '2011-04-01', 'Dosen', 'Fungsional', 'Lektor', 'PNS'),
('197905212010121003', 'titoyustiawan@fkm.unair.ac.id', 'TITO YUSTIAWAN', 'http://cybercampus.unair.ac.id/foto_pegawai/197905212010121003-1572339111.jpg', 'http://cybercampus.unair.ac.id/foto_pegawai/197905212010121003-1572339111.jpg', '3578256709800001', '0021057912', 1, 0, 'SURABAYA', '1979-05-21', 'JL. MANYAR INDAH I/ 77 SURABAYA', '', '60272', '03199012918', 'PNS', NULL, 'Fakultas Kesehatan Masyarakat', '078815560611000', 'Universitas Airlangga', 'KESEHATAN MASYARAKAT', NULL, NULL, 'drg., M.Ke', 'III/b', NULL, 'Dosen', NULL, NULL, 'PNS'),
('197906302005012001', 'devi-e-j@fkg.unair.ac.id', 'DEVI EKA JUNIARTI', 'http://cybercampus.unair.ac.id/foto_pegawai/', 'http://cybercampus.unair.ac.id/foto_pegawai/', '3578097006790008', '0030067901', 2, 0, 'SURABAYA', '1979-06-30', 'JL. MANYAR INDAH XI/6-8 AA NO. 3-4 SBY', '', '60118', '0315994301', 'PNS', 242, 'Fakultas Kedokteran Gigi', '462245606606000', 'Universitas Airlangga', 'KEDOKTERAN GIGI', NULL, NULL, 'drg., SpKG., M.Kes.', 'III/c', NULL, 'Dosen', NULL, NULL, 'PNS'),
('197909112014092004', 'kristiawati@fkp.unair.ac.id', 'KRISTIAWATI', 'http://cybercampus.unair.ac.id/foto_pegawai/', 'http://cybercampus.unair.ac.id/foto_pegawai/', '3573045109790002', '0011097909', 2, 0, 'BLITAR', '1979-09-11', 'JL. KEBEN II BLOK B NO. 1 MALANG', '', '65148', '0315913257', 'PNS', 253, 'Fakultas Keperawatan', '870219318623000', 'Universitas Airlangga', 'KEPERAWATAN', NULL, NULL, 'S.Kp., M.Kep.,Sp.Kep.An', 'III/b', NULL, 'Dosen', NULL, NULL, 'PNS'),
('197910132010122001', 'elida_u@fkp.unair.ac.id', 'ELIDA ULFIANA', 'http://cybercampus.unair.ac.id/foto_pegawai/197910132010122001-1622561940.jpeg', 'http://cybercampus.unair.ac.id/foto_pegawai/197910132010122001-1622561940.jpeg', '3528095310790001', '0713107903', 2, 0, 'TULUNGAGUNG', '1979-10-13', 'GRAHA SEDATI MAS BLOK D-29 SEDATI SIDOARJO', '', '0', '0315913257', 'PNS', 253, 'Fakultas Keperawatan', '799785837608000', 'Universitas Airlangga', 'KEPERAWATAN', NULL, NULL, 'S.Kep.,Ns., M.Kep.', 'III/c', NULL, 'Dosen', NULL, NULL, 'PNS'),
('197911232010121001', 'puguh-s-n@fk.unair.ac.id', 'PUGUH SETYO NUGROHO (RSUA)', 'http://cybercampus.unair.ac.id/foto_pegawai/197911232010121001-1580088266.jpg', 'http://cybercampus.unair.ac.id/foto_pegawai/197911232010121001-1580088266.jpg', '3578202311790003', '0023117904', 1, 0, 'PACITAN', '1979-11-23', 'KARANG KLUMPRIK SELATAN NO 4 SURABAYA', '', '60222', '081938417065', 'PNS', NULL, 'Fakultas Kedokteran', '086295342618000', 'Universitas Airlangga', 'ILMU KESEHATAN TELINGA HIDUNG ', NULL, NULL, 'dr., Sp.THT-KL.', 'III/b', NULL, 'Dosen', NULL, NULL, 'PNS'),
('197912022010121003', 'muhammad-n-d@fk.unair.ac.id', 'MUHAMMAD NOOR DIANSYAH (RSUA)', '/', '/', '3578030212790002', '0002127905', 1, 0, 'SURABAYA', '1979-12-02', 'JL. PENJARINGAN ASRI XV / 30 SURABAYA', '', '60297', '08113300333', 'PNS', 221, 'Fakultas Kedokteran', '353650690615000', 'Universitas Airlangga', 'ILMU PENYAKIT DALAM', NULL, NULL, 'dr., Sp.PD.', 'III/b', NULL, 'Dosen', NULL, NULL, 'PNS'),
('198001102018013101', 'iwanhariyanto@staf.unair.ac.id', 'Iwan Hariyanto', 'http://cybercampus.unair.ac.id/foto_pegawai/139050564-1477278326.JPG', 'http://cybercampus.unair.ac.id/foto_pegawai/139050564-1477278326.JPG', '198001102018013101', NULL, 1, 0, 'MOJOKERTO', '1980-01-10', NULL, '', '0', NULL, 'TETAP NON PNS', 243, 'Fakultas Hukum', '896879830602000', 'Universitas Airlangga', NULL, NULL, NULL, NULL, 'II/a', NULL, 'Tendik', NULL, NULL, 'TETAP NON PNS'),
('198001232009121005', 'syaiful@fh.unair.ac.id', 'MOHAMMAD SYAIFUL ARIS', 'http://cybercampus.unair.ac.id/foto_pegawai/198001232009121005-1606224394.jpeg', 'http://cybercampus.unair.ac.id/foto_pegawai/198001232009121005-1606224394.jpeg', '3578092301800002', '0023018003', 1, 0, 'LAMONGAN', '1980-01-23', 'JL. SEMOLOWARU SELATAN I/16-D, SURABAYA', '', '60119', '081330658100', 'PNS', 243, 'Fakultas Hukum', '241648625606000', 'Universitas Airlangga', 'ILMU HUKUM', NULL, NULL, 'S.H., M.H.,LL.M', 'III/c', NULL, 'Dosen', NULL, NULL, 'PNS'),
('198001272010122001', 'arumbudi@fib.unair.ac.id', 'ARUM BUDIASTUTI', 'http://cybercampus.unair.ac.id/foto_pegawai/198001272010122001-1631946152.jpg', 'http://cybercampus.unair.ac.id/foto_pegawai/198001272010122001-1631946152.jpg', '3515186701800004', '0027018003', 2, 0, 'SURABAYA', '1980-01-27', 'JL. JEND. S. PARMAN 7 / 29 WARU - SIDOARJO', '', '61256', '085732797176', 'PNS', 252, 'Fakultas Ilmu Budaya', '771348505643000', 'Universitas Airlangga', 'BAHASA DAN SASTRA INGGRIS', NULL, NULL, 'S.S., M.C.S.', 'III/b', NULL, 'Dosen', NULL, NULL, 'PNS'),
('198002022006042002', 'danti-n-i@fk.unair.ac.id', 'DANTI NUR INDIASTUTI', 'http://cybercampus.unair.ac.id/foto_pegawai/198002022006042002-1618116492.jpg', 'http://cybercampus.unair.ac.id/foto_pegawai/198002022006042002-1618116492.jpg', '3578264022800001', '0002028002', 2, 0, 'SURABAYA', '1980-02-02', 'JL.WISMA PERMAI I/9 SURABAYA', '', '60115', '081938614343', 'PNS', 221, 'Fakultas Kedokteran', '254077332619000', 'Universitas Airlangga', 'KEDOKTERAN', NULL, NULL, 'dr., M.Ked.', 'III/c', '2007-09-01', 'Dosen', 'Fungsional', 'Lektor', 'PNS'),
('198002062018013101', 'akhmad.nurfizal.r@staf.unair.ac.id', 'Akhmad Nurfizal Reza', 'https://cybercampus.unair.ac.id/foto_pegawai/198002062016045101-1510907362.jpg', 'https://cybercampus.unair.ac.id/foto_pegawai/198002062016045101-1510907362.jpg', '198002062018013101', NULL, 1, 0, 'SURABAYA', '1980-02-06', NULL, '', '0', NULL, 'TETAP NON PNS', 241, NULL, '764135786604000', 'Universitas Airlangga', 'STATISTIKA', NULL, NULL, 'A.Md.', 'II/d', NULL, 'Tendik', NULL, NULL, 'TETAP NON PNS'),
('198002172005012001', 'indah-w@fst.unair.ac.id', 'INDAH WERDININGSIH', 'http://cybercampus.unair.ac.id/foto_pegawai/198002172005012001-1509959636.JPG', 'http://cybercampus.unair.ac.id/foto_pegawai/198002172005012001-1509959636.JPG', '3578155702800001', '0017028004', 2, 0, 'SURABAYA', '1980-02-17', 'JL. ALUN-ALUN BANGUNSARI SELATAN 17 A SURABAYA', '', '60179', '081333085854', 'PNS', 248, 'Fakultas Sains dan Teknologi', '078603941605000', 'Universitas Airlangga', 'SISTEM INFORMASI', NULL, NULL, 'S.Si., M.Kom.', 'III/c', '2006-04-01', 'Dosen', 'Fungsional', 'Lektor', 'PNS'),
('198003212003122001', 'shinta-d-i-s-r@fib.unair.ac.id', 'SHINTA DEVI IKA SANTHI RAHAYU', 'http://cybercampus.unair.ac.id/foto_pegawai/', 'http://cybercampus.unair.ac.id/foto_pegawai/', '3578066103800009', '0011097704', 2, 0, 'SURABAYA', '1980-03-21', 'KEDUNG ANYAR TENGAH NO. 3 SURABAYA', '', '60251', '082244494359', 'CPNS', 252, 'Fakultas Ilmu Budaya', '587287681614000', 'Universitas Airlangga', 'ILMU SEJARAH', NULL, NULL, 'S.S., M.A.', 'III/c', '2005-02-01', 'Dosen', 'Fungsional', 'Lektor', 'CPNS'),
('198003302010121001', 'ariaheru@staf.unair.ac.id', 'ARIA HERU SETIAWAN', 'https://cybercampus.unair.ac.id/foto_pegawai/198003302010121001.JPG', 'https://cybercampus.unair.ac.id/foto_pegawai/198003302010121001.JPG', '198003302010121001', NULL, 1, 0, 'SURABAYA', '1980-03-30', NULL, '', '0', NULL, 'PNS', 270, NULL, '363066960606000', 'Universitas Airlangga', NULL, NULL, NULL, 'S.Si', 'III/b', NULL, 'Tendik', NULL, NULL, 'PNS'),
('198005012006041002', 'lambang-b@fkg.unair.ac.id', 'LAMBANG BARGOWO', 'http://cybercampus.unair.ac.id/foto_pegawai/198005012006041002-1583396036.jpg', 'http://cybercampus.unair.ac.id/foto_pegawai/198005012006041002-1583396036.jpg', '3578040105800005', '0001058008', 1, 0, 'SURABAYA', '1980-05-01', 'NGAGEL TIRTO III/81 NGAGEL REJO SURABAYA', '', '60245', '0315043114', 'PNS', 242, 'Fakultas Kedokteran Gigi', '248320228609000', 'Universitas Airlangga', 'KEDOKTERAN GIGI', NULL, NULL, 'drg., SpPerio.,M.Kes.', 'III/c', '2007-04-01', 'Dosen', 'Fungsional', 'Lektor', 'PNS'),
('198005172003121004', 'abdulmanan@fpk.unair.ac.id', 'ABDUL MANAN', 'http://cybercampus.unair.ac.id/foto_pegawai/', 'http://cybercampus.unair.ac.id/foto_pegawai/', '3578061705800009', '0017058002', 1, 0, 'PATI', '1980-05-17', 'JL. KARANG KLUMPRIK BARAT III/19 RT.09 RW.06 KEL.BALAS KLUMPRIK KEC.WIYUNG SURABAYA', '', '60222', '085733668888', 'PNS', 254, 'Fakultas Perikanan dan Kelautan', '257015438507000', 'Universitas Airlangga', 'AKUAKULTUR', NULL, NULL, 'S.Pi., M.Si.', 'III/c', '2015-03-01', 'Dosen', 'Fungsional', 'Lektor', 'PNS'),
('198005172018013201', 'nurwitasari@staf.unair.ac.id', 'Nurwitasari', 'https://cybercampus.unair.ac.id/foto_pegawai/198005172018013201-1566354363.jpg', 'https://cybercampus.unair.ac.id/foto_pegawai/198005172018013201-1566354363.jpg', '198005172018013201', NULL, 2, 0, 'SURABAYA', '1980-05-17', 'LEBAK TIMUR 6/7H', '', '0', '+62 812-3066-', 'TETAP NON PNS', 716, NULL, '471676833619000', 'Universitas Airlangga', 'MANAJEMEN PERHOTELAN', NULL, NULL, 'A.Md.', 'II/d', '2018-01-01', 'Tendik', 'Pilih Stat', 'Pengadministrasi Akademik', 'TETAP NON PNS'),
('198005252005012004', 'lailamuniroh@fkm.unair.ac.id', 'LAILATUL MUNIROH', 'http://cybercampus.unair.ac.id/foto_pegawai/198005252005012004-1625183696.jpeg', 'http://cybercampus.unair.ac.id/foto_pegawai/198005252005012004-1625183696.jpeg', '3578096505800005', '0025058010', 2, 0, 'PASURUAN', '1980-05-25', 'SUKOLILO PARK REGENCY A/43 SURABAYA', '', '60111', '(031) 5964808', 'PNS', 250, 'Fakultas Kesehatan Masyarakat', '683440614624000', 'Universitas Airlangga', 'KESEHATAN MASYARAKAT', NULL, NULL, 'S.K.M., M.Kes.', 'III/d', '2006-03-01', 'Dosen', 'Fungsional', 'Lektor', 'PNS'),
('198006082018013201', 'ninis.yoeniati@staf.unair.ac.id', 'Ninis Yoeniati', 'https://cybercampus.unair.ac.id/foto_pegawai/198006082018013201-1568884447.JPG', 'https://cybercampus.unair.ac.id/foto_pegawai/198006082018013201-1568884447.JPG', '198006082018013201', NULL, 2, 0, 'SURABAYA', '1980-06-08', NULL, '', '0', NULL, 'TETAP NON PNS', 88, NULL, '779327105605000', 'Universitas Airlangga', 'UROLOGI', NULL, NULL, 'S.S.', 'III/b', NULL, 'Tendik', NULL, NULL, 'TETAP NON PNS'),
('198006242006041004', 'sujayadi@fh.unair.ac.id', 'SUJAYADI', 'http://cybercampus.unair.ac.id/foto_pegawai/', 'http://cybercampus.unair.ac.id/foto_pegawai/', '3516112406800002', '0024068004', 1, 0, 'MOJOKERTO', '1980-06-24', 'PERUM WIKARSA BLOK F/36 MOJOKERTO, 61363', '', '61363', '0315023151', 'PNS', 243, 'Fakultas Hukum', '587280678602000', 'Universitas Airlangga', 'ILMU HUKUM', NULL, NULL, 'S.H., LL.M.', 'III/c', NULL, 'Dosen', NULL, NULL, 'PNS'),
('198008172008012016', 'nurmawati-f@fk.unair.ac.id', 'NURMAWATI FATIMAH', 'http://cybercampus.unair.ac.id/foto_pegawai/198008172008012016-1618122515.jpg', 'http://cybercampus.unair.ac.id/foto_pegawai/198008172008012016-1618122515.jpg', '3578265708800002', '0017088008', 2, 0, 'SURABAYA', '1980-08-17', 'JL. DHARMAHUSADA INDAH TENGAH 1/14BLOK C-74 SURABAYA', '', '60115', '08123188579', 'PNS', 221, 'Fakultas Kedokteran', '249555038619001', 'Universitas Airlangga', 'KEDOKTERAN', NULL, NULL, 'dr., M.Si.', 'III/c', '2009-09-01', 'Dosen', 'Fungsional', 'Lektor', 'PNS'),
('198009052005012003', 'gressy.septarini@psikologi.unair.ac.id', 'BERLIAN GRESSY SEPTARINI', 'http://cybercampus.unair.ac.id/foto_pegawai/198009052005012003-1583729484.jpeg', 'http://cybercampus.unair.ac.id/foto_pegawai/198009052005012003-1583729484.jpeg', '1256174909800009', '0005098002', 2, 0, 'JAYAPURA', '1980-09-05', 'JALAN HAYAM WURUK G-65 60242 SURABAYA', '', '60242', '081234192828', 'PNS', NULL, 'Fakultas Psikologi', '587302142609000', 'Universitas Airlangga', 'PSIKOLOGI TERAPAN', NULL, NULL, 'S.Psi., M.Psych', 'III/b', '2005-01-01', 'Dosen', 'Fungsional', 'Lektor', 'PNS'),
('198009162006041002', 'alex@staf.unair.ac.id', 'LAMBANG ALEX SAPUTRO', 'https://cybercampus.unair.ac.id/foto_pegawai/198009162006041002-1602474299.jpg', 'https://cybercampus.unair.ac.id/foto_pegawai/198009162006041002-1602474299.jpg', '198009162006041002', NULL, 1, 0, 'MAGETAN', '1980-09-16', NULL, '', '0', NULL, 'PNS', 34, 'Sekretaris Universitas', '587283169646000', 'Universitas Airlangga', NULL, NULL, NULL, 'A.Md.', 'III/c', '2007-12-01', 'Tendik', 'Fungsional', 'Fungsional Umum', 'PNS'),
('198009212018035201', 'rosariaindah@staf.unair.ac.id', 'ROSARIA INDAH', 'https://cybercampus.unair.ac.id/foto_pegawai/198009212018035201-1586168304.jpeg', 'https://cybercampus.unair.ac.id/foto_pegawai/198009212018035201-1586168304.jpeg', '198009212018035201', NULL, 2, 0, 'SURABAYA', '1980-09-21', NULL, '', '0', NULL, 'PEGAWAI TIDAK TETAP', 702, NULL, '896887809609000', 'Universitas Airlangga', NULL, NULL, NULL, NULL, NULL, NULL, 'Tendik', NULL, NULL, 'PEGAWAI TIDAK TETAP'),
('198009212022113201', 'rosariaindah@staf.unair.ac.id', 'ROSARIA INDAH', 'https://cybercampus.unair.ac.id/foto_pegawai/198009212018035201-1586168304.jpeg', 'https://cybercampus.unair.ac.id/foto_pegawai/198009212018035201-1586168304.jpeg', '198009212022113201', NULL, 2, 0, 'SURABAYA', '1980-09-21', NULL, '', '0', NULL, 'CPTNPNS', 702, NULL, '896887809609000', 'Universitas Airlangga', NULL, NULL, NULL, 'A.P.', 'II/a', NULL, 'Tendik', NULL, NULL, 'CPTNPNS'),
('198010072005012003', 'margaretha@psikologi.unair.ac.id', 'MARGARETHA', 'http://cybercampus.unair.ac.id/foto_pegawai/', 'http://cybercampus.unair.ac.id/foto_pegawai/', '3578214710800001', '0007108001', 2, 0, 'JAKARTA TIMUR', '1980-10-07', 'PERUM TAMAN PONDOK INDAH WIYUNG BLOK O NO.8 SURABAYA', '', '60224', '081210064764', 'PNS', 251, 'Fakultas Psikologi', '143943520618000', 'Universitas Airlangga', 'PSIKOLOGI', NULL, NULL, 'S.Psi., P.G.Dip.Psych., M.Sc.', 'III/c', '2005-01-01', 'Dosen', 'Fungsional', 'Lektor', 'PNS'),
('198010212020025101', 'iskak@staf.unair.ac.id', 'Moch. Iskak	', 'https://cybercampus.unair.ac.id/foto_pegawai/198010212020025101-1612251138.jpg', 'https://cybercampus.unair.ac.id/foto_pegawai/198010212020025101-1612251138.jpg', '198010212020025101', NULL, 1, 0, 'MOJOKERTO', '1980-10-21', NULL, '', '0', NULL, 'PEGAWAI TIDAK TETAP', 688, 'Direktorat Sarana Prasarana dan Lingkungan', '941178394616000', 'Universitas Airlangga', NULL, NULL, NULL, NULL, 'Setara II Masa Kerja <= 5', NULL, 'Tendik', NULL, NULL, 'PEGAWAI TIDAK TETAP'),
('198010272018035101', 'nurul_abidin@staf.unair.ac.id', 'NURUL ABIDIN', 'https://cybercampus.unair.ac.id/foto_pegawai/139101025-1477278535.JPG', 'https://cybercampus.unair.ac.id/foto_pegawai/139101025-1477278535.JPG', '198010272018035101', NULL, 1, 0, 'SURABAYA', '1980-10-27', NULL, '', '0', NULL, 'PEGAWAI TIDAK TETAP', 243, 'Fakultas Hukum', '896879723614000', 'Universitas Airlangga', NULL, NULL, NULL, NULL, NULL, '2022-01-01', 'Tendik', 'Fungsional', 'Petugas Ruang Kuliah', 'PEGAWAI TIDAK TETAP'),
('198011122018013101', 'jokosusanto@staf.unair.ac.id', 'Joko Susanto', 'https://cybercampus.unair.ac.id/foto_pegawai/198011122018013101-1571110081.jpg', 'https://cybercampus.unair.ac.id/foto_pegawai/198011122018013101-1571110081.jpg', '198011122018013101', NULL, 1, 0, 'SURABAYA', '1980-11-12', NULL, '', '0', NULL, 'TETAP NON PNS', 124, NULL, '975581174606000', 'Universitas Airlangga', 'AKUNTANSI', NULL, NULL, NULL, 'II/b', '2019-01-01', 'Tendik', 'Fungsional', 'Administrasi Akademik', 'TETAP NON PNS'),
('198011192008102001', 'andriani@staf.unair.ac.id', 'ANDRIANI', 'https://cybercampus.unair.ac.id/foto_pegawai/198011192008102001.JPG', 'https://cybercampus.unair.ac.id/foto_pegawai/198011192008102001.JPG', '198011192008102001', NULL, 2, 0, NULL, '1980-11-19', NULL, '', '0', NULL, 'PNS', 169, NULL, '587287947606000', 'Universitas Airlangga', 'KIMIA', NULL, NULL, 'SE.', 'III/a', NULL, 'Tendik', NULL, NULL, 'PNS'),
('198012072008121001', 'saifulardhie@fk.unair.ac.id', 'MOHAMMAD SAIFUL ARDHI', 'http://cybercampus.unair.ac.id/foto_pegawai/198012072008121001-1537323160.jpg', 'http://cybercampus.unair.ac.id/foto_pegawai/198012072008121001-1537323160.jpg', '3578040712800007', '0007128008', 1, 0, 'SURABAYA', '1980-12-07', 'KERTAJAYA INDAH TENGAH 7/36 SURABAYA	', '', '60116', '08123133374', 'PNS', 221, 'Fakultas Kedokteran', '348807488619000', 'Universitas Airlangga', 'NEUROLOGI', NULL, NULL, 'dr., SpS', 'III/b', NULL, 'Dosen', NULL, NULL, 'PNS'),
('198101052005012003', 'diniandrias@fkm.unair.ac.id', 'DINI RIRIN ANDRIAS', 'http://cybercampus.unair.ac.id/foto_pegawai/198101052005012003-1619148104.jpg', 'http://cybercampus.unair.ac.id/foto_pegawai/198101052005012003-1619148104.jpg', '3523164501810001', '0020057905', 2, 0, 'TUBAN', '1981-01-05', 'JL. BASUKI RAHMAD GG. WIJAYAKUSUMA 3 NO. 72, TUBAN', '', '62313', '081330439443', 'PNS', 250, 'Fakultas Kesehatan Masyarakat', '259407914648000', 'Universitas Airlangga', 'KESEHATAN MASYARAKAT', NULL, NULL, 'S.K.M., M.Sc.', 'III/b', NULL, 'Dosen', NULL, NULL, 'PNS'),
('198101312005012002', 'tri.ambarini@psikologi.unair.ac.id', 'TRI KURNIATI AMBARINI', 'http://cybercampus.unair.ac.id/foto_pegawai/', 'http://cybercampus.unair.ac.id/foto_pegawai/', '3578036701740002', '0024048102', 2, 0, 'PONTIANAK', '1981-01-31', 'CENTRAL PARK GUNUNG ANYAR D-28 SURABAYA', '', '60296', '0318705739', 'PNS', 251, 'Fakultas Psikologi', '587288184606000', 'Universitas Airlangga', 'PSIKOLOGI', NULL, NULL, 'M.Psi., psikolog.', 'III/c', NULL, 'Dosen', NULL, NULL, 'PNS'),
('198102182022013101', 'hariyono@pasca.unair.ac.id', 'Hariyono', 'http://cybercampus.unair.ac.id/foto_pegawai/', 'http://cybercampus.unair.ac.id/foto_pegawai/', NULL, NULL, 1, 0, 'JOMBANG', '1992-02-18', NULL, '', '0', '085732375866', 'CPTNPNS', NULL, 'Fakultas Sekolah Pascasarjana', NULL, 'Universitas Airlangga', 'EKONOMI KESEHATAN', NULL, 'Dr.', 'S.Kep., Ns., M.Kep.', 'III/c', NULL, 'Dosen', NULL, NULL, 'CPTNPNS'),
('198103062006041002', 'deny-s@fkg.unair.ac.id', 'DENY SAPUTRA', 'http://cybercampus.unair.ac.id/foto_pegawai/', 'http://cybercampus.unair.ac.id/foto_pegawai/', NULL, NULL, NULL, 0, 'SURABAYA', NULL, 'JL. DUKUH KUPANG TIMUR XIX/41A SBY', '', '0', '0315612323', NULL, NULL, 'Fakultas Kedokteran Gigi', NULL, 'Universitas Airlangga', 'KEDOKTERAN GIGI', NULL, NULL, 'drg., M.Ke', 'III/c', '2007-01-04', 'Dosen', 'Fungsional', 'Lektor', NULL),
('198103142005011002', 'mahardianr@ff.unair.ac.id', 'MAHARDIAN RAHMADI', 'http://cybercampus.unair.ac.id/foto_pegawai/', 'http://cybercampus.unair.ac.id/foto_pegawai/', '3578161403810003', '0014038102', 1, 0, 'SURABAYA', '1981-03-14', 'WONOREJO INDAH TIMUR 16 (KAV.22A)', '', '60296', '081224656516', 'PNS', NULL, 'Fakultas Farmasi', '097416671616000', 'Universitas Airlangga', 'FARMASI KLINIK', NULL, NULL, 'S.Si., Apt., M.Sc., Ph.D.', 'III/c', NULL, 'Dosen', NULL, NULL, 'PNS'),
('198103232009121005', 'amak.yaqoub@feb.unair.ac.id', 'AMAK MOHAMAD YAQOUB', 'http://cybercampus.unair.ac.id/foto_pegawai/', 'http://cybercampus.unair.ac.id/foto_pegawai/', '3517092303810006', '0023038105', 1, 0, 'JOMBANG', '1981-03-23', 'JL. MENANGGAL INDAH III/3 SURABAYA', '', '61411', '0315033642', 'PNS', 244, 'Fakultas Ekonomi dan Bisnis', '470811472412000', 'Universitas Airlangga', 'MANAJEMEN', NULL, NULL, 'SE., MSM.', 'III/c', '2009-12-01', 'Dosen', 'Fungsional', 'Lektor', 'PNS'),
('198104042012122006', 'lydia.arfianti@fk.unair.ac.id', 'LYDIA ARFIANTI', 'http://cybercampus.unair.ac.id/foto_pegawai/198104042012122006-1610554362.jpeg', 'http://cybercampus.unair.ac.id/foto_pegawai/198104042012122006-1610554362.jpeg', '3578274404810004', '0004048108', 2, 0, 'SURABAYA', '1981-04-04', 'JL. DARMO PERMAI TIMUR 7 / 1 SURABAYA', '', '60189', '0315038838', 'PNS', 221, 'Fakultas Kedokteran', '249203340604000', 'Universitas Airlangga', 'ILMU KEDOKTERAN FISIK DAN REHA', NULL, NULL, 'dr., Sp.KFR', 'III/c', NULL, 'Dosen', NULL, NULL, 'PNS'),
('198104072005011001', 'sapta@fh.unair.ac.id', 'SAPTA APRILIANTO', 'http://cybercampus.unair.ac.id/foto_pegawai/', 'http://cybercampus.unair.ac.id/foto_pegawai/', '3578240704810001', '0007048103', 1, 0, 'SURABAYA', '1981-04-07', 'Semampir Selatan IIa no 62', '', '60119', '081216040100', 'PNS', 243, 'Fakultas Hukum', '251123089615000', 'Universitas Airlangga', 'ILMU HUKUM', NULL, NULL, 'S.H., M.H., LL.M.', 'III/a', '2006-03-01', 'Dosen', 'Fungsional', 'Asisten Ahli', 'PNS'),
('198104082008101001', 'achmad.suhudi@staf.unair.ac.id', 'ACHMAD SUHUDI', 'https://cybercampus.unair.ac.id/foto_pegawai/198104082008101001-1570008279.jpeg', 'https://cybercampus.unair.ac.id/foto_pegawai/198104082008101001-1570008279.jpeg', '198104082008101001', NULL, 1, 0, 'SURABAYA', '1981-04-08', NULL, '', '0', NULL, 'PNS', 32, 'Direktorat Keuangan', '674852058606000', 'Universitas Airlangga', NULL, NULL, NULL, NULL, 'II/b', '2011-08-01', 'Tendik', 'Fungsional', 'PPABP', 'PNS'),
('198104142008122001', 'farapti@fkm.unair.ac.id', 'FARAPTI', 'http://cybercampus.unair.ac.id/foto_pegawai/', 'http://cybercampus.unair.ac.id/foto_pegawai/', '3578255404810001', '0014048105', 2, 0, 'SURABAYA', '1981-04-14', 'JL. RAYA RUNGKUT MENANGGAL NO 7 SURABAY', '', '60293', '0318712204', 'PNS', 250, 'Fakultas Kesehatan Masyarakat', '269823795615000', 'Universitas Airlangga', 'KESEHATAN MASYARAKAT', NULL, NULL, 'dr., M.Gizi', 'III/d', NULL, 'Dosen', NULL, NULL, 'PNS'),
('198104222006041002', 'alifriza@fh.unair.ac.id', 'RIZA ALIFIANTO KURNIAWAN', 'http://cybercampus.unair.ac.id/foto_pegawai/198104222006041002-1579765927.jpg', 'http://cybercampus.unair.ac.id/foto_pegawai/198104222006041002-1579765927.jpg', '3578102204810010', '0022048106', 1, 0, 'SURABAYA', '1981-04-22', 'JL. PLOSO X NO. 28 SURABAYA', '', '60133', '08121660529', 'PNS', 243, 'Fakultas Hukum', '250101235619000', 'Universitas Airlangga', 'ILMU HUKUM', NULL, NULL, 'S.H., MTCP', 'III/c', '0000-00-00', 'Dosen', NULL, NULL, 'PNS'),
('198105102005012001', 'prasasti_corie@fkm.unair.ac.id', 'CORIE INDRIA PRASASTI', 'http://cybercampus.unair.ac.id/foto_pegawai/198105102005012001-1579843226.JPG', 'http://cybercampus.unair.ac.id/foto_pegawai/198105102005012001-1579843226.JPG', '3578095005810005', '0010058109', 2, 0, 'SURABAYA', '1981-05-10', 'Griya Pesona Asri Blok H-38 Medokan Ayu, SURABAYA', '', '60295', '0318705656', 'PNS', 250, 'Fakultas Kesehatan Masyarakat', '242015188606000', 'Universitas Airlangga', 'KESEHATAN MASYARAKAT', NULL, NULL, 'S.KM., M.Kes', 'III/d', '2006-02-01', 'Dosen', 'Fungsional', 'Lektor', 'PNS'),
('198105132008011007', 'ivan-r@fk.unair.ac.id', 'IVAN RAHMATULLAH', 'http://cybercampus.unair.ac.id/foto_pegawai/198105132008011007-1576570219.jpg', 'http://cybercampus.unair.ac.id/foto_pegawai/198105132008011007-1576570219.jpg', '3509211305810001', '0013058107', 1, 0, 'JEMBER', '1981-05-13', 'Jl. Gubeng Kertajaya XI B No. 6 - 8, Surabaya', '', '60286', '082125660745', 'PNS', 221, 'Fakultas Kedokteran', '690989934626000', 'Universitas Airlangga', 'KEDOKTERAN', NULL, NULL, 'dr., MPH.', 'III/b', '2009-09-01', 'Dosen', 'Fungsional', 'Asisten Ahli', 'PNS'),
('198106032009121003', 'pungky-m@fk.unair.ac.id', 'PUNGKY MULAWARDHANA', 'http://cybercampus.unair.ac.id/foto_pegawai/', 'http://cybercampus.unair.ac.id/foto_pegawai/', '3688080306810004', '0003068107', 1, 0, 'SURABAYA', '1981-06-03', 'JL. DHARMAHUSADA INDAH A-28 SURABAYA', '', '60285', '08123009606', 'PNS', 221, 'Fakultas Kedokteran', '257271478606000', 'Universitas Airlangga', 'OBSTETRI DAN GINEKOLOGI ', NULL, NULL, 'dr., Sp.OG.', 'III/b', NULL, 'Dosen', NULL, NULL, 'PNS'),
('198106052002122001', 'indri@staf.unair.ac.id', 'INDRI SULISTYOWATI', 'http://cybercampus.unair.ac.id/foto_pegawai/198106052002122001-1507860444.jpg', 'http://cybercampus.unair.ac.id/foto_pegawai/198106052002122001-1507860444.jpg', '198106052002122001', NULL, 2, 0, 'NGANJUK', '1981-06-05', 'JL. SEMAMPIR TENGAH III/8C, SURABAYA', '', '0', '081357416868', 'PNS', 30, 'Direktorat Sistem Informasi', '683439152615000', 'Universitas Airlangga', NULL, NULL, NULL, 'S.Kom', 'III/b', NULL, 'Tendik', NULL, NULL, 'PNS'),
('198106262014061003', 'jsusanto@vokasi.unair.ac.id', 'Joko Susanto', 'https://cybercampus.unair.ac.id/foto_pegawai/198106262014061003-1566975735.JPG', 'https://cybercampus.unair.ac.id/foto_pegawai/198106262014061003-1566975735.JPG', '198106262014061003', '3426068101', 1, 0, 'BOJONEGORO', '1981-06-26', 'Dsn. Mojomeneng RtT 15 RW 05 Desa Gempolpading Kec. Pucuk Kab. Lamongan', '', '62257', '081331466486', 'PNS', 674, NULL, NULL, 'Universitas Airlangga', 'KEPERAWATAN', NULL, NULL, 'S.Kep., Ns., M.Kes.', 'III/a', '2015-12-01', 'Tendik', 'Struktural', 'Dosen ', 'PNS'),
('198106302007011001', 'imamchanafi@staf.unair.ac.id', 'IMAM CHANAFI', 'https://cybercampus.unair.ac.id/foto_pegawai/198106302007011001-1601611050.jpg', 'https://cybercampus.unair.ac.id/foto_pegawai/198106302007011001-1601611050.jpg', '198106302007011001', NULL, 1, 0, 'SURABAYA', '1981-06-30', NULL, '', '0', NULL, 'PNS', 246, 'Fakultas Kedokteran Hewan', '244326948617000', 'Universitas Airlangga', NULL, NULL, NULL, NULL, 'II/d', '2007-01-01', 'Tendik', 'Pilih Stat', 'Keuangan (pembantu PUMK)', 'PNS'),
('198107192018013201', 'henipuspitasari@staf.unair.ac.id', 'Heni Puspitasari', 'https://cybercampus.unair.ac.id/foto_pegawai/198107192015085201-1478050842.JPG', 'https://cybercampus.unair.ac.id/foto_pegawai/198107192015085201-1478050842.JPG', '198107192018013201', NULL, 2, 0, 'KLATEN', '1981-07-19', NULL, '', '0', NULL, 'TETAP NON PNS', 38, 'LPT', '357954635619000', 'Universitas Airlangga', NULL, NULL, NULL, 'S.KH.', 'III/b', NULL, 'Tendik', NULL, NULL, 'TETAP NON PNS'),
('198108032018013101', 'danny-z@staf.unair.ac.id', 'Danny Zulkarnain Lubis', 'https://cybercampus.unair.ac.id/foto_pegawai/139101139-1477452215.JPG', 'https://cybercampus.unair.ac.id/foto_pegawai/139101139-1477452215.JPG', '198108032018013101', NULL, 1, 0, 'SURABAYA', '1981-08-03', NULL, '', '0', NULL, 'TETAP NON PNS', 245, 'Fakultas Farmasi', '059288902606000', 'Universitas Airlangga', NULL, NULL, NULL, NULL, 'II/b', NULL, 'Tendik', NULL, NULL, 'TETAP NON PNS'),
('198110032005012001', 'triska.nindya@fkm.unair.ac.id', 'TRISKA SUSILA NINDYA', 'http://cybercampus.unair.ac.id/foto_pegawai/', 'http://cybercampus.unair.ac.id/foto_pegawai/', '3578064310810008', '0003108104', 2, 0, 'KEDIRI', '1981-10-03', 'JL. PAKIS TIRTOSARI XVII/9', '', '60256', '085852968680', 'PNS', 250, 'Fakultas Kesehatan Masyarakat', '690792494614000', 'Universitas Airlangga', 'KESEHATAN MASYARAKAT', NULL, NULL, 'S.K.M., M.P.H.', 'III/c', '2006-01-02', 'Dosen', 'Fungsional', 'Lektor', 'PNS'),
('198110062008012018', 'nurina-h@fk.unair.ac.id', 'NURINA HASANATULUDHHIYAH', 'http://cybercampus.unair.ac.id/foto_pegawai/198110062008012018-1609983762.JPG', 'http://cybercampus.unair.ac.id/foto_pegawai/198110062008012018-1609983762.JPG', '3578204610810001', '0006108103', 2, 0, 'SURABAYA', '1981-10-06', 'THE GAYUNGSARI BLOK D 28/A SURABAYA', '', '60235', '08113301101', 'PNS', 221, 'Fakultas Kedokteran', '253220768643000', 'Universitas Airlangga', 'KEDOKTERAN', NULL, NULL, 'dr., M.Si.', 'III/c', '2009-08-27', 'Dosen', 'Fungsional', 'Lektor', 'PNS'),
('198110132008101002', 'eko.kuswanto@staf.unair.ac.id', 'EKO KUSWANTO', 'https://cybercampus.unair.ac.id/foto_pegawai/198110132008101002-1628761308.jpg', 'https://cybercampus.unair.ac.id/foto_pegawai/198110132008101002-1628761308.jpg', '198110132008101002', NULL, 1, 0, 'SURABAYA', '1981-10-13', NULL, '', '0', NULL, 'PNS', 204, NULL, '885127720619000', 'Universitas Airlangga', 'PENDIDIKAN PROFESI NERS', NULL, NULL, 'S.Sos.', 'II/d', NULL, 'Tendik', NULL, NULL, 'PNS'),
('198110282006041003', 'indra.kharisma@fst.unair.ac.id', 'INDRA KHARISMA RAHARJANA', 'http://cybercampus.unair.ac.id/foto_pegawai/198110282006041003-1509960015.JPG', 'http://cybercampus.unair.ac.id/foto_pegawai/198110282006041003-1509960015.JPG', '3578032810810003', '0028108105', 1, 0, 'BOJONEGORO', '1981-10-28', 'PERUM AMERTA RESIDENCE BLOK C-6 SURABAYA', '', '60296', '085648239968', 'PNS', 248, 'Fakultas Sains dan Teknologi', '683491781648000', 'Universitas Airlangga', 'SISTEM INFORMASI', NULL, NULL, 'S.Kom., M.T.', 'III/c', NULL, 'Dosen', NULL, NULL, 'PNS'),
('198111112010121004', 'taufiq-h@fk.unair.ac.id', 'TAUFIQ HIDAYAT', 'http://cybercampus.unair.ac.id/foto_pegawai/', 'http://cybercampus.unair.ac.id/foto_pegawai/', '3509131111810001', '0011118111', 1, 0, 'LUMAJANG', '1981-11-11', 'JL.KASIH 2 NO 1 SUKOLILO DIAN REGENCY SURABAYA', '', '60111', '0315501694', 'PNS', NULL, 'Fakultas Kedokteran', '482385077625000', 'Universitas Airlangga', 'ILMU KESEHATAN ANAK', NULL, NULL, 'dr.,SpA,K', 'III/c', NULL, 'Dosen', NULL, NULL, 'PNS'),
('198111212020013201', 'lidya.tumewu@staf.unair.ac.id', 'Lidya Tumewu', 'https://cybercampus.unair.ac.id/foto_pegawai/198111212018035201-1576643034.JPG', 'https://cybercampus.unair.ac.id/foto_pegawai/198111212018035201-1576643034.JPG', '198111212020013201', NULL, 2, 0, 'SURABAYA', '1981-11-21', NULL, '', '0', NULL, 'TETAP NON PNS', 38, 'LPT', '54.219.619.1-604.000', 'Universitas Airlangga', NULL, NULL, NULL, 'S.Farm.', 'III/a', NULL, 'Tendik', NULL, NULL, 'TETAP NON PNS'),
('198111232009121005', 'rizka-f-p@fk.unair.ac.id', 'RIZKA FATHONI PERDANA', 'http://cybercampus.unair.ac.id/foto_pegawai/', 'http://cybercampus.unair.ac.id/foto_pegawai/', '3578232311810002', '0723118107', 1, 0, 'SURABAYA', '1981-11-23', 'JL. PAGESANGAN  1-A/21-E SURABAYA', '', '60233', '08563315233', 'PNS', 221, 'Fakultas Kedokteran', '348872326609000', 'Universitas Airlangga', 'ILMU KESEHATAN TELINGA HIDUNG ', NULL, NULL, 'dr., Sp.T.H.T.K.L (K), FICS', 'III/b', NULL, 'Dosen', NULL, NULL, 'PNS'),
('198111272015042002', 'yessy.puspitasari@fk.unair.ac.id', 'YESSY PUSPITASARI', 'http://cybercampus.unair.ac.id/foto_pegawai/198111272015042002-1537416017.JPG', 'http://cybercampus.unair.ac.id/foto_pegawai/198111272015042002-1537416017.JPG', '3578246711810004', '0027118104', 2, 0, 'SURABAYA', '1981-11-27', 'Panjang Jiwo Permai 2 no.44', '', '0', '081331894795', 'PNS', NULL, 'Fakultas Kedokteran', '491406609606000', 'Universitas Airlangga', 'KEDOKTERAN', NULL, NULL, 'dr.Sp.PK', 'III/b', '2017-04-01', 'Dosen', 'Fungsional', 'Asisten Ahli', 'PNS'),
('198112262014092002', 'surtikasari@staf.unair.ac.id', 'NURUL SURTIKA SARI', 'https://cybercampus.unair.ac.id/foto_pegawai/198112262014092002-1646734684.jpeg', 'https://cybercampus.unair.ac.id/foto_pegawai/198112262014092002-1646734684.jpeg', '198112262014092002', NULL, 2, 0, 'SURABAYA', '1981-12-26', NULL, '', '0', NULL, 'PNS', 248, 'Fakultas Sains dan Teknologi', '745940106619000', 'Universitas Airlangga', NULL, NULL, '-', 'A.MD', 'II/b', '2017-01-06', 'Tendik', 'Fungsional', 'Fungsional Umum', 'PNS'),
('198202212008122003', 'kristanti@fk.unair.ac.id', 'KRISTANTI WANITO WIGATI', 'http://cybercampus.unair.ac.id/foto_pegawai/', 'http://cybercampus.unair.ac.id/foto_pegawai/', '3578226102820001', '0021028201', 2, 0, 'MADIUN', '1982-02-21', 'BRONGGALAN 2E  NO.9 SURABAYA', '', '60132', '08123590775', 'PNS', 221, 'Fakultas Kedokteran', '086338092609000', 'Universitas Airlangga', 'KEDOKTERAN', NULL, NULL, 'dr., M.Si.', 'III/d', NULL, 'Dosen', NULL, NULL, 'PNS'),
('198203252018013101', 'slamet.triyono@staf.unair.ac.id', 'Slamet Triyono', 'https://cybercampus.unair.ac.id/foto_pegawai/139121437-1478310500.JPG', 'https://cybercampus.unair.ac.id/foto_pegawai/139121437-1478310500.JPG', '198203252018013101', NULL, 1, 0, 'PATI', '1982-03-25', NULL, '', '0', NULL, 'TETAP NON PNS', 247, 'Fakultas Ilmu Sosial Ilmu Politik', ' 266210517619000 ', 'Universitas Airlangga', NULL, NULL, NULL, 'A.Md.', 'II/d', '2019-01-01', 'Tendik', 'Pilih Stat', 'Pengadministrasi Kepegawaian', 'TETAP NON PNS'),
('198203292015041001', 'alfian-n-r-10@fk.unair.ac.id', 'ALFIAN NUR ROSYID', 'http://cybercampus.unair.ac.id/foto_pegawai/198203292015041001-1577341737.jpeg', 'http://cybercampus.unair.ac.id/foto_pegawai/198203292015041001-1577341737.jpeg', '3578152903820001', '0029038203', 1, 0, 'SURABAYA', '1982-03-29', 'SIMOMULYO BARU 6-D/19 RT 002/004, SURABAYA', '', '60181', '081350125649', 'PNS', 221, 'Fakultas Kedokteran', '578446429604000', 'Universitas Airlangga', 'PENDIDIKAN PROFESI DOKTER', NULL, NULL, 'dr., Sp.P, FAPSR', 'III/c', NULL, 'Dosen', NULL, NULL, 'PNS'),
('198204112008122002', 'kurnia-d-a@fkm.unair.ac.id', 'KURNIA DWI ARTANTI', 'http://cybercampus.unair.ac.id/foto_pegawai/198204112008122002-1577088915.jpg', 'http://cybercampus.unair.ac.id/foto_pegawai/198204112008122002-1577088915.jpg', '3578295104820001', '0011048205', 2, 0, 'SURABAYA', '1982-04-11', 'JL. GADING INDAH UTARA II/17 SURABAYA', '', '60124', '087739281082', 'PNS', NULL, 'Fakultas Kesehatan Masyarakat', '340034073619000', 'Universitas Airlangga', 'EPIDEMIOLOGI', NULL, NULL, 'dr. M.Sc', 'III/d', NULL, 'Dosen', NULL, NULL, 'PNS'),
('198204242005011001', 'pulung-s@fkm.unair.ac.id', 'PULUNG SISWANTARA', 'http://cybercampus.unair.ac.id/foto_pegawai/', 'http://cybercampus.unair.ac.id/foto_pegawai/', '3578262404820003', '0024048206', 1, 0, 'JOMBANG', '1982-04-24', 'PLOSO TIMUR II NO 38A, SURABAYA', '', '60133', '08563065091', 'PNS', NULL, 'Fakultas Kesehatan Masyarakat', '259977734619000', 'Universitas Airlangga', 'KESEHATAN MASYARAKAT', NULL, NULL, 'S.K.M., M.Kes', 'III/c', NULL, 'Dosen', NULL, NULL, 'PNS'),
('198204252005012002', 'widowati@fh.unair.ac.id', 'CHRISTIANI WIDOWATI', 'http://cybercampus.unair.ac.id/foto_pegawai/', 'http://cybercampus.unair.ac.id/foto_pegawai/', '3578096504820002', '0025048203', 2, 0, 'SURABAYA', '1982-04-25', 'JL. MENUR IV/20 SURABAYA', '', '60118', '085733244305', 'PNS', 243, 'Fakultas Hukum', '683536635606000', 'Universitas Airlangga', 'ILMU HUKUM', NULL, NULL, 'S.H., LL.M.', 'III/a', '2005-01-01', 'Dosen', 'Fungsional', 'Asisten Ahli', 'PNS'),
('198204262018013201', 'ikamayati@staf.unair.ac.id', 'Ika Mayati', 'https://cybercampus.unair.ac.id/foto_pegawai/139101148-1476930840.JPG', 'https://cybercampus.unair.ac.id/foto_pegawai/139101148-1476930840.JPG', '198204262018013201', NULL, 2, 0, 'SURABAYA', '1982-04-26', NULL, '', '0', NULL, 'TETAP NON PNS', 245, 'Fakultas Farmasi', '763017597609000', 'Universitas Airlangga', NULL, NULL, NULL, 'A.Md.', 'II/d', NULL, 'Tendik', NULL, NULL, 'TETAP NON PNS'),
('198204282010122003', 'damayanti@fk.unair.ac.id', 'DAMAYANTI', 'http://cybercampus.unair.ac.id/foto_pegawai/198204282010122003-1610445708.jpg', 'http://cybercampus.unair.ac.id/foto_pegawai/198204282010122003-1610445708.jpg', '3578246804820001', '0028048205', 2, 0, 'SURABAYA', '1982-04-28', 'JL. PRAPEN INDAH J / 14 SURABAYA', '', '60299', '0318411092', 'PNS', NULL, 'Fakultas Kedokteran', '364699546615000', 'Universitas Airlangga', 'DERMATOLOGI DAN VENEREOLOGI', NULL, NULL, 'dr., Sp.KK.', 'III/c', NULL, 'Dosen', NULL, NULL, 'PNS'),
('198205092018013101', 'agussukamto@staf.unair.ac.id', 'Agus Sukamto', 'https://cybercampus.unair.ac.id/foto_pegawai/198205092018013101-1664888053.jpg', 'https://cybercampus.unair.ac.id/foto_pegawai/198205092018013101-1664888053.jpg', '198205092018013101', NULL, 1, 0, 'MADIUN', '1982-05-09', NULL, '', '0', NULL, 'TETAP NON PNS', 350, NULL, '366402865621000', 'Universitas Airlangga', NULL, NULL, NULL, NULL, 'II/b', '2018-01-01', 'Tendik', 'Pilih Stat', 'Pengadministrasi Umum', 'TETAP NON PNS'),
('198206052007101001', 'chasan@staf.unair.ac.id', 'Nur Moch. Chasan Ghozali, SE', NULL, '198206052007101001_FOTO.jpg', '198206052007101001', '-', 1, 0, 'SURABAYA', NULL, 'PERUM TAMAN RESIDENCE NO.35, KEDUNGTURI, SIDOARJO', '', '0', '082337001982', 'PNS', NULL, 'Direktorat Sumberdaya Manusia', '892305137609000', 'Universitas Airlangga', NULL, NULL, '', 'S.E., BNT.', 'II/d', NULL, 'Tendik', 'Fungsional', 'PPABP Non PNS', 'PNS'),
('198206062007101001', 'faried-e@fst.unair.ac.id', 'FARIED EFFENDY', 'http://cybercampus.unair.ac.id/foto_pegawai/198206062007101001-1509960195.JPG', 'http://cybercampus.unair.ac.id/foto_pegawai/198206062007101001-1509960195.JPG', '3578040606820001', '0006068202', 1, 0, 'SURABAYA', '1982-06-06', 'JAGIR SIDOMUKTI V/9 A SURABAYA', '', '60244', '087854864845', 'PNS', 248, 'Fakultas Sains dan Teknologi', '587287897609000', 'Universitas Airlangga', 'SISTEM INFORMASI', NULL, NULL, 'S.Si.,M.Kom.', 'III/b', '2010-07-01', 'Dosen', 'Fungsional', 'Asisten Ahli', 'PNS'),
('198207122015042001', 'yulia.nadar@fk.unair.ac.id', 'YULIA NADAR INDRASARI', 'http://cybercampus.unair.ac.id/foto_pegawai/198207122015042001-1537411729.jpg', 'http://cybercampus.unair.ac.id/foto_pegawai/198207122015042001-1537411729.jpg', '3578265207820002', '0012078205', 2, 0, 'SURAKARTA', '1982-07-12', 'RAYA WIGUNA SELATAN INDAH NO. 33, SURABAYA', '', '60294', '(031) 5042113', 'PNS', 221, 'Fakultas Kedokteran', NULL, 'Universitas Airlangga', 'PATOLOGI KLINIK', NULL, NULL, 'dr. SpPK', 'III/b', '2017-04-01', 'Dosen', 'Fungsional', 'Asisten Ahli', 'PNS'),
('198207132008012010', 'arni-k-d@vokasi.unair.ac.id', 'ARNI KUSUMA DEWI', 'http://cybercampus.unair.ac.id/foto_pegawai/198207132008012010-1553054335.jpg', 'http://cybercampus.unair.ac.id/foto_pegawai/198207132008012010-1553054335.jpg', '3515175307820007', '0013078202', 2, 0, 'SURABAYA', '1982-07-13', 'GRAND SEMANGGI RESIDENT B3 RUNGKUT WONOREJO-SURABAYA', '', '60296', '(031)5033869', 'PNS', NULL, 'Fakultas Vokasi', '259234383643000', 'Universitas Airlangga', 'FISIOTERAPI', NULL, NULL, 'dr., M.Si.', 'III/c', NULL, 'Dosen', NULL, NULL, 'PNS'),
('198208022008122002', 'nita-c@fst.unair.ac.id', 'NITA CITRASARI', 'http://cybercampus.unair.ac.id/foto_pegawai/198208022008122002-1510203687.JPG', 'http://cybercampus.unair.ac.id/foto_pegawai/198208022008122002-1510203687.JPG', '3571034208820006', '0002088201', 2, 0, 'KEDIRI', '1982-08-02', 'TOSAREN I/348 RT.01, RW.004 TOSAREN, PESANTREN KEDIRI', '', '64133', '08123123094', 'PNS', 248, 'Fakultas Sains dan Teknologi', '888125267622000', 'Universitas Airlangga', 'TEKNIK LINGKUNGAN', NULL, NULL, 'S.Si., M.T.', 'III/c', NULL, 'Dosen', NULL, NULL, 'PNS'),
('198208182016033101', 'nuruddin@vokasi.unair.ac.id', 'NURUDDIN', 'http://cybercampus.unair.ac.id/foto_pegawai/198208182016033101-1558427478.jpeg', 'http://cybercampus.unair.ac.id/foto_pegawai/198208182016033101-1558427478.jpeg', '3525011808820003', '0718088204', 1, 0, 'GRESIK', '1982-08-18', 'Perum. Pesona Bukit Bungah RT/RW: 018/001', '', '61152', '085645403163', 'TETAP NON PNS', NULL, 'Fakultas Vokasi', '896969797612000', 'Universitas Airlangga', 'KEPARIWISATAAN / BINA WISATA', NULL, NULL, 'S.S., M.A.', 'III/b', NULL, 'Dosen', NULL, NULL, 'TETAP NON PNS'),
('198208242003121002', 'farid@staf.unair.ac.id', 'FARID ANDRIANSYAH ZAKARIA', 'https://cybercampus.unair.ac.id/foto_pegawai/198208242003121002-1637379427.jpg', 'https://cybercampus.unair.ac.id/foto_pegawai/198208242003121002-1637379427.jpg', '198208242003121002', NULL, 1, 0, 'SURABAYA', '1982-08-24', NULL, '', '0', NULL, 'PNS', 30, 'Direktorat Sistem Informasi', '587287780603000', 'Universitas Airlangga', NULL, NULL, NULL, 'S.Kom.', 'III/c', NULL, 'Tendik', NULL, NULL, 'PNS'),
('198209122008011006', 'hario.megatsari@fkm.unair.ac.id', 'HARIO MEGATSARI', 'http://cybercampus.unair.ac.id/foto_pegawai/198209122008011006-1611493978.jpg', 'http://cybercampus.unair.ac.id/foto_pegawai/198209122008011006-1611493978.jpg', '3515181209820011', '0012098204', 1, 0, 'SURABAYA', '1982-09-12', 'PERUM GRIYA MAPAN SENTOSA BF-11 WARU-SDR', '', '61256', '0315961310', 'PNS', 250, 'Fakultas Kesehatan Masyarakat', '251486999643000', 'Universitas Airlangga', 'KESEHATAN MASYARAKAT', NULL, NULL, 'S.KM., M.Kes', 'III/c', '2008-01-01', 'Dosen', 'Fungsional', 'Lektor', 'PNS'),
('198210082008102001', 'ragiloktaviani@staf.unair.ac.id', 'RAGIL OKTAVIANI', 'https://cybercampus.unair.ac.id/foto_pegawai/198210082008102001-1550115477.jpeg', 'https://cybercampus.unair.ac.id/foto_pegawai/198210082008102001-1550115477.jpeg', '198210082008102001', NULL, 2, 0, 'SURABAYA', '1982-10-08', NULL, '', '0', NULL, 'PNS', 38, 'LPT', '587283060606000', 'Universitas Airlangga', NULL, NULL, NULL, NULL, 'II/d', '2008-10-01', 'Tendik', 'Fungsional', 'Staf Keuangan', 'PNS'),
('198210152005011001', 'gde.agung@feb.unair.ac.id', 'ANAK AGUNG GDE SATIA UTAMA', 'http://cybercampus.unair.ac.id/foto_pegawai/', 'http://cybercampus.unair.ac.id/foto_pegawai/', '5105021510820003', '0015108203', 1, 0, 'PONTIANAK', '1982-10-15', 'TIHINGAN VILLAGE, KLUNGKUNG, BALI', '', '60286', '0817339278', 'PNS', 244, 'Fakultas Ekonomi dan Bisnis', '587287079901000', 'Universitas Airlangga', 'AKUNTANSI (K.BANYUWANGI)', NULL, NULL, 'SE., M.Ak., Ak., CA', 'III/d', '2005-12-31', 'Dosen', 'Fungsional', 'Lektor', 'PNS'),
('198211142012122003', 'nur.sulastri@staf.unair.ac.id', 'NUR SULASTRI', 'https://cybercampus.unair.ac.id/foto_pegawai/198211142012122003-1630637443.jpg', 'https://cybercampus.unair.ac.id/foto_pegawai/198211142012122003-1630637443.jpg', '198211142012122003', NULL, 2, 0, 'SURABAYA', '1982-11-14', NULL, '', '0', NULL, 'PNS', 40, 'Rumah Sakit Universitas Airlangga', '550275762615000', 'Universitas Airlangga', NULL, NULL, NULL, 'dr., Sp.KFR', 'III/c', NULL, 'Tendik', NULL, NULL, 'PNS'),
('198211252020103101', 'ervan.kus.indarto@fib.unair.ac.id', 'Ervan Kus Indarto', 'http://cybercampus.unair.ac.id/foto_pegawai/198211252020103101-1608351498.jpg', 'http://cybercampus.unair.ac.id/foto_pegawai/198211252020103101-1608351498.jpg', '3502172511820008', NULL, 1, 0, 'PONOROGO', '1982-11-25', 'Jl. Kumbokarno No. 85 RT. 002 RW. 001 Purbosuman, Ponorogo', '', '63417', '031 - 5035676', 'CPTNPNS', NULL, 'Fakultas Ilmu Budaya', '791423890647000', 'Universitas Airlangga', 'BAHASA DAN SASTRA INDONESIA', NULL, NULL, 'S.IP., M.IP.', 'III/b', NULL, 'Dosen', NULL, NULL, 'CPTNPNS');
INSERT INTO `biodata` (`NIK`, `EMAIL`, `NAMA`, `FOTO`, `FOTO1`, `NO_KTP`, `NIDN`, `JENIS_KELAMIN`, `STATUS_MENIKAH`, `TEMPAT_LAHIR`, `TGL_LAHIR`, `ALAMAT`, `KOTA`, `KODE_POS`, `HANDPHONE`, `STATUS`, `ID_UNIT_KERJA`, `UNIT_KERJA`, `NPWP`, `UNIVERSITAS`, `PRODI`, `IPK`, `GELAR_DEPAN`, `GELAR_BELAKANG`, `PANGKAT_GOLONGAN`, `TMT_PNS`, `STATUS_PEGAWAI`, `STATUS_JABATAN`, `NAMA_JABATAN`, `JENIS_KEPEGAWAIAN`) VALUES
('198212022015043101', 'agus.widodo@vokasi.unair.ac.id', 'AGUS WIDODO', 'http://cybercampus.unair.ac.id/foto_pegawai/198212022015043101-1599889477.jpg', 'http://cybercampus.unair.ac.id/foto_pegawai/198212022015043101-1599889477.jpg', '3505010212820001', '0002128202', 1, 0, 'BLITAR', '1982-12-02', 'PERUM YKP PANDUGO 1, PM-26, PENJARINGANSARI, RUNGKUT, SURABAYA', '', '60297', '031 8721926', 'TETAP NON PNS', 306, 'Fakultas Vokasi', '715749479615000', 'Universitas Airlangga', 'PARAMEDIK VETERINER', NULL, NULL, 'drh., M.Vet', 'III/b', '2015-04-01', 'Dosen', 'Fungsional', 'Asisten Ahli', 'TETAP NON PNS'),
('198212122012122002', 'ilkafah@vokasi.unair.ac.id', 'ILKAFAH', 'http://cybercampus.unair.ac.id/foto_pegawai/198212122012122002-1594296003.jpg', 'http://cybercampus.unair.ac.id/foto_pegawai/198212122012122002-1594296003.jpg', '3524125212820005', '0712128202', 2, 0, 'LAMONGAN', '1982-12-12', 'LEBAKADI RT 001/ RW 006 KEC. SUGIO KAB LAMONGAN JATIM', '', '0', NULL, 'PNS', 306, 'Fakultas Vokasi', '453770323645000', 'Universitas Airlangga', 'KEPERAWATAN', NULL, NULL, 'S.Kep., Ns., M.Kep.', 'III/d', NULL, 'Dosen', NULL, NULL, 'PNS'),
('198212152008122003', 'dwisusanti@fk.unair.ac.id', 'DWI SUSANTI', 'http://cybercampus.unair.ac.id/foto_pegawai/198212152008122003-1576135555.jpg', 'http://cybercampus.unair.ac.id/foto_pegawai/198212152008122003-1576135555.jpg', '3515125512820003', '0015128206', 2, 0, 'SIDOARJO', '1982-12-15', 'DS. BAKALAN WRINGIN PITU RT.4 RW. 2, BALONGBENDO, SIDOARJO', '', '61263', '08563064782', 'PNS', NULL, 'Fakultas Kedokteran', '795181239603000', 'Universitas Airlangga', 'KEDOKTERAN', NULL, NULL, 'dr.,MPH', 'III/c', '2011-06-01', 'Dosen', 'Fungsional', 'Lektor', 'PNS'),
('198212212018013101', 'aanjunaidy@staf.unair.ac.id', 'Aan Junaidy', 'https://cybercampus.unair.ac.id/foto_pegawai/198212212018013101-1602163045.jpg', 'https://cybercampus.unair.ac.id/foto_pegawai/198212212018013101-1602163045.jpg', '198212212018013101', NULL, 1, 0, 'SURABAYA', '1982-12-21', 'Jalan Kalikepiting 117-B/no.19-C Surabaya', '', '0', '082244355955', 'TETAP NON PNS', 350, NULL, '841849540621000', 'Universitas Airlangga', NULL, NULL, NULL, NULL, 'II/b', '2019-01-01', 'Tendik', 'Fungsional', 'Anggota Security', 'TETAP NON PNS'),
('198302092018025102', 'erie.febrianto@staf.unair.ac.id', 'Erie Febrianto', '/', '/', '198302092018025102', NULL, 1, 0, 'SURABAYA', '1983-02-09', 'RUNGKUT BARATA 1/7', '', '0', '-', 'PEGAWAI TIDAK TETAP', 706, NULL, '553591223615000', 'Universitas Airlangga', NULL, NULL, NULL, NULL, 'Setara II Masa Kerja <= 5', NULL, 'Tendik', NULL, NULL, 'PEGAWAI TIDAK TETAP'),
('198302142010122003', 'herdiani-s-p@fk.unair.ac.id', 'HERDIANI SULISTYO PUTRI', '/', '/', '3578235402830001', '0014028301', 2, 0, 'SURABAYA', '1983-02-14', 'JL.PAGESANGAN BARU NO 25 SURABAYA', '', '60233', '0318297717', 'PNS', 221, 'Fakultas Kedokteran', '826683625609000', 'Universitas Airlangga', 'ANESTESIOLOGI DAN TERAPI INTEN', NULL, NULL, 'dr., Sp.An., FIPM', 'III/b', '2013-04-01', 'Dosen', 'Fungsional', 'Asisten Ahli', 'PNS'),
('198303242006042002', 'zendy@fh.unair.ac.id', 'ZENDY WULAN AYU WIDHI PRAMESWARI', 'http://cybercampus.unair.ac.id/foto_pegawai/', 'http://cybercampus.unair.ac.id/foto_pegawai/', '3515016403830003', '0024038305', 2, 0, 'SIDOARJO', '1983-03-24', 'TAMAN INDAH REGENCY BLOK E/52, TAMAN, SIDOARJO, 61257', '', '61257', '081330070627', 'PNS', 243, 'Fakultas Hukum', '243904976603001', 'Universitas Airlangga', 'ILMU HUKUM', NULL, NULL, 'S.H., LL.M.', 'III/c', NULL, 'Dosen', NULL, NULL, 'PNS'),
('198303272016113201', 'viqiardaniah@fib.unair.ac.id', 'VIQI ARDANIAH', 'http://cybercampus.unair.ac.id/foto_pegawai/', 'http://cybercampus.unair.ac.id/foto_pegawai/', '3578096703830003', '0027038303', 2, 0, 'SURABAYA', '1983-03-27', NULL, '', '0', '0818509390', 'TETAP NON PNS', 252, 'Fakultas Ilmu Budaya', '256569989606000', 'Universitas Airlangga', 'BAHASA DAN SASTRA INGGRIS', NULL, NULL, 'S.S., M.A. Linguistics', 'III/b', NULL, 'Dosen', NULL, NULL, 'TETAP NON PNS'),
('198304052014042002', 'laily-h@fkp.unair.ac.id', 'LAILY HIDAYATI', 'http://cybercampus.unair.ac.id/foto_pegawai/', 'http://cybercampus.unair.ac.id/foto_pegawai/', '3578104504830007', '0005048309', 2, 0, 'SAMPANG', '1983-04-05', 'SALAK NO. 18 RT. 2 RW. 1 TAMBAKSARI SURABAYA', '', '60136', '0315913257', 'PNS', 253, 'Fakultas Keperawatan', '362698318619000', 'Universitas Airlangga', 'KEPERAWATAN', NULL, NULL, 'S.Kep., Ns., M.Kep.', 'III/b', NULL, 'Dosen', NULL, NULL, 'PNS'),
('198304182018013101', 'ekosetyobudi@staf.unair.ac.id', 'Eko Setyobudi', 'https://cybercampus.unair.ac.id/foto_pegawai/139121660-1477885829.JPG', 'https://cybercampus.unair.ac.id/foto_pegawai/139121660-1477885829.JPG', '198304182018013101', NULL, 1, 0, 'SURABAYA', '1983-04-18', 'Jl. Ploso Timur 3A No 58 Surabaya', '', '0', '082233337971', 'TETAP NON PNS', 350, NULL, '747328896619000', 'Universitas Airlangga', NULL, NULL, NULL, NULL, 'II/b', '2018-01-01', 'Tendik', 'Fungsional', 'Petugas Keamanan', 'TETAP NON PNS'),
('198304212008121001', 'catur-d-s@ff.unair.ac.id', 'CATUR DIAN SETIAWAN', 'http://cybercampus.unair.ac.id/foto_pegawai/198304212008121001-1560913514.jpg', 'http://cybercampus.unair.ac.id/foto_pegawai/198304212008121001-1560913514.jpg', '3578142104830003', '0021048305', 1, 0, 'MOJOKERTO', '1983-04-21', 'JL.SIKATAN II/67, MANUKAN WETAN TANDES, SURABAYA', '', '60185', '0818304830', 'PNS', 245, 'Fakultas Farmasi', '587280504602000', 'Universitas Airlangga', 'FARMASI', NULL, NULL, 'S.Farm., M.Kes.,Apt.', 'III/b', NULL, 'Dosen', NULL, NULL, 'PNS'),
('198304212015043201', 'sitinuraini@feb.unair.ac.id', 'SITI NURAINI', 'http://cybercampus.unair.ac.id/foto_pegawai/198304212015043201-1577028964.jpg', 'http://cybercampus.unair.ac.id/foto_pegawai/198304212015043201-1577028964.jpg', '3573026104830015', '0021048308', 2, 0, 'PATI', '1983-04-21', 'Perum Citra Laras Cakalang B-3 Jl. Cakalang, Malang', '', '65126', '081575115759', 'TETAP NON PNS', 244, 'Fakultas Ekonomi dan Bisnis', '087321600623000', 'Universitas Airlangga', 'AKUNTANSI (K.BANYUWANGI)', NULL, NULL, 'S.E., M.E.', 'III/c', NULL, 'Dosen', NULL, NULL, 'TETAP NON PNS'),
('198304232010122007', 'hardany-p@fkh.unair.ac.id', 'HARDANY PRIMARIZKY', 'http://cybercampus.unair.ac.id/foto_pegawai/', 'http://cybercampus.unair.ac.id/foto_pegawai/', '3515156304830002', '0023048303', 2, 0, 'SURABAYA', '1983-04-23', 'JL. SIDOSERMO INDAH XII / 5 SURABAYA', '', '60239', '0315927832', 'PNS', 246, 'Fakultas Kedokteran Hewan', '260505664643000', 'Universitas Airlangga', 'KEDOKTERAN HEWAN', NULL, NULL, 'Drh, MVM.', 'III/d', '2012-07-01', 'Dosen', 'Fungsional', 'Lektor', 'PNS'),
('198304272018035101', 'amienmariyanto@staf.unair.ac.id', 'AMIEN MARIYANTO', 'https://cybercampus.unair.ac.id/foto_pegawai/139080880-1478146763.JPG', 'https://cybercampus.unair.ac.id/foto_pegawai/139080880-1478146763.JPG', '198304272018035101', NULL, 1, 0, 'SURABAYA', '1983-04-27', NULL, '', '0', NULL, 'PEGAWAI TIDAK TETAP', 245, 'Fakultas Farmasi', '249729062616000', 'Universitas Airlangga', NULL, NULL, NULL, NULL, NULL, NULL, 'Tendik', NULL, NULL, 'PEGAWAI TIDAK TETAP'),
('198305232008012009', 'sri-w-s@fk.unair.ac.id', 'SRI WIJAYANTI SULISTYAWATI', 'http://cybercampus.unair.ac.id/foto_pegawai/198305232008012009-1576639361.jpg', 'http://cybercampus.unair.ac.id/foto_pegawai/198305232008012009-1576639361.jpg', '3515086305830008', '0023058301', 2, 0, 'JAKARTA PUSAT', '1983-05-23', 'PERUM PUCANG INDAH BLOX T NO. 12 SDA', '', '61219', '08122315162', 'PNS', NULL, 'Fakultas Kedokteran', '269848834617000', 'Universitas Airlangga', 'KEDOKTERAN', NULL, NULL, 'dr. M.Imun.', 'III/b', '2008-01-01', 'Dosen', 'Fungsional', 'Asisten Ahli', 'PNS'),
('198307032014042001', 'tiyas-k@fkp.unair.ac.id', 'TIYAS KUSUMANINGRUM', 'http://cybercampus.unair.ac.id/foto_pegawai/198307032014042001-1538386902.jpg', 'http://cybercampus.unair.ac.id/foto_pegawai/198307032014042001-1538386902.jpg', '3578104307830010', '0003078302', 2, 0, 'SURABAYA', '1983-07-03', 'KALI KEPITING JAYA I NO.62 SURABAYA', '', '60132', '0315913257', 'PNS', 253, 'Fakultas Keperawatan', '460721822619000', 'Universitas Airlangga', 'KEPERAWATAN', NULL, NULL, 'S.Kep., Ns., M.Kep', 'III/b', NULL, 'Dosen', NULL, NULL, 'PNS'),
('198307292018013101', 'khamimsahid@staf.unair.ac.id', 'Khamim Sahid', 'https://cybercampus.unair.ac.id/foto_pegawai/198307292014075101-1485826722.jpg', 'https://cybercampus.unair.ac.id/foto_pegawai/198307292014075101-1485826722.jpg', '198307292018013101', NULL, 1, 0, 'SIDOARJO', '1983-07-29', NULL, '', '0', NULL, 'TETAP NON PNS', 118, NULL, '728655341603000', 'Universitas Airlangga', 'ADMINISTRASI PERKANTORAN', NULL, NULL, 'S.HI.', 'III/b', NULL, 'Tendik', NULL, NULL, 'TETAP NON PNS'),
('198308042008121003', 'priyo_budi@fk.unair.ac.id', 'PRIYO BUDI PURWONO', 'http://cybercampus.unair.ac.id/foto_pegawai/198308042008121003-1537517207.jpg', 'http://cybercampus.unair.ac.id/foto_pegawai/198308042008121003-1537517207.jpg', '3578220408830002', '0004088302', 1, 0, 'SURABAYA', '1983-08-04', 'GAYUNG KEBONSARI TIMUR NO.41 SBY', '', '60231', '0318537502', 'PNS', 221, 'Fakultas Kedokteran', '266393016643000', 'Universitas Airlangga', 'MIKROBIOLOGI KLINIK', NULL, NULL, 'dr., M.Si,', 'III/c', NULL, 'Dosen', NULL, NULL, 'PNS'),
('198308102006042001', 'erni@fh.unair.ac.id', 'ERNI AGUSTIN', 'http://cybercampus.unair.ac.id/foto_pegawai/', 'http://cybercampus.unair.ac.id/foto_pegawai/', '3515185008830003', '0010088302', 2, 0, 'SURABAYA', '1983-08-10', 'JL. CENDRAWASIH BUNDERAN NO. 70 REWWIN, WARU-SIDOARJO', '', '61256', '08113403765', 'PNS', 243, 'Fakultas Hukum', '587279035643000', 'Universitas Airlangga', 'ILMU HUKUM', NULL, NULL, 'S.H., LL.M.', 'III/d', NULL, 'Dosen', NULL, NULL, 'PNS'),
('198308182018013201', 'galuhmegawati@staf.unair.ac.id', 'Margaretha Galuh Megawati', 'https://cybercampus.unair.ac.id/foto_pegawai/139090931-1478252501.JPG', 'https://cybercampus.unair.ac.id/foto_pegawai/139090931-1478252501.JPG', '198308182018013201', NULL, 2, 0, 'SURABAYA', '1983-08-18', NULL, '', '0', NULL, 'TETAP NON PNS', 157, NULL, '355738857614000', 'Universitas Airlangga', 'ILMU POLITIK', NULL, NULL, 'A.Md.KL.', 'II/d', NULL, 'Tendik', NULL, NULL, 'TETAP NON PNS'),
('198309102018013101', 'bayusetiawan@staf.unair.ac.id', 'Bayu Setiawan', 'https://cybercampus.unair.ac.id/foto_pegawai/198309102018013101-1566959002.jpg', 'https://cybercampus.unair.ac.id/foto_pegawai/198309102018013101-1566959002.jpg', '198309102018013101', NULL, 1, 0, 'SURABAYA', '1983-09-10', 'Tambak Sari 2 / 23b, Surabaya', '', '0', '081234559080', 'TETAP NON PNS', 31, 'Direktorat Sumberdaya Manusia', '342495009619000', 'Universitas Airlangga', NULL, NULL, NULL, NULL, 'II/b', '2019-01-01', 'Tendik', 'Pilih Stat', 'Administrasi', 'TETAP NON PNS'),
('198310212009121006', 'aris-c-p@staf.unair.ac.id', 'ARIS CAHYO PURNOMO', 'https://cybercampus.unair.ac.id/foto_pegawai/198310212009121006-1659593493.jpg', 'https://cybercampus.unair.ac.id/foto_pegawai/198310212009121006-1659593493.jpg', '198310212009121006', NULL, 1, 0, 'MALANG', '1983-10-21', NULL, '', '0', NULL, 'PNS', 581, NULL, '340668383603000', 'Universitas Airlangga', NULL, NULL, '-', 'S.Kep., Ns.,M.Kes', 'III/c', NULL, 'Tendik', NULL, NULL, 'PNS'),
('198311062010121003', 'kustiawan@fpk.unair.ac.id', 'KUSTIAWAN TRI PURSETYO', 'http://cybercampus.unair.ac.id/foto_pegawai/', 'http://cybercampus.unair.ac.id/foto_pegawai/', '3504070611830001', '0006118303', 1, 0, 'MOJOKERTO', '1983-11-06', 'MEDAYU UTARA 31 B NO 27 SURABAYA', '', '60295', '08563339865', 'PNS', 254, 'Fakultas Perikanan dan Kelautan', '259512184602000', 'Universitas Airlangga', 'AKUAKULTUR', NULL, NULL, 'S.Pi., M.Vet.', 'III/b', NULL, 'Dosen', NULL, NULL, 'PNS'),
('198311072012122002', 'mutiara-r-h@staf.unair.ac.id', 'MUTIARA RIZKI HARYATI', 'https://cybercampus.unair.ac.id/foto_pegawai/198311072012122002-1640159028.jpg', 'https://cybercampus.unair.ac.id/foto_pegawai/198311072012122002-1640159028.jpg', '198311072012122002', NULL, 2, 0, 'SURABAYA', '1983-11-07', NULL, '', '0', NULL, 'PNS', 40, 'Rumah Sakit Universitas Airlangga', '551977580604000', 'Universitas Airlangga', NULL, NULL, NULL, 'dr.', 'III/c', NULL, 'Tendik', NULL, NULL, 'PNS'),
('198311082018013201', 'dyahsetyowati@staf.unair.ac.id', 'Sulistio Dyah Setyowati', 'https://cybercampus.unair.ac.id/foto_pegawai/198311082014065201-1477644323.JPG', 'https://cybercampus.unair.ac.id/foto_pegawai/198311082014065201-1477644323.JPG', '198311082018013201', NULL, 2, 0, 'JOMBANG', '1983-11-08', NULL, '', '0', NULL, 'TETAP NON PNS', 250, 'Fakultas Kesehatan Masyarakat', '705178689602000', 'Universitas Airlangga', NULL, NULL, NULL, 'S.KM.', 'III/b', '2018-01-01', 'Tendik', 'Pilih Stat', 'Pengolah Data Penjaminan Mutu', 'TETAP NON PNS'),
('198311252018035101', 'ardiono@staf.unair.ac.id', 'ARDIONO', 'https://cybercampus.unair.ac.id/foto_pegawai/139141914-1478161053.JPG', 'https://cybercampus.unair.ac.id/foto_pegawai/139141914-1478161053.JPG', '198311252018035101', NULL, 1, 0, 'SURABAYA', '1983-11-25', NULL, '', '0', NULL, 'PEGAWAI TIDAK TETAP', 669, NULL, '348092701606000', 'Universitas Airlangga', 'PENDIDIKAN PROFESI DOKTER HEWA', NULL, NULL, NULL, NULL, '2010-10-01', 'Tendik', 'Fungsional', 'Pengadministrasi Akademik', 'PEGAWAI TIDAK TETAP'),
('198311302018013101', 'novendradwi@staf.unair.ac.id', 'Novendra Dwi Yusnanto', 'https://cybercampus.unair.ac.id/foto_pegawai/198311302018013101-1565774416.jpg', 'https://cybercampus.unair.ac.id/foto_pegawai/198311302018013101-1565774416.jpg', '198311302018013101', NULL, 1, 0, 'SURABAYA', '1983-11-30', NULL, '', '0', NULL, 'TETAP NON PNS', 134, NULL, '705167153619000', 'Universitas Airlangga', 'PENDIDIKAN PROFESI APOTEKER', NULL, NULL, 'S.E.', 'III/b', NULL, 'Tendik', NULL, NULL, 'TETAP NON PNS'),
('198312222012122001', 'asri.bekti@fst.unair.ac.id', 'ASRI BEKTI PRATIWI', 'http://cybercampus.unair.ac.id/foto_pegawai/198312222012122001-1560924023.jpg', 'http://cybercampus.unair.ac.id/foto_pegawai/198312222012122001-1560924023.jpg', '3578096212830001', '0022128303', 2, 0, 'SURABAYA', '1983-12-22', 'SEMOLOWARU SELATAN XIII/13 SURABAYA', '', '60119', '08175020507', 'PNS', NULL, 'Fakultas Sains dan Teknologi', '548646223606000', 'Universitas Airlangga', 'MATEMATIKA', NULL, NULL, 'S.Si., M.Si.', 'III/b', NULL, 'Dosen', NULL, NULL, 'PNS'),
('198312232019043101', 'deny-a@vokasi.unair.ac.id', 'DENY ARIFIANTO', 'http://cybercampus.unair.ac.id/foto_pegawai/198312232019043101-1609851298.jpg', 'http://cybercampus.unair.ac.id/foto_pegawai/198312232019043101-1609851298.jpg', '3578152312830001', '0023128306', 1, 0, 'SURABAYA', '1983-12-23', 'Perum Griya airlangga D-27, Wonorejo selatan', '', '60177', '-', 'TETAP NON PNS', 306, 'Fakultas Vokasi', '085900876605000', 'Universitas Airlangga', 'OTOMASI SISTEM INSTRUMENTASI', NULL, NULL, 'S.Si., M.T.', 'III/b', '2019-04-01', 'Dosen', 'Fungsional', 'Asisten Ahli', 'TETAP NON PNS'),
('198312242018013201', 'eva.anitasari@staf.unair.ac.id', 'Eva Anitasari', 'https://cybercampus.unair.ac.id/foto_pegawai/198312242018013201-1629686666.jpg', 'https://cybercampus.unair.ac.id/foto_pegawai/198312242018013201-1629686666.jpg', '198312242018013201', NULL, 2, 0, 'SURABAYA', '1983-12-24', NULL, '', '0', NULL, 'TETAP NON PNS', 70, NULL, '085658375604000', 'Universitas Airlangga', 'ILMU KESEHATAN OLAH RAGA', NULL, NULL, 'S.S.', 'III/b', NULL, 'Tendik', NULL, NULL, 'TETAP NON PNS'),
('198401112018013101', 'donnyosmond@staf.unair.ac.id', 'Donny Osmond', 'https://cybercampus.unair.ac.id/foto_pegawai/139111374-1477881031.JPG', 'https://cybercampus.unair.ac.id/foto_pegawai/139111374-1477881031.JPG', '198401112018013101', NULL, 1, 0, 'PASURUAN', '1984-01-11', NULL, '', '0', NULL, 'TETAP NON PNS', 350, NULL, '884304726624000', 'Universitas Airlangga', NULL, NULL, NULL, NULL, 'II/b', NULL, 'Tendik', NULL, NULL, 'TETAP NON PNS'),
('198402012014042001', 'erna-d-w@fkp.unair.ac.id', 'ERNA DWI WAHYUNI', 'http://cybercampus.unair.ac.id/foto_pegawai/198402012014042001-1579745069.jpg', 'http://cybercampus.unair.ac.id/foto_pegawai/198402012014042001-1579745069.jpg', '3578104102840008', '0001028403', 2, 0, 'BLITAR', '1984-02-01', 'PLOSO TIMUR I B/ 42, RT/RW 005/010 PLOSO TAMBAK SARI SURABAYA', '', '60133', '0315913257', 'PNS', 253, 'Fakultas Keperawatan', '594723728653000', 'Universitas Airlangga', 'KEPERAWATAN', NULL, NULL, 'S.Kep., Ns.M.Kep.', 'III/b', NULL, 'Dosen', NULL, NULL, 'PNS'),
('198405052015042001', 'rian.diana@fkm.unair.ac.id', 'RIAN DIANA', 'http://cybercampus.unair.ac.id/foto_pegawai/198405052015042001-1537433589.jpg', 'http://cybercampus.unair.ac.id/foto_pegawai/198405052015042001-1537433589.jpg', '3201144505840007', '0005058403', 2, 0, 'SUKABUMI', '1984-05-05', 'BTN LEUWILIANG PERMAI BLOK F/1, LEUWILIANG, BOGOR', '', '16640', '08569833519', 'PNS', 250, 'Fakultas Kesehatan Masyarakat', '457726990434000', 'Universitas Airlangga', 'GIZI', NULL, NULL, 'S.P., M.Si.', 'III/b', '2017-04-01', 'Dosen', 'Fungsional', 'Asisten Ahli', 'PNS'),
('198405252016113201', 'herdina-m@fkp.unair.ac.id', 'HERDINA MARIYANTI', 'http://cybercampus.unair.ac.id/foto_pegawai/', 'http://cybercampus.unair.ac.id/foto_pegawai/', '3515106505840002', '0025058404', 2, 0, 'SIDOARJO', '1984-05-25', 'KEBONSIKEP RT 3 RW 4 GEDANGAN SIDOARJO', '', '61254', '-', 'TETAP NON PNS', NULL, 'Fakultas Keperawatan', '348977042643000', 'Universitas Airlangga', 'KEPERAWATAN', NULL, NULL, 'S.Kep., Ns., M.Kep', 'III/b', NULL, 'Dosen', NULL, NULL, 'TETAP NON PNS'),
('198405292014041001', 'zaky.romadhon@fk.unair.ac.id', 'PRADANA ZAKY ROMADHON', 'http://cybercampus.unair.ac.id/foto_pegawai/198405292014041001-1552375339.jpg', 'http://cybercampus.unair.ac.id/foto_pegawai/198405292014041001-1552375339.jpg', '3578032905840002', '0029058403', 1, 0, 'JEMBER', '1984-05-29', 'PANDUGO BARU 2/14 BLOK D-7, PENJARINGAN SARI, RUNGKUT, SURABAYA', '', '60297', '031-8701390', 'PNS', 221, 'Fakultas Kedokteran', '368795183615000', 'Universitas Airlangga', 'ILMU PENYAKIT DALAM', NULL, NULL, 'dr., Sp.PD', 'III/c', NULL, 'Dosen', NULL, NULL, 'PNS'),
('198406062015042001', 'retnayu-p@fkp.unair.ac.id', 'RETNAYU PRADANIE', 'http://cybercampus.unair.ac.id/foto_pegawai/', 'http://cybercampus.unair.ac.id/foto_pegawai/', '3506194606840002', '0006068408', 2, 0, 'SURABAYA', '1984-06-06', 'PERUM. GRIYA AMERTA BLOK J/20 MEDAYU UTARA RUNGKUT SURABAYA', '', '0', '081334226604', 'PNS', 253, 'Fakultas Keperawatan', '355711144655000', 'Universitas Airlangga', 'KEPERAWATAN', NULL, NULL, 'S.Kep., Ns., M.Kep', 'III/b', '2017-04-01', 'Dosen', 'Fungsional', 'Asisten Ahli', 'PNS'),
('198407152016113101', 'dadung-i-m@fib.unair.ac.id', 'DADUNG IBNU MUKTIONO', 'http://cybercampus.unair.ac.id/foto_pegawai/', 'http://cybercampus.unair.ac.id/foto_pegawai/', '3578091507840006', '0015078404', 1, 0, 'SURABAYA', '1984-07-15', 'SEMOLOWARU ELOK K / 37 SURABAYA', '', '0', '0315935571', 'TETAP NON PNS', NULL, 'Fakultas Ilmu Budaya', '885120444606000', 'Universitas Airlangga', 'BAHASA DAN SASTRA INGGRIS', NULL, NULL, 'S. Hum, M.', 'III/b', NULL, 'Dosen', NULL, NULL, 'TETAP NON PNS'),
('198407182015041001', 'hanifazhar@fpk.unair.ac.id', 'MUHAMMAD HANIF AZHAR', 'http://cybercampus.unair.ac.id/foto_pegawai/', 'http://cybercampus.unair.ac.id/foto_pegawai/', '3578031807840001', '0018078401', 1, 0, 'SURABAYA', '1984-07-18', 'PENJARINGAN I/2 PENJARINGAN SARI SURABAYA', '', '60297', '0318701686', 'PNS', 321, 'Fakultas Sekolah Ilmu Kesehatan dan Ilmu Alam', '708777123615000', 'Universitas Airlangga', 'AKUAKULTUR (SIKIA.BANYUWANGI)', NULL, NULL, 'S.Pi., M.Si.', 'III/b', '2020-10-01', 'Dosen', 'Fungsional', 'Asisten Ahli', 'PNS'),
('198407182019031002', 'sidarta@vokasi.unair.ac.id', 'SIDARTA PRASSETYO', 'http://cybercampus.unair.ac.id/foto_pegawai/198407182019031002-1580114797.jpg', 'http://cybercampus.unair.ac.id/foto_pegawai/198407182019031002-1580114797.jpg', '3515181807840004', '0018078403', 1, 0, 'SIDOARJO', '1984-07-18', 'Dusun Krajan RT 003 RW 002 Desa Bangunmulyo - Pakel - Tulungagung', '', '66273', '031-5033869', 'PNS', NULL, 'Fakultas Vokasi', '771348562643000', 'Universitas Airlangga', 'BAHASA INGGRIS', NULL, NULL, 'SS., MA.TESOL', 'III/b', '2019-05-01', 'Dosen', 'Fungsional', 'Asisten Ahli', 'PNS'),
('198408052015041002', 'khanisyah@fk.unair.ac.id', 'KHANISYAH ERZA GUMILAR (RSUA)', 'http://cybercampus.unair.ac.id/foto_pegawai/', 'http://cybercampus.unair.ac.id/foto_pegawai/', '3578210508840001', '0005088405', 1, 0, 'SURABAYA', '1984-08-05', 'BUKIT PAKIS UTARA 3/T.A 16RT 001/007, DUKUH PAKIS, SURABAYA', '', '60225', '081287940663', 'PNS', 250, 'Fakultas Kesehatan Masyarakat', '267817716618000', 'Universitas Airlangga', 'ADMINISTRASI DAN KEBIJAKAN KES', NULL, NULL, 'dr., Sp.OG', 'III/b', NULL, 'Dosen', NULL, NULL, 'PNS'),
('198408102018013101', 'wahyukartikoadi@staf.unair.ac.id', 'Wahyu Kartiko Adi', 'https://cybercampus.unair.ac.id/foto_pegawai/139090999-1478252343.JPG', 'https://cybercampus.unair.ac.id/foto_pegawai/139090999-1478252343.JPG', '198408102018013101', NULL, 1, 0, 'SURABAYA', '1984-08-10', NULL, '', '0', NULL, 'TETAP NON PNS', 33, 'Direktorat Kemahasiswaan', '085645919604000', 'Universitas Airlangga', NULL, NULL, NULL, 'A.Md.', 'II/d', NULL, 'Tendik', NULL, NULL, 'TETAP NON PNS'),
('198408122020013201', 'skhairunisa@staf.unair.ac.id', 'SITI QAMARIYAH KHAIRUNISA', 'https://cybercampus.unair.ac.id/foto_pegawai/139121458-1477905105.JPG', 'https://cybercampus.unair.ac.id/foto_pegawai/139121458-1477905105.JPG', '198408122020013201', NULL, 2, 0, 'PASURUAN', '1984-08-12', 'Perum Magersari Permai Blok CE2 Sidoarjo', '', '0', '081331843627', 'TETAP NON PNS', 38, 'LPT', '971530548624000', 'Universitas Airlangga', NULL, NULL, NULL, 'S.SI.', 'III/a', '2021-04-01', 'Tendik', 'Fungsional', 'Tendik Peneliti', 'TETAP NON PNS'),
('198408232008121001', 'rahmat.heru@feb.unair.ac.id', 'RAHMAT HERU SETIANTO', 'http://cybercampus.unair.ac.id/foto_pegawai/198408232008121001-1609670481.jpg', 'http://cybercampus.unair.ac.id/foto_pegawai/198408232008121001-1609670481.jpg', '3502082308840001', '0023088401', 1, 0, 'PONOROGO', '1984-08-23', 'JL. AWIKOEN, PERUMAHAN DINAS PT SEMEN INDONESIA G-224, GRESIK', '', '61122', '-', 'PNS', 244, 'Fakultas Ekonomi dan Bisnis', '894039916647000', 'Universitas Airlangga', 'MANAJEMEN', NULL, NULL, 'SE., M.Sc.Fin.', 'IV/a', NULL, 'Dosen', NULL, NULL, 'PNS'),
('198409012015041002', 'aryawirayuda@fib.unair.ac.id', 'ARYA WANDA WIRAYUDA', 'http://cybercampus.unair.ac.id/foto_pegawai/198409012015041002-1579158203.jpg', 'http://cybercampus.unair.ac.id/foto_pegawai/198409012015041002-1579158203.jpg', '3573030109840007', '0001098404', 1, 0, 'SURABAYA', '1984-09-01', 'Jalan Jetis Kulon VI No 26 Surabaya', '', '60243', '081231333405', 'PNS', 252, 'Fakultas Ilmu Budaya', '668973969623000', 'Universitas Airlangga', 'ILMU SEJARAH', NULL, NULL, 'S.Hum, M.A', 'III/b', '2018-10-01', 'Dosen', 'Fungsional', 'Asisten Ahli', 'PNS'),
('198409122018013101', 'akhmadriyanto@staf.unair.ac.id', 'Akhmad Riyanto', 'http://cybercampus.unair.ac.id/foto_pegawai/139050667-1477453129.JPG', 'http://cybercampus.unair.ac.id/foto_pegawai/139050667-1477453129.JPG', '198409122018013101', NULL, 1, 0, 'MALANG', '1984-09-12', 'BANDAREJO I/01, RT.8/RW.5, SEMEMI, BENOWO SURABAYA', '', '0', '-', 'TETAP NON PNS', 706, NULL, '887368686645000', 'Universitas Airlangga', NULL, NULL, NULL, 'S.M.', 'III/a', NULL, 'Tendik', NULL, NULL, 'TETAP NON PNS'),
('198410092016033201', 'nyoman.purwani@vokasi.unair.ac.id', 'NI NYOMAN PURWANI', 'http://cybercampus.unair.ac.id/foto_pegawai/198410092016033201-1609865900.jpg', 'http://cybercampus.unair.ac.id/foto_pegawai/198410092016033201-1609865900.jpg', '5108034910840002', '0009108403', 2, 0, 'SINGARAJA', '1984-10-09', NULL, '', '0', NULL, 'TETAP NON PNS', 306, 'Fakultas Vokasi', '249938440902000', 'Universitas Airlangga', 'TEKNOLOGI LABORATORIUM MEDIS', NULL, NULL, 'S.Si., M.Si.', 'III/b', NULL, 'Dosen', NULL, NULL, 'TETAP NON PNS'),
('198411022012121002', 'barrynuqoba@fst.unair.ac.id', 'BARRY NUQOBA', 'http://cybercampus.unair.ac.id/foto_pegawai/198411022012121002-1509960392.JPG', 'http://cybercampus.unair.ac.id/foto_pegawai/198411022012121002-1509960392.JPG', '3524220211840002', '0002118402', 1, 0, 'LAMONGAN', '1984-11-02', 'KARANGREJO TIMUR GG. BUNTU NO. 20 WONOKROMO SURABAYA', '', '60243', '085731704949', 'PNS', 248, 'Fakultas Sains dan Teknologi', '470477209645000', 'Universitas Airlangga', 'SISTEM INFORMASI', NULL, NULL, 'S.Si., M.Kom.', 'III/b', NULL, 'Dosen', NULL, NULL, 'PNS'),
('198411202015041001', 'manggala.pasca@fk.unair.ac.id', 'MANGGALA PASCA WARDHANA', 'http://cybercampus.unair.ac.id/foto_pegawai/', 'http://cybercampus.unair.ac.id/foto_pegawai/', '3578082011840005', '0020118404', 1, 0, 'SURABAYA', '1984-11-20', 'JL. DHARMAHUSADA INDAH A-28 SURABAYA', '', '60285', '5036609', 'PNS', 221, 'Fakultas Kedokteran', '343317913606000', 'Universitas Airlangga', 'PENDIDIKAN PROFESI DOKTER', NULL, NULL, 'dr., Sp.OG.', 'III/b', NULL, 'Dosen', NULL, NULL, 'PNS'),
('198411222015042002', 'sylvia.anggraeni@fk.unair.ac.id', 'SYLVIA ANGGRAENI', 'http://cybercampus.unair.ac.id/foto_pegawai/198411222015042002-1610530776.JPG', 'http://cybercampus.unair.ac.id/foto_pegawai/198411222015042002-1610530776.JPG', NULL, '0022118405', 2, 0, 'SURABAYA', '1984-11-22', 'JEMURWONOSARI JJ-1 SURABAYA', '', '60237', '0318438142', 'PNS', 221, 'Fakultas Kedokteran', NULL, 'Universitas Airlangga', 'DERMATOLOGI DAN VENEREOLOGI', NULL, NULL, 'dr., Sp.KK', 'III/b', NULL, 'Dosen', NULL, NULL, 'PNS'),
('198412072018035101', 'enndissetiawan@staf.unair.ac.id', 'ENNDIS SETIAWAN', 'https://cybercampus.unair.ac.id/foto_pegawai/198412072014015101-1487636240.jpg', 'https://cybercampus.unair.ac.id/foto_pegawai/198412072014015101-1487636240.jpg', '198412072018035101', NULL, 1, 0, 'SURABAYA', '1984-12-07', 'Karang Menjangan Gang V No 12A SURABAYA', '', '0', '085704131884', 'PEGAWAI TIDAK TETAP', 148, NULL, '835309576606000', 'Universitas Airlangga', 'AGRIBISNIS VETERINER', NULL, NULL, NULL, NULL, '2014-04-11', 'Tendik', 'Pilih Stat', 'Petugas Administrasi Akademik ', 'PEGAWAI TIDAK TETAP'),
('198412122008122002', 'febri-a@ff.unair.ac.id', 'FEBRI ANNURYANTI', 'http://cybercampus.unair.ac.id/foto_pegawai/', 'http://cybercampus.unair.ac.id/foto_pegawai/', '3578105212840011', '0012128401', 2, 0, 'LAMONGAN', '1984-12-12', 'SETRO BARU UTARA 6/59, SURABAYA', '', '60134', '0313898451', 'PNS', 245, 'Fakultas Farmasi', '587280512645000', 'Universitas Airlangga', 'FARMASI', NULL, NULL, 'S.Farm., M.Sc., Apt.', 'III/d', '2010-07-01', 'Dosen', 'Fungsional', 'Lektor', 'PNS'),
('198412152009122007', 'dessy.harisanty@vokasi.unair.ac.id', 'DESSY HARISANTY', 'http://cybercampus.unair.ac.id/foto_pegawai/198412152009122007-1603781580.jpg', 'http://cybercampus.unair.ac.id/foto_pegawai/198412152009122007-1603781580.jpg', '3524225512840003', '0715128401', 2, 0, 'LAMONGAN', '1984-12-15', 'Jl. Mojoklanggru II/2A, Kecamatan Gubeng, Surabaya', '', '0', '081553897363', 'PNS', 306, 'Fakultas Vokasi', '885094821657000', 'Universitas Airlangga', 'PERPUSTAKAAN', NULL, NULL, 'S.Sos., MA.', 'III/c', '2009-12-01', 'Dosen', 'Fungsional', 'Lektor', 'PNS'),
('198503132018013201', 'ridamelinda@staf.unair.ac.id', 'Rida Yutmani Melinda', 'https://cybercampus.unair.ac.id/foto_pegawai/139121585-1477039542.JPG', 'https://cybercampus.unair.ac.id/foto_pegawai/139121585-1477039542.JPG', '198503132018013201', NULL, 2, 0, 'SURABAYA', '1985-03-13', NULL, '', '0', NULL, 'TETAP NON PNS', 43, 'PPMB', '251138947617000', 'Universitas Airlangga', NULL, NULL, NULL, 'S.Sos.', 'III/b', NULL, 'Tendik', NULL, NULL, 'TETAP NON PNS'),
('198504082018013101', 'apriantorahmatwijaya@staf.unair.ac.id', 'Aprianto Rahmat Wijaya', 'https://cybercampus.unair.ac.id/foto_pegawai/198504082018013101-1650109103.jpg', 'https://cybercampus.unair.ac.id/foto_pegawai/198504082018013101-1650109103.jpg', '198504082018013101', NULL, 1, 0, 'BANGKALAN', '1985-04-08', NULL, '', '0', NULL, 'TETAP NON PNS', 350, NULL, '970993853624000', 'Universitas Airlangga', NULL, NULL, NULL, NULL, 'II/b', '2019-01-01', 'Tendik', 'Fungsional', 'Petugas Keamanan', 'TETAP NON PNS'),
('198505182008122002', 'zamrotulizzah@ff.unair.ac.id', 'ZAMROTUL IZZAH', 'http://cybercampus.unair.ac.id/foto_pegawai/', 'http://cybercampus.unair.ac.id/foto_pegawai/', '3578175805850005', '0018058501', 2, 0, 'SURABAYA', '1985-05-18', 'JL. BULAK BANTENG BARU GADING/12,SBY', '', '60128', '085655191257', 'PNS', 245, 'Fakultas Farmasi', '587280561619000', 'Universitas Airlangga', 'SPESIALIS FARMASI', NULL, NULL, 'S.Farm., M.Sc., Apt.', 'III/b', '2010-07-01', 'Dosen', 'Fungsional', 'Asisten Ahli', 'PNS'),
('198505212018013101', 'hermanto@staf.unair.ac.id', 'Hermanto', 'https://cybercampus.unair.ac.id/foto_pegawai/139101007-1477973759.JPG', 'https://cybercampus.unair.ac.id/foto_pegawai/139101007-1477973759.JPG', '198505212018013101', NULL, 1, 0, 'SIDOARJO', '1985-05-21', 'DS. Kedung Kembar RT. 02 - RW. 03 Prambon - Sidoarjo', '', '0', '085730555339', 'TETAP NON PNS', 350, NULL, '358108207603000', 'Universitas Airlangga', NULL, NULL, NULL, NULL, 'II/b', '2019-01-01', 'Tendik', 'Fungsional', 'Tenaga Kependidikan', 'TETAP NON PNS'),
('198505252016113101', 'setho.h@fkp.unair.ac.id', 'SETHO HADISUYATMANA', 'http://cybercampus.unair.ac.id/foto_pegawai/198505252016113101-1538632816.jpeg', 'http://cybercampus.unair.ac.id/foto_pegawai/198505252016113101-1538632816.jpeg', '3510162505850004', '0025058505', 1, 0, 'BANYUWANGI', '1985-05-25', 'Jl Tambak Medokan Ayu Perum SAMS C-23', '', '60295', '081357190855', 'TETAP NON PNS', 253, 'Fakultas Keperawatan', '356263830627000', 'Universitas Airlangga', 'KEPERAWATAN', NULL, NULL, 'S.Kep., Ns., M.NS (CommHlth&PC)', 'III/b', '2016-11-01', 'Dosen', 'Fungsional', 'Asisten Ahli', 'TETAP NON PNS'),
('198506042021093101', 'arif.tunjungseto@fk.unair.ac.id', 'Arif Tunjungseto', 'http://cybercampus.unair.ac.id/foto_pegawai/', 'http://cybercampus.unair.ac.id/foto_pegawai/', '3578030406850002', NULL, 1, 0, 'SURABAYA', '1985-06-04', NULL, '', '0', NULL, 'CPTNPNS', NULL, 'Fakultas Kedokteran', '763343449615000', 'Universitas Airlangga', 'KEDOKTERAN', NULL, NULL, 'dr., Sp.OG.', 'III/b', NULL, 'Dosen', NULL, NULL, 'CPTNPNS'),
('198506192009122005', 'lita-r-y@fkh.unair.ac.id', 'LITA RAKHMA YUSTINASARI', 'http://cybercampus.unair.ac.id/foto_pegawai/198506192009122005-1578919337.jpg', 'http://cybercampus.unair.ac.id/foto_pegawai/198506192009122005-1578919337.jpg', '3578035906850003', '0019068501', 2, 0, 'YOGYAKARTA', '1985-06-19', 'JL. YKP PANDUGO PD 1.PM-26 SURABAYA', '', '60297', '031-8721926', 'PNS', 246, 'Fakultas Kedokteran Hewan', '346149040615000', 'Universitas Airlangga', 'KEDOKTERAN HEWAN', NULL, NULL, 'drh., M.Vet.', 'III/c', NULL, 'Dosen', NULL, NULL, 'PNS'),
('198506222010122004', 'izzatul-fithriyah@fk.unair.ac.id', 'IZZATUL FITHRIYAH (RSUA)', '/', '/', '3518086006850005', '0022068505', 2, 0, 'NGANJUK', '1985-06-22', 'DESA KALIANYAR RT/RW 002/002, KERTOSONO, NGANJUK', '', '64351', '082257612322', 'PNS', 250, 'Fakultas Kesehatan Masyarakat', '797659794655000', 'Universitas Airlangga', 'ADMINISTRASI DAN KEBIJAKAN KES', NULL, NULL, 'dr., Sp.KJ', 'III/c', NULL, 'Dosen', NULL, NULL, 'PNS'),
('198507012009121009', 'suryokuncorojakti@fkh.unair.ac.id', 'SURYO KUNCOROJAKTI', 'http://cybercampus.unair.ac.id/foto_pegawai/198507012009121009-1652697959.jpg', 'http://cybercampus.unair.ac.id/foto_pegawai/198507012009121009-1652697959.jpg', '3301060107850034', '0001078502', 1, 0, 'CILACAP', '1985-07-01', 'VILLA KALIJUDAN INDAH J-42', '', '60282', '+62 811313202', 'PNS', 246, 'Fakultas Kedokteran Hewan', '346146236522000', 'Universitas Airlangga', 'KEDOKTERAN HEWAN', NULL, NULL, 'drh., M.Vet.', 'III/c', '0000-00-00', 'Dosen', 'Fungsional', 'Lektor', 'PNS'),
('198507162018013101', 'r.rendra.kurniawan@staf.unair.ac.id', 'R. Hendra Kurniawan', 'https://cybercampus.unair.ac.id/foto_pegawai/139141874-1477540884.JPG', 'https://cybercampus.unair.ac.id/foto_pegawai/139141874-1477540884.JPG', '198507162018013101', NULL, 1, 0, 'SURABAYA', '1985-07-16', NULL, '', '0', NULL, 'TETAP NON PNS', 315, NULL, '754676906606000', 'Universitas Airlangga', 'PROGRAM MKWU', NULL, NULL, 'S.M.', 'III/b', NULL, 'Tendik', NULL, NULL, 'TETAP NON PNS'),
('198508242019031004', 'sigit-k@feb.unair.ac.id', 'SIGIT KURNIANTO', 'http://cybercampus.unair.ac.id/foto_pegawai/198508242019031004-1577096310.jpg', 'http://cybercampus.unair.ac.id/foto_pegawai/198508242019031004-1577096310.jpg', '3578172408860003', '0024088503', 1, 0, 'SURABAYA', '1985-08-24', 'JALAN RANDU BARAT II/10 RT 005 RW 012 SIDOTOPO WETAN KENJERAN SURABAYA ', '', '60128', '082139997711', 'PNS', 250, 'Fakultas Kesehatan Masyarakat', '248775132619000', 'Universitas Airlangga', 'ADMINISTRASI DAN KEBIJAKAN KES', NULL, NULL, 'S.E., M.S.A', 'III/b', '2020-07-01', 'Dosen', 'Fungsional', 'Asisten Ahli', 'PNS'),
('198508262018013201', 'indah.fatma@staf.unair.ac.id', 'Indah Fatma Silvi', 'https://cybercampus.unair.ac.id/foto_pegawai/198508262018013201.JPG', 'https://cybercampus.unair.ac.id/foto_pegawai/198508262018013201.JPG', '198508262018013201', NULL, 2, 0, 'SIDOARJO', '1985-08-26', NULL, '', '0', NULL, 'TETAP NON PNS', 1, 'Perpustakaan', '262905516617000', 'Universitas Airlangga', NULL, NULL, NULL, 'A.Md.', 'II/c', '2018-12-20', 'Tendik', 'Pilih Stat', 'Pustakawan pelaksana', 'TETAP NON PNS'),
('198509012009022012', 'ameliamardhika@vokasi.unair.ac.id', 'AMELLIA MARDHIKA', '/', '/', '3525144109850001', '3401098501', 2, 0, 'BOJONEGORO', '1985-09-01', 'Jl. Topaz Raya no.11 PPS', '', '61151', '081230006979', 'PNS', 250, 'Fakultas Kesehatan Masyarakat', '896969904612000', 'Universitas Airlangga', 'ADMINISTRASI DAN KEBIJAKAN KES', NULL, NULL, 'S.Kep., Ns., M.Kes.', 'III/c', '2011-01-01', 'Dosen', 'Fungsional', 'Lektor', 'PNS'),
('198509082018013101', 'achmadrois@staf.unair.ac.id', 'Ahmad Rais', 'https://cybercampus.unair.ac.id/foto_pegawai/198509082018013101-1640170266.jpg', 'https://cybercampus.unair.ac.id/foto_pegawai/198509082018013101-1640170266.jpg', '198509082018013101', NULL, 1, 0, 'PATI', '1985-09-08', NULL, '', '0', NULL, 'TETAP NON PNS', 35, 'Badan Penjamin Mutu', '887368595619000', 'Universitas Airlangga', NULL, NULL, NULL, NULL, 'II/b', '2018-01-01', 'Tendik', 'Fungsional', 'Teknisi Jaringan Kompute', 'TETAP NON PNS'),
('198509172018013101', 'agungpribadi@staf.unair.ac.id', 'Agung Pribadi', 'https://cybercampus.unair.ac.id/foto_pegawai/198509172018013101-1569465390.jpg', 'https://cybercampus.unair.ac.id/foto_pegawai/198509172018013101-1569465390.jpg', '198509172018013101', NULL, 1, 0, 'SAMARINDA', '1985-09-17', NULL, '', '0', NULL, 'TETAP NON PNS', 659, NULL, '887369353625000', 'Universitas Airlangga', 'PENGOBAT TRADISIONAL', NULL, NULL, 'A.Md.', 'II/d', NULL, 'Tendik', NULL, NULL, 'TETAP NON PNS'),
('198509222014041001', 'annur.ahadi@fpk.unair.ac.id', 'ANNUR AHADI ABDILLAH', 'http://cybercampus.unair.ac.id/foto_pegawai/198509222014041001-1611398611.jpg', 'http://cybercampus.unair.ac.id/foto_pegawai/198509222014041001-1611398611.jpg', '3528042209850001', '0022098502', 1, 0, 'BANGKALAN', '1985-09-22', 'Sumpil II A. Yani Recidence KAv. 33 MAlang', '', '69351', '+628223340444', 'PNS', 254, 'Fakultas Perikanan dan Kelautan', '446781890608000', 'Universitas Airlangga', 'TEKNOLOGI HASIL PERIKANAN', NULL, NULL, 'S.Pi., M.Si', 'III/b', '2015-05-01', 'Dosen', 'Fungsional', 'Asisten Ahli', 'PNS'),
('198509282010121004', 'Nurfauzihamidi@staf.unair.ac.id', 'NUR FAUZI HAMIDI', 'https://cybercampus.unair.ac.id/foto_pegawai/198509282010121004.JPG', 'https://cybercampus.unair.ac.id/foto_pegawai/198509282010121004.JPG', '198509282010121004', NULL, 1, 0, 'GRESIK', '1985-09-28', NULL, '', '0', NULL, 'PNS', 40, 'Rumah Sakit Universitas Airlangga', '356842757642000', 'Universitas Airlangga', NULL, NULL, NULL, 'S.Farm., Apt', 'III/d', NULL, 'Tendik', NULL, NULL, 'PNS'),
('198510142010121002', 'afif.kurniawan@psikologi.unair.ac.id', 'AFIF KURNIAWAN', 'http://cybercampus.unair.ac.id/foto_pegawai/', 'http://cybercampus.unair.ac.id/foto_pegawai/', '3573031410850001', '0014108501', 1, 0, 'PASURUAN', '1985-10-14', 'JL. WONOSARI 5 SUROBOYO', '', '60153', '081217148014', 'PNS', 251, 'Fakultas Psikologi', '362655748623000', 'Universitas Airlangga', 'PSIKOLOGI', NULL, NULL, 'S.Psi., M.Psi', 'III/c', '2010-12-01', 'Dosen', 'Fungsional', 'Lektor', 'PNS'),
('198511022014041001', 'firman.setiawan@fk.unair.ac.id', 'FIRMAN SETIAWAN', 'http://cybercampus.unair.ac.id/foto_pegawai/198511022014041001-1625718232.jpg', 'http://cybercampus.unair.ac.id/foto_pegawai/198511022014041001-1625718232.jpg', NULL, '0002118503', 1, 0, 'NGANJUK', '1985-11-02', 'DSN NGEBRUGAN DRENGES', '', '64351', '+628125962885', 'PNS', 221, 'Fakultas Kedokteran', NULL, 'Universitas Airlangga', 'PENDIDIKAN PROFESI DOKTER', NULL, NULL, 'dr., Sp.MK', 'III/b', NULL, 'Dosen', NULL, NULL, 'PNS'),
('198601252016113201', 'iqlima.dwi.k@fkp.unair.ac.id', 'IQLIMA DWI KURNIA', 'http://cybercampus.unair.ac.id/foto_pegawai/198601252016113201-1539657192.jpg', 'http://cybercampus.unair.ac.id/foto_pegawai/198601252016113201-1539657192.jpg', '3506216501860003', '0725018602', 2, 0, 'KEDIRI', '1986-01-25', 'GUNUNG ANYAR BARU IIA NO 53 RUNGKUT SURABAYA', '', '0', '085731676686', 'TETAP NON PNS', 253, 'Fakultas Keperawatan', '367668480655000', 'Universitas Airlangga', 'KEPERAWATAN', NULL, NULL, 'S.Kep., Ns.M.Kep', 'III/b', '2016-11-01', 'Dosen', 'Fungsional', 'Asisten Ahli', 'TETAP NON PNS'),
('198602152018013201', 'nahdiyamuftyani@staf.unair.ac.id', NULL, 'http://cybercampus.unair.ac.id/foto_pegawai/', NULL, '198602152018013201', NULL, 2, 0, 'SURABAYA', NULL, NULL, '', '0', NULL, 'TETAP NON PNS', NULL, NULL, '251404471643000', 'Universitas Airlangga', 'OTOMASI SISTEM INSTRUMENTASI', NULL, NULL, 'S.Psi.', 'III/a', NULL, 'Tendik', NULL, NULL, NULL),
('198603012016113101', 'rozi@fpk.unair.ac.id', 'ROZI', 'http://cybercampus.unair.ac.id/foto_pegawai/198603012016113101-1573438970.jpg', 'http://cybercampus.unair.ac.id/foto_pegawai/198603012016113101-1573438970.jpg', '1505090103860002', '0001038604', 1, 0, 'MUARA JAMBI', '1986-03-01', 'JL. MOJO KLANGGRU LOR 83B SURABAYA', '', '0', '085643777662', 'TETAP NON PNS', 254, 'Fakultas Perikanan dan Kelautan', '669414666606000', 'Universitas Airlangga', 'AKUAKULTUR', NULL, NULL, 'S.Pi., M.Biotech.', 'III/b', '2018-08-01', 'Dosen', 'Fungsional', 'Asisten Ahli', 'TETAP NON PNS'),
('198603022009122007', 'Effitapiscesiana@staf.unair.ac.id', 'EFFITA PISCESIANA', 'https://cybercampus.unair.ac.id/foto_pegawai/198603022009122007-1638407390.jpg', 'https://cybercampus.unair.ac.id/foto_pegawai/198603022009122007-1638407390.jpg', '198603022009122007', NULL, 2, 0, 'PROBOLINGGO', '1986-03-02', NULL, '', '0', NULL, 'PNS', 40, 'Rumah Sakit Universitas Airlangga', '347642852606000', 'Universitas Airlangga', NULL, NULL, NULL, 'S.Kep., Ns', 'III/b', '2011-04-01', 'Tendik', 'Fungsional', 'Perawat', 'PNS'),
('198603192018013101', 'tisna.perdana@staf.unair.ac.id', 'Tisna Perdana Putra', 'https://cybercampus.unair.ac.id/foto_pegawai/139121641-1486369189.jpg', 'https://cybercampus.unair.ac.id/foto_pegawai/139121641-1486369189.jpg', '198603192018013101', NULL, 1, 0, 'SURABAYA', '1986-03-19', NULL, '', '0', NULL, 'TETAP NON PNS', 1, 'Perpustakaan', '580437150643000', 'Universitas Airlangga', NULL, NULL, NULL, 'A.Md.', 'II/d', NULL, 'Tendik', NULL, NULL, 'TETAP NON PNS'),
('198603232015041003', 'ilham.ridlo@fkm.unair.ac.id', 'ILHAM AKHSANU RIDLO', 'http://cybercampus.unair.ac.id/foto_pegawai/', 'http://cybercampus.unair.ac.id/foto_pegawai/', '3524032303860001', '0023038604', 1, 0, 'LAMONGAN', '1986-02-23', 'Green Semanggi Mangrove Osbornia A-05 RT 005/RW 007 Wonorejo Rungkut Surabaya ', '', '60296', '08113093333', 'PNS', 250, 'Fakultas Kesehatan Masyarakat', '871316816645000', 'Universitas Airlangga', 'KESEHATAN MASYARAKAT', NULL, NULL, 'S.KM., M.Kes.', 'III/b', NULL, 'Dosen', NULL, NULL, 'PNS'),
('198604012018013201', 'rischa.roesanti@staf.unair.ac.id', 'Rischa Aprilya Roesanty', 'https://cybercampus.unair.ac.id/foto_pegawai/139141903-1478251761.JPG', 'https://cybercampus.unair.ac.id/foto_pegawai/139141903-1478251761.JPG', '198604012018013201', NULL, 2, 0, 'SURABAYA', '1986-04-01', NULL, '', '0', NULL, 'TETAP NON PNS', 247, 'Fakultas Ilmu Sosial Ilmu Politik', '789421237619000', 'Universitas Airlangga', NULL, NULL, NULL, 'A.Md.', 'II/d', NULL, 'Tendik', NULL, NULL, 'TETAP NON PNS'),
('198604082009122003', 'fanni.okviasanti@vokasi.unair.ac.id', 'FANNI OKVIASANTI', '/', '/', '3524224804860004', '3408048601', 2, 0, 'LAMONGAN', '1986-04-08', 'Made Kidul XVIII/05, RT. 003, RW. 003 Lamongan', '', '62215', '(0322) 324352', 'PNS', NULL, 'Fakultas Kesehatan Masyarakat', '883003873645000', 'Universitas Airlangga', 'ADMINISTRASI DAN KEBIJAKAN KES', NULL, NULL, 'S.Kep., Ns., M.Kep.', 'III/b', NULL, 'Dosen', NULL, NULL, 'PNS'),
('198604122015043101', 'diansantoprayoga@fkm.unair.ac.id', 'DIANSANTO PRAYOGA', 'http://cybercampus.unair.ac.id/foto_pegawai/198604122015043101-1611559761.jpg', 'http://cybercampus.unair.ac.id/foto_pegawai/198604122015043101-1611559761.jpg', '3506251204860002', '0012048606', 1, 0, 'KEDIRI', '1986-04-12', 'JALAN KENDUNGREJO 1B NO 3 SURABAYA', '', '0', '+628133563206', 'TETAP NON PNS', 250, 'Fakultas Kesehatan Masyarakat', '261740765655000', 'Universitas Airlangga', 'KESEHATAN MASYARAKAT', NULL, NULL, 'S.KM., M.Kes.', 'III/b', '1986-04-12', 'Dosen', 'Fungsional', 'Asisten Ahli', 'TETAP NON PNS'),
('198604182018013201', 'firdaaprilia@staf.unair.ac.id', 'Firda Aprilia', 'https://cybercampus.unair.ac.id/foto_pegawai/198604182018013201.JPG', 'https://cybercampus.unair.ac.id/foto_pegawai/198604182018013201.JPG', '198604182018013201', NULL, 2, 0, 'SURABAYA', '1986-04-18', 'Surabaya', '', '0', '081515224405', 'TETAP NON PNS', 244, 'Fakultas Ekonomi dan Bisnis', '704656925619000', 'Universitas Airlangga', NULL, NULL, NULL, NULL, 'II/a', '2019-01-01', 'Tendik', 'Fungsional', 'Administrasi Sarana & Prasaran', 'TETAP NON PNS'),
('198605102010121003', 'hendra.kurnia.r@staf.unair.ac.id', 'HENDRA KURNIA RAKHMA', 'https://cybercampus.unair.ac.id/foto_pegawai/198605102010121003-1591849310.jpg', 'https://cybercampus.unair.ac.id/foto_pegawai/198605102010121003-1591849310.jpg', '198605102010121003', NULL, 1, 0, 'SURABAYA', '1986-05-10', NULL, '', '0', NULL, 'PNS', 40, 'Rumah Sakit Universitas Airlangga', '363239195604000', 'Universitas Airlangga', NULL, NULL, NULL, 'S.Kep., Ns', 'III/b', NULL, 'Tendik', NULL, NULL, 'PNS'),
('198606022015042001', 'lailatunnimah@fkp.unair.ac.id', 'LAILATUN NIMAH', 'http://cybercampus.unair.ac.id/foto_pegawai/', 'http://cybercampus.unair.ac.id/foto_pegawai/', '3525034206860002', '0702068603', 2, 0, 'GRESIK', '1986-06-02', 'JLN. SETRO BARU II NO. 34 SURABAYA', '', '60134', '0812-2649-288', 'PNS', 253, 'Fakultas Keperawatan', '885583328612000', 'Universitas Airlangga', 'KEPERAWATAN', NULL, NULL, 'S.Kep., Ns., M.Kep.', 'III/b', '2018-04-01', 'Dosen', 'Fungsional', 'Asisten Ahli', 'PNS'),
('198606262015041003', 'brian.eka@fk.unair.ac.id', 'BRIAN EKA RACHMAN', 'http://cybercampus.unair.ac.id/foto_pegawai/', 'http://cybercampus.unair.ac.id/foto_pegawai/', '198606262015041003', '0028068603', 1, 0, 'MALANG', '1986-06-26', 'GALAXI BUMI PERMAI K-2/15 RT.001 RW.009 KELURAHAN MEDOKAN SEMAMPIR KECAMATAN SUKOLILO', '', '60119', '08123005886', 'PNS', 221, 'Fakultas Kedokteran', NULL, 'Universitas Airlangga', 'PENDIDIKAN PROFESI DOKTER', NULL, 'dr.', 'Sp.PD', 'III/b', '2018-04-01', 'Dosen', 'Fungsional', 'Asisten Ahli', 'PNS'),
('198608192010122006', 'devirahmasofia@staf.unair.ac.id', 'DEVI RAHMA SOFIA', 'https://cybercampus.unair.ac.id/foto_pegawai/198608192010122006.JPG', 'https://cybercampus.unair.ac.id/foto_pegawai/198608192010122006.JPG', '198608192010122006', NULL, 2, 0, 'PONOROGO', '1986-08-19', NULL, '', '0', NULL, 'PNS', 40, 'Rumah Sakit Universitas Airlangga', '842463549647000', 'Universitas Airlangga', NULL, NULL, NULL, 'S.Kep., Ns', 'III/b', NULL, 'Tendik', NULL, NULL, 'PNS'),
('198608212014042001', 'hilda.sabrie@fh.unair.ac.id', 'HILDA YUNITA SABRIE', 'http://cybercampus.unair.ac.id/foto_pegawai/198608212014042001-1616226141.jpg', 'http://cybercampus.unair.ac.id/foto_pegawai/198608212014042001-1616226141.jpg', '3578246108860001', '0021088601', 2, 0, 'SEMARANG', '1986-08-21', 'JL. KENDANGSARI BLOK F/72', '', '60292', '082131409821', 'PNS', 243, 'Fakultas Hukum', '675025670615000', 'Universitas Airlangga', 'ILMU HUKUM', NULL, NULL, 'S.H., M.H', 'III/c', NULL, 'Dosen', NULL, NULL, 'PNS'),
('198608262021093101', 'reza.al.fessi@fkg.unair.ac.id', 'Reza Al Fessi', 'http://cybercampus.unair.ac.id/foto_pegawai/198608262018077101-1611969672.jpeg', 'http://cybercampus.unair.ac.id/foto_pegawai/198608262018077101-1611969672.jpeg', '3572012608860002', NULL, 1, 0, 'BLITAR', '1986-08-26', 'Jl. ploso timur IB no 91 Surabaya', '', '60133', '031 5030255', 'CPTNPNS', NULL, 'Fakultas Kedokteran Gigi', '444563704646000', 'Universitas Airlangga', 'KEDOKTERAN GIGI', NULL, NULL, 'drg., M.Ked.Klin., Sp.BM.', 'III/b', '2021-09-01', 'Dosen', 'Fungsional', 'Asisten Ahli', 'CPTNPNS'),
('198609012018013101', 'vikibudi@staf.unair.ac.id', 'Viki Budi Susetyo Parto', 'https://cybercampus.unair.ac.id/foto_pegawai/198609012018013101-1580264418.jpg', 'https://cybercampus.unair.ac.id/foto_pegawai/198609012018013101-1580264418.jpg', '198609012018013101', NULL, 1, 0, 'SURABAYA', '1986-09-01', NULL, '', '0', NULL, 'TETAP NON PNS', 34, 'Sekretaris Universitas', '449090190604000', 'Universitas Airlangga', NULL, NULL, NULL, 'A.Md.', 'II/d', '2019-01-01', 'Tendik', 'Fungsional', 'pengelola data', 'TETAP NON PNS'),
('198609052018013101', 'bagusprasetiyo@staf.unair.ac.id', 'Bagus Dwi Prasetiyo', 'https://cybercampus.unair.ac.id/foto_pegawai/198609052018013101-1646009440.jpg', 'https://cybercampus.unair.ac.id/foto_pegawai/198609052018013101-1646009440.jpg', '198609052018013101', NULL, 1, 0, 'SURABAYA', '1986-09-05', NULL, '', '0', NULL, 'TETAP NON PNS', 344, 'Lembaga Pengembangan Bisnis dan Inkubasi', '743079279604000', 'Universitas Airlangga', NULL, NULL, NULL, 'S.Psi.', 'III/b', NULL, 'Tendik', NULL, NULL, 'TETAP NON PNS'),
('198609112014041001', 'heru.pramono@fpk.unair.ac.id', 'HERU PRAMONO', '/', '/', '3402161109860001', '0011098601', 1, 0, 'BANTUL', '1986-09-11', 'SRIBITAN RT 03, BANGUNJIWO, KASIHAN, BANTUL, YOGYAKARTA', '', '55184', '085725951103', 'PNS', 254, 'Fakultas Perikanan dan Kelautan', '553548413543000', 'Universitas Airlangga', 'TEKNOLOGI HASIL PERIKANAN', NULL, NULL, 'S.Pi., M.Biotech.', 'III/b', '2015-05-01', 'Dosen', 'Fungsional', 'Asisten Ahli', 'PNS'),
('198609212019063201', 'fransisca@staf.unair.ac.id', 'Fransisca Ika Prasetyo', 'https://cybercampus.unair.ac.id/foto_pegawai/139121612-1487041673.jpg', 'https://cybercampus.unair.ac.id/foto_pegawai/139121612-1487041673.jpg', '198609212019063201', NULL, 2, 0, 'SURABAYA', '1986-09-21', NULL, '', '0', NULL, 'TETAP NON PNS', 34, 'Sekretaris Universitas', '889923660606000', 'Universitas Airlangga', NULL, NULL, NULL, 'A.Md.', 'II/c', NULL, 'Tendik', NULL, NULL, 'TETAP NON PNS'),
('198610232014041001', 'choirul.anwar@staf.unair.ac.id', 'CHOIRUL ANWAR', 'https://cybercampus.unair.ac.id/foto_pegawai/198610232014041001.JPG', 'https://cybercampus.unair.ac.id/foto_pegawai/198610232014041001.JPG', '198610232014041001', NULL, 1, 0, 'LAMONGAN', '1986-10-23', NULL, '', '0', NULL, 'PNS', 40, 'Rumah Sakit Universitas Airlangga', '705414514645000', 'Universitas Airlangga', NULL, NULL, NULL, 'S.Kep., Ns', 'III/b', NULL, 'Tendik', NULL, NULL, 'PNS'),
('198610262015042003', 'sylvia.dwiwahyuni@fkp.unair.ac.id', 'SYLVIA DWI WAHYUNI', 'http://cybercampus.unair.ac.id/foto_pegawai/198610262015042003-1611988954.jpeg', 'http://cybercampus.unair.ac.id/foto_pegawai/198610262015042003-1611988954.jpeg', '3512086610860001', '0026108602', 2, 0, 'SITUBONDO', '1986-10-26', NULL, '', '0', '08165426215', 'PNS', 253, 'Fakultas Keperawatan', '890056732656000', 'Universitas Airlangga', 'KEPERAWATAN', NULL, NULL, 'S.Kep., Ns., M.Kep.', 'III/b', NULL, 'Dosen', NULL, NULL, 'PNS'),
('198611092015042002', 'praba-d-r@fkp.unair.ac.id', 'PRABA DIYAN RACHMAWATI', 'http://cybercampus.unair.ac.id/foto_pegawai/', 'http://cybercampus.unair.ac.id/foto_pegawai/', '3578234911860002', '0009118603', 2, 0, 'SURABAYA', '1986-11-09', 'PERUM ALAM GUNUNG ANYAR BLOK C-3/ 8 SURABAYA', '', '0', '081331012854', 'PNS', 253, 'Fakultas Keperawatan', '362705741609000', 'Universitas Airlangga', 'KEPERAWATAN', NULL, NULL, 'S.Kep., Ns., M.Kep', 'III/b', '2018-04-01', 'Dosen', 'Fungsional', 'Asisten Ahli', 'PNS'),
('198611202015041001', 'ananda.firman.putranto@fkg.unair.ac.id', 'ANANDA FIRMAN PUTRANTO', 'http://cybercampus.unair.ac.id/foto_pegawai/', 'http://cybercampus.unair.ac.id/foto_pegawai/', '3578242011860001', '0020118601', 1, 0, 'SURABAYA', '1986-11-20', 'JL. SARONOJIWO NO. 23 SURABAYA', '', '60299', '08113466161', 'PNS', 242, 'Fakultas Kedokteran Gigi', '456224963615000', 'Universitas Airlangga', 'PENDIDIKAN DOKTER GIGI', NULL, NULL, 'drg. M.Kes', 'III/b', NULL, 'Dosen', NULL, NULL, 'PNS'),
('198611242018032001', 'arina-qonaah@fkp.unair.ac.id', 'Arina Qona\'ah', 'http://cybercampus.unair.ac.id/foto_pegawai/198611242018032001-1611459094.jpg', 'http://cybercampus.unair.ac.id/foto_pegawai/198611242018032001-1611459094.jpg', '3524256411860001', '3424118601', 2, 0, 'LAMONGAN', '1986-11-24', 'Jl. Samudra RT 03 RW 05 Glugu Deket Lamongan ', '', '62291', '(031) 5913257', 'PNS', NULL, 'Fakultas Keperawatan', '843488461645000', 'Universitas Airlangga', 'KEPERAWATAN', NULL, NULL, 'M.Kep.', 'III/b', NULL, 'Dosen', NULL, NULL, 'PNS');
INSERT INTO `biodata` (`NIK`, `EMAIL`, `NAMA`, `FOTO`, `FOTO1`, `NO_KTP`, `NIDN`, `JENIS_KELAMIN`, `STATUS_MENIKAH`, `TEMPAT_LAHIR`, `TGL_LAHIR`, `ALAMAT`, `KOTA`, `KODE_POS`, `HANDPHONE`, `STATUS`, `ID_UNIT_KERJA`, `UNIT_KERJA`, `NPWP`, `UNIVERSITAS`, `PRODI`, `IPK`, `GELAR_DEPAN`, `GELAR_BELAKANG`, `PANGKAT_GOLONGAN`, `TMT_PNS`, `STATUS_PEGAWAI`, `STATUS_JABATAN`, `NAMA_JABATAN`, `JENIS_KEPEGAWAIAN`) VALUES
('198612122018035101', 'achmadtaufik@staf.unair.ac.id', 'ACHMAD TAUFIK', 'https://cybercampus.unair.ac.id/foto_pegawai/139141816-1477884623.JPG', 'https://cybercampus.unair.ac.id/foto_pegawai/139141816-1477884623.JPG', '198612122018035101', NULL, 1, 0, 'SAMPANG', '1986-12-12', NULL, '', '0', NULL, 'PEGAWAI TIDAK TETAP', 246, 'Fakultas Kedokteran Hewan', '704620905606000', 'Universitas Airlangga', NULL, NULL, NULL, NULL, NULL, NULL, 'Tendik', NULL, NULL, 'PEGAWAI TIDAK TETAP'),
('198701022019031007', 'linggar.rama@fisip.unair.ac.id', 'Linggar Rama Dian Putra', 'http://cybercampus.unair.ac.id/foto_pegawai/198701022019031007-1562138710.jpg', 'http://cybercampus.unair.ac.id/foto_pegawai/198701022019031007-1562138710.jpg', '3510090201870004', '0002018706', 1, 0, 'JEMBER', '1987-01-02', NULL, '', '0', NULL, 'PNS', 321, 'Fakultas Ilmu Sosial dan Ilmu Politik', '760167973627000', 'Universitas Airlangga', 'ANTROPOLOGI', NULL, NULL, 'S.Ant., M.A.', 'III/b', NULL, 'Dosen', NULL, NULL, 'PNS'),
('198701102015042001', 'ratna.azis.prasetyo@fisip.unair.ac.id', 'RATNA AZIS PRASETYO', 'http://cybercampus.unair.ac.id/foto_pegawai/198701102015042001-1565060268.jpg', 'http://cybercampus.unair.ac.id/foto_pegawai/198701102015042001-1565060268.jpg', '3522125001870003', '0010018702', 2, 0, 'SIDOARJO', '1987-01-10', 'JL. PANGLIMA SUDIRMAN RT 04/ RW01 MEJUWET, SUMBERREJO', '', '0', '085645432451', 'PNS', 321, 'Fakultas Ilmu Sosial dan Ilmu Politik', '369583521601000', 'Universitas Airlangga', 'SOSIOLOGI', NULL, NULL, 'S.Sosio., M.Sosio', 'III/b', '2018-04-01', 'Dosen', 'Fungsional', 'Asisten Ahli', 'PNS'),
('198702232016113201', 'aria.aulia.n@fkp.unair.ac.id', 'ARIA AULIA NASTITI', 'http://cybercampus.unair.ac.id/foto_pegawai/', 'http://cybercampus.unair.ac.id/foto_pegawai/', '3515136302870001', '0023028704', 2, 0, 'SIDOARJO', '1987-02-23', 'TENGGILIS TIMUR IV/B4 SURABAYA', '', '0', '(031)8411209', 'TETAP NON PNS', 253, 'Fakultas Keperawatan', '356998237603000', 'Universitas Airlangga', 'KEPERAWATAN', NULL, NULL, 'S.Kep., Ns.,M.Kep', 'III/b', '2016-11-01', 'Dosen', 'Fungsional', 'Asisten Ahli', 'TETAP NON PNS'),
('198702242010122006', 'ita_rsua@staf.unair.ac.id', 'ITA RATNASARI', 'https://cybercampus.unair.ac.id/foto_pegawai/198702242010122006.JPG', 'https://cybercampus.unair.ac.id/foto_pegawai/198702242010122006.JPG', '198702242010122006', NULL, 2, 0, 'MAGETAN', '1987-02-24', NULL, '', '0', NULL, 'PNS', 40, 'Rumah Sakit Universitas Airlangga', '887375749646000', 'Universitas Airlangga', NULL, NULL, NULL, 'A.Md', 'III/a', NULL, 'Tendik', NULL, NULL, 'PNS'),
('198703142015042001', 'marisa.rifada@fst.unair.ac.id', 'MARISA RIFADA', 'http://cybercampus.unair.ac.id/foto_pegawai/198703142015042001-1560816607.JPG', 'http://cybercampus.unair.ac.id/foto_pegawai/198703142015042001-1560816607.JPG', '3525145403870005', '0014038701', 2, 0, 'GRESIK', '1987-03-14', 'KEDURUS GG IV C NO.35 SURABAYA', '', '60223', '085648266260', 'PNS', 248, 'Fakultas Sains dan Teknologi', '545223042612000', 'Universitas Airlangga', 'STATISTIKA', NULL, NULL, 'S.Si., M.Si.', 'III/b', '2018-10-01', 'Dosen', 'Fungsional', 'Asisten Ahli', 'PNS'),
('198703292016113101', 'mkmubin@feb.unair.ac.id', 'M. KHOERUL MUBIN', '/', '/', '3515172903670002', '0029038701', 1, 0, 'TUBAN', '1987-03-29', 'Jl. Tumapel no 13, Ketajen, Gedangan, Sidoarjo', '', '61254', '085730133290', 'TETAP NON PNS', 244, 'Fakultas Ekonomi dan Bisnis', '559212030643000', 'Universitas Airlangga', 'EKONOMI PEMBANGUNAN', NULL, NULL, 'S.E.M.Sc', 'III/b', '2016-11-01', 'Dosen', 'Fungsional', 'Asisten Ahli', 'TETAP NON PNS'),
('198704012018013201', 'hestiningrum@staf.unair.ac.id', 'HESTININGRUM TRIASTUTI', NULL, '198704012018013201_FOTO.jpg', '198704012018013201', '1247164821414', 2, 0, 'PASURUAN', NULL, 'SEMAMPIR TENGAH VIII BLOK B NO.16 SURABAYA', '', '0', '085649313197', 'TETAP NON PNS', NULL, 'Vokasi', '360332035624000', 'Universitas Airlangga', 'SISTEM INFORMASI', NULL, '', 'S.E.', 'Penata Muda (Gol.III/a)', NULL, 'Tendik', 'Fungsional', 'Tenaga Usaha', 'PNS'),
('198704252016033201', 'riska.rosyidiana@vokasi.unair.ac.id', 'RISKA NUR ROSYIDIANA', 'http://cybercampus.unair.ac.id/foto_pegawai/', 'http://cybercampus.unair.ac.id/foto_pegawai/', '3522136504870003', '0025048704', 2, 0, 'BOJONEGORO', '1987-04-25', 'Jl. Wiguna Tengah No. 4', '', '60294', '085646111558', 'TETAP NON PNS', 306, 'Fakultas Vokasi', '259963999601000', 'Universitas Airlangga', 'AKUNTANSI', NULL, NULL, 'S.E., M.Ak.', 'III/b', '2016-03-01', 'Dosen', 'Fungsional', 'Asisten Ahli', 'TETAP NON PNS'),
('198705022015042002', 'diantristiana@fkp.unair.ac.id', 'RR DIAN TRISTIANA', 'http://cybercampus.unair.ac.id/foto_pegawai/', 'http://cybercampus.unair.ac.id/foto_pegawai/', '3520134205870001', '0002058702', 2, 0, 'MAGETAN', '1987-05-02', 'JALAN MARKISA NO 05 RT/RW 004/001, DESA SELOKBESUKI, LUMAJANG', '', '0', '085648182935', 'PNS', 253, 'Fakultas Keperawatan', '665142667646000', 'Universitas Airlangga', 'KEPERAWATAN', NULL, NULL, 'S.Kep. Ns., M. Kep', 'III/c', '2018-04-01', 'Dosen', 'Fungsional', 'Lektor', 'PNS'),
('198705212018083201', 'elsyea-adia-tunggadewi@vokasi.unair.ac.id', 'Elsyea Adia Tunggadewi', 'http://cybercampus.unair.ac.id/foto_pegawai/198705212018083201-1580133572.jpg', 'http://cybercampus.unair.ac.id/foto_pegawai/198705212018083201-1580133572.jpg', '3517066105870001', '0021058707', 2, 0, 'JOMBANG', '1987-05-21', 'Jl. Nanas, Kademangan, Mojoagung, Jombang, Jawa Timur', '', '61482', '(031) 5033869', 'TETAP NON PNS', 306, 'Fakultas Vokasi', '752659300602000', 'Universitas Airlangga', 'OTOMASI SISTEM INSTRUMENTASI', NULL, NULL, 'S.T., M.T.', 'III/b', '2019-08-01', 'Dosen', 'Fungsional', 'Asisten Ahli', 'TETAP NON PNS'),
('198706252012122002', 'army-j@fst.unair.ac.id', 'ARMY JUSTITIA', 'http://cybercampus.unair.ac.id/foto_pegawai/198706252012122002-1509960510.JPG', 'http://cybercampus.unair.ac.id/foto_pegawai/198706252012122002-1509960510.JPG', '3504056506870001', '0025068701', 2, 0, 'TULUNGAGUNG', '1987-06-25', 'SERAYU 03, RT. OO5, RW. 006, GRESIK', '', '61121', '085655173972', 'PNS', 248, 'Fakultas Sains dan Teknologi', '548309301629000', 'Universitas Airlangga', 'SISTEM INFORMASI', NULL, NULL, 'S.Kom., M.Kom.', 'III/b', '2014-04-01', 'Dosen', 'Fungsional', 'Asisten Ahli', 'PNS'),
('198707042020122007', 'wahyuni.tri.lestari@fkp.unair.ac.id', 'Wahyuni Tri Lestari', 'http://cybercampus.unair.ac.id/foto_pegawai/198707042020122007-1613444165.jpg', 'http://cybercampus.unair.ac.id/foto_pegawai/198707042020122007-1613444165.jpg', '3515154407870002', '0704078703', 2, 0, 'SIDOARJO', '1987-07-04', 'Ds. Wadungasih RT.02 RW. 01 No.69, Kecamatan Buduran, Kabupaten Sidoarjo- Jawa Timur', '', '61252', '082131825237', 'CPNS', 253, 'Fakultas Keperawatan', '668229545643000', 'Universitas Airlangga', 'KEPERAWATAN', NULL, NULL, 'S.Kep., Ns., M.Kep.', 'III/b', '2020-12-01', 'Dosen', 'Fungsional', 'Asisten Ahli', 'CPNS'),
('198707172015042002', 'ristafauzinigtyas@fkp.unair.ac.id', 'RISTA FAUZININGTYAS', 'http://cybercampus.unair.ac.id/foto_pegawai/', 'http://cybercampus.unair.ac.id/foto_pegawai/', '3516145707870004', '0717078702', 2, 0, 'MOJOKERTO', '1987-07-17', 'Jl. Putra Bangsa III blok A no. 56, Medokan Ayu, Rungkut, Surabaya', '', '60295', '-', 'PNS', 253, 'Fakultas Keperawatan', '890227416621000', 'Universitas Airlangga', 'KEPERAWATAN', NULL, NULL, 'S.Kep.Ns., M.Kep', 'III/b', '2018-04-01', 'Dosen', 'Fungsional', 'Asisten Ahli', 'PNS'),
('198707272015041003', 'ahmadi-j-permana@fst.unair.ac.id', 'AHMADI JAYA PERMANA', 'http://cybercampus.unair.ac.id/foto_pegawai/', 'http://cybercampus.unair.ac.id/foto_pegawai/', '3573032707870006', '0027078707', 1, 0, 'MALANG', '1987-07-27', 'JL. Wonorejo Selatan I No.159 Rungkut Surabaya', '', '60296', '085646622562', 'PNS', 248, 'Fakultas Sains dan Teknologi', '455958579623000', 'Universitas Airlangga', 'KIMIA', NULL, NULL, 'S.Si., M.Si', NULL, NULL, 'Dosen', NULL, NULL, 'PNS'),
('198708042018013101', 'much.aris@staf.unair.ac.id', 'Muchammad Aris Rachmad', 'https://cybercampus.unair.ac.id/foto_pegawai/139101154-1478061321.JPG', 'https://cybercampus.unair.ac.id/foto_pegawai/139101154-1478061321.JPG', '198708042018013101', NULL, 1, 0, 'SURABAYA', '1987-08-04', NULL, '', '0', NULL, 'TETAP NON PNS', 267, NULL, '885093328609000', 'Universitas Airlangga', 'GIZI', NULL, NULL, NULL, 'II/b', NULL, 'Tendik', NULL, NULL, 'TETAP NON PNS'),
('198710012012121002', 'hendrisusilo@staf.unair.ac.id', 'HENDRI SUSILO', 'https://cybercampus.unair.ac.id/foto_pegawai/198710012012121002-1671082285.jpg', 'https://cybercampus.unair.ac.id/foto_pegawai/198710012012121002-1671082285.jpg', '198710012012121002', NULL, 1, 0, 'TUBAN', '1987-10-01', 'Jl. Sutorejo Tengah IV No. 28 Surabaya', '', '0', '085648317994', 'PNS', 40, 'Rumah Sakit Universitas Airlangga', '548963271619000', 'Universitas Airlangga', NULL, NULL, NULL, 'dr.', 'III/c', '2012-12-01', 'Tendik', 'Pilih Stat', 'Dokter Spesialis Jantung dan P', 'PNS'),
('198710232015042004', 'sylvalifr@feb.unair.ac.id', 'SYLVA ALIF RUSMITA', 'http://cybercampus.unair.ac.id/foto_pegawai/', 'http://cybercampus.unair.ac.id/foto_pegawai/', '3515086310870003', '0023108705', 2, 0, 'MALANG', '1987-10-23', 'UNTUNG SUROPATI I/10 SIDOKLUMPUK SIDOARJO', '', '61218', '085691688617', 'PNS', 244, 'Fakultas Ekonomi dan Bisnis', '351691340617000', 'Universitas Airlangga', 'EKONOMI ISLAM', NULL, NULL, 'SE., CIFP', 'III/b', '2015-04-01', 'Dosen', 'Fungsional', 'Lektor', 'PNS'),
('198710302020013101', NULL, 'Hakamy', 'https://cybercampus.unair.ac.id/foto_pegawai/198710302018045101-1575546008.jpg', 'https://cybercampus.unair.ac.id/foto_pegawai/198710302018045101-1575546008.jpg', '198710302020013101', NULL, 1, 0, 'SURABAYA', '1987-10-30', NULL, '', '0', NULL, 'TETAP NON PNS', 604, 'Rumah Sakit Gigi dan Mulut Pendidikan', '664227758834000', 'Universitas Airlangga', NULL, NULL, NULL, 'S.Ked.', 'III/a', NULL, 'Tendik', NULL, NULL, 'TETAP NON PNS'),
('198711022015042003', 'ikanurpratiwi@fkp.unair.ac.id', 'IKA NUR PRATIWI', 'http://cybercampus.unair.ac.id/foto_pegawai/', 'http://cybercampus.unair.ac.id/foto_pegawai/', '5201084211870001', '0002118704', 2, 0, 'LOMBOK BARAT', '1987-11-02', 'JL MEDAYU UTARA XIII/14, MEDOKAN AYU, RUNGKUT, SURABAYA', '', '83114', '(031) 5913752', 'PNS', 253, 'Fakultas Keperawatan', '728566936911000', 'Universitas Airlangga', 'KEPERAWATAN', NULL, NULL, 'S.Kep., Ns., M.Kep.', 'III/b', '2018-04-01', 'Dosen', 'Fungsional', 'Lektor', 'PNS'),
('198711112015041005', 'dani.nihaq@fkm.unair.ac.id', 'DANI NASIRUL HAQI', 'http://cybercampus.unair.ac.id/foto_pegawai/198711112015041005-1652081321.jpg', 'http://cybercampus.unair.ac.id/foto_pegawai/198711112015041005-1652081321.jpg', '3525121111870001', '0011118702', 1, 0, 'GRESIK', '1987-11-11', 'WONOREJO TIMUR BLOK C. GANG SANTAI NO 143. RUNGKUT SURABAYA', '', '0', '085730396977', 'PNS', 250, 'Fakultas Kesehatan Masyarakat', '449176692612000', 'Universitas Airlangga', 'ADMINISTRASI DAN KEBIJAKAN KES', NULL, NULL, 'S.KM., M.KKK', 'III/b', '2018-04-01', 'Dosen', 'Fungsional', 'Lektor', 'PNS'),
('198712022015041002', 'jovisulistiawan@feb.unair.ac.id', 'JOVI SULISTIAWAN', 'http://cybercampus.unair.ac.id/foto_pegawai/', 'http://cybercampus.unair.ac.id/foto_pegawai/', '3574030212870002', '0002128701', 1, 0, 'PROBOLINGGO', '1987-12-02', 'JL. RUNGKUT HARAPANBLOK L NO. 6, RT.012 RW.002, KALIRUNGKUT, RUNGKUT, SURABAYA', '', '60293', '081217016517,', 'PNS', 244, 'Fakultas Ekonomi dan Bisnis', '349162586625000', 'Universitas Airlangga', 'MANAJEMEN', NULL, NULL, 'S.E., M.SM.', 'III/b', '2018-03-01', 'Dosen', 'Fungsional', 'Asisten Ahli', 'PNS'),
('198801092016113201', 'rahaditya.puspa@fib.unair.ac.id', 'RAHADITYA PUSPA KIRANA', '/', '/', '3578094901880002', '0009018804', 2, 0, 'SURABAYA', '1988-01-09', 'KEPUTIH II-C/NO. 23, SURABAYA', '', '60111', '031-5035676', 'TETAP NON PNS', 252, 'Fakultas Ilmu Budaya', '458673878606000', 'Universitas Airlangga', 'STUDI KEJEPANGAN', NULL, NULL, 'S.Hum., M.Hum', 'III/b', '2018-08-01', 'Dosen', 'Fungsional', 'Asisten Ahli', 'TETAP NON PNS'),
('198801182018013201', 'dinnypurwoningrum@staf.unair.ac.id', 'Dinny Purwoningrum', 'https://cybercampus.unair.ac.id/foto_pegawai/198801182012124201-1478508714.JPG', 'https://cybercampus.unair.ac.id/foto_pegawai/198801182012124201-1478508714.JPG', '198801182018013201', NULL, 2, 0, 'SURABAYA', '1988-01-18', NULL, '', '0', NULL, 'TETAP NON PNS', 660, NULL, '673821906612000', 'Universitas Airlangga', 'TEKNOLOGI HASIL PERIKANAN', NULL, NULL, 'A.Md.', 'II/d', NULL, 'Tendik', NULL, NULL, 'TETAP NON PNS'),
('198802152012122003', 'ika.nindya@fk.unair.ac.id', 'IKA NINDYA KADARISWANTININGSIH', 'http://cybercampus.unair.ac.id/foto_pegawai/198802152012122003-1577076886.jpg', 'http://cybercampus.unair.ac.id/foto_pegawai/198802152012122003-1577076886.jpg', NULL, '0015028803', 2, 0, 'SURABAYA', '1988-02-15', 'JL. WISMA TENGGER 19/9 KEL. KANDANGAN-BENOWO', '', '0', '081553991988', 'PNS', NULL, 'Fakultas Kedokteran', NULL, 'Universitas Airlangga', 'KEDOKTERAN', NULL, NULL, 'dr.', 'III/b', NULL, 'Dosen', NULL, NULL, 'PNS'),
('198805012016113201', 'meiniaprasyesti@fisip.unair.ac.id', 'MEINIA PRASYESTI KURNIASARI', 'http://cybercampus.unair.ac.id/foto_pegawai/198805012016113201-1641790746.jpg', 'http://cybercampus.unair.ac.id/foto_pegawai/198805012016113201-1641790746.jpg', '3578265306830003', '0001058803', 2, 0, 'LAMONGAN', '1988-05-01', 'Perum Wisata Semanggi A1 No. 61 Surabaya', '', '0', '081221201988', 'TETAP NON PNS', NULL, 'Fakultas Kesehatan Masyarakat', '714783859645000', 'Universitas Airlangga', 'ADMINISTRASI DAN KEBIJAKAN KES', NULL, NULL, 'S.IIP., M.A.', 'III/b', '2016-11-01', 'Dosen', 'Fungsional', 'Asisten Ahli', 'TETAP NON PNS'),
('198805032014042004', 'nuzululkusuma@fkm.unair.ac.id', 'NUZULUL KUSUMA PUTRI', 'http://cybercampus.unair.ac.id/foto_pegawai/', 'http://cybercampus.unair.ac.id/foto_pegawai/', '3517094305880001', '0003058803', 2, 0, 'SURABAYA', '1988-05-03', 'PURI GUNUNG ANYAR REGENCY BLOK K-26SURABAYA', '', '60249', '082230591613', 'PNS', NULL, 'Fakultas Kesehatan Masyarakat', '982219198602000', 'Universitas Airlangga', 'ADMINISTRASI DAN KEBIJAKAN KES', NULL, NULL, 'S.KM., M.Kes.', 'III/c', NULL, 'Dosen', NULL, NULL, 'PNS'),
('198805092018035101', 'rois@staf.unair.ac.id', 'ROIS', 'https://cybercampus.unair.ac.id/foto_pegawai/198805092018035101-1601437406.jpg', 'https://cybercampus.unair.ac.id/foto_pegawai/198805092018035101-1601437406.jpg', '198805092018035101', NULL, 1, 0, 'SURABAYA', '1988-05-09', NULL, '', '0', NULL, 'PEGAWAI TIDAK TETAP', 244, 'Fakultas Ekonomi dan Bisnis', '704081967619000', 'Universitas Airlangga', NULL, NULL, NULL, 'S.Pd.I.', NULL, NULL, 'Tendik', NULL, NULL, 'PEGAWAI TIDAK TETAP'),
('198805162018013101', 'ekowidiyanto@staf.unair.ac.id', 'Eko Widiyanto', 'https://cybercampus.unair.ac.id/foto_pegawai/198805162018013101-1658457795.jpg', 'https://cybercampus.unair.ac.id/foto_pegawai/198805162018013101-1658457795.jpg', '198805162018013101', NULL, 1, 0, 'MALANG', '1988-05-16', 'hjghjm', '', '0', '123456789', 'TETAP NON PNS', 350, NULL, '887368504623000', 'Universitas Airlangga', NULL, NULL, NULL, NULL, 'II/b', '2018-01-01', 'Tendik', 'Pilih Stat', 'Petugas percetakan', 'TETAP NON PNS'),
('198806042010121005', 'bangun.mukti@staf.unair.ac.id', 'BANGUN MUKTI ARDI', 'https://cybercampus.unair.ac.id/foto_pegawai/198806042010121005.JPG', 'https://cybercampus.unair.ac.id/foto_pegawai/198806042010121005.JPG', '198806042010121005', NULL, 1, 0, 'SUKOHARJO', '1988-06-04', NULL, '', '0', NULL, 'PNS', 40, 'Rumah Sakit Universitas Airlangga', '471638106532000', 'Universitas Airlangga', NULL, NULL, NULL, 'A.Md.Kep.', 'II/d', NULL, 'Tendik', NULL, NULL, 'PNS'),
('198806272016113101', 'adrianperkasa@fib.unair.ac.id', 'ADRIAN PERKASA', 'http://cybercampus.unair.ac.id/foto_pegawai/', 'http://cybercampus.unair.ac.id/foto_pegawai/', NULL, NULL, NULL, 0, 'TULUNGAGUNG', NULL, 'East Coast Park R. 3/6, Surabaya', '', '0', '081234512400', NULL, NULL, 'Fakultas Ilmu Budaya', NULL, 'Universitas Airlangga', 'ILMU SEJARAH', NULL, NULL, 'S.Hum., M.', 'III/b', '2019-08-01', 'Dosen', 'Fungsional', 'Asisten Ahli', NULL),
('198807022016033101', 'tofan-agung-e-p@vokasi.unair.ac.id', 'TOFAN AGUNG EKA PRASETYA', 'http://cybercampus.unair.ac.id/foto_pegawai/198807022016033101-1610197440.jpg', 'http://cybercampus.unair.ac.id/foto_pegawai/198807022016033101-1610197440.jpg', '3572030207880002', '0702078802', 1, 0, 'BLITAR', '1988-07-02', 'JL.Gayung Kebonsari Timur 7', '', '60231', '085649281100', 'TETAP NON PNS', NULL, 'Fakultas Vokasi', '361812043653000', 'Universitas Airlangga', 'KESELAMATAN DAN KESEHATAN KERJ', NULL, NULL, 'S.Kep., M.', 'III/b', '2016-03-01', 'Dosen', 'Fungsional', 'Asisten Ahli', 'TETAP NON PNS'),
('198807132012122002', 'ardhenaekasari@staf.unair.ac.id', 'ARDHENA EKASARI', 'https://cybercampus.unair.ac.id/foto_pegawai/198807132012122002-1550116628.jpg', 'https://cybercampus.unair.ac.id/foto_pegawai/198807132012122002-1550116628.jpg', '198807132012122002', NULL, 2, 0, 'GRESIK', '1988-07-13', 'Putat jaya c barat 8/19 surabaya', '', '0', '081217417063', 'PNS', 40, 'Rumah Sakit Universitas Airlangga', '975598103614000', 'Universitas Airlangga', NULL, NULL, NULL, 'S.Kep., Ns', 'III/b', '2017-01-01', 'Tendik', 'Pilih Stat', 'Perawat', 'PNS'),
('198807312018035101', 'imaduddinfahrian@staf.unair.ac.id', 'FAHRIAN IMADUDDIN', 'https://cybercampus.unair.ac.id/foto_pegawai/198807312018035101-1569223134.jpg', 'https://cybercampus.unair.ac.id/foto_pegawai/198807312018035101-1569223134.jpg', '198807312018035101', NULL, 1, 0, 'SURABAYA', '1988-07-31', NULL, '', '0', NULL, 'PEGAWAI TIDAK TETAP', 688, 'Direktorat Sarana Prasarana dan Lingkungan', '448254698619000', 'Universitas Airlangga', NULL, NULL, NULL, NULL, 'Setara III Masa Kerja > 5', NULL, 'Tendik', NULL, NULL, 'PEGAWAI TIDAK TETAP'),
('198808012015043101', 'rendy.wadipalapa@fisip.unair.ac.id', 'RENDY PAHRUN WADIPALAPA', 'http://cybercampus.unair.ac.id/foto_pegawai/', 'http://cybercampus.unair.ac.id/foto_pegawai/', NULL, NULL, NULL, 0, 'SURABAYA', NULL, 'Perum Permata Gading II Blok S-08 Sidoarjo', '', '0', '085649437243', NULL, NULL, 'Fakultas Ilmu Sosial dan Ilmu Politik', NULL, 'Universitas Airlangga', 'ILMU KOMUNIKASI', NULL, NULL, 'S.Ikom., M', 'III/b', '2016-05-01', 'Dosen', 'Fungsional', 'Asisten Ahli', NULL),
('198808112018013201', 'leni@staf.unair.ac.id', 'Leni', 'https://cybercampus.unair.ac.id/foto_pegawai/198808112013025201-1478059440.JPG', 'https://cybercampus.unair.ac.id/foto_pegawai/198808112013025201-1478059440.JPG', '198808112018013201', NULL, 2, 0, 'TASIKMALAYA', '1988-08-11', NULL, '', '0', NULL, 'TETAP NON PNS', 350, NULL, '765850110603000', 'Universitas Airlangga', NULL, NULL, NULL, NULL, 'II/b', '2018-01-01', 'Tendik', 'Pilih Stat', 'Pengadministrasi Umum', 'TETAP NON PNS'),
('198808132014093101', 'bodhiagustono@fkh.unair.ac.id', 'BODHI AGUSTONO', 'http://cybercampus.unair.ac.id/foto_pegawai/198808132014093101-1644495700.jpg', 'http://cybercampus.unair.ac.id/foto_pegawai/198808132014093101-1644495700.jpg', '3509211308880002', '0013088804', 1, 0, 'BANYUWANGI', '1988-08-13', 'perum djati khayangan blok e-4 1/3 giri, banyuwangi', '', '68423', '082232118084', 'TETAP NON PNS', NULL, 'Fakultas Sekolah Ilmu Kesehatan dan Ilmu Alam', '712619725626000', 'Universitas Airlangga', 'KEDOKTERAN HEWAN (SIKIA.BANYUW', NULL, NULL, 'drh., M.Si', 'III/b', NULL, 'Dosen', NULL, NULL, 'TETAP NON PNS'),
('198808222019032013', 'eny.qurniyawati@fkm.unair.ac.id', 'ENY QURNIYAWATI', 'http://cybercampus.unair.ac.id/foto_pegawai/198808222019032013-1619658536.jpeg', 'http://cybercampus.unair.ac.id/foto_pegawai/198808222019032013-1619658536.jpeg', '3314066208880004', '0722088801', 2, 0, 'TANGERANG', '1988-08-22', NULL, '', '0', '085785028088', 'PNS', NULL, 'Fakultas Kesehatan Masyarakat', '804191898528000', 'Universitas Airlangga', 'KESEHATAN MASYARAKAT', NULL, NULL, 'S.ST., M.Kes.', 'III/b', NULL, 'Dosen', NULL, NULL, 'PNS'),
('198808302018083201', 'stefania-widya-s@fkm.unair.ac.id', 'STEFANIA WIDYA SETYANINGTYAS', 'http://cybercampus.unair.ac.id/foto_pegawai/198808302018083201-1540786691.jpeg', 'http://cybercampus.unair.ac.id/foto_pegawai/198808302018083201-1540786691.jpeg', '3573047008880001', '0030088808', 2, 0, 'MALANG', '1988-08-30', 'Prenjak Timur 39 Malang', '', '65147', NULL, 'TETAP NON PNS', 306, 'Fakultas Vokasi', ' 749415519623000', 'Universitas Airlangga', 'KESELAMATAN DAN KESEHATAN KERJ', NULL, NULL, 'S.Gz., M.PH.', 'III/b', '2018-08-01', 'Dosen', 'Fungsional', 'Asisten Ahli', 'TETAP NON PNS'),
('198810032015041003', 'bagusoa@fh.unair.ac.id', 'BAGUS OKTAFIAN ABRIANTO', 'http://cybercampus.unair.ac.id/foto_pegawai/', 'http://cybercampus.unair.ac.id/foto_pegawai/', '3516120310880001', '0003108802', 1, 0, 'KEDIRI', '1988-10-03', 'Perum Griyo Pabean 2 Blok F-2 RT. 54 RW 14 Ds. Pabean, Kec. Sedati, Kab. Sidoarjo', '', '61253', '085736933338', 'PNS', NULL, 'Fakultas Hukum', '975610494606000', 'Universitas Airlangga', 'ILMU HUKUM', NULL, NULL, 'S.H., M.H.', 'III/b', '2018-04-01', 'Dosen', 'Fungsional', 'Asisten Ahli', 'PNS'),
('198812072015041003', 'mahmudraditya@fkm.unair.ac.id', 'MAHMUD ADITYA RIFQI', 'http://cybercampus.unair.ac.id/foto_pegawai/198812072015041003-1580699316.jpg', 'http://cybercampus.unair.ac.id/foto_pegawai/198812072015041003-1580699316.jpg', '1302100712880001', '0007128801', 1, 0, 'SOLOK', '1988-12-07', 'Griya Amerta Regency DD3, Kelurahan Medokan Ayu, Kecamatan Rungkut', '', '60295', '85244046825', 'PNS', 250, 'Fakultas Kesehatan Masyarakat', '730807393203000', 'Universitas Airlangga', 'ADMINISTRASI DAN KEBIJAKAN KES', NULL, NULL, 'S.Gz., M.Si.', 'III/b', NULL, 'Dosen', NULL, NULL, 'PNS'),
('198812072020063101', 'achmad.wildan@staf.unair.ac.id', 'Achmad Wildan', 'https://cybercampus.unair.ac.id/foto_pegawai/198812072020063101-1601184081.jpg', 'https://cybercampus.unair.ac.id/foto_pegawai/198812072020063101-1601184081.jpg', '198812072020063101', NULL, 1, 0, 'SURABAYA', '1988-12-07', NULL, '', '0', NULL, 'TETAP NON PNS', 30, 'Direktorat Sistem Informasi', '700173776609000', 'Universitas Airlangga', NULL, NULL, NULL, 'A.Md.', 'II/c', NULL, 'Tendik', NULL, NULL, 'TETAP NON PNS'),
('198812122015042001', 'fatmayasminmahdani@fkg.unair.ac.id', 'FATMA YASMIN MAHDANI', 'http://cybercampus.unair.ac.id/foto_pegawai/', 'http://cybercampus.unair.ac.id/foto_pegawai/', '3578245212880001', '0012128802', 2, 0, 'SURABAYA', '1988-12-12', 'GUNUNG ANYAR EMAS BLOK F-22 RT/RW. 002/008 KEC. GUNUNG ANYAR SURABAYA', '', '60294', '085230336092', 'CPNS', 242, 'Fakultas Kedokteran Gigi', '086345790609000', 'Universitas Airlangga', 'PENDIDIKAN PROFESI DOKTER GIGI', NULL, NULL, 'drg.,M.Kes.', 'III/b', '2019-01-08', 'Dosen', 'Fungsional', 'Asisten Ahli', 'CPNS'),
('198812152018013101', 'akhmadafandi@staf.unair.ac.id', 'Akhmad Afandi', 'https://cybercampus.unair.ac.id/foto_pegawai/198812152018013101.JPG', 'https://cybercampus.unair.ac.id/foto_pegawai/198812152018013101.JPG', '198812152018013101', NULL, 1, 0, 'MALANG', '1988-12-15', 'JL.KH.Hasyim 5 No.37 RT.07 RW.03 Kedungkandang, Malang', '', '0', '081333162151', 'TETAP NON PNS', 350, NULL, '553590563623000', 'Universitas Airlangga', NULL, NULL, NULL, NULL, 'II/b', '2018-01-01', 'Tendik', 'Fungsional', 'pelaksana', 'TETAP NON PNS'),
('198812172018083201', 'ria-triwastuti@vokasi.unair.ac.id', 'RIA TRIWASTUTI', 'http://cybercampus.unair.ac.id/foto_pegawai/', 'http://cybercampus.unair.ac.id/foto_pegawai/', '3504095712880001', '0017128807', 2, 0, 'TULUNGAGUNG', '1988-12-17', 'RT. 03/RW.1, Ds. Macanbang, Kec. Gondang, Kab. Tulungagung', '', '66263', '(031) 5033869', 'TETAP NON PNS', 306, 'Fakultas Vokasi', '982471633629000', 'Universitas Airlangga', 'ADMINISTRASI PERKANTORAN', NULL, NULL, 'S.AB., M.Int.Bus', 'III/b', '2018-08-01', 'Dosen', 'Fungsional', 'Asisten Ahli', 'TETAP NON PNS'),
('198902182018013101', 'prasasti.irianto@staf.unair.ac.id', 'Prasasti Irianto', 'https://cybercampus.unair.ac.id/foto_pegawai/139121644-1511930749.JPG', 'https://cybercampus.unair.ac.id/foto_pegawai/139121644-1511930749.JPG', '198902182018013101', NULL, 1, 0, 'MALUKU TENGAH', '1989-02-18', NULL, '', '0', NULL, 'TETAP NON PNS', 1, 'Perpustakaan', '830640355615000', 'Universitas Airlangga', NULL, NULL, NULL, 'A.Md.', 'II/d', NULL, 'Tendik', NULL, NULL, 'TETAP NON PNS'),
('198905232015043101', 'rikytriyunardi@vokasi.unair.ac.id', 'RIKY TRI YUNARDI', 'http://cybercampus.unair.ac.id/foto_pegawai/198905232015043101-1645064628.jpg', 'http://cybercampus.unair.ac.id/foto_pegawai/198905232015043101-1645064628.jpg', '3573042305890000', '0023058904', 1, 0, 'JAMBI', '1989-05-23', 'Jalan Pahlawan 188 Tulungagung', '', '66226', '(031) 5033869', 'TETAP NON PNS', 306, 'Fakultas Vokasi', '871186805623000', 'Universitas Airlangga', 'OTOMASI SISTEM INSTRUMENTASI', NULL, 'Ir.', 'S.T., M.T.', 'III/c', '2015-04-01', 'Dosen', 'Fungsional', 'Lektor', 'TETAP NON PNS'),
('198906112018013101', 'dannysanjaya@staf.unair.ac.id', 'Danny Sanjaya Arfensia', 'https://cybercampus.unair.ac.id/foto_pegawai/198906112018013101-1563941747.jpg', 'https://cybercampus.unair.ac.id/foto_pegawai/198906112018013101-1563941747.jpg', '198906112018013101', NULL, 1, 0, 'SURABAYA', '1989-06-11', NULL, '', '0', NULL, 'TETAP NON PNS', 195, NULL, '660076217609000', 'Universitas Airlangga', 'PSIKOLOGI TERAPAN', NULL, NULL, 'S.Psi.', 'III/b', '2018-01-01', 'Tendik', 'Fungsional', 'Pelaksana Administrasi Akademi', 'TETAP NON PNS'),
('198907122018013101', 'budilutfitra@staf.unair.ac.id', 'Budi Lutfitra Wisada', 'https://cybercampus.unair.ac.id/foto_pegawai/139141888-1477285582.JPG', 'https://cybercampus.unair.ac.id/foto_pegawai/139141888-1477285582.JPG', '198907122018013101', NULL, 1, 0, 'SURABAYA', '1989-07-12', NULL, '', '0', NULL, 'TETAP NON PNS', 123, NULL, '703629899657000', 'Universitas Airlangga', 'PENDIDIKAN PROFESI AKUNTAN', NULL, NULL, 'S.A.', 'III/b', NULL, 'Tendik', NULL, NULL, 'TETAP NON PNS'),
('198908092012122001', 'enipujilestari@staf.unair.ac.id', 'ENI PUJI LESTARI', 'https://cybercampus.unair.ac.id/foto_pegawai/198908092012122001.JPG', 'https://cybercampus.unair.ac.id/foto_pegawai/198908092012122001.JPG', '198908092012122001', NULL, 2, 0, 'SIDOARJO', '1989-08-09', NULL, '', '0', NULL, 'PNS', 40, 'Rumah Sakit Universitas Airlangga', '058724964603000', 'Universitas Airlangga', NULL, NULL, NULL, 'S.Kep', 'III/b', NULL, 'Tendik', NULL, NULL, 'PNS'),
('198909172014041001', 'abhimata.p@ff.unair.ac.id', 'ABHIMATA PARAMANANDANA', '/', '/', '3578091709890001', '0017098902', 1, 0, 'SURABAYA', '1989-09-17', 'SEMOLOWARU ELOK BLOK L/9', '', '0', '081332277353', 'PNS', 245, 'Fakultas Farmasi', '559229406606000', 'Universitas Airlangga', 'FARMASI', NULL, NULL, 'MSc., S.Farm., Apt.', 'III/b', '2015-05-10', 'Dosen', 'Fungsional', 'Asisten Ahli', 'PNS'),
('198910022018013101', 'dio.adam.v@staf.unair.ac.id', 'Dio Adam Vibrianto', 'https://cybercampus.unair.ac.id/foto_pegawai/139141873-1477538893.JPG', 'https://cybercampus.unair.ac.id/foto_pegawai/139141873-1477538893.JPG', '198910022018013101', NULL, 1, 0, 'SURABAYA', '1989-10-02', NULL, '', '0', NULL, 'TETAP NON PNS', 315, NULL, '754870566619000', 'Universitas Airlangga', 'PROGRAM MKWU', NULL, NULL, 'A.Md.', 'II/d', NULL, 'Tendik', NULL, NULL, 'TETAP NON PNS'),
('198910112018013101', 'vegaandi@staf.unair.ac.id', 'Vega Andi Budiman', 'https://cybercampus.unair.ac.id/foto_pegawai/198910112018013101-1602234410.jpeg', 'https://cybercampus.unair.ac.id/foto_pegawai/198910112018013101-1602234410.jpeg', '198910112018013101', NULL, 1, 0, 'GRESIK', '1989-10-11', NULL, '', '0', NULL, 'TETAP NON PNS', 248, 'Fakultas Sains dan Teknologi', '760428821612000', 'Universitas Airlangga', NULL, NULL, NULL, 'S.Pd.', 'III/b', '2018-01-01', 'Tendik', 'Fungsional', 'Kepegawaian', 'TETAP NON PNS'),
('198911032021093101', 'mohammad.ghani@ftmm.unair.ac.id', 'Mohammad Ghani', 'http://cybercampus.unair.ac.id/foto_pegawai/198911032021093101-1672400743.jpg', 'http://cybercampus.unair.ac.id/foto_pegawai/198911032021093101-1672400743.jpg', '3529010311890002', '0003118910', 1, 0, 'SUMENEP', '1989-11-03', 'JL. KH. MANSUR NO. 40 PABIAN, SUMENEP, RT 003, RW 006', '', '69411', '081335031638', 'CPTNPNS', 690, 'Fakultas Teknologi Maju dan Multidisiplin', '826901076608000', 'Universitas Airlangga', 'TEKNOLOGI SAINS DATA', NULL, NULL, 'S.Si., M.Si., Ph.D.', 'III/b', '2021-09-01', 'Dosen', 'Fungsional', 'Asisten Ahli', 'CPTNPNS'),
('198911162015042003', 'amelia.zein@psikologi.unair.ac.id', 'RIZQY AMELIA ZEIN', 'http://cybercampus.unair.ac.id/foto_pegawai/198911162015042003-1579823859.jpg', 'http://cybercampus.unair.ac.id/foto_pegawai/198911162015042003-1579823859.jpg', '3515189611890004', '0016118903', 2, 0, 'MATARAM', '1989-11-16', 'GREEN SEMANGGI MANGROVE A-5 WONOREJO RUNGKUT SURABAYA', '', '60296', '08113520777', 'PNS', 251, 'Fakultas Psikologi', '367979531643000', 'Universitas Airlangga', 'PSIKOLOGI', NULL, NULL, 'S.Psi., MSc.', 'III/b', NULL, 'Dosen', NULL, NULL, 'PNS'),
('198911282019031019', 'nt.bahtera@vokasi.unair.ac.id', 'NOVYANDRI TAUFIK BAHTERA', 'http://cybercampus.unair.ac.id/foto_pegawai/198911282019031019-1566274832.jpg', 'http://cybercampus.unair.ac.id/foto_pegawai/198911282019031019-1566274832.jpg', '1571012811890002', '0028118903', 1, 0, 'JAMBI', '1989-11-28', 'Perumahan Pondok Permata Suci Jl. Topaz 1 No. 16 Kelurahan Suci Kecamatan Manyar, Gresik, Jawa Timur ', '', '36122', '031-5033869', 'PNS', 306, 'Fakultas Vokasi', '727082166331000', 'Universitas Airlangga', 'MANAJEMEN PERBANKAN', NULL, NULL, ', SE., M.S', 'III/b', '2019-03-01', 'Dosen', 'Fungsional', 'Asisten Ahli', 'PNS'),
('198912262016113201', 'prinintha.nanda@vokasi.unair.ac.id', 'PRININTHA NANDA SOEMARSONO', 'http://cybercampus.unair.ac.id/foto_pegawai/198912262016113201-1611840180.jpg', 'http://cybercampus.unair.ac.id/foto_pegawai/198912262016113201-1611840180.jpg', '3578126612890000', '0026128906', 2, 0, 'SURABAYA', '1989-12-26', 'Teluk Betung 1 no. 2, Surabaya', '', '60165', '0317315889', 'TETAP NON PNS', 306, 'Fakultas Vokasi', '806099917613000', 'Universitas Airlangga', 'AKUNTANSI', NULL, NULL, 'S.A., M.A.', 'III/b', '2018-07-30', 'Dosen', 'Fungsional', 'Asisten Ahli', 'TETAP NON PNS'),
('199001012015043101', 'ragilap@fkh.unair.ac.id', 'RAGIL ANGGA PRASTIYA', 'http://cybercampus.unair.ac.id/foto_pegawai/', 'http://cybercampus.unair.ac.id/foto_pegawai/', '3506040101900004', '0001019002', 1, 0, 'KEDIRI', '1990-01-01', 'PERUMAHAN GRIYA WIYATA B35 LINGKUNGAN STENDO KELURAHAN TUKANGKAYU KECAMATAN BANYUWANGI KOTA KABUPATEN BANYUWANGI', '', '0', '082142851723', 'TETAP NON PNS', NULL, 'Fakultas Sekolah Ilmu Kesehatan dan Ilmu Alam', '721422590655000', 'Universitas Airlangga', 'KEDOKTERAN HEWAN (SIKIA.BANYUW', NULL, 'drh', 'M.Si', 'III/c', NULL, 'Dosen', NULL, NULL, 'TETAP NON PNS'),
('199001132015043101', 'yanuar.nugroho@vokasi.unair.ac.id', 'YANUAR NUGROHO', 'http://cybercampus.unair.ac.id/foto_pegawai/', 'http://cybercampus.unair.ac.id/foto_pegawai/', '3328011301900001', '0013019001', 1, 0, 'TEGAL', '1990-01-13', 'Pucang Adi 99 Surabaya', '', '60282', '081911563052', 'TETAP NON PNS', 306, 'Fakultas Vokasi', '727702516501000', 'Universitas Airlangga', 'AKUNTANSI', NULL, NULL, 'S.E., M.Sc., Ak., CA.', 'III/b', '2015-01-04', 'Dosen', 'Fungsional', 'Asisten Ahli', 'TETAP NON PNS'),
('199002042018013101', 'indar.budi@staf.unair.ac.id', 'Indar Budi Santoso', 'https://cybercampus.unair.ac.id/foto_pegawai/139121517-1478564861.JPG', 'https://cybercampus.unair.ac.id/foto_pegawai/139121517-1478564861.JPG', '199002042018013101', NULL, 1, 0, 'MOJOKERTO', '1990-02-04', NULL, '', '0', NULL, 'TETAP NON PNS', 350, NULL, '803928837609000', 'Universitas Airlangga', NULL, NULL, NULL, NULL, 'II/b', NULL, 'Tendik', NULL, NULL, 'TETAP NON PNS'),
('199002162020073201', 'wahyu.firmandani@vokasi.unair.ac.id', 'Wahyu Firmandani', 'http://cybercampus.unair.ac.id/foto_pegawai/', 'http://cybercampus.unair.ac.id/foto_pegawai/', '3525145602900001', NULL, 2, 0, 'GRESIK', '1990-02-16', NULL, '', '0', NULL, 'CPTNPNS', NULL, 'Fakultas Vokasi', '866743242612000', 'Universitas Airlangga', 'AKUNTANSI', NULL, NULL, 'S.A., M.Ak.', 'III/b', NULL, 'Dosen', NULL, NULL, 'CPTNPNS'),
('199003122016033101', 'aa.firdaus@vokasi.unair.ac.id', 'AJI AKBAR FIRDAUS', 'http://cybercampus.unair.ac.id/foto_pegawai/', 'http://cybercampus.unair.ac.id/foto_pegawai/', '3529011203900003', '0012039002', 1, 0, 'SUMENEP', '1990-03-12', 'JL. MASALEMBU NO.26 PAMOLOKAN SUMENEP-JAWA TIMUR', '', '69412', '+628593932929', 'TETAP NON PNS', 306, 'Fakultas Vokasi', '755218120608000', 'Universitas Airlangga', 'OTOMASI SISTEM INSTRUMENTASI', NULL, NULL, 'S.T., M.T.', 'III/c', '2016-03-01', 'Dosen', 'Fungsional', 'Lektor', 'TETAP NON PNS'),
('199003312018013101', 'denihindarto@staf.unair.ac.id', 'Deni Hindarto', 'https://cybercampus.unair.ac.id/foto_pegawai/139121568-1478227255.JPG', 'https://cybercampus.unair.ac.id/foto_pegawai/139121568-1478227255.JPG', '199003312018013101', NULL, 1, 0, 'GRESIK', '1990-03-31', NULL, '', '0', NULL, 'TETAP NON PNS', 246, 'Fakultas Kedokteran Hewan', '763726163642000', 'Universitas Airlangga', NULL, NULL, NULL, 'A.Md.', 'II/d', '2019-01-02', 'Tendik', 'Fungsional', 'teknisi laboran', 'TETAP NON PNS'),
('199004082018013101', 'ah.muzaki@staf.unair.ac.id', 'Ahmad Muzakki', 'https://cybercampus.unair.ac.id/foto_pegawai/199004082018013101-1575530128.JPG', 'https://cybercampus.unair.ac.id/foto_pegawai/199004082018013101-1575530128.JPG', '199004082018013101', NULL, 1, 0, 'LAMONGAN', '1990-04-08', NULL, '', '0', NULL, 'TETAP NON PNS', 31, 'Direktorat Sumberdaya Manusia', '711998245642000', 'Universitas Airlangga', NULL, NULL, NULL, 'S.Kom.', 'III/b', NULL, 'Tendik', NULL, NULL, 'TETAP NON PNS'),
('199004172018013101', 'afriandi@staf.unair.ac.id', 'Afri Andiarto', 'https://cybercampus.unair.ac.id/foto_pegawai/139121418-1478506386.JPG', 'https://cybercampus.unair.ac.id/foto_pegawai/139121418-1478506386.JPG', '199004172018013101', NULL, 1, 0, 'BANYUWANGI', '1990-04-17', NULL, '', '0', NULL, 'TETAP NON PNS', 33, 'Direktorat Kemahasiswaan', '449797877627000', 'Universitas Airlangga', NULL, NULL, NULL, 'S.M.', 'III/b', NULL, 'Tendik', NULL, NULL, 'TETAP NON PNS'),
('199005152014042001', 'saka.winias@fkg.unair.ac.id', 'SAKA WINIAS', 'http://cybercampus.unair.ac.id/foto_pegawai/', 'http://cybercampus.unair.ac.id/foto_pegawai/', '3507255505900002', '0015059001', 2, 0, 'MALANG', '1990-05-19', 'PERUM LAWANG INDAH K - 8 RT/RW 007/002 KEL. BEDALI KEC. LAWANG', '', '0', '085259045747', 'PNS', 242, 'Fakultas Kedokteran Gigi', '709318844657000', 'Universitas Airlangga', 'PENDIDIKAN DOKTER GIGI', NULL, NULL, 'drg.,M.Kes.,Sp.PM', 'III/b', '2014-04-01', 'Dosen', 'Fungsional', 'Asisten Ahli', 'PNS'),
('199005172015043201', 'herinda.pertiwi@vokasi.unair.ac.id', 'HERINDA PERTIWI', 'http://cybercampus.unair.ac.id/foto_pegawai/', 'http://cybercampus.unair.ac.id/foto_pegawai/', '3525155705900001', '0017059006', 2, 0, 'SIDOARJO', '1990-05-17', NULL, '', '0', NULL, 'TETAP NON PNS', 306, 'Fakultas Vokasi', '709769822617000', 'Universitas Airlangga', 'PARAMEDIK VETERINER', NULL, NULL, 'drh.', 'III/b', NULL, 'Dosen', NULL, NULL, 'TETAP NON PNS'),
('199005302020121010', 'meircurius@fkg.unair.ac.id', 'Meircurius Dwi Condro Surboyo', 'http://cybercampus.unair.ac.id/foto_pegawai/199005302018027101-1553057105.jpg', 'http://cybercampus.unair.ac.id/foto_pegawai/199005302018027101-1553057105.jpg', '350930300590001', '0030059010', 1, 0, 'JEMBER', '1990-05-30', 'Prima Kebraon 2 HH-25', '', '60222', '031 5030255', 'PNS', 242, 'Fakultas Kedokteran Gigi', '890259401626000', 'Universitas Airlangga', 'KEDOKTERAN GIGI', NULL, NULL, 'drg., M.Kes.', 'III/b', NULL, 'Dosen', NULL, NULL, 'PNS'),
('199006022016113201', 'putri.a.a@fkm.unair.ac.id', 'PUTRI AYUNI ALAYYANNUR', 'http://cybercampus.unair.ac.id/foto_pegawai/199006022016113201-1542248595.jpg', 'http://cybercampus.unair.ac.id/foto_pegawai/199006022016113201-1542248595.jpg', '3578024206900002', '0002069005', 2, 0, 'SURABAYA', '1990-06-02', 'Jl. Jemurwonosari Gg. Lebar no. 64', '', '60237', '0315920948', 'TETAP NON PNS', 250, 'Fakultas Kesehatan Masyarakat', '806365292609000', 'Universitas Airlangga', 'KESEHATAN DAN KESELAMATAN KERJ', NULL, NULL, 'S.KM., M.KKK.', 'III/b', '2018-08-01', 'Dosen', 'Fungsional', 'Asisten Ahli', 'TETAP NON PNS'),
('199006092014093101', 'thohawi@fkh.unair.ac.id', 'MUHAMMAD THOHAWI ELZIYAD PURNAMA', 'http://cybercampus.unair.ac.id/foto_pegawai/199006092014093101-1579831214.jpg', 'http://cybercampus.unair.ac.id/foto_pegawai/199006092014093101-1579831214.jpg', '3525120906900004', '0009069001', 1, 0, 'GRESIK', '1990-06-09', 'DESA MASANGAN TIMUR NO.I RT.I RW.I KECAMATAN BUNGAH KABUPATEN GRESIK PROPINSI JAWA TIMUR', '', '61152', '+628563673726', 'TETAP NON PNS', 321, 'Fakultas Sekolah Ilmu Kesehatan dan Ilmu Alam', '666814009612000', 'Universitas Airlangga', 'KEDOKTERAN HEWAN (SIKIA.BANYUW', NULL, NULL, 'Drh., M.Si.', 'III/c', '2014-09-01', 'Dosen', 'Fungsional', 'Lektor', 'TETAP NON PNS'),
('199006192018013201', 'yuni.afifah@staf.unair.ac.id', 'Yuni Ma\'rifatul Afifah', 'https://cybercampus.unair.ac.id/foto_pegawai/199006192018013201-1653960764.jpg', 'https://cybercampus.unair.ac.id/foto_pegawai/199006192018013201-1653960764.jpg', '199006192018013201', NULL, 2, 0, 'SURABAYA', '1990-06-19', NULL, '', '0', NULL, 'TETAP NON PNS', 111, NULL, '251950044619000', 'Universitas Airlangga', 'ILMU HUKUM', NULL, NULL, 'A.Md.', 'II/d', NULL, 'Tendik', NULL, NULL, 'TETAP NON PNS'),
('199006202014041001', 'bhawono@fkh.unair.ac.id', 'TRI BHAWONO DADI', 'http://cybercampus.unair.ac.id/foto_pegawai/', 'http://cybercampus.unair.ac.id/foto_pegawai/', '351508200690003', '0020069001', 1, 0, 'SURABAYA', '1990-06-20', 'JL. MAGERSARI PERMAI N-3 SIDOARJO', '', '61211', '08113519327', 'PNS', NULL, 'Fakultas Kedokteran Hewan', '709769822617000', 'Universitas Airlangga', 'KEDOKTERAN HEWAN', NULL, NULL, 'drh., M.Vet.', 'III/b', '2014-04-04', 'Dosen', 'Fungsional', 'Asisten Ahli', 'PNS'),
('199006292018013201', 'dwi.marina@staf.unair.ac.id', 'Dwi Marina', 'https://cybercampus.unair.ac.id/foto_pegawai/199006292018013201.JPG', 'https://cybercampus.unair.ac.id/foto_pegawai/199006292018013201.JPG', '199006292018013201', NULL, 2, 0, 'NGANJUK', '1990-06-29', NULL, '', '0', NULL, 'TETAP NON PNS', 1, 'Perpustakaan', '446276669619000', 'Universitas Airlangga', NULL, NULL, NULL, 'A.Md.', 'II/c', '2018-06-27', 'Tendik', 'Pilih Stat', 'Pustakawan', 'TETAP NON PNS'),
('199007092015041002', 'm-nurghoyatulamin@fpk.unair.ac.id', 'Muhamad Nur Ghoyatul Amin', 'http://cybercampus.unair.ac.id/foto_pegawai/', 'http://cybercampus.unair.ac.id/foto_pegawai/', '3517100907900003', '0009079002', 1, 0, 'JOMBANG', '1990-07-09', 'Ds. Wangkal Kepuh RT/RW 001/001 Gudo Jombang', '', '0', '+62315911451', 'PNS', 254, 'Fakultas Perikanan dan Kelautan', '725132716602000', 'Universitas Airlangga', 'TEKNOLOGI HASIL PERIKANAN', NULL, NULL, 'S.TP.,M.P.,M.Sc.', 'III/b', '2018-04-01', 'Dosen', 'Fungsional', 'Asisten Ahli', 'PNS'),
('199008082021093101', 'agus.mukhlisin@ftmm.unair.ac.id', 'Agus Mukhlisin', 'http://cybercampus.unair.ac.id/foto_pegawai/199008082021093101-1635392585.jpg', 'http://cybercampus.unair.ac.id/foto_pegawai/199008082021093101-1635392585.jpg', '3518130808890004', NULL, 1, 0, 'NGANJUK', '1990-08-08', 'Jalan Kyairas RT 06 RW 02 Megaluh Jombang', '', '61457', '-', 'CPTNPNS', 690, 'Fakultas Teknologi Maju dan Multidisiplin', '605053253602000', 'Universitas Airlangga', 'TEKNIK ELEKTRO', NULL, NULL, 'S.T., M.T.', 'III/b', '2021-09-01', 'Dosen', 'Fungsional', 'Asisten Ahli', 'CPTNPNS'),
('199008232015043201', 'indahpuspita@staf.unair.ac.id', 'Dwi Indah Puspita', 'https://cybercampus.unair.ac.id/foto_pegawai/199008232015043201-1609900027.jpeg', 'https://cybercampus.unair.ac.id/foto_pegawai/199008232015043201-1609900027.jpeg', '199008232015043201', NULL, 2, 0, 'UJUNG PANDANG', '1990-08-23', NULL, '', '0', NULL, 'TETAP NON PNS', 306, 'Fakultas Vokasi', '464084078619000', 'Universitas Airlangga', NULL, NULL, NULL, 'A.Md.', 'II/d', '2015-04-01', 'Tendik', 'Fungsional', 'Tenaga Laboratorium Prodi D3 P', 'TETAP NON PNS'),
('199009112018013101', 'septiawan.prambudi@staf.unair.ac.id', NULL, 'https://cybercampus.unair.ac.id/foto_pegawai/199009112018013101-1570068792.jpg', 'https://cybercampus.unair.ac.id/foto_pegawai/199009112018013101-1570068792.jpg', '199009112018013101', NULL, NULL, 0, 'SURABAYA', NULL, NULL, '', '0', NULL, NULL, NULL, NULL, NULL, 'Universitas Airlangga', NULL, NULL, NULL, 'A.Md.', 'II/c', NULL, 'Tendik', NULL, NULL, NULL),
('199009182018013101', 'bayunugroho@staf.unair.ac.id', 'Bayu Lukito Nugroho', 'https://cybercampus.unair.ac.id/foto_pegawai/199009182018013101-1636037101.jpg', 'https://cybercampus.unair.ac.id/foto_pegawai/199009182018013101-1636037101.jpg', '199009182018013101', NULL, 1, 0, 'MAGETAN', '1990-09-18', 'Desa Tamanan, Kecamatan Sukomoro, Kabupaten Magetan', '', '0', '081217013886', 'TETAP NON PNS', 370, 'Lembaga Pengabdian Kepada Masyarakat', '762715944646000', 'Universitas Airlangga', NULL, NULL, NULL, 'S.E.', 'III/b', '2022-04-01', 'Tendik', 'Fungsional', 'Pengadministrasi Data Peneliti', 'TETAP NON PNS'),
('199009292022013101', 'kukuhleksonosa@fh.unair.ac.id', 'Kukuh Leksono Suminaring Aditya', 'http://cybercampus.unair.ac.id/foto_pegawai/199009292017017101-1623742271.jpg', 'http://cybercampus.unair.ac.id/foto_pegawai/199009292017017101-1623742271.jpg', '3578032909900002', NULL, 1, 0, 'JOMBANG', '1990-09-29', 'MEDAYU SELATAN 3/C-28 SURABAYA', '', '0', '081358446445', 'CPTNPNS', 243, 'Fakultas Hukum', '660929746615000', 'Universitas Airlangga', 'ILMU HUKUM', NULL, NULL, 'S.H., LL.M.', 'III/b', NULL, 'Dosen', NULL, NULL, 'CPTNPNS'),
('199010102018013201', 'arifanorma@staf.unair.ac.id', 'Arifa Norma Sari', 'https://cybercampus.unair.ac.id/foto_pegawai/199010102018013201-1570066664.jpeg', 'https://cybercampus.unair.ac.id/foto_pegawai/199010102018013201-1570066664.jpeg', '199010102018013201', NULL, 2, 0, 'SURABAYA', '1990-10-10', NULL, '', '0', NULL, 'TETAP NON PNS', 135, NULL, '679223297645000', 'Universitas Airlangga', 'FARMASI', NULL, NULL, NULL, 'II/a', NULL, 'Tendik', NULL, NULL, 'TETAP NON PNS'),
('199010152015041001', 'dhandy.koesoemo.wardhana@fkh.unair.ac.id', 'DHANDY KOESOEMO WARDHANA', 'http://cybercampus.unair.ac.id/foto_pegawai/', 'http://cybercampus.unair.ac.id/foto_pegawai/', '3515181510900001', '0015109001', 1, 0, 'SURABAYA', '1990-10-15', 'JL. KERINCI 58 SIDOARJO', '', '61256', '031-8537634', 'PNS', 246, 'Fakultas Kedokteran Hewan', '729399758643000', 'Universitas Airlangga', 'ILMU PENYAKIT DAN KESEHATAN MA', NULL, NULL, 'drh., M.Vet.', 'III/b', '2018-04-01', 'Dosen', 'Fungsional', 'Asisten Ahli', 'PNS'),
('199010272018013101', 'rudipremana@staf.unair.ac.id', 'Rudi Premana', 'https://cybercampus.unair.ac.id/foto_pegawai/199010272018013101-1565680193.jpeg', 'https://cybercampus.unair.ac.id/foto_pegawai/199010272018013101-1565680193.jpeg', '199010272018013101', NULL, 1, 0, 'MAGETAN', '1990-10-27', NULL, '', '0', NULL, 'TETAP NON PNS', 128, NULL, '704653930646000', 'Universitas Airlangga', 'ILMU EKONOMI', NULL, NULL, NULL, 'II/a', '2020-03-01', 'Tendik', 'Fungsional', 'Administrasi Akademik', 'TETAP NON PNS'),
('199012102018083101', 'm-thanthowy-s@feb.unair.ac.id', 'MOCHAMMAD THANTHOWY SYAMSUDDIN', 'http://cybercampus.unair.ac.id/foto_pegawai/', 'http://cybercampus.unair.ac.id/foto_pegawai/', '3515151012900003', '0010129005', 1, 0, 'SIDOARJO', '1990-12-10', 'Jalan Marsidin RT/RW: 003/001, Ds. Sawohan, Buduran - Sidoarjo', '', '0', '08563478989', 'TETAP NON PNS', 244, 'Fakultas Ekonomi dan Bisnis', '661976225643000', 'Universitas Airlangga', 'MANAJEMEN', NULL, NULL, 'S.E., MBA', 'III/b', '2018-08-03', 'Dosen', 'Fungsional', 'Asisten Ahli', 'TETAP NON PNS'),
('199012162018013201', 'ovarineimtihana@staf.unair.ac.id', 'Ovarine Imtihana', 'https://cybercampus.unair.ac.id/foto_pegawai/199012162016045201-1477449457.JPG', 'https://cybercampus.unair.ac.id/foto_pegawai/199012162016045201-1477449457.JPG', '199012162018013201', NULL, 2, 0, 'SIDOARJO', '1990-12-16', NULL, '', '0', NULL, 'TETAP NON PNS', 706, NULL, '748142924643000', 'Universitas Airlangga', NULL, NULL, NULL, 'S.IIP.', 'III/b', NULL, 'Tendik', NULL, NULL, 'TETAP NON PNS'),
('199102092014041001', 'oky.widodo@fkh.unair.ac.id', 'OKY SETYO WIDODO', 'http://cybercampus.unair.ac.id/foto_pegawai/199102092014041001-1581496079.jpg', 'http://cybercampus.unair.ac.id/foto_pegawai/199102092014041001-1581496079.jpg', '3507260902910001', '0009029101', 1, 0, 'MALANG', '1991-02-09', 'New Green Hill Residence II Bolok GG-3, RT. 6 RW. 8 Kel. Gunung Anyar Kec. Gunung Anyar, Surabaya', '', '60294', '082244463276', 'PNS', 246, 'Fakultas Kedokteran Hewan', '709568786657000', 'Universitas Airlangga', 'KEDOKTERAN HEWAN', NULL, NULL, 'drh., M.Si', 'III/b', '2016-01-01', 'Dosen', 'Fungsional', 'Lektor', 'PNS'),
('199103122015043201', 'nasazatadina@vokasi.unair.ac.id', 'NASA ZATA DINA', 'http://cybercampus.unair.ac.id/foto_pegawai/199103122015043201-1630771948.JPG', 'http://cybercampus.unair.ac.id/foto_pegawai/199103122015043201-1630771948.JPG', '3515075203910003', '0012039101', 2, 0, 'SIDOARJO', '1991-03-12', 'DUSUN KRAJAN RT12 RW04 DESA SEPANDE KECAMATAN CANDI KABUPATEN SIDOARJO', '', '61271', '0811345061', 'TETAP NON PNS', 306, 'Fakultas Vokasi', '727883928617000', 'Universitas Airlangga', 'SISTEM INFORMASI', NULL, NULL, 'S.Kom., M.Kom., M. Sc.', 'III/b', '2015-04-01', 'Dosen', 'Fungsional', 'Lektor', 'TETAP NON PNS'),
('199103292022045201', 'mariska.pradnya@staf.unair.ac.id', 'Mariska Pradnya Paramitha', 'https://cybercampus.unair.ac.id/foto_pegawai/199103292022045201.JPG', 'https://cybercampus.unair.ac.id/foto_pegawai/199103292022045201.JPG', '199103292022045201', NULL, 2, 0, 'PASURUAN', '1991-03-29', NULL, '', '0', NULL, 'PEGAWAI TIDAK TETAP', 33, 'Direktorat Kemahasiswaan', NULL, 'Universitas Airlangga', NULL, NULL, NULL, 'S.EI', 'Setara III Masa Kerja <= 5', NULL, 'Tendik', NULL, NULL, 'PEGAWAI TIDAK TETAP'),
('199104012018013201', 'evistaindradiva@staf.unair.ac.id', NULL, 'http://cybercampus.unair.ac.id/foto_pegawai/199104012013075201-1477277717.JPG', NULL, '199104012018013201', NULL, 2, 0, 'KEDIRI', NULL, 'JL. NGINDEN VI A 27 SBY', '', '0', '081216348078', 'TETAP NON PNS', NULL, 'Vokasi', '556190569606000', 'Universitas Airlangga', 'PERPUSTAKAAN', NULL, NULL, 'S.A.', 'III/a', NULL, 'Aktif', 'status_jab', 'nama_jabatan', NULL),
('199105012014042001', 'reiska_kumala_b@fkg.unair.ac.id', 'REISKA KUMALA BAKTI', 'http://cybercampus.unair.ac.id/foto_pegawai/', 'http://cybercampus.unair.ac.id/foto_pegawai/', '3578064105910002', '0001059102', 2, 0, 'SURABAYA', '1991-05-01', 'KUPANG KRAJAN 5 NO. 42 RT/RW. 001/004 KEL. KUPANG KRAJAN KEC. SAWAHAN SURABAYA', '', '60253', '08563227155', 'PNS', 250, 'Fakultas Kesehatan Masyarakat', '708851522614000', 'Universitas Airlangga', 'ADMINISTRASI DAN KEBIJAKAN KES', NULL, NULL, 'drg., M.Ked.Trop.', 'III/b', '2015-10-01', 'Dosen', 'Fungsional', 'Asisten Ahli', 'PNS'),
('199105202019032026', 'astari.puteri@fkg.unair.ac.id', 'ASTARI PUTERI', 'http://cybercampus.unair.ac.id/foto_pegawai/199105202019032026-1610354627.jpg', 'http://cybercampus.unair.ac.id/foto_pegawai/199105202019032026-1610354627.jpg', '3578046005910006', NULL, 2, 0, 'SURABAYA', '1991-05-20', 'Jl. Diponegoro No. 95', '', '60264', '081357187804', 'PNS', 242, 'Fakultas Kedokteran Gigi', '086328648609000', 'Universitas Airlangga', 'PENDIDIKAN PROFESI DOKTER GIGI', NULL, NULL, 'drg.', 'III/b', NULL, 'Dosen', NULL, NULL, 'PNS'),
('199106182018013101', 'endriksaputro@staf.unair.ac.id', 'Endrik Nur Saputro', 'http://cybercampus.unair.ac.id/foto_pegawai/199106182018013101-1532331908.jpg', 'http://cybercampus.unair.ac.id/foto_pegawai/199106182018013101-1532331908.jpg', '199106182018013101', NULL, 1, 0, 'KEDIRI', '1991-06-18', NULL, '', '0', NULL, 'TETAP NON PNS', 32, 'Direktorat Keuangan', '834856882655000', 'Universitas Airlangga', NULL, NULL, NULL, 'S.A.', 'III/a', NULL, 'Tendik', NULL, NULL, 'TETAP NON PNS'),
('199107072016113201', 'wilda@fh.unair.ac.id', 'WILDA PRIHATININGTYAS', '/', '/', '3578224707910001', '0007079103', 2, 0, 'SURABAYA', '1991-07-07', 'Jalan Ketintang Barat V No. 96 A', '', '60231', '081283070791', 'TETAP NON PNS', 250, 'Fakultas Kesehatan Masyarakat', '975611658609000', 'Universitas Airlangga', 'ADMINISTRASI DAN KEBIJAKAN KES', NULL, NULL, 'S.H., M.H.', 'III/b', NULL, 'Dosen', NULL, NULL, 'TETAP NON PNS'),
('199107132018013201', 'ernadwiindriyani@staf.unair.ac.id', 'Erna Dwi Indriyani', 'https://cybercampus.unair.ac.id/foto_pegawai/199107132018013201-1614823221.jpg', 'https://cybercampus.unair.ac.id/foto_pegawai/199107132018013201-1614823221.jpg', '199107132018013201', NULL, 2, 0, 'SURABAYA', '1991-07-13', 'Jl. Kaliwaron 5 / 36 Surabaya', '', '0', '083849249496', 'TETAP NON PNS', 246, 'Fakultas Kedokteran Hewan', '718387483606000', 'Universitas Airlangga', NULL, NULL, NULL, 'A.Md.', 'II/c', '2019-01-01', 'Tendik', 'Fungsional', 'Pengadministrasi Perpustakaan ', 'TETAP NON PNS'),
('199107262016113201', 'adya.pramusita@fkg.unair.ac.id', 'ADYA PRAMUSITA', 'http://cybercampus.unair.ac.id/foto_pegawai/199107262016113201-1621562508.jpg', 'http://cybercampus.unair.ac.id/foto_pegawai/199107262016113201-1621562508.jpg', '3578086607910001', '0026079103', 2, 0, 'SURABAYA', '1991-07-26', 'Juwingan 1/31', '', '60282', '+62315030255', 'TETAP NON PNS', 242, 'Fakultas Kedokteran Gigi', '806375101606000', 'Universitas Airlangga', 'ORTODONTI', NULL, NULL, 'drg., M.Si.', 'III/b', '2016-11-01', 'Dosen', 'Fungsional', 'Asisten Ahli', 'TETAP NON PNS');
INSERT INTO `biodata` (`NIK`, `EMAIL`, `NAMA`, `FOTO`, `FOTO1`, `NO_KTP`, `NIDN`, `JENIS_KELAMIN`, `STATUS_MENIKAH`, `TEMPAT_LAHIR`, `TGL_LAHIR`, `ALAMAT`, `KOTA`, `KODE_POS`, `HANDPHONE`, `STATUS`, `ID_UNIT_KERJA`, `UNIT_KERJA`, `NPWP`, `UNIVERSITAS`, `PRODI`, `IPK`, `GELAR_DEPAN`, `GELAR_BELAKANG`, `PANGKAT_GOLONGAN`, `TMT_PNS`, `STATUS_PEGAWAI`, `STATUS_JABATAN`, `NAMA_JABATAN`, `JENIS_KEPEGAWAIAN`) VALUES
('199108092019085101', 'eki.pristiyanto@staf.unair.ac.id', 'Eki Pristiyanto', 'https://cybercampus.unair.ac.id/foto_pegawai/199108092019085101-1601376868.jpg', 'https://cybercampus.unair.ac.id/foto_pegawai/199108092019085101-1601376868.jpg', '199108092019085101', NULL, 1, 0, 'SURABAYA', '1991-08-09', NULL, '', '0', NULL, 'PEGAWAI TIDAK TETAP', 254, 'Fakultas Perikanan dan Kelautan', '851913988609000', 'Universitas Airlangga', NULL, NULL, NULL, 'S.Pd.', 'Setara III Masa Kerja <= 5', NULL, 'Tendik', NULL, NULL, 'PEGAWAI TIDAK TETAP'),
('199108242018083101', 'm-sholakhuddin-al-fajri@vokasi.unair.ac.id', 'MUCHAMAD SHOLAKHUDDIN AL FAJRI', 'http://cybercampus.unair.ac.id/foto_pegawai/199108242018083101-1538722325.JPG', 'http://cybercampus.unair.ac.id/foto_pegawai/199108242018083101-1538722325.JPG', '3525122408910002', '0024089106', 1, 0, 'GRESIK', '1991-08-24', NULL, '', '0', '085648765269', 'TETAP NON PNS', 306, 'Fakultas Vokasi', '715121273612000', 'Universitas Airlangga', 'BAHASA INGGRIS', NULL, NULL, 'S.S., M.A.', 'III/b', NULL, 'Dosen', NULL, NULL, 'TETAP NON PNS'),
('199109062016113201', 'septia.k@fst.unair.ac.id', 'SEPTIA KHOLIMATUSSADIAH', 'http://cybercampus.unair.ac.id/foto_pegawai/', 'http://cybercampus.unair.ac.id/foto_pegawai/', '1173044609910003', '0006099103', 2, 0, 'LHOKSEUMAWE', '1991-09-06', 'Jl. Pandugo Baru XVI Blok P No. 16 Wisma Penjaringan Sari, Surabaya', '', '60293', '081232687823', 'TETAP NON PNS', NULL, 'Fakultas Sains dan Teknologi', '806224069615000', 'Universitas Airlangga', 'FISIKA', NULL, NULL, 'S.Si., M.Sc.', 'III/b', NULL, 'Dosen', NULL, NULL, 'TETAP NON PNS'),
('199110142018013201', 'nurulayuningtyas@staf.unair.ac.id', 'Nurul Ayuningtyas', 'https://cybercampus.unair.ac.id/foto_pegawai/139141883-1477879455.JPG', 'https://cybercampus.unair.ac.id/foto_pegawai/139141883-1477879455.JPG', '199110142018013201', NULL, 2, 0, 'KEDIRI', '1991-10-14', NULL, '', '0', NULL, 'TETAP NON PNS', 250, 'Fakultas Kesehatan Masyarakat', ' 706397064622000', 'Universitas Airlangga', NULL, NULL, NULL, 'S.KM.', 'III/b', NULL, 'Tendik', NULL, NULL, 'TETAP NON PNS'),
('199110152015043201', 'eliana.rochmi@vokasi.unair.ac.id', 'SITI ELIANA ROCHMI', 'http://cybercampus.unair.ac.id/foto_pegawai/', 'http://cybercampus.unair.ac.id/foto_pegawai/', '3523095510910000', '0015109101', 2, 0, 'TUBAN', '1991-10-15', 'DS. SELOGABUS RT/RW:006/001 KEC. PARENGAN KAB. TUBAN', '', '62366', '-', 'TETAP NON PNS', 306, 'Fakultas Vokasi', '727451437648000', 'Universitas Airlangga', 'PARAMEDIK VETERINER', NULL, NULL, 'drh., M.Si.', 'III/c', '2015-01-04', 'Dosen', 'Fungsional', 'Lektor', 'TETAP NON PNS'),
('199110232021093101', 'ali.ikhsanul.q@ftmm.unair.ac.id', 'Ali Ikhsanul Qauli', 'http://cybercampus.unair.ac.id/foto_pegawai/199110232021093101-1661919976.jpg', 'http://cybercampus.unair.ac.id/foto_pegawai/199110232021093101-1661919976.jpg', '3528042310910002', NULL, 1, 0, 'SUMENEP', '1991-10-23', 'Jalan Pintu Gerbang Gang IV No. 31 A', '', '0', '+628121233417', 'CPTNPNS', 690, 'Fakultas Teknologi Maju dan Multidisiplin', '764916698608000', 'Universitas Airlangga', 'TEKNIK ROBOTIKA DAN KECERDASAN', NULL, NULL, 'S.Si., M.Eng.', 'III/b', '2021-09-01', 'Dosen', 'Fungsional', 'Asisten Ahli', 'CPTNPNS'),
('199110242020013201', 'zayyin@staf.unair.ac.id', 'Zayyin Dinana', 'https://cybercampus.unair.ac.id/foto_pegawai/199110242018035201-1575533478.jpg', 'https://cybercampus.unair.ac.id/foto_pegawai/199110242018035201-1575533478.jpg', '199110242020013201', NULL, 2, 0, 'PONOROGO', '1991-10-24', NULL, '', '0', NULL, 'TETAP NON PNS', 38, 'LPT', '763521283647000', 'Universitas Airlangga', NULL, NULL, NULL, 'S.KH.', 'III/a', NULL, 'Tendik', NULL, NULL, 'TETAP NON PNS'),
('199111012018033101', 'ahmad.fadlur.r.b@feb.unair.ac.id', 'Ahmad Fadlur Rahman Bayuny', 'http://cybercampus.unair.ac.id/foto_pegawai/', 'http://cybercampus.unair.ac.id/foto_pegawai/', '3674030111910015', '0001119105', 1, 0, 'SUMENEP', '1991-11-01', 'Jl. Brotowali II B.20-11, Jurangmangu Barat, Pondok Aren, Tangerang Selatan', '', '0', '0315033642', 'TETAP NON PNS', 244, 'Fakultas Ekonomi dan Bisnis', '944141365453000', 'Universitas Airlangga', 'EKONOMI ISLAM', NULL, NULL, 'S.E.I., M.Sc.IBF.', 'III/b', '2020-12-30', 'Dosen', 'Fungsional', 'Asisten Ahli', 'TETAP NON PNS'),
('199111232021093201', 'k.erda.saninggar@fkg.unair.ac.id', 'Karina Erda Saninggar', 'http://cybercampus.unair.ac.id/foto_pegawai/', 'http://cybercampus.unair.ac.id/foto_pegawai/', '3574036311910002', NULL, 2, 0, 'JEMBER', '1991-11-23', 'Jl. Hayam Wuruk 3/D9 Probolinggo', '', '0', '082377777733', 'CPTNPNS', 242, 'Fakultas Kedokteran Gigi', '933957110625000', 'Universitas Airlangga', 'KEDOKTERAN GIGI', NULL, NULL, 'drg', 'III/b', NULL, 'Dosen', NULL, NULL, 'CPTNPNS'),
('199202112020063101', 'bachtiar.ridho.e@staf.unair.ac.id', NULL, 'https://cybercampus.unair.ac.id/foto_pegawai/199202112018115101-1564719019.jpg', 'https://cybercampus.unair.ac.id/foto_pegawai/199202112018115101-1564719019.jpg', '199202112020063101', NULL, NULL, 0, 'NGANJUK', NULL, NULL, '', '0', NULL, NULL, NULL, NULL, NULL, 'Universitas Airlangga', NULL, NULL, NULL, 'S.Hum.', 'III/a', '2021-12-02', 'Tendik', 'Pilih Stat', 'Pengelola data perguruan tingg', NULL),
('199202162018013101', 'ekacahyafebriyanto@staf.unair.ac.id', 'Eka Cahya Febriyanto', 'https://cybercampus.unair.ac.id/foto_pegawai/199202162018013101-1573459133.jpg', 'https://cybercampus.unair.ac.id/foto_pegawai/199202162018013101-1573459133.jpg', '199202162018013101', NULL, 1, 0, 'SURABAYA', '1992-02-16', NULL, '', '0', NULL, 'TETAP NON PNS', 31, 'Direktorat Sumberdaya Manusia', '714759958617000', 'Universitas Airlangga', NULL, NULL, NULL, 'S.Stat., CHCS.', 'III/b', '1992-02-16', 'Tendik', 'Pilih Stat', '0', 'TETAP NON PNS'),
('199204202021093101', 'yoga.uta.n@ftmm.unair.ac.id', 'Yoga Uta Nugraha', 'http://cybercampus.unair.ac.id/foto_pegawai/199204202021093101-1635420174.jpeg', 'http://cybercampus.unair.ac.id/foto_pegawai/199204202021093101-1635420174.jpeg', '3311042004920003', NULL, 1, 0, 'SUKOHARJO', '1992-04-20', 'Jl. Sukolilo Mulia VI/58  SDR 2 Keputih Sukolilo Surabaya', '', '60111', '082133881104', 'CPTNPNS', 690, 'Fakultas Teknologi Maju dan Multidisiplin', '807000492617000', 'Universitas Airlangga', 'TEKNIK ELEKTRO', NULL, NULL, 'S.T., M.T.', 'III/b', '2021-08-31', 'Dosen', 'Fungsional', 'Asisten Ahli', 'CPTNPNS'),
('199205112018013101', 'orlando@staf.unair.ac.id', 'Dony Orlando Nasution', 'https://cybercampus.unair.ac.id/foto_pegawai/199205112018013101-1636099213.jpg', 'https://cybercampus.unair.ac.id/foto_pegawai/199205112018013101-1636099213.jpg', '199205112018013101', NULL, 1, 0, 'SURABAYA', '1992-05-11', NULL, '', '0', NULL, 'TETAP NON PNS', 31, 'Direktorat Sumberdaya Manusia', '723552089603000', 'Universitas Airlangga', NULL, NULL, NULL, 'S.M., MBA., CHCS., MOS., BNT.', 'II/d', NULL, 'Tendik', NULL, NULL, 'TETAP NON PNS'),
('199205112020121005', 'd.alif.hutama@fst.unair.ac.id', 'Dio Alif Hutama', 'http://cybercampus.unair.ac.id/foto_pegawai/199205112020121005-1612401537.jpg', 'http://cybercampus.unair.ac.id/foto_pegawai/199205112020121005-1612401537.jpg', '3515081105920002', NULL, 1, 0, 'SIDOARJO', '1992-05-11', 'Jl. R. A. Kartini IV/1 RT 014 RW 005, Kel. Sidoklumpuk, Kec. Sidoarjo, Kab. Sidoarjo ', '', '61218', NULL, 'PNS', 248, 'Fakultas Sains dan Teknologi', '911233211617000', 'Universitas Airlangga', 'TEKNIK LINGKUNGAN', NULL, NULL, 'S.T., M.Sc.', 'III/b', NULL, 'Dosen', NULL, NULL, 'PNS'),
('199206012018083201', 'maghfirotul.ulyah@fst.unair.ac.id', 'Siti Maghfirotul Ulyah', 'http://cybercampus.unair.ac.id/foto_pegawai/', 'http://cybercampus.unair.ac.id/foto_pegawai/', '3524264106920001', '0001069203', 2, 0, 'GRESIK', '1992-06-01', 'Jl Tambak Medokan Ayu Gang XIVB No 46, Rungkut, Surabaya', '', '60295', '085850824312', 'TETAP NON PNS', 248, 'Fakultas Sains dan Teknologi', '855667945645000', 'Universitas Airlangga', 'STATISTIKA', NULL, NULL, 'S.Si., M.Sc.', 'III/b', '2020-01-02', 'Dosen', 'Fungsional', 'Asisten Ahli', 'TETAP NON PNS'),
('199206042018013101', 'rizkikurniaaqdami@staf.unair.ac.id', 'Rizki Kurnia Aqdami', 'https://cybercampus.unair.ac.id/foto_pegawai/199206042018013101-1572859647.jpg', 'https://cybercampus.unair.ac.id/foto_pegawai/199206042018013101-1572859647.jpg', '199206042018013101', NULL, 1, 0, 'BANYUWANGI', '1992-06-04', NULL, '', '0', NULL, 'TETAP NON PNS', 31, 'Direktorat Sumberdaya Manusia', '762027738627000', 'Universitas Airlangga', NULL, NULL, NULL, 'S.Stat.', 'III/b', '2019-01-01', 'Tendik', 'Fungsional', 'Pengolah Data Peguruan Tinggi', 'TETAP NON PNS'),
('199206232018013201', 'swastika.dyah@staf.unair.ac.id', NULL, 'http://cybercampus.unair.ac.id/foto_pegawai/199206232018013201-1602473244.jpg', NULL, '199206232018013201', NULL, 2, 0, 'SURABAYA', NULL, 'PERUM. GRIYA AIRLANGGA BLOK C-6', '', '0', '081238325520', 'TETAP NON PNS', NULL, NULL, '683441042606000', 'Universitas Airlangga', NULL, NULL, NULL, 'S.Sosio.', 'III/a', NULL, 'Tendik', NULL, NULL, NULL),
('199207072018083201', 'hanifiyah.y.hijriah@vokasi.unair.ac.id', 'Hanifiyah Yuliatul Hijriah', 'http://cybercampus.unair.ac.id/foto_pegawai/199207072018083201-1577413790.jpg', 'http://cybercampus.unair.ac.id/foto_pegawai/199207072018083201-1577413790.jpg', '3509054707920005', '0007079202', 2, 0, 'JEMBER', '1992-07-07', 'Bulak Cumpat Utara 1/12 Bulak, Surabaya', '', '60124', '081217708280', 'TETAP NON PNS', 306, 'Fakultas Vokasi', '465094662619000', 'Universitas Airlangga', 'MANAJEMEN PERBANKAN', NULL, NULL, 'S.EI., M.SEI.', 'III/b', '2018-08-01', 'Dosen', 'Fungsional', 'Asisten Ahli', 'TETAP NON PNS'),
('199207092018035101', 'decarezananda@staf.unair.ac.id', 'DECA REZANANDA', 'https://cybercampus.unair.ac.id/foto_pegawai/199207092015015201-1478164434.JPG', 'https://cybercampus.unair.ac.id/foto_pegawai/199207092015015201-1478164434.JPG', '199207092018035101', NULL, 1, 0, 'SURABAYA', '1992-07-09', NULL, '', '0', NULL, 'PEGAWAI TIDAK TETAP', 252, 'Fakultas Ilmu Budaya', '764595526606000', 'Universitas Airlangga', NULL, NULL, NULL, NULL, NULL, NULL, 'Tendik', NULL, NULL, 'PEGAWAI TIDAK TETAP'),
('199207142020073101', 'm.aldo.setiawan@ftmm.unair.ac.id', 'Muhammad Aldo Setiawan', 'http://cybercampus.unair.ac.id/foto_pegawai/199207142020073101-1597138856.jpg', 'http://cybercampus.unair.ac.id/foto_pegawai/199207142020073101-1597138856.jpg', '3276061407920005', '0014079204', 1, 0, 'DEPOK', '1992-07-14', 'Jl Modern II, Blok A-1, Gunung Anyar Tambak, Surabaya', '', '60294', '+628988141848', 'TETAP NON PNS', 690, 'Fakultas Teknologi Maju dan Multidisiplin', '760145870448000', 'Universitas Airlangga', 'TEKNIK ROBOTIKA DAN KECERDASAN', NULL, NULL, 'S.Si., M.Sc.', 'III/b', NULL, 'Dosen', NULL, NULL, 'TETAP NON PNS'),
('199207202019032027', 'tiarakusumaningtiyas@vokasi.unair.ac.id', 'TIARA KUSUMANINGTIYAS', 'http://cybercampus.unair.ac.id/foto_pegawai/199207202019032027-1610094556.jpg', NULL, '3374126007920004', '0020079204', 2, 0, 'BATANG', NULL, 'Sumurjurang RT 01/RW 03, Sumurejo, Gunungpati, Semarang', '', '50226', '-', 'PNS', NULL, 'Vokasi', NULL, 'Universitas Airlangga', 'PERPUSTAKAAN', NULL, NULL, 'S.Hum., M.', 'III/b', NULL, 'Aktif', 'status_jab', 'nama_jabatan', NULL),
('199207222022103101', 'asif.ali@ftmm.unair.ac.id', 'Asif Ali Zamzami', 'http://cybercampus.unair.ac.id/foto_pegawai/199207222022103101-1668070584.jpg', 'http://cybercampus.unair.ac.id/foto_pegawai/199207222022103101-1668070584.jpg', '3578272207920001', NULL, 1, 0, 'SURABAYA', '1992-07-22', 'Simo Mulyo Baru 1-B/29, RT/RW. 003/003, Kel. Simomulyo Baru, Kec. Sukomanunggal, Kota Surabaya', '', '60181', '+628513246496', 'CPTNPNS', 690, 'Fakultas Teknologi Maju dan Multidisiplin', NULL, 'Universitas Airlangga', 'TEKNIK ROBOTIKA DAN KECERDASAN', NULL, NULL, 'S.ST., M.Sc.', 'III/b', '2022-10-01', 'Dosen', 'Fungsional', 'Asisten Ahli', 'CPTNPNS'),
('199208162020122018', 'maria.istiqomah@fkg.unair.ac.id', 'Maria Istiqomah Marini', 'http://cybercampus.unair.ac.id/foto_pegawai/199208162018027201-1580811767.jpg', 'http://cybercampus.unair.ac.id/foto_pegawai/199208162018027201-1580811767.jpg', '6474035608920002', '0016089205', 2, 0, 'BONTANG', '1992-08-16', 'Gubeng Jaya SR 25', '', '60281', '(031) 5030255', 'PNS', 242, 'Fakultas Kedokteran Gigi', '843423641724000', 'Universitas Airlangga', 'KEDOKTERAN GIGI', NULL, NULL, 'drg., M.Si.', 'III/b', '2022-04-01', 'Dosen', 'Fungsional', 'Asisten Ahli', 'PNS'),
('199209182021093201', 'n.a.rizky.putranti@fkg.unair.ac.id', 'Nurul Aisyah Rizky Putranti', 'http://cybercampus.unair.ac.id/foto_pegawai/', 'http://cybercampus.unair.ac.id/foto_pegawai/', '3374075809920002', NULL, 2, 0, 'MEDAN', '1992-09-18', 'Jalan Kedondong dalam I no 418 Kelurahan Lamper Tengah, Kecamatan Semarang Selatan, Kota Semarang', '', '50248', '+817010758480', 'CPTNPNS', NULL, 'Fakultas Kedokteran Gigi', '847571429508000', 'Universitas Airlangga', 'KEDOKTERAN GIGI', NULL, NULL, 'drg.', 'III/b', '2021-09-01', 'Dosen', 'Fungsional', 'Asisten Ahli', 'CPTNPNS'),
('199210152021093101', 'dimasadityadrg@fkg.unair.ac.id', 'Muhammad Dimas Aditya Ari', 'http://cybercampus.unair.ac.id/foto_pegawai/199210152021093101-1646397310.JPG', 'http://cybercampus.unair.ac.id/foto_pegawai/199210152021093101-1646397310.JPG', '3508101510920009', NULL, 1, 0, 'LUMAJANG', '1992-10-15', 'Jl. Brigjen Katamso, RT 04/ RW 13, Tompokersan, Kab. Lumajang', '', '67311', '0315030255', 'CPTNPNS', 242, 'Fakultas Kedokteran Gigi', '842923740625000', 'Universitas Airlangga', 'KEDOKTERAN GIGI', NULL, NULL, 'drg., M.Kes', 'III/b', NULL, 'Dosen', NULL, NULL, 'CPTNPNS'),
('199212242022013101', 'gading@fkp.unair.ac.id', 'Gading Ekapuja Aurizki', 'https://cybercampus.unair.ac.id/foto_pegawai/199212242022013101-1642645434.jpg', 'https://cybercampus.unair.ac.id/foto_pegawai/199212242022013101-1642645434.jpg', '199212242022013101', NULL, 1, 0, 'MADIUN', '1992-12-24', NULL, '', '60177', NULL, 'CPTNPNS', 253, 'Fakultas Keperawatan', '812135507646000', 'Universitas Airlangga', NULL, NULL, NULL, ' S.Kep., Ns., M.Sc.', 'III/b', '2022-01-01', 'Tendik', 'Pilih Stat', '-', 'CPTNPNS'),
('199212262019055101', 'nurrahman.ardiansyah@staf.unair.ac.id', 'Nurrahman Ardiansyah', 'https://cybercampus.unair.ac.id/foto_pegawai/199212262019055101-1602816019.jpg', 'https://cybercampus.unair.ac.id/foto_pegawai/199212262019055101-1602816019.jpg', '199212262019055101', NULL, 1, 0, 'BANYUWANGI', '1992-12-26', NULL, '', '0', NULL, 'PEGAWAI TIDAK TETAP', 316, NULL, '806859880627000', 'Universitas Airlangga', NULL, NULL, NULL, 'A.Md.,S.Ptk.', 'Setara III Masa Kerja <= 5', NULL, 'Tendik', NULL, NULL, 'PEGAWAI TIDAK TETAP'),
('199301282019031015', 'denizar.a.m@feb.unair.ac.id', 'DENIZAR ABDURRAHMAN MI`RAJ', 'http://cybercampus.unair.ac.id/foto_pegawai/199301282019031015-1564125347.jpg', 'http://cybercampus.unair.ac.id/foto_pegawai/199301282019031015-1564125347.jpg', '3524052801930003', '0028019301', 1, 0, 'LAMONGAN', '1993-01-28', 'Jl. Olah Raga 27 Babat - Lamongan', '', '62271', '081249602392', 'PNS', 244, 'Fakultas Ekonomi dan Bisnis', '761057223645000', 'Universitas Airlangga', 'EKONOMI ISLAM', NULL, NULL, 'S.EI., M.SEI.', 'III/b', '2020-07-01', 'Dosen', 'Fungsional', 'Asisten Ahli', 'PNS'),
('199302192022103101', 'syahril.mubarok@ftmm.unair.ac.id', 'Muhammad Syahril Mubarok', 'http://cybercampus.unair.ac.id/foto_pegawai/199302192022103101-1667880648.jpg', 'http://cybercampus.unair.ac.id/foto_pegawai/199302192022103101-1667880648.jpg', '3525121902930003', NULL, 1, 0, 'GRESIK', '1993-02-19', '\"Masjid Jami\' Kiai Gede RT.13 RW.05. Bungah, Gresik, Jawa Timur 61152\"', '', '61152', '+886984251053', 'CPTNPNS', 690, 'Fakultas Teknologi Maju dan Multidisiplin', NULL, 'Universitas Airlangga', 'TEKNIK ELEKTRO', NULL, NULL, 'S.ST., M.Sc.', 'III/b', '2022-10-01', 'Dosen', 'Fungsional', 'Asisten Ahli', 'CPTNPNS'),
('199303302018083201', 'fitriretrialisca@vokasi.unair.ac.id', 'FITRI RETRIALISCA', 'http://cybercampus.unair.ac.id/foto_pegawai/199303302018083201-1537366633.JPG', NULL, '3505227003930002', '0030039304', 2, 0, 'BLITAR', NULL, 'DESA SELOPURO RT 03/ RW 05 KAB. BLITAR', '', '66185', '081233215512', 'TETAP NON PNS', NULL, 'Vokasi', NULL, 'Universitas Airlangga', 'SISTEM INFORMASI', NULL, NULL, 'S.Kom., M.', 'III/b', NULL, 'Aktif', 'status_jab', 'nama_jabatan', NULL),
('199304072018013101', 'rendyrizki@staf.unair.ac.id', 'Rendy Rizki Apriyadi', 'https://cybercampus.unair.ac.id/foto_pegawai/199304072018013101-1566794592.jpg', 'https://cybercampus.unair.ac.id/foto_pegawai/199304072018013101-1566794592.jpg', '199304072018013101', NULL, 1, 0, 'SURABAYA', '1993-04-07', NULL, '', '0', NULL, 'TETAP NON PNS', 1, 'Perpustakaan', '661958413614000', 'Universitas Airlangga', NULL, NULL, NULL, NULL, 'II/b', NULL, 'Tendik', NULL, NULL, 'TETAP NON PNS'),
('199304102018035201', 'alfiyahsoraya@staf.unair.ac.id', 'ALFIYAH SORAYA', 'https://cybercampus.unair.ac.id/foto_pegawai/199304102018035201-1573863186.jpg', 'https://cybercampus.unair.ac.id/foto_pegawai/199304102018035201-1573863186.jpg', '199304102018035201', NULL, 2, 0, 'SURABAYA', '1993-04-10', NULL, '', '0', NULL, 'PEGAWAI TIDAK TETAP', 248, 'Fakultas Sains dan Teknologi', '555148592614000', 'Universitas Airlangga', NULL, NULL, NULL, 'S.Hum.', NULL, NULL, 'Tendik', NULL, NULL, 'PEGAWAI TIDAK TETAP'),
('199304292018013101', 'nuri-hermawan@staf.unair.ac.id', 'Nuri Hermawan', 'https://cybercampus.unair.ac.id/foto_pegawai/199304292015015101-1486621208.JPG', 'https://cybercampus.unair.ac.id/foto_pegawai/199304292015015101-1486621208.JPG', '199304292018013101', NULL, 1, 0, 'BLITAR', '1993-04-29', NULL, '', '0', NULL, 'TETAP NON PNS', 699, 'PIHM', '762226728653000', 'Universitas Airlangga', NULL, NULL, NULL, 'S.Hum.', 'III/b', NULL, 'Tendik', NULL, NULL, 'TETAP NON PNS'),
('199308272018013201', 'faridahhari@staf.unair.ac.id', 'Faridah Hariyani', 'https://cybercampus.unair.ac.id/foto_pegawai/199308272018013201-1648018623.jpg', 'https://cybercampus.unair.ac.id/foto_pegawai/199308272018013201-1648018623.jpg', '199308272018013201', NULL, 2, 0, 'SURABAYA', '1993-08-27', NULL, '', '0', NULL, 'TETAP NON PNS', 699, 'PIHM', '751562430609000', 'Universitas Airlangga', NULL, NULL, NULL, 'A.Md.', 'II/d', NULL, 'Tendik', NULL, NULL, 'TETAP NON PNS'),
('199309062021093101', 'fadjar.mulya@ftmm.unair.ac.id', 'Fadjar Mulya', 'http://cybercampus.unair.ac.id/foto_pegawai/199309062021093101-1635502579.jpg', 'http://cybercampus.unair.ac.id/foto_pegawai/199309062021093101-1635502579.jpg', NULL, NULL, 1, 0, 'JAMBI', '1993-09-06', NULL, '', '0', NULL, 'CPTNPNS', 690, 'Fakultas Teknologi Maju dan Multidisiplin', NULL, 'Universitas Airlangga', 'REKAYASA NANOTEKNOLOGI', NULL, NULL, 'S.Si., M.Sc.', 'III/b', '2021-09-01', 'Dosen', 'Fungsional', 'Asisten Ahli', 'CPTNPNS'),
('199310062018013101', 'mussawarully@staf.unair.ac.id', 'Mussawa Rully Sonhaji', 'https://cybercampus.unair.ac.id/foto_pegawai/199310062018013101-1646734098.jpg', 'https://cybercampus.unair.ac.id/foto_pegawai/199310062018013101-1646734098.jpg', '199310062018013101', NULL, 1, 0, 'SURABAYA', '1993-10-06', 'JL Lebak rejo utara 5 no 2', '', '0', '081328184188', 'TETAP NON PNS', 350, NULL, '758954051619000', 'Universitas Airlangga', NULL, NULL, NULL, NULL, 'II/b', '2018-01-17', 'Tendik', 'Fungsional', 'Pengemudi', 'TETAP NON PNS'),
('199310192022013101', 'rifky.octavia@staf.unair.ac.id', 'Rifky Octavia Pradipta', 'https://cybercampus.unair.ac.id/foto_pegawai/199310192018125101-1628762587.JPG', 'https://cybercampus.unair.ac.id/foto_pegawai/199310192018125101-1628762587.JPG', '199310192022013101', NULL, 1, 0, 'MADIUN', '1993-10-19', NULL, '', '63152', NULL, 'CPTNPNS', 253, 'Fakultas Keperawatan', '867181166621000', 'Universitas Airlangga', NULL, NULL, NULL, 'S.Kep., Ns., M.Kep', 'III/b', NULL, 'Tendik', NULL, NULL, 'CPTNPNS'),
('199310252018013101', 'nikitalanes@staf.unair.ac.id', 'Nikita Athari Lanes', 'https://cybercampus.unair.ac.id/foto_pegawai/199310252014075101-1478501658.JPG', 'https://cybercampus.unair.ac.id/foto_pegawai/199310252014075101-1478501658.JPG', '199310252018013101', NULL, 1, 0, 'MEDAN', '1993-10-25', NULL, '', '0', NULL, 'TETAP NON PNS', 198, NULL, '640555371618000', 'Universitas Airlangga', 'BAHASA INGGRIS', NULL, NULL, 'A.Md.', 'II/d', NULL, 'Tendik', NULL, NULL, 'TETAP NON PNS'),
('199310302020063101', 'firasfarisialkaff@fk.unair.ac.id', 'Firas Farisi Alkaff', 'http://cybercampus.unair.ac.id/foto_pegawai/199310302020063101-1612434623.jpg', 'http://cybercampus.unair.ac.id/foto_pegawai/199310302020063101-1612434623.jpg', NULL, NULL, 1, 0, 'SURABAYA', '1993-10-30', NULL, '', '0', NULL, 'TETAP NON PNS', NULL, 'Fakultas Kedokteran', NULL, 'Universitas Airlangga', 'KEDOKTERAN', NULL, NULL, 'dr.', 'III/b', NULL, 'Dosen', NULL, NULL, 'TETAP NON PNS'),
('199312262018013201', 'zadina.abadi@staf.unair.ac.id', 'Zadina Abadi', 'http://cybercampus.unair.ac.id/foto_pegawai/199312262016045201-1477452198.JPG', 'http://cybercampus.unair.ac.id/foto_pegawai/199312262016045201-1477452198.JPG', '199312262018013201', NULL, 2, 0, 'SUMENEP', '1993-12-26', 'JL. BLIMBING TENGAH V/02 RT. 3 RW 4 DESA WADUNGASRI WARU SIDOARJO', '', '0', '-', 'TETAP NON PNS', 706, NULL, '764984910608000', 'Universitas Airlangga', NULL, NULL, NULL, 'S.Hum.', 'III/a', NULL, 'Tendik', NULL, NULL, 'TETAP NON PNS'),
('199312282018083201', 'raras.kirana.w@feb.unair.ac.id', 'Raras Kirana Wandira', 'http://cybercampus.unair.ac.id/foto_pegawai/199312282018083201-1606813558.JPG', 'http://cybercampus.unair.ac.id/foto_pegawai/199312282018083201-1606813558.JPG', '3503066812930001', '0028129302', 2, 0, 'TULUNGAGUNG', '1993-12-28', 'Dusun Sugihan RT 39 RW 06 Desa Sumberingin Kec. Karangan, Kab. Trenggalek JAWA TIMUR', '', '66361', ' (031) 501609', 'TETAP NON PNS', 244, 'Fakultas Ekonomi dan Bisnis', '855564357629000', 'Universitas Airlangga', 'MANAJEMEN', NULL, NULL, 'S.E., MBA., M.M.', 'III/b', '2018-01-08', 'Dosen', 'Fungsional', 'Asisten Ahli', 'TETAP NON PNS'),
('199402162021093201', 'aulia.ramadhani@fkg.unair.ac.id', 'Aulia Ramadhani', 'http://cybercampus.unair.ac.id/foto_pegawai/199402162018097201-1603670454.jpg', 'http://cybercampus.unair.ac.id/foto_pegawai/199402162018097201-1603670454.jpg', '3578075602940001', NULL, 2, 0, 'SURABAYA', '1994-02-15', NULL, '', '0', '(031) 5030255', 'CPTNPNS', 242, 'Fakultas Kedokteran Gigi', '858865199611000', 'Universitas Airlangga', 'KEDOKTERAN GIGI', NULL, NULL, 'drg.', 'III/b', NULL, 'Dosen', NULL, NULL, 'CPTNPNS'),
('199404142018083201', 'yutika.effendi@ftmm.unair.ac.id', 'YUTIKA AMELIA EFFENDI', 'http://cybercampus.unair.ac.id/foto_pegawai/199404142018083201-1581477765.JPG', 'http://cybercampus.unair.ac.id/foto_pegawai/199404142018083201-1581477765.JPG', '1408045404940006', '0014049402', 2, 0, 'SOLOK', '1994-04-14', 'Dusun Pajaran Selatan RT 013/ RW 005 Desa Mliriprowo Kecamatan Tarik Kabupaten Sidoarjo, Jawa Timur', '', '61265', '082301787770', 'TETAP NON PNS', 690, 'Fakultas Teknologi Maju dan Multidisiplin', '855233334222000', 'Universitas Airlangga', 'TEKNIK ROBOTIKA DAN KECERDASAN', NULL, NULL, 'S.Kom., M.Kom.', 'III/b', '2018-08-01', 'Dosen', 'Fungsional', 'Asisten Ahli', 'TETAP NON PNS'),
('199404232020073201', 'ika.q.utami@ftmm.unair.ac.id', 'Ika Qutsiati Utami', 'http://cybercampus.unair.ac.id/foto_pegawai/199404232020073201-1595825682.jpg', 'http://cybercampus.unair.ac.id/foto_pegawai/199404232020073201-1595825682.jpg', '3529026304940003', '0023049402', 2, 0, 'SUMENEP', '1994-04-23', 'Jln. Yos Sudarso No.73 Marengan Laok Sumenep Madura', '', '69471', '085132439093', 'TETAP NON PNS', 690, 'Fakultas Teknologi Maju dan Multidisiplin', '950025536608000', 'Universitas Airlangga', 'TEKNOLOGI SAINS DATA', NULL, NULL, 'S.Kom., M.Sc.', 'III/b', '2020-07-01', 'Dosen', 'Fungsional', 'Asisten Ahli', 'TETAP NON PNS'),
('199406132018013101', 'ahmadfadlli@staf.unair.ac.id', 'Ahmad Fadlli', 'https://cybercampus.unair.ac.id/foto_pegawai/199406132018013101-1569377541.jpg', 'https://cybercampus.unair.ac.id/foto_pegawai/199406132018013101-1569377541.jpg', '199406132018013101', NULL, 1, 0, 'SIDOARJO', '1994-06-13', NULL, '', '0', NULL, 'TETAP NON PNS', 373, 'Pusat Layanan Pengadaan Barang dan Jasa', '759462914643000', 'Universitas Airlangga', NULL, NULL, NULL, 'A.Md.', 'II/d', NULL, 'Tendik', NULL, NULL, 'TETAP NON PNS'),
('199406242018013101', 'wahyu.setyawan@staf.unair.ac.id', 'Wahyu Setyawan', 'https://cybercampus.unair.ac.id/foto_pegawai/199406242018013101.JPG', 'https://cybercampus.unair.ac.id/foto_pegawai/199406242018013101.JPG', '199406242018013101', NULL, 1, 0, 'SIDOARJO', '1994-06-24', NULL, '', '0', NULL, 'TETAP NON PNS', 350, NULL, '759750219603000', 'Universitas Airlangga', NULL, NULL, NULL, 'A.Md.', 'II/d', NULL, 'Tendik', NULL, NULL, 'TETAP NON PNS'),
('199406252018013101', 'galihhery@staf.unair.ac.id', 'Galih Hery Herlambang', 'https://cybercampus.unair.ac.id/foto_pegawai/199406252016095101-1477275884.JPG', 'https://cybercampus.unair.ac.id/foto_pegawai/199406252016095101-1477275884.JPG', '199406252018013101', NULL, 1, 0, 'NGANJUK', '1994-06-25', NULL, '', '0', NULL, 'TETAP NON PNS', 30, 'Direktorat Sistem Informasi', '756031779655000', 'Universitas Airlangga', NULL, NULL, NULL, 'A.Md.', 'II/d', NULL, 'Tendik', NULL, NULL, 'TETAP NON PNS'),
('199407022020063201', 'adindamustika@staf.unair.ac.id', 'Adinda Mustika Nugraheni', 'https://cybercampus.unair.ac.id/foto_pegawai/199407022020063201-1593147433.JPG', 'https://cybercampus.unair.ac.id/foto_pegawai/199407022020063201-1593147433.JPG', '199407022020063201', NULL, 2, 0, 'SURABAYA', '1994-07-02', NULL, '', '0', NULL, 'TETAP NON PNS', 30, 'Direktorat Sistem Informasi', '844165035606000', 'Universitas Airlangga', NULL, NULL, NULL, ' S.Kom', 'III/a', NULL, 'Tendik', NULL, NULL, 'TETAP NON PNS'),
('199407232018013101', 'muhammad-yan-h@staf.unair.ac.id', 'Muhammad Yan Handita', 'https://cybercampus.unair.ac.id/foto_pegawai/199407232018013101-1593052258.jpeg', 'https://cybercampus.unair.ac.id/foto_pegawai/199407232018013101-1593052258.jpeg', '199407232018013101', NULL, 1, 0, 'LAMONGAN', '1994-07-23', NULL, '', '0', NULL, 'TETAP NON PNS', 30, 'Direktorat Sistem Informasi', '766841803645000', 'Universitas Airlangga', NULL, NULL, NULL, 'A.Md.', 'II/d', '2018-01-01', 'Tendik', 'Fungsional', 'Staf Integrasi Sistem Informas', 'TETAP NON PNS'),
('199408042020013201', NULL, 'Nurullia Hanum Hilfida', 'https://cybercampus.unair.ac.id/foto_pegawai/199408042018075201-1575903813.jpg', 'https://cybercampus.unair.ac.id/foto_pegawai/199408042018075201-1575903813.jpg', '199408042020013201', NULL, 2, 0, 'GRESIK', '1994-08-04', NULL, '', '0', NULL, 'TETAP NON PNS', 604, 'Rumah Sakit Gigi dan Mulut Pendidikan', '849351614612000', 'Universitas Airlangga', NULL, NULL, NULL, 'S.Kep.', 'III/a', NULL, 'Tendik', NULL, NULL, 'TETAP NON PNS'),
('199408072022013101', 'nidodipo@psikologi.unair.ac.id', 'Nido Dipo Wardana', 'http://cybercampus.unair.ac.id/foto_pegawai/199408072016117101-1623724252.jpg', 'http://cybercampus.unair.ac.id/foto_pegawai/199408072016117101-1623724252.jpg', '3575030708940002', NULL, 1, 0, 'SURABAYA', '1994-07-08', NULL, '', '0', NULL, 'CPTNPNS', NULL, 'Fakultas Psikologi', '813941184624000', 'Universitas Airlangga', 'PSIKOLOGI', NULL, NULL, 'S.Psi., M.Sc.', 'III/b', NULL, 'Dosen', NULL, NULL, 'CPTNPNS'),
('199410302021025201', 'taratia.panggayuh.k@staf.unair.ac.id', 'Taratia Panggayuh Karahayon', 'https://cybercampus.unair.ac.id/foto_pegawai/199410302021025201-1616122116.jpg', 'https://cybercampus.unair.ac.id/foto_pegawai/199410302021025201-1616122116.jpg', '199410302021025201', NULL, NULL, 0, 'NGAWI', NULL, NULL, '', '0', NULL, NULL, NULL, NULL, NULL, 'Universitas Airlangga', 'TEKNIK ROBOTIKA DAN KECERDASAN', NULL, NULL, 'S.ST.', 'Setara III Masa Kerja <= 5', NULL, 'Tendik', NULL, NULL, NULL),
('199412132022113101', 'asiadi@staf.unair.ac.id', 'Asiadi', 'https://cybercampus.unair.ac.id/foto_pegawai/199412132020105101-1602856143.jpeg', 'https://cybercampus.unair.ac.id/foto_pegawai/199412132020105101-1602856143.jpeg', '199412132022113101', NULL, 1, 0, 'WAKATOBI', '1994-12-13', NULL, '', '0', NULL, 'CPTNPNS', 306, 'Fakultas Vokasi', '959008749953000', 'Universitas Airlangga', NULL, NULL, NULL, 'S.Kep.', 'III/a', NULL, 'Tendik', NULL, NULL, 'CPTNPNS'),
('199412162018035101', 'ekobasuki@staf.unair.ac.id', 'M EKO BASUKI RAHMAT', 'https://cybercampus.unair.ac.id/foto_pegawai/139141895-1486686157.JPG', 'https://cybercampus.unair.ac.id/foto_pegawai/139141895-1486686157.JPG', '199412162018035101', NULL, 1, 0, 'BLITAR', '1994-12-16', 'LINGKUNGAN TAWANGSARI RT 1 RW 7. GARUM - BLITAR', '', '0', '08567958327', 'PEGAWAI TIDAK TETAP', 244, 'Fakultas Ekonomi dan Bisnis', '704749407653000', 'Universitas Airlangga', NULL, NULL, NULL, NULL, NULL, '2014-01-06', 'Tendik', 'Fungsional', 'Administrasi Keuangan', 'PEGAWAI TIDAK TETAP'),
('199412172019032019', 'ratna.nurlia.a@fkg.unair.ac.id', 'RATNA NURLIA ALFIANDINI', 'http://cybercampus.unair.ac.id/foto_pegawai/199412172019032019-1633575401.jpg', 'http://cybercampus.unair.ac.id/foto_pegawai/199412172019032019-1633575401.jpg', '3515135712940005', NULL, 2, 0, 'SURABAYA', '1994-12-17', 'Sepanjang Town House G-4 RT.019 RW. 002 Kalijaten, Taman, Sidoarjo', '', '0', '081919999126', 'PNS', 242, 'Fakultas Kedokteran Gigi', '909563967603000', 'Universitas Airlangga', 'PENDIDIKAN PROFESI DOKTER GIGI', NULL, NULL, 'drg.', 'III/b', NULL, 'Dosen', NULL, NULL, 'PNS'),
('199502192018047201', 'nastiti.faradilla@fkg.unair.ac.id', 'Nastiti Faradilla Ramadhani', 'http://cybercampus.unair.ac.id/foto_pegawai/199502192018047201-1630808611.jpg', 'http://cybercampus.unair.ac.id/foto_pegawai/199502192018047201-1630808611.jpg', '3578265902950003', NULL, 2, 0, 'SURABAYA', '1995-02-19', 'Manyar Tirtomoyo II no. 24 Surabaya', '', '60116', '081232257292', 'LUAR BIASA', 242, 'Fakultas Kedokteran Gigi', '848716957619000', 'Universitas Airlangga', 'KEDOKTERAN GIGI', NULL, NULL, 'drg.', '-', NULL, 'Dosen', NULL, NULL, 'LUAR BIASA'),
('199502232020125101', 'anggarda.bayu@staf.unair.ac.id', 'Anggarda Bayu Wicaksono', 'https://cybercampus.unair.ac.id/foto_pegawai/199502232020125101.JPG', 'https://cybercampus.unair.ac.id/foto_pegawai/199502232020125101.JPG', '199502232020125101', NULL, 1, 0, 'SURABAYA', '1995-02-23', NULL, '', '0', NULL, 'PEGAWAI TIDAK TETAP', 31, 'Direktorat Sumberdaya Manusia', NULL, 'Universitas Airlangga', NULL, NULL, NULL, 'S.Kom.', 'Setara III Masa Kerja <= 5', '2022-02-12', 'Tendik', 'Pilih Stat', 'STAFF', 'PEGAWAI TIDAK TETAP'),
('199502232022113101', 'anggarda.bayu@staf.unair.ac.id', 'Anggarda Bayu Wicaksono', 'https://cybercampus.unair.ac.id/foto_pegawai/199502232020125101-1668389264.jpg', 'https://cybercampus.unair.ac.id/foto_pegawai/199502232020125101-1668389264.jpg', '199502232022113101', NULL, 1, 0, 'SURABAYA', '1995-02-23', NULL, '', '0', NULL, 'CPTNPNS', 31, 'Direktorat Sumberdaya Manusia', NULL, 'Universitas Airlangga', NULL, NULL, NULL, 'S.Kom.', 'III/a', NULL, 'Tendik', NULL, NULL, 'CPTNPNS'),
('199503252021093101', 'rahmad.rifqi@fkg.unair.ac.id', 'Rahmad Rifqi Fahreza', 'http://cybercampus.unair.ac.id/foto_pegawai/199503252020037101-1638241912.jpeg', 'http://cybercampus.unair.ac.id/foto_pegawai/199503252020037101-1638241912.jpeg', '3525162503950001', NULL, 1, 0, 'GRESIK', '1995-03-25', NULL, '', '0', '08989998385', 'CPTNPNS', 242, 'Fakultas Kedokteran Gigi', '943030643612000', 'Universitas Airlangga', 'KEDOKTERAN GIGI', NULL, NULL, 'drg.', 'III/b', NULL, 'Dosen', NULL, NULL, 'CPTNPNS'),
('199506222020063101', 'arya.wiratama@staf.unair.ac.id', 'Arya Wiratama', 'https://cybercampus.unair.ac.id/foto_pegawai/199506222020063101-1593148031.jpg', 'https://cybercampus.unair.ac.id/foto_pegawai/199506222020063101-1593148031.jpg', '199506222020063101', NULL, 1, 0, 'NGANJUK', '1995-06-22', NULL, '', '0', NULL, 'TETAP NON PNS', 30, 'Direktorat Sistem Informasi', '836143255655000', 'Universitas Airlangga', NULL, NULL, NULL, 'A.Md.', 'II/c', NULL, 'Tendik', NULL, NULL, 'TETAP NON PNS'),
('199507152022013101', 'probo.darono.y@fisip.unair.ac.id', 'Probo Darono Yakti', 'http://cybercampus.unair.ac.id/foto_pegawai/199507152022013101-1642401299.jpg', 'http://cybercampus.unair.ac.id/foto_pegawai/199507152022013101-1642401299.jpg', NULL, NULL, 1, 0, 'YOGYAKARTA', '1995-07-15', 'Manyar Jaya XIII B-155, , Menur Pumpungan, Sukolilo', '', '0', '082131047301', 'CPTNPNS', 321, 'Fakultas Ilmu Sosial dan Ilmu Politik', NULL, 'Universitas Airlangga', 'ILMU HUBUNGAN INTERNASIONAL', NULL, NULL, 'S.Hub.Int., M.Hub.Int', 'III/b', '2022-01-03', 'Dosen', 'Fungsional', 'Asisten Ahli', 'CPTNPNS'),
('199508212018035101', 'bagus.winarto@staf.unair.ac.id', 'Bagus Winarto', 'https://cybercampus.unair.ac.id/foto_pegawai/199508212018035101-1595342832.jpg', 'https://cybercampus.unair.ac.id/foto_pegawai/199508212018035101-1595342832.jpg', '199508212018035101', NULL, 1, 0, 'GRESIK', '1995-08-21', NULL, '', '0', NULL, 'PEGAWAI TIDAK TETAP', 246, 'Fakultas Kedokteran Hewan', '835247420642000', 'Universitas Airlangga', NULL, NULL, NULL, ' A.Md.', NULL, '2017-10-30', 'Tendik', 'Pilih Stat', 'PLP', 'PEGAWAI TIDAK TETAP'),
('199512052021025101', 'shoffan.maulana@staf.unair.ac.id', 'Shoffan Maulana', 'https://cybercampus.unair.ac.id/foto_pegawai/199512052021025101-1622450128.jpg', 'https://cybercampus.unair.ac.id/foto_pegawai/199512052021025101-1622450128.jpg', '199512052021025101', NULL, 1, 0, 'SURABAYA', '1995-12-05', NULL, '', '0', NULL, 'PEGAWAI TIDAK TETAP', 243, 'Fakultas Hukum', NULL, 'Universitas Airlangga', NULL, NULL, NULL, ' S.EI.', 'Setara III Masa Kerja <= 5', '2021-02-01', 'Tendik', 'Fungsional', 'Pelaksana Administrasi SDM', 'PEGAWAI TIDAK TETAP'),
('199601112018055101', 'a.dwi.kurniawan@staf.unair.ac.id', 'Ahmat Dwi Kurniawan', 'https://cybercampus.unair.ac.id/foto_pegawai/199601112018055101.JPG', 'https://cybercampus.unair.ac.id/foto_pegawai/199601112018055101.JPG', '199601112018055101', NULL, 1, 0, NULL, '1996-01-11', NULL, '', '0', NULL, 'PEGAWAI TIDAK TETAP', 246, 'Fakultas Kedokteran Hewan', '848472726642000', 'Universitas Airlangga', NULL, NULL, NULL, NULL, NULL, NULL, 'Tendik', NULL, NULL, 'PEGAWAI TIDAK TETAP'),
('199602112019015101', 'agil.ramadhan.achmad@staf.unair.ac.id', 'Agil Ramadhan Achmad', 'https://cybercampus.unair.ac.id/foto_pegawai/199602112019015101-1653530871.jpeg', 'https://cybercampus.unair.ac.id/foto_pegawai/199602112019015101-1653530871.jpeg', '199602112019015101', NULL, 1, 0, NULL, '1996-02-11', NULL, '', '0', NULL, 'PEGAWAI TIDAK TETAP', 246, 'Fakultas Kedokteran Hewan', '869061929604000', 'Universitas Airlangga', NULL, NULL, NULL, 'A.Md', 'Setara II Masa Kerja <= 5', '2019-01-01', 'Tendik', 'Fungsional', 'Pelaksana Laboratorium Reprodu', 'PEGAWAI TIDAK TETAP'),
('199602182020037201', 'beshlina.fitri.widayanti@fkg.unair.ac.id', 'Beshlina Fitri Widayanti Roosyanto ', 'http://cybercampus.unair.ac.id/foto_pegawai/199602182020037201-1630461010.jpg', 'http://cybercampus.unair.ac.id/foto_pegawai/199602182020037201-1630461010.jpg', '3578265802960002', NULL, 2, 0, 'JAKARTA', '1996-02-18', 'Manyar Tirtomoyo 8/2 Surabaya', '', '0', '082245423916', 'Asisten Dosen', NULL, 'Fakultas Kedokteran Gigi', '948275664619000', 'Universitas Airlangga', 'KEDOKTERAN GIGI', NULL, NULL, 'drg.', '-', NULL, 'Dosen', NULL, NULL, 'Asisten Dosen'),
('199602182022043201', 'beshlina.fitri.widayanti@fkg.unair.ac.id', 'Beshlina Fitri Widayanti Roosyanto ', 'http://cybercampus.unair.ac.id/foto_pegawai/199602182020037201-1630461010.jpg', 'http://cybercampus.unair.ac.id/foto_pegawai/199602182020037201-1630461010.jpg', '3578265802960002', NULL, 2, 0, 'JAKARTA', '1996-02-18', 'Manyar Tirtomoyo 8/2 Surabaya', '', '0', '082245423916', 'CPTNPNS', 242, 'Fakultas Kedokteran Gigi', '948275664619000', 'Universitas Airlangga', 'KEDOKTERAN GIGI', NULL, NULL, 'drg., M.Si.', 'III/b', NULL, 'Dosen', NULL, NULL, 'CPTNPNS'),
('199605022020063201', 'diana@staf.unair.ac.id', 'Risdiana Nissa', 'https://cybercampus.unair.ac.id/foto_pegawai/199605022019015201-1566959167.jpg', 'https://cybercampus.unair.ac.id/foto_pegawai/199605022019015201-1566959167.jpg', '199605022020063201', NULL, 2, 0, 'SIDOARJO', '1996-05-02', NULL, '', '0', NULL, 'TETAP NON PNS', 31, 'Direktorat Sumberdaya Manusia', '869622126603000', 'Universitas Airlangga', NULL, NULL, NULL, 'S.Hum.', 'III/a', '2021-07-01', 'Tendik', 'Pilih Stat', 'nama_jabatan', 'TETAP NON PNS'),
('199606272018095101', 'ervananda.cahya.santosa@staf.unair.ac.id', 'Ervananda Cahya Santosa', 'https://cybercampus.unair.ac.id/foto_pegawai/199606272018095101-1566959735.jpg', 'https://cybercampus.unair.ac.id/foto_pegawai/199606272018095101-1566959735.jpg', '199606272018095101', NULL, 1, 0, 'NGANJUK', '1996-06-27', NULL, '', '0', NULL, 'PEGAWAI TIDAK TETAP', 118, NULL, '856887195655000', 'Universitas Airlangga', 'ADMINISTRASI PERKANTORAN', NULL, NULL, 'A.Md.', NULL, NULL, 'Tendik', NULL, NULL, 'PEGAWAI TIDAK TETAP'),
('199607022022045201', 'sinta.maulina@staf.unair.ac.id', 'Firdaus Sinta Maulina', 'https://cybercampus.unair.ac.id/foto_pegawai/199607022022045201-1649402128.jpg', 'https://cybercampus.unair.ac.id/foto_pegawai/199607022022045201-1649402128.jpg', '199607022022045201', NULL, 2, 0, 'SIDOARJO', '1996-07-02', NULL, '', '0', NULL, 'PEGAWAI TIDAK TETAP', 699, 'PIHM', NULL, 'Universitas Airlangga', NULL, NULL, NULL, 'S.Tr.Kom.', 'Setara III Masa Kerja <= 5', NULL, 'Tendik', NULL, NULL, 'PEGAWAI TIDAK TETAP'),
('199608252018013101', 'roywahyudii@staf.unair.ac.id', 'Roy Wahyudi', 'http://cybercampus.unair.ac.id/foto_pegawai/199608252018013101-1638264095.jpg', 'http://cybercampus.unair.ac.id/foto_pegawai/199608252018013101-1638264095.jpg', '199608252018013101', NULL, 1, 0, 'MALANG', '1996-08-25', 'JALAN BANDULAN GANG 1 F NO. 38 RT 09 RW 04 KEL. BANDULAN KEC. SUKUN', '', '0', '-', 'TETAP NON PNS', 706, NULL, '705036556623000', 'Universitas Airlangga', NULL, NULL, NULL, NULL, 'II/a', NULL, 'Tendik', NULL, NULL, 'TETAP NON PNS'),
('199612152022045201', 'destialova@staf.unair.ac.id', 'Destialova Rully Cajuizi', 'https://cybercampus.unair.ac.id/foto_pegawai/199612152022045201.JPG', 'https://cybercampus.unair.ac.id/foto_pegawai/199612152022045201.JPG', '199612152022045201', NULL, 2, 0, 'SURABAYA', '1996-12-15', NULL, '', '0', NULL, 'PEGAWAI TIDAK TETAP', 699, 'PIHM', NULL, 'Universitas Airlangga', NULL, NULL, NULL, 'S.I.Kom.', 'Setara III Masa Kerja <= 5', NULL, 'Tendik', NULL, NULL, 'PEGAWAI TIDAK TETAP'),
('199705152021075101', 'ilham.meizar.r@staf.unair.ac.id', 'Ilham Meizar Rizkyansyah', 'https://cybercampus.unair.ac.id/foto_pegawai/199705152021075101-1632711388.jpg', 'https://cybercampus.unair.ac.id/foto_pegawai/199705152021075101-1632711388.jpg', '199705152021075101', NULL, 1, 0, 'GRESIK', '1997-05-15', NULL, '', '0', NULL, 'PEGAWAI TIDAK TETAP', 350, NULL, NULL, 'Universitas Airlangga', NULL, NULL, NULL, ', S.T.	', 'Setara III Masa Kerja <= 5', NULL, 'Tendik', NULL, NULL, 'PEGAWAI TIDAK TETAP'),
('199708022020025101', 'yaka.bagus.pratama@staf.unair.ac.id', 'Moch. Yaka Bagus Pratama', 'https://cybercampus.unair.ac.id/foto_pegawai/199708022020025101-1591770501.jpg', 'https://cybercampus.unair.ac.id/foto_pegawai/199708022020025101-1591770501.jpg', '199708022020025101', NULL, 1, 0, 'BOJONEGORO', '1997-08-02', NULL, '', '0', NULL, 'PEGAWAI TIDAK TETAP', 34, 'Sekretaris Universitas', '942985623601000', 'Universitas Airlangga', NULL, NULL, NULL, 'S.IIP', 'Setara III Masa Kerja <= 5', NULL, 'Tendik', NULL, NULL, 'PEGAWAI TIDAK TETAP'),
('199708242021025101', NULL, 'Ahmad Suhail Alhazimi', 'https://cybercampus.unair.ac.id/foto_pegawai/199708242021025101.JPG', 'https://cybercampus.unair.ac.id/foto_pegawai/199708242021025101.JPG', '199708242021025101', NULL, 1, 0, 'SIDOARJO', '1997-08-24', NULL, '', '0', NULL, 'PEGAWAI TIDAK TETAP', 699, 'PIHM', NULL, 'Universitas Airlangga', NULL, NULL, NULL, 'S.EI', 'Setara III Masa Kerja <= 5', NULL, 'Tendik', NULL, NULL, 'PEGAWAI TIDAK TETAP'),
('199801172019115201', 'eka.puji.rahayu@staf.unair.ac.id', 'Eka Puji Rahayu', 'https://cybercampus.unair.ac.id/foto_pegawai/199801172019115201.JPG', 'https://cybercampus.unair.ac.id/foto_pegawai/199801172019115201.JPG', '199801172019115201', NULL, 2, 0, 'BLORA', '1998-01-17', NULL, '', '0', NULL, 'PEGAWAI TIDAK TETAP', 252, 'Fakultas Ilmu Budaya', '934393737514000', 'Universitas Airlangga', NULL, NULL, NULL, 'S.Hum.', 'Setara III Masa Kerja <= 5', NULL, 'Tendik', NULL, NULL, 'PEGAWAI TIDAK TETAP'),
('199905072019105101', 'achmad.hasbi.ashshiddiqi@staf.unair.ac.id', 'Achmad Hasbi Ashshiddiqi', 'https://cybercampus.unair.ac.id/foto_pegawai/199905072019105101-1621695637.jpeg', 'https://cybercampus.unair.ac.id/foto_pegawai/199905072019105101-1621695637.jpeg', '199905072019105101', NULL, 1, 0, 'SURABAYA', '1999-05-07', NULL, '', '0', NULL, 'PEGAWAI TIDAK TETAP', 252, 'Fakultas Ilmu Budaya', '929997732606000', 'Universitas Airlangga', NULL, NULL, NULL, NULL, 'Setara II Masa Kerja <= 5', '2019-10-01', 'Tendik', 'Fungsional', 'Petugas Keamanan', 'PEGAWAI TIDAK TETAP'),
('199905172020095101', 'r.m.akbar.bagus.prakoso@staf.unair.ac.id', 'R. Muhammad Akbar Bagus Prakoso', 'https://cybercampus.unair.ac.id/foto_pegawai/199905172020095101-1603084974.jpg', 'https://cybercampus.unair.ac.id/foto_pegawai/199905172020095101-1603084974.jpg', '199905172020095101', NULL, 1, 0, 'KEDIRI', '1999-05-17', NULL, '', '0', NULL, 'PEGAWAI TIDAK TETAP', 690, 'Fakultas Teknologi Maju dan Multidisiplin', '950676312614000', 'Universitas Airlangga', NULL, NULL, NULL, 'A.Md. Bns.', 'Setara II Masa Kerja <= 5', '2020-09-01', 'Tendik', 'Fungsional', 'Pengadministrasi Kepegawaian', 'PEGAWAI TIDAK TETAP'),
('199905172022113101', 'akbar.bagus@staf.unair.ac.id', 'R. Muhammad Akbar Bagus Prakoso', 'https://cybercampus.unair.ac.id/foto_pegawai/199905172020095101-1603084974.jpg', 'https://cybercampus.unair.ac.id/foto_pegawai/199905172020095101-1603084974.jpg', '199905172022113101', NULL, 1, 0, 'KEDIRI', '1999-05-17', NULL, '', '0', NULL, 'CPTNPNS', 690, 'Fakultas Teknologi Maju dan Multidisiplin', '950676312614000', 'Universitas Airlangga', NULL, NULL, NULL, 'A.Md. Bns.', 'II/c', NULL, 'Tendik', NULL, NULL, 'CPTNPNS'),
('199908252022045101', 'aziz.bachrudin@staf.unair.ac.id', 'Muhammad Aziz Bachrudin', 'https://cybercampus.unair.ac.id/foto_pegawai/199908252022045101-1649394135.jpeg', 'https://cybercampus.unair.ac.id/foto_pegawai/199908252022045101-1649394135.jpeg', '199908252022045101', NULL, 1, 0, 'JOMBANG', '1999-08-25', NULL, '', '0', NULL, 'PEGAWAI TIDAK TETAP', 688, 'Direktorat Sarana Prasarana dan Lingkungan', NULL, 'Universitas Airlangga', NULL, NULL, NULL, 'A.Md.T.', 'Setara II Masa Kerja <= 5', NULL, 'Tendik', NULL, NULL, 'PEGAWAI TIDAK TETAP'),
('199909292018025101', 'alkhawi.noermatin@staf.unair.ac.id', NULL, 'http://cybercampus.unair.ac.id/foto_pegawai/199909292018025101-1614179649.jpg', NULL, '199909292018025101', NULL, 1, 0, 'NGANJUK', NULL, 'KEDUNG MALING 005/002', '', '0', '-', 'PEGAWAI TIDAK TETAP', NULL, NULL, '840747992602000', 'Universitas Airlangga', NULL, NULL, NULL, NULL, 'Setara II Masa Kerja <= 5', NULL, 'Tendik', NULL, NULL, NULL),
('200006132022095201', 'mahfudz.dzotul@staf.unair.ac.id', 'Mahfudz Dzotul Hasanah', 'https://cybercampus.unair.ac.id/foto_pegawai/200006132022095201.JPG', 'https://cybercampus.unair.ac.id/foto_pegawai/200006132022095201.JPG', '200006132022095201', NULL, 2, 0, 'SEMARANG', '2000-06-13', NULL, '', '0', NULL, 'PEGAWAI TIDAK TETAP', 31, 'Direktorat Sumberdaya Manusia', NULL, 'Universitas Airlangga', NULL, NULL, NULL, 'S.Pi', 'Setara III Masa Kerja <= 5', NULL, 'Tendik', NULL, NULL, 'PEGAWAI TIDAK TETAP'),
('R', 'R', NULL, 'R', 'R', NULL, NULL, NULL, 0, 'R', NULL, 'R', '', '0', 'R', NULL, 321, 'Fakultas R', NULL, 'Universitas Airlangga', 'R', NULL, 'R', 'R', 'R', NULL, 'Dosen', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `evaluations`
--

CREATE TABLE `evaluations` (
  `evaluation_id` int(11) NOT NULL,
  `evaluation_code` varchar(16) DEFAULT NULL,
  `NIK` varchar(32) DEFAULT NULL,
  `name` varchar(1024) DEFAULT NULL,
  `division` varchar(1024) DEFAULT NULL,
  `stage` varchar(16) DEFAULT NULL,
  `semester` int(11) DEFAULT NULL,
  `study` varchar(1024) DEFAULT NULL,
  `institution` varchar(1024) DEFAULT NULL,
  `study_status` tinyint(4) DEFAULT NULL,
  `study_certificate` text,
  `mentor_1` varchar(1024) DEFAULT NULL,
  `mentor_2` varchar(1024) DEFAULT NULL,
  `topic` text,
  `percentage_ta` float DEFAULT NULL,
  `follow_up_ta` text,
  `study_semester_result` text,
  `study_presence` text,
  `has_proposal_test` tinyint(4) DEFAULT NULL,
  `proposal_date` date DEFAULT NULL,
  `proposal_file` text,
  `has_similarity_test` tinyint(4) DEFAULT NULL,
  `evaluation_date` date DEFAULT NULL,
  `percentage_evaluation` float DEFAULT NULL,
  `similarity_file` text,
  `percentage_end_test` float DEFAULT NULL,
  `end_test_date` date DEFAULT NULL,
  `end_test_file` text,
  `percentage_pass_academic` float DEFAULT NULL,
  `study_problem` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `evaluations`
--

INSERT INTO `evaluations` (`evaluation_id`, `evaluation_code`, `NIK`, `name`, `division`, `stage`, `semester`, `study`, `institution`, `study_status`, `study_certificate`, `mentor_1`, `mentor_2`, `topic`, `percentage_ta`, `follow_up_ta`, `study_semester_result`, `study_presence`, `has_proposal_test`, `proposal_date`, `proposal_file`, `has_similarity_test`, `evaluation_date`, `percentage_evaluation`, `similarity_file`, `percentage_end_test`, `end_test_date`, `end_test_file`, `percentage_pass_academic`, `study_problem`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'EV-1649904756', '197512062008121002', 'FADLI AMA', 'Fakultas Sains dan Teknologi', 'S1', 6, 'xxx', 'xxx', 2, NULL, 'xx', NULL, NULL, NULL, 'xxx', '/uploads/evaluation/study_semester_result/1649904756_Sample picture.jpeg', NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, 16, NULL, '/uploads/evaluation/end_test_file/1649920774_Ankeb mas doni.pdf', 20, NULL, '2022-04-14 02:52:36', '2022-04-14 07:19:34', NULL),
(2, 'EV-1649915769', '199502232020125101', 'Anggarda Bayu Wicaksono', 'Direktorat Sumberdaya Manusia', 'S1', 2, 'xxx', 'xxx', 2, NULL, 'xxx', 'xxx', NULL, 12, 'xxx', '/uploads/evaluation/study_semester_result/1649915769_Sample picture.jpeg', NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, 15, NULL, NULL, 25, NULL, '2022-04-14 05:56:09', '2022-04-14 05:56:09', NULL),
(3, 'EV-1649916624', '199502232020125101', 'Anggarda Bayu Wicaksono', 'Direktorat Sumberdaya Manusia', 'S2', 4, 'S2 SI', 'Universitas Airlangga', 2, NULL, 'a', 'b', 'asas', 4, 'Secepatnya', '/uploads/evaluation/study_semester_result/1649916624_Struktur Organisasi SDM.png', '/uploads/evaluation/study_presence/1649916624_Struktur-Organisasi-1-1-1-1024x403.png', 2, '2022-04-15', NULL, 2, '2022-04-15', NULL, NULL, 2, '2022-04-29', NULL, 2, NULL, '2022-04-14 06:10:24', '2022-04-14 06:10:24', NULL),
(4, 'EV-1649918159', '199502232020125101', 'Anggarda Bayu Wicaksono', 'Direktorat Sumberdaya Manusia', 'S1', 5, 'S2 SI', 'Universitas Airlangga', 2, NULL, 'a', 'b', 'asas', 5, 'Secepatnya', '/uploads/evaluation/study_semester_result/1649918205_Presensi Blank.pdf', '/uploads/evaluation/study_presence/1649918205_Presensi narsum 7 okt.pdf', 2, '2022-04-30', NULL, 2, '2022-04-30', 4, NULL, 8, '2022-05-20', NULL, 10, NULL, '2022-04-14 06:35:59', '2022-04-14 06:36:45', NULL),
(5, 'EV-1650011125', '198304232010122007', 'HARDANY PRIMARIZKY', 'Fakultas Kedokteran Hewan', 'S3', 2, 'Veterinary Clinical Science', 'Joint Graduate School of Veterinary Medicine Yamaguchi University', 2, NULL, 'Prof Masaru OKUDA, DVM., PhD.', 'Assoc. Prof. Kenji BABA, DVM., PhD.', 'Oncolofy (Canine Lymphoma)', 20, 'Mulai melakukan penelitian setelah rencana studi disetujui oleh Pembimbing 1.', '/uploads/evaluation/study_semester_result/1650011125_yamaguchi University - Grade result Hardany.pdf', NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, 20, NULL, NULL, 20, NULL, '2022-04-15 08:25:25', '2022-04-15 08:25:25', NULL),
(6, 'EV-1650247961', '199206042018013101', 'Rizki Kurnia Aqdami', 'Direktorat Sumberdaya Manusia', 'S2', 3, 'Magister Pengembangan Sumberdaya Manusia', 'Universitas Airlangga', 2, NULL, 'Dr. Bagus......', NULL, 'Perilaku Kerja Inovatif', 40, 'saya akan lebih intens dalam melaksanakan bimbingan', NULL, NULL, 2, '2022-03-20', NULL, 2, '2022-03-20', 5, NULL, 30, '2022-08-20', NULL, 75, NULL, '2022-04-18 02:12:41', '2022-04-18 02:12:41', NULL),
(7, 'EV-1653271324', '199206042018013101', 'Rizki Kurnia Aqdami', 'Direktorat Sumberdaya Manusia', 'S2', 3, 'Pengembangan SDM', 'Universitas Airlangga', 2, NULL, 'Dr. Bagus', NULL, 'Perilaku Kerja Inovatif', 20, 'saya akan mencoba lebih rajin dalam melakukan bimbingan', NULL, NULL, 2, '2022-07-21', NULL, 2, '2022-06-09', NULL, NULL, NULL, '2022-08-11', NULL, 20, 'kendala pandemi', '2022-05-23 02:02:04', '2022-05-23 02:02:04', NULL),
(14, 'EV-1653365912', '198606022015042001', 'LAILATUN NIMAH', 'Fakultas Keperawatan', 'S1', 0, 'S3 Keperawatan', 'Fakultas Keperawatan Universitas Airlangga', NULL, NULL, 'Prof. Dr. Nurslaam, M.Nurs. Hons', 'Dr. Ika Yuni Widiyastuti, S.Kep., Ns. M.Kep. Sp. KMB', 'Dialisis', 5, 'Mencari literatur untuk proposal desertasi', NULL, NULL, 2, '2022-10-29', NULL, 2, '2022-10-29', NULL, NULL, NULL, '2022-10-29', NULL, 100, NULL, '2022-05-24 04:18:32', '2022-05-24 04:18:32', NULL),
(15, 'EV-1653366300', '198702232016113201', 'ARIA AULIA NASTITI', 'Fakultas Keperawatan', 'S3', 0, 'Doktor Keperawatan', 'Universitas Airlangga', 2, NULL, 'Prof. Dr. Nursalam, M.Nurs(Hons)', 'Dr. Mira Triharini, S.Kp., M.Kep', 'Keperawatan Maternitas, kehamilan resiko tinggi', 5, 'Memantapkan topik, menyelesaikan proposal dan mengikuti ujian prakualifikasi', NULL, NULL, 2, '2023-06-24', NULL, 2, '2024-06-24', NULL, NULL, NULL, '2025-06-24', NULL, 0, 'Belum ada, perkuliahan belum dimulai', '2022-05-24 04:25:00', '2022-05-24 04:25:00', NULL),
(16, 'EV-1653366325', '198611092015042002', 'PRABA DIYAN RACHMAWATI', 'Fakultas Keperawatan', 'S3', 0, 'Doktor Keperawatan', 'Fakultas Keperawatan Universitas Airlangga', 2, NULL, 'Dr. Yuni Sufyanti Arief, S.Kp., M.Kes', 'Dr. Mira Triharini, S.Kp., M.Kep', 'Keperawatan Anak', 5, 'Menyempurnakan proposal dan mempersiapkan ujian pra kualifikasi', NULL, NULL, 2, '2023-08-09', NULL, 2, '2024-01-01', 0, NULL, NULL, '2025-01-15', NULL, 0, '-', '2022-05-24 04:25:25', '2022-05-24 04:25:25', NULL),
(17, 'EV-1653366528', '198601252016113201', 'IQLIMA DWI KURNIA', 'Fakultas Keperawatan', 'S3', 0, 'S3 Keperawatan', 'Fakultas Keperawatan Universitas Airlangga', 2, NULL, 'Dr. Yuni Sufyanti Arief, S.Kp.,M.Kes', 'Dr. Mira Triharini, S.Kp.,M.Kes', 'PENGEMBANGAN MODEL MODELING TERHADAP PENINGKATAN PERILAKU IBU DALAM STIMULASI  MULTISENSORI PADA BAYI DENGAN PENDEKATAN HPM', 5, 'Akan segera melakukan konsultasi ke pembimbing', NULL, NULL, 2, '2023-07-25', NULL, 2, '2023-05-23', NULL, NULL, NULL, '2024-05-10', NULL, 20, NULL, '2022-05-24 04:28:48', '2022-05-24 04:28:48', NULL),
(18, 'EV-1653367287', '198705022015042002', 'RR DIAN TRISTIANA', 'Fakultas Keperawatan', 'S3', 0, 'S3 Keperawatan', 'Universitas Airlangga', 2, NULL, 'Prof Dr Ah Yusuf, S.Kp.M.kes.', NULL, 'Keperawatan Jiwa', 0, 'Perkuliahan akan dimulai pada 1 September 2022. Upaya untuk semester awal adalah mulai melakukan studi literatur terkait topik penelitian disertasi dan mengikuti perkuliahan sesuai yang dijadwalkan dari prodi Doktor Keperawatan', NULL, NULL, 2, '2023-09-19', NULL, 2, '2023-10-26', NULL, NULL, NULL, '2025-09-30', NULL, 0, NULL, '2022-05-24 04:41:27', '2022-05-24 04:41:27', NULL),
(34, 'EV-1653378163', '198406062015042001', 'RETNAYU PRADANIE', 'Fakultas Keperawatan', 'S3', 0, 'Doktor Keperawatan', 'Fakultas Keperawatan', 2, NULL, 'Dr. Esti Yunitasari, S.Kp., M.Kes', 'Dr. Mira Triharini, S.Kp., M.Kep', 'Pengembangan model pencegahan pernikahan dini', 0, 'baru mau akan dikukuhkan menjadi mahasiswa baru', NULL, NULL, 2, '2023-08-24', NULL, 2, '2023-11-24', NULL, NULL, NULL, '2024-03-24', NULL, 0, NULL, '2022-05-24 07:42:43', '2022-05-24 07:42:43', NULL),
(38, 'EV-1653378661', '198304052014042002', 'LAILY HIDAYATI', 'Fakultas Keperawatan', 'S1', 8, 'S3 KEPERAWATAN', 'FAKULTAS KEPERAWATAN UNIVERSITAS AIRLANGGA', 2, NULL, '-', '-', 'KUSTA', 25, 'penulisan draft proposal disertasi', NULL, NULL, 2, '2022-07-25', NULL, 2, '2023-06-05', NULL, NULL, NULL, '2023-08-28', NULL, 25, 'kendala personal dan keluarga', '2022-05-24 07:51:01', '2022-05-24 07:51:01', NULL),
(44, 'EV-1653379879', '198505252016113101', 'SETHO HADISUYATMANA', 'Fakultas Keperawatan', 'S1', 5, 'Dept. of Public Health, School of Psychology and Public Health', 'La Trobe University', 2, NULL, 'Prof. James H Boyd', NULL, 'REINVENTING HEALTH CARE DELIVERY FOR MEN LIVING WITH TYPE-2 DIABETES MELLITUS IN INDONESIA', 60, 'Sub penelitian 1 dan 2 sudah selesai. Sub penelitian 1 sudah terpublikasi dalam bentuk artikel jurnal, sedangkan sub penelitian 2 sedang dalam proses submisi. Sub penelitian 3 dan 4 sedang dalam tahap pengumpulan data dan analisis secara simultan', NULL, NULL, 1, '2020-12-11', '/uploads/evaluation/proposal_file/1653379879_COC.pdf', 1, '2022-01-28', 80, '/uploads/evaluation/similarity_file/1653379879_MCR.pdf', NULL, '2023-04-30', NULL, 80, 'Supervisor 2 (Dr Gulzar Malik) sedang mengalami kendala kesehatan akibat Long-COVID. Beliau adalah ahli pada metodologi sub-penelitian 4 yang menentukan kecukupan analisa data yang menjadi landasan keputusan penyelesaian pengambilan data penelitian. Karenanya, saat ini saya belum dapat melanjutkan langkah nyata penyelesaian sub-penelitian 4 yang menjadi inti pembahasan pada disertasi yang disusun', '2022-05-24 08:11:19', '2022-05-24 08:11:19', NULL),
(45, 'EV-1653384061', '198104222006041002', 'RIZA ALIFIANTO KURNIAWAN', 'Fakultas Hukum', 'S1', 7, 'Doktor Ilmu Hukum', 'Fakultas Hukum UNAIR', 2, NULL, 'Prof Nur Basuki Minarno', 'Dr. Toetik Rahayuningsih', 'Kejahatan Terorganisasi', 80, 'Ujian Kelayakan', NULL, NULL, 1, '2019-12-16', NULL, 2, '2022-06-24', NULL, NULL, NULL, '2022-08-24', NULL, 80, NULL, '2022-05-24 09:21:01', '2022-05-24 09:21:01', NULL),
(46, 'EV-1653399546', '199107072016113201', 'WILDA PRIHATININGTYAS', 'Fakultas Hukum', 'S1', 2, 'Doktor Ilmu Hukum', 'Universitas Airlangga', 2, NULL, 'Dr. Suparto Wijoyo, S.H., M.Hum.', 'Dr. Radian Salman, S.H., LL.M.', 'Prinsip Keseimbangan dalam Pengelolaan Hutan Lestari sebagai Landasan Pengaturan  Perdagangan Karbon (Carbon Trading)', 10, 'Langkah konkrit yang akan saya lakukan dalam satu semester ke depan yakni:\r\n1.	Lulus MKPKK dengan nilai yang memuaskan.\r\n2.	Finalisasi naskah proposal disertasi sesuai arahan saat ujian kualifikasi serta masukan dari Promotor dan Co-Promotor.\r\n3.	Pada akhir semester, mendaftar ujian proposal.', '/uploads/evaluation/study_semester_result/1653399546_daftar nilai_wilda p.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-24 13:39:06', '2022-05-24 13:39:06', NULL),
(47, 'EV-1653442667', '197212172007012001', 'SUGIANI', 'Perpustakaan', 'S1', 5, 'D IV Kearsipan', 'Universitas Terbuka', 2, NULL, NULL, NULL, NULL, NULL, NULL, '/uploads/evaluation/study_semester_result/1653442667_KHS Semester 4.pdf', NULL, 2, '0001-01-01', NULL, NULL, '0001-01-01', NULL, NULL, NULL, '2022-06-19', NULL, 0, NULL, '2022-05-25 01:37:47', '2022-05-25 01:37:47', NULL),
(48, 'EV-1653443640', '197710052018013201', 'Lisa Wahyuningtyasti', 'Direktorat Logistik, Keamanan, Ktertiban dan Lingkungan', 'S1', 3, 'Manajemen', 'Universitas Pembangunan Nasional Veteran Jawa Timur', 2, NULL, NULL, NULL, NULL, NULL, 'company visit untuk syarat pengambilan thesis rencana dilakukan di banyuwangi tiga perusahaan. kami masih menjaring sampai sepuluh perusahaan yang ada disepanjang pantai, IGG dan kakao', NULL, NULL, 2, '2022-09-05', NULL, 2, '2022-09-05', NULL, NULL, NULL, '2022-09-05', NULL, 30, NULL, '2022-05-25 01:54:00', '2022-05-25 01:54:32', NULL),
(49, 'EV-1653445968', '197706102008102001', 'SETIANING BUDI ASTATI', 'Fakultas Kedokteran Hewan', 'S1', 5, 'Administrasi Negara', 'Universitas Terbuka', 2, NULL, NULL, NULL, NULL, NULL, NULL, '/uploads/evaluation/study_semester_result/1653445968_Daftar Nilai Ujian sem 5 naning.pdf', NULL, 2, '2024-08-25', NULL, 2, '2024-08-25', NULL, NULL, NULL, '2024-08-25', NULL, 0, 'tidak ada', '2022-05-25 02:32:48', '2022-05-25 02:32:48', NULL),
(50, 'EV-1653449309', '199402162021093201', 'Aulia Ramadhani', 'Fakultas Kedokteran Gigi', 'S2', 4, 'Magister Administrasi dan Kebijakan Kesehatan', 'Universitas Airlangga', 1, '/uploads/evaluation/study_certificate/1666829202_Ijazah S2 Aulia Ramadhani.pdf', 'Dr. Thinni Nurul Rochmah, Dra.Ec., M.Kes', 'Dr. Taufan Bramantoro, drg., M.Kes', 'Cost Effectiveness Analysis Program Promotif dan Preventif Kesehatan Gigi Berbasis Sekolah untuk Anak Usia Sekolah Dasar', 50, 'Saat ini tahap penulisan tesis yang telah saya lakukan sampai di tahap ekstraksi data penelitian. Selanjutnya akan melakukan konsultasi dengan pembimbing, kemudian melanjutkan proses Systematic Review lainnya. Setelah ekstraksi data, saya akan melakukan penilaian kualitas atau Quality Assessment pada artikel yang termasuk dalam kriteria inklusi studi saya. Quality assessment akan dilakukan oleh dua orang, yaitu saya dan salah satu pembimbing. Setelah mendapatkan hasil, saya akan mulai melakukan analisis dan pengolahan dari data yang ada. Tidak lupa untuk mencocokkan dengan checklist sesuai dengan guidelines untuk systematic review. Untuk data keuangan, saya berencana untuk berkonsultasi dengan dosen mata kuliah Akuntansi Kesehatan atau Manajemen Keuangan Pelayanan Kesehatan. Setelah analisis data dilakukan, selanjutnya adalah penulisan hasil. Saya berencana untuk melakukan seminar hasil penelitian di Bulan Juni ini, kemudian melakukan ujian Tesis pada bulan Juli. Saya telah melakukan publikasi artikel ilmiah sebagai syarat kelulusan dan juga telah melaksanakan tes ELPT sebagai syarat kelulusan juga dengan nilai yang mencukupi.', NULL, NULL, 1, '2022-03-07', NULL, 1, '2022-07-19', NULL, NULL, NULL, '2022-08-15', NULL, 100, NULL, '2022-05-25 03:28:29', '2022-10-27 00:08:29', NULL),
(51, 'EV-1653449471', '199402162021093201', 'Aulia Ramadhani', 'Fakultas Kedokteran Gigi', 'S3', 2, 'Doctoral Program of Oral Life Science', 'Niigata University', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '2023-11-15', NULL, 2, '2024-06-10', NULL, NULL, NULL, '2024-10-28', NULL, 10, NULL, '2022-05-25 03:31:11', '2022-05-25 03:31:11', NULL),
(52, 'EV-1653450131', '198104082008101001', 'ACHMAD SUHUDI', 'Direktorat Keuangan', 'S1', 6, 'Manajemen', 'Universitas Terbuka', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '2022-09-05', NULL, 2, '2023-02-06', 6, NULL, NULL, '2023-02-06', NULL, 70, NULL, '2022-05-25 03:42:11', '2022-05-25 03:42:11', NULL),
(53, 'EV-1653454384', '198308102006042001', 'ERNI AGUSTIN', 'Fakultas Hukum', 'S3', 2, 'Ilmu Hukum', 'Universitas Airlangga', 2, NULL, 'Prof. Dr. Y. Sogar Simamora, S.H., M.Hum.', 'Dr. Trisadini P. Usanti, S.H., M.H. dan Dr. Indira Retno Aryatie, S.H., M.H.', 'Prinsip Kepentingan Terbaik bagi Anak dalam International Child Abduction akibat Putusnya Perkawinan Internasional', 20, 'Saya akan menyelesaikan proposal disertasi untuk dapat diuji pada awal semester 3.', '/uploads/evaluation/study_semester_result/1653454384_daftar nilai_erni a-Gasal 20212022.pdf', NULL, 2, '2022-09-30', NULL, 2, '2024-06-24', NULL, NULL, NULL, '2024-08-01', NULL, 20, NULL, '2022-05-25 04:53:04', '2022-05-25 04:53:52', NULL),
(54, 'EV-1653454912', '199412172019032019', 'RATNA NURLIA ALFIANDINI', 'Fakultas Kedokteran Gigi', 'S1', 6, 'Ortodonsia', 'Universitas Airlangga', 2, NULL, 'Prof. Dr. Ida Bagus Narmada, drg., Sp. Ort. (K)', 'Prof. Thalca., drg., MHPEd., Sp. Ort., Ph.D., (K)', 'Pergerakan Gigi Ortodonti', 60, 'Mengikuti ujian Karya Tulis Akhir pada bulan Juli 2022 dan mensubmit artikel penelitian sebelum 31 Juli 2022.', NULL, NULL, 1, '2021-07-25', NULL, 2, '2022-07-17', NULL, NULL, NULL, '2022-07-31', NULL, 60, 'Kendala masa studi adalah pengerjaan pasien ortodonti yang membutuhkan waktu minimal 1,5 - 2 tahun hingga dapat menyelesaikan perawatan yang baik dan optimal. Sedangkan,  studi saya dimulai pada tahun 2019 dan sejak tahun 2020 RSGM-P FKG Unair tutup karena pandemik dan baru buka kembali di pertengahan 2021. Hal tersebut membuat saya tidak bisa menyelesaikan studi dengan tepat waktu. Kendala lainnya adalah jumlah pasien yang sudah sangat berkurang karena umumnya pasien takut dengan keadaan yang masih pandemik.', '2022-05-25 05:01:52', '2022-05-25 05:01:52', NULL),
(57, 'EV-1653457899', '199107262016113201', 'ADYA PRAMUSITA', 'Fakultas Kedokteran Gigi', 'S3', 8, 'Graduate School of Dentistry University', 'Tohoku University', 2, NULL, 'Prof. Itaru Mizoguchi', NULL, 'Osteoclastogenesis and Hypertension', 80, 'Akan mengumpulkan naskah disertasi di akhir mei', '/uploads/evaluation/study_semester_result/1653457899_KHS.pdf', NULL, 1, '2019-05-14', NULL, 1, '2022-04-04', 75, NULL, NULL, '2022-08-04', NULL, 50, NULL, '2022-05-25 05:51:39', '2022-05-25 05:51:39', NULL),
(58, 'EV-1653458195', '197803272008121002', 'TUWANKU ARIA AULIANDRI', 'Fakultas Ekonomi dan Bisnis', 'S3', 12, 'Manajemen', 'Universitas Brawijaya', 2, NULL, 'Prof. Armanu', 'Dr. Fatkur Rohman', 'NIAT PEMBELIAN PRODUK  DENGAN KEMASAN RAMAH LINGKUNGAN  PADA KONSUMEN REMAJA DI INDONESIA', 70, 'Rutin bimbingan ke promotor', NULL, NULL, 1, '2018-12-01', NULL, 2, '2022-12-01', NULL, NULL, NULL, '2022-12-01', NULL, 70, NULL, '2022-05-25 05:56:35', '2022-05-25 05:56:35', NULL),
(59, 'EV-1653459198', '198011122018013101', 'Joko Susanto', 'Fakultas Ekonomi dan Bisnis', 'S1', 5, 'Manajemen', 'Universitas Terbuka', 2, NULL, 'Dr. Suparti', NULL, 'Perilaku Kinerja Karyawan pada Instansi Pemerintah di kota Surabaya', 10, 'tetap berupaya selesai kuliah sesuai dengan jadwal yang ditentukan dan berupaya semaksimal mungkin mencapai target nilai yang memuaskan', '/uploads/evaluation/study_semester_result/1653459198_KHS sem 4.pdf', NULL, 2, '2023-02-08', NULL, 2, '2022-05-25', NULL, NULL, NULL, '2023-10-18', NULL, 90, 'sampai saat ini kendala yang sering kali terjadi hanya terdapat pada koneksi jaringan untuk kuliah online', '2022-05-25 06:13:18', '2022-05-25 06:13:18', NULL),
(60, 'EV-1653459689', '197502132005012002', 'ENDANG FITRIYAH MANNAN', 'Fakultas Vokasi', 'S3', 7, 'Ilmu Perpustakaan', 'Universiti Teknologi Mara', 2, NULL, NULL, NULL, NULL, 80, 'Saya akan fokus untuk menulis chapter 6 dan 7 lalu submit untuk ujian akhir', NULL, NULL, 1, '2019-12-17', '/uploads/evaluation/proposal_file/1653459689_keputusan endang_DRP.pdf', 2, '2022-10-26', NULL, NULL, NULL, '2022-12-21', NULL, 80, 'Kendala selama studi adalah pada saat pengambilan data penelitian bersamaan dengan musim pandemi awal, dimana semua sekolah yang menjadi lokasi penelitian ditutup. Budaya komunikasi via email belum mjd kebiasaan di hampir semua sekolah, sehingga terkendala komunikasi yang pd akhirnya memperlambat proses pengambilan data.', '2022-05-25 06:21:29', '2022-05-25 06:21:29', NULL),
(61, 'EV-1653487373', '198303242006042002', 'ZENDY WULAN AYU WIDHI PRAMESWARI', 'Fakultas Hukum', 'S3', 1, 'Doktor Ilmu Hukum', 'Fakultas Hukum Universitas Airlangga', 2, NULL, 'Dr. Sukardi, S.H.,M.H.', NULL, 'Perlindungan Hak Konstitusional Anak yang Mempunyai Kewarganegaraan Ganda Terbatas', 10, 'Menempuh MKPKK', '/uploads/evaluation/study_semester_result/1653487373_daftar nilai_zendy.pdf', NULL, 2, '2022-09-25', NULL, NULL, '2023-09-25', NULL, NULL, NULL, '2024-09-25', NULL, 20, 'Tidak ada', '2022-05-25 14:02:53', '2022-05-25 14:02:53', NULL),
(62, 'EV-1653622002', '198110282006041003', 'INDRA KHARISMA RAHARJANA', 'Fakultas Sains dan Teknologi', 'S3', 8, 'Ilmu Komputer', 'Institut Teknologi Sepuluh Nopember', 2, NULL, 'Daniel Oranova Siahaan, S.Kom, M.Sc, PD.Eng', 'Dr.Eng. Chastine Fatichah, S.Kom, M.Kom', 'Ekstraksi User Stories Dari Berita Online Untuk Elisitasi Kebutuhan Perangkat Lunak', 90, 'Menyelesaikan penulisan buku disertasi dan melakukan publikasi hasil penelitian pada tahun 2022.', '/uploads/evaluation/study_semester_result/1653622002_TRANSKRIP MATA KULIAH.pdf', NULL, 1, '2021-01-14', NULL, 2, '2022-12-31', NULL, NULL, NULL, '2022-12-31', NULL, 90, 'Hambatan yang dialami saat ini adalah  Pembagian waktu antara tugas di UNAIR dan sebagai mahasiswa di ITS (status ijin belajar)', '2022-05-27 03:26:42', '2022-05-27 03:26:42', NULL),
(63, 'EV-1653625371', '199009292022013101', 'Kukuh Leksono Suminaring Aditya', 'Fakultas Hukum', 'S3', 2, 'Doktor Ilmu Hukum', 'Universitas Airlangga', 2, NULL, 'Prof. Dr. M Hadi Shubhan, S.H., M.H., CN', 'Dr. Trisadini Prasastinah Usanti, S.H., M.H.', 'Kepailitan Sebagai Model Penagihan Denda Administratif Komisi Pengawas Persaingan Usaha', 30, 'Tugas MKPKK 1 (Hukum dan Teori Keadilan), digunakan sebagai penyempurnaan kerangka teoritik;\r\nTUgas MKPKK 2 ( Perkembangan Hukum Perdata), digunakan sebagai landasan untuk penyusunan Bab II Draft Disertasi;\r\nFollow up ke panitia I-Clas 2021 (UiTM Malaysia) mengenai status publikasi artikel yang selected ke Jurnal Scopus Q3', '/uploads/evaluation/study_semester_result/1653625371_daftar nilai_kukuh l.pdf', NULL, 2, '2022-09-06', NULL, 2, '2022-06-01', NULL, NULL, NULL, '2024-09-05', NULL, 100, '- Tugas administratif sebagai tim pengisi borang akreditasi baik nasional maupun internasional, implikasi sedikit berpengaruh terhadap proses pengerjaan tugas S3. Namun dapat teratasi dengan cukup baik.\r\n- Lamanya proses publikasi artikel dari International Conference (status selected to be published di UUM Journal of Legal Studies (Q3))', '2022-05-27 04:22:51', '2022-05-27 04:22:51', NULL),
(64, 'EV-1653633633', '199105012014042001', 'Reiska Kumala Bakti', 'Fakultas Kedokteran Gigi', 'S3', 8, 'Graduate School of Dentistry', 'Tohoku University', 2, NULL, 'Professor Shunji Sugawara, DDS, PhD', 'Toshinobu Kuroishi, PhD', 'Studi Peningkatan Efek Terapi Sublingual Immunotherapy oleh Vitamin D3', 90, 'Penyelesaian penulisan Tugas Akhir, pengajuan artikel ilmiah, dan persiapan pengajuan sidang akhir', NULL, NULL, 1, '2019-05-14', NULL, 1, '2019-05-14', NULL, NULL, NULL, '2022-08-01', NULL, 90, 'Mekanisme dalam hasil penelitian belum sepenuhnya bisa dtemukan', '2022-05-27 06:40:33', '2022-05-27 06:40:33', NULL),
(65, 'EV-1653637438', '198011192008102001', 'ANDRIANI', 'Fakultas Sains dan Teknologi Universitas Airlangga', 'S2', NULL, 'Magister Manajemen', 'Universitas 17 Agustus 1945 Surabaya', 1, '/uploads/evaluation/study_certificate/1653637438_8. Ijazah S2 andriani.pdf', 'Dr. H. Slamet Riyadi, M.Si., Ak., CA.', 'Dr. Riyadi Nugroho, MM.', 'PENGARUH KOMPETENSI, MOTIVASI KERJA DAN KOMPENSASI TERHADAP KEPUASAN KERJA DAN KINERJA TENAGA KEPENDIDIKAN DI FAKULTAS SAINS DAN TEKNOLOGI UNIVERSITAS AIRLANGGA SURABAYA', NULL, NULL, NULL, NULL, 1, '2020-10-16', '/uploads/evaluation/proposal_file/1653637438_Surat persetujuan penguji_MM51_1261900011_Andriani.pdf', 1, '2020-10-16', NULL, NULL, NULL, '2021-01-16', '/uploads/evaluation/end_test_file/1653637438_Surat persetujuan penguji_MM51_1261900011_Andriani.pdf', 100, NULL, '2022-05-27 07:43:58', '2022-05-27 07:43:58', NULL),
(66, 'EV-1653638321', '197706122009122001', 'PARWATI HADI NOORSANTI', 'Fakultas Ilmu Budaya', 'S3', 6, 'Ilmu-Ilmu Humaniora', 'Universitas Gadjah Mada', 2, NULL, 'Prof D.r Wening Udasmoro, DEA', 'Dr. Tatang Hariri, M.A', 'Strategi Bahasa Politikus Permpuan Jepang', 30, 'Menyelesaiakan data dan bab 3', '/uploads/evaluation/study_semester_result/1653638321_Kartu Hasil Studi Semester Genap 2021-2022.pdf', '/uploads/evaluation/study_presence/1653638321_d borang konsultasi Parwati Hadi Noorsanti.pdf', 1, '2021-07-15', '/uploads/evaluation/proposal_file/1653638321_c permohonan ujian komprehensif Parwati Hadi Noorsanti-ttd ok.pdf', 2, '2022-09-30', NULL, NULL, NULL, '2023-02-27', NULL, 50, 'pengumpulan data dan informasi  terkini dari koran di jepang', '2022-05-27 07:58:41', '2022-05-27 08:05:28', NULL),
(67, 'EV-1653646402', '196906231997022001', 'SRI ENDAH KINASIH', 'Fakultas Ilmu Sosial dan Ilmu Politik', 'S3', 7, 'Ilmu Sosial', 'Fakultas Ilmu Sosial dan Ilmu Politik', 2, NULL, 'Dr.Phill. Toetik Koesbardiati, Dra.', 'Dr. Shrimarti Rukmini Devy, Dra.,M.Kes.', 'Becoming a Risk Society  : Kerentanan Pekerja Migran Indonesia  Purna Tugas di Era Modernitas Refleksif', 80, 'Disertasi Saya masih dalam Proses Proofread dalam bahasa Indonesia yang baik. Apabila ini sudah, langsng melaksanakan  Seminar Hasil, Ujian Kelayakan, Seminar Tertutup dan UDT', NULL, NULL, 1, '2021-03-22', '/uploads/evaluation/proposal_file/1653646402_Berita acara Perbaikan proposal sri Endah Kinasih (2).docx', 2, '2022-08-27', NULL, NULL, NULL, '2022-09-27', NULL, 80, 'Terlalu Lama sejak tanggal 4 April 2022 Proofread sampai saat ini, saya mendapatkan evaluasi belum selesai.', '2022-05-27 10:13:22', '2022-05-27 10:13:22', NULL),
(68, 'EV-1653657434', '198303272016113201', 'VIQI ARDANIAH', 'Fakultas Ilmu Budaya', 'S1', 6, 'Business Administration', 'Asia University', 2, NULL, 'Ming Lang Tseng', NULL, 'Sustainability Transition', 75, 'Penulisan paper untuk publikasi ke 6 dan ke 7', '/uploads/evaluation/study_semester_result/1653657434_TRanscript.pdf', NULL, 1, '2021-11-10', '/uploads/evaluation/proposal_file/1653657434_Ph.D. Candidacy Certificate.pdf', 2, '2023-05-24', 75, NULL, NULL, '2023-05-31', NULL, 75, 'Tema baru di tiap publikasi dan publikasi harus di SSCI atau SCI. Dosbing tidak menerima SCOPUS', '2022-05-27 13:17:14', '2022-05-27 13:19:25', NULL),
(69, 'EV-1653700487', '196908101997021001', 'MOCH. JALAL', 'Fakultas Ilmu Budaya', 'S3', 8, 'Ilmu Sosial', 'Universitas Airlangga', 2, NULL, 'Prof. Dra. MYRTATI DYAH ARTARIA, MA., Ph.D', 'Dr. Ida Nurul Chasanah, M.Hum.', 'Performansi ludruk Jawa Timur Era New Media(Studi perspektif teori globalisasi Arjun Appadurai)', 20, 'Akan lebih intensif dalam berkonsultasi, melaksanakan ujian proposal disertasi.', '/uploads/evaluation/study_semester_result/1666748293_KHS Moch Jalal Genap 2019.pdf', NULL, 2, '2022-07-29', NULL, 2, '2022-08-05', NULL, NULL, NULL, '2023-01-31', NULL, 99, 'Masih proses penyelesaian MKPD dan ujian proposal disertasi', '2022-05-28 01:14:47', '2022-10-26 01:38:13', NULL),
(70, 'EV-1653713139', '197904082015043201', 'TIA SARASWATI', 'Fakultas Ilmu Budaya', 'S3', 1, 'S3 Kajian Budaya dan Media', 'Universitas Gadjah Mada', 2, NULL, 'Prof. Dr. Wening Udasmoro, S.S., M.Hum, DEA', 'Dr. Ratna Noviani', 'Wacana Transgender dalam Sinema Jepang Close Knits (2017) dan Midnight Swan (2020)', 20, 'Perbaikan proposal penelitian di semester 2 dengan mencermati data berupa sinema Jepang, mempelajari teori untuk analis data dan menentukan tinjauan pustaka', '/uploads/evaluation/study_semester_result/1653713139_Transkrip Sementara Semester Gasal 2021-2022.pdf', NULL, 2, '2023-08-28', NULL, 2, '2023-07-28', 20, NULL, NULL, '2025-01-28', NULL, 20, 'TIDAK ADA', '2022-05-28 04:45:39', '2022-05-28 04:45:39', NULL),
(71, 'EV-1653794463', '199905072019105101', 'Achmad Hasbi Ashshiddiqi', 'Fakultas Ilmu Budaya', 'S1', 1, 'Teknik Informatika', 'Universitas Narotama', 2, NULL, 'Latipahs.T., M.IT', NULL, NULL, NULL, 'terus selalu semangat belajar dan tidak mudah puas dengan capaian', '/uploads/evaluation/study_semester_result/1653794463_Daftar_KHS_Mahasiswa.pdf', NULL, 2, '2025-01-15', NULL, 2, '2025-01-29', NULL, NULL, NULL, '2025-02-19', NULL, 20, 'karena pandemi kelas masih online kurang paham dengan pembelajaran yang disampaikan dosen pengajar', '2022-05-29 03:21:03', '2022-05-29 03:24:36', NULL),
(72, 'EV-1653822813', '198405252016113201', 'HERDINA MARIYANTI', 'Fakultas Keperawatan', 'S3', 9, 'Educational Psychology', 'Universiti Teknologi Malaysia', 2, NULL, 'Prof.Dr.Yeo Kee Jiar', NULL, 'learning experiences and caring practices in clinical setting', 100, 'Lulus', NULL, NULL, 1, '2019-05-14', NULL, 1, '2022-01-01', NULL, NULL, NULL, '2022-06-13', NULL, 100, NULL, '2022-05-29 11:13:33', '2022-05-29 11:13:33', NULL),
(73, 'EV-1653865415', '197312142001122001', 'LUSVITA FITRI NUZULIYANTI', 'Fakultas Ilmu Budaya', 'S1', 21, 'Sastra Inggris', 'Fakultas Ilmu Budaya', 2, NULL, 'Prof. Bart Barendregt', NULL, 'Analisis wacana, studi budaya popular', 85, 'Saya masih mengalami banyak kesulitan namun saya berusaha untuk konsisten dan tidak mengubah arah disertasi saya. Hal ini sudah berhasil saya lakukan. Saya berusaha untuk membangun kerangka teori yang mendalam dan melakukan analisis (ulang) data dengan lebih teliti berdasarkan kerangka teori tersebut. Saya berusaha untuk mengatasi tekanan psikologis dengan cara membuka diri, dan kembali melibatkan diri dan berdiskusi dengan kolega di FIB. Saya juga berusaha untuk memberikan target yang realistis untuk diri saya sendiri untuk mengurangi tekanan psikologis yang justru membuat proses penulisan menjadi semakin lambat. Dengan menimbang kondisi-kondisi tersebut di atas, dengan saya sedang menyelesaikan revisi 3 bab dari proyeksi 5 bab keseluruhan. Target untuk submit  penyelesaian adalah Agustus 2022.', NULL, NULL, 1, '2012-05-12', NULL, 1, '2014-10-23', 75, NULL, NULL, '2023-04-18', NULL, 70, 'Saya telah berhasil menyelesaikan seminar proposal dan seminar hasil penelitian. Yang menjadi masalah adalah penulisan dan penyelesaian disertasi tersebut.\r\n\r\nPenyebabnya adalah:\r\n1. Saya banyak mengubah arah disertasi. \r\nSaya tidak memiliki masalah dalam bahasa Inggris akademis. Kelemah mendasar saya adalah tidak mampu membedakan atau memilih argumen yang teapot dan relevan. Saya juga kurang mampu menghilangkan detail detail yang tidak perlu dan tidak berhubungan dengan topik. Penulisan menjadi berkepanjangan, bertele tele dan tidak fokus. Pembimbing telah memberikan arahan tentang kelemahan-kelemahan tersebut. Terlalu sering mengubah arah disertasi mengakibatkan lemahnya penulisan latar belakang teori dan mentahnya pengolahan data. \r\n2. Rendahnya rasa percaya diri dan konsentrasi yang memperburuk kondisi psikologi\r\nWaktu penulisan yang sangat lama membuat rasa percaya diri saya menurun dan memberikan tekanan yang sangat besar dan membaut saya tidak mampu untuk berkonsentrasi dengan baik untuk mempercepat penulisan. Target penulisan yang tidak tercapai membuat saya makin tertekan dan tidak mampu menyelesaikan bab yang sedang saya tulis. Karena rendahnya rasa percaya diri tersebut, saya juga menutup diri dan menghindari interaksi dengan teman dan kolega yang mungkin mampu memberikan input untuk saya.', '2022-05-29 23:03:35', '2022-05-31 03:30:18', NULL),
(74, 'EV-1653872784', '199006292018013201', 'Dwi Marina', 'Perpustakaan', 'S1', 2, 'Ilmu Informasi dan Perpustakaan', 'Universitas Terbuka', 2, NULL, NULL, NULL, NULL, NULL, NULL, '/uploads/evaluation/study_semester_result/1653872784_Daftar Nilai UT 2022 Dwi Marina.Pdf', NULL, 2, '0001-01-01', NULL, 2, '0001-01-01', 0, NULL, NULL, '2022-06-18', NULL, 0, NULL, '2022-05-30 01:06:24', '2022-05-30 02:13:35', NULL),
(75, 'EV-1653877753', '198508262018013201', 'Indah Fatma Silvi', 'Perpustakaan', 'S1', 2, 'Ilmu Informasi dan Perpustakaan', 'Universitas Terbuka', 2, NULL, NULL, NULL, NULL, NULL, NULL, '/uploads/evaluation/study_semester_result/1653877753_kuliah sem I.pdf', NULL, 2, '0001-01-01', NULL, 2, '0001-01-01', NULL, NULL, NULL, '2022-06-18', NULL, 0, NULL, '2022-05-30 02:29:13', '2022-05-30 02:29:13', NULL),
(76, 'EV-1653879661', '196609261994032001', 'RATNA DAMAYANTI', 'Fakultas Kedokteran Hewan', 'S3', 8, 'Sains Veteriner', 'FKH', 2, NULL, 'Prof Dr. Anwar Ma\'ruf, drh., M.Kes.', NULL, 'Protein STAT', 20, 'Penelitian', NULL, NULL, 2, '2022-12-30', NULL, 2, '2023-12-30', NULL, NULL, NULL, '2023-12-30', NULL, 15, 'Masih mengemban tugas akademik dan non akademik', '2022-05-30 03:01:01', '2022-05-30 03:01:01', NULL),
(77, 'EV-1653880718', '199110152015043201', 'SITI ELIANA ROCHMI', 'Fakultas Vokasi', 'S3', 8, 'Sains Veteriner', 'FKH', 2, NULL, 'Prof. Sri Agus Sudjarwo, drh., M.S., Ph.D', NULL, 'Spermatozoa Ayam', 20, 'Penelitian dan belajar TOEFL', NULL, NULL, 2, '2022-12-30', NULL, 2, '2023-12-30', NULL, NULL, NULL, '2023-12-30', NULL, 20, 'Masih mengemban tugas akademik dan non akademik', '2022-05-30 03:18:38', '2022-05-30 03:18:38', NULL),
(78, 'EV-1653881582', '199009182018013101', 'Bayu Lukito Nugroho', 'Lembaga Pengabdian Kepada Masyarakat', 'S2', 4, 'S-2 Kebijakan Publik', 'Universitas Airlangga', 2, NULL, 'Dr. Drs. Eko Supeno, M.Si.', 'Sulikah Asmorowati, S.Sos., M.Dev.St., Ph.D.', 'Kebijakan Fiskal (Keuangan Daerah) di Indonesia', 20, 'Segera mengajukan proposal tesis ke dosen pembimbing dan menyelesaikan penulisan', '/uploads/evaluation/study_semester_result/1653881582_KHS Bayu Lukito Nugroho.pdf', NULL, 2, '2022-07-31', NULL, 2, '2022-07-24', NULL, NULL, NULL, '2022-09-30', NULL, 20, 'Sulit meluangkan waktu untuk menulis di saat pekerjaan di kantor sedang banyak', '2022-05-30 03:33:02', '2022-05-30 03:33:02', NULL),
(79, 'EV-1653884128', '197203241999031001', 'ANDY UMARDIONO', 'Fakultas Vokasi', 'S3', 8, 'Kebijakan Pariwisata', 'Sekolah Pasca Sarjana UGM Yogyakarta', 2, NULL, NULL, NULL, NULL, NULL, 'Undur Diri', NULL, NULL, 2, '2021-07-31', NULL, 2, '2021-07-31', NULL, NULL, NULL, '2021-07-31', NULL, 0, 'Kendala internal keluarga dan kondisi fisik', '2022-05-30 04:15:28', '2022-05-30 04:15:28', NULL),
(80, 'EV-1653885135', '198707172015042002', 'RISTA FAUZININGTYAS', 'Fakultas Keperawatan', 'S3', 5, 'Department of Nursing Science', 'Faculty of Medicine University of Malaya Malaysia', 2, NULL, 'Ass. Prof Dr. Chong Mei Chan', 'Prof. Dr. Tan Maw Pin', '\"UNDERSTANDING OF THE RESIDENT SAFETY CULTURE AND QUALITY OF CARE IN NURSING HOME LOCATED IN      INDONESIA: A MIXED METHOD STUDY\"', 60, 'Pada minggu ke 3 bulan Januari akan dilakukan wawancara terakhir terhadap 8 responden, setelah itu proses transcribing dan penerjamahan dilakukan. Rencana untuk studi semester depan adalah menyelesaikan chapter 4, 5, 6 dan 7 dan mempersiapkan untuk candidature defense di semester 5 ini. Selain itu, direncanakan juga menyelesaikan drafting artikel ke 2 dan submit artikel 1.', '/uploads/evaluation/study_semester_result/1653885135_RES27AS.pdf', NULL, 1, '2020-10-30', '/uploads/evaluation/proposal_file/1653885135_CANDIDATURE DEFENCE CORRECTION REPORT FORM_Rista.docx.cmc.pdf', 1, '2023-03-30', NULL, NULL, NULL, '2022-06-30', NULL, 50, 'Pandemi covid sehingga delay dalam pengambilan data dan pengurusan perizinan', '2022-05-30 04:32:15', '2022-05-30 04:32:15', NULL),
(81, 'EV-1653885469', '198402012014042001', 'ERNA DWI WAHYUNI', 'Fakultas Keperawatan', 'S3', 3, 'Doktor Keperawatan', 'Universitas Airlangga', 2, NULL, 'Prof. Dr. Nursalam, M.Nurs.(Hons)', 'Dr. Yulis Setiya Dewi, S.Kep.Ns.,MNg.', 'Electronic Nursing Record (ENR) di ICU dengan pendekatan 3S (SDKI, SLKI, SIKI) terhadap Kualitas Dokumentasi Keperawatan dan Keselamatan Pasien', 20, 'Saya akan lebih semangat dan rajin dalam menulis dan melakukan pembimbingan kepada pembimbing maupun konsultan.', '/uploads/evaluation/study_semester_result/1653885469_KHS DAN TRANKRIP ERNA STAMP20220530_11005738.pdf', NULL, 2, '2022-08-30', NULL, 2, '2022-10-21', NULL, NULL, NULL, '2023-11-30', NULL, 30, 'Kendala terbesar dari dalam diri, yaitu terkiat dengan manajemen waktu dan penyelesaian tugas', '2022-05-30 04:37:49', '2022-10-28 15:19:26', NULL),
(82, 'EV-1653889410', '198208242003121002', 'FARID ANDRIANSYAH ZAKARIA', 'Direktorat Sistem Informasi', 'S2', 4, 'S2 PSDM', 'UNAIR', 2, NULL, 'Prof. Sutinah', NULL, 'Pengaruh persepsi penerimaan teknologi terhadap perilaku dosen mengajar mahasiswa melalui minat menggunakan e-learning sebagai mediasi di universitas airlangga pada masa pandemi covid-19', 99, 'menyelesaikan studi secepatnya', NULL, NULL, 1, '2021-08-24', '/uploads/evaluation/proposal_file/1653889410_PROPOSAL THESIS Revisi 2.docx', 1, '2022-05-01', NULL, NULL, NULL, '2022-05-12', '/uploads/evaluation/end_test_file/1653889410_2589 Farid Andriansyah Zakaria 092014253018.pdf', 100, NULL, '2022-05-30 05:43:30', '2022-05-30 05:43:30', NULL),
(83, 'EV-1653889952', '198604082009122003', 'FANNI OKVIASANTI', 'Fakultas Vokasi', 'S3', 8, 'Doktor Keperawatan', 'Universitas Airlangga', 2, NULL, 'Prof. Dr. Ah. Yusuf, S.Kp., M.Kes.', 'Dr. Ninuk Dian Kurniawati, S.Kep., Ns., MANP', 'Pengembangan Model Keperawatan Spiritual dalam Meningkatkan Kualitas Hidup Pasien Gagal Jantung', 75, 'Menyelesaikan penulisan lapora disertasi. Menyelesaikan publikasi artikel penelitian.', '/uploads/evaluation/study_semester_result/1653889952_KHS-131811573013.pdf', NULL, 1, '2019-06-24', '/uploads/evaluation/proposal_file/1653889952_Berita Acara Fanni0001.pdf', 2, '2022-07-30', NULL, NULL, NULL, '2022-07-30', NULL, 75, 'Sulit memanajemen waktu.', '2022-05-30 05:52:32', '2022-05-30 05:52:32', NULL),
(84, 'EV-1653891379', '198106262014061003', 'Joko Susanto', 'Prodi D3 Keperawatan Fakultas Vokasi', 'S3', 2, 'S3 Ilmu Keperawatan', 'Universitas Airlangga', 2, NULL, 'Prof. Dr. Ah. Yusuf, S.Kp., M. Kes. (Promotor)', 'Ferry Efendi, S.Kep., Ns., M.Sc., Ph.D. (Ko Promotor)', 'Pengembangan Model Keperawatan Penyakit Kronis Berbasis Family Centered Nursing Terhadap Kemandirian Keluarga Merawat Lansia Dengan Hipertensi', 25, 'Tahapan Ujian di Prodi S3 Keperawatan adalah 12 tahap, saat ini saya sudah selesai pada tahap 3 yaitu ujian seminar berkala 1.\r\nSaya akan lebih rajin untuk konsultasi', '/uploads/evaluation/study_semester_result/1653891379_KHS-132021573002_Semester 2_Joko Susanto.pdf', '/uploads/evaluation/study_presence/1653891379_Pengesahan Berita Acara perbaikan kualifikasi_Seluruh Penguji_ Untuk Progres.pdf', 2, '2023-02-13', NULL, 2, '2024-02-23', NULL, NULL, NULL, '2024-12-30', NULL, 25, 'belum ada, saat ini sudah berproses sesuai tahapan', '2022-05-30 06:16:19', '2022-05-30 06:17:33', NULL),
(85, 'EV-1653892867', '198704252016033201', 'RISKA NUR ROSYIDIANA', 'Fakultas Vokasi', 'S3', 1, 'Ilmu Akuntansi', 'Universitas Airlangga', 2, NULL, NULL, NULL, NULL, 5, 'Perkuliahan baru akan dimulai semester depan', NULL, NULL, 2, '2024-08-01', NULL, 2, '2024-09-01', NULL, NULL, NULL, '2025-08-01', NULL, 5, NULL, '2022-05-30 06:41:07', '2022-05-30 06:41:07', NULL),
(86, 'EV-1653896259', '199310252018013101', 'Nikita Athari Lanes', 'Fakultas Vokasi', 'S2', 4, 'Pengembangan SDM', 'Universitas Airlangga', 2, NULL, 'Dr Fajrianthi', NULL, 'PENGARUH MOTIVASI KERJA, ADAPTASI KERJA, DAN EMPLOYEE ENGAGEMENT TERHADAP KINERJA BABY BOOMERS DAN GENERASI Y YANG DI MODERASI OLEH PELATIHAN KERJA DI FAKULTAS VOKASI UNIVERSITAS AIRLANGGA', 20, 'Lebih fokus untuk mengerjakan revisian dari dosen pembimbing', '/uploads/evaluation/study_semester_result/1653896259_KHS-092014253017.pdf', NULL, 2, '2022-06-30', NULL, 2, '2022-07-30', NULL, NULL, NULL, '2022-08-31', NULL, 70, 'Kurang meluangkan waktu untuk mengerjakan revisian thesis saja, untuk ELPT dan publikasi di jurnal sudah selesai', '2022-05-30 07:37:39', '2022-05-30 07:37:39', NULL),
(87, 'EV-1653897121', '198204252005012002', 'CHRISTIANI WIDOWATI', 'Fakultas Hukum', 'S3', 5, 'Program Doktor Ilmu Hukum', 'Universitas Gadjah Mada', 2, NULL, 'Prof. Dr. Tata Wijayanta, S.H., M.Hum.', 'Herliana, S.H., M.Comm(Law)., Ph.D.', 'Asas Ius Contra Legem Dalam Penemuan Hukum Oleh Hakim', 60, 'Revisi terhadap proposal saya telah selesai saya kerjakan dan telah mendapatkan pengesahan dari seluruh penguji, promotor dan kopromotor, serta dekan Fakultas Hukum Universitas Gadjah Mada. Pengesahan revisi proposal tersebut merupakan persyaratan bagi saya untuk dapat melakukan penelitian disertasi. Pengesahan revisi proposal saya ini merupakan capaian saya pada semester 4. Selanjutnya pada semester 5 ini saya akan melakukan penelitian disertasi.', '/uploads/evaluation/study_semester_result/1653897121_Transkrip Nilai Sementara Christiani Widowati.pdf', NULL, 1, '2020-10-19', '/uploads/evaluation/proposal_file/1653897121_Pengesahan Revisi Usulan Penelitian Disertasi Christiani Widowati.pdf', 2, '2023-02-20', NULL, NULL, NULL, '2023-06-12', NULL, 60, 'bimbingan dilakukan secara online karena pandemi', '2022-05-30 07:52:01', '2022-05-30 07:52:01', NULL),
(88, 'EV-1653899177', '197910132010122001', 'ELIDA ULFIANA', 'Fakultas Keperawatan', 'S3', 8, 'Doktor Keperawatan', 'Fakultas Keperawatan', 2, NULL, NULL, NULL, NULL, 20, 'Melaksanakan ujian kualifikasi dan proposal serta seminar berkala', NULL, NULL, 2, '2022-08-30', NULL, 2, '2023-11-15', NULL, NULL, NULL, '2023-12-30', NULL, 25, 'Kendala personal, keluarga, dan manajemen waktu', '2022-05-30 08:26:17', '2022-05-30 08:26:17', NULL),
(89, 'EV-1653902251', '198710302020013101', 'Hakamy', 'Rumah Sakit Gigi dan Mulut Pendidikan', 'Sp.1', 2, 'Anestesiologi dan Terapi Intensif', 'Universitas Airlangga', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '2025-05-30', NULL, 2, '2025-05-30', NULL, NULL, NULL, '2025-05-30', NULL, 100, NULL, '2022-05-30 09:17:31', '2022-05-30 09:17:31', NULL),
(90, 'EV-1653902826', '198302142010122003', 'HERDIANI SULISTYO PUTRI', 'Fakultas Kedokteran', 'S3', 4, 'Ilmu Kedokteran', 'Departemen Anestesiologi dan Terapi Intensif', 2, NULL, NULL, NULL, 'Implementasi tanaman herbal sebagai preemtive analgesia pada hewan coba', 20, 'segera ujian proposal', NULL, NULL, 2, '2022-09-05', NULL, 2, '2023-02-28', NULL, NULL, NULL, '2024-01-30', NULL, 10, 'pemilihan promotor dan kopromotor yang sesuai', '2022-05-30 09:27:06', '2022-05-30 09:27:06', NULL),
(91, 'EV-1653909186', '198211142012122003', 'NUR SULASTRI', 'Rumah Sakit Universitas Airlangga', 'S3', 6, 'Doktor Ilmu Kedokteran', 'FK UNAIR', 2, NULL, 'Prof. Dr. dr. Hening Laswati, Sp.KFR(K)', 'Dr. dr. Sony Wibisono, Sp.PD-KEMD, FINASIM', NULL, 30, 'Menyelesaikan proposal\r\nMelaksanakan penelitian', '/uploads/evaluation/study_semester_result/1653909412_KHS Nur S.pdf', NULL, 2, '2022-07-20', NULL, 2, '2023-05-01', NULL, NULL, NULL, '2023-06-01', NULL, 30, NULL, '2022-05-30 11:13:06', '2022-05-30 11:16:52', NULL),
(92, 'EV-1653914328', '198608192010122006', 'DEVI RAHMA SOFIA', 'Rumah Sakit Universitas Airlangga', 'S2', 2, 'Magister Keperawatan', 'Universitas Airlangga', 2, NULL, 'Dr. Rizki Fitryasari P.K, S.Kep., Ns.,  M.Kep', 'Rr. Dian Tristiana,  S.Kep., Ns., M.Kep.', 'Infection Control', 10, 'Target toefl sudah tercapai. Pada semester ini target adalah sidang pra proposal dan proposal. Pada semester 3 semoga bisa lancar lanjut sidang hasil dan tesis. Untuk publikasi, saat ini proses memenuhi kelengkapan untuk submit di jurnal.', '/uploads/evaluation/study_semester_result/1667204272_KHS Semester I Devi Rahma Sofia.pdf', NULL, 2, '2022-07-30', NULL, 2, '2022-07-15', NULL, NULL, NULL, '2022-11-30', NULL, 40, 'Secara umum kendalanya adalah terkait teknis. Alhamdulillah masih bisa teratasi.', '2022-05-30 12:38:48', '2022-10-31 08:17:52', NULL),
(93, 'EV-1653918506', '198411022012121002', 'BARRY NUQOBA', 'Fakultas Sains dan Teknologi', 'S3', 4, 'Computer Science', 'Singapore Management University', 2, NULL, 'Prof. NGO Chong Wah', 'Prof. TAN Hwee-Pink dan Prof. Paulin Tay STRAUGHAN', 'Causal Discovery on Social Sciences', 30, '1. Melakukan kewajiban sebagai Asisten Pengajaran / Asisten Penelitian sebagai syarat kelulusan.\r\n\r\n2. Melanjutkan eksperimen untuk disertasi\r\n\r\n3. Mempersiapkan ujian proposal disertasi', '/uploads/evaluation/study_semester_result/1653918506_KHS.png', NULL, 2, '2022-12-31', NULL, 2, '2023-06-30', NULL, NULL, NULL, '2023-12-30', NULL, 30, 'Di universitas tempat studi lanjut saya, 1 tahun terdiri dari 3 term per tahun (tidak menggunakan sistem 2 semester per tahun), jadi formatnya tidak sesuai dengan pelaporan di web ini. Selain itu, beberapa kolom isian di web ini juga tidak sesuai dengan kondisi tempat kami kuliah (misalnya uji similaritas, absensi bimbingan, TOEFL sebagai syarat lulus) karena hal tersebut tidak ada di tempat studi lanjut kami. Selain itu, ada juga kolom yang kurang bisa kami pahami (misalnya Persentase Kelulusan).', '2022-05-30 13:48:26', '2022-05-30 13:48:26', NULL),
(94, 'EV-1653919076', '197712202015043101', 'DONY CHRISMANTO', 'Fakultas Vokasi', 'S3', 2, 'Sains Veteriner', 'Universitas Airlangga', 2, NULL, 'Prof. Dr. Nunuk Dyah Retno Lastuti, Drh., MS.', 'Prof. Dr. Lucia Tri Suwanti, Drh., MP', 'Deteksi keragaman genetik entamoeba pada babi', 85, 'Seminar topik dan submit jurnal', '/uploads/evaluation/study_semester_result/1653919076_KHS-062027117302.pdf', NULL, 1, '2021-12-01', '/uploads/evaluation/proposal_file/1653919076_KHS-062027117302.pdf', 2, '2022-08-20', NULL, NULL, NULL, '2022-12-25', NULL, 75, 'bahan penelitian', '2022-05-30 13:57:56', '2022-05-30 13:57:56', NULL),
(95, 'EV-1653919455', '197712202015043101', 'DONY CHRISMANTO', 'Fakultas Vokasi', 'S3', 3, 'Sains Veteriner', 'Universitas Airlangga', 2, NULL, 'Prof. Dr. Nunuk Dyah Retno Lastuti, Drh., MS.', 'Prof. Dr. Lucia Tri Suwanti, Drh., MP', 'Deteksi keragaman genetik entamoeba pada babi', 85, 'Seminar topik dan ujian kelayakan', '/uploads/evaluation/study_semester_result/1653919455_KHS-062027117302.pdf', NULL, 1, '2021-12-01', '/uploads/evaluation/proposal_file/1653919455_PROPOSAL PENELITIAN DISERTASI DONY C.docx', 2, '2022-08-15', NULL, NULL, NULL, '2022-12-25', NULL, 75, NULL, '2022-05-30 14:04:15', '2022-05-30 14:04:15', NULL),
(96, 'EV-1653958812', '198603192018013101', 'Tisna Perdana Putra', 'Perpustakaan', 'S1', 8, 'Manajemen', 'Universitas Terbuka', 1, NULL, '-', '-', '-', 100, 'Sudah menempuh seluruh mata kuliah, tinggal menunggu pengumuman Yudisium / kelulusan dari Universitas Terbuka', '/uploads/evaluation/study_semester_result/1653958812_Daftar Nilai Ujian Masa 20212.pdf', NULL, 1, '2021-12-18', '/uploads/evaluation/proposal_file/1653958812_Daftar Nilai Ujian Masa 20212.pdf', 2, '2021-12-18', NULL, NULL, NULL, '2021-12-18', '/uploads/evaluation/end_test_file/1653958812_Daftar Nilai Ujian Masa 20212.pdf', 100, 'saat ini tidak ada kendala, studi sudah selesai', '2022-05-31 01:00:12', '2022-10-25 00:44:58', NULL),
(97, 'EV-1653958989', '199304072018013101', 'Rendy Rizki Apriyadi', 'Perpustakaan', 'S1', 7, 'ilmu komunikasi', 'UNIVERSITAS AIRLANGGA', 2, NULL, NULL, NULL, NULL, NULL, NULL, '/uploads/evaluation/study_semester_result/1653958989_Daftar Nilai Ujian 20212.pdf', NULL, 2, '2022-06-29', NULL, NULL, '2022-06-30', NULL, NULL, NULL, '2022-06-18', '/uploads/evaluation/end_test_file/1653958989_UT _ KTPU 20221.pdf', 60, '-', '2022-05-31 01:03:09', '2022-10-27 07:51:45', NULL),
(98, 'EV-1653962488', '198608212014042001', 'HILDA YUNITA SABRIE', 'Fakultas Hukum', 'S3', 2, 'Doktor Ilmu Hukum', 'Universitas Airlangga', 2, NULL, 'Prof. Dr. Sogar Simamora, S.H., M.Hum', 'Dr. Zahry Vandawati Chumaida, S.H., M.H.', 'Perjanjian Konsorsium Perusahaan Asuransi Dalam Pembayaran Klaim Asuransi Akibat Kecalakaan Pesawat Udara', 20, 'Memperibaiki draft proposal, Mempersiapkan ujian proposal dan menyiapkan artikel untuk publikasi di jurnal internasional (terindeks scopus).', NULL, NULL, 2, '2022-09-09', NULL, 2, '2023-06-06', NULL, NULL, NULL, '2024-08-08', NULL, 20, NULL, '2022-05-31 02:01:28', '2022-05-31 02:01:28', NULL),
(99, 'EV-1653963540', '198702242010122006', 'ITA RATNASARI', 'Rumah Sakit Universitas Airlangga', 'S1', 3, 'AKUNTANSI', 'UNIVERSITAS TERBUKA SURABAYA', 2, NULL, NULL, NULL, NULL, 10, NULL, '/uploads/evaluation/study_semester_result/1653963623_daftar nilai ujian semester 2.pdf', NULL, 2, '2022-05-31', NULL, 2, '2022-05-31', NULL, NULL, NULL, '2022-05-31', NULL, 20, NULL, '2022-05-31 02:19:00', '2022-05-31 02:20:23', NULL),
(100, 'EV-1653969558', '198311072012122002', 'MUTIARA RIZKI HARYATI', 'Rumah Sakit Universitas Airlangga', 'Sp.2', 2, 'Ilmu Penyakit Dalam Keminatan Nefrologi', 'Universitas Airlangga', 2, NULL, 'Prof. M. Thaha SpPD KGH', NULL, 'Biomarker Preeclampsia dan AKI', 10, 'Menyusun pohon penelitian dan kerangka penelitian dan menentukan judul', NULL, NULL, 2, '2023-04-30', NULL, 2, '2025-11-30', 10, NULL, NULL, '2024-12-29', NULL, 10, NULL, '2022-05-31 03:59:18', '2022-05-31 03:59:18', NULL),
(101, 'EV-1653969631', '198106302007011001', 'IMAM CHANAFI', 'Fakultas Kedokteran Hewan', 'S1', 6, 'Administrasi Negara', 'Universitas Terbuka', 2, NULL, NULL, NULL, NULL, NULL, NULL, '/uploads/evaluation/study_semester_result/1653969631_Daftar Nilai Ujian iMAM ut.pdf', NULL, 2, '2023-07-03', NULL, 2, '2023-07-03', NULL, NULL, NULL, '2023-07-28', NULL, 100, NULL, '2022-05-31 04:00:31', '2022-05-31 04:00:31', NULL),
(102, 'EV-1653970405', '198807132012122002', 'ARDHENA EKASARI', 'Rumah Sakit Universitas Airlangga', 'Sp.1', 4, 'Keperawatan Medikal Bedah', 'Universitas Airlangga', 2, NULL, 'Prof.Dr. Nursalam,M.Nurs, Hons', 'Tri Pudy Asmarawati, dr. SP.PD', 'Ventilator associated event', 50, 'Sedang melanjutkan pengerjaan tugas akhir. Sidang proposal telah dilalui.', '/uploads/evaluation/study_semester_result/1668432706_KRS Ardhena (1).pdf', NULL, 1, '2022-07-14', '/uploads/evaluation/proposal_file/1668432706_Undangan Ujian Proposal a.n Ardhena (1).pdf', 2, '2022-08-30', NULL, NULL, NULL, '2022-08-31', NULL, 50, 'Keuangan dan pembagian waktu', '2022-05-31 04:13:25', '2022-11-14 13:33:58', NULL),
(103, 'EV-1653976758', '197909112014092004', 'KRISTIAWATI', 'Fakultas Keperawatan', 'S3', 10, 'Doktor Keperawatan', 'Fakultas Ilmu Keperawatan Universitas Indonesia', 2, NULL, 'Prof. Yeni Rustina, S.Kp., M.App.Sc., Ph.D', 'Dr. Indra Budi, S.Kom., M.Kom', 'Efektifitas perencanaan pulang bayi berat lahir rendah berbasis aplikasi mobile terhadap stress dan   kepercayaan diri ibu dalam merawat bayi', 75, 'Pada semester 10, mahasiswa mengajukan cuti akademik setelah berkonsultasi dengan promotor. Selain itu juga meminta persetujuan dari pimpinan. Hal ini dengan pertimbangan bahwa waktu studi mahasiswa tinggal satu semester. Cuti akademik ini digunakan untuk analisis data, penulisan hasil dan persiapan untuk ujian hasil dan terbuka pada semester aktif berikutnya.', '/uploads/evaluation/study_semester_result/1653978520_KHS smt 9 Kristiawati.pdf', NULL, 1, '2019-06-25', NULL, 2, '2022-12-31', NULL, NULL, NULL, '2023-01-31', NULL, 100, 'Kendala yang dihadapi oleh mahasiswa adalah terdampak oleh Covid 19 sedangkan tempat penelitian adalah rumah sakit. Sampai semester sembilan mahasiswa belum bisa mencapai target yang direncanakan untuk menyelesaikan studi. Mahasiswa baru mampu untuk menyelesaikan pengambilan data tahap kedua. Hal ini karena jumlah responden yang tidak sesuai perkiraan pada saat sebelum dan sesudah pandemi terjadi. Upaya yang telah dilakukan oleh mahasiswa adalah menambah tempat/ lahan penelitian, untuk memenuhi jumlah responden dan berkonsultasi dengan promotor dan kopromotor dalam proses penyelesaian disertasi.', '2022-05-31 05:59:18', '2022-05-31 06:28:40', NULL);
INSERT INTO `evaluations` (`evaluation_id`, `evaluation_code`, `NIK`, `name`, `division`, `stage`, `semester`, `study`, `institution`, `study_status`, `study_certificate`, `mentor_1`, `mentor_2`, `topic`, `percentage_ta`, `follow_up_ta`, `study_semester_result`, `study_presence`, `has_proposal_test`, `proposal_date`, `proposal_file`, `has_similarity_test`, `evaluation_date`, `percentage_evaluation`, `similarity_file`, `percentage_end_test`, `end_test_date`, `end_test_file`, `percentage_pass_academic`, `study_problem`, `created_at`, `updated_at`, `deleted_at`) VALUES
(104, 'EV-1653976952', '197205152005012001', 'DEWI MEYRASYAWATI', 'Fakultas Ilmu Budaya', 'S3', 10, 'Social and Cultural Anthropology, Faculty of Social Sciences', 'Vrije Universiteit Amsterdam', 2, NULL, 'Prof. Thijl Sunier', 'Dr. Freek Colombijn dan Dr. Lenie Brouwer', 'Hijab Practices: Everyday Life of Muslim Women in Surabaya', 90, 'Saat ini saya ditunjuk oleh Department Social and Cultural Anthropology, Faculty of Social Sciences, Vrije Universiteit (VU) Amsterdam sebagai staf dari Universitas Airlangga dalam program Staff Mobility VU. Program ini salah satu upaya VU untuk membantu penyelesaian studi S3 saya. Sebagaimana yang disampaikan oleh tim pembimbing saya, Prof. Thijl Sunier selaku promotor, Dr. Freek Colombijn selaku daily supervisor 1 dan Dr. Lenie Brouwer selaku daily supervisor 2, studi S3 untuk bidang-bidang social humaniora tidak mungkin bisa diselesaikan dalam waktu 4 tahun. Namun demikian, saya dibantu oleh para supervisor saya berupaya untuk bisa menyelesaikan studi saya dalam 4 tahun. Namun memasuki tahun ke 3, terjadi pandemic Covid yang melumpuhkan aktivitas secara cepat sehingga upaya saya dan tim supervisor untuk bisa menyelesaikan studi (yang kami sama-sama tahu ini tidak mungkin tapi tetap diupayakan) tetap tidak bisa terlaksana. Pihak pemberi dana studi saya, LPDP pun menyadari hal ini dan memberi penambahan beasiswa selama 1 semester, sehingga saya bisa melanjutkan studi saya di Belanda selama 4,5 tahun. Namun penambahan 1 semester tidak cukup mengejar kelumpuhan aktivitas selama pandemic yaitu 1 tahun lumpuh dan 1 tahun mulai teratasi secar perlahan. \r\nUntuk menyelesaikan studi saya, maka VU menawarkan program Stadd Mobility dimana saya selama 2 minggu program tersebut bisa menyelesaikan tahap akhir manuskrip saya dan bisa mengumpulkannya pada tim komite siding terbuka VU.\r\n\r\nUntuk program studi S3 sosial humaniora, persoalannya bukan pada belum optimalnya usaha untuk menyelesaikan studi tepat waktu atau sesegera mungkin, akan tetapi penentuan waktu lama studi yang tepat untuk program studi S3 sosial humaniora adalah minimal 5 tahun.\r\nInsyaAllah semester ini saya telah lulus pendidikan doctor saya sehingga sudah tidak ada lagi target studi pada semester depan. Amiiin Amiin Amiin YRA.', NULL, NULL, 1, '2018-07-05', '/uploads/evaluation/proposal_file/1653976952_Dewi Meyrasyawati - PhD  Research Proposal.docx', 1, '2020-06-20', 80, NULL, NULL, '2022-08-21', NULL, 100, 'Saat ini saya ditunjuk oleh Department Social and Cultural Anthropology, Faculty of Social Sciences, Vrije Universiteit (VU) Amsterdam sebagai staf dari Universitas Airlangga dalam program Staff Mobility VU. Program ini salah satu upaya VU untuk membantu penyelesaian studi S3 saya. Sebagaimana yang disampaikan oleh tim pembimbing saya, Prof. Thijl Sunier selaku promotor, Dr. Freek Colombijn selaku daily supervisor 1 dan Dr. Lenie Brouwer selaku daily supervisor 2, studi S3 untuk bidang-bidang social humaniora tidak mungkin bisa diselesaikan dalam waktu 4 tahun. Namun demikian, saya dibantu oleh para supervisor saya berupaya untuk bisa menyelesaikan studi saya dalam 4 tahun. Namun memasuki tahun ke 3, terjadi pandemic Covid yang melumpuhkan aktivitas secara cepat sehingga upaya saya dan tim supervisor untuk bisa menyelesaikan studi (yang kami sama-sama tahu ini tidak mungkin tapi tetap diupayakan) tetap tidak bisa terlaksana. Pihak pemberi dana studi saya, LPDP pun menyadari hal ini dan memberi penambahan beasiswa selama 1 semester, sehingga saya bisa melanjutkan studi saya di Belanda selama 4,5 tahun. Namun penambahan 1 semester tidak cukup mengejar kelumpuhan aktivitas selama pandemic yaitu 1 tahun lumpuh dan 1 tahun mulai teratasi secar perlahan. \r\nUntuk menyelesaikan studi saya, maka VU menawarkan program Stadd Mobility dimana saya selama 2 minggu program tersebut bisa menyelesaikan tahap akhir manuskrip saya dan bisa mengumpulkannya pada tim komite siding terbuka VU.', '2022-05-31 06:02:32', '2022-05-31 06:02:32', NULL),
(105, 'EV-1653982136', '197704042003121002', 'SAMIAN', 'Fakultas Psikologi', 'S3', 10, 'Psikologi', 'Universitas Indonesia', 2, NULL, 'Corina D. S. Riantoputra, Ph.D.', 'Prof. Andreas Budihardjo, Ph.D.', 'Leader Endorsement', 95, 'Juni 2022 ini akan ujian hasil dan paling lambat agustus 2022 ujian promosi', '/uploads/evaluation/study_semester_result/1653982136_Screenshot 2022-05-31 at 14.16.22.png', NULL, 1, '2019-06-27', '/uploads/evaluation/proposal_file/1653982136_Aktif semester 8 (1).pdf', 2, '2022-06-10', NULL, NULL, NULL, '2022-06-28', NULL, 90, 'Masa pandemi kemarin proses penelitian yang ke dua terhambat karena susah mendapatkan tempat penelitian. Alhamdulillah akhirnya sudah terselesaikan', '2022-05-31 07:28:56', '2022-05-31 07:28:56', NULL),
(106, 'EV-1653983400', '198906112018013101', 'Danny Sanjaya Arfensia', 'Fakultas Psikologi', 'S2', 9, 'Magister Psikologi Profesi', 'Universitas Airlangga', 2, NULL, 'Dr. Ike Herdiana, M.Psi., Psikolog', 'Dra. Woelan Handadari, M.Si., Psikolog', 'Validitas Binetgram pada Stanford Binet Intelligence Scale', 90, 'Saya akan segera menyelesaikan revisi dari pembimbing dan melaksanakan tahapan case conference sbg syarat ujian HIMPSI', NULL, NULL, 1, '2020-09-12', NULL, 2, '2022-05-31', NULL, NULL, NULL, '2022-06-14', NULL, 87, NULL, '2022-05-31 07:50:00', '2022-05-31 07:50:00', NULL),
(107, 'EV-1653984196', '197609012003121001', 'ILHAM NUR ALFIAN', 'Fakultas Psikologi', 'S3', 8, 'Prodi Ilmu Sosial', 'FISIP Universitas Airlangga', 2, NULL, 'Prof. Dr. Musta\'in, M.Si.', 'Prof Akh. Muzakki, M.Ag, Grad.Dip.SEA, M.Phil, Ph.D.', 'Rekonstruksi Identitas Mantan Narapidana Kasus Terorisme di Indonesia', 40, 'Meneruskan penulisan tugas akhir sekaligus mempersiapkan publikasi ilmiah yang terkait dengan penulisan tugas akhir tersebut', NULL, NULL, 2, '2022-06-25', NULL, 2, '2022-08-27', NULL, NULL, NULL, '2022-11-26', NULL, 40, 'Situasi pandemi yang mengharuskan online menyulitkan untuk proses pembimbingan dan diskusi dengan pembimbing.', '2022-05-31 08:03:16', '2022-05-31 08:03:16', NULL),
(108, 'EV-1653984309', '197208091999032001', 'MURYANTINAH MULYO HANDAYANI', 'Fakultas Psikologi', 'S3', 8, 'Doktor Ilmu Psikologi', 'Universitas Gadjah Mada', 2, NULL, 'Prof. Dr. Sofia Retnowati, MS', 'Dr. MG Adiyanti, MS', 'Konsep, Resources dan Dinamika Flourishing pada Dewasa Autistik', 40, 'Ujian komprehensi sudah ditempuh pada semester ini. Saat ini sedang proses pengajuan ethical clearance penelitian. Semester depan yang akan dilakukan adalah pengambilan dan analisis data. Semoga lancar dan dimudahkan.', '/uploads/evaluation/study_semester_result/1653984309_Transkrip Sementara Semester Genap 2021-2022.pdf', NULL, 1, '2021-10-18', '/uploads/evaluation/proposal_file/1653984309_Seminar Proposal Muryantinah MH.jpeg', 1, '2022-02-10', 93.75, '/uploads/evaluation/similarity_file/1653984309_Undangan Ujian Kompre Muryantinah MH.pdf', NULL, '2023-06-30', NULL, 80, '1. Pada semester 3 Promotor meninggal dunia, ada kesulitan untuk mencari pengganti karena topik penelitian yang sangat spesifik dan membutuhkan expert supervisor\r\n2. Penelitian terkendala pandemik karena awalnya penelitiannya eksperimen dan harus bertemu langsung dengan partisipan\r\n3. Ganti topik penelitian pada semester 5, memulai lagi rencana penelitian dari awal.', '2022-05-31 08:05:09', '2022-05-31 08:05:09', NULL),
(109, 'EV-1653984559', '198603022009122007', 'EFFITA PISCESIANA', 'Rumah Sakit Universitas Airlangga', 'S2', 4, 'Magister Keperawatan, Prodi Ilmu keperawatan, Peminatan Keperawatan Medikal Bedah', 'Universitas Indonesia', 1, '/uploads/evaluation/study_certificate/1653984559_Ijazah & transkrip Effita_UI.pdf', 'Tuti Herawati, S.Kp., MN.', 'Ns. Muhamad Adam, M.Kep., Sp. Kep.MB.', 'Faktor - Faktor yang Memengaruhi Health Related Quality of Life (HRQoL) pada Pasien STEMI yang Menjalani Terapi Reperfusi Selama Masa Pandemi COVID-19 di RS PJN Harapan Kita Jakarta', 100, '- Saya telah menyelesaikan studi Magister Ilmu Keperawatan, peminatan Keperawatan Medikal Bedah dalam 4 semester (tepat waktu), setelah melampaui serangkaian ujian seminar proposal pada tanggal 18 januari 2021, seminar hasil pada tanggal 24 Juli 2021, dan seminar tertutup/sidang tesis pada tanggal 28 Juli 2021. Sehingga secara resmi dinyatakan lulus pada tanggal 12 Agustus 2021 	\r\n- Rencana setelah menyelesaikan Magister Ilmu Keperawatan dilanjutkan dengan Spesialis Keperawatan Medikal Bedah (merupakan satu kesatuan pendidikan dalam program Spesialis Keperawatan Medikal Bedah FIK UI (sumber: https://nursing.ui.ac.id/spesialis-keperawatan-medikal-bedah/ )\r\n- Program Spesialis merupakan program profesi sebagai kelanjutan dari program akademik Magister. Jumlah SKS yang diambil di semester 1 sebesar 19 SKS dan semester 2 sebesar 17 SKS. Program spesialis ini (semester 1 & 2) belum dapat diambil di periode ini dikarenakan belum mendapat LoG (Letter of Guarantee/ LoG dari pemberi beasiswa yaitu LPDP) sehingga tidak memungkinkan untuk mengurus perpanjangan Tubel (Tugas Belajar).\r\n- Saya berharap kedepannya Universitas Airlangga dapat menyetujui tendik nakes khususnya keperawatan berstatus PNS untuk dapat melanjutkan tugas belajar profesi selama 1 tahun pada program Spesialis Keperawatan, supaya dapat mengembangkan profesi ini di RS khususnya RS Unair.', '/uploads/evaluation/study_semester_result/1653984559_KHS FIK UI 2021_effita legalisir.pdf', '/uploads/evaluation/study_presence/1653984559_Catatan Bimbingan Tesis SIAK-NG FIK UI.jpeg', 1, '2021-01-18', '/uploads/evaluation/proposal_file/1653984559_Bukti seminar proposal_Effita.pdf', 1, '2021-07-27', 100, '/uploads/evaluation/similarity_file/1653984559_Uji Turnitin Tesis Effita Piscesiana 27 Juli 2021.pdf', NULL, '2021-07-28', '/uploads/evaluation/end_test_file/1653984559_Bukti telah sidang tesis 28 Juli 2021_Effita.pdf', 100, 'Sempat ada kendala dalam ijin etik, pengumpulan data, transportasi (karena lockdown/PPKM) selama pandemi COVID-19 tahun 2020-2021 dan dikarenakan adanya pembatasan mahasiswa praktik di RS selama pandemi, namun alhamdulillah terdapat solusi sehingga dapat selesai magister tepat waktu.', '2022-05-31 08:09:19', '2022-05-31 08:09:19', NULL),
(110, 'EV-1653985867', '198703142015042001', 'MARISA RIFADA', 'Fakultas Sains dan Teknologi', 'S3', 5, 'Ilmu Statistik', 'Institut Teknologi Sepuluh Nopember Surabaya', 2, NULL, 'Dr. Vita Ratnasari, M.Si', 'Dr. Purhadi, M.Sc', 'Model Regresi Logistik Ordinal Polinomial Multivariat', 60, 'Publikasi ilmiah materi bagian disertasi pada jurnal internasional terindeks Scopus dan menyelesaikan kajian terapan disertasi', '/uploads/evaluation/study_semester_result/1653985867_KHS Semester Gasal 2021-2022.pdf', NULL, 1, '2021-07-13', '/uploads/evaluation/proposal_file/1653985867_2021 8047 SK Kandidat Doktor a.n Marisa Rifada (16 Agustus 2021) (1).pdf', 2, '2022-12-30', NULL, NULL, NULL, '2023-02-28', NULL, 60, 'pandemi Covid-19 menyebabkan terkendala bimbingan secara langsung dengan dosen pembimbing', '2022-05-31 08:31:07', '2022-05-31 08:47:20', NULL),
(111, 'EV-1653986613', '197607222003121001', 'TINO LEONARDI', 'Fakultas Psikologi', 'S3', 8, 'Psikologi', 'Fakultas Psikologi UNAIR', 2, NULL, 'Endang R. Surjaningrum, Ph.D.', 'Dr. Fajrianthi, M.Psi.', 'Literasi Digital', 50, 'Mengambil data, analisis, menyusun hasil', NULL, NULL, 1, '2021-01-29', NULL, 2, '2022-11-01', NULL, NULL, NULL, '2022-12-20', NULL, 50, 'Secara umum kesibukan terkait pekerjaan dan motivasi naik turun yang menjadi kendala', '2022-05-31 08:43:33', '2022-05-31 08:44:24', NULL),
(112, 'EV-1653988210', '199004172018013101', 'Afri Andiarto', 'Direktorat Kemahasiswaan', 'S2', 6, 'Magister Manajemen', 'Universitas Airlangga', 2, NULL, '-', '-', 'Kinerja Organisasi', 10, 'Mengikuti bimbingan di lembaga research untuk menggali ide dan menyusun rancangan penelitian', NULL, NULL, 2, '2022-07-15', NULL, 2, '2022-08-12', NULL, NULL, NULL, '2022-08-26', NULL, 80, '-', '2022-05-31 09:10:10', '2022-05-31 09:10:10', NULL),
(113, 'EV-1653988930', '199406132018013101', 'Ahmad Fadlli', 'Pusat Layanan Pengadaan Barang dan Jasa', 'S1', 6, 'Teknik Elektro', 'Universitas 17 Agustus 1945 Surabaya', 2, NULL, 'Aris Heri Andriawan, ST. MT', NULL, 'Gangguan Harmonisa Pada Gedung', 60, 'Segera menyelesaikan pengukuran yang digunakan data untuk menganalisa pada bab iv', '/uploads/evaluation/study_semester_result/1653988930_KHS semester 1 - 5.pdf', NULL, 1, '2022-02-15', '/uploads/evaluation/proposal_file/1653988930_sempro.pdf', 2, '2022-07-11', NULL, NULL, NULL, '2022-07-18', NULL, 60, 'Ketika pertengahan TA/Skripsi pada semester 4, saya terkena COVID-19 sehingga memundurkan diri untuk TA/Skripsi. Sehingga akan mengulang lagi di semseter 5 hanya TA/Skripsi.\r\nKetika proses TA/Skripsi pada semsester 5, istri menjalani operasi Abses Perianal dan membutuhkan waktu pemulihan kurang lebih 6 bulan pasca operasi. Sehingga saya tidak bisa melanjutkan TA/Skripsi karena harus konsentrasi terhadap pekerjaan dan merawat istri. Pada akhirnya saya mengulang lagi TA/Skripsi di semester 6 ini. Dan pada semester 6 ini saya yakin dan wajib untuk selesai studinya dan lulus.', '2022-05-31 09:22:10', '2022-05-31 09:22:10', NULL),
(114, 'EV-1653989605', '199308272018013201', 'Faridah Hariyani', 'PIHM', 'S1', 4, 'S-1 Sastra Inggris Bidang Penerjemah', 'Universitas Terbuka', 2, NULL, '-', '-', 'Analisa Penerjemahan Teks Narasi', 80, 'menyelesaikan tiga mata kuliah akhir pada semester depan', '/uploads/evaluation/study_semester_result/1653989605_Daftar Nilai Ujian.pdf', NULL, 2, '2022-06-15', NULL, 2, '2022-06-15', NULL, NULL, NULL, '2022-06-30', NULL, 70, NULL, '2022-05-31 09:33:25', '2022-05-31 09:33:25', NULL),
(115, 'EV-1653990324', '199406242018013101', 'WAHYU SETYAWAN', 'DIrektorat Logistik Keamanan Ketertiban dan Lingkungan', 'S1', 6, 'Teknik Elektro', 'Universitas 17 Agustus 1945 SURABAYA', 2, NULL, 'Ir. Aris Heri Andriawan., S.T., M.T.', NULL, 'Analisa Kandungan Harmonisa Pada Jaringan Listrik Gedung , Studi Kasus Gedung Nanizar Zaman Djonoes', 60, 'saya akan mengejar sidang tugas akhir pada semester ini', NULL, NULL, 1, '2022-02-15', NULL, 1, '2022-05-18', NULL, NULL, NULL, '2022-07-18', NULL, 80, NULL, '2022-05-31 09:45:24', '2022-05-31 09:45:24', NULL),
(116, 'EV-1653990947', '198609052018013101', 'Bagus Dwi Prasetiyo', 'Badan Pengembangan Bisnis Rintisan dan Inkubasi', 'S2', 4, 'Pengembangan Sumber Daya Manusia', 'Universitas Airlangga', 2, NULL, 'Dian Ekowati, SE.,M.Si., M.App.Com. (OrgChg).,Ph.D.', NULL, 'Human Resource Management, Person Organization Fit, Kinerja, Start Up', 20, 'menyelesaikan bab 1-4 sesegera mungkin untuk maju sidang proposal lalu mengambil data', '/uploads/evaluation/study_semester_result/1653990947_KHS-092014253013.pdf', NULL, 2, '2022-06-30', NULL, 2, '2022-06-30', NULL, NULL, NULL, '2022-08-30', NULL, 20, NULL, '2022-05-31 09:55:47', '2022-05-31 09:55:47', NULL),
(117, 'EV-1653992004', '199103122015043201', 'NASA ZATA DINA', 'Fakultas Vokasi', 'S3', 3, 'Sistem Informasi', 'University of Malaya', 2, NULL, 'Assoc. Prof. Dr. Sri Devi Ravana', 'Assoc. Prof. Dr. Norisma Idris', 'Information Retrieval', 40, 'Pada semester depan, mahasiswa mempersiapkan penulisan artikel systematic literature review sebagai salah satu syarat lulus dari dua artikel yang diminta. Ujian kandidasi doktor akan dilaksanakan pada  Semester 5 yaitu pada bulan Desember 2023.', NULL, NULL, 2, '2022-07-29', NULL, 2, '2022-07-11', NULL, NULL, NULL, '2024-08-30', NULL, 45, NULL, '2022-05-31 10:13:24', '2022-05-31 10:13:24', NULL),
(118, 'EV-1653996383', '197106011995032003', 'Emuliana Sulpat', 'Fakultas Vokasi', 'S3', 6, 'Keperawatan', 'Universitas Airlangga', 2, NULL, 'Dr.Agus Sulistyono,dr.,SpOG(K)', NULL, 'Anemia pada Ibu Hamil', 20, 'Saya akan mencoba lebih rajin dalam bimbingan', '/uploads/evaluation/study_semester_result/1653996383_KHS-131911573014.pdf', NULL, 2, '2023-02-04', NULL, 2, '2023-06-02', NULL, NULL, NULL, '2023-09-04', NULL, 20, NULL, '2022-05-31 11:26:23', '2022-05-31 11:26:23', NULL),
(119, 'EV-1654002334', '198907122018013101', 'Budi Lutfitra Wisada', 'Fakultas Ekonomi dan Bisnis', 'S2', 4, 'Akuntansi', 'Universitas Brawijaya', 2, NULL, 'Dr. Erwin Saraswati, SE., M.Acc., Ak., CPMA.', 'Dr. Wuryan Andayani, SE., MSi., Ak.', 'Akuntansi Pemerintahan', 10, 'Saya akan lebih intens bimbingan dengan Dosen Pembimbing.', '/uploads/evaluation/study_semester_result/1654002334_LKB a.n Budi Lutfitra Wisada.pdf', NULL, 2, '2022-07-29', NULL, 2, '2022-07-29', NULL, NULL, NULL, '2022-08-31', NULL, 20, 'Ujian Proposal dan Ujian Thesis nantinya harus dilaksanakan offline di Kampus Universitas Brawijaya Malang.', '2022-05-31 13:05:34', '2022-05-31 13:05:34', NULL),
(120, 'EV-1654078791', '199105202019032026', 'ASTARI PUTERI', 'Fakultas Kedokteran Gigi', 'S2', 8, 'Ilmu Kedokteran Dasar', 'Universitas Airlangga', 1, '/uploads/evaluation/study_certificate/1666961797_ijazah S2.pdf', 'Prof. Retno Handajani, dr, M.S, Ph.D', 'Dr. Gwenny I. P., dr., M.Kes.', 'Hubungan Antara Mutasi Gen TP53 Dengan Derajat Diferensiasi Histopatologis Pada Penderita Oral Squamous Cell Carcinoma Di RSUD Dr. Soetomo', 100, 'Yudisium telah dilaksanakan. Tinggal menunggu wisuda di bulan Juni.', NULL, NULL, 1, '2020-10-26', NULL, 2, '2022-05-09', NULL, NULL, NULL, '2022-05-09', NULL, 100, 'Penelitian saya memakan waktu lebih dari 1 tahun karena selain adanya pandemi yang membatasi ruang gerak, adanya kesulitan dalam mengumpulkan sampel dan ada beberapa reagen yang harus saya pesan ulang dan membutuhkan waktu yang lama untuk tiba.', '2022-06-01 10:19:51', '2022-10-28 12:56:37', NULL),
(121, 'EV-1654142516', '197008141995032002', 'Lilis Indrawati', 'DIII Keperawatan Fak. Vokasi UNAIR', 'S2', NULL, 'Keperawatan', 'UNAIR', 1, NULL, 'Dr. Rizki Fitryasari P.K, S.Kep.,Ns.,M.Kep', 'Dr. Ahsan, SKp.,MKes', 'Pengembangan Model Discharge Planning Berbasis Pemberdayaan Keluarga Dalam Meningkatkan Kemandirian Keluarga Dalam Merawat Pasien Stroke', 100, NULL, NULL, NULL, 1, '2021-02-26', '/uploads/evaluation/proposal_file/1654142516_11.4 LEMBAR PENGESAHAN PROPOSAL TESIS Lilis Indrawati.pdf', 1, '2022-02-22', 52, NULL, NULL, '2021-10-04', '/uploads/evaluation/end_test_file/1654142516_LILIS INDRAWATI Lembar PENGESAHAN  (TT Dekan) (1).pdf', 100, 'pengambilan data penelitian memerlukan waktu yang lama sebab terdampak masa pandemi (menunggu responden)', '2022-06-02 04:01:56', '2022-06-02 04:01:56', NULL),
(122, 'EV-1654153801', '199304292018013101', 'Nuri Hermawan', 'PIHM', 'S1', 4, 'Ilmu Linguistik', 'FIB Universitas Airlangga', 2, NULL, 'Dr. Ni Wayan Sartini, M.Hum', 'Nurul Fitri Hapsari, S.S., M.A', 'Analisis Wacana Kritis', 40, 'Berikut adalah beberapa langkah kongkrit yang saya lakukan untuk menuntaskan tugas akahir (tesis). Pertama, menuntaskan topik dan objek penelitian. Dalam hal ini sudah selesai saya lakukan dengan menuntaskan proposal tesis dan sidang proposal tesis pada akhir bulan Januari 2022.Kedua, usai menuntaskan proposal tesis, langkah selanjutnya adalah mengerjakan tesis. Dalam mengerjakan tesis ada beberapa upaya yang saya lakukan. Mulai dari konsisten mengerjakan tesis usai kerja, melakukan konsultasi dan bimbingan rutin, dan melakukan revisi secara berkala. Berbagai langkah ini yang menjadi salah satu upaya yang saya lakukan untuk menuntaskan tesis. \r\nSelanjutnya, sebagai salah satu syarat untuk kelulusan berupa menuntaskan ELPT dan Jurnal ilmiah, saya juga telah melakukan berbagai langkah kongkrit. Untuk jurnal sudah ada makalah atau paper yang terbit pada jurnal nasional terakreditasi dan jurnal SINTA 4. Selanjutnya, untuk menuntaskan ELPT saya juga telah melakukan tes untuk bisa mencapai batas minimal kelululsan. \r\n\r\nItulah beberapa langkah kongkrit yang saya lakukan untuk menuntaskan studi S2 Ilmu Linguistik Universitas Airlangga', NULL, NULL, 1, '2022-01-26', NULL, 2, '2022-07-20', NULL, NULL, NULL, '2022-07-27', NULL, 50, NULL, '2022-06-02 07:10:01', '2022-06-02 07:10:01', NULL),
(123, 'EV-1654161340', '199407232018013101', 'Muhammad Yan Handita', 'Direktorat Sistem Informasi', 'S1', 6, 'SIstem Informasi', 'Universitas Narotama', 2, NULL, 'EMAN SETIAWAN S.Kom., M.M', NULL, 'SISTEM INFORMASI PENERIMAAN PEGAWAI BERBASIS WEB DENGAN METODE AGILE MODEL EXTREME PROGRAMMING (XP)', 60, 'Melanjutkan pengerjaan laporan skripsi dan aktif melakukan bimbingan', '/uploads/evaluation/study_semester_result/1654161340_SIMNARO _ Transkrip Nilai.pdf', '/uploads/evaluation/study_presence/1654161340_MUHAMMAD YAN HANDITA-BA bimbingan riset-TTD Pak Eman.pdf', 1, '2022-04-28', '/uploads/evaluation/proposal_file/1654161340_MUHAMMAD YAN HANDITA-signed.pdf', 2, '2022-07-25', 100, NULL, NULL, '2022-08-09', NULL, 100, NULL, '2022-06-02 09:15:40', '2022-06-02 09:15:40', NULL),
(124, 'EV-1654161468', '199506222020063101', 'Arya Wiratama', 'Direktorat Sistem Informasi', 'S1', 6, 'Sistem Informasi', 'Universitas Narotama', 2, NULL, 'Eman Setiawan, S.Kom., M.M', 'Awalludiyah Ambarwati, S.Kom., M.M.', 'Aplikasi Perancangan Bimbingan dan Penjadwalan Ujian Skripsi Berbasis Website (Studi Kasus: Universitas Airlangga)', 60, 'Mengenali kelemahan dan kelebihan diri merupakan hal yang sangat penting agar dapat menyusun rencana yang efisien. Rencana yang dibuat harus dapat memanfaatkan kelebihan dan mengatasi kelemahan yang ada pada diri kita. Misalnya kamu memiliki kelemahan sulit memahami materi pembelajaran dari dosen, tapi kamu memiliki kelebihan pandai bergaul dengan teman-teman, maka rencana yang dapat kamu lakukan agar kamu tetap dapat meraih tujuanmu menjadi mahasiswa dengan IPK tertinggi se-angkatan, kamu dapat meminta bantuan temanmu untuk menjelaskan kembali materi pembelajaran yang telah disampaikan oleh dosen. Lebih baik berdiskusi dengan dosen wali mengenai rencana studi, seperti mata kuliah yang akan diambil, beban sks yang akan diambil, dan lainnya karena dosen wali adalah orang yang paling mengetahui mahasiswanya terutama di bidang akademiknya. Membaca silabus merupakan hal yang sangat penting karena melalui silabus kita dapat mengetahui pokok pembelajaran, indikator pencapaian kompetensi, sumber belajar, dan lainnya. Dengan begitu, kita dapat menyiapkan diri dengan membuat jadwal dari rencana kegiatan yang akan mendukung di bidang akademik.', '/uploads/evaluation/study_semester_result/1654161468_khs.pdf', '/uploads/evaluation/study_presence/1654161468_ARYA WIRATAMA-BA bimbingan riset pak eman (1)-digabungkan.pdf', 2, '2022-05-28', '/uploads/evaluation/proposal_file/1654161468_Form Revisi Seminar Laporan Awal PenelitianRiset _04219068_ARYA WIRATAMA.pdf', 2, '2022-06-02', 100, NULL, NULL, '2022-06-20', NULL, 100, 'pekerjaan terlalu banyak dan permintaan unit-unit juga banyak, belum lagi revisi2', '2022-06-02 09:17:48', '2022-06-02 09:17:48', NULL),
(125, 'EV-1654162549', '198812072020063101', 'Achmad Wildan', 'Direktorat Sistem Informasi', 'S1', 3, 'Sistem Informasi', 'Universitas Narotama', 2, NULL, 'Eman Setiawan, S.Kom., M.M', NULL, 'Aplikasi Perancangan', 50, 'Mengenali kelemahan dan kelebihan diri merupakan hal yang sangat penting agar dapat menyusun rencana yang efisien. Rencana yang dibuat harus dapat memanfaatkan kelebihan dan mengatasi kelemahan yang ada pada diri kita. Misalnya kamu memiliki kelemahan sulit memahami materi pembelajaran dari dosen, tapi kamu memiliki kelebihan pandai bergaul dengan teman-teman, maka rencana yang dapat kamu lakukan agar kamu tetap dapat meraih tujuanmu menjadi mahasiswa dengan IPK tertinggi se-angkatan, kamu dapat meminta bantuan temanmu untuk menjelaskan kembali materi pembelajaran yang telah disampaikan oleh dosen.\r\nLebih baik berdiskusi dengan dosen wali mengenai rencana studi, seperti mata kuliah yang akan diambil, beban sks yang akan diambil, dan lainnya karena dosen wali adalah orang yang paling mengetahui mahasiswanya terutama di bidang akademiknya.\r\nMembaca silabus merupakan hal yang sangat penting karena melalui silabus kita dapat mengetahui pokok pembelajaran, indikator pencapaian kompetensi, sumber belajar, dan lainnya. Dengan begitu, kita dapat menyiapkan diri dengan membuat jadwal dari rencana kegiatan yang akan mendukung di bidang akademik.', '/uploads/evaluation/study_semester_result/1654162549_wildan.pdf', NULL, 2, '2022-09-13', NULL, 2, '2022-08-23', NULL, NULL, NULL, '2022-09-13', NULL, 100, 'Kendala keuangan', '2022-06-02 09:35:49', '2022-06-02 09:35:49', NULL),
(126, 'EV-1654221325', '198101312005012002', 'TRI KURNIATI AMBARINI', 'Fakultas Psikologi', 'S3', 4, 'Psikologi', 'Universitas Airlangga', 2, NULL, 'Endang Retno Surjaningrum, M.App.Psych, PhD, Psikolog.', 'Dr. Achmad Chusairi, M.A.', 'Basic Symptom Yang Menentukan  Status Clinical High Risk Terhadap Psikosis Pada  Individu Yang Mencari Bantuan : Sebuah Model Jejaring', 30, 'ujicoba alat ukur, penulisan artikel dan mengikuti seminar international', '/uploads/evaluation/study_semester_result/1659432642_Screen Shot 2022-08-02 at 16.26.23.png', NULL, 1, '2021-07-28', NULL, 2, '2022-09-09', NULL, NULL, NULL, '2023-12-29', NULL, 0, 'mengambil cuti studi 1 sem untuk pengobatan', '2022-06-03 01:55:25', '2022-08-02 09:30:42', NULL),
(127, 'EV-1654235668', '196604141992031010', 'Susilo Harianto', 'Fakultas Vokasi Universitas Airlangga', 'S3', 7, 'Keperawatan', 'Universitas Airlangga', 2, NULL, 'Prof. Dr. Nursalam, M.Nurs (Hons)', 'Dr. Imam Susilo, dr. Sp. PA(K)', 'Model Perilaku Pengobatan', 40, 'meningkatkan konsultasi naskah proposal desertasi', '/uploads/evaluation/study_semester_result/1654235668_khs.jpg', NULL, 2, '2022-12-07', NULL, 2, '2022-12-09', NULL, NULL, NULL, '2023-12-02', NULL, 90, 'masih memfokuskan kajian teoritis terkait rencana desertasi yang dipilih', '2022-06-03 05:54:28', '2022-06-03 05:54:28', NULL),
(128, 'EV-1654237876', '196810041998021001', 'MOCHTAR LUTFI', 'Fakultas Ilmu Budaya', 'S3', 9, 'Ilmu Sosial', 'FISIP UNAIR', 2, NULL, 'Dr. H. Mohammad Adib, Drs., M.A.', 'Prof. Dr. Ida Bagus Putera Manuaba, Drs., M.Hum.', 'WACANA KHUTBAH NIKAH MASYARAKAT   KOTA SURABAYA: PERSPEKTIF HERMENEUTIKA GADAMER', 25, 'Sudah ujian proposal Oktober 2021, saat ini fokus mempersiapkan ujian kelayakan', NULL, NULL, 1, '2021-10-14', NULL, 2, '2022-07-29', NULL, NULL, NULL, '2022-08-31', NULL, 70, 'Tidak ada', '2022-06-03 06:31:16', '2022-06-03 06:31:16', NULL),
(129, 'EV-1654378636', '196806281991031006', 'Abd.Nasir', 'Fakultas Keperawatan', 'S3', 8, 'Keperawatan', 'Universitas Airlangga', 2, NULL, 'Prof. Dr Ah Yusuf, M.Kes', 'Dr. Rachmad Hargono, dr., MS., MPH', 'PENGEMBANGAN MODEL KOPING BERBASIS KEYAKINAN KESEHATAN TERHADAP PERILAKU PENCEGAHAN  KECACATAN PADA PENDERITA KUSTA', 80, 'kami akan melaksanakan ujian pra kelayakan, ujian kelayakan dan ujian tertutup. kami tidak ujian terbuka karena syarat 3 naskah yang sudah accepted di scopus sudah terpenuhi', NULL, NULL, 1, '2020-03-23', '/uploads/evaluation/proposal_file/1654378636_1. Surat Keterangan Abd. Nasir telah uji proposal.docx', 2, '2022-06-30', NULL, NULL, NULL, '2022-08-04', NULL, 90, 'menunggu persyaratan pencapaian 3 jurnal terindeks scopus, dan saat ini masih kurang 1 (dalam status under review)', '2022-06-04 21:37:16', '2022-06-04 21:37:16', NULL),
(130, 'EV-1654480183', '199001132015043101', 'YANUAR NUGROHO', 'Fakultas Vokasi', 'S3', 0, 'Ilmu Akuntansi', 'Universitas Airlangga', 2, NULL, NULL, NULL, NULL, 5, 'belum mulai studi', NULL, NULL, 2, '2024-08-01', NULL, 2, '2024-08-01', NULL, NULL, NULL, '2025-01-01', NULL, 0, NULL, '2022-06-06 01:49:43', '2022-06-06 01:49:43', NULL),
(131, 'EV-1654487284', '198609212019063201', 'Fransisca Ika Prasetyo', 'Sekretaris Universitas', 'S1', 6, 'MANAJEMEN', 'UNIVERSITAS AIRLANGGA', 2, NULL, '-', '-', '-', 0, 'JIKA TIDAK ADA HAMBATAN, BISA LULUS TAHUN INI', '/uploads/evaluation/study_semester_result/1654487284_041294958.Pdf', NULL, 2, '2022-07-10', NULL, 2, '2022-07-10', NULL, NULL, NULL, '2022-07-10', NULL, 70, 'PEMBAGIAN WAKTU DALAM PENGERJAAN TUGAS DAN BEKERJA', '2022-06-06 03:48:04', '2022-06-06 03:48:04', NULL),
(132, 'EV-1654501762', '198307032014042001', 'TIYAS KUSUMANINGRUM', 'Fakultas Keperawatan', 'S3', 4, 'S3 Keperawatan', 'Fakultas Keperawatan Universitas Airlangga', 2, NULL, 'Prof. Dr. Nursalam, M.Nurs (Hons)', 'Dr. Yuni Sufyanti A, S.Kp., M.Kes', 'MODEL PERAWATAN POSTPARTUM SEBAGAI UPAYA PENCEGAHAN PENYAKIT KARDIOVASKULER DAN PENINGKATAN KUALITAS HIDUP PADA IBU DENGAN RIWAYAT PREEKLAMSIA', 20, 'Saat ini saya telah mensubmit artikel pada jurnal internasional dan sedang mengerjakan literature review proposal penelitian.', '/uploads/evaluation/study_semester_result/1654501762_KHS-132011573012_Gasal 2021_signed.pdf', NULL, 2, '2022-08-15', NULL, 2, '2022-08-26', NULL, NULL, NULL, '2023-09-22', NULL, 20, NULL, '2022-06-06 07:49:22', '2022-06-06 07:49:22', NULL),
(133, 'EV-1654585676', '197509252006042001', 'TITIEN DIAH SOELISTYARINI', 'Fakultas Ilmu Budaya', 'S3', 3, 'Ilmu Susastra', 'Universitas Indonesia', 2, NULL, 'Prof. Melani Budianta, Ph.D', 'Dr. Dhita Hapsarani, M.Hum', 'Impian Amerika dan Artikulasi Identitas Diaspora  di Amerika dalam Memoar Grafis', 20, 'Memulai proses pembimbingan penulisan disertasi dengan tim promotor', '/uploads/evaluation/study_semester_result/1654585676_KHS Smt 3.pdf', NULL, 1, '2021-11-11', NULL, 2, '2023-06-30', NULL, NULL, NULL, '2024-01-31', NULL, 20, 'Proses pembimbingan selama pandemi harus berlangsung secara daring sehingga belum bisa berjalan secara maksimal. Selain itu, juga belum memungkinkan untuk melakukan riset kepustakaan secara maksimal di UI dan melakukan diskusi secara rutin dengan rekan-rekan mahasiswa S3 seprodi.', '2022-06-07 07:07:56', '2022-06-07 07:07:56', NULL),
(134, 'EV-1654745306', '197406032008011012', 'AHMADIN', 'Fakultas Sains dan Teknologi', 'S3', 11, 'Matematika', 'Institut Teknologi Bandung', 2, NULL, 'Prof. Dr. Janson Naiborhu', 'Prof. Dr. Roberd Saragih', 'Sistem Bilinear', 80, 'Menyelesaikan Desertasi', NULL, NULL, 1, '2018-10-01', NULL, 2, '2022-07-15', NULL, NULL, NULL, '2022-07-29', NULL, 90, 'Pandemi', '2022-06-09 03:28:26', '2022-06-09 03:28:26', NULL),
(135, 'EV-1655096951', '197905192009122003', 'WARDAH RAHMATUL ISLAMIYAH', 'Fakultas Kedokteran', 'S3', 12, 'S3 Kedokteran', 'Fakultas Kedokteran Universitas Airlangga', 2, NULL, 'Prof. Dr. Nasronudin,dr.,Sp.P(K-PTI), FINASIM', 'Dr. Abdulloh Machin,dr.,Sp.N(K)', 'HUBUNGAN ANTARA POLIMORFISME CYP2C19 DENGAN  KADAR TESTOSTERON TOTAL, ESTROGEN, DAN BERAT BADAN PADA PASIEN BANGKITAN EPILEPTIK PENGGUNA ASAM VALPROAT', 75, 'Menunggu accepted publikasi dan maju ujian kelayakan, ujian tertutup dan terbuka', NULL, NULL, 1, '2019-01-22', NULL, 2, '2022-07-19', NULL, NULL, NULL, '2022-10-27', NULL, 75, 'Pandemi kesulitan mendapat subjek penelitian sesuai kriteria\r\nko promotor meninggal', '2022-06-13 05:09:11', '2022-06-13 05:09:11', NULL),
(136, 'EV-1655099038', '198012072008121001', 'MOHAMMAD SAIFUL ARDHI', 'Fakultas Kedokteran', 'S3', 12, 'lmu Kedokteran Jenjang Doktor', 'Fakultas Kedokteran', 2, NULL, 'Dr. Muhammad Hamdan, dr., SpS(K)', 'Dr. Achmad Chusnu Romdhoni, dr., Sp.THT-KL(K), FICS', 'pengaruh Thiamin pada stroke iskemik', 50, 'Proposal dan penelitian pada bninatang coba. Publikasi jurnal internasional.', NULL, NULL, 2, '2022-07-31', NULL, 2, '2022-08-19', NULL, NULL, NULL, '2022-10-13', NULL, 80, 'tidak ada', '2022-06-13 05:43:58', '2022-06-13 05:43:58', NULL),
(137, 'EV-1655181724', '196509192006042001', 'SOFIATUN', 'Fakultas Vokasi', 'S2', 0, 'Keperawatan', 'D-3 Keperawatan', 1, '/uploads/evaluation/study_certificate/1655181724_SOFI_ Ijazah S2 Kep.pdf', 'Dr.Rizki Fitryasari P.K.,S.Kep.,M.Kep', 'Dr.Ahsan.,S.Kp.,M.Kes', 'PENGEMBANGAN MODEL MAKP MODULAR BERBASIS  PRODUKTIVITAS KERJA PERAWAT DALAM MENINGKATKAN KEPUASAN PASIEN DI RSUD IBNU SINA GRESIK', 100, 'Sudah ujian sidang  Tesis dan sudah lulus/Wisuda', NULL, '/uploads/evaluation/study_presence/1655181724_SOFIATUN_Buku Bimbingan Tesis sdh ttd KPS.pdf', 1, '2020-01-25', '/uploads/evaluation/proposal_file/1655181724_LEMBAR PENGESAHAN PROPOSAL TESIS SOFIATUN 131914153003 sdh ttd.pdf', 1, '2021-07-14', 100, '/uploads/evaluation/similarity_file/1655181724_SOFIATUN_LEMBAR PENGESAHAN HASILL TESIS sudah ttd KPS.pdf', NULL, '2021-08-05', '/uploads/evaluation/end_test_file/1655181724_SOFIATUN_LEMBAR PENGESAHAN TESIS sdh ttd KPS.pdf', 100, 'tidak ada', '2022-06-14 04:42:04', '2022-06-14 04:42:04', NULL),
(138, 'EV-1655187091', '197602092008012012', 'WIDIANA FERRIASTUTI', 'Fakultas Kedokteran', 'S3', NULL, 'Ilmu Kedokteran', 'Universitas Airlangga', 1, '/uploads/evaluation/study_certificate/1655187091_Ijazah S3.pdf', 'Prof. Dr. Harianto Notopuro, dr., M.S', 'Dr. Anggraini D. S, dr., Sp. Rad (K)', 'Hubungan Polimorfisme Gen ApoE, PS1 terhadap Kadar Protein ApoE Darah, PS1, Rasio mI/NAA, Korteks Entorhinal dan Volume Hipokampus pada Pasien Alzheimer', 100, NULL, NULL, NULL, 1, '2021-01-01', NULL, NULL, '2021-03-01', NULL, NULL, NULL, '2022-09-01', NULL, 100, NULL, '2022-06-14 06:11:31', '2022-06-14 06:11:31', NULL),
(139, 'EV-1655201395', '198204282010122003', 'DAMAYANTI', 'Fakultas Kedokteran', 'S3', 0, 'Ilmu Kedokteran', 'Universitas Airlangga', 1, '/uploads/evaluation/study_certificate/1655201395_Damayanti_Ijazah Doktor_2020 (1).pdf', 'Prof. Dr. Cita Rosita SP, dr., SpKK(K)', 'Prof. Dr. Djoko Agus Purwanto, MSi, Apt', 'Pengaruh EGCG Topikal terhadap ekspresi TGFbRII, ekspresi F2Isoprostane, ekspresi collagen type I, jumlah kolagen dan tingkat TEWL,  untuk pencegahan photoaging pada tikus Wistar', 100, 'studi telah selesai', NULL, NULL, 1, '2019-04-20', NULL, 1, '2020-07-22', NULL, NULL, NULL, '2020-09-25', NULL, 100, NULL, '2022-06-14 10:09:55', '2022-06-14 10:09:55', NULL),
(140, 'EV-1655255174', '198111112010121004', 'TAUFIQ HIDAYAT', 'Fakultas Kedokteran', 'S3', 5, 'Ilmu Kedokteran Dasar', 'Universitas Airlangga', 2, NULL, 'Prof. Dr. Irwanto,dr.,SpA(K)', 'Dr. Mahrus A Rahman,dr.,SpA(K)', 'Kualitas Hidup Anak Dengan Patent Ductus Arteriosus  Pada Anak Sebelum dan Sesudah Tindakan Kateterisasi Jantung', 20, 'Ujian Seminar Topik', NULL, NULL, 2, '2023-07-12', NULL, 2, '2023-10-18', NULL, NULL, NULL, '2023-12-15', NULL, 100, 'Suppot Biaya SOP dari Fakultas Kurang', '2022-06-15 01:06:14', '2022-06-15 01:06:14', NULL),
(141, 'EV-1655436391', '199008232015043201', 'Dwi Indah Puspita', 'Fakultas Vokasi', 'S2', 4, 'Ilmu Kesehatan Olahraga', 'Fakultas Kedokteran Universitas Airlangga', 2, NULL, 'Dr. Purwo Sri Rejeki, dr., M.Kes.', 'Dr. Gadis Meinar Sari, dr., M.Kes', 'Olahraga Pada Obesitas', 70, 'Bimbingan Tesis', '/uploads/evaluation/study_semester_result/1655693482_KHS.pdf', NULL, 1, '2022-01-28', NULL, 2, '2022-07-27', NULL, NULL, NULL, '2022-08-15', NULL, 70, 'Membagi waktu dengan kerja', '2022-06-17 03:26:31', '2022-06-20 02:51:22', NULL),
(142, 'EV-1655548967', '198410092016033201', 'NI NYOMAN PURWANI', 'Fakultas Vokasi', 'S1', 5, 'Teknologi Laboratorium Medis', 'University Airlangga', 2, NULL, 'Marco W Fraaije', NULL, 'Enzymes Fusion', 40, 'Menyelesaikan project ke 3, dan mempersiapkan untuk memulai project ke 4', NULL, NULL, 2, '2022-10-11', NULL, 2, '2023-06-13', NULL, NULL, NULL, '2023-11-23', NULL, 45, NULL, '2022-06-18 10:42:47', '2022-06-18 15:31:04', NULL),
(143, 'EV-1655780629', '198001272010122001', 'ARUM BUDIASTUTI', 'Fakultas Ilmu Budaya', 'S3', 9, 'Gender and Cultural Studies', 'The University of Sydney', 2, NULL, 'Associate Professor Guy Redden', 'Prof. Elspeth Probyn', 'The Transformation of Halal through Halal Food Regulation, Consumption, and Representation in Contemporary Indonesia', 70, 'Saya mengikuti program Shut Up & Write yang diadakan oleh Departemen agar bisa rutin menulis dan submit tulisan tiap minggu. Saya\r\njuga mengagendakan untuk konsultasi dengan supervisor tiap bulan sekali.\r\nBerikut penjelasan rincinya:\r\n1.	Bulan Juli 2022 minggu 1: \r\nSubmit Chapter \"Regulating Halal in Contemporary Indonesia”\r\n2.	Bulan Juli 2022 minggu 2: \r\n- Menulis Chapter “The Representation of Halal Food in MUI’s Media \r\n- Menunggu feedback supervisor\r\n3.	Bulan Juli 2022 minggu 3: \r\n-	Revisi Chapter \"Regulating Halal in Contemporary Indonesia”\r\n-	Menulis Chapter “The Representation of Halal Food in MUI’s Media\r\n4.	Bulan Juli 2022 minggu 4: \r\n- Revisi Chapter \"Regulating Halal in Contemporary Indonesia”\r\n- Menulis Chapter “The Representation of Halal Food in MUI’s Media\r\n5.	Bulan Agustus 2022 minggu 1: \r\nSubmit chapter the Representation of Halal Food in MUI’s Media\r\n6.	Bulan Agustus 2022 minggu 2: \r\n- Menulis Chapter “Consuming halal food in everyday life: Defining Halal and navigating Muslim self in urban settings”\r\n- Menunggu feedback supervisor\r\n7.	Bulan Agustus 2022 minggu 3: \r\n- Revisi Chapter “the Representation of Halal Food in MUI’s Media”\r\n- Menulis Chapter “Consuming halal food in everyday life: Defining Halal and navigating Muslim self in urban settings”\r\n8.  Bulan Agustus 2022 minggu 4: \r\n- Revisi Chapter the Representation of Halal Food in MUI’s Media\r\n- Menulis Chapter “Consuming halal food in everyday life: Defining Halal and navigating Muslim self in urban settings”\r\n9.	Bulan September 2022 minggu 1: \r\nSubmit chapter “Consuming halal food in everyday life: Defining Halal and navigating Muslim self in urban settings”\r\n10.	Bulan September 2022 minggu 2: \r\n- Menulis Chapter “Conclusion”\r\n- Menunggu feedback supervisor\r\n11.	Bulan September 2022 minggu 3: \r\n- Revisi Chapter “Consuming halal food in everyday life: Defining Halal and navigating Muslim self in urban settings”\r\n- Menulis Chapter “Conclusion”\r\n12. Bulan September 2022 minggu 4: \r\n- Revisi Chapter “Consuming halal food in everyday life: Defining Halal and navigating Muslim self in urban settings”\r\n- Menulis Chapter “Conclusion”\r\n13.	Bulan Oktober 2022 minggu 1: \r\nSubmit chapter “Conclusion”\r\n14.	Bulan Oktober 2022 minggu 2: \r\n- Menulis Chapter “Introduction”\r\n- Menunggu feedback supervisor\r\n15.	Bulan Oktober 2022 minggu 3: \r\n- Revisi Chapter “Conclusion”\r\n- Menulis Chapter “Introduction\"\r\n16. Bulan Oktober 2022 minggu 4: \r\n- Revisi Chapter “Conclusion”\r\n- Menulis Chapter “Introduction”\r\n17.	Bulan November 2022 minggu 1: \r\nSubmit chapter “Introduction”\r\n18.	Bulan November 2022 minggu 2: \r\n- Menulis “Acknowledgement”\r\n- Menunggu feedback supervisor\r\n19.	Bulan November 2022 minggu 3: \r\n- Revisi Chapter “Introduction”\r\n- Menulis “Acknowledgement”\r\n20. Bulan November 2022 minggu 4: \r\n- Revisi Chapter “Introduction”\r\n- Merapikan draft thesis dari Chapter awal sampai Conclusion\r\n21.	Bulan Desember 2022 minggu 1-3: \r\nProses proofreading\r\n22. Bulan Desember minggu 4: \r\n- Submit thesis', NULL, NULL, 1, '2018-02-23', NULL, 2, '2022-12-23', NULL, NULL, NULL, '2022-12-20', NULL, 70, 'Pada tahun 2020 saya mengambil cuti karena pandemi sampai akhir Juni 2022. Mulai semester ini saya bisa fokus mengerjakan tesis karena anak saya sudah mulai sekolah luring.', '2022-06-21 03:03:49', '2022-06-21 03:03:49', NULL),
(144, 'EV-1655867198', '199503252021093101', 'Rahmad Rifqi Fahreza', 'Fakultas Kedokteran Gigi', 'S3', 1, 'Doctoral Course Graduate School of Dentistry - Periodontology and Endodontology', 'Tohoku University', 2, NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, 1, '2022-05-10', NULL, 2, '2024-03-22', NULL, NULL, NULL, '2025-08-22', NULL, 25, NULL, '2022-06-22 03:06:38', '2022-10-28 04:21:32', NULL),
(145, 'EV-1655970857', '198207122015042001', 'YULIA NADAR INDRASARI', 'Fakultas Kedokteran', 'Sp.2', 7, 'Patologi Klinik bidang minat Hematologi', 'Departemen Patologi Klinik FK UNAIR', 2, NULL, 'Dr. Yetti Hernaningsih, dr, Sp.PK(K)', 'Prof. Dr. Aryati, dr, MS., Sp.PK(K)', 'Hubungan antara ekspresi P-glycoprotein dengan jumlah leukosit dan luaran klinis pada penderita Acute Myeloid Leukemia dewasa', 20, 'Ujian Proposal', NULL, NULL, 2, '2022-07-10', NULL, 2, '2022-07-10', NULL, NULL, NULL, '2022-12-02', NULL, 90, 'Time management', '2022-06-23 07:54:17', '2022-06-23 07:54:17', NULL),
(146, 'EV-1656410395', '198712022015041002', 'JOVI SULISTIAWAN', 'Fakultas Ekonomi dan Bisnis', 'S3', 5, 'Manajemen', 'Asia University', 2, NULL, 'Pei-Kuan Lin', 'Massoud Moslehpour', NULL, NULL, 'Topik penelitian baru diajukan semester ini (5)', '/uploads/evaluation/study_semester_result/1656410395_WhatsApp Image 2022-06-10 at 8.16.18 PM.jpeg', NULL, 2, '2023-01-10', NULL, 2, '2022-12-13', NULL, NULL, NULL, '2023-06-29', NULL, 70, 'Beasiswa hanya mengcover tuition fee dan living cost tanpa ada dana bantuan untuk publikasi serta dana untuk mengikuti kegiatan conference ataupun workshop. \r\n\r\nSudah pernah mencoba untuk menanyakan hal ini pada Kepala Departemen namun tidak pernah ada jawaban yang menggembirakan. Bahkan sebelum keberangkatan saya di Oktober 2020, saya sudah meminta bantuan dana terkait biaya karantina selama 14 hari namun saya tidak mendapatkannya.\r\n\r\nJika dosen memang dianggap sebagai modal yang penting bagi universitas, seharusnya universitas (setidaknya) memberikan bantuan terkait hal tersebut. Inilah yang kemudian membuat saya enggan untuk melaporkan kemajuan studi saya dan baru di tahun kedua saya melaporkannya. Untuk apa saya harus melaporkan kemajuan studi saya kepada pihak yang tidak memberikan saya bantuan selama proses studi saya????', '2022-06-28 09:59:55', '2022-06-28 09:59:55', NULL),
(147, 'EV-1656471765', '198103232009121005', 'AMAK MOHAMAD YAQOUB', 'Fakultas Ekonomi dan Bisnis', 'S3', 13, 'Operations Management', 'University of Groningen', 2, NULL, 'Prof. Dr. Dirk Pieter van Donk', 'Prof. Dr. Manda Broekhuis', 'Managing Service Triads Through Buyer Involvement in Supplier’s HR Practices', 80, 'Publikasi paper di Jurnal Internasional', '/uploads/evaluation/study_semester_result/1656471765_Transcript Amak Yaqoub.pdf', NULL, 1, '2017-11-15', '/uploads/evaluation/proposal_file/1656471765_Approved research proposal Amak Yaqoub.pdf', 1, '2017-12-08', 90, '/uploads/evaluation/similarity_file/1656471765_Approval Research Committee and SOM Research Institute.pdf', NULL, '2022-12-01', NULL, 80, 'Pandemi covid menyebabkan saya harus kemabli ke Indonesia saat fase akhir penyelesaian tesis di Juni 2020. Sejak saat itu, proses pembimbingan dan penulisan disertasi terhambat. Saat ini saya dan tim supervisor melakukan meeting progress setiap dua minggu sekali dan dalam proses penyelesaian manuskrip publikasi sebagai syarat kelulusan', '2022-06-29 03:02:45', '2022-06-29 03:02:45', NULL),
(148, 'EV-1656729241', '198902182018013101', 'Prasasti Irianto', 'Perpustakaan', 'S1', 3, 'Sistem informasi', 'ITATS', 2, NULL, NULL, NULL, 'Pengembangan Sistem AILIS Perpustakaan Unair', 50, 'Segera menyelesaikan skripsi', NULL, NULL, 2, '2022-10-01', NULL, 2, '2022-10-30', NULL, NULL, NULL, '2022-12-31', NULL, 85, NULL, '2022-07-02 02:34:01', '2022-07-02 02:34:01', NULL),
(149, 'EV-1658189204', '198104142008122001', 'FARAPTI', 'Fakultas Kesehatan Masyarakat', 'S1', 6, 'Ilmu Kedokteran', 'Fakultas Kedokteran', 2, NULL, 'Prof. Muhammad Miftahussurur, dr., M. Kes., Sp.PD., KGEH., Ph.D', 'Dr. Purwo Sri Rejeki, dr., M. Kes', 'Pengaruh Diet Kaya Rempah Sebagai Sumber Kalium Dan                  Substitusi Garam Terhadap Preferensi Rasa, Natriuresis, Dan Tekanan Darah Pada Lansia', 40, 'Menyelesaikan naskah proposal penelitian, bimbingan intensif, serta menyiapkan pengajuan sidang proposal yang direncanakan bulan September-Oktober 2022 , dan pengambilan data lapangan bulan Oktober- Desember 2022', NULL, NULL, 2, '2022-09-30', NULL, 2, '2023-01-19', 0, NULL, NULL, '2023-04-14', NULL, 0, 'proses menyelesaikan naskah proposal dan persiapan ujian proposal', '2022-07-19 00:06:44', '2022-07-19 00:06:44', NULL),
(150, 'EV-1658291047', '197003011994121001', 'SUGIHARTO', 'Fakultas Sains dan Teknologi', 'S3', 6, 'Biololgi', 'Universitas Airlangga', 2, NULL, 'Prof. Dr. Y. Sri Wulan Manuhara, M.Si.', 'Dr. Dwi Winarni, M.Si.', 'Pengembangan bahan obat herbal Indonesia', 90, 'Sedang mengajukan KRS untuk Uji Kelayakan, Ujian Tertutup, dan Ujian Terbuka', '/uploads/evaluation/study_semester_result/1658291047_KHS_Smtr 5_15 Feb 2022.pdf', NULL, 1, '2020-05-06', '/uploads/evaluation/proposal_file/1658291047_Proposal_Full.pdf', 2, '2022-07-29', 0, NULL, NULL, '2022-09-20', NULL, 90, '1.  Semester 2 kmrn tdk bisa penelitian sebab kampus lock down akibat covid\r\n2. Mengirim naskah publikasi jurnal - accepted membutuhkan waktu agak lama', '2022-07-20 04:24:07', '2022-07-20 04:24:07', NULL),
(151, 'EV-1658737966', '197306112008011015', 'GAYUNG KASUMA', 'Fakultas Ilmu Budaya', 'S3', 8, 'Ilmu-Ilmu  Humaniora (Doktor Sejarah)', 'Universitas Gadjah Mada', 2, NULL, 'Dr. Sri Margana, M.Phil', 'Dr. Mutiah Amini, M.Hum', 'Romansa Revolusi: Seks dan Relasi Gender di Kota Surabaya, 1945-1950an', 80, 'Koordinasi dengan Promotor dan Ko-promotor melaui WA, Email dan Zoom.\r\nKemajuan Disertasi, struktur bab 1 sampai 6 sudah terbentuk, hanya beberapa data dalam sub-bab masih ada yang kurang (kosong)  terutama  sumber primer tertentu saja.', '/uploads/evaluation/study_semester_result/1658737966_Transkrip Nilai Semester Genap 2021-2022 (Gayung Kasuma)-Tandatangan.pdf', NULL, 1, '2021-01-14', '/uploads/evaluation/proposal_file/1658737966_catatan ujian Komprehensif 14 Januari 2021 (Gayung Kasuma) 3.docx', 2, '2023-01-25', NULL, NULL, NULL, '2023-06-25', NULL, 80, 'Sakit kecelakaan (patah tulang kaki kanan), operasi bedah tulan 2 kali', '2022-07-25 08:32:46', '2022-07-25 08:32:46', NULL),
(152, 'EV-1658857458', '197812172005012001', 'ENDAH PURWANTI', 'Fakultas Sains dan Teknologi', 'S3', 4, 'S3 MIPA', 'Universitas Airlanga', 2, NULL, 'Dr. Fatmawati, M.Si', 'Dr. Rimuljo Hendradi, M.Si', 'Health Recommender System Untuk Penyakit Diabetes Dengan Menggunakan Kombinasi Metode Hybrid Filtering dan Artificial Neural Network', 30, 'Semester Gasal 2021/2022 kemarin telah berhasil melakukan sidang kualifkasi dengan judul “Analisis Sentimen Untuk\r\nMeningkatkan Penerimaan Hasil Rekomendasi Manajemen Diri Penderita Diabetes Dengan Metode Hybrid Recommender\r\nSystem”, pada bulan Januari 2022. Masukan dari penguji yaitu, masih banyak hal yang harus diperjelas terutama dari segi data\r\nyang akan digunakan dan metode, sehingga perlu di cari lagi referensi yang berkaitan dengan sistem rekomendasi, dan analisis\r\nsentimen pada penderita penyakit diabetes. Data yang akan digunakan untuk sementara ini diambil dari repository online pada\r\nwebsite machine learning. Metode yang digunakan telah mengerucut pada hybrid recommender system, artificial neural\r\nnetwork, dan sentimen analysis. Saat ini sedang disusun proposal disertasi yang rencananya akan diajukan untuk sidang\r\nseminar proposal pada bulan Juli 2022. Setelah sidang proposal, rencana selanjutnya adalah mengikuti seminar internasional,\r\npada bulan Oktober 2022, dan melakukan publikasi pada jurnal pada awal tahun 2023', NULL, NULL, 2, '2022-08-10', NULL, 2, '2022-09-30', NULL, NULL, NULL, '2023-07-27', NULL, 20, 'karena merupakan ijin belajar, maka beban tri darma masih lengkap sehingga kesulitan dalam melakukan manajemen waktu', '2022-07-26 17:44:18', '2022-07-26 17:44:18', NULL),
(153, 'EV-1658892587', '198008172008012016', 'NURMAWATI FATIMAH', 'Fakultas Kedokteran', 'S3', 3, 'S3 Ilmu Kedokteran', 'Universitas Airlangga', 2, NULL, 'Prof Sri Agus Sudjarwo, drh.,PhD', 'Dr. Arifa Mustika,dr.,M.Si', 'Petiveria Alliacea pada kardiomiopati hewan coba yang diinduksi STZ', 30, '1. Melakukan Seminar topik\r\n2. Melaksanakan penelitian pendahuluan \r\n3. Mempersiapkan dan melakukan ujian proposal desertasi\r\n4. melakukan konsultasi intesif dengan promotor dan ko promotor', NULL, NULL, 2, '2022-10-11', NULL, 2, '2022-12-15', NULL, NULL, NULL, '2024-02-22', NULL, 27, '1. Membagi waktu dengan tugas sebagai dosen', '2022-07-27 03:29:47', '2022-07-27 03:29:47', NULL),
(154, 'EV-1659053785', '198002022006042002', 'DANTI NUR INDIASTUTI', 'Fakultas Kedokteran', 'S1', 3, 'Ilmu Kedokteran', 'Fakultas Kedokteran Unair', 2, NULL, 'Prof. Dr. Sukardiman, MS., Apt', 'Dr. Arifa Mustika, dr., MSi', 'Obat Herbal untuk Sindroma Metabolik', 30, 'Ujian Kualifikasi\r\nPenelitian Pendahuluan', NULL, NULL, NULL, '2023-01-02', NULL, 2, '2023-05-08', NULL, NULL, NULL, '2023-12-12', NULL, 20, NULL, '2022-07-29 00:16:25', '2022-07-29 00:16:25', NULL),
(155, 'EV-1659060122', '198110062008012018', 'NURINA HASANATULUDHHIYAH', 'Fakultas Kedokteran', 'S1', 2, 'Ilmu Kedokteran jenjang Doktor', 'Fakultas Kedokteran Universitas Airlangga', 2, NULL, 'Dr. Arifa Mustika dr., M.Kes', 'Prof Naoto Uemura MD., PhD', 'Study on Mechanism of Olive Leaves Extract on Oxidative Stress and Neuroinflammation in Male Wistar Rats Induced by AlCl3 + D-Galactose', 10, '-Menjalani seminar topik 1\r\n-Menyelesaikan penulisan proposal untuk dapat mengikuti ujian -proposal\r\n-Menulis publikasi dari penelitian pendahuluan', NULL, '/uploads/evaluation/study_presence/1659060122_foto ujian kualifikasi.jpeg', 2, '2022-10-28', NULL, 2, '2023-07-28', NULL, NULL, NULL, '2022-12-29', NULL, 10, 'beban tugas sebagai dosen sangat banyak, sehingga perlu pandai waktu', '2022-07-29 02:02:02', '2022-07-29 02:02:02', NULL);
INSERT INTO `evaluations` (`evaluation_id`, `evaluation_code`, `NIK`, `name`, `division`, `stage`, `semester`, `study`, `institution`, `study_status`, `study_certificate`, `mentor_1`, `mentor_2`, `topic`, `percentage_ta`, `follow_up_ta`, `study_semester_result`, `study_presence`, `has_proposal_test`, `proposal_date`, `proposal_file`, `has_similarity_test`, `evaluation_date`, `percentage_evaluation`, `similarity_file`, `percentage_end_test`, `end_test_date`, `end_test_file`, `percentage_pass_academic`, `study_problem`, `created_at`, `updated_at`, `deleted_at`) VALUES
(156, 'EV-1659061642', '198203292015041001', 'ALFIAN NUR ROSYID', 'Fakultas Kedokteran', 'S3', 4, 'Doktor Ilmu Kedokteran', 'FK UNAIR', 2, NULL, 'Prof.Dr.M.Amin, dr., Sp.P(K)', 'Prof.Dr.Jusak Nugraha, dr., Sp.PK(K)', 'ANALISIS PERAN ACE2, IL-6, IL-10, KL-6, MMP-9 DAN TIMP-1 PADA TAMPILAN KLINIS DAN KELAINAN PARU SELAMA PERAWATAN DAN PASCA COVID-19', 60, 'Pengambilan sampel sudah selesai 78 sampel, sedang menganalisis statistik data lalu dilanjutkan menulis naskah. Naskah dibagi menjadi 3 tulisan untuk submit ke jurnal terindex scopus.', NULL, NULL, 1, '2021-10-06', '/uploads/evaluation/proposal_file/1659061642_Form Ujian Proposal Penelitian S3 Alfian By Riset FKUA.pdf', 2, '2022-12-20', NULL, NULL, NULL, '2023-06-20', NULL, 60, NULL, '2022-07-29 02:27:22', '2022-07-29 02:27:22', NULL),
(157, 'EV-1659080827', '198508242019031004', 'SIGIT KURNIANTO', 'Fakultas Kesehatan Masyarakat', 'S3', 1, 'Ilmu Akuntansi', 'Universitas Airlangga', 2, NULL, 'Prof. Dr. Bambang Tjahjadi., SE., MBA., Ak., CMA., CPM., CA', 'Dr. Sri Ningsih, SE., M.Si., Ak., CA', 'Tata Kelola Badan Usaha Milik Desa (BUM Desa), Reputasi, Keunggulan Kompetitif Berkelanjutan, dan Kinerja BUM Desa', 60, 'Menyempurnakan proposal, hasil dan menyelesaikan proyek 1', '/uploads/evaluation/study_semester_result/1659080827_KHS-042127147303-Genap-2021 2022.pdf', '/uploads/evaluation/study_presence/1659080827_Kartu Konsultasi Lampiran.pdf', 2, '2023-02-20', NULL, 2, '2023-07-29', NULL, NULL, NULL, '2023-07-29', NULL, 0, NULL, '2022-07-29 07:47:07', '2022-07-29 07:47:07', NULL),
(160, 'EV-1659099250', '198506222010122004', 'IZZATUL FITHRIYAH (RSUA)', 'Fakultas Kedokteran', 'S3', 4, 'Ilmu Kedokteran Jenjang Doktor', 'Universitas Airlangga', 2, NULL, 'Prof. Dr. Irwanto, dr. Sp.A(K)', 'Dr. Yunias Setiawati, dr. Sp.KJ(K)', 'Pengaruh Pemberian Green tea Extract terhadap serotonin dan dopamin tikus model autisme', 30, 'melaksanakan ujian proposal dan uji kelaikan etik', NULL, NULL, 2, '2022-10-01', NULL, 2, '2023-02-01', 0, NULL, NULL, '2023-07-01', NULL, 20, NULL, '2022-07-29 12:54:10', '2022-07-29 12:54:10', NULL),
(161, 'EV-1659355847', '197710262008012011', 'ZAKIYATUL FAIZAH', 'Fakultas Kedokteran', 'S3', 2, 'Ilmu Kedokteran', 'Universitas Airlangga', 2, '/uploads/evaluation/study_certificate/1659355847_Ijazah S1.pdf', 'Prof. Dr. Hendy Hendarto, dr., SpOG(K)', 'Prof. Delvac Oceandy, MD., Ph.D', 'Ekspresi Sinyal Hippo Pathway pada Spermatogenesis', 10, 'Memperbaiki hasil ujian kualifikasi untuk didiskusikan dengan pembimbing dalam rangka ujian seminar topik. Mempersiapkan bahan yang dibutuhkan untuk melakukan penelitian. Menyiapkan ujian proposal', NULL, NULL, 2, '2022-12-20', NULL, 2, '2023-06-12', NULL, NULL, NULL, '2024-01-16', NULL, 20, NULL, '2022-08-01 12:10:47', '2022-08-04 11:02:05', NULL),
(162, 'EV-1659408799', '197806282005012002', 'YUANI SETIAWATI', 'Fakultas Kedokteran', 'S3', 2, 'Ilmu Kedokteran', 'Fakultas Kedokteran Universitas Airlangga', 2, NULL, 'Prof. Sri Agus Sudjarwo, drh., PhD', 'Prof. Dr. Jusak Nugraha, dr., MS., Sp.PK(K)', 'Aktivitas Gastroprotektif Umbi Porang (Amorphophallus oncophyllus) terhadap Ekspresi TNF Alfa dan IL-1 Beta Tikus Putih (Rattus norvegicus) yang diinduksi Indometasin', 25, 'Ujian TOEFL dan Ujian Kualifikasi', NULL, NULL, 2, '2023-06-10', NULL, 2, '2023-11-10', 15, NULL, NULL, '2024-06-10', NULL, 75, 'Tidak ada', '2022-08-02 02:53:19', '2022-08-02 02:56:58', NULL),
(163, 'EV-1659412024', '197801262006041001', 'BADRUS ZAMAN', 'Fakultas Sains dan Teknologi', 'S1', 4, 'S3 MIPA', 'Universitas Airlangga', 2, NULL, 'Dr. Fatmawati, M.Si.', 'Dr. Rimuljo Hendradi, S.Si, M.Si', 'Text Mining', 10, 'Menyelesaikan Kualifikasi', NULL, NULL, 2, '2022-12-05', NULL, 2, '2023-02-02', NULL, NULL, NULL, '2023-08-02', NULL, 10, NULL, '2022-08-02 03:47:04', '2022-08-02 03:47:04', NULL),
(164, 'EV-1659419605', '197709192008012013', 'DINA FITRISIA SEPTIARINI', 'Fakultas Ekonomi dan Bisnis', 'S3', 4, 'ILMU EKONOMI ISLAM', 'UNIVERSITAS AIRLANGGA', 2, NULL, 'DR. IMRON MAWARDI', 'DR. NISFUL LAILA', 'ANALISIS PORTOFOLIO INVESTASI TERBAIK BERDASARKAN  RESIKO DAN NILAI MANFAAT PADA PENGELOLAAN DANA HAJI  PADA BADAN PENGELOLA KEUANGAN HAJI (BPKH)', 50, 'UJIAN PROPOSAL MENCARI DATA', '/uploads/evaluation/study_semester_result/1659419605_KHS Semester 2.pdf', NULL, 2, '2022-12-31', NULL, 2, '2023-12-31', NULL, NULL, NULL, '2024-12-31', NULL, 40, 'Pencarian Data', '2022-08-02 05:53:25', '2022-08-02 05:53:25', NULL),
(165, 'EV-1659498730', '198411202015041001', 'MANGGALA PASCA WARDHANA', 'Fakultas Kedokteran', 'S3', 4, 'Ilmu Kedokteran', 'Universitas Airlangga', 2, NULL, 'Prof. Dr. dr. Erry Gumilar Dachlan, SpOG(K)-KFM', 'Prof. Dr. Kuntaman, dr., MS., SpMK(K)', 'Mekanisme Inflamasi Sistemik Maternal dan Plasenta Systemic Acute Respiratory Syndrome Coronavirus 2 pada Kehamilan Normal', 60, 'Progress yang telah dilakukan antara lain publikasi pertama sebagai pendahuluan dari penelitian desertasi, selain itu juga telah dilakukan penyelesaian tugas S3 lainnya di bidang pengabdian masyarakat melalui penyelenggaraan seminar internasional melalui platform Unair selain itu juga telah dilakukan pembacaan presentasi oral pada acara ilmiah internasional dengan topik yang sesuai dengan topik desertasi. Untuk tahapan penelitian desertasi sudah dilakukan setelah didapatkan persetujuan dari komite etik. Penelitian telah selesai dilakukan sampling dan dibagi menjadi dua tahapan. Tahapan pertama telah selesai dilakukan dan dianalisis serta dilakukan penyusunan artikel untuk dipublikasikan ke jurnal internasional. Sudah didapatkan penolakan  pada satu jurnal dan sedang diusahakan untuk submit ke jurnal lainnya. Untuk tahapan kedua masih dilakukan pengecatan sampel, penilaian dan analisis yang nantinya juga akan disusun artikel untuk di publikasikan. Untuk tahapan ujian yang sudah dilakukan antara lain  ujian kualifikasi, seminar topik, ujian proposal, seminar berkala 1 untuk tahapan penelitian pertama. Diharapkan setelah penelitian tahap kedua selesai akan dilanjutkan dengan seminar berkala 2, penyusunan naskah desertasi dan dilanjutkan tahapan penelitian berikutnya', NULL, NULL, 1, '2021-10-13', '/uploads/evaluation/proposal_file/1659498730_undangan proposal manggala.pdf', 2, '2022-11-24', NULL, NULL, NULL, '2023-03-14', NULL, 80, 'tahapan analisis dan publikasi Penelitian', '2022-08-03 03:52:10', '2022-08-03 03:52:10', NULL),
(166, 'EV-1659503760', '197905152007012001', 'DYAH PUSPITASARI SRIRAHAYU', 'Fakultas Vokasi', 'S3', 6, 'Ilmu Manajemen', 'Universitas Airlangga', 2, NULL, 'Dr. Ahmad Rizki Sridadi', 'Dian Ekowati SE., M.Si., M.AppCom(OrgCh)., Ph.D', 'Perilaku Inovatif Pustakawan Perpustakaan Umum', 70, 'Membuat timeline\r\n\r\nMei – Juli\r\n-	Saat ini proses pengambilan data\r\n-	Menentukan jadwal untuk wawancara\r\n-	Pengambilan data\r\nJuli - September\r\n-	Pengolahan data\r\n-	Analisa data\r\n-	Pembuatan artikel hasil penelitian \r\nOktober – November\r\n-	Submit artikel ke jurnal\r\n-	Ujian kelayakan\r\n-	Analisa data lanjutan	Desember – Maret\r\n-	Pengolahan dana analisa data lanjutan\r\n-	Ujian tertutup\r\n-	Perbaikan revisi\r\nApril – Mei\r\n-	Ujian terbuka\r\n-	wisuda', '/uploads/evaluation/study_semester_result/1659503760_Rekap Nilai.pdf', NULL, 1, '2022-04-21', NULL, 1, '2022-08-03', 15, '/uploads/evaluation/similarity_file/1659511727_INNOVATIVE WORK BEHAVIOR PUSTAKAWAN_ STUDI PROSES DAN DAMPAK PADA PERPUSTAKAAN UMUM INDONESIA.pdf', NULL, '2023-02-21', NULL, 70, 'Ada kendala dalam pengambilan data karena beberapa informan merupakan penjabat yang waktu laungnya tidak tentu.\r\nTetap berusaha menyesuaikan jadwal dengan informan untuk memperoleh data sambil mengolah data yang sudah masuk.', '2022-08-03 05:16:00', '2022-08-03 07:28:47', NULL),
(167, 'EV-1659503882', '198412152009122007', 'DESSY HARISANTY', 'Fakultas Vokasi', 'S3', 3, 'Ilmu Sosial', 'Universitas Airlangga', 2, NULL, 'Prof. Dr. Rahma Sugihartati, dra., M.Si.', 'Dr. Koko Srimulyo, drs., M.Si.', 'Dekonstruksi Wacana Perpustakaan di Era Digital', 30, 'ujian proposal, lapangan, serta publikasi', '/uploads/evaluation/study_semester_result/1659503882_KHS-072027047315 semester 3.pdf', NULL, 2, '2022-08-30', NULL, 1, '2022-07-21', 13, '/uploads/evaluation/similarity_file/1659503882_hasil turnitin proposal.pdf', NULL, '2023-08-08', NULL, 50, NULL, '2022-08-03 05:18:02', '2022-08-03 05:18:02', NULL),
(168, 'EV-1659509496', '198412152009122007', 'DESSY HARISANTY', 'Fakultas Vokasi', 'S3', 1, 'Ilmu Sosial', 'Universitas Airlangga', 2, NULL, 'Dr. Rahma Sugihartati, dra., M.Si.', 'Dr. Koko Srimulyo, drs., M.Si.', 'Dekonstruksi Wacana Perpustakaan di Era Digital', 10, 'MKPD', '/uploads/evaluation/study_semester_result/1659509496_KHS-072027047315 semester 1.pdf', NULL, 2, '2022-07-20', NULL, 2, '2022-07-08', NULL, NULL, NULL, '2023-08-20', NULL, 10, NULL, '2022-08-03 06:51:36', '2022-08-03 06:51:36', NULL),
(169, 'EV-1659509713', '198412152009122007', 'DESSY HARISANTY', 'Fakultas Vokasi', 'S3', 2, 'Ilmu Sosial', 'Universitas Airlangga', 2, NULL, 'Dr. Rahma Sugihartati, dra., M.Si.', 'Dr. Koko Srimulyo, drs., M.Si.', 'Dekonstruksi Wacana Perpustakaan di Era Digital', 20, 'MKPD, seminar proposal', NULL, NULL, 2, '2022-07-21', NULL, 2, '2022-07-10', NULL, NULL, NULL, '2023-08-20', NULL, 20, NULL, '2022-08-03 06:55:13', '2022-08-03 06:55:13', NULL),
(170, 'EV-1659510474', '197905152007012001', 'DYAH PUSPITASARI SRIRAHAYU', 'Fakultas Vokasi', 'S3', 1, 'Ilmu Manajemen', 'Universita Airlangga', 2, NULL, NULL, NULL, NULL, 20, 'menentukan tema penelitian dan diskusi dengan dosen pengajar dan juga dosen wali', '/uploads/evaluation/study_semester_result/1659510474_khs sem 1.pdf', NULL, 2, '2021-02-16', NULL, 2, '2021-02-15', NULL, NULL, NULL, '2022-04-21', NULL, 30, NULL, '2022-08-03 07:07:54', '2022-08-03 07:07:54', NULL),
(171, 'EV-1659510639', '197905152007012001', 'DYAH PUSPITASARI SRIRAHAYU', 'Fakultas Vokasi', 'S3', 2, 'ilmu manajemen', 'universitas airlangga', 2, NULL, NULL, NULL, NULL, 40, 'mulai memetakan penelitian sebelumnya untuk mentukan topik yang baru.', '/uploads/evaluation/study_semester_result/1659510639_KHS sem 2.pdf', NULL, 2, '2021-08-03', NULL, 2, '2021-08-01', NULL, NULL, NULL, '2023-04-21', NULL, 40, NULL, '2022-08-03 07:10:39', '2022-08-03 07:10:39', NULL),
(172, 'EV-1659510870', '197905152007012001', 'DYAH PUSPITASARI SRIRAHAYU', 'Fakultas Vokasi', 'S3', 3, 'Ilmu Manajemen', 'Universitas Airlangga', 2, NULL, NULL, NULL, NULL, 45, 'penulisan proposal untuk ujian kelayakan', '/uploads/evaluation/study_semester_result/1659510870_KHS sem 3.pdf', NULL, 2, '2021-06-08', NULL, 2, '2021-05-08', NULL, NULL, NULL, '2023-03-21', NULL, 45, NULL, '2022-08-03 07:14:30', '2022-08-03 07:14:30', NULL),
(173, 'EV-1659511080', '197905152007012001', 'DYAH PUSPITASARI SRIRAHAYU', 'Fakultas Vokasi', 'S3', 4, 'ILMU manajemen', 'Universitas Airlangga', 2, NULL, NULL, NULL, 'Perilaku inovative Pustakawan', 50, 'penulisan proposal penelitian untuk ujian kelayakan', '/uploads/evaluation/study_semester_result/1659511080_KHS sem 4.pdf', NULL, 2, '2021-08-03', NULL, 2, '2021-08-02', NULL, NULL, NULL, '2022-03-21', NULL, 40, NULL, '2022-08-03 07:18:00', '2022-08-03 07:18:37', NULL),
(174, 'EV-1659511548', '197905152007012001', 'DYAH PUSPITASARI SRIRAHAYU', 'Fakultas Vokasi', 'S3', 5, 'Ilmu Manajemen', 'Universitas Airlangga', 2, NULL, 'Dr. Ahmad Rizki Sridadi', 'Dian Ekowati SE., M.Si., M.AppCom(OrgCh)., Ph.D', 'Perilaku Inovatif Pustakawan Perpustakaan Umum', 60, 'penulisan proposal penelitian', '/uploads/evaluation/study_semester_result/1659511548_KHS sem 5.pdf', NULL, 2, '2021-12-23', NULL, 2, '2021-12-20', NULL, NULL, NULL, '2022-03-21', NULL, 60, NULL, '2022-08-03 07:25:48', '2022-08-03 07:25:48', NULL),
(175, 'EV-1659588787', '198003212003122001', 'SHINTA DEVI IKA SANTHI RAHAYU', 'Fakultas Ilmu Budaya', 'S3', 5, 'Doktor Sejarah', 'Universitas Diponegoro', 2, NULL, 'Prof. Dr. Singgih Tri S., M.Hum', 'Dr. Dhanang Respati Puguh, M.Hum', 'Pendidikan dalam Masyarakat Plural: Dinamika Menjadi Indonesia Bagi Etnis Tionghoa di Indonesia 1946-2005', 30, 'Segera mengikuti ujian proposal disertasi', '/uploads/evaluation/study_semester_result/1659588787_WhatsApp Image 2022-08-04 at 11.40.53.jpeg', NULL, 2, '2022-09-23', NULL, 2, '2023-05-26', NULL, NULL, NULL, '2023-08-25', NULL, 80, 'Penelusuran sumber sejarah yang membutuhkan biaya cukup besar', '2022-08-04 04:53:07', '2022-08-04 04:53:07', NULL),
(176, 'EV-1659679863', '198111232009121005', 'RIZKA FATHONI PERDANA', 'Fakultas Kedokteran', 'S3', 7, 'Ilmu Kedokteran Dasar', 'Fakultas Kedokteran Universitas Airlangga', 2, NULL, 'Prof. Sri Herawati, dr., Sp.THT-KL(K)', 'Dr. Muhtarum Yusuf, dr., Sp.THT-KL(K)', 'Laring faring reflux pada papiloma laring', 60, 'segera konsultasi terkait hasil penelitian, konsultasi dengan ahli statistika, konsultasi dengan pembimbing, setelah itu menyusun format jurnal dan melakukan publikasi', NULL, NULL, 2, '2022-12-05', NULL, 2, '2022-12-12', NULL, NULL, NULL, '2023-01-02', NULL, 50, 'publikasi yang saya siapkan utk disertasi ternyata diskontinyu dari skopus, serta ada aturan baru dari pusat tentang sitematika penulisan author, akhirnya 2 naskah tersebut hangus. saya harus buat ulang. saya teliti ulang kembali. dan masa pandemi penelitian di 2021 saya terhambat', '2022-08-05 06:11:03', '2022-08-05 06:11:03', NULL),
(177, 'EV-1659697694', '198405292014041001', 'PRADANA ZAKY ROMADHON', 'Fakultas Kedokteran', 'S3', 1, 'S3 Ilmu Kedokteran', 'Fakultas Kedokteran Universitas Airlangga Surabaya', 2, NULL, 'Prof.Dr.Ami Ashariati.,dr.,SpPD.,K-HOM.,FINASIM', 'Prof.Dr.S.Ugroseno Yudho Bintoro.,dr.,SpPD.,K-HOM.,FINASIM', 'PEMETAAN GEN THALLASEMIA BETA MULTI ETNIS TERKAIT DENGAN CEDERA GLOMERURAL DAN TUBULAR GINJAL SUBKLINIS DI INDONESIA', 5, 'Sedang berproses untuk menyelesaikan studi', '/uploads/evaluation/study_semester_result/1659697694_KRS-Pradana Zaky Romadhon.pdf', NULL, 2, '2023-01-17', NULL, 2, '2023-06-15', NULL, NULL, NULL, '2024-01-25', NULL, 100, 'Sejauh ini belum ada kendala', '2022-08-05 11:08:14', '2022-08-05 11:08:14', NULL),
(178, 'EV-1659924441', '198106032009121003', 'PUNGKY MULAWARDHANA', 'Fakultas Kedokteran', 'S3', 5, 'kedokteran', 'Universitas Airlangga', 2, NULL, 'Prof. DR. Budi Santoso, dr., SpOG (K)', 'DR. Brahmana Askandar, dr., SpOG (K)', 'terapi molekuler kanker ovarium', 25, 'menyelesaikan proposal', NULL, NULL, 2, '2022-12-22', NULL, 1, '2022-06-20', 90, '/uploads/evaluation/similarity_file/1659924441_lmb pengesahan an. pungky.pdf', NULL, '2023-04-05', NULL, 25, NULL, '2022-08-08 02:07:21', '2022-08-08 02:07:21', NULL),
(179, 'EV-1659928809', '197607242008012007', 'YULY SULISTYORINI', 'Fakultas Kesehatan Masyarakat', 'S3', 4, 'Kesehatan Masyarakat', 'FKM Unair', 2, NULL, 'Dr. Arief Wibowo. dr., MS.', NULL, 'Indikator Kehamilan Remaja', 50, 'Seminar kualifikasi, MKPD 1, MKPD2. dan Seminar proposal. Sudah lulus TOEFL untuk syarat ujian proposal. Sudah submit artikel', '/uploads/evaluation/study_semester_result/1659928809_KHS-102017087316 - semester 2- Yuly Sulistyorini_ttd+stempel.pdf', NULL, 2, '2022-10-15', NULL, 2, '2022-11-15', NULL, NULL, NULL, '2023-01-08', NULL, 100, 'Pernah sakit.  Harus pandai mengkondisikan dan memanage tugas dan tanggungjawab sebagai dosen ibel.', '2022-08-08 03:20:09', '2022-08-08 03:20:09', NULL),
(180, 'EV-1659928981', '198411222015042002', 'SYLVIA ANGGRAENI', 'Fakultas Kedokteran', 'S3', 5, 'Ilmu Kedokteran Jenjang Doktor', 'Fakultas Kedokteran', 2, NULL, 'Prof. Dr. Cita Rosita Sigit Prakoeswa, dr., SpKK(K)', 'Prof. Dr. Anang Endaryanto, dr., SpA(K)', 'Pengaruh Imunoterapi Debu Rumah pada Mencit Model Dermatitis Atopik', 50, 'menyediakan waktu lebih banyak untuk analisis data dan pembuatan draft publikasi penelitian', NULL, NULL, 1, '2022-01-10', '/uploads/evaluation/proposal_file/1659928981_ujian proposal.jpeg', 2, '2022-11-22', NULL, NULL, NULL, '2023-01-10', NULL, 50, 'kendala terutama pada persiapan dan pelaksanaan penelitian akibat pandemi Covid-19', '2022-08-08 03:23:01', '2022-08-08 03:26:34', NULL),
(181, 'EV-1659929007', '198204112008122002', 'KURNIA DWI ARTANTI', 'Fakultas Kesehatan Masyarakat', 'S1', 6, 'S3 Kesmas', 'FKM Universitas Airlangga', 2, NULL, 'Dr. Santi Martini,dr.,M.kes', NULL, 'ANALISIS DAMPAK POTENSIAL PENURUNAN KONSUMSI ROKOK PADA BEBAN PENYAKIT AKIBAT ROKOK DAN KEMATIAN DINI DI INDONESIA', 20, 'Melakukan Ujian Proposal,\r\nMelakukan Test Toefl\r\nMelakukan submit artikel bereputasi khusus', NULL, NULL, 2, '2022-12-19', NULL, 2, '2023-04-17', NULL, NULL, NULL, '2023-09-25', NULL, 100, 'Tugas Struktural dan beban yang', '2022-08-08 03:23:27', '2022-08-08 03:23:27', NULL),
(182, 'EV-1659929023', '197203022010121001', 'HERMAWAN SUSANTO', 'Fakultas Kedokteran', 'S3', 2, 'DOKTOR ILMU KEDOKTERAN', 'FAKULTAS KEDOKTERAN', 2, NULL, 'Prof. DR.  Agung Pranoto dr.,  M.Kes., Sp.PD., KEMD., FINASIM', 'DR. Soebagijo Adi dr., SpPD., KEMD., FINASIM., FACP', 'KADAR BAT, SERPIN B3 DAN EKSPRESI miR-206 SEBAGAI BIOMARKER UNTUK PENENTUAN STATUS KELELAHAN JARINGAN PADA KASUS HYPERTHYROID DI INDONESIA', 25, 'segera menyelesaikan', '/uploads/evaluation/study_semester_result/1659929023_transkrip2.pdf', '/uploads/evaluation/study_presence/1659929023_daftar.docx', 2, '2023-01-08', NULL, 2, '2024-01-08', NULL, NULL, NULL, '2024-08-08', NULL, 25, 'tidak ada', '2022-08-08 03:23:43', '2022-08-08 03:23:43', NULL),
(183, 'EV-1659940238', '197810222008011005', 'ARIEF BAKHTIAR', 'Fakultas Kedokteran', 'S3', 2, 'Ilmu Kedokteran', 'FK UNAIR', 2, NULL, 'Prof. Amin', NULL, 'PPOK', 20, 'Semester Depan Selesai Proposal', NULL, NULL, 2, '2022-12-10', NULL, 2, '2022-11-05', NULL, NULL, NULL, '2023-06-10', NULL, 70, 'Belum ada', '2022-08-08 06:30:38', '2022-08-08 06:30:38', NULL),
(184, 'EV-1659963149', '199006202014041001', 'TRI BHAWONO DADI', 'Fakultas Kedokteran Hewan', 'S3', 5, 'S1 Kedokteran Hewan', 'Universitas Airlangga', 2, NULL, 'Prof Hilde De Rooster', 'prof. dr. Ingeborgh Polis', 'Pharmacokinetic study of local and systemic gentamicin concentrations after subcutaneous implantation of a gentamicin-impregnated collagen sponge in dogs', 20, 'Melakukan penelitian untuk publikasi ke 2', NULL, NULL, 2, '2024-05-08', NULL, 2, '2024-06-12', NULL, NULL, NULL, '2024-10-22', NULL, 50, 'Tingkat pembahasan yang mendetail, sehingga butuh waktu lebih lama dalam menyelesaikan tiap target publikasi sebagai syarat lulus, dimana dibutuhkan seitdaknya 3 publikasi', '2022-08-08 12:52:29', '2022-08-08 12:52:29', NULL),
(185, 'EV-1660019057', '197509252006042001', 'TITIEN DIAH SOELISTYARINI', 'Fakultas Ilmu Budaya', 'S3', 4, 'Ilmu Susastra', 'Universitas Indonesia', 2, NULL, 'Prof. Melani Budianta, Ph.D', 'Dr. Dhita Hapsarani, M.Hum', 'Impian Amerika dan Artikulasi Identitas Diaspora  di Amerika dalam Memoar Grafis', 35, 'Melakukan pembimbingan dengan tim promotor secara lebih intensif dan terjadwal, direncanakan tiap 2 minggu dan beberapa kali akan dilaksanakan secara luring.', NULL, NULL, 1, '2021-11-11', NULL, 2, '2023-06-30', NULL, NULL, NULL, '2024-01-31', NULL, 40, 'Terkendala pandemi sehingga belum memungkinkan untuk studi kepustakaan di Perpustakaan UI Depok dan bimbingan tatap muka dengan tim promotor.', '2022-08-09 04:24:17', '2022-08-09 04:24:17', NULL),
(186, 'EV-1660031914', '198509012009022012', 'AMELLIA MARDHIKA', 'Fakultas Vokasi', 'S3', 6, 'Doktor Keperawatan', 'Universitas Airlangga', 2, NULL, 'Dr. Agus Sulistyono, dr.,SpOG (K)', NULL, 'PENGEMBANGAN TOOL TENTANG RISIKO PENYAPIHAN DINI MENYUSUI SEBAGAI UPAYA MENINGKATKAN CAKUPAN ASI', NULL, 'Saya akan melakukan percepatan menulis naskah dengan cara konsul ke calon promotor dan konsul ke konsultan pakar di bidangnya. Insyaallah saya akan mendaftar ujian naskah pra kualifikasi pada Bulan Agustus 2022.', '/uploads/evaluation/study_semester_result/1660031914_KHS-131911573016.pdf', NULL, 2, '2022-12-09', NULL, 2, '2022-12-15', NULL, NULL, NULL, '2023-08-09', NULL, 20, 'Kendala yang saya alami adalah belum bisa memenejemen waktu secara baik untuk tugas kuliah, pekerjaan dan keluarga', '2022-08-09 07:58:34', '2022-08-09 07:58:34', NULL),
(187, 'EV-1660033749', '196101251980122003', 'RINDAYATI', 'Fakultas Vokasi', 'S3', 6, 'S3 Keperawatan', 'Universitas Airlangga', 2, NULL, NULL, NULL, NULL, 95, 'Saya akan ujian disertasi terbuka in syaaAllah tanggal 26 Agustus 2022 di Fakultas Keperawatan Universitas Airlangga', '/uploads/evaluation/study_semester_result/1660033749_HISTORI NILAI.docx', NULL, 1, '2021-02-05', '/uploads/evaluation/proposal_file/1660033749_BERITA ACARA UJI PROPOSAL TTD to B3.pdf', 1, '2021-03-10', NULL, NULL, NULL, '2021-03-10', '/uploads/evaluation/end_test_file/1660033749_NASKAH DISERTASI UJIAN TERBUKA_ke 2 fin 08062022.pdf', 95, NULL, '2022-08-09 08:29:09', '2022-08-09 08:29:09', NULL),
(188, 'EV-1660288791', '196312151989031002', 'TRISNADI WIDYALEKSONO CATUR PUTRANT', 'Fakultas Sains dan Teknologi', 'S3', 7, 'MIPA', 'Universitas Airlangga', 2, NULL, 'Prof. Dr. Ir. Agoes Soegianto', NULL, 'Osmoregulasi Lobster Air Tawar terhadap Logam Berat', 20, 'Belajar lebih giat mengenai osmoregulasi Lobster air tawar dan melakukan penelitian pendahuluan tentang fisiologi dan osmoregulasi lobster air tawar', '/uploads/evaluation/study_semester_result/1660288791_KHS-081917027315 GASAL 20212022.pdf', NULL, 2, '2022-10-11', NULL, 2, '2022-11-08', NULL, NULL, NULL, '2022-12-15', NULL, 20, 'hewan coba terkena penyakit hingga mati semua. dimulai lagi rearing lobster', '2022-08-12 07:19:51', '2022-08-12 07:19:51', NULL),
(189, 'EV-1660457748', '197912022010121003', 'MUHAMMAD NOOR DIANSYAH (RSUA)', 'Fakultas Kedokteran', 'S3', 1, 'ILMU KEDOKTERAN JENJANG DOKTOR', 'Universitas Airlangga', 2, NULL, 'Prof. Dr. Ami Ashariati, dr., SpPD-KHOM', 'Prof. Dr. Aryati, dr., SpPK(K)', 'Neutrofil Extracelluler Traps (NETS) pada kanker payudara', 10, 'Saya akan mencoba menyelesaikan proposal penelitian pada semester berikutnya dan mengajukan untuk mengikuti ujian proposal. Saya akan melengkapi dan mencari literatur tambahan untuk menyelesaikan proposal penelitian dari jurnal jurnal ilmiah terbaru karena topik penelitian saya masih tergolong baru dan belum banyak dilakukan penelitian sebelumnya sehingga nilai novelty nya cukup tinggi. Saya akan berkonsultasi dengan pembimbing 1 dan pembimbing 2 untuk memberikan masukan pada penyelesaian proposal penelitian saya. Pada pembimbing 1 prof ami ashariati saya lebih fokuskan konsultasi terkait bidang keilmuan yang beliau kuasai yaitu tentang kanker payudara terkait NETS yang akan saya teliti baik dari aspek klinis maupun diagnostiknya. Sedangkan pada pembimbing 2 prof aryati saya akan fokus berkonsultasi terkait keahlian beliau pada bidang patologi klinik dan pemeriksaan laboratorium, terkait metode penelitian saya dalam pengambilan sampel penelitian, variabel penelitian yang diambil, penggunaan reagen penelitian, serta teknik pengambilan sampel laboratorium dan juga alat laboratorium yang digunakan untuk memeriksa sampel penelitian saya.', '/uploads/evaluation/study_semester_result/1660457748_IMG-20220814-WA0008.jpg', NULL, 2, '2023-02-21', NULL, 2, '2023-07-26', NULL, NULL, NULL, '2024-07-31', NULL, 10, 'masih menyelesaikan proposal penelitian', '2022-08-14 06:15:48', '2022-08-14 06:15:48', NULL),
(190, 'EV-1660624324', '197901252006042001', 'NILAM ANDALIA KURNIASARI.', 'Fakultas Hukum', 'S3', 14, 'Program Doktor Program Studi Ilmu Hukum', 'Fakultas Hukum Universitas Airlangga', 1, '/uploads/evaluation/study_certificate/1660624324_Perkuliahan kelas B08162022.pdf', 'Prof. L. Budi Kagramanto, S.H., M.H.', 'Prof. Koesrianti, S.H., LL.M., Ph.D.', 'Asas Maritime Cabotage sebagai Katalis Peningkatan Industri Pelayaran pada Era Integrasi Ekonomi Regional', 100, 'Selesai studi. Telah diwisuda pada tanggal 13 Agustus 2022.', '/uploads/evaluation/study_semester_result/1660624324_Perkuliahan kelas B08162022.pdf', '/uploads/evaluation/study_presence/1660624324_Perkuliahan kelas B08162022.pdf', 1, '2021-06-08', '/uploads/evaluation/proposal_file/1660624324_BLANKO UJIAN PROPOSAL NILAM.pdf', 1, '2022-02-16', 6, '/uploads/evaluation/similarity_file/1660624324_Hasil Turnitin ujian kelayakan.pdf', NULL, '2022-07-13', '/uploads/evaluation/end_test_file/1660624324_QR Wisudawan.pdf', 100, 'Sudah lulus.', '2022-08-16 04:32:04', '2022-08-16 04:32:04', NULL),
(191, 'EV-1660630464', '198606262015041003', 'BRIAN EKA RACHMAN', 'Fakultas Kedokteran', 'S3', 1, 'Ilmu Kedokteran', 'Universitas Airlangga', 2, NULL, 'Prof. Dr. Usman Hadi, dr., Sp.PD, K-PTI FINASIM', NULL, 'Hubungan Polimorfisme CCR5, Subtipe Virus HIV-1, Aktivitas Gluthation Peroksidase-3, Ekspresi Nef, Ekspresi Env, Ekspresi Caspase-1 dengan Kegagalan Respon Imun Pasien HIV', 10, 'Mulai melakukan pengambilan sampel dengan menggunakan teknik convenience sampling (non-random sampling). Pengambilan sampel akan dilakukan di unit rawat jalan RSUD Dr. Soetomo dan RS Universitas Airlangga Surabaya, dengan berdasarkan kriteria inklusi yang telah ditetapkan, tanpa mempertimbangkan sampling frame ataupun randomisasi', NULL, NULL, 2, '2023-08-17', NULL, 2, '2023-08-17', NULL, NULL, NULL, '2024-08-17', NULL, 10, NULL, '2022-08-16 06:14:24', '2022-08-16 06:14:24', NULL),
(192, 'EV-1661135796', '199905172020095101', 'R. Muhammad Akbar Bagus Prakoso', 'Fakultas Teknologi Maju dan Multidisiplin', 'S1', 3, 'Manajemen', 'Universitas Terbuka Surabaya', 2, NULL, NULL, NULL, NULL, NULL, NULL, '/uploads/evaluation/study_semester_result/1661135796_Daftar Nilai Ujian 2 Semester.pdf', NULL, 2, '2022-12-31', NULL, 2, '2022-12-31', NULL, NULL, NULL, '2022-12-31', NULL, 100, NULL, '2022-08-22 02:36:36', '2022-08-22 02:36:36', NULL),
(193, 'EV-1661158692', '199007092015041002', 'Muhamad Nur Ghoyatul Amin', 'Fakultas Perikanan dan Kelautan', 'S1', 5, 'Teknologi Hasil Perikanan', 'UNIVERSITAS AIRLANGGA', 2, NULL, 'Thomas ROSENAU', 'Stefan Boehmdorfer', 'Method development for structural analysis of complex poysaccharides', 20, 'o	Melanjutkan peer review dari supervising committee\r\no	Submit artikel ke Journal of Applied Phycology (sekitar minggu kedua September 2022)\r\no	Melanjutkan pengambilan data untuk project kedua sekitar 20% (selesai pertengahan September 2022)\r\no	Menulis manuskrip untuk project kedua \r\no	Melanjutkan draft desertasi', '/uploads/evaluation/study_semester_result/1661158692_Transcript_22082022_1046_2044641_20220822104618.pdf', NULL, 2, '2023-01-23', NULL, 2, '2022-12-15', NULL, NULL, NULL, '2023-01-23', NULL, 50, NULL, '2022-08-22 08:58:12', '2022-08-22 08:58:12', NULL),
(194, 'EV-1661394745', '197904082015043201', 'TIA SARASWATI', 'Fakultas Ilmu Budaya', 'S3', 2, 'S3 Kajian Budaya dan Media', 'Universitas Gadjah Mada', 2, NULL, 'Prof. Dr. Wening Udasmoro, S.S., M.Hum, DEA', 'Dr. Ratna Noviani', 'Wacana Transgender dalam Sinema Jepang Close Knits (2017) dan Midnight Swan (2020)', 20, 'memperbaiki proposal disertasi melalui bimbingan dengan tim promotor dan melakukan persiapan untuk ujian pra kompre (seminar pra proposal) di akhir semester 3.', '/uploads/evaluation/study_semester_result/1661394745_Kartu Hasil Studi Semester Genap 2021-2022.pdf', NULL, 2, '2023-12-10', NULL, 2, '2023-12-25', NULL, NULL, NULL, '2025-01-28', NULL, 20, 'BELUM ADA', '2022-08-25 02:32:25', '2022-08-25 02:36:34', NULL),
(195, 'EV-1661485580', '197706122009122001', 'PARWATI HADI NOORSANTI', 'Fakultas Ilmu Budaya', 'S3', 7, 'Ilmu-ilmu Humaniora', 'FIB UGM', 2, NULL, 'Prof. Dr. Wening Udasmoro', 'Dr. tatang Hariri, M.A', 'Strategi Bahasa Politikus Perempuan Jepang', 55, 'menyelesaikan data yang belum terkumpul dan menganalisis data', '/uploads/evaluation/study_semester_result/1661485580_Parwati Hadi Noorsanti_Transkrip Sementara Semester Genap 2021-2022.pdf', NULL, 1, '2021-07-15', '/uploads/evaluation/proposal_file/1661485580_Surket Lulus Ujian Kompre Parwati.pdf', 2, '2023-03-19', NULL, NULL, NULL, '2023-06-12', NULL, 57, 'lamanya proses pengumpulan data', '2022-08-26 03:46:20', '2022-08-26 03:46:20', NULL),
(196, 'EV-1661944328', '198505182008122002', 'ZAMROTUL IZZAH', 'Fakultas Farmasi', 'S3', 6, 'Bioanalysis, Therapeutic Drug Monitoring and Clinical Toxicology', 'University of Groningen', 2, NULL, 'Prof. dr. Daan J. Touw, PharmD, PhD', 'Christoffer Åberg, PhD', 'Pharmacokinetic-based adherence measures for optimizing tenofovir dose regimens and treatment outcomes', 65, 'Manuskrip kuantifikasi tenofovir, lamivudin, dan efavirenz dalam saliva dengan metode nanophotometer (tesis chapter 3) dan kepatuhan pengobatan antiretroviral dan capaian target terapi pada pasien HIV (tesis chapter 5) akan disubmit pada jurnal internasional bereputasi. Saya berpartisipasi sebagai penyaji makalah pada International Congress of Therapeutic Drug Monitoring & Clinical Toxicology (IATDMCT 2022) pada 18–21 Sept 2022 di Praha, dan International Society for Medication Adherence (ESPACOMP) Conference 2022 pada 17–19 Nov 2022 di Berlin. Hasil dari validasi bioanalisis tenofovir akan dianalisis menyeluruh dalam plasma, dried blood spots, saliva, dan urin, dilanjutkan modeling farmakokinetika. Penelitian pendahuluan atau studi kelayakan akan dilaksanakan untuk penelitian adherence wheel pada layanan perawatan, dukungan, pengobatan HIV di Surabaya, Indonesia. Protokol penelitian akan disusun dan diajukan untuk ijin kelaikan etik ke Komite Etik Penelitian Kesehatan di Rumah Sakit Universitas Airlangga, Surabaya, Indonesia. Manuskrip dari hasil penelitian ini akan disusun sebagai tesis chapter 7.', '/uploads/evaluation/study_semester_result/1661944328_Hora_Finita_20220801.pdf', NULL, 1, '2020-06-03', '/uploads/evaluation/proposal_file/1661944328_formulierrenoenphd_9mo_ZI_20200610.pdf', 2, '2023-06-30', NULL, NULL, NULL, '2023-09-01', NULL, 80, 'Bioanalisis tenofovir dengan metode LC-MS/MS menggunakan empat matriks yang berbeda membutuhkan waktu lebih lama dari yang direncanakan karena kendala alat dan proses optimasi yang tidak mudah.', '2022-08-31 11:12:08', '2022-10-21 06:07:19', NULL),
(197, 'EV-1662021274', '199406132018013101', 'Ahmad Fadlli', 'Pusat Layanan Pengadaan Barang dan Jasa', 'S1', NULL, 'Teknik Elektro', 'Universitas 17 Agustus 1945 Surabaya', 1, '/uploads/evaluation/study_certificate/1666673064_MX-M5050_20220905_180249.pdf', 'Aris Heri Andriawan, ST. MT', NULL, 'Gangguan Harmonisa Pada Gedung', 100, NULL, NULL, NULL, 1, '2022-02-15', '/uploads/evaluation/proposal_file/1662021274_sempro.pdf', 1, '2022-07-14', 10, '/uploads/evaluation/similarity_file/1662021274_Analisa Harmonisa Pada Gedung Kuliah Bersama Universitas Airlangga_3.pdf', NULL, '2022-07-05', '/uploads/evaluation/end_test_file/1662021274_power5juli.pdf', 100, NULL, '2022-09-01 08:34:34', '2022-10-25 04:44:24', NULL),
(198, 'EV-1662605650', '198707172015042002', 'RISTA FAUZININGTYAS', 'Fakultas Keperawatan', 'S3', 4, 'Department of Nursing Sciences', 'Faculty Medicine, Universiti Malaya, Malaysia', 2, NULL, 'Associate Prof. Dr. Chong Mei Chan', 'Prof. Dr. Tan Maw Pin', 'UNDERSTANDING OF THE RESIDENT  SAFETY CULTURE AND QUALITY OF CARE  IN NURSING HOMES LOCATED IN INDONESIA:  A MIXED METHOD STUDY', 50, 'Pada minggu ke 3 bulan Januari akan dilakukan wawancara terakhir terhadap 8 responden, setelah itu proses transcribing dan penerjamahan dilakukan. Rencana untuk studi semester depan adalah menyelesaikan chapter 4, 5, 6 dan 7 dan mempersiapkan untuk candidature defense di semester 5 ini. Selain itu, direncanakan juga menyelesaikan drafting artikel ke 2 dan submit artikel 1.', '/uploads/evaluation/study_semester_result/1662605650_4. Progress report.pdf', NULL, 1, '2020-10-31', '/uploads/evaluation/proposal_file/1662605650_CANDIDATURE DEFENCE CORRECTION REPORT FORM_Rista.docx.cmc.pdf', 2, '2022-12-31', NULL, NULL, NULL, '2023-05-18', NULL, 60, 'Hambatan yang ditemui adalah terkait beberapa batasan akibat pandemic Covid. Tetap dilakukan pengambilan data meskipun dengan beberapa hambatan tersebut.', '2022-09-08 02:54:10', '2022-09-08 02:54:10', NULL),
(199, 'EV-1663031372', '198611202015041001', 'ANANDA FIRMAN PUTRANTO', 'Fakultas Kedokteran Gigi', 'S3', NULL, 'Ilmu Doktoral Kedokteran Gigi', 'Universitas Airlangga', 1, NULL, 'Prof. Dr. Ida Bagus Narmada, drg., Sp.Ort(K)', 'Prof. Dr. Rini Devijanti Ridwan, drg., M.Kes', 'Herbal Ortodonti', 100, NULL, NULL, NULL, 1, '2021-02-10', NULL, 1, '2022-07-26', NULL, NULL, NULL, '2022-08-15', '/uploads/evaluation/end_test_file/1663031372_399 SK Yudisium an Ananda Firman Putrananto.pdf', 100, NULL, '2022-09-13 01:09:32', '2022-09-13 01:11:04', NULL),
(200, 'EV-1663808623', '198707172015042002', 'RISTA FAUZININGTYAS', 'Fakultas Keperawatan', 'S3', 5, 'Department of Nursing Science', 'Faculty of Medicine, Universiti Malaya, Malaysia', 2, NULL, 'Asc. Prof Dr. Chong Mei Chan', 'Prof. Dr. Tan Maw Pin', 'UNDERSTANDING OF THE RESIDENT SAFETY CULTURE AND QUALITY OF CARE IN NURSING HOMES LOCATED IN INDONESIA: A MIXED METHOD STUDY', 85, 'Pada tanggal 20 September 2022 sudah dilakukan Candidature Defense.\r\nTarget semester depan (sem 6) adalah seminar tesis, penulisan 2 draft paper lagi untuk publikasi, serta persiapan untuk submit viva. Submit viva direncanakan pada bulan Januari 2023. Sehingga Viva dapat dilakukan 3 bulan setelah tanggal submit.', '/uploads/evaluation/study_semester_result/1663808623_RES27AS_4_sem5.pdf', NULL, 1, '2020-10-20', NULL, 2, '2022-12-23', NULL, NULL, NULL, '2023-04-20', NULL, 75, 'Saat in masih mengerjakan revisi setelah candidature defense, dan drafting 2 publikasi', '2022-09-22 01:03:43', '2022-09-22 01:03:43', NULL),
(201, 'EV-1665822167', '197003011994121001', 'SUGIHARTO', 'Fakultas Sains dan Teknologi', 'S1', 7, 'Biololgi', 'Universitas Airlangga', 2, NULL, 'Prof. Dr. Y. Sri Wulan Manuhara, M.Si.', 'Dr. Dwi Winarni, M.Si.', 'Pengembangan bahan obat herbal Indonesia', 100, 'Menunggu Yudisium dan Wisuda S3', '/uploads/evaluation/study_semester_result/1665822167_KHS+TT.pdf', NULL, 1, '2020-05-06', '/uploads/evaluation/proposal_file/1665822167_Proposal_Full.pdf', 1, '2022-08-31', NULL, '/uploads/evaluation/similarity_file/1665822167_Disertasi_SUG_20 Sep 22+TT.pdf', NULL, '2022-08-31', '/uploads/evaluation/end_test_file/1665822167_Disertasi_SUG_20 Sep 22+TT.pdf', 100, 'Belum bisa Yudisium 13 Okt 2022 sebab terkendala status pembebasan SPP oleh Direktorat Keuangan Unair', '2022-10-15 08:22:47', '2022-10-15 08:22:47', NULL),
(202, 'EV-1666166568', '198702242010122006', 'ITA RATNASARI', 'Rumah Sakit Universitas Airlangga', 'S1', 4, 'AKUNTANSI', 'UNIVERSITAS TERBUKA SURABAYA', 2, NULL, NULL, NULL, NULL, 30, '0', '/uploads/evaluation/study_semester_result/1666166568_DNU ita semester 3.pdf', NULL, 2, '0001-01-01', NULL, 2, '0001-01-01', NULL, NULL, NULL, '0001-01-01', NULL, 30, NULL, '2022-10-19 08:02:48', '2022-10-19 08:03:21', NULL),
(203, 'EV-1666234737', '199308272018013201', 'Faridah Hariyani', 'PIHM', 'S1', 5, 'S-1 Sastra Inggris Bidang Penerjemah', 'Universitas Terbuka', 2, NULL, NULL, NULL, NULL, NULL, NULL, '/uploads/evaluation/study_semester_result/1666234737_Daftar Nilai Ujian.pdf', NULL, 1, '2022-10-20', NULL, 1, '2022-10-20', NULL, NULL, NULL, '2022-12-20', NULL, 90, NULL, '2022-10-20 02:58:57', '2022-10-20 02:58:57', NULL),
(204, 'EV-1666235706', '199304292018013101', 'Nuri Hermawan', 'PIHM', 'S2', 4, 'Ilmu Linguistik', 'FIB Universitas Airlangga', 1, '/uploads/evaluation/study_certificate/1666235706_163. SKL-122014253013 (1).pdf', 'Dr. Ni Wayan Sartini, M.Hum', 'Nurul Fitri Hapsari, S.S., M.A', 'Analisis Wacana Kritis', 100, 'Sudah selesai', NULL, NULL, 1, '2022-01-26', NULL, 1, '2022-07-05', NULL, NULL, NULL, '2022-07-25', NULL, 100, NULL, '2022-10-20 03:15:06', '2022-10-20 03:15:06', NULL),
(205, 'EV-1666236594', '199004172018013101', 'Afri Andiarto', 'Direktorat Kemahasiswaan', 'S2', 8, 'Magister Manajemen', 'Universitas Airlangga', 2, NULL, 'Dr. Rizky Sridadi', '-', 'SDM dan Kinerja Organisasi', 50, 'Menyusun model dan menuntaskan penulisan', '/uploads/evaluation/study_semester_result/1666236594_KHS-041914353025 (1).pdf', NULL, 2, '2022-11-30', NULL, 2, '2022-11-24', NULL, NULL, NULL, '2022-12-27', NULL, 80, NULL, '2022-10-20 03:29:54', '2022-10-20 03:29:54', NULL),
(206, 'EV-1666237574', '198609052018013101', 'Bagus Dwi Prasetiyo', 'Lembaga Pengembangan Bisnis dan Inkubasi', 'S2', 5, 'Manajemen Sumber Daya Manusia', 'Universitas Airlangga', 2, NULL, 'Dian Ekowati, SE.,M.Si., M.App.Com. (OrgChg).,Ph.D.', NULL, 'Start Up', 50, 'sudah maju sidang proposal, lalu diarahkan untuk merubah kerangka konseptual namun masih dengan setting penelitian yang sama', NULL, NULL, 1, '2022-10-03', NULL, 2, '2022-12-31', NULL, NULL, NULL, '2022-12-31', NULL, 60, NULL, '2022-10-20 03:46:14', '2022-10-20 03:46:14', NULL),
(207, 'EV-1666239064', '198111212020013201', 'Lidya Tumewu', 'LPT', 'S3', 6, 'Ilmu Farmasi', 'Universitas Airlangga', 2, NULL, 'Prof. Dr. apt. Achmad Fuad Hafid, M.S.', 'Prof. Dr. apt. Aty Widyawaruyanti, M.Si.', 'Isolasi dan identifikasi senyawa antimalaria dari daun Artocarpus sericicarpus', 65, 'Saat ini sedang merevisi dua judul publikasi dan akan menyusun satu judul lagi. Saya akan berusaha submit dalam semester ini.', NULL, NULL, 1, '2021-12-15', NULL, 2, '2022-12-28', NULL, NULL, NULL, '2023-01-26', NULL, 50, NULL, '2022-10-20 04:11:04', '2022-10-20 04:11:04', NULL),
(208, 'EV-1666240825', '198303242006042002', 'ZENDY WULAN AYU WIDHI PRAMESWARI', 'Fakultas Hukum', 'S3', 3, 'Doktor Ilmu Hukum', 'Fakultas Hukum Universitas Airlangga', 2, NULL, 'Dr. Sukardi, S.H.,M.H.', 'Dr. Rosa Ristawati, S.H., LL.M; Dr. M. Syaiful Aris, S.H.,M.H.,LL.M.', 'Perlindungan Hak Konstitusional Anak yang Memiliki Kewarganegaraan Ganda Terbatas', 25, 'Melaksanakan Ujian Proposal Disertasi', '/uploads/evaluation/study_semester_result/1666240825_KHS-032117017317.pdf', NULL, 2, '2022-11-01', NULL, 2, '2023-09-25', NULL, NULL, NULL, '2024-09-25', NULL, 23, 'Tidak ada', '2022-10-20 04:40:25', '2022-10-20 04:41:58', NULL),
(209, 'EV-1666242560', '199006292018013201', 'Dwi Marina', 'Perpustakaan', 'S1', 3, 'Ilmu Informasi dan Perpustakaan', 'Universitas Terbuka', 2, '/uploads/evaluation/study_certificate/1666242560_Billing Registrasi Matakuliah -.pdf', NULL, NULL, NULL, NULL, NULL, '/uploads/evaluation/study_semester_result/1666242637_Billing Registrasi Matakuliah -.pdf', NULL, 2, '2022-10-20', NULL, NULL, '2022-10-20', 0, NULL, NULL, '2022-10-20', NULL, 0, NULL, '2022-10-20 05:09:20', '2022-10-20 05:10:38', NULL),
(210, 'EV-1666245176', '199110242020013201', 'Zayyin Dinana', 'LPT', 'S2', 5, 'Vaksinologi dan Imunoterapetika', 'Universitas Airlangga', 2, NULL, 'Prof. Dr. Fedik Abdul Rantam, drh', 'Prof. Dr. Suwarno, drh., M.Si', 'Prediksi epitop gen VP7 penyakit mulut dan kuku di Jawa Timur', 70, 'Sidang Tesis dan publish artikel ilmiah', NULL, NULL, 1, '2022-07-08', '/uploads/evaluation/proposal_file/1666245176_Proposal Magister Zayyin Dinana.docx', 2, '2022-02-11', NULL, NULL, NULL, '2022-07-11', NULL, 90, 'Adanya pergatian topik penelitian sehingga menyebabkan saya molor 1 semester', '2022-10-20 05:52:56', '2022-10-20 05:52:56', NULL),
(211, 'EV-1666246833', '198009052005012003', 'BERLIAN GRESSY SEPTARINI', 'Fakultas Psikologi', 'S3', 9, 'School of Population Health', 'Curtin University', 2, NULL, 'Dr. Takeshi Hamamura', 'Prof. Lauren Breen', 'A Cultural Model of Prosocial Behaviours: The Intergenerational Conceptualisation and Transmission of Prosociality', 85, 'Finishing Chapter 1 and Chapter 5.\r\nSubmit the manuscript by the end of November.', '/uploads/evaluation/study_semester_result/1666246833_13430535_Updated RSP.pdf', NULL, 1, '2018-05-15', '/uploads/evaluation/proposal_file/1666246833_13430535_Updated RSP.pdf', 2, '2018-05-15', 99, NULL, NULL, '2021-07-22', '/uploads/evaluation/end_test_file/1666246833_13430535_Updated RSP.pdf', 100, NULL, '2022-10-20 06:20:33', '2022-10-20 06:20:33', NULL),
(212, 'EV-1666248331', '199009292022013101', 'Kukuh Leksono Suminaring Aditya', 'Fakultas Hukum', 'S3', 3, 'Doktor Ilmu Hukum', 'Universitas Airlangga', 2, NULL, 'Prof. Dr. M Hadi Shubhan, S.H., M.H., CN', 'Dr. Trisadini Prasastinah Usanti, S.H., M.H.', 'Kepailitan Sebagai Alternatif Penagihan Denda Administratif Komisi Pengawas Persaingan Usaha', 50, 'Menyelesaikan MKPD I sebagai landasan penulisan atas rumusan masalah pertama dan kedua, Menyelesaikan MKPD II sebagai landasan penulisan atas rumusan masalah ketiga dan mereformulasi tugas MKPKK semester sebelumnya untuk dimasukkan kedalam masing-masing sub-bab.', '/uploads/evaluation/study_semester_result/1666248331_KHS-MKPKK-KUKUH.pdf', NULL, 1, '2022-09-12', '/uploads/evaluation/proposal_file/1666248331_blangko ujian proposal KUKUH signed.pdf', 2, '2022-12-20', 15, NULL, NULL, '2024-09-05', NULL, 100, 'Tugas administratif sebagai tim pengisi borang akreditasi baik nasional maupun internasional, implikasi sedikit berpengaruh terhadap proses pengerjaan tugas S3. Namun dapat teratasi dengan cukup baik. Lamanya proses publikasi artikel dari International Conference (status selected to be published di UUM Journal of Legal Studies (Q3))', '2022-10-20 06:45:31', '2022-10-20 06:45:31', NULL),
(213, 'EV-1666249236', '198308102006042001', 'ERNI AGUSTIN', 'Fakultas Hukum', 'S1', 3, 'Ilmu Hukum', 'Fakultas Hukum', 2, NULL, 'Prof. Dr. Y. Sogar Simamora, S.H., M.Hum.', 'Dr. Trisadini Prasastinah Usanti, S.H.,M.H. dan Dr. Indira Retno Aryatie, S.H.,M.H.', 'Prinsip Kepentingan Terbaik bagi Anak dalam International Child Abduction pada Perkawinan Internasional di Indonesia', 25, 'Segera mengajukan proses untuk ujian proposal pada semester 3.', '/uploads/evaluation/study_semester_result/1666249236_KHS-032117017318-Genap 20212022.pdf', NULL, 2, '2022-11-10', NULL, 2, '2024-06-20', NULL, NULL, NULL, '2024-08-01', NULL, 25, 'Tidak ada', '2022-10-20 07:00:36', '2022-10-20 07:00:36', NULL),
(214, 'EV-1666252472', '199408042020013201', 'Nurullia Hanum Hilfida', 'Rumah Sakit Gigi dan Mulut Pendidikan', 'S1', 7, 'S2 KEPERAWATAN', 'UNIVERSITAS AIRLANGGA', 2, NULL, 'Prof. Muhammad Miftahussurur, dr. M.Kes., Sp.PD-KGEH., Ph.D. FINASIM', 'Dr. Hanik Endang Nihayati, S.Kep.,Ns.,M.Kep.', 'Pengembangan Model Telenursing dalam Meningkatkan Dukungan Sosial dan Resiliensi pada Penyintas COVID-19', 50, 'Bismillah mugi Allah mudahkan dan dilancarkan, rencana target penyelesaian tugas akhir tesis:\r\n1. Mengajukan etik penelitian bulan oktober 2022 di Fakultas Keperawatan\r\n2. Melakukan penelitian November 2022\r\n3. Ujian Hasil Desember 2022\r\n4. Ujian Tesis Desember 2022', NULL, NULL, 1, '2022-09-05', NULL, 2, '2022-10-31', NULL, NULL, NULL, '2022-12-30', NULL, 100, 'masih berjuang membagi waktu yang baik antara keluarga, studi dan bekerja. Semoga Allah mudahkan dan lancarkan segala hajat kita.. Aaamiin..', '2022-10-20 07:54:32', '2022-10-20 07:54:32', NULL),
(215, 'EV-1666279342', '198204252005012002', 'CHRISTIANI WIDOWATI', 'Fakultas Hukum', 'S3', 7, 'Program Doktor Ilmu Hukum', 'Universitas Gadjah Mada', 2, NULL, 'Prof. Dr. Tata Wijayanta, S.H., M.Hum.', 'Herliana, S.H., M.Comm(Law)., Ph.D.', 'Asas Ius Contra Legem Dalam Penemuan Hukum Oleh Hakim', 80, 'semester ini saya telah selesai melaksanakan ujian seminar hasil penelitian disertasi pada tanggal 15 September 2022 dinyatakan lulus dengan capaian nilai AB. saat ini saya sedang mengerjakan masukan dari para peguji. harapan saya revisi dapat saya selesaikan secepatnya sehingga saya dapat mengajukan pelaksanaan ujian kelayakan', '/uploads/evaluation/study_semester_result/1666279342_Kartu Hasil Studi Semester Gasal 2022-2023 Christiani Widowati.pdf', NULL, 2, '2020-10-19', '/uploads/evaluation/proposal_file/1666279342_Pengesahan Revisi Usulan Penelitian Disertasi Christiani Widowati.pdf', 2, '2023-02-06', NULL, NULL, NULL, '2023-06-05', NULL, 80, 'kendala bimbingan masih secara daring', '2022-10-20 15:22:22', '2022-10-20 15:23:14', NULL);
INSERT INTO `evaluations` (`evaluation_id`, `evaluation_code`, `NIK`, `name`, `division`, `stage`, `semester`, `study`, `institution`, `study_status`, `study_certificate`, `mentor_1`, `mentor_2`, `topic`, `percentage_ta`, `follow_up_ta`, `study_semester_result`, `study_presence`, `has_proposal_test`, `proposal_date`, `proposal_file`, `has_similarity_test`, `evaluation_date`, `percentage_evaluation`, `similarity_file`, `percentage_end_test`, `end_test_date`, `end_test_file`, `percentage_pass_academic`, `study_problem`, `created_at`, `updated_at`, `deleted_at`) VALUES
(216, 'EV-1666308662', '198505252016113101', 'SETHO HADISUYATMANA', 'Fakultas Keperawatan', 'S1', 6, 'Dept. of Public Health, School of Psychology and Public Health', 'La Trobe University', 2, NULL, 'Prof. James H Boyd', 'Prof. Timothy Skinner, Dr. Gulzar Malik, Dr. Sonia Reisenhofer, Ferry Efendi, Ph.D', 'REINVENTING HEALTH CARE DELIVERY FOR MEN LIVING WITH TYPE-2 DIABETES MELLITUS IN INDONESIA', 70, 'Saat ini, semester enam saya studi dengan fokus pada finalisasi analisis data, penyelesaian dan publikasi systematic review, dan menyusun semua karya menjadi delapan bab disertasi. Saya berada di tahap akhir analisis untuk penelitian dalam mengeksplorasi bagaimana pedoman nasional tentang manajemen diebetes mellitus tipe-2 di Indonesia dipahami dan diterapkan oleh tim pengendalian penyakit tidak menular di Puskesmas. Penelitian ini menganalisis data yang telah dikumpulkan sebelumnya melalui diskusi kelompok terfokus (focused group discussion) secara daring. Selain itu, saat ini saya telah menghasilkan dua penelitian yang sekarang sedang ditinjau (under-review) di jurnal yang terindeks Scopus pada kuartil Q1 dan Q2 (yang juga diindeks oleh database World of Science SCIE). Ini termasuk protokol systematic review dan proyek scoping review. Protokol systematic review dimaksud telah terdaftar di PROSPERO dan temuan akhir serta manuskrip yang dihasilkan sedang disusun untuk dipublikasikan.\r\nSebelumnya, saya sudah mulai mengembangkan bab tesis saya. Berkenaan dengan bidang keahlian, pembimbing saya merekomendasikan beberapa penyesuaian dan modifikasi yang mengakibatkan perubahan format tesis. Saya khawatir bahwa fase akhir ini akan sedikit menyulitkan, dengan pengembangan manuskrip-manuskrip akhir penelitian menjelang akhir penyelesaian studi.\r\nKarenanya, saya beserta dosen pembimbing utama menyadari sepenuhnya bahwa perpanjangan masa studi dan bantuan beasiswa dari BPPLN DIKTI sebagai sponsor utama studi sangat dibutuhkan. Kami berharap, pimpinan Universitas Airlangga dapat membantu kami untuk mendapatkan persetujuan dan dukungan pihak pengelola BPPLN dan Dirjen DIKTI untuk dapat menyelesaikan studi yang sedang ditempuh.', NULL, NULL, 1, '2020-12-11', '/uploads/evaluation/proposal_file/1666308662_GRC-Resume.pdf', 1, '2022-04-03', NULL, '/uploads/evaluation/similarity_file/1666308662_tQvdAaAE8UaC1lQaaJ_DCw.pdf', NULL, '2023-10-30', NULL, 85, 'Studi dan kehidupan saya sebagai mahasiswa PhD telah dipengaruhi secara signifikan oleh pandemi COVID-19 dan periode lockdown terkait di Australia. Mulai Maret 2020, akses saya ke dukungan dan fasilitas universitas sangat dibatasi karena lockdown; jadi, saya harus melanjutkan studi dari akomodasi yang terletak di luar kampus. Menyadari tantangan di masa depan, saya disarankan untuk mengubah rencana studi, pendekatan, dan metodologi yang memakan banyak waktu selain dukungan online dari supervisor, keluarga, teman, dan kolega saya. Hal ini juga mengakibatkan terbatasnya akses buku dan materi hard copy yang hanya tersedia di perpustakaan universitas.\r\nSelama semester pertama, saya hanya memiliki satu pertemuan tatap muka dengan supervisor saya dan lingkungan online adalah satu-satunya platform untuk mendapatkan dukungan mereka terlepas dari segala keterbatasan. Hal ini mengakibatkan penundaan yang signifikan untuk studi saya; jadi, konfirmasi pencalonan saya harus dipindahkan ke 11 Desember 2020. Seminggu sebelum tanggal, saya mendapat kabar bahwa ibu saya mengalami tanda dan gejala COVID-19. Sebagai anak tunggal dari orang tua saya, adalah suatu keharusan bagi saya untuk merawat ibu saya. Saya dengan hati-hati mendiskusikan situasi dengan supervisor saya dan memperhatikan semua potensi. Setelah mendapat dukungan dari pembimbing saya, saya terbang kembali ke Indonesia satu minggu setelah konfirmasi dalam beberapa keadaan, termasuk: untuk mempercepat kemajuan etika belajar, mengumpulkan data studi secara menyeluruh, melanjutkan studi bila memungkinkan dan terbang kembali ke Melbourne sebagai secepatnya.\r\nNamun, proses etika tersebut memakan waktu lebih lama dari biasanya akibat pandemi yang beralih ke era “work from home”. Aplikasi dan persetujuan etika saya memakan waktu lebih dari enam bulan; dengan demikian, mengakibatkan penundaan besar untuk proses pengumpulan data. Selama masa sulit tahun 2021, lembaga dan organisasi sukarelawan asal saya mengharapkan saya untuk membantu mengoordinasikan bantuan kepada mereka yang terkena dampak COVID-19 dan membutuhkan rawat inap. Pandemi COVID-19 juga mempengaruhi anggota keluarga besar saya yang sangat saya sayangi. Saya telah kehilangan dua dari mereka dan itu adalah momen yang menyedihkan.\r\nBaru pada akhir Oktober 2021 etika penelitian saya disetujui, dan pendataan hanya secara online diizinkan oleh Dinas Kesehatan Kota Surabaya. Dengan demikian, pada bulan berikutnya saya bisa mulai mengumpulkan data pertama saya. Namun, dengan pertimbangan  dan di bawah rekomendasi yang cermat, pendekatan penelitian perlu dimodifikasi. Mengikuti pendekatan baru, pengumpulan dan analisis data harus dilakukan secara bersamaan; dengan demikian, menginformasikan sumber data berikutnya dan apa yang harus dikumpulkan dari mereka. Proses siklus ini memakan waktu delapan bulan sampai data terakhir dianggap lengkap dan jenuh. Setelah proses pendataan selesai, baru kali ini saya berhasil memesan penerbangan kembali ke Melbourne pada Juli 2022. Meski demikian, akan ada kemungkinan untuk melakukan pendataan ulang jika diperlukan.\r\nSaya sepenuhnya memahami bahwa tahun ini sangat penting untuk studi saya. Saya sadar akan jumlah pekerjaan yang menunggu sebelum perjalanan PhD saya. Pada saat saya berkesempatan, pembimbing saya juga khawatir bahwa tampaknya tidak mungkin untuk menyelesaikan dan menyerahkan semua pekerjaan PhD dalam satu semester terakhir dari rencana studi tiga tahun. Oleh karena itu, saya dan pembimbing sepakat untuk mencari bantuan beasiswa-perpanjangan dari BPPLN DIKTI sebagai satu-satunya pendukung penelitian ini.', '2022-10-20 23:31:02', '2022-10-20 23:31:02', NULL),
(217, 'EV-1666331583', '197212172007012001', 'SUGIANI', 'Perpustakaan', 'S1', 6, 'D IV Kearsipan', 'Universitas Terbuka', 2, NULL, NULL, NULL, NULL, NULL, NULL, '/uploads/evaluation/study_semester_result/1666331776_KHS Semester 5.pdf', NULL, 2, '2022-12-11', NULL, 2, '0001-01-01', NULL, NULL, NULL, '2022-12-11', NULL, 0, NULL, '2022-10-21 05:53:03', '2022-10-21 05:56:16', NULL),
(218, 'EV-1666358110', '199312282018083201', 'Raras Kirana Wandira', 'Fakultas Ekonomi dan Bisnis', 'S3', 3, 'PhD in Business and Administration', 'National Central University', 2, NULL, 'Prof. Julian Mingsung Cheng', NULL, 'Customer Religiosity and Religiosity', 20, 'Mencari scale pengukuran variabel yang tepat dan memulai data collection serta analisis.', NULL, NULL, 2, '2023-09-10', NULL, 2, '2023-09-10', NULL, NULL, NULL, '2024-08-01', NULL, 35, NULL, '2022-10-21 13:15:10', '2022-10-21 13:15:10', NULL),
(219, 'EV-1666439028', '198812172018083201', 'RIA TRIWASTUTI', 'Fakultas Vokasi', 'S3', 1, 'Management', 'University of Newcastle', 2, NULL, 'Prof. Yuli Suseno', 'A/P Limin Fu', 'How do Multiparty Communal Sharing Relational Ethics in Sharing Economy Contribute to Reciprocal Loyalty?', 12.5, '- Menyiapkan dokumen konfirmasi\r\n- Mengikuti conference (Australian & New Zealand Academy of Management)', '/uploads/evaluation/study_semester_result/1666439028_Academic Record Semester 1 - 2022.pdf', NULL, 2, '2023-02-22', NULL, 2, '2023-01-22', NULL, NULL, NULL, '2026-02-09', NULL, 12.5, 'Allowance atau pembayaran Tuition fee dari beasiswa terkadang telat, tapi masih bisa diatasi dan/atau dikomunikasikan dengan pihak kampus.', '2022-10-22 11:43:48', '2022-10-22 11:43:48', NULL),
(220, 'EV-1666464584', '199103122015043201', 'NASA ZATA DINA', 'Fakultas Vokasi', 'S3', 4, 'Sistem Informasi', 'University of Malaya', 2, NULL, 'Assoc. Prof. Dr. Sri Devi Ravana', 'Assoc. Prof. Dr. Norisma Idris', 'Information Retrieval', 45, 'Pada awal semester 4, mahasiswa telah men-submit dua paper untuk international conference yang akan dilaksanakan pada \r\n(1) 14th International IEEE (Tech Co-sponsor) Conference on Software, Knowledge, Information Management and Applications\r\n\r\npada tanggal 2-4 Desember 2022 di CamTech University, Phnom Penh, Cambodia;\r\n\r\n(2) 25th International Conference on Human-Computer Interaction (HCI International 2023) - HIMI: Human Interface and The Management of Information Thematic Area\r\n\r\npada tanggal 23-28 Juli 2023 di Copenhagen, Denmark.\r\n\r\nSelanjutnya, mahasiswa akan melakukan eksperimen dan menulis artikel untuk studi eksperimen sebagai syarat kelulusan Doktor.', NULL, NULL, 2, '2022-11-25', NULL, 2, '2022-11-24', NULL, NULL, NULL, '2024-10-01', NULL, 25, 'Tidak ada kendala, berjalan sesuai dengan timeline studi.', '2022-10-22 18:49:44', '2022-10-22 18:49:44', NULL),
(221, 'EV-1666552685', '198603232015041003', 'ILHAM AKHSANU RIDLO', 'Fakultas Kesehatan Masyarakat', 'S3', 2, 'Communication Science', 'Faculty of Social Science, Ludwig-Maximillian-Universität, München', 2, NULL, 'Prof. Dr. Thomas Hanitzsch', 'Prof. Dr. Constanze Rossmann', 'An Alliance of Science Journalists and Scientists During the COVID-19 Pandemic', 20, 'A. Evaluasi terkait kemajuan studi\r\nSemua berjalan sesuai dengan timeline schedule yang sudah disetujui oleh pembimbing\r\nB. Langkah Konkrit yang Akan di Tempuh dalam proses penyelesaian studi\r\n1. Melakukan pengerjaan revisi dan konsultasi riset dengan pembimbing\r\n2. Presentasi kemajuan riset di pertemuan kolegium doktor', NULL, NULL, 2, '2023-11-11', NULL, 2, '2023-11-11', NULL, NULL, NULL, '2025-01-09', NULL, 20, NULL, '2022-10-23 19:18:05', '2022-10-23 19:31:59', NULL),
(222, 'EV-1666553405', '198911162015042003', 'RIZQY AMELIA ZEIN', 'Fakultas Psikologi', 'S3', 2, 'Social Psychology', 'Faculty of Psychology, Ludwig-Maximillian-Universität, München', 2, NULL, 'Prof. Dr. Mario Gollwitzer', NULL, 'Science Communication and Morality', 10, 'Melakukan pengerjaan revisi dan konsultasi riset dengan pembimbing.', NULL, NULL, 2, '2023-12-11', NULL, 2, '2023-12-24', NULL, NULL, NULL, '2024-11-11', NULL, 10, NULL, '2022-10-23 19:30:05', '2022-10-23 19:30:05', NULL),
(223, 'EV-1666572422', '198210082008102001', 'RAGIL OKTAVIANI', 'LPT', 'S1', 7, 'Ilmu Administrasi Bisnis', 'Universitas Terbuka', 2, NULL, NULL, NULL, NULL, NULL, 'Saat ini saya masih menjalani pendidikan dan memasuki  semester 7,  pada semester ini akan ada TAP ( Tugas Akhir Program ) dan bimbingan penulisan KARIL ( Karya Ilmiah ) yang harus di tembuh untuk mahasiswa yang sudah terjaring oleh sistem.', '/uploads/evaluation/study_semester_result/1666572422_KHS Ragil Semester 6.pdf', NULL, 2, '2023-07-31', NULL, 2, '2023-07-31', NULL, NULL, NULL, '2023-07-31', NULL, 70, 'Terkendala waktu saja', '2022-10-24 00:47:02', '2022-10-24 00:47:02', NULL),
(224, 'EV-1666573841', '198011122018013101', 'Joko Susanto', 'Fakultas Ekonomi dan Bisnis', 'S1', 6, 'Manajemen', 'Universitas Airlangga', 2, NULL, 'Dr. Suparti', NULL, 'perilaku mahasiswa dengan proses pembelajaran jarak jauh saat pandemi covid 19 dan sesudah pandemi covid 19', 20, 'tetap berusaha menyelesaikan dengan mencari referensi dan sumber untuk penulisan proposal', '/uploads/evaluation/study_semester_result/1666573841_KHS sem 5.html', NULL, 2, '2023-02-20', NULL, 2, '2023-05-22', NULL, NULL, NULL, '2023-11-20', NULL, 95, 'sampai sejauh ini tidak ada kendala serius, hanya bagian-bagian kecil dalam pembelajaran dengan manajemen waktu. selebihnya adalah kemudahan dan kelancaran serta tepat waktu dalam menyelesaikan studi', '2022-10-24 01:10:41', '2022-10-24 01:10:41', NULL),
(225, 'EV-1666580948', '199108242018083101', 'MUCHAMAD SHOLAKHUDDIN AL FAJRI', 'Fakultas Vokasi', 'S3', 1, 'English Language & Literature Studies', 'Universiti Sains Malaysia', 2, NULL, 'Professor Hajar Binti Abdul Rahim', 'Dr. Kumaran Rajandran', 'Corpus Linguistics', 5, 'Menyelesaikan penulisan proposal penelitian\r\nMengikuti ujian proposal', NULL, NULL, 2, '2022-09-09', NULL, 2, '2023-08-30', NULL, NULL, NULL, '2025-04-20', NULL, 5, NULL, '2022-10-24 03:09:08', '2022-10-24 03:09:08', NULL),
(226, 'EV-1666581191', '199108242018083101', 'MUCHAMAD SHOLAKHUDDIN AL FAJRI', 'Fakultas Vokasi', 'S3', 2, 'English Language & Literature Studies', 'Universiti Sains Malaysia', 2, NULL, 'Professor Hajar Binti Abdul Rahim', 'Dr. Kumaran Rajandran', 'Corpus Linguistics', 25, 'Saya akan mulai mengumpulkan data\r\nSaya akan memulai menulis untuk publikasi', '/uploads/evaluation/study_semester_result/1666581191_Transcript_Semester 2.pdf', '/uploads/evaluation/study_presence/1666581191_Progress Report_Fajri_September.pdf', 1, '2022-09-09', NULL, 2, '2024-01-01', NULL, NULL, NULL, '2025-04-20', NULL, 25, NULL, '2022-10-24 03:13:11', '2022-10-24 03:14:06', NULL),
(227, 'EV-1666582813', '198503132018013201', 'Rida Yutmani Melinda', 'PPMB', 'S2', NULL, 'Pengambangan SDM', 'Sekolah Pascasarjana', 2, NULL, 'Dr. FAJRIANTHI, M.Psi', NULL, 'HUBUNGAN WORK ENGAGEMENT DENGAN PRODUKTIVITAS PADA SAAT WORK FROM OFFICE DAN WORK FROM HOME PADA TENAGA KEPENDIDIKAN DI UNIVERSITAS AIRLANGGA', 20, 'lebih rajin dalam bimbingan', '/uploads/evaluation/study_semester_result/1666582852_KHS-092014253010.pdf', NULL, 2, '2022-11-24', NULL, 2, '2022-11-24', NULL, NULL, NULL, '2022-11-24', NULL, 100, NULL, '2022-10-24 03:40:13', '2022-10-24 03:40:52', NULL),
(228, 'EV-1666584636', '198408232008121001', 'RAHMAT HERU SETIANTO', 'Fakultas Ekonomi dan Bisnis', 'S3', 1, 'Business Economics', 'Universiti Putra Malaysia (UPM)', 2, NULL, 'Assoc. Prof. Dr. Wan Azman Saini bin Wan Ngah', 'PROF. DR. LAW SIONG HOOK', 'Financial inclusion and financial stability', 20, 'Semester 1 fokus untuk menyelesaikan satu Mata Kuliah wajib dan dua mata kuliah pilihan. Pada akhir semester 1 saya telah lulus semua mata kuliah dengan Indeks Prestasi Kumulatif 4,00. Semester 2 akan fokus pada penulisan proposal', '/uploads/evaluation/study_semester_result/1666584636_KHS SEMESTER 1.pdf', NULL, 2, '2023-03-15', NULL, 2, '2023-12-20', NULL, NULL, NULL, '2023-12-31', NULL, 20, 'Sejauh ini belum ada kendala studi', '2022-10-24 04:10:36', '2022-10-24 04:10:36', NULL),
(229, 'EV-1666585058', '198408232008121001', 'RAHMAT HERU SETIANTO', 'Fakultas Ekonomi dan Bisnis', 'S3', 2, 'Business Economics', 'Universiti Putra Malaysia (UPM)', 2, NULL, 'Assoc. Prof. Dr. Wan Azman Saini bin Wan Ngah', 'PROF. DR. LAW SIONG HOOK', 'Financial inclusion and financial stability', 30, 'Pada semester 2, saya fokus pada penulis proposal dan diakhir semester 2 saya mengikuti ujian seminar proposal dan mendapatkan nilai \"M\" (memuaskan). Selanjutnya pada semester ke-3 saya akan fokus untuk menyempurnakan proposal untuk persiapan sidang proposal', '/uploads/evaluation/study_semester_result/1666585058_KHS SEMESTER 2.pdf', NULL, 2, '2023-03-15', NULL, 2, '2023-12-29', NULL, NULL, NULL, '2023-12-24', NULL, 35, 'Sejauh ini belum mengalami kendala studi', '2022-10-24 04:17:38', '2022-10-24 04:18:51', NULL),
(230, 'EV-1666602663', '197812172005012001', 'ENDAH PURWANTI', 'Fakultas Sains dan Teknologi', 'S1', 5, 'S3 MIPA', 'Universitas Airlanga', 2, NULL, 'Dr. Fatmawati, M.Si', NULL, 'Health Recommender System Untuk Penyakit Diabetes Dengan Menggunakan Kombinasi Metode Hybrid Filtering dan Artificial Neural Network', 40, 'Topik disertasi lebih di fokuskan lagi pada sistem rekomendasi nutrisi untuk penderita diabetes. Progres kemajuan saat ini adalah telah menyelesaikan 50% dari proposal, dan menunggu masukan dari ko-promotor. Sebagian data telah diperoleh dan siap untuk digunakan., yaitu data rekam medis pasien diabetes dari sebuah puskesmas di Jawa Timur. Rencananya akan mengajukan sidang proposal pada bulan November 2022.', NULL, NULL, 2, '2022-11-24', NULL, 2, '2022-11-24', NULL, NULL, NULL, '2023-08-24', NULL, 30, NULL, '2022-10-24 09:11:03', '2022-10-24 09:11:03', NULL),
(231, 'EV-1666661129', '198304272018035101', 'AMIEN MARIYANTO', 'Fakultas Farmasi', 'S1', 8, 'Manajemen', 'Universitas Terbuka', 1, '/uploads/evaluation/study_certificate/1666661129_Lembar Kerja Kemajuan Akademik.pdf', NULL, NULL, NULL, NULL, 'Saya sudah menyelesaikan studi S1, dan sekarang saya tinggal menunggu yudisium', '/uploads/evaluation/study_semester_result/1666661129_Lembar Kerja Kemajuan Akademik.pdf', NULL, 2, '2022-10-25', NULL, 2, '2022-10-25', 100, NULL, NULL, '2022-10-25', NULL, 100, NULL, '2022-10-25 01:25:29', '2022-10-25 01:25:29', NULL),
(232, 'EV-1666663139', '198701102015042001', 'RATNA AZIS PRASETYO', 'Fakultas Ilmu Sosial dan Ilmu Politik', 'S3', 1, 'Ilmu Ilmu Sosial', 'Universitas Airlangga', 2, NULL, 'Prof. Dr. Rahma Sugihartati, M.Si', NULL, 'Konsumsi Konten Kejahatan', 10, 'Melakukan pembimbingan untuk kualifikasi', NULL, NULL, 2, '2023-05-31', NULL, 2, '2023-05-19', NULL, NULL, NULL, '2023-08-26', NULL, 100, NULL, '2022-10-25 01:58:59', '2022-10-25 01:58:59', NULL),
(233, 'EV-1666673351', '198210152005011001', 'ANAK AGUNG GDE SATIA UTAMA', 'Fakultas Ekonomi dan Bisnis', 'S3', 7, 'Ilmu Akuntansi', 'Universitas Airlangga', 2, NULL, 'Prof. Tjiptohadi Sawarjuwono', 'Damai Nasution, PhD', 'Transformasi Subak Berbasis Big Data dan Tri Hita Karana', 50, 'Penelusuran literatur dan Triangulasi data.', NULL, NULL, NULL, '2022-03-10', NULL, 2, '2023-08-31', NULL, NULL, NULL, '2023-08-31', NULL, 50, 'Semoga tidak ada kendala.', '2022-10-25 04:49:11', '2022-10-25 04:49:11', NULL),
(234, 'EV-1666675126', '198509222014041001', 'ANNUR AHADI ABDILLAH', 'Fakultas Perikanan dan Kelautan', 'S3', -7, 'Department Tropical Agriculture and International Cooperation', 'National Pingtung University of Science and Technology', 2, NULL, 'Prof. Albert Linton Charles, Ph.D', NULL, 'Bio-Packaging', 75, 'Mengenyelesaikan tahap akhir penelitian dan menyusun draft tesis', '/uploads/evaluation/study_semester_result/1666675126_WhatsApp Image 2022-10-25 at 1.10.37 PM.jpeg', NULL, 1, '2021-07-06', NULL, 2, '2023-04-04', NULL, NULL, NULL, '2023-06-30', NULL, 95, NULL, '2022-10-25 05:18:46', '2022-10-25 05:18:46', NULL),
(235, 'EV-1666682810', '196810041998021001', 'MOCHTAR LUTFI', 'Fakultas Ilmu Budaya', 'S1', -11, 'Ilmu Sosial', 'FISIP UNAIR', 2, NULL, 'Dr. H. Mohammad Adib, Drs., M.A.', 'Prof. Dr. Ida Bagus Putera Manuaba, Drs., M.Hum.', 'WACANA KHUTBAH NIKAH PADA MASYARAKAT DI KOTA SURABAYA: PERSPEKTIF HERMENEUTIKA GADAMER', 70, 'Saat ini persiapan ujian kelayakan', NULL, NULL, 1, '2021-10-14', NULL, 2, '2022-11-18', 50, NULL, NULL, '2022-12-23', NULL, 50, 'Tidak ada', '2022-10-25 07:26:50', '2022-10-25 07:26:50', NULL),
(236, 'EV-1666683179', '198609112014041001', 'HERU PRAMONO', 'Fakultas Perikanan dan Kelautan', 'S3', 6, 'Biotechnology', 'Graduate School of Agricultural and Life Sciences, The University of Tokyo, Japan', 2, NULL, 'Prof. Makoto Nishiyama', 'Prof. Saori Kosono', 'Structural and functional studies on enzymes encoded by the amcp-containing biosynthetic gene clusters conserved in a broad range of bacteria', 50, '1. Menindaklanjuti hasil ujian predefense Februari 2022\r\nSaya telah menjalani ujian predefense (atau juga bisa disebut ujian proposal di Indonesia) dengan hasil yang memuaskan dan dinyatakan lanjut untuk menyelesaikan studi doktoral. \r\nCatatan untuk ujian ini disampaikan oleh 4 sensei penguji meliputi:\r\n- diharapkan untuk menemukan compound x yang dihasilkan oleh Serratia sp. ATCC 39006 melalui AmCP-mediated machinery dengan 11 (sebelas) gene Am-BGC\r\n- diharapkan untuk menemukan peranan seluler enzim terbaru yang saya temukan, aminotransferase heterodimer, dengan metode proteomic, metabolomic, dan kristal structure study\r\n- diharapkan untuk menemukan jalur biosintesis compound x di atas dan step by step biosynthesisnya\r\n\r\n2. Diskusi dengan Sensei terkait dengan kelulusan\r\nSaya sudah menemui sensei terkait dengan kelulusan doktoral dan diputuskan:\r\n- menambah satu semester (sebagai catatan, umumnya mahasiswa asal Indonesia atau China di lab kami rata-rata menambah satu tahun)\r\n- mulai menyusun disertasi (disertasi hanya boleh disusun setelah mendapatkan izin dari sensei) saya mulai menyusun disertasi per Oktober 2022\r\n- mengumpulkan surat perpanjangan studi dan mengurus visa perpanjangan masa tinggal di jepang\r\n- mengumpulkan disertasi pada bulan Mei 2023 untuk wisuda September 2023\r\n\r\n3. Menyusun disertasi\r\n-chapeter 1 introduction sudah selesai\r\n-Chapter 2 study on Serratia AmCP-containing Biosynthetic Gene Cluster sudah 80% selesai\r\n-Chapter 3 Crystal structure study of a novel heterodimer aminotransferase data sudah lengkap belum disusun\r\n-Chapter 4 Compound determination, masih berusaha menemukan compound yang dihasilkan oleh gene cluster yang saya pelajari. Ini biasaya membutuhkan waktu 3-7 tahun. \r\n\r\n4. Mengumpulkan disertasi per Mei 2023 untuk ujian reguler per Juni/Juli 2023 dan kelulusan September 2023\r\n\r\nCatatan: untuk kelulusan TIDAK disyaratkan TOEFL, publikasi, similaritas.', '/uploads/evaluation/study_semester_result/1666683179_KRS Heru Pramono.pdf', '/uploads/evaluation/study_presence/1666683179_KRS Heru Pramono.pdf', 1, '2022-02-14', '/uploads/evaluation/proposal_file/1666683179_6 pre-defense summary RevMN.docx', 2, '2023-02-21', 1, NULL, NULL, '2023-06-26', NULL, 90, 'Biaya kuliah (27 juta) mandiri, dan biaya hidup selama perpanjangan studi perbulan 11 juta x 6', '2022-10-25 07:32:59', '2022-10-25 07:34:25', NULL),
(237, 'EV-1666688789', '198508262018013201', 'Indah Fatma Silvi', 'Perpustakaan', 'S1', 3, 'S1 Ilmu informasi dan peprustakaan', 'Universitas Terbuka', 2, NULL, NULL, NULL, NULL, NULL, NULL, '/uploads/evaluation/study_semester_result/1666688789_Daftar Nilai Ujian smt 3.pdf', NULL, 2, '2022-01-25', NULL, NULL, '2022-10-25', NULL, NULL, NULL, '2022-10-25', NULL, 0, NULL, '2022-10-25 09:06:29', '2022-10-25 09:06:29', NULL),
(238, 'EV-1666697356', '197705052009121001', 'PAULUS BUDIONO NOTOPURO', 'Fakultas Kedokteran', 'S1', NULL, 'S3 Ilmu Kedokteran', 'Departemen Patologi Klinik FK UNAIR', 1, '/uploads/evaluation/study_certificate/1666697356_Ijasah S3 Paulus.jpg', 'Prof. Dr. Jusak Nugraha, dr, MS, SpPKK(K)', 'Prof. Dr. Harianto Notopuro, dr, MS', 'Mutasi Gen FLT3 pada AML', NULL, NULL, NULL, NULL, NULL, '2019-07-12', NULL, NULL, '2020-03-01', NULL, NULL, NULL, '2020-06-09', NULL, 100, NULL, '2022-10-25 11:29:16', '2022-10-25 11:29:16', NULL),
(239, 'EV-1666711721', '198002022006042002', 'DANTI NUR INDIASTUTI', 'Fakultas Kedokteran', 'S1', 4, 'Ilmu Kedokteran', 'Fakultas Kedokteran Unair', 2, NULL, NULL, NULL, NULL, 30, 'Seminar Berkala\r\nUjian Proposal', NULL, NULL, NULL, '2023-01-02', NULL, 2, '2023-07-02', NULL, NULL, NULL, '2023-12-02', NULL, 30, NULL, '2022-10-25 15:28:41', '2022-10-25 15:28:41', NULL),
(240, 'EV-1666740070', '198707272015041003', 'AHMADI JAYA PERMANA', 'Fakultas Sains dan Teknologi', 'S3', 1, 'Kimia', 'The University of Sydney', 2, NULL, 'Prof. Brendan Kennedy', 'Prof. Chris Ling', 'Oxides for Energy Application', 5, 'Pengolahan data eksperimen oksida dari karakterisasi XRD untuk memperoleh struktur kristal dari oksida tersebut. Pengolahan data tersebut digunakan untuk melengkapi milestone goals yang terstandar pada kebijakan universitas The University of Sydney yang akan dievaluasi setiap tahunnya. Semester depan ditujukan untuk Confirmation of Candidacy untuk memperoleh kelayakan sebagai kandidat doktor.  Semester ini telah dilakukan eksperimen laboratorium untuk sintesis dan karakterisasi padatan oksida untuk aplikasi pada Solid oxide fuel cell. Semester 2 tahun 2023 ditargetkan penulisan progress report dan langkah eksperimen berikutnya berdasarkan hasil yang diperoleh dari eksperimen laboratorium semester 1 2022. selain itu juga akan dilakukan pendaftaran perkuliahan semester dua untuk melengkapi standar credit semester untuk lulus menjadi Doctor of Philosophy sesuai standar Universitas. Eksperimen-eksperimen laboratorium terkait sintesis juga tetap dilakukan pada semester depan (semester 2 2023) untuk memperoleh formulasi yang optimum. Pada semester depan juga akan diselesaikan research article yang saat ini masih dalam bentuk draft karena menunggu data karakterisasi yang lebih lanjut.', NULL, NULL, 2, '2023-06-30', NULL, 2, '2023-06-20', NULL, NULL, NULL, '2025-06-30', NULL, 5, NULL, '2022-10-25 23:21:10', '2022-10-25 23:21:10', NULL),
(241, 'EV-1666742003', '198812072015041003', 'MAHMUD ADITYA RIFQI', 'Fakultas Kesehatan Masyarakat', 'S3', 3, 'Health Science', 'Hokkaido University', 2, NULL, 'Prof Taro Yamauchi', 'Prof Atsuko Ikeda-Araki', 'WASH and nutrition in urban slum', 30, 'Pada tahap sekarang, saya tengah melakukan penelitian (75%). Saat ini sedang menyiapkan paper 1 untuk dapat diselesaikan pada November/Desember 2022. Paper 1 ini sebagai syarat dapat melakukan sidang kelulusan. Target semester depan, menyiapkan Paper ke-2.', NULL, NULL, 1, '2022-03-18', '/uploads/evaluation/proposal_file/1666742003_Etik Penelitian Hokudai.pdf', 1, '2022-03-18', 18, NULL, NULL, '2024-02-01', NULL, 50, 'Sejauh ini studi dapat berlangsung dengan lancar tanpa kendala berarti. Kendala hanya sekitar adaptasi dengan suhu dan bahasa, tapi sejauh  ini dapat teratasi dengan baik.', '2022-10-25 23:53:23', '2022-10-25 23:53:23', NULL),
(242, 'EV-1666752970', '198002172005012001', 'INDAH WERDININGSIH', 'Fakultas Sains dan Teknologi', 'S3', 1, 'S3 MIPA', 'Universitas Airlangga', 2, NULL, 'Ira Puspitasari.,P.h.D', 'Dr. Rimuljo Hendradi', 'Human Activity Recognation', 0, 'Menyelesaikan kualifikasi', NULL, NULL, 2, '2023-05-31', NULL, 2, '2023-05-31', NULL, NULL, NULL, '2025-08-29', NULL, 0, NULL, '2022-10-26 02:56:10', '2022-10-26 02:56:10', NULL),
(243, 'EV-1666756951', '198808222019032013', 'ENY QURNIYAWATI', 'Fakultas Kesehatan Masyarakat', 'S1', 5, 'Magister Epidemiologi', 'Universitas Airlangga', 1, NULL, 'Dr. Santi Martini, dr., M.Kes', 'Dr. Fariani Syahrul, SKM., M.Kes', 'Indeks Prediktif Kehamilan Usia Remaja Pada Masa Adaptasi Kebiasaan Baru Pandemi Covid-19', 100, 'Saya menunggu yudisium tanggal 31 Oktober 2022 dan Wisuda Bulan Desember 2022', NULL, NULL, 1, '2022-06-03', NULL, 1, '2022-06-03', NULL, NULL, NULL, '2022-10-06', NULL, 100, NULL, '2022-10-26 04:02:31', '2022-10-26 04:02:31', NULL),
(244, 'EV-1666758148', '197204242008121002', 'M. FARID DIMJATI LUSNO', 'Fakultas Kesehatan Masyarakat', 'S3', 7, 'Doktor Kesehatan Masyarakat', 'Universitas Airlangga', 2, NULL, 'Prof. Dr. Ririh Yudhastuti, drh., M.Sc.', 'Dr. Setya Haksama, drg., M.Kes.', 'Penyusunan Indeks Partisipasai Masyarakat dalam Penanggulangan Demam Berdarah', 70, 'Saat ini sedang melaksanakan Penelitian Lapangan sambil menyelesaikan upload 3 artikel jurnal. In syaa Allah semester depan mengambil ujian tertutup tanpa ujian terbuka.', NULL, NULL, 1, '2022-02-18', NULL, 2, '2022-11-10', NULL, NULL, NULL, '2023-01-30', NULL, 65, NULL, '2022-10-26 04:22:28', '2022-10-26 04:22:28', NULL),
(245, 'EV-1666759599', '198209122008011006', 'HARIO MEGATSARI', 'Fakultas Kesehatan Masyarakat', 'S3', 3, 'Ilmu Kesehatan Masyarakat', 'FKM Universitas Indonesia', 2, NULL, 'Dr. Dra. Rita Damayanti', NULL, 'Pengendalian tembakau di Indonesia', 5, 'Semester depan direncanakan presentasi proposal', '/uploads/evaluation/study_semester_result/1666759599_Transkrip_LPS Okt.pdf', NULL, 2, '2023-05-01', NULL, 2, '2024-01-01', NULL, NULL, NULL, '2025-06-01', NULL, 5, NULL, '2022-10-26 04:46:39', '2022-10-26 04:46:39', NULL),
(246, 'EV-1666762129', '198902182018013101', 'Prasasti Irianto', 'Perpustakaan', 'S1', 4, 'Sistem informasi', 'ITATS', 2, NULL, NULL, NULL, 'Rancang bangun sistem informasi unggah mandiri karya ilmiah Perpustakaan Universitas Airlangga', 95, 'segera selesaikan skripsi', NULL, NULL, 2, '2022-11-30', NULL, NULL, '2022-11-30', NULL, NULL, NULL, '2022-11-30', NULL, 95, NULL, '2022-10-26 05:28:49', '2022-10-26 05:28:49', NULL),
(247, 'EV-1666763845', '199110232021093101', 'Ali Ikhsanul Qauli', 'Fakultas Teknologi Maju dan Multidisiplin', 'S3', 4, 'IT Convergence Engineering', 'Kumoh National Institute of Technology', 2, NULL, 'Prof. Ki Moo Lim', NULL, 'In silico assessment on TdP risks of drug combinations under CiPA paradigm', 20, 'Saya akan menambahkan analisa data dengan metode machine learning', NULL, NULL, 2, '2024-11-28', NULL, 2, '2025-01-01', NULL, NULL, NULL, '2024-12-02', NULL, 0, NULL, '2022-10-26 05:57:25', '2022-10-26 05:57:25', NULL),
(248, 'EV-1666766624', '198304212015043201', 'SITI NURAINI', 'Fakultas Ekonomi dan Bisnis', 'S3', 3, 'Ilmu Akuntansi', 'Universitas Airlangga', 2, NULL, 'Prof. Dr. Dian Agustia, S.E, M.Si, Ak., CMA., CA', 'Iman Harymawan, S.E., Ak., MBA., Ph.D', 'Sustainability environment', 1, 'pada semester ini sedang menyusun kembali tema agar sesuai dengan judo penelitian, sehingga semester deepen dapat mengajukan ujian prelim', '/uploads/evaluation/study_semester_result/1666766624_TRANSKRIP_AKADEMIK_042117147325-SITI NURAINI.pdf', NULL, 2, '2023-07-15', NULL, 2, '2023-07-01', NULL, NULL, NULL, '2024-01-20', NULL, 20, NULL, '2022-10-26 06:43:44', '2022-10-26 06:43:44', NULL),
(249, 'EV-1666769357', '199107072016113201', 'WILDA PRIHATININGTYAS', 'Fakultas Hukum', 'S3', 3, 'Ilmu Hukum', 'Universitas Airlangga', 2, NULL, 'Dr. Suparto Wijoyo, SH, MHum', 'Dr. Radian Salman, SH, LLm', 'Prinsip Keseimbangan dalam Pengelolaan Hutan Lestari sebagai Landasan Pengaturan Perdagangan Karbon', 15, '- Mendaftar dan Lulus Ujian Proposal\r\n- Menempuh MKPD', '/uploads/evaluation/study_semester_result/1666769357_KHS-032117017319 GENAP 2021-2022.pdf', NULL, 2, '2022-11-15', NULL, 2, '2022-11-15', NULL, NULL, NULL, '2024-02-22', NULL, 20, NULL, '2022-10-26 07:29:17', '2022-10-26 07:29:17', NULL),
(250, 'EV-1666773613', '199003312018013101', 'Deni Hindarto', 'Fakultas Kedokteran Hewan', 'S1', 5, 'BIOLOGI', 'Universitas Terbuka', 2, NULL, 'Dr. Wiwiek Tyasningsih drh., M.Kes', NULL, 'deteksi cemaran bakteri  pada bahan makanan Tempe kedelai', 10, 'Belajar Dengan baik apanya akan di capai', '/uploads/evaluation/study_semester_result/1666773613_nilai semester 4.jpeg', NULL, 2, '2025-10-10', NULL, 2, '2025-11-10', NULL, NULL, NULL, '2025-12-12', NULL, 40, 'pembagian waktu pengerjaan tugas', '2022-10-26 08:40:13', '2022-10-26 08:40:13', NULL),
(251, 'EV-1666774130', '199010152015041001', 'DHANDY KOESOEMO WARDHANA', 'Fakultas Kedokteran Hewan', 'S3', 2, 'Veterinary Medicine', 'Yamaguchi University', 2, NULL, 'Prof. Masahisa Watarai', 'Takashi Shimizu, Ph.D', 'Pathogen Intracellular Bacteria', 20, 'Menyelesaikan credit special course yang belum selesai di semester 3, masih tersisa sekitar 10 credit lagi karena sempat datang terlambat di Jepang untuk memulai perkuliahan. Diakibatkan karena pandemi Covid 19 yang menyebabkan pembatasan perjalanan ke Jepang dan antri masuk yang panjang. Kedua adalag segera menyelesaikan penelitian pertama, kemudian mengerjakan penelitian kedua. Langkah konkret untuk penelitian pertama adalah dengan menyelesaikan screening mutant Francisella yang toksisitasnya rendah ketika diinfeksikan ke sel HeLa dan insert plasmid ke E. coli kompeten untuk mendapatkan plasmidnya. Kedua hal ini membutuhkan waktu yang lama karena screening mutant dari bakteri Francisella cukup banyak serta insert plasmid ke E. coli tersebut beberapa plasmidnya tidak tumbuh koloninya di media sehingga harus beberapa kali diulang. Setelah kedua hal ini selesai akan dilaksanakan tahap berikutnya yaitu sekuensing gen dari mutant bakteri Francisella yang toksisitasnya rendah tersebut sehingga kita tahu sifat dari mutant tersebut bagaimana. Setelah itu akan segera diselesaikan tahap-tahap akhir dari penelitian dan dibuat draft artikel untuk dapat segera dipublikasikan.', NULL, NULL, 2, '2022-12-12', NULL, 2, '2023-04-21', 0, NULL, NULL, '2026-02-10', NULL, 20, 'Tidak ada kendala selama studi di Yamaguchi University', '2022-10-26 08:48:50', '2022-10-26 08:48:50', NULL),
(252, 'EV-1666775337', '199508212018035101', 'Bagus Winarto', 'Fakultas Kedokteran Hewan', 'S1', 5, 'BIOLOGI', 'UNIVERITAS TERBUKA', 2, NULL, 'Dr.Elizabeth Novi Kusumaningrum, S.SI., M.Si', NULL, 'Profile Cemaran Mikroba Total plate count pada ikan asap yang di jual di kenjeran surabaya jawa timur indu\\onesia', 10, 'Saya akan mengerjakan dan menyelesaikan tugas akhir saya sesuai tepat waktu, sekarang progresnya masih samapai dalam mengumpulkan sumber refrensi dari jurnal-jurnal sebagai acuan dalam pembahasan tugas akhir saya.\r\nSekarang masih dalam tahap semester 5 dan saya akan belajar lebih giat lagi agar nilai saya memuaskan dan lulus tepat waktu', '/uploads/evaluation/study_semester_result/1666775337_KHS SEMESTER 4.pdf', NULL, 2, '2024-12-30', NULL, 2, '2024-12-11', 0, NULL, NULL, '2024-08-15', NULL, 55, 'Saya tidak memiliki kendala, karena saya dapat membagi waktu saya antara bekerja dan kuliah', '2022-10-26 09:08:57', '2022-10-26 09:08:57', NULL),
(253, 'EV-1666777972', '199006022016113201', 'PUTRI AYUNI ALAYYANNUR', 'Fakultas Kesehatan Masyarakat', 'S3', 4, 'Ilmu Kesehatan Masyarakat', 'Universitas Indonesia', 2, NULL, 'Doni Hikmat Ramdhan, SKM., MKKK., PhD', NULL, 'MODEL ANALISIS FAKTOR RISIKO PAJANAN HEAT STRESS TERHADAP INDIKASI GANGGUAN FUNGSI GINJAL PADA NELAYAN DI JAWA TIMUR', 40, 'Melakukan kerja sama dengan pihak terkait seperti Bakesbangpol Kabupaten Lamongan, Dinas Kesehatan, Dinas Perikanan dan Kelautan, TPI Brondong, Puskesmas Brondong dan Puskesmas Paciran. pelaksanaan Penelitian pada nelayan di TPI Brondong meliputi penyebaran kuesioner, pengambilan sampel urin dan darah, dan pengukuran lingkungan kerja, melakukan analasis data hasil studi/penelitian di lapangan, melakukan bimbingan dengan promotor, menentukan kopromotor dan selanjutnya melakukan ujian yang meliputi ujian Hasil dan ujian Tertutup. sembari itu juga melakukan beberapa publikasi tambahan sehingga dapat menjadi tambahan luaran publikasi dari penelitiaan ini.', '/uploads/evaluation/study_semester_result/1666777972_Screenshot (133).png', '/uploads/evaluation/study_presence/1666777972_Buku Bimbingan Disertasi S3_Putri Ayuni.docx', 1, '2022-06-28', '/uploads/evaluation/proposal_file/1666777972_Ujian Proposal an. Putri Ayuni Alayyannur. Doni Hikmat Ramdhan, SKM., MKKK., Ph.D. dan Tim 2517 Akademik.pdf', 2, '2023-01-15', NULL, NULL, NULL, '2023-01-26', NULL, 50, 'Identifikasi cara pengambilan sampel yang tepat baik urin maupun darah dan pengadaan biomarker yang masih indent', '2022-10-26 09:52:53', '2022-10-26 09:52:53', NULL),
(254, 'EV-1666792058', '199008082021093101', 'Agus Mukhlisin', 'Fakultas Teknologi Maju dan Multidisiplin', 'S3', 10, 'Teknik Mesin', 'Institut Teknoogi Sepuluh Nopember Surabaya', 2, NULL, 'Prof. Ir. I Nyoman Sutantra, MSc., Ph.D', 'Prof. Dr. Eng. Estiko Rijanto', 'Intelligent and Reconfigurable Brushless Direct Current (BLDC) Motor Controller', 85, 'Finalisasi Publikasi ke-3 sebagai syarat sidang tertutup', '/uploads/evaluation/study_semester_result/1666792058_TRANSKRIP MATA KULIAH.pdf', NULL, 1, '2018-07-07', NULL, 2, '2022-12-01', NULL, NULL, NULL, '2022-12-15', NULL, 85, 'Membagi waktu', '2022-10-26 13:47:38', '2022-10-26 13:47:38', NULL),
(255, 'EV-1666793087', '199602112019015101', 'Agil Ramadhan Achmad', 'Fakultas Kedokteran Hewan', 'S1', 5, 'BIOLOGI', 'Universitas Terbuka', 2, NULL, 'Dr. Subekti Nurmawati, M.Si', 'Raflen Aril Gerungan, M.Si', NULL, 30, 'melaksanakan dan mengerjakan tugas atau memperdalam ilmu yang saya angkat sebagai topik penelitian', '/uploads/evaluation/study_semester_result/1666849379_KHS Nilai Ujian Semester 4.pdf', NULL, 2, '2024-04-20', NULL, 2, '2024-04-20', NULL, NULL, NULL, '2024-04-20', NULL, 65, NULL, '2022-10-26 14:04:47', '2022-10-27 05:42:59', NULL),
(256, 'EV-1666802530', '199310302020063101', 'Firas Farisi Alkaff', 'Fakultas Kedokteran', 'S3', 6, 'Graduate School of Medical Science', 'University of Groningen', 2, NULL, 'Prof. Stefan P. Berger', 'Dr. Jacob van den Born', 'Role of complement in renal transplantation', 50, 'Saya akan memaksimalkan penggunaan data yang tersedia untuk bisa memenuhi persyaratan kelulusan. Saya juga akan meminta bantuan dari ahli-ahli lainnya untuk membantu saya dalam menyelesaikan hambatan yang saya alami agar riset saya bisa selesai tepat waktu.', NULL, NULL, 2, '2023-10-30', NULL, 2, '2023-10-30', NULL, NULL, NULL, '2023-10-30', NULL, 25, 'Di awal saya memulai studi, supervisor saya sakit, dan mahasiswa doktoral senior yang seharusnya membantu saya untuk menyesuaikan diri dengan kondisi di Belanda sedang cuti melahirkan. 4 bulan setelah saya memulai studi, terjadi pademi karena COVID-19.\r\n\r\nKendala lain yang saya alami adalah terkait teknik laboratorium yang saya gunakan. Tidak ada yang mengerjakan hal serupa dengan saya di lab, sehingga saya kesusahan untuk mencari solusi dari permasalahan yang saya hadapi. Supervisor bisa membimbing dalam hal teori, tapi terkait praktek di lab supervisor tidak bisa banyak membantu.', '2022-10-26 16:42:10', '2022-10-26 16:42:10', NULL),
(257, 'EV-1666804397', '198410092016033201', 'NI NYOMAN PURWANI', 'Fakultas Vokasi', 'S3', 6, 'Biokimia', 'university of Groningen', 2, NULL, 'Marco W fraaije', NULL, 'fusion enzymes', 50, 'menyelesaikan tiap project penelitian dengan supervisi dari supervisor', NULL, NULL, 1, '2023-09-13', NULL, 1, '2023-11-15', NULL, NULL, NULL, '2023-11-23', NULL, 70, '2 project yng sudah dikerjakan mengalami kendala hasil tidak sesuai harapan sehingga harus mencari topik baru', '2022-10-26 17:13:17', '2022-10-26 17:13:17', NULL),
(258, 'EV-1666815960', '197208091999032001', 'MURYANTINAH MULYO HANDAYANI', 'Fakultas Psikologi', 'S3', 9, 'Ilmu Psikologi', 'Universitas Gadjah Mada', 2, NULL, 'Prof. Dr. Sodia Retnowati, MS', 'Dr. MG Aditayani, MS', 'Konsep, Resources dan Dinamika Flourishing pada Dewasa Autistik', 80, '- Melakukan Analisis Data\r\n- Menulis artikel', NULL, NULL, 1, '2021-10-18', NULL, 1, '2022-02-10', NULL, NULL, NULL, '2023-12-29', NULL, 80, 'Partisipan dalam penelitian ini adalah dewasa autistik yang memiliki sejumlah kegiatan, sehingga penjadwalan pengambilan data mengalami kendala.', '2022-10-26 20:26:00', '2022-10-26 20:26:00', NULL),
(259, 'EV-1666836830', '197505222003121002', 'PRAYOGO', 'Fakultas Sekolah Ilmu Kesehatan dan Ilmu Alam', 'S3', 2, 'Sains Veteriner', 'Universitas Airlanga', 2, NULL, 'Prof. Dr. Mirni Lamid, drh.,MP', 'Dr. Iwan Sahrial Hamid, drh.,M.Si', 'Eksplorasi Bakteri pada Budidaya Ikan', 20, 'Lebih giat lagi segera selesaiakan konsep penelitian', NULL, NULL, 2, '2022-12-27', NULL, 2, '2023-02-27', 20, NULL, NULL, '2023-04-27', NULL, 20, 'Masa pandemi', '2022-10-27 02:13:50', '2022-10-27 02:13:50', NULL),
(260, 'EV-1666839676', '197905192009122003', 'WARDAH RAHMATUL ISLAMIYAH', 'Fakultas Kedokteran', 'S3', 13, 'S3 Kedokteran', 'Fakultas Kedokteran Universitas Airlangga', 2, NULL, 'Prof. Dr. Nasronudin,dr.,Sp.P(K-PTI), FINASIM', 'Dr. Abdulloh Machin,dr.,Sp.N(K)', 'HUBUNGAN ANTARA POLIMORFISME CYP2C19 DENGAN  KADAR TESTOSTERON TOTAL, ESTROGEN, DAN BERAT BADAN PADA PASIEN BANGKITAN EPILEPTIK PENGGUNA ASAM VALPROAT', 85, 'Ujian Kelayakan 18 November 2022', NULL, '/uploads/evaluation/study_presence/1666839676_undangan kelayakan an. wardah.pdf', 1, '2019-01-22', NULL, 2, '2022-11-18', NULL, NULL, NULL, '2022-12-15', NULL, 85, 'Penelitian menggunakan pasien epilepsi, pandemi jumlah pasien yang datang ke RS merosot, ko promotor meninggal terkena pandemi', '2022-10-27 03:01:16', '2022-10-27 03:01:16', NULL),
(261, 'EV-1666840393', '199005152014042001', 'SAKA WINIAS', 'Fakultas Kedokteran Gigi', 'S3', 5, 'Graduate School of Denstistry', 'Tohoku University', 2, NULL, 'Prof. Masahiro Iikubo., PhD', 'Yukinori Tanaka., PhD', 'Intestinal immune system in the sublingual immunotherapy efficacy', 30, 'merancang metode penelitian\r\nmengumpulkan data penelitian\r\nmenganalisa data penelitian', NULL, NULL, 1, '2021-05-18', '/uploads/evaluation/proposal_file/1666840393_.pdf', 2, '2024-04-20', NULL, NULL, NULL, '2024-08-10', NULL, 40, 'merancang metode penelitian untuk mendapatkan data penelitian yang representatif dan menjawab hipotesis penelitian', '2022-10-27 03:13:13', '2022-10-27 03:13:54', NULL),
(262, 'EV-1666840497', '198608212014042001', 'HILDA YUNITA SABRIE', 'Fakultas Hukum', 'S3', 3, 'Doktor Ilmu Hukum', 'Universitas Airlangga', 2, NULL, 'Prof. Dr. Y Sogar Simamora, S.H., M.Hum', 'Dr. Zahry Vandawati Chumaida, S.H., M.H.', 'Konsorsium Perusahaan Asuransi dalam Pembayaran Klaim Ganti Rugi Pada Pengangkutan Udara', 25, 'Mengajukan ujian proposal dalam pada awal Bulan November 2022', '/uploads/evaluation/study_semester_result/1666840548_Jepretan Layar 2022-10-27 pukul 10.07.34.png', NULL, 2, '2022-11-14', NULL, 2, '2022-11-14', NULL, NULL, NULL, '2024-03-27', NULL, 25, NULL, '2022-10-27 03:14:57', '2022-10-27 03:15:49', NULL),
(263, 'EV-1666840652', '195905281984031002', 'DODDY SUMBODO SINGGIH', 'Fakultas Ilmu Sosial dan Ilmu Politik', 'S3', 4, 'Ilmu Sosial', 'FISIP Unair', 2, NULL, 'Prof. Dr. Bagong Suyanto, Drs. M.Si', 'Dr. Septi Ariadi, Drs., MA', 'KAPITALISME PENDIDIKAN TINGGI: Studi Tentang Perubahan Kelembagaan Di Era Perguruan Tinggi Badan Hukum Milik Negara', -80, '(1) mengikuti test ELPT; (2) menulis artikel jurnal (untuk by research, kurang satu artikel); (3) ujian tertutup; dan (4) ujian terbuka', '/uploads/evaluation/study_semester_result/1666915650_KHS.pdf', NULL, 1, '2022-03-29', '/uploads/evaluation/proposal_file/1666915650_KHS.pdf', 1, '2022-03-22', -14, '/uploads/evaluation/similarity_file/1666915650_turnitin proposal.jpg', NULL, '2023-05-28', NULL, 0, 'Alhamdulillah, tidak ada kendala studi', '2022-10-27 03:17:32', '2022-10-28 00:07:30', NULL),
(264, 'EV-1666842361', '198812122015042001', 'FATMA YASMIN MAHDANI', 'Fakultas Kedokteran Gigi', 'Sp.1', 3, 'Ilmu Penyakit Mulut', 'Universitas Airlangga', 2, NULL, 'Nurina Febriyanti Ayuningtyas, drg., M.Kes., Ph.D., Sp.PM(K)', 'Prof. Dr. Diah Savitri Ernawati, drg., M.Si., Sp.PM(K)', 'Dampak Radioterapi pasien Kanker Kepala dan Leher', 30, 'Ujian Proposal dalam Semester ini', NULL, NULL, NULL, '2022-12-31', NULL, 2, '2022-12-31', 50, NULL, NULL, '2023-12-31', NULL, 100, 'Tidak ada', '2022-10-27 03:46:01', '2022-10-27 03:46:01', NULL),
(265, 'EV-1666843313', '198304232010122007', 'HARDANY PRIMARIZKY', 'Fakultas Kedokteran Hewan', 'S1', 3, 'Veterinary Clinical Science', 'Joint Graduate School of Veterinary Medicine', 2, NULL, 'Prof. Masaru OKUDA, DVM. PhD.', 'Assoc. Prof. Kenji BABA, DVM. PhD.', 'Onkologi (Canine lymphoma)', 25, 'Program yang saya ikuti adalah Doctoral Program of Veterinary Science – Joint Graduate School of Veterinary Medicine, Yamaguchi University. Untuk menyelesaikan program PhD (Doktoral) dalam bidang Kedokteran Hewan, diperlukan untuk mengambil 30 kredit yang dibagi menjadi 4 subyek dan terdiri dari mata kuliah professional dasar (3 kredit), mata kuliah pilihan tentang Kedokteran Hewan bersifat lanjutan (14 kredit), praktik lanjutan khususnya pada kemampuan menangani kasus – kasus penyakit dalam dan melakukan penelitian (3 kredit), baik di dalam laboratorium maupun di Yamaguchi University Animal Medical Center (YUAMEC) dan pembuatan disertasi serta ujian komprehensif (10 kredit). Adapun untuk langkah kongkrit di semester depan dalam capaian untuk menyelesaikan studi saya adalah sebagai berikut :\r\n1. Melaksanakan penelitian tahap awal berupa koleksi cell lines, ekstraksi protein sel dan melakukan prosedur Western Blot\r\n2. Mendesain primer untuk protein yang akan diteliti dan mempersiapkan penelitian pendahuluan menggunakan teknik quantitative Real Time PCR.\r\n3. Mulai merencanakan ujian seminar proposal penelitian karena telah disetujui oleh Pembimbing 1.', NULL, NULL, 2, '2022-11-28', NULL, 2, '2024-01-26', NULL, NULL, NULL, '2022-09-30', NULL, 25, 'Sempat tertunda selama satu semester karena larangan masuk negara Jepang akibat dari COVID-19', '2022-10-27 04:01:53', '2022-10-27 04:01:53', NULL),
(266, 'EV-1666844105', '198206062007101001', 'FARIED EFFENDY', 'Fakultas Sains dan Teknologi', 'S3', 1, 'MIPA', 'Universitas Airlangga', 2, NULL, 'Ira Puspitasari., Ph.D', 'Dr. Rimuljo Hendradi, S.Si, M.Si', 'Sistem E-Rekrutmen dan Assessment Berbasis Artificial Intelligence', 0, 'Mempersiapkan ujian kualifikasi', NULL, NULL, 2, '2023-11-20', NULL, 2, '2023-11-20', NULL, NULL, NULL, '2023-11-20', NULL, 10, NULL, '2022-10-27 04:15:05', '2022-10-27 04:33:40', NULL),
(267, 'EV-1666845142', '197101042008121001', 'TAUFIK', 'Fakultas Sains dan Teknologi', 'S3', 1, 'S3 MIPA', 'Universitas Airlangga', 2, NULL, 'Ira Puspitasari, MT, Ph.D', 'Dr. Rimuljo Hendradi, M.Si', 'Asistive Technologi untuk pembelajaran siswa-siswa Down Syndrome', 0, 'Menyusun proposal ujian qualifikasi', NULL, NULL, 2, '2023-11-01', NULL, 2, '2023-11-01', NULL, NULL, NULL, '2025-06-02', NULL, 100, NULL, '2022-10-27 04:32:22', '2022-10-27 04:32:22', NULL),
(268, 'EV-1666849961', '198706252012122002', 'ARMY JUSTITIA', 'Fakultas Sains dan Teknologi', 'S3', 3, 'Institute of Information Management', 'National Cheng Kung University', 2, NULL, 'Hei-Chia Wang', '-', 'Text Summarization', 0, 'Saat ini saya dan Profesor saya sedang berdiskusi dan menginvestigasi metode atau framework yang akan saya gunakan. Selain perumusan framework, kendala yang saat ini saya hadapi adalah ketersediaan dataset. Oleh karena itu untuk satu semester ke dapan, saya akan memastikan metode dan framework tersebut. Rencananya, pada akhir semester 4, saya sudah memiliki draft yang bisa gunakan untuk submit di Jurnal berindex SSCI / SCI WoS', '/uploads/evaluation/study_semester_result/1666849961_Transcript - 2nd Semester.pdf', NULL, 2, '2024-10-08', NULL, 2, '2024-10-08', NULL, NULL, NULL, '2025-10-08', NULL, 100, NULL, '2022-10-27 05:52:41', '2022-10-27 05:52:41', NULL),
(269, 'EV-1666850969', '199304072018013101', 'Rendy Rizki Apriyadi', 'Perpustakaan', 'S1', 8, 'Ilmu komunikasi', 'Universitas Terbuka', 1, NULL, NULL, NULL, 'Fenomena Penggunaan Content Distribution TikTok Sebagai Media Untuk Meningkatkan Brand Awareness Di Indonesia (Studi: Pemasaran Digital TokoPedia)', 100, NULL, '/uploads/evaluation/study_semester_result/1666850969_api-sia-ut-ac-id-global-rest-api-student-dnu-mhs-tampil_masa=20221&token=eyJhbGc.pdf', NULL, 1, '2022-06-15', NULL, 1, '2022-07-12', NULL, NULL, NULL, '2022-06-18', NULL, 100, '-', '2022-10-27 06:09:29', '2022-10-27 06:09:29', NULL),
(270, 'EV-1666856516', '197505262003121006', 'HELMY PRASETYO YUWINANTO', 'Fakultas Ilmu Sosial dan Ilmu Politik', 'S3', 2, 'Ilmu Sosial', 'Fakultas Ilmu Sosial dan Ilmu Politik', 2, NULL, 'Prof. Dr. Rahma Sugihartati, Dra., M.Si', NULL, 'Praktik Digital Surveillance Pada Platform Digital Academic Social Networks (ASN)', 20, 'Lebih aktif dan giat dalam melakukan bimbingan dengan pembimbing', '/uploads/evaluation/study_semester_result/1666856516_KHS-072127047305 (Smstr 1).pdf', NULL, 2, '2024-01-31', NULL, 2, '2023-12-29', NULL, NULL, NULL, '2025-05-26', NULL, 10, 'Belum ada', '2022-10-27 07:41:56', '2022-10-27 07:41:56', NULL),
(271, 'EV-1666857288', '199005302020121010', 'Meircurius Dwi Condro Surboyo', 'Fakultas Kedokteran Gigi', 'S3', 1, 'The Graduate School of Medical and Dental Sciences', 'Niigata University', 2, NULL, 'Associate Professor Tomoki Maekawa', NULL, NULL, 0, 'Mempersiapkan rencana penelitian dan berdiskusi lebih lanjut dengan Pembimbing', NULL, NULL, 2, '2023-10-01', NULL, 2, '2023-01-27', NULL, NULL, NULL, '2026-06-01', NULL, 0, NULL, '2022-10-27 07:54:48', '2022-10-27 07:56:16', NULL),
(272, 'EV-1666864135', '199206012018083201', 'Siti Maghfirotul Ulyah', 'Fakultas Sains dan Teknologi', 'S3', 3, 'Mathematics', 'Khalifa University', 2, NULL, 'Assoc. Prof. Dr. Haralampos Hatzikirou', 'Dr. Mohammad Tahseen Al Bataineh, Prof. Hadi Susanto', 'Combination of machine learning and mechanistic modelling in biomedical applications', 0, 'Beberapa hal yang akan dilakukan semester depan adalah:\r\n1.	Studi Literatur\r\n2.	Menyusun Proposal Disertasi yang akan dipresentasikan pada akhir semester depan\r\n3.	Menyelesaikan Proyek Riset yang telah diikuti (2 proyek)\r\n4.	Aktif mengikuti seminar matematika rutin yang diselenggarakan Prodi\r\n5.	Mengikuti seminar internasional.', '/uploads/evaluation/study_semester_result/1666864135_Thesis Mangement - Student.pdf', NULL, 2, '2023-06-30', NULL, 2, '2023-06-01', NULL, NULL, NULL, '2025-06-30', NULL, 30, 'Pada semester 3 ini, saya akan mengikuti ujian kualifikasi. Ujian tulis tersebut akan dilaksanakan pada bulan Desember 2022. Dalam ujian tersebut, saya diminta untuk memilih 3 subjek untuk diujikan. Saya memilih (1) Probability and Statistics, (2) Differential Equation, (3) Optimization. Untuk subjek (1), saya tidak ada kesulitan. Namun untuk (2), saya belum pernah mempelajarinya sama sekali. Untuk subjek (3), saya pernah mempelajari Sebagian materinya pada mata kuliah Riset Operasi. Ini merupakan tantangan bagi saya. Solusinya adalah dengan mempelajarinya dengan teman (yang menguasi materi tersebut) sejak semester lalu. \r\n\r\nUntuk riset, masih belum ada kendala yang belum bisa diselesaikan.', '2022-10-27 09:48:55', '2022-10-27 09:48:55', NULL),
(273, 'EV-1666864636', '198408102018013101', 'Wahyu Kartiko Adi', 'Direktorat Kemahasiswaan', 'S1', 3, 'Manajemen', 'Universitas Terbuka', 2, NULL, NULL, NULL, NULL, NULL, 'melakukan capaian dan jumlah sks minimal 24 sks dan memilki nikai diatas 3.5', '/uploads/evaluation/study_semester_result/1666864636_Daftar Nilai Ujian genap 2021-2022 UT wahyu kartiko adi.pdf', NULL, 2, '2023-07-27', NULL, 2, '2023-06-27', NULL, NULL, NULL, '2023-07-27', NULL, 1, NULL, '2022-10-27 09:57:16', '2022-10-27 09:57:16', NULL);
INSERT INTO `evaluations` (`evaluation_id`, `evaluation_code`, `NIK`, `name`, `division`, `stage`, `semester`, `study`, `institution`, `study_status`, `study_certificate`, `mentor_1`, `mentor_2`, `topic`, `percentage_ta`, `follow_up_ta`, `study_semester_result`, `study_presence`, `has_proposal_test`, `proposal_date`, `proposal_file`, `has_similarity_test`, `evaluation_date`, `percentage_evaluation`, `similarity_file`, `percentage_end_test`, `end_test_date`, `end_test_file`, `percentage_pass_academic`, `study_problem`, `created_at`, `updated_at`, `deleted_at`) VALUES
(274, 'EV-1666867469', '197312142001122001', 'LUSVITA FITRI NUZULIYANTI', 'Fakultas Ilmu Budaya', 'S1', 22, 'Sastra Inggris', 'Universitas Airlangga', 2, NULL, 'Professor Dr. Bart Barendregt', NULL, 'Analisis wacana, studi budaya popular', 85, 'Pada bulan Oktober 2022 saya menemui pembimbing saya di Universitas Leiden untuk berkonsultasi tentang progress and masalah masalah yang saya hadapi selama penulisan. Pembimbing dan saya bersama membicarakan tentang bagaimana cara mengatasi kesulitan yang saya hadapi baik kesulitan teknis maupun psikologi. Konsistensi dan struktur kegiatan adalah kunci dalam mempercepat penulisan. Pembimbing menilai bahwa penulisan saya sudah menunjukkan kemajuan dan konsistensi walaupun masih terdapat kekurangan pada analisis. Kerangka teori yang saya gunakan dinilai sudah cukup baik. Komunikasi yang jelas dan terbuka dengan pembimbing sangat diharapkan dan ditekankan untuk selalu dilakukan dengan konsisten dan bertanggung jawab.    Berikut adalah point point penting berkaitan dengan penjadwalan dan target penyelesaian thesis:\r\n1. Zoom meeting evaluasi sebulan sekali.\r\n2. Draft chapter diserahkan sebulan sekali, maksimal 2 bulan sekali dengan izin pembimbing dan dengan alasan-alasan yang diketahui pembimbing.\r\n3. Mengatur jadwal kerja penulisan yang harus secara disiplin dipatuhi yaitu sekitar 4 jam sehari karena lebih baik menulis rutin setiap hari walaupun tidak terlalu panjang dibandingkan mengerjakan banyak dalam sehari namun tidak rutin.\r\n4. Pembimbing akan berkunjung ke UNAIR pada bulan Maret 2023 di mana saya diharapkan sudah menyelesaikan minimal 3 chapter, walaupun saya diharapkan sudah menyelesaikan 5 chapter yang direncanakan.', NULL, NULL, 1, '2012-05-12', NULL, 1, '2014-10-23', 75, NULL, NULL, '2023-07-18', NULL, 70, 'Saya tidak memiliki masalah dalam bahasa Inggris akademis namun saya sering mengubah arah disertasi dari yang sudah disepakati dengan pembimbing. Kelemah saya adalah sulit membedakan atau memilih argumen yang tepat dan relevan. Saya harus banyak menghilangkan detail detail yang tidak perlu dan tidak berhubungan dengan topik agar penulisan tidak menjadi berkepanjangan, bertele tele dan tidak fokus. Pembimbing telah memberikan arahan tentang kelemahan-kelemahan tersebut. Terlalu sering mengubah arah disertasi mengakibatkan lemahnya penulisan latar belakang teori dan pengolahan data. \r\nHal ini berhubungan dengan rendahnya rasa percaya diri dan konsentrasi yang memperburuk kondisi psikologi saya.\r\nWaktu penulisan yang sangat lama membuat rasa percaya diri saya menurun dan memberikan tekanan yang sangat besar pada saya, menurunkan konsentrasi yang dibutuhkan untuk mempercepat penulisan. Target penulisan yang tidak tercapai membuat saya makin tertekan makin kesulitan menyelesaikan bab yang sedang saya tulis. Ini membuat saya  menutup diri dan menghindari interaksi dengan teman dan kolega yang mungkin mampu memberikan input untuk saya. Hal hal ini sudah saya bicarakan baik dengan pihak jurusan, fakultas dan pembimbing, yang pada gilirannya telah memberikan begitu banyak support kepada saya untuk memperbaiki kelemahan kelemahan ini.', '2022-10-27 10:44:29', '2022-10-27 10:54:40', NULL),
(275, 'EV-1666868878', '198509282010121004', 'NUR FAUZI HAMIDI', 'Rumah Sakit Universitas Airlangga', 'S2', 1, 'MAGISTER ILMU FARMASI', 'UNIVERSITAS AIRLANGGA', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '2023-08-31', NULL, NULL, '2023-08-31', NULL, NULL, NULL, '2023-08-31', NULL, 1, NULL, '2022-10-27 11:07:58', '2022-10-27 11:07:58', NULL),
(276, 'EV-1666870545', '198411022012121002', 'BARRY NUQOBA', 'Fakultas Sains dan Teknologi', 'S3', 5, 'Computer Science', 'Singapore Management University', 2, NULL, 'Prof. NGO Chong Wah', 'Prof. TAN Hwee-Pink dan Prof. Paulin Tay STRAUGHAN', 'Causal Discovery in Social Science', 5, 'Terkait kewajiban di luar disertasi, mahasiswa PhD di SMU diwajibkan untuk melaksanakan 2 kali TA (teaching assistanship), 2 kali RA (research assistanship), dan 2 kali ART (Advanced Research Topics) seminars. Saya sudah menyelesaikan 1 TA dan 1 RA. Pada semester 6, saya akan melakukan 1 TA dan 1 RA. Selain itu, saya juga akan melakukan ujian proposal disertasi.\r\n\r\nPada semester 7, saya akan melakukan RA sebanyak 1 atau 2 kali. Pada semester 8, saya akan melakukan ujian disertasi.\r\n\r\nRiset yang saya lakukan bersifat interdisiplinary, yaitu gabungan antara beberapa disiplin ilmu (ilmu komputer, kesehatan, dan sosial). Terkait riset di bidang ilmu komputer, saat ini saya sedang mengadaptasi sebuah algoritma deep learning agar cocok digunakan di bidang sosial. Sedangkan terkait pengetahuan ilmu sosial, saya rutin berdiskusi dan tukar pendapat dengan profesor maupun praktisi di bidang sosial. Tujuan akhir dari riset saya adalah bagaimana menerapkan ilmu komputer untuk memperbaiki kelemahan metode tradisional yang selama ini dipakai oleh para ilmuwan sosial.', NULL, NULL, 2, '2022-11-30', NULL, 2, '2023-05-05', NULL, NULL, NULL, '2023-08-04', NULL, 20, NULL, '2022-10-27 11:35:45', '2022-10-27 11:35:45', NULL),
(277, 'EV-1666880515', '198603012016113101', 'ROZI', 'Fakultas Perikanan dan Kelautan', 'S3', 2, 'PROGRAM DOKTOR PROGRAM STUDI SAINS VETERINER', 'FAKULTAS KEDOKTERAN HEWAN UNIVERSITAS AIRLANGGA', 2, NULL, 'Prof. Dr. Suwarno, DVM, M.Si', 'Dr. Wiwiek Tyasningsih, M.Kes., Drh', 'POTENSI DAN EFIKASI KANDIDAT VAKSIN SUBUNIT MALTOPORIN A. hydrophila ISOLAT LOKAL PADA GURAMI (Osphronemus goramy)', 15, 'Semester sebelumnya saya sudah menyelesaikan seminar topik \"Identification and characterization of Aeromonas hydrophila isolated from gouramy (Osphronemus goramy) based on phenotypic and genotypic characters\", telah menyelesaikan pengabdian masyarakat dengan topik \"PELATIHAN IDENTIFIKASI PENYAKIT BAKTERI DAN ANALISIS KUALITAS AIR PADA BUDIDAYA LELE DI LAHAN MARGINAL\", serta seminar internasional dengan topik \"Characterization of a novel conserved Omp46 protein from outer membrane proteins of Aeromonas hydrophila induce protective immunity as a potential vaccine candidate for goramy (Osphronemus goramy)\". selanjutnya semester depan akan melakukan seminar kualifikasi dan seminar berkala sebanyak 3 kali seminar. langkah selanjutnya adalah konsultasi pada dosen pembimbing pertama dan kedua terkait proposal penelitian mulai Bab 1-4. untuk menambah skill, dan pemahaman labolatorium terkait yang berhubungan dengan penelitian maka saya akan mengikuti seminar, pelatihan dan workshop. Terakhir, mencoba memulai membeli bahan, alat, dan kit penelitian, serta mencoba mencari isolat-isolat dan uji pendahuluan. terimakasih', NULL, NULL, 2, '2023-05-25', NULL, 2, '2023-05-23', NULL, NULL, NULL, '2024-03-01', NULL, 100, 'kesulitan mencari dana penelitian, sudah mencoba submit proposal dan lolos tapi tidak mencukupi. saran perlu ada nya bantuan awal dana penelitian dan target pengembalian sebelum lulus wisuda wajib dilunasi sehingga mahasiswa S3 tidak terhambat penelitian dan bisa lulus tepat waktu', '2022-10-27 14:21:55', '2022-10-27 14:21:55', NULL),
(278, 'EV-1666883572', '197807022008101001', 'ABDUL AZIS SUBHAN', 'FKH UNAIR', 'S1', 4, 'BIOLOGI', 'UNIVERSITAS TERBUKA', 2, NULL, 'Dr. Elizabeth Novi Kusumaningrum, S.Si., M.Si.', NULL, 'Kualitas semen beku sapi simental dengan penambahan vitamin E komersial dalam pengencer tris-kuning telur', 9, 'Saya menyelesaikan tugas akhir dengan tepat waktu, untuk itu saya mencari sumber bacaan untuk menyunsun pembahasan dan metodologinya, dikarenakan sekarang saya baru semester lima maka saya akan fokus pada belajar agar mendapat nilai yang memuaskan', '/uploads/evaluation/study_semester_result/1666883572_KHS 2022.pdf', NULL, 2, '2025-09-27', NULL, 2, '2022-09-23', 0, NULL, NULL, '2025-10-27', NULL, 40, 'saya tidak ada kenda karena saya dapat membagi waktu antara kerja dan kuliah', '2022-10-27 15:12:52', '2022-10-27 15:12:52', NULL),
(279, 'EV-1666885721', '198307032014042001', 'TIYAS KUSUMANINGRUM', 'Fakultas Keperawatan', 'S3', 5, 'S3 Keperawatan', 'Fakultas Keperawatan Universitas Airlangga', 2, NULL, 'Prof. Dr. Nursalam, M.Nurs (Hons)', 'Dr. Yuni Sufyanti A, S.Kp., M.Kes', 'MODEL PERAWATAN POSTPARTUM SEBAGAI UPAYA PENCEGAHAN PENYAKIT KARDIOVASKULER DAN PENINGKATAN KUALITAS HIDUP PADA IBU DENGAN RIWAYAT PREEKLAMSIA', 20, 'Dalam tahap menyelesaikan studi, saat ini kami telah menyusun literatur review dan sedang berproses untuk penyusunan dan konsultasi proposal kualifikasi', '/uploads/evaluation/study_semester_result/1666885721_Detil Nilai Semester Genap 2021-2022.pdf', NULL, 2, '2023-02-23', NULL, 2, '2023-02-25', NULL, NULL, NULL, '2024-07-25', NULL, 20, NULL, '2022-10-27 15:48:41', '2022-10-27 15:48:41', NULL),
(280, 'EV-1666921219', '199210152021093101', 'Muhammad Dimas Aditya Ari', 'Fakultas Kedokteran Gigi', 'S1', 1, 'Doctoral Course of Dentistry', 'Graduate School of Dentistry - Tohoku University, Japan', 2, NULL, 'Prof. Hiroshi Egusa', 'Dr. Atsuhiro Nagasaki', 'Bone Regeneration', 5, '- Mengikuti perkuliahan dengan tertib dan \r\n- Menyusun research plan dan menulis proposal penelitian.', NULL, NULL, 2, '2023-11-30', NULL, 2, '2023-11-30', NULL, NULL, NULL, '2026-09-30', NULL, 2, NULL, '2022-10-28 01:40:19', '2022-10-28 01:40:19', NULL),
(281, 'EV-1666921291', '198212152008122003', 'DWI SUSANTI', 'Fakultas Kedokteran', 'S3', 7, 'Ilmu Gizi', 'Fakultas Kedokteran Universitas Indonesia', 2, NULL, 'Prof. Dr. dr. Budi Wiweko, Sp.OG(K)', 'dr. Rina Agustina, M.Sc., Ph.D and Dr. Anuraj Shankar', 'Effects of probiotic and omega 3 fatty acid supplementations on maternal plasma GLP-1, PYY, gestational weight gain, postpartum weight retention, and central obesity', 70, 'Ujian pra-proposal (kualifikasi) dan ujian proposal telah dilakukan. Kegiatan pengumpulan data ikut projek BRAVE dengan PI dr Rina Agustina MSc PhD dan telah selesai pada bulan Mei 2022 (kegiatan pengumpulan data memanjang setahun karena pandemi COVID 19). Kegiatan pemeriksaan laboratorium selesai awal Oktober 2022. Saat ini sedang melakukan pengolahan data, penulisan laporan hasil penelitian, dan penulisan manuskrip original article. Penulisan manuskrip review sudah dilakukan dan telah disubmit ke jurnal \"nutrients\" tapi belum diterima, sedang diupayakan untuk resubmit ke jurnal lain.', '/uploads/evaluation/study_semester_result/1666921291_Riwayat Akademis Mahasiswa - Dwi Susanti (1806150963); Kurikulum - SIAK NG.pdf', '/uploads/evaluation/study_presence/1666921291_log book Dwi susanti.pdf', 1, '2021-01-19', '/uploads/evaluation/proposal_file/1666921291_ujian proposal dwi susanti.pdf', 2, '2023-01-15', NULL, NULL, NULL, '2023-02-15', NULL, 70, 'Pandemi Covid-19 memperlama kegiatan pengumpulan data yang direncanakan 2 tahun menjadi 3 tahun.', '2022-10-28 01:41:31', '2022-10-28 01:41:31', NULL),
(282, 'EV-1666921981', '199111232021093201', 'Karina Erda Saninggar', 'Fakultas Kedokteran Gigi', 'S3', 5, 'Dental Sciences', 'Graduate School of Biomedical and Health Sciences Hiroshima University', 2, NULL, 'Prof. Koichi Kato, Ph.D', 'Prof. Kotaro Tanimoto, DDS, Ph.D / Prof. Mutsumi Miyauchi, DDS, Ph.D', 'Multi-Factor Scaffold System for Bone Tissue Engineering', 20, 'Menyelesaikan penelitian tahap in vitro', NULL, NULL, 2, '2023-07-28', NULL, 2, '2023-07-28', NULL, NULL, NULL, '2024-06-07', NULL, 20, 'Sulitnya tahap in vitro', '2022-10-28 01:53:01', '2022-10-28 01:53:01', NULL),
(283, 'EV-1666923119', '197909112014092004', 'KRISTIAWATI', 'Fakultas Keperawatan', 'S3', 11, 'Doktor Keperawatan', 'Fakultas Ilmu Keperawatan Universitas Indonesia', 2, NULL, 'Prof. Yeni Rustina, S.Kp., M.App.Sc., Ph.D', 'Dr. Indra Budi, S.Kom., M.Kom', 'Efektifitas perencanaan pulang bayi berat lahir rendah berbasis aplikasi mobile terhadap stress dan   kepercayaan diri ibu dalam merawat bayi', 75, 'Semester 10 mahasiswa cuti akademik karena untuk menyelesaikan proses pengambilan data tahap kedua dan berupaya melakukan pengolahan data. Pada semester selanjutnya  mahasiswa melanjutkan tahap selanjutnya yaitu analisis data, penulisan hasil dan pembahasan serta merencanakan ujian sampai ujian terbuka.', NULL, NULL, 1, '2019-06-25', NULL, 2, '2022-11-30', NULL, NULL, NULL, '2022-12-30', NULL, 100, 'Kendala yang dihadapi oleh mahasiswa adalah terdampak oleh Covid 19 pada saat proses pengumpulan data, sedangkan tempat penelitian adalah rumah sakit. Sampai semester sepuluh mahasiswa belum bisa mencapai target yang direncanakan untuk menyelesaikan studi. Mahasiswa baru mampu untuk menyelesaikan pengambilan data tahap kedua. Hal ini karena jumlah responden yang tidak sesuai perkiraan pada saat sebelum dan sesudah pandemi terjadi. Upaya yang telah dilakukan oleh mahasiswa adalah menambah tempat/ lahan penelitian, untuk memenuhi jumlah responden dan berkonsultasi dengan promotor dan kopromotor dalam proses penyelesaian.', '2022-10-28 02:11:59', '2022-10-28 02:11:59', NULL),
(284, 'EV-1666927596', '198005172003121004', 'ABDUL MANAN', 'Fakultas Perikanan dan Kelautan', 'S3', 10, 'Biology (International Progam)', 'Mahidol University', 2, NULL, 'Assoc. Prof. Dr. Prayad Pokethitiyok', 'Prof. Dr. Maleeya Kruatrachue', 'Toxicity Assessment of Glyphosate on Tetrahymena thermophila Using Morphological, Behavioral, and Proteomic Biomarkers', 100, 'Publikasi jurnal terbit', '/uploads/evaluation/study_semester_result/1666927596_reg_grade_report_export.pdf', NULL, 1, '2019-12-16', '/uploads/evaluation/proposal_file/1666927596_603799701004.pdf', 1, '2022-01-27', NULL, NULL, NULL, '2022-01-05', '/uploads/evaluation/end_test_file/1666927596_603799701006.pdf', 100, 'Kendala pandemi', '2022-10-28 03:26:36', '2022-10-28 03:26:36', NULL),
(285, 'EV-1666930863', '199503252021093101', 'Rahmad Rifqi Fahreza', 'Fakultas Kedokteran Gigi', 'S3', 2, 'Doctoral Course Graduate School of Dentistry - Periodontology and Endodontology', 'Tohoku University', 2, NULL, NULL, NULL, 'Periodontal Regenerative', 25, 'Terus melakukan penelitian', NULL, NULL, 1, '2022-05-10', NULL, 2, '2024-01-01', NULL, NULL, NULL, '2025-08-22', NULL, 30, NULL, '2022-10-28 04:21:03', '2022-10-28 04:21:03', NULL),
(286, 'EV-1666935608', '198506192009122005', 'LITA RAKHMA YUSTINASARI', 'Fakultas Kedokteran Hewan', 'S3', 3, 'Kedokteran Hewan', 'Fakultas Kedokteran Hewan', 2, NULL, 'Prof. Takeshi Kusakabe, DVM., Ph.D.', 'Prof. Kano Kiyoshi, DVM., Ph.D.', 'Deteksi eksosom pada plasenta tikus selama masa kehamilan', 30, 'Menyelesaikan tambahan data dengan melakukan eksperimen hewan coba diikuti dengan penyusunan artikel pertama.', '/uploads/evaluation/study_semester_result/1666935608_KHS berdasar semester.pdf', '/uploads/evaluation/study_presence/1666935608_Bimbingan.pdf', 1, '2022-05-23', '/uploads/evaluation/proposal_file/1666935608_Progress research.pptx', 2, '2022-12-28', NULL, NULL, NULL, '2024-07-29', NULL, 60, NULL, '2022-10-28 05:40:08', '2022-10-28 05:40:08', NULL),
(287, 'EV-1666936979', '199905072019105101', 'Achmad Hasbi Ashshiddiqi', 'Fakultas Ilmu Budaya', 'S1', 2, NULL, NULL, 2, NULL, 'Latipahs.T., M.IT', NULL, NULL, NULL, 'terus meningkatkan belajar, dan membuat inovasi yang bermanfaat bagi masyarakat', '/uploads/evaluation/study_semester_result/1666936979_Daftar_KHS_Mahasiswa (1).doc', NULL, 2, '2024-07-15', NULL, 2, '2024-07-29', NULL, NULL, NULL, '2024-08-05', NULL, 30, 'tidak ada', '2022-10-28 06:02:59', '2022-10-28 06:05:57', NULL),
(288, 'EV-1666938731', '199109062016113201', 'SEPTIA KHOLIMATUSSADIAH', 'Fakultas Sains dan Teknologi', 'S3', 7, 'Physics', 'National Taiwan University', 2, NULL, 'Dr. Li-Chyong Chen', 'Dr. Kuei-Hsien Chen', 'Nanoscale Photoelectrochemical Imaging of Two-Dimensional van der Waals Heterostructures for Artificial Photosynthesis', 40, 'Publikasi paper sebagai first author', NULL, NULL, 2, '2022-01-18', NULL, 2, '2023-07-28', NULL, NULL, NULL, '2024-01-17', NULL, 40, NULL, '2022-10-28 06:32:11', '2022-10-28 06:33:11', NULL),
(289, 'EV-1666940328', '197806282005012002', 'YUANI SETIAWATI', 'Fakultas Kedokteran', 'S1', 3, 'Ilmu Kedokteran', 'FK Unair', 2, NULL, 'Prof Sri Agus Sudjarwo, drh, PhD', 'Prof Jusak', 'Efek Gastroprotektif Umbi Porang terhadap Ekspresi TNF alfa dan IL-1 beta pada Tikus putih', 30, '1. Seminar Proposal', NULL, NULL, 2, '2024-06-25', NULL, 2, '2024-07-20', 20, NULL, NULL, '2024-08-28', NULL, 75, 'tidak ada', '2022-10-28 06:58:48', '2022-10-28 07:00:44', NULL),
(290, 'EV-1666940571', '198012072008121001', 'MOHAMMAD SAIFUL ARDHI', 'Fakultas Kedokteran', 'S3', 13, 'Ilmu Kedokteran', 'Fakultas Kedokteran', 2, NULL, 'Dr. dr. Muhammad Hamdan, Sp.S(K)', 'Dr. dr. Achmad Chusnu Romdhoni, Sp.THT-KL(K), FICS', 'Pengaruh Thiamin pada stroke iskemik', 60, 'Pengolahan hasil penelitian', NULL, NULL, 1, '2022-09-13', NULL, 2, '2022-11-13', NULL, NULL, NULL, '2023-01-13', NULL, 85, NULL, '2022-10-28 07:02:51', '2022-10-28 07:03:26', NULL),
(291, 'EV-1666941770', '197902012010121002', 'LUCKY ANDRIYANTO (RSUA)', 'Fakultas Kedokteran', 'S3', 8, 'Ilmu Kedokteran', 'Universitas Airlangga', 2, NULL, 'Dr. Arie Utariani, dr.SpAn.KAP', NULL, 'Polimorfisme vasopressor pada vasogenik syok', 15, 'Menyiapkan ujian kualifikasi', NULL, NULL, 2, '2023-02-01', NULL, 2, '2023-02-02', NULL, NULL, NULL, '2023-02-02', NULL, 20, 'Terkendala pandemi covid selama tahun 2020=2021', '2022-10-28 07:22:50', '2022-10-28 07:22:50', NULL),
(292, 'EV-1666946852', '198304212008121001', 'CATUR DIAN SETIAWAN', 'Fakultas Farmasi', 'S3', 7, 'S3 Kesehatan Masyarakat', 'Fakultas Kesehatan Masyarakat', 2, NULL, 'Dr Arief Wibowo MS', 'Prof Dr Umi Athijah apt', 'Pemetaan Pelayanan Kefarmasian', 30, '- Penyelesaian proposal dan penelitian', NULL, NULL, 2, '2022-12-21', NULL, 2, '2023-06-29', NULL, NULL, NULL, '2023-08-16', NULL, 30, '- terhambat penyelesaian proposal', '2022-10-28 08:47:32', '2022-10-28 08:47:32', NULL),
(293, 'EV-1666949505', '197706122009122001', 'PARWATI HADI NOORSANTI', 'Fakultas Ilmu Budaya', 'S3', 7, 'Ilmu-ilmu Humaniora', 'FIB UGM', 2, NULL, 'Prof. Dr. Wening Udasmoro', 'Dr. tatang Hariri, M.A', 'Strategi Bahasa Politikus Perempuan Jepang', 60, 'menjaring data, verifikasidata kepada native speaker, tabulasi data, analisis data', '/uploads/evaluation/study_semester_result/1666949505_Parwati Hadi Noorsanti_Transkrip Sementara Semester Genap 2021-2022.pdf', '/uploads/evaluation/study_presence/1666949505_d borang konsultasi Parwati Hadi Noorsanti.pdf', 1, '2021-08-20', '/uploads/evaluation/proposal_file/1666949505_Surket Lulus Ujian Kompre Parwati.pdf', 2, '2023-05-30', NULL, NULL, NULL, '2023-06-12', NULL, 65, 'penjaringan data dan proses analisis data', '2022-10-28 09:31:45', '2022-10-28 09:31:45', NULL),
(294, 'EV-1666949848', '198908092012122001', 'ENI PUJI LESTARI', 'Rumah Sakit Universitas Airlangga', 'S2', 1, 'magister keperawatan', 'Universitas Airlangga', 2, '/uploads/evaluation/study_certificate/1666949848_skepners.pdf', 'belum ditentukan', 'belum ditentukan', 'pengembangan supervisi keperawatan', 20, 'fokus menyusun proposal sembari menunggu nama nama pembimbing', NULL, NULL, 2, '2023-05-18', NULL, 2, '2023-05-18', NULL, NULL, NULL, '2023-08-30', NULL, 25, NULL, '2022-10-28 09:37:28', '2022-10-28 09:37:28', NULL),
(295, 'EV-1666952826', '198612122018035101', 'ACHMAD TAUFIK', 'Fakultas Kedokteran Hewan', 'S1', 9, 'Sistem Informasi', 'Universitas Narotama', 2, NULL, NULL, NULL, NULL, NULL, NULL, '/uploads/evaluation/study_semester_result/1666952826_KHS.pdf', NULL, 2, '2023-02-01', NULL, 2, '2023-02-15', NULL, NULL, NULL, '2022-10-28', NULL, 0, 'Masih proses melengkapi kekurangan KRS', '2022-10-28 10:27:06', '2022-10-28 10:27:06', NULL),
(296, 'EV-1666953267', '198610232014041001', 'CHOIRUL ANWAR', 'Rumah Sakit Universitas Airlangga', 'S2', 1, 'Keperawatan', 'Universitas Airlangga', 2, NULL, '-', '-', 'Pengembangan instrumen Hemodialysis Safety Check list terhadap peningkatan mutu dan keselamapatan pasien hemodialisis reguler', 10, 'awal semester 2 : sidang Pra proposal lanjut dengan perbaikan dan sidang proposal\r\npertengahan semester 2 : proses penelitian\r\nakhir semester 2 : sidang tesis', '/uploads/evaluation/study_semester_result/1666953267_KRS Sems 1.pdf', NULL, 2, '2023-02-07', NULL, 2, '2023-03-07', NULL, NULL, NULL, '2023-06-07', NULL, 0, NULL, '2022-10-28 10:34:27', '2022-10-28 10:34:27', NULL),
(297, 'EV-1666959220', '198006242006041004', 'SUJAYADI', 'Fakultas Hukum', 'S3', 8, 'Doktor Ilmu Hukum', 'Universitas Gadjah Mada', 2, NULL, 'Prof. Dr. Tata Wijayanta, S.H., M.Hum.', 'Herliana, S.H., M.Comm.Law., Ph.D.', 'Yurisdiksi Pengadilan Indonesia dalam Perkara Perdata Internasional', 30, 'Dalam semester Gasal 2022/2023 diharapkan telah diperoleh hasil publikasi untuk memenuhi syarat publikasi (mata kuliah Penelitian Publikasi I dan Penelitian Publikasi II). Di samping itu penyusunan naskah disertasi dilanjutkan dan diharapkan pada akhir semester Gasal 2022/2023 dapat mengajukan Seminar Hasil Penelitian dan Penilaian Disertasi (Ujian Kelayakan).', NULL, NULL, 1, '2021-09-10', NULL, 2, '2023-01-27', NULL, NULL, NULL, '2023-03-31', NULL, 65, NULL, '2022-10-28 12:13:40', '2022-10-28 12:13:40', NULL),
(298, 'EV-1666959743', '198311062010121003', 'KUSTIAWAN TRI PURSETYO', 'Fakultas Perikanan dan Kelautan', 'S1', 7, 'Fisheries', 'Universiti Malaysia Terengganu', 2, NULL, 'Prof. Madya Mohd. Hanafi Idris', 'Dr. Alfian Zein', 'The Strategy of Shellfish Resources Management: Eco-Biology and Socio-Economy Approach in Sidoarjo,  Indonesia', 90, 'Dalam 2 bulan kedepan akan melakukan submit draft thesis untuk sidang akhir', '/uploads/evaluation/study_semester_result/1666959743_MyNemo KHS.pdf', NULL, 1, '2019-01-10', NULL, 2, '2022-12-22', NULL, NULL, NULL, '2023-02-01', NULL, 80, NULL, '2022-10-28 12:22:23', '2022-10-28 12:22:23', NULL),
(299, 'EV-1666962030', '198204262018013201', 'Ika Mayati', 'Fakultas Farmasi', 'S1', 3, 'Ilmu Administrasi Negara', 'Universitas Terbuka', 2, NULL, NULL, NULL, NULL, NULL, NULL, '/uploads/evaluation/study_semester_result/1666962030_KHS Semester 2 - Ika Mayati 043831163.pdf', NULL, 2, '2024-04-26', NULL, 2, '2024-04-26', NULL, NULL, NULL, '2024-04-26', NULL, 100, NULL, '2022-10-28 13:00:30', '2022-10-28 13:00:30', NULL),
(300, 'EV-1666962531', '198203252018013101', 'Slamet Triyono', 'Fakultas Ilmu Sosial Ilmu Politik', 'S1', 3, 'Ilmu Administrasi Negara', 'Universitas Terbuka', 2, NULL, NULL, NULL, NULL, NULL, NULL, '/uploads/evaluation/study_semester_result/1666962531_KHS SLAMET TRIYONO.pdf', NULL, 2, '2024-11-04', NULL, 2, '2024-11-22', NULL, NULL, NULL, '2024-12-10', NULL, 1, NULL, '2022-10-28 13:08:51', '2022-10-28 13:20:54', NULL),
(301, 'EV-1666962815', '198112262014092002', 'NURUL SURTIKA SARI', 'Fakultas Sains dan Teknologi', 'S1', 3, 'MANAJEMEN', 'UNIVERSITAS TERBUKA', 2, NULL, NULL, NULL, NULL, NULL, NULL, '/uploads/evaluation/study_semester_result/1666962815_KHS SEM. 2.pdf', NULL, 2, '2024-12-26', NULL, 2, '2024-12-26', NULL, NULL, NULL, '2024-12-26', NULL, 100, NULL, '2022-10-28 13:13:35', '2022-10-28 13:13:35', NULL),
(302, 'EV-1666963110', '198308182018013201', 'Margaretha Galuh Megawati', 'Fakultas Ilmu Sosial dan Ilmu Politik', 'S1', 3, 'Manajemen', 'Universitas Terbuka', 2, NULL, NULL, NULL, NULL, NULL, NULL, '/uploads/evaluation/study_semester_result/1666963110_KHS MARGARETHA.pdf', NULL, 2, '2024-11-04', NULL, 2, '2024-11-18', NULL, NULL, NULL, '2024-12-02', NULL, 1, NULL, '2022-10-28 13:18:30', '2022-10-28 13:18:30', NULL),
(303, 'EV-1666963427', '198009162006041002', 'LAMBANG ALEX SAPUTRO', 'Sekretaris Universitas', 'S1', 3, 'MANAJEMEN', 'UNIVERSITAS TERBUKA', 2, NULL, NULL, NULL, NULL, NULL, NULL, '/uploads/evaluation/study_semester_result/1666963427_KHS SEM. 2 ALEX.PDF', NULL, 2, '2024-09-16', NULL, 2, '2024-09-16', NULL, NULL, NULL, '2022-09-16', NULL, 100, NULL, '2022-10-28 13:23:47', '2022-10-28 13:23:47', NULL),
(304, 'EV-1666963528', '198203252018013101', 'Slamet Triyono', 'Fakultas Ilmu Sosial Ilmu Politik', 'S1', 2, 'Ilmu Administrasi Negara', 'Universitas Terbuka', 2, NULL, NULL, NULL, NULL, NULL, NULL, '/uploads/evaluation/study_semester_result/1666963528_KHS SLAMET TRIYONO - 1.pdf', NULL, 2, '2024-11-04', NULL, 2, '2024-11-22', NULL, NULL, NULL, '2024-12-10', NULL, 1, NULL, '2022-10-28 13:25:28', '2022-10-28 13:26:31', NULL),
(305, 'EV-1666963534', '198009162006041002', 'LAMBANG ALEX SAPUTRO', 'Sekretaris Universitas', 'S1', 2, 'MANAJEMEN', 'UNIVERSITAS TERBUKA', 2, NULL, NULL, NULL, NULL, NULL, NULL, '/uploads/evaluation/study_semester_result/1666963534_KHS SEM. 1 ALEX.PDF', NULL, 2, '2024-09-16', NULL, 2, '2024-09-16', NULL, NULL, NULL, '2024-09-16', NULL, 100, NULL, '2022-10-28 13:25:34', '2022-10-28 13:25:34', NULL),
(306, 'EV-1666963705', '198308182018013201', 'Margaretha Galuh Megawati', 'Fakultas Ilmu Sosial dan Ilmu Politik', 'S1', 2, 'Manajemen', 'Universitas Terbuka', 2, NULL, NULL, NULL, NULL, NULL, NULL, '/uploads/evaluation/study_semester_result/1666963705_KHS MARGARETHA -1.pdf', NULL, 2, '2024-11-04', NULL, 2, '2024-11-18', NULL, NULL, NULL, '2024-12-02', NULL, 1, NULL, '2022-10-28 13:28:25', '2022-10-28 13:28:45', NULL),
(307, 'EV-1666963908', '198112262014092002', 'NURUL SURTIKA SARI', 'Fakultas Sains dan Teknologi', 'S1', 2, 'MANAJEMEN', 'UNIVERSITAS AIRLANGGA', 2, NULL, NULL, NULL, NULL, NULL, NULL, '/uploads/evaluation/study_semester_result/1666963908_KHS SEM. 1.pdf', NULL, 2, '2024-12-26', NULL, 2, '2024-12-26', NULL, NULL, NULL, '2024-12-26', NULL, 100, NULL, '2022-10-28 13:31:48', '2022-10-28 13:31:48', NULL),
(308, 'EV-1666966865', '197910132010122001', 'ELIDA ULFIANA', 'Fakultas Keperawatan', 'S3', 9, 'Doktor Keperawatan', 'Fakultas Keperawatan', 2, NULL, '-', '-', 'Keperawatan Gerontik', 30, 'Langkah konkrit harus lebih fokus mengerjakan tugas akhir dengan membagi waktu / manajemen waktu antara tugas utama dan tugas tambahan serta waktu untuk studi. lebih rajin lagi untuk konsul pada pembimbing', NULL, NULL, 2, '2022-12-28', NULL, 2, '2022-12-28', NULL, NULL, NULL, '2023-12-28', NULL, 30, 'pada semester lalu terkendala urusan keluarga memiliki orang tua lansia yang kondisi kesehatan semakin menurun dan sampai meninggal dunia. serta kendala dalam manajemen waktu yang kurang baik', '2022-10-28 14:21:05', '2022-10-28 14:21:05', NULL),
(309, 'EV-1666971487', '198402012014042001', 'ERNA DWI WAHYUNI', 'Fakultas Keperawatan', 'S3', 4, 'Doktor Keperawatan', 'Fakultas Keperawatan', 2, NULL, 'Prof. Dr. Nursalam, M.Nurs. Hons', 'Dr. Yulis Setiya Dewi, S.Kep.Ns.,MNg.', 'Electronic Nursing Record (ENR) di ICU dengan pendekatan 3S (SDKI, SLKI, SIKI) terhadap Kualitas Dokumentasi Keperawatan dan Keselamatan Pasien', 45, 'Menyelesaikan penyusunan proposal, melakukan pembimbingan baik dengan pembimbing maupun konsultan', '/uploads/evaluation/study_semester_result/1666971487_KHS ERNA20220530_10581695.pdf', NULL, 2, '2022-12-26', NULL, 2, '2023-02-27', NULL, NULL, NULL, '2023-11-30', NULL, 45, 'Kendala terbesar dari dalam diri, yaitu terkiat dengan manajemen waktu dan penyelesaian tugas. Perlu upaya dan semangat yang lebih besar. Bismillah bisa', '2022-10-28 15:38:07', '2022-10-28 15:38:07', NULL),
(310, 'EV-1666971710', '199110152015043201', 'SITI ELIANA ROCHMI', 'Fakultas Vokasi', 'S3', 9, 'S3 Sains Veteriner', 'Universitas Airlangga', 2, NULL, 'Prof. Sri Agus Sudjarwo, drh., Ph.D', NULL, 'Spermatozoa ayam', 25, 'penelitian dan belajar TOEFL', NULL, NULL, 2, '2022-11-30', NULL, 2, '2023-12-31', NULL, NULL, NULL, '2023-12-31', NULL, 25, 'Masih mengemban tugas akademik dan non akademik', '2022-10-28 15:41:50', '2022-10-28 15:44:48', NULL),
(311, 'EV-1666974020', '199301282019031015', 'DENIZAR ABDURRAHMAN MI`RAJ', 'Fakultas Ekonomi dan Bisnis', 'S3', 0, 'Islamic Economics and Finance', 'Sakarya University', 2, NULL, NULL, NULL, NULL, 0, 'Sebagai pemenuhan kewajiban kepada pemberi beasiswa yaitu pemerintah Turki, maka saya wajib menyelesaikan kelas persiapan bahasa Turki selama 1 tahun di Universitas tempat studi, sebagai prasyarat untuk masuk semester 1 perkuliahan. Untuk dapat masuk di perkuliahan, minimal level kemampuan bahasa Turki adalah C2 (level 6). Laporan ini ditulis untuk 2 level telah terlewati (lulus) pada awal semester kelas bahasa dan sedang berlangsung kelas bahasa level 3 (B1). Level C2 (level 6) yang didapatkan nantinya juga akan digunakan sebagai syarat kelulusan studi doktoral program di universitas tempat studi.', NULL, NULL, 2, '2024-05-28', NULL, 2, '2025-05-28', NULL, NULL, NULL, '2026-04-28', NULL, 10, NULL, '2022-10-28 16:20:20', '2022-10-28 16:20:55', NULL),
(314, 'EV-1666976361', '199301282019031015', 'DENIZAR ABDURRAHMAN MI`RAJ', 'Fakultas Ekonomi dan Bisnis', 'S3', -2, 'Islamic Economics and Finance', 'Sakarya University', 2, NULL, NULL, NULL, NULL, -1, 'Saya telah menyelesaikan kelas bahasa Turki dan memulai semester 1 dengan 4 mata kuliah.', NULL, NULL, 2, '2024-05-28', NULL, 2, '2025-05-28', NULL, NULL, NULL, '2026-04-28', NULL, 10, NULL, '2022-10-28 16:59:21', '2022-10-28 16:59:21', NULL),
(315, 'EV-1666998232', '198105102005012001', 'CORIE INDRIA PRASASTI', 'Fakultas Kesehatan Masyarakat', 'S3', 9, 'Ilmu Kesehatan Masyarakat', 'Universitas Indonesia', 2, NULL, 'Prof. Dr. R. Budi Haryanto, SKM., M.Kes., M.Sc', 'Prof. Dr. Ratna Djuwita Hatma, dr., MPH', 'HUBUNGAN TUNGAU DEBU RUMAH, TVOCs DAN PM2.5 TERHADAP POLIMORFISME GEN IL-4 PADA ANAK DENGAN GEJALA RINITIS ALERGI DI KOTA SURABAYA', 80, 'Ujian Hasil Disertasi terjadwal 2 November 2022, dilanjutkan Ujian tertutup dan terbuka', '/uploads/evaluation/study_semester_result/1666998232_Corie Indria Prasasti_sem 1-6.pdf', NULL, 1, '2020-07-28', '/uploads/evaluation/proposal_file/1666998232_Surat Undangan Ujian Proposal Riset a.n Corie Indria Prasasti 2906 Akademik (2).pdf', NULL, '2022-11-02', NULL, '/uploads/evaluation/similarity_file/1666998232_Surat undangan ujian hasil_Corie Indria Prasasti.pdf', NULL, '2023-01-04', NULL, 80, 'Pengambilan data primer di saat pandemi mengakibatkan jadwal bergeser jauh dari yang seharusnya.', '2022-10-28 23:03:52', '2022-10-28 23:03:52', NULL),
(316, 'EV-1667005821', '198604012018013201', 'Rischa Aprilya Roesanty', 'Fakultas Ilmu Sosial Ilmu Politik', 'S1', 1, 'Manajemen', 'Universitas Terbuka', 2, NULL, NULL, NULL, NULL, NULL, 'Untuk semester 1 ini alhamdulillah saya sudah mendapatkan nilai yang maksimal yaitu IPS 4. Untuk semester selanjutnya, saya akan terus berusaha lebih lagi dan lebih giat belajar lagi agar tetap bisa belajar secara efektif', '/uploads/evaluation/study_semester_result/1667005821_Daftar Nilai Ujian Semester 1 Rischa Aprilya.', NULL, 2, '2024-06-26', NULL, 2, '2024-06-29', NULL, NULL, NULL, '2024-07-29', NULL, 100, NULL, '2022-10-29 01:10:21', '2022-10-29 01:10:21', NULL),
(317, 'EV-1667005940', '198604012018013201', 'Rischa Aprilya Roesanty', 'Fakultas Ilmu Sosial Ilmu Politik', 'S1', 2, 'Manajemen', 'Universitas Terbuka', 2, NULL, NULL, NULL, NULL, NULL, 'Untuk semester 2 ini alhamdulillah saya sudah mendapatkan nilai yang maksimal yaitu IPS 4. Untuk semester selanjutnya, saya akan terus berusaha lebih lagi dan lebih giat belajar lagi agar tetap bisa belajar secara efektif', '/uploads/evaluation/study_semester_result/1667005940_Daftar Nilai Ujian Semester 2 Rischa Aprilya.', NULL, 2, '2024-06-29', NULL, 2, '2024-06-29', NULL, NULL, NULL, '2024-07-29', NULL, 100, NULL, '2022-10-29 01:12:20', '2022-10-29 01:12:20', NULL),
(318, 'EV-1667009212', '198806042010121005', 'BANGUN MUKTI ARDI', 'Rumah Sakit Universitas Airlangga', 'S2', 1, 'Keperawatan', 'Rumah Sakit Universitas Airlangga', 2, NULL, NULL, NULL, NULL, NULL, 'Menyusun Proposal Tesis dan INC', NULL, NULL, 2, '2023-02-20', NULL, 2, '2023-02-23', NULL, NULL, NULL, '2023-05-05', NULL, 100, 'Tidak ada', '2022-10-29 02:06:52', '2022-10-29 02:07:46', NULL),
(319, 'EV-1667022096', '198110282006041003', 'INDRA KHARISMA RAHARJANA', 'Fakultas Sains dan Teknologi', 'S1', 9, 'Ilmu Komputer', 'Institut Teknologi Sepuluh Nopember', 2, NULL, 'Daniel Oranova Siahaan, S.Kom, M.Sc, PD.Eng', 'Dr.Eng. Chastine Fatichah, S.Kom, M.Kom', 'Ekstraksi User Stories Dari Berita Online Untuk Elisitasi Kebutuhan Perangkat Lunak', 90, 'publish naskah dalam jurnal dan menyelesaikan ujian disertasi', '/uploads/evaluation/study_semester_result/1667022096_TRANSKRIP MATA KULIAH.pdf', NULL, 2, '2023-02-14', NULL, 2, '2023-02-14', NULL, NULL, NULL, '2023-02-14', NULL, 90, 'sulit fokus antara studi S3 dengan beban kerja di UNAIR', '2022-10-29 05:41:36', '2022-10-29 05:41:36', NULL),
(320, 'EV-1667091792', '199602182022043201', 'Beshlina Fitri Widayanti Roosyanto', 'Fakultas Kedokteran Gigi', 'S3', 1, 'Oral and Maxillofacial Radiology', 'Niigata University', 2, NULL, 'Professor Takafumi Hayashi D.D.S., Ph.D.', NULL, NULL, 0, 'saya akan lebih aktif dalam berdiskusi dengan pembimbing', '/uploads/evaluation/study_semester_result/1667091792_KRS s3.pdf', NULL, 2, '2024-10-31', NULL, 2, '2026-02-27', NULL, NULL, NULL, '2026-03-31', NULL, 10, NULL, '2022-10-30 01:03:12', '2022-10-30 01:03:12', NULL),
(321, 'EV-1667184291', '198202212008122003', 'KRISTANTI WANITO WIGATI', 'Fakultas Kedokteran', 'S3', 2, 'School of Human Sciences', 'University of Western Australia, Perth-Western Australia', 2, NULL, 'Assoc. Prof. Louise Naylor', 'Winthrop Prof. Daniel Green', 'Microvascular', 25, 'Saya diaktifkan sebagai full PhD student di School of Human Sciences - Exercise Science pada 4 Maret 2022. Di semester 1 saya diminta spv untuk menulis literature review dan menyusun proposal. Presentasi proposal sudah saya lakukan pada tanggal 19 Agustus 2022. Untuk menulis tesis saya di akhir, saya harus menyelesaikan 3 penelitian, dan saat ini saya sedang menjalankan penelitian 1 dan 2, sambil mengajukan etik untuk penelitian ke 3 dengan harapan di awal Maret tahun 2023 saya bisa mulai untuk merekrut subyek.', NULL, NULL, 1, '2022-08-19', '/uploads/evaluation/proposal_file/1667352510_Research-proposal-Ms-Kristanti-Wigati-23012094-.pdf', 1, '2022-09-24', NULL, NULL, NULL, '2025-11-30', NULL, 25, 'Saya harus mengajukan pengaktifan tugas belajar 5 bulan lebih awal dari tanggal dimulainya studi saya secara de facto karena saat itu saya terkendala dengan aturan umur dari kemendiknas sehingga saya disarankan untuk mengajukan segera. Tentu saja hal ini akan mempengaruhi lamanya masa studi saya secara keseluruhan. Bersyukur setelah saya memulai studi saya per 4 Maret 2022 sampai sekarang tidak ada kendala berarti. Semua milestone saya bisa achieve on time. Saya sampaikan banyak terima kasih kepada tim SDM (Pak Fadli, pak Eka dan mas Adam) yang sudah banyak membantu.', '2022-10-31 02:44:51', '2022-11-02 01:28:30', NULL),
(322, 'EV-1667191170', '198608192010122006', 'DEVI RAHMA SOFIA', 'Rumah Sakit Universitas Airlangga', 'S2', 3, 'Magister Keperawatan', 'Universitas Airlangga', 2, NULL, 'Dr. Rizki Fitryasari P.K, S.Kep., Ns.,  M.Kep', 'Rr. Dian Tristiana,  S.Kep., Ns., M.Kep.', 'Infection Control', 10, 'Target toefl sudah tercapai. Pada semester ini target adalah sidang pra proposal dan proposal. Untuk publikasi, saat ini proses revisi penyusunan manuskrip jurnal.', '/uploads/evaluation/study_semester_result/1667204467_KHS Semester II Devi Rahma Sofia.pdf', NULL, 2, '2022-10-18', NULL, 2, '2022-10-26', NULL, NULL, NULL, '2023-01-27', NULL, 40, 'Pemantauan data awal penelitian yang didapatkan kurang kuat, sehingga perlu mencari kembali permasalahan lain yang bisa di ambil', '2022-10-31 04:39:30', '2022-10-31 08:21:07', NULL),
(323, 'EV-1667208605', '199009182018013101', 'Bayu Lukito Nugroho', 'Lembaga Penelitian dan Pengabdian Masyarakat', 'S2', 5, 'S-2 Kebijakan Publik', 'Universitas Airlangga', 2, NULL, 'Dr. Drs. Eko Supeno, M.Si.', 'Sulikah Asmorowati, S.Sos., M.Dev.St., Ph.D.', 'World Class University Policy', 40, 'Menyelesaikan tesis dan sidang', '/uploads/evaluation/study_semester_result/1667208605_KHS-072014353012.pdf', NULL, 2, '2022-11-30', NULL, 2, '2022-11-23', 20, NULL, NULL, '2022-12-23', NULL, 40, 'Pekerjaan di kantor sedang tinggi loadnya', '2022-10-31 09:30:05', '2022-10-31 09:30:35', NULL),
(324, 'EV-1667265923', '198712022015041002', 'JOVI SULISTIAWAN', 'Fakultas Ekonomi dan Bisnis', 'S3', 5, 'Manajemen', 'Asia University', 2, NULL, 'Pei-Kuan Lin', 'Massoud Moslehpour', 'Unethical Pro-Organizational Behavior', 15, 'Topik baru saja di-approve.', NULL, NULL, 2, '2023-01-10', NULL, 2, '2022-12-29', NULL, NULL, NULL, '2023-07-19', NULL, 80, NULL, '2022-11-01 01:25:23', '2022-11-01 01:25:23', NULL),
(325, 'EV-1667284979', '198303272016113201', 'VIQI ARDANIAH', 'Fakultas Ilmu Budaya', 'S1', 7, 'Business Administration', 'Asia University', 2, NULL, 'Ming-Lang Tseng', NULL, 'Sustainability Transition', 80, 'Menyelesaikan manuskrip desertasi; Menyelesaikan paper ke 7', '/uploads/evaluation/study_semester_result/1667284979_KHS_2022_Oktober.pdf', NULL, NULL, '2021-11-17', NULL, 1, '2021-11-17', NULL, NULL, NULL, '2023-03-27', NULL, 80, 'Permintaan publikasi SSCI/SCI/EI index sebanyak 5 paper.', '2022-11-01 06:42:59', '2022-11-01 06:42:59', NULL),
(326, 'EV-1668140331', '199602182022043201', 'Beshlina Fitri Widayanti Roosyanto', 'Fakultas Kedokteran Gigi', 'S3', 1, 'Oral and Maxillofacial Radiology', 'Niigata University', 2, NULL, 'Professor Takafumi Hayashi D.D.S., Ph.D.', NULL, NULL, 10, 'Memperkuat dasar ilmu radiologi kedokteran gigi dan mengikuti seluruh pembelajaran yang telah disetujui', '/uploads/evaluation/study_semester_result/1668140331_KRS s3.pdf', NULL, 2, '2024-01-21', NULL, 2, '2025-10-19', NULL, NULL, NULL, '2026-03-22', NULL, 10, NULL, '2022-11-11 04:18:51', '2022-11-11 04:19:12', NULL),
(327, 'EV-1668751017', '198907122018013101', 'Budi Lutfitra Wisada', 'Fakultas Ekonomi dan Bisnis', 'S2', 5, 'Magister Akuntansi', 'Universitas Brawijaya', 2, NULL, 'Dr. Erwin Saraswati, SE., M.Acc. Ak., CPMA.', 'Dr. Wuryan Andayani, SE., Msi., Ak.', 'Akuntansi Pemerintahan', 10, 'Saya akan lebih intens bimbingan Thesis dengan Dosen Pembimbing dan menyelesaikan publikasi Journal saya.', '/uploads/evaluation/study_semester_result/1668751017_LKB a.n Budi Lutfitra Wisada.pdf', NULL, NULL, '2022-12-31', NULL, 2, '2023-01-28', NULL, NULL, NULL, '2023-02-25', NULL, 10, 'Dosen Pembimbing 1 sulit ditemui karena beliau sering perjalanan dinas ke Jakarta. Kedua Dosen Pembimbing meminta bimbingan Thesis secara offline di Malang setiap hari Sabtu.', '2022-11-18 05:56:57', '2022-11-18 05:56:57', NULL),
(328, 'EV-1668753877', '199404142018083201', 'YUTIKA AMELIA EFFENDI', 'Fakultas Teknologi Maju dan Multidisiplin', 'S3', 2, 'Industrial and Data Engineering', 'Pukyong National University - Pusan National University', 2, NULL, 'Prof. Minsoo Kim, PhD.', NULL, 'Process Analytics and Mining', 0, '- Mengikuti perkuliahan untuk melengkapi sks wajib pembelajaran\r\n- Mengadakan lab meeting setiap hari Jumat untuk membahas referensi paper dan jurnal terkait process analytics and mining bersama Professor dan Labmate. Hal ini dilakukan untuk menemukan ide dan kontribusi yang bisa di eksplor lebih jauh.\r\n- Mengikuti workshop/seminar seputar Industrial and Data Engineering, Artificial Intelligence Technology', NULL, NULL, 2, '2024-03-01', NULL, 2, '2024-03-01', NULL, NULL, NULL, '2024-10-01', NULL, 100, '- Language Barrier\r\n- Novelty keilmuan yang baik dan bisa diterapkan di dunia industri', '2022-11-18 06:44:37', '2022-11-18 06:44:37', NULL),
(329, 'EV-1668854608', '198008172008012016', 'NURMAWATI FATIMAH', 'Fakultas Kedokteran', 'S3', 4, 'Ilmu kedokteran', 'Universitas Airlangga', 2, NULL, 'Prof Sri Agus Sudjarwo,drh.,PhD', 'Dr.Arifa Mustika,dr.,M.Si', 'Singawalang pada kardiomiopati', 45, 'Pelaksanaan penelitian pendahuluan\r\nBelajar molecular docking untukpublikasi', NULL, NULL, 2, '2023-01-24', NULL, 1, '2023-03-10', 30, NULL, NULL, '2023-10-11', NULL, 35, NULL, '2022-11-19 10:43:28', '2022-11-19 10:43:28', NULL),
(330, 'EV-1669083141', '198110062008012018', 'NURINA HASANATULUDHHIYAH', 'Fakultas Kedokteran', 'S3', 3, 'Ilmu Kedokteran jenjang Doktor', 'Fakultas Kedokteran Universitas Airlangga', 2, NULL, 'Dr. Arifa Mustika dr., M.Kes', 'Prof Naoto Uemura MD., PhD', 'Study on Mechanism of Olive Leaves Extract on Oxidative Stress and Neuroinflammation in Male Wistar Rats Induced by AlCl3 + D-Galactose', 5, 'Melaksanakan seminar topik; ujian proposal; publikasi ilmiah penelitian pendahuluan di jurnal internasional', '/uploads/evaluation/study_semester_result/1669083141_KHS-012117017318 smt ganjil 20212022.pdf', NULL, 2, '2023-03-31', NULL, 2, '2024-01-01', NULL, NULL, NULL, '2024-07-30', NULL, 5, 'bersamaan dengan melaksanakan tugas tridarma dan penunjang di unit kerja', '2022-11-22 02:12:22', '2022-11-22 02:12:22', NULL),
(331, 'EV-1669091096', '198703142015042001', 'MARISA RIFADA', 'Fakultas Sains dan Teknologi', 'S3', 6, 'Ilmu Statistika', 'Institut Teknologi Sepuluh Nopember Surabaya', 2, NULL, 'Dr. Vita Ratnasari, M.Si', 'Dr. Purhadi, M.Sc', 'Model Regresi Logistik Ordinal Polinomial Multivariat', 75, 'Publikasi ilmiah dalam jurnal internasional terindeks Scopus dan seminar hasil penelitian', '/uploads/evaluation/study_semester_result/1669091096_KHS Semester Genap 2021-2022.pdf', NULL, 1, '2021-07-13', '/uploads/evaluation/proposal_file/1669091096_2021 8047 SK Kandidat Doktor a.n Marisa Rifada (16 Agustus 2021) (1).pdf', 2, '2023-03-31', NULL, NULL, NULL, '2023-08-31', NULL, 75, 'Kendala yang dihadapi yaitu terkait lamanya pembuatan program di open source software R dan analisis data untuk kajian penerapan materi disertasi.', '2022-11-22 04:24:56', '2022-11-22 04:26:13', NULL),
(332, 'EV-1670300085', '199407232018013101', 'Muhammad Yan Handita', 'Direktorat Sistem Informasi', 'S1', 6, 'Sistem Informasi', 'Universitas Narotama', 1, '/uploads/evaluation/study_certificate/1670300085_ijazah cuta.pdf', 'Eman Setiawan, S.Kom., M.M', NULL, 'SISTEM INFORMASI PENERIMAAN PEGAWAI BERBASIS WEB DENGAN METODE AGILE MODEL EXTREME PROGRAMMING (XP)', 100, 'Sudah selesai', '/uploads/evaluation/study_semester_result/1670300085_KHS 04219067.pdf', '/uploads/evaluation/study_presence/1670300085_04219067_Muhammad Yan Handita_BARISET.pdf', 1, '2022-04-21', '/uploads/evaluation/proposal_file/1670300085_Bukti Ujian Proposal.pdf', NULL, '2022-08-19', 20, '/uploads/evaluation/similarity_file/1670300085_Plagiasi_04219067_Muhammad Yan Handita - Muhammad Yan Handita - 19082022.pdf', NULL, '2022-07-20', '/uploads/evaluation/end_test_file/1670300085_Bukti Ujian Akhir.pdf', 100, NULL, '2022-12-06 04:14:46', '2022-12-06 04:15:15', NULL),
(333, 'EV-1670301116', '199506222020063101', 'Arya Wiratama', 'Direktorat Sistem Informasi', 'S1', 8, 'S1 SISTEM INFORMASI', 'UNIVERSITAS NAROTAMA', 1, '/uploads/evaluation/study_certificate/1670301116_ijazah arya w.pdf', 'EMAN SETIAWAN S.Kom., M.M', 'AWALLUDIYAH AMBARWATI S.Kom., M.M.', 'Aplikasi Perancangan Bimbingan dan Penjadwalan Ujian Skripisi Berbasis Website (Studi Kasus: Universitas Airlangga)', 100, 'berdoa dan berusaha untuk menyelesaikanya.', NULL, NULL, 1, '2022-07-22', '/uploads/evaluation/proposal_file/1670301116_Screen Shot 2022-12-06 at 11.31.24.png', 1, '2022-08-19', 11, '/uploads/evaluation/similarity_file/1670301116_Plagiasi_04219068_Arya Wiratama - arya wiratama.pdf', NULL, '2022-07-22', '/uploads/evaluation/end_test_file/1670301116_Screen Shot 2022-12-06 at 11.29.34.png', 100, NULL, '2022-12-06 04:31:56', '2022-12-06 04:31:56', NULL),
(334, 'EV-1670316031', '198609012018013101', 'Viki Budi Susetyo Parto', 'Sekretaris Universitas', 'S1', 3, 'Administrasi Negara', 'Bidang Hukum', 2, NULL, NULL, NULL, NULL, 0, 'memperbanyak literatur ilmiah pendukung penelitian', NULL, NULL, 2, '2025-06-02', NULL, 2, '2025-06-02', NULL, NULL, NULL, '2025-06-02', NULL, 100, NULL, '2022-12-06 08:40:31', '2022-12-06 08:40:31', NULL),
(335, 'EV-1672371199', '198204242005011001', 'PULUNG SISWANTARA', 'Fakultas Kesehatan Masyarakat', 'S3', 7, 'ilmu kesehatan masyarakat', 'Universitas Airlangga', 2, NULL, 'Dr. Mochammad Bagus Qomaruddin, drs, MSc', 'Dr. Dewi Retno Suminar, M.Si., Psikolog', 'adopsi sexual abstinence sexual remaja', 70, 'dalam semester depan saya akan memulai untuk menuliskan hasil dan lebih sering untuk bimbingan deng promotor dan ko promotor', NULL, NULL, 1, '2022-11-03', '/uploads/evaluation/proposal_file/1672371199_BUKTI TELAH MELAKUKAN PENULISAN DISERTASI (1).pdf', 2, '2022-01-02', NULL, NULL, NULL, '2022-01-05', NULL, 70, 'lambat dalam menulis hasil turun lapangan', '2022-12-30 03:33:19', '2022-12-30 03:33:19', NULL),
(336, 'EV-1672622610', '198101052005012003', 'DINI RIRIN ANDRIAS', 'Fakultas Kesehatan Masyarakat', 'S3', 11, 'Ilmu Gizi', 'Universitas Indonesia', 2, NULL, 'Prof. Dr. dr. Rini Sekartini SpA(K)', 'Dr. Ir. Umi Fahmida, MSc', 'Development of food based recommendation by inclusion of local or underutilized foods for children', 98, 'Mengintensifkan diskusi dengan para pembimbing dalam mempersiapkan ujian hasil, ujian tertutup dan promosi', NULL, NULL, 1, '2018-07-09', NULL, 2, '2023-01-09', NULL, NULL, NULL, '2023-02-24', NULL, 90, 'Kendala pertama dana riset. Setelah dana riset teratasi, muncul pandemi, sehingga harus dilakukan penyesuaian2 metode penelitian. Kendala berikutnya adanya pergantian promotor hingga 2x dikarenakan masalah kesehatan (hingga wafat). Ujian hasil penelitian rencananya akan dilaksanakan pada 9 Januari 2023, dilanjutkan dengan ujian tertutup pada akhir Januari 2023, dan promosi/ ujian terbuka pada pertengahan-akhir Februari 2023.', '2023-01-02 01:23:30', '2023-01-02 01:23:30', NULL),
(337, 'EV-1672971435', '197905152007012001', 'DYAH PUSPITASARI SRIRAHAYU', 'Fakultas Vokasi', 'S3', 7, 'Ilmu Manajemen', 'Universitas Airlangga', 2, NULL, 'Dr. Ahmad Rizki Sridadi', 'Dian Ekowati SE., M.Si., M.AppCom(OrgCh)., Ph.D', 'Perilaku Inovatif Pustakawan di Perpustakaan Umum Indonesia', 65, 'mengolah data dan menuliskannya dalam laporan hasil penelitian', '/uploads/evaluation/study_semester_result/1672971435_KHS-041917157324.pdf', NULL, 2, '2022-06-17', NULL, 1, '2022-05-12', NULL, NULL, NULL, '2023-02-03', NULL, 70, 'kendala dalam pengolahan data dan penulisan disertasi', '2023-01-06 02:17:15', '2023-01-06 02:17:15', NULL),
(338, 'EV-1673363584', '197709192008012013', 'DINA FITRISIA SEPTIARINI', 'Fakultas Ekonomi dan Bisnis', 'S1', 5, 'S3 ILMU EKONOMI ISLAM', 'UNIVERSITAS AIRLANGGA', 2, NULL, 'DR. IMRON MAWARDI', 'DR. NISFUL LAILA', 'ANALISIS PORTOFOLIO INVESTASI TERBAIK BERDASARKAN  RESIKO DAN NILAI MANFAAT PADA PENGELOLAAN DANA HAJI  PADA BADAN PENGELOLA KEUANGAN HAJI (BPKH)', 40, 'UJIAN PROPOSAL MARET 2022', NULL, NULL, 2, '2022-03-31', NULL, 2, '2022-07-31', NULL, NULL, NULL, '2022-12-31', NULL, 40, NULL, '2023-01-10 15:13:04', '2023-01-10 15:13:04', NULL),
(339, 'EV-1675063065', '197509252006042001', 'TITIEN DIAH SOELISTYARINI', 'Fakultas Ilmu Budaya', 'S3', 5, 'Ilmu Susastra', 'Universitas Indonesia', 2, NULL, 'Prof. Melani Budianta, Ph.D', 'Dr. Dhita Hapsarani, M.Hum', 'Impian Amerika dan Artikulasi Identitas Diaspora  di Amerika dalam Memoar Grafis', 40, 'Melakukan pembimbingan dengan tim promotor secara lebih intensif dan terjadwal, direncanakan tiap 2 minggu dan beberapa kali akan dilaksanakan secara luring, serta mengikuti kolokium pada bulan April 2023 untuk mendapat masukan dari calon penguji.', '/uploads/evaluation/study_semester_result/1675063065_KHS 2023.pdf', NULL, 1, '2021-11-11', NULL, 2, '2023-08-31', NULL, NULL, NULL, '2023-09-29', NULL, 50, 'Intensitas tatap muka bimbingan penulisan disertasi yang masih kurang karena kendala jarak sehingga belum maksimal untuk pembimbingan secara luring.', '2023-01-30 07:17:45', '2023-01-30 07:19:17', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `evaluation_publicities`
--

CREATE TABLE `evaluation_publicities` (
  `evaluation_publicity_id` int(11) NOT NULL,
  `evaluation_id` int(11) DEFAULT NULL,
  `publicity_plan` date DEFAULT NULL,
  `publicity_category` varchar(64) DEFAULT NULL,
  `journal_name` text,
  `publicity_progress` varchar(64) DEFAULT '',
  `publicity_date` date DEFAULT NULL,
  `publicity_file` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `evaluation_publicities`
--

INSERT INTO `evaluation_publicities` (`evaluation_publicity_id`, `evaluation_id`, `publicity_plan`, `publicity_category`, `journal_name`, `publicity_progress`, `publicity_date`, `publicity_file`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, NULL, NULL, NULL, '', NULL, NULL, '2022-05-20 00:00:00', '2022-05-20 00:00:00', NULL),
(2, 2, NULL, NULL, NULL, '', NULL, NULL, '2022-05-20 00:00:00', '2022-05-20 00:00:00', NULL),
(3, 3, NULL, NULL, NULL, '', NULL, NULL, '2022-05-20 00:00:00', '2022-05-20 00:00:00', NULL),
(4, 4, NULL, NULL, NULL, '', NULL, NULL, '2022-05-20 00:00:00', '2022-05-20 00:00:00', NULL),
(5, 5, NULL, NULL, NULL, '', NULL, NULL, '2022-05-20 00:00:00', '2022-05-20 00:00:00', NULL),
(6, 6, NULL, NULL, NULL, '', NULL, NULL, '2022-05-20 00:00:00', '2022-05-20 00:00:00', NULL),
(7, 7, '2022-06-09', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-05-23 02:02:04', '2022-05-23 02:02:04', NULL),
(8, 14, '2022-06-11', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-05-24 04:18:33', '2022-05-24 04:18:33', NULL),
(9, 15, '2023-01-24', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-05-24 04:25:00', '2022-05-24 04:25:00', NULL),
(10, 16, '2022-12-30', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-05-24 04:25:25', '2022-05-24 04:25:25', NULL),
(11, 17, '2023-10-10', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-05-24 04:28:48', '2022-05-24 04:28:48', NULL),
(12, 18, '2023-02-08', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-05-24 04:41:27', '2022-05-24 04:41:27', NULL),
(13, 34, '2023-01-24', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-05-24 07:42:43', '2022-05-24 07:42:43', NULL),
(14, 38, '2022-08-31', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-05-24 07:51:01', '2022-05-24 07:51:01', NULL),
(15, 44, NULL, 'Jurnal', 'Sexuality & DIsability', 'Publish', '2021-03-28', '/uploads/evaluation/publicity_file/1653379879_Hadisuyatmana_et_al-2021-Sexuality_and_Disability.pdf', '2022-05-24 08:11:19', '2022-05-24 08:11:19', NULL),
(16, 38, '2022-08-31', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-05-24 08:20:19', '2022-05-24 08:20:19', NULL),
(17, 45, NULL, 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-05-24 09:21:01', '2022-05-24 09:21:01', NULL),
(18, 46, '2022-10-20', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-05-24 13:39:06', '2022-05-24 13:39:06', NULL),
(19, 47, NULL, 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-05-25 01:37:47', '2022-05-25 01:37:47', NULL),
(20, 48, '2022-07-31', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-05-25 01:54:00', '2022-05-25 01:54:00', NULL),
(21, 48, '2022-07-31', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-05-25 01:54:32', '2022-05-25 01:54:32', NULL),
(22, 49, NULL, 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-05-25 02:32:48', '2022-05-25 02:32:48', NULL),
(23, 50, NULL, 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-05-25 03:28:29', '2022-05-25 03:28:29', NULL),
(24, 51, NULL, 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-05-25 03:31:11', '2022-05-25 03:31:11', NULL),
(25, 52, NULL, 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-05-25 03:42:11', '2022-05-25 03:42:11', NULL),
(26, 53, '2022-12-01', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-05-25 04:53:04', '2022-05-25 04:53:04', NULL),
(27, 53, '2022-12-01', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-05-25 04:53:52', '2022-05-25 04:53:52', NULL),
(28, 54, '2022-07-31', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-05-25 05:01:52', '2022-05-25 05:01:52', NULL),
(29, 57, NULL, 'Jurnal', 'Frontiers in Cell and Developmental Biology', 'Publish', '2022-04-04', '/uploads/evaluation/publicity_file/1653457899_Screen Shot 2022-05-25 at 14.50.49.png', '2022-05-25 05:51:39', '2022-05-25 05:51:39', NULL),
(30, 58, NULL, 'Jurnal', 'Problems and Perspectives in Management', 'Publish', '2018-06-01', '/uploads/evaluation/publicity_file/1653458195_PPM_2018_02_Auliandri.pdf', '2022-05-25 05:56:35', '2022-05-25 05:56:35', NULL),
(31, 59, '2023-12-24', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-05-25 06:13:18', '2022-05-25 06:13:18', NULL),
(32, 60, '2022-06-12', 'Jurnal', NULL, 'Pilih', NULL, NULL, '2022-05-25 06:21:29', '2022-05-25 06:21:29', NULL),
(33, 61, '2022-12-01', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-05-25 14:02:53', '2022-05-25 14:02:53', NULL),
(34, 62, NULL, 'Jurnal', 'IEEE Access', 'Publish', '2021-04-02', '/uploads/evaluation/publicity_file/1653622002_09393933.pdf', '2022-05-27 03:26:42', '2022-05-27 03:26:42', NULL),
(35, 63, '2022-06-15', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-05-27 04:22:51', '2022-05-27 04:22:51', NULL),
(36, 64, '2022-09-01', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-05-27 06:40:33', '2022-05-27 06:40:33', NULL),
(37, 65, NULL, 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-05-27 07:43:58', '2022-05-27 07:43:58', NULL),
(38, 66, '2022-06-27', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-05-27 07:58:41', '2022-05-27 07:58:41', NULL),
(39, 66, '2022-06-27', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-05-27 08:05:28', '2022-05-27 08:05:28', NULL),
(40, 67, NULL, 'Jurnal', 'Journal of International Women\'s Studies', 'Publish', '2019-10-27', '/uploads/evaluation/publicity_file/1653646402_Womens Reproductive Rights Under Marriage Contract.pdf', '2022-05-27 10:13:22', '2022-05-27 10:13:22', NULL),
(41, 68, NULL, 'Jurnal', 'Technological Forcasting and Social Change', 'Publish', '2021-06-01', '/uploads/evaluation/publicity_file/1653657434_1-s2.0-S0040162521003693-main.pdf', '2022-05-27 13:17:14', '2022-05-27 13:17:14', NULL),
(42, 68, NULL, 'Jurnal', NULL, 'Publish', '2021-06-01', NULL, '2022-05-27 13:17:55', '2022-05-27 13:17:55', NULL),
(43, 68, NULL, 'Jurnal', NULL, 'Publish', '2021-06-01', NULL, '2022-05-27 13:18:25', '2022-05-27 13:18:25', NULL),
(44, 68, NULL, 'Jurnal', NULL, 'Publish', '2021-06-01', NULL, '2022-05-27 13:18:50', '2022-05-27 13:18:50', NULL),
(45, 68, NULL, 'Jurnal', NULL, 'Publish', '2021-06-01', NULL, '2022-05-27 13:19:25', '2022-05-27 13:19:25', NULL),
(46, 69, '2021-12-30', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-05-28 01:14:47', '2022-05-28 01:14:47', NULL),
(47, 70, '2022-12-31', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-05-28 04:45:39', '2022-05-28 04:45:39', NULL),
(48, 71, '2024-11-21', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-05-29 03:21:03', '2022-05-29 03:21:03', NULL),
(49, 71, '2024-11-21', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-05-29 03:24:36', '2022-05-29 03:24:36', NULL),
(50, 50, NULL, 'Jurnal', 'Journal of International Oral Health', 'Publish', '2021-04-17', '/uploads/evaluation/publicity_file/1666829309_41. Verifikasi Jurnal - Aulia Ramadhani.pdf', '2022-05-29 11:13:33', '2022-10-27 00:08:29', NULL),
(51, 72, NULL, 'Jurnal', NULL, 'Accepted', '2021-02-19', NULL, '2022-05-29 11:27:22', '2022-05-29 11:27:22', NULL),
(52, 73, '2022-06-22', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-05-29 23:03:35', '2022-05-29 23:03:35', NULL),
(53, 73, '2022-06-22', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-05-29 23:04:43', '2022-05-29 23:04:43', NULL),
(54, 73, '2022-06-22', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-05-29 23:08:56', '2022-05-29 23:08:56', NULL),
(55, 73, '2022-06-22', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-05-30 00:31:11', '2022-05-30 00:31:11', NULL),
(56, 74, NULL, 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-05-30 01:06:24', '2022-05-30 01:06:24', NULL),
(57, 74, NULL, 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-05-30 02:13:35', '2022-05-30 02:13:35', NULL),
(58, 74, NULL, 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-05-30 02:25:46', '2022-05-30 02:25:46', NULL),
(59, 75, NULL, 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-05-30 02:29:13', '2022-05-30 02:29:13', NULL),
(60, 74, '0001-01-01', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-05-30 02:29:21', '2022-05-30 02:29:21', NULL),
(61, 76, '2023-06-30', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-05-30 03:01:01', '2022-05-30 03:01:01', NULL),
(62, 77, NULL, 'Jurnal', 'Veterinary World', 'Publish', '2019-07-30', '/uploads/evaluation/publicity_file/1653880718_0. Eliana_article.pdf', '2022-05-30 03:18:38', '2022-05-30 03:18:38', NULL),
(63, 78, '2022-08-31', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-05-30 03:33:02', '2022-05-30 03:33:02', NULL),
(64, 79, NULL, 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-05-30 04:15:28', '2022-05-30 04:15:28', NULL),
(65, 79, NULL, 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-05-30 04:18:52', '2022-05-30 04:18:52', NULL),
(66, 80, '2022-07-30', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-05-30 04:32:15', '2022-05-30 04:32:15', NULL),
(67, 81, NULL, 'Jurnal', 'Journal of International Dental and Medical Research (Q3)', 'Publish', '2021-08-06', '/uploads/evaluation/publicity_file/1653885469_59-M-16.-2436-Erna-Dwi-Wahyuni-Jurnal Scopus Q3.pdf', '2022-05-30 04:37:49', '2022-05-30 04:37:49', NULL),
(68, 82, NULL, 'Jurnal', 'JPUA', 'Publish', '2021-04-01', '/uploads/evaluation/publicity_file/1653889410_document.pdf', '2022-05-30 05:43:30', '2022-05-30 05:43:30', NULL),
(69, 69, '2021-12-30', 'Pilih', NULL, 'Pilih', NULL, '/uploads/evaluation/publicity_file/1653889952_Publikasi Balimed.pdf', '2022-05-30 05:52:32', '2022-10-26 01:38:13', NULL),
(70, 84, '2022-10-30', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-05-30 06:16:19', '2022-05-30 06:16:19', NULL),
(71, 84, '2022-10-30', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-05-30 06:17:33', '2022-05-30 06:17:33', NULL),
(72, 85, NULL, 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-05-30 06:41:07', '2022-05-30 06:41:07', NULL),
(73, 73, '2022-06-22', 'Pilih', NULL, 'Pilih', NULL, '/uploads/evaluation/publicity_file/1653896259_Certificate of presentation_IPS-8144_Nikita Athari Lanes (1).pdf', '2022-05-30 07:37:39', '2022-05-31 03:30:18', NULL),
(74, 87, NULL, 'Jurnal', 'Jurnal Hukum Dan Pembangunan Fakultas Hukum Universitas Indonesia', 'Publish', '2020-05-13', '/uploads/evaluation/publicity_file/1653897121_publikasi fh UI 2021.pdf', '2022-05-30 07:52:01', '2022-05-30 07:52:01', NULL),
(75, 88, '2023-04-30', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-05-30 08:26:17', '2022-05-30 08:26:17', NULL),
(76, 89, NULL, 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-05-30 09:17:31', '2022-05-30 09:17:31', NULL),
(77, 90, NULL, 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-05-30 09:27:06', '2022-05-30 09:27:06', NULL),
(78, 91, '2023-01-01', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-05-30 11:13:06', '2022-05-30 11:13:06', NULL),
(79, 91, '2023-01-01', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-05-30 11:16:52', '2022-05-30 11:16:52', NULL),
(80, 92, '2022-07-01', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-05-30 12:38:48', '2022-05-30 12:38:48', NULL),
(81, 81, NULL, 'Jurnal', NULL, 'Publish', '2021-08-06', NULL, '2022-05-30 12:40:15', '2022-10-28 15:19:26', NULL),
(82, 93, NULL, 'Prosedings', 'ITAP: 7th International Conference on Human Aspects of IT for the Aged Population (Part of the 23rd HCI International Conference, HCII 2021)', 'Publish', '2021-07-03', '/uploads/evaluation/publicity_file/1653918506_HCII2021_Participation_Certificate_4198.pdf', '2022-05-30 13:48:26', '2022-05-30 13:48:26', NULL),
(83, 94, '2022-10-01', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-05-30 13:57:56', '2022-05-30 13:57:56', NULL),
(84, 95, '2022-10-15', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-05-30 14:04:15', '2022-05-30 14:04:15', NULL),
(85, 96, NULL, 'Jurnal', 'Karya Ilmiah UT', 'Accepted', '2021-06-25', NULL, '2022-05-31 01:00:12', '2022-05-31 01:00:12', NULL),
(86, 97, NULL, 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-05-31 01:03:09', '2022-05-31 01:03:09', NULL),
(87, 98, '2022-08-21', 'Jurnal', NULL, 'Pilih', NULL, NULL, '2022-05-31 02:01:28', '2022-05-31 02:01:28', NULL),
(88, 99, NULL, 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-05-31 02:19:00', '2022-05-31 02:19:00', NULL),
(89, 99, NULL, 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-05-31 02:19:26', '2022-05-31 02:19:26', NULL),
(90, 99, NULL, 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-05-31 02:19:48', '2022-05-31 02:19:48', NULL),
(91, 99, NULL, 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-05-31 02:20:23', '2022-05-31 02:20:23', NULL),
(92, 92, '2022-07-01', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-05-31 03:59:18', '2022-10-31 08:17:52', NULL),
(93, 101, NULL, 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-05-31 04:00:31', '2022-05-31 04:00:31', NULL),
(94, 102, '2022-09-30', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-05-31 04:13:25', '2022-05-31 04:13:25', NULL),
(95, 103, NULL, 'Jurnal', 'Sri Lanka Journal of Child Health', 'Publish', '2020-12-05', '/uploads/evaluation/publicity_file/1653976758_Artikel publish.pdf', '2022-05-31 05:59:18', '2022-05-31 05:59:18', NULL),
(96, 96, NULL, 'Jurnal', NULL, 'Accepted', '2021-06-25', NULL, '2022-05-31 06:02:32', '2022-10-25 00:44:58', NULL),
(97, 97, NULL, 'Pilih', NULL, 'Pilih', NULL, '/uploads/evaluation/publicity_file/1653977271_Artikel publish.pdf', '2022-05-31 06:07:51', '2022-10-27 07:51:45', NULL),
(98, 103, NULL, 'Jurnal', NULL, 'Publish', '2020-12-05', NULL, '2022-05-31 06:28:40', '2022-05-31 06:28:40', NULL),
(99, 105, NULL, 'Jurnal', 'Human Resource Development International', 'Publish', '2020-08-11', '/uploads/evaluation/publicity_file/1653982136_Why employees endorse abusive leaders the role of trust.pdf', '2022-05-31 07:28:56', '2022-05-31 07:28:56', NULL),
(100, 106, NULL, 'Prosedings', 'International Conference on Educational Assessment and Policy', 'Publish', '2021-04-26', '/uploads/evaluation/publicity_file/1653983400_Sertifikat Presenter.pdf', '2022-05-31 07:50:00', '2022-05-31 07:50:00', NULL),
(101, 107, '2022-07-23', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-05-31 08:03:16', '2022-05-31 08:03:16', NULL),
(102, 102, '2022-09-30', 'Jurnal', 'F1000Research', 'Publish', '2022-05-09', '/uploads/evaluation/publicity_file/1668432838_f363006f-9da1-47b5-bce6-bb1ac16a03e2_121502_-_tri_pudy_asmarawati(1).pdf', '2022-05-31 08:05:09', '2022-11-14 13:33:58', NULL),
(103, 109, '2022-10-01', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-05-31 08:09:19', '2022-05-31 08:09:19', NULL),
(104, 110, NULL, 'Prosedings', 'The 8th International Conference and Workshop on Basic and Applied Sciences (ICOWOBAS) 2021', 'Accepted', '2021-07-27', '/uploads/evaluation/publicity_file/1653985867_NOTIFICATION OF ACCEPTANCE FOR PUBLICATION ICOWOBAS.pdf', '2022-05-31 08:31:07', '2022-05-31 08:31:07', NULL),
(105, 110, NULL, 'Prosedings', 'The 8th International Conference and Workshop on Basic and Applied Sciences (ICOWOBAS) 2021', 'Accepted', '2021-07-27', NULL, '2022-05-31 08:36:57', '2022-05-31 08:36:57', NULL),
(106, 110, NULL, 'Prosedings', 'The 8th International Conference and Workshop on Basic and Applied Sciences (ICOWOBAS) 2021', 'Accepted', '2021-07-27', NULL, '2022-05-31 08:38:17', '2022-05-31 08:38:17', NULL),
(107, 111, '2022-10-01', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-05-31 08:43:33', '2022-05-31 08:43:33', NULL),
(108, 111, '2022-10-01', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-05-31 08:44:24', '2022-05-31 08:44:24', NULL),
(109, 110, NULL, 'Prosedings', 'The 8th International Conference and Workshop on Basic and Applied Sciences (ICOWOBAS) 2021', 'Accepted', '2021-07-27', NULL, '2022-05-31 08:47:20', '2022-05-31 08:47:20', NULL),
(110, 112, '2022-06-10', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-05-31 09:10:10', '2022-05-31 09:10:10', NULL),
(111, 113, '2022-08-08', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-05-31 09:22:10', '2022-05-31 09:22:10', NULL),
(112, 114, '2022-07-01', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-05-31 09:33:25', '2022-05-31 09:33:25', NULL),
(113, 115, NULL, 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-05-31 09:45:24', '2022-05-31 09:45:24', NULL),
(114, 116, '2022-06-30', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-05-31 09:55:47', '2022-05-31 09:55:47', NULL),
(115, 117, '2023-02-01', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-05-31 10:13:24', '2022-05-31 10:13:24', NULL),
(116, 118, '2022-12-20', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-05-31 11:26:23', '2022-05-31 11:26:23', NULL),
(117, 119, '2022-07-29', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-05-31 13:05:34', '2022-05-31 13:05:34', NULL),
(118, 120, NULL, 'Jurnal', 'International Journal of Scientific Advances (IJSCIA)', 'Publish', '2022-05-08', '/uploads/evaluation/publicity_file/1654078791_Letter-of-Acceptance-IJSCIA0320.pdf', '2022-06-01 10:19:51', '2022-06-01 10:19:51', NULL),
(119, 121, NULL, 'Jurnal', 'STRADA Jurnal Ilmiah Kesehatan', 'Publish', '2021-05-01', '/uploads/evaluation/publicity_file/1654142516_4. Publish SR Sinta 3.pdf', '2022-06-02 04:01:56', '2022-06-02 04:01:56', NULL),
(120, 120, NULL, 'Jurnal', NULL, 'Publish', '2022-05-08', '/uploads/evaluation/publicity_file/1654153801_Jurnal Cakrawala Nuri Hermawan.pdf', '2022-06-02 07:10:01', '2022-10-28 12:56:37', NULL),
(121, 123, '2022-06-30', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-06-02 09:15:40', '2022-06-02 09:15:40', NULL),
(122, 124, '2022-08-08', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-06-02 09:17:48', '2022-06-02 09:17:48', NULL),
(123, 125, '2022-08-16', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-06-02 09:35:49', '2022-06-02 09:35:49', NULL),
(124, 126, NULL, 'Jurnal', '4th International Seminar on Psychology UMP 2021', 'Publish', '2021-08-18', '/uploads/evaluation/publicity_file/1654221325_BASIC SYMPTOM AND THE PREDICTION OF CLINICAL HIGH RISK ON PSYCHOSIS.pdf', '2022-06-03 01:55:25', '2022-06-03 01:55:25', NULL),
(125, 127, '2022-06-07', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-06-03 05:54:28', '2022-06-03 05:54:28', NULL),
(126, 126, NULL, 'Jurnal', 'the 4th Internasional Seminar on Psychology Faculty of Psychology, Universitas Muhammadiyah Purwokerto', 'Publish', '2021-08-18', '/uploads/evaluation/publicity_file/1659432642_30. Tri Kurniati Ambarini, M.Psi., Psikolog_sertifikat conf internasional..pdf', '2022-06-03 06:31:16', '2022-08-02 09:30:42', NULL),
(127, 129, NULL, 'Jurnal', 'Plos Naglected Tropical Diseases', 'Publish', '2022-02-17', '/uploads/evaluation/publicity_file/1654378636_journal.pntd.0010264.pdf', '2022-06-04 21:37:16', '2022-06-04 21:37:16', NULL),
(128, 130, '2025-01-01', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-06-06 01:49:43', '2022-06-06 01:49:43', NULL),
(129, 131, NULL, 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-06-06 03:48:04', '2022-06-06 03:48:04', NULL),
(130, 132, '2022-10-30', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-06-06 07:49:22', '2022-06-06 07:49:22', NULL),
(131, 132, '2022-10-30', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-06-06 07:50:07', '2022-06-06 07:50:07', NULL),
(132, 133, '2023-06-30', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-06-07 07:07:56', '2022-06-07 07:07:56', NULL),
(133, 134, NULL, 'Jurnal', 'International Journal of Control, Automation, and Systems', 'Accepted', '2021-12-20', NULL, '2022-06-09 03:28:26', '2022-06-09 03:28:26', NULL),
(134, 135, '2022-07-01', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-06-13 05:09:11', '2022-06-13 05:09:11', NULL),
(135, 136, '2022-08-17', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-06-13 05:43:58', '2022-06-13 05:43:58', NULL),
(136, 137, NULL, 'Jurnal', 'SJIK', 'Publish', '2021-05-08', '/uploads/evaluation/publicity_file/1655181724_Sofiatun_ A Systematic Review_SJIK.pdf', '2022-06-14 04:42:04', '2022-06-14 04:42:04', NULL),
(137, 138, '2022-06-14', 'Jurnal', 'Hindawi', 'Submit', '2022-03-01', NULL, '2022-06-14 06:11:31', '2022-06-14 06:11:31', NULL),
(138, 139, NULL, 'Jurnal', 'Indian Journal of Forensic Medicine & Toxicology', 'Publish', '2020-10-01', '/uploads/evaluation/publicity_file/1655201395_2020_IJMFT_Skin Penetration of EGCG as an Alternative Agent for Photoaging Prevention.pdf', '2022-06-14 10:09:55', '2022-06-14 10:09:55', NULL),
(139, 140, '2023-02-15', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-06-15 01:06:14', '2022-06-15 01:06:14', NULL),
(140, 141, NULL, 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-06-17 03:26:31', '2022-06-17 03:26:31', NULL),
(141, 141, '2022-08-23', 'Pilih', NULL, 'Pilih', NULL, '/uploads/evaluation/publicity_file/1655548967_biomolecules-11-00905-v3 (12).pdf', '2022-06-18 10:42:47', '2022-06-20 02:51:22', NULL),
(142, 142, NULL, 'Jurnal', NULL, 'Accepted', '2021-06-13', NULL, '2022-06-18 15:31:04', '2022-06-18 15:31:04', NULL),
(143, 143, NULL, 'Jurnal', 'Sustaining Seas: Oceanic Space and the Politics of Care', 'Publish', '2020-04-12', '/uploads/evaluation/publicity_file/1655780629_Arum Book Chapter 2020 (1).pdf', '2022-06-21 03:03:49', '2022-06-21 03:03:49', NULL),
(144, 144, '2024-03-22', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-06-22 03:06:38', '2022-06-22 03:06:38', NULL),
(145, 145, NULL, 'Jurnal', 'Indian Journal of Forensic Medicine & Toxicology, January-March 2021, Vol. 15, No. 1', 'Publish', '2020-10-21', '/uploads/evaluation/publicity_file/1655970857_13543-ArticleText-25989-1-10-20210104.pdf', '2022-06-23 07:54:18', '2022-06-23 07:54:18', NULL),
(146, 146, NULL, 'Jurnal', 'Behavioral Sciences', 'Publish', '2022-01-22', '/uploads/evaluation/publicity_file/1656410396_J.-Sulistiawan-et-al.-2022-Why-and-When-Do-Employees-Hide-Their-Knowledge- (1).pdf', '2022-06-28 09:59:56', '2022-06-28 09:59:56', NULL),
(147, 147, NULL, 'Prosedings', '18th EurOMA Annual Meeting', 'Publish', '2019-06-15', '/uploads/evaluation/publicity_file/1656471766_EurOMA 2019 Helsinki.pdf', '2022-06-29 03:02:46', '2022-06-29 03:02:46', NULL),
(148, 148, '2022-09-30', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-07-02 02:34:02', '2022-07-02 02:34:02', NULL),
(149, 149, NULL, 'Jurnal', 'Journal of Nutritional Science', 'Publish', '2022-02-19', '/uploads/evaluation/publicity_file/1658189204_potassium_intake_is_associated_with_nutritional_quality_and_actual_diet_cost_a_study_at_formulating_a_low_sodium_high_potassium_lshp_healthy_diet.pdf', '2022-07-19 00:06:44', '2022-07-19 00:06:44', NULL),
(150, 150, NULL, 'Jurnal', 'Eco. Env. & Cons., 26(4): pp. 1842-1846', 'Publish', '2020-12-20', '/uploads/evaluation/publicity_file/1658291047_Sugiharto_EEC-64_29Des20_Ok.pdf', '2022-07-20 04:24:07', '2022-07-20 04:24:07', NULL),
(151, 151, '2022-11-25', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-07-25 08:32:46', '2022-07-25 08:32:46', NULL),
(152, 152, '2023-03-27', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-07-26 17:44:18', '2022-07-26 17:44:18', NULL),
(153, 153, '2023-05-15', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-07-27 03:29:47', '2022-07-27 03:29:47', NULL),
(154, 154, '2023-05-01', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-07-29 00:16:25', '2022-10-25 15:29:21', NULL),
(155, 155, '2022-11-29', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-07-29 02:02:02', '2022-07-29 02:02:02', NULL),
(156, 156, '2022-12-12', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-07-29 02:27:22', '2022-07-29 02:27:22', NULL),
(157, 157, '2022-02-10', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-07-29 07:47:07', '2022-07-29 07:47:07', NULL),
(158, 160, '2023-06-01', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-07-29 12:54:10', '2022-07-29 12:54:10', NULL),
(159, 161, '2023-11-14', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-08-01 12:10:47', '2022-08-01 12:10:47', NULL),
(160, 162, '2022-12-30', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-08-02 02:53:19', '2022-08-02 02:53:19', NULL),
(161, 161, '2023-11-14', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-08-02 02:56:58', '2022-08-04 11:02:05', NULL),
(162, 163, '2023-02-02', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-08-02 03:47:04', '2022-08-02 03:47:04', NULL),
(163, 164, NULL, 'Jurnal', 'Al Iqtishad', 'Publish', '2021-08-19', '/uploads/evaluation/publicity_file/1659419605_4109-2021-sk.pdf', '2022-08-02 05:53:25', '2022-08-02 05:53:25', NULL),
(164, 165, NULL, 'Jurnal', 'The New Armenian Medical Journal', 'Publish', '2020-12-15', '/uploads/evaluation/publicity_file/1659498730_SARS Cov-2 antibody test for the  hospitalised emergency obstetric cases NAMJ fin.pdf', '2022-08-03 03:52:10', '2022-08-03 03:52:10', NULL),
(165, 166, NULL, 'Jurnal', 'IFLA Journal', 'Publish', '2022-01-17', '/uploads/evaluation/publicity_file/1659503760_03400352211066939(1).pdf', '2022-08-03 05:16:00', '2022-08-03 05:16:00', NULL),
(166, 166, NULL, 'Jurnal', NULL, 'Publish', '2022-01-17', '/uploads/evaluation/publicity_file/1659511727_03400352211066939(1).pdf', '2022-08-03 05:18:02', '2022-08-03 07:28:47', NULL),
(167, 168, '2021-08-20', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-08-03 06:51:36', '2022-08-03 06:51:36', NULL),
(168, 169, '2023-01-08', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-08-03 06:55:13', '2022-08-03 06:55:13', NULL),
(169, 170, '2020-08-03', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-08-03 07:07:54', '2022-08-03 07:07:54', NULL),
(170, 171, NULL, 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-08-03 07:10:39', '2022-08-03 07:10:39', NULL),
(171, 172, NULL, 'Jurnal', 'Library and Philosophy Journal', 'Accepted', '2020-10-12', '/uploads/evaluation/publicity_file/1659510870_fulltext(1)(1).pdf', '2022-08-03 07:14:30', '2022-08-03 07:14:30', NULL),
(172, 173, NULL, 'Jurnal', 'Systematic Reviews in Pharmacy', 'Accepted', '2020-12-13', '/uploads/evaluation/publicity_file/1659511080_196-1600062122.pdf', '2022-08-03 07:18:00', '2022-08-03 07:18:00', NULL),
(173, 173, NULL, 'Jurnal', NULL, 'Accepted', '2020-12-13', NULL, '2022-08-03 07:18:37', '2022-08-03 07:18:37', NULL),
(174, 174, NULL, 'Jurnal', 'Digital Library Perspectives', 'Accepted', '2021-04-06', '/uploads/evaluation/publicity_file/1659511548_10-1108_DLP-12-2020-0129.pdf', '2022-08-03 07:25:48', '2022-08-03 07:25:48', NULL),
(175, 175, '2023-01-22', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-08-04 04:53:07', '2022-08-04 04:53:07', NULL),
(176, 176, '2022-11-05', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-08-05 06:11:03', '2022-08-05 06:11:03', NULL),
(177, 177, NULL, 'Jurnal', 'International Journal of General Medicine', 'Publish', '2022-06-09', '/uploads/evaluation/publicity_file/1659697694_20. Prognosticating 2 Year Survival Rate of Breast Cancer Patien.pdf', '2022-08-05 11:08:14', '2022-08-05 11:08:14', NULL),
(178, 178, NULL, 'Jurnal', 'international journal of surgery case report', 'Accepted', '2020-12-20', '/uploads/evaluation/publicity_file/1659924442_9. penelitian kematian kanker ovarium.pdf', '2022-08-08 02:07:22', '2022-08-08 02:07:22', NULL),
(179, 179, '2022-10-15', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-08-08 03:20:09', '2022-08-08 03:20:09', NULL),
(180, 180, '2022-11-22', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-08-08 03:23:01', '2022-08-08 03:23:01', NULL),
(181, 181, NULL, 'Jurnal', 'Malaysian Journal of Medicine and Health Sciences', 'Publish', '2021-12-20', '/uploads/evaluation/publicity_file/1659929007_2021122908095005_MJMHS_0771.pdf', '2022-08-08 03:23:27', '2022-08-08 03:23:27', NULL),
(182, 182, '2024-08-08', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-08-08 03:23:43', '2022-08-08 03:23:43', NULL),
(183, 183, '2023-02-05', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-08-08 06:30:38', '2022-08-08 06:30:38', NULL),
(184, 184, '2022-12-08', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-08-08 12:52:29', '2022-08-08 12:52:29', NULL),
(185, 185, NULL, 'Prosedings', 'ICONESIA 2021: The 2nd International Conference on English Studies in Indonesia', 'Publish', '2021-12-01', '/uploads/evaluation/publicity_file/1660019057_Titien Diah Soelistyarini, M.Si.pdf', '2022-08-09 04:24:17', '2022-08-09 04:24:17', NULL),
(186, 186, NULL, 'Jurnal', 'Factors of Mother’s Success in Exclusive Breastfeeding', 'Publish', '2022-01-01', '/uploads/evaluation/publicity_file/1660031914_1. Factors of Mother’s Success in Exclusive Breastfeeding.pdf', '2022-08-09 07:58:34', '2022-08-09 07:58:34', NULL),
(187, 187, NULL, 'Jurnal', 'Journal of International Dental and Medical Research', 'Publish', '2021-03-01', '/uploads/evaluation/publicity_file/1660033749_Caregiver Burden.pdf', '2022-08-09 08:29:09', '2022-08-09 08:29:09', NULL),
(188, 188, NULL, 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-08-12 07:19:51', '2022-08-12 07:19:51', NULL),
(189, 189, '2023-01-25', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-08-14 06:15:48', '2022-08-14 06:15:48', NULL),
(190, 190, NULL, 'Jurnal', 'Opción, Vol. 35. No. 23, 2019, h. 1558 - 1573, ISSN = 1012-1587 / ISSNe: 2477-9385', 'Publish', '2019-06-22', '/uploads/evaluation/publicity_file/1660624324_Nilam Blanko Validasi Jurnal Nilam .pdf', '2022-08-16 04:32:04', '2022-08-16 04:32:04', NULL),
(191, 191, '2023-12-31', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-08-16 06:14:24', '2022-08-16 06:14:24', NULL),
(192, 192, NULL, 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-08-22 02:36:36', '2022-08-22 02:36:36', NULL),
(193, 193, '2022-09-10', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-08-22 08:58:12', '2022-08-22 08:58:12', NULL),
(194, 194, '2024-01-04', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-08-25 02:32:25', '2022-08-25 02:32:25', NULL),
(195, 195, '2022-12-26', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-08-26 03:46:20', '2022-08-26 03:46:20', NULL),
(196, 196, NULL, 'Jurnal', 'Drugs', 'Publish', '2021-11-01', '/uploads/evaluation/publicity_file/1661944328_Zijp et al 2021 Scoping review in Drugs.pdf', '2022-08-31 11:12:08', '2022-08-31 11:12:08', NULL),
(197, 197, NULL, 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-09-01 08:34:34', '2022-09-01 08:34:34', NULL),
(198, 198, '2022-07-28', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-09-08 02:54:11', '2022-09-08 02:54:11', NULL),
(199, 199, NULL, 'Jurnal', 'Tropical Journal of Pharmaceutical Research', 'Publish', '2019-11-18', '/uploads/evaluation/publicity_file/1663031464_ERW OPG RANKL Osteoklas.pdf', '2022-09-13 01:09:32', '2022-09-13 01:11:04', NULL),
(200, 200, '2022-10-21', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-09-22 01:03:43', '2022-09-22 01:03:43', NULL),
(201, 201, NULL, 'Jurnal', 'Hayati', 'Publish', '2022-05-22', '/uploads/evaluation/publicity_file/1665822167_Sug_Hayati 29(4)_Mei22.pdf', '2022-10-15 08:22:47', '2022-10-15 08:22:47', NULL),
(202, 202, '0001-01-01', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-10-19 08:02:48', '2022-10-19 08:02:48', NULL),
(203, 203, NULL, 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-10-20 02:58:58', '2022-10-20 02:58:58', NULL),
(204, 204, NULL, 'Jurnal', 'Jurnal Cakrawala', 'Publish', '2022-05-20', '/uploads/evaluation/publicity_file/1666235706_JURNAL NURI HERMAWAN.pdf', '2022-10-20 03:15:06', '2022-10-20 03:15:06', NULL),
(205, 205, '2022-12-08', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-10-20 03:29:54', '2022-10-20 03:29:54', NULL),
(206, 206, NULL, 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-10-20 03:46:14', '2022-10-20 03:46:14', NULL),
(207, 207, NULL, 'Jurnal', 'J Basic Clin Physiol Pharmacol 2021;32(4):853-858/Seminar ICPHS 2020', 'Publish', '2021-06-25', '/uploads/evaluation/publicity_file/1666239064_E-Certificate of ICPHS 2020 (1).pdf', '2022-10-20 04:11:04', '2022-10-20 04:11:04', NULL),
(208, 208, '2022-12-01', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-10-20 04:40:25', '2022-10-20 04:40:25', NULL),
(209, 209, NULL, 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-10-20 05:09:20', '2022-10-20 05:09:20', NULL),
(210, 210, '2022-03-11', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-10-20 05:52:56', '2022-10-20 05:52:56', NULL),
(211, 211, '2023-06-06', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-10-20 06:20:33', '2022-10-20 06:20:33', NULL),
(212, 212, '2022-12-29', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-10-20 06:45:31', '2022-10-20 06:45:31', NULL),
(213, 213, '2022-12-02', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-10-20 07:00:36', '2022-10-20 07:00:36', NULL),
(214, 214, '2022-11-01', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-10-20 07:54:32', '2022-10-20 07:54:32', NULL),
(215, 215, NULL, 'Jurnal', NULL, 'Publish', '2021-06-02', '/uploads/evaluation/publicity_file/1666279342_publikasi fh UI 2021.pdf', '2022-10-20 15:22:22', '2022-10-20 15:23:14', NULL),
(216, 216, NULL, 'Jurnal', 'Sexuality & DIsability', 'Publish', '2021-04-13', '/uploads/evaluation/publicity_file/1666308662_Hadisuyatmana_et_al-2021-Sexuality_and_Disability.pdf', '2022-10-20 23:31:02', '2022-10-20 23:31:02', NULL),
(217, 217, NULL, 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-10-21 05:53:03', '2022-10-21 05:53:03', NULL),
(218, 218, '2023-09-30', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-10-21 13:15:10', '2022-10-21 13:15:10', NULL),
(219, 219, '2023-12-17', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-10-22 11:43:48', '2022-10-22 11:43:48', NULL),
(220, 220, '2022-12-23', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-10-22 18:49:44', '2022-10-22 18:49:44', NULL),
(221, 221, '2024-11-11', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-10-23 19:18:05', '2022-10-23 19:18:05', NULL),
(222, 222, '2024-11-11', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-10-23 19:30:05', '2022-10-23 19:30:05', NULL),
(223, 223, NULL, 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-10-24 00:47:02', '2022-10-24 00:47:02', NULL),
(224, 224, '2022-11-07', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-10-24 01:10:41', '2022-10-24 01:10:41', NULL),
(225, 225, '2023-03-30', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-10-24 03:09:09', '2022-10-24 03:09:09', NULL),
(226, 226, '2023-03-30', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-10-24 03:13:11', '2022-10-24 03:13:11', NULL),
(227, 227, '2022-11-24', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-10-24 03:40:13', '2022-10-24 03:40:13', NULL),
(228, 228, '2023-06-01', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-10-24 04:10:36', '2022-10-24 04:10:36', NULL),
(229, 229, '2023-06-15', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-10-24 04:17:38', '2022-10-24 04:17:38', NULL),
(230, 230, '2023-01-24', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-10-24 09:11:03', '2022-10-24 09:11:03', NULL),
(231, 231, NULL, 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-10-25 01:25:29', '2022-10-25 01:25:29', NULL),
(232, 232, '2023-01-01', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-10-25 01:58:59', '2022-10-25 01:58:59', NULL),
(233, 233, NULL, 'Jurnal', 'Cogent Business and Management', 'Publish', '2022-08-21', '/uploads/evaluation/publicity_file/1666673351_Exploration of themes based twitter data in fraud forensic accounting studies.pdf', '2022-10-25 04:49:11', '2022-10-25 04:49:11', NULL),
(234, 234, NULL, 'Jurnal', 'International Journal Biological Macromolecule', 'Publish', '2022-05-09', '/uploads/evaluation/publicity_file/1666675126_Abdillah, Lin, Charles - 2022 - International Journal of Biological Macromolecules Development of halochromic indicator film based on ar.pdf', '2022-10-25 05:18:46', '2022-10-25 05:18:46', NULL),
(235, 235, NULL, 'Jurnal', 'Option', 'Publish', '2019-12-30', NULL, '2022-10-25 07:26:50', '2022-10-25 07:26:50', NULL),
(236, 236, '2023-01-11', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-10-25 07:32:59', '2022-10-25 07:32:59', NULL),
(237, 237, NULL, 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-10-25 09:06:29', '2022-10-25 09:06:29', NULL),
(238, 238, NULL, 'Pilih', 'Iranian Journal of Pathology', 'Publish', '2020-07-16', '/uploads/evaluation/publicity_file/1666697357_IJP436031594841400.pdf', '2022-10-25 11:29:17', '2022-10-25 11:29:17', NULL),
(239, 239, '2023-08-01', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-10-25 15:28:41', '2022-10-25 15:28:41', NULL),
(240, 240, '2023-04-25', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-10-25 23:21:10', '2022-10-25 23:21:10', NULL),
(241, 241, '2023-06-01', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-10-25 23:53:23', '2022-10-25 23:53:23', NULL),
(242, 242, '2023-08-31', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-10-26 02:56:10', '2022-10-26 02:56:10', NULL),
(243, 243, NULL, 'Jurnal', 'The Indonesian Journal of Public Health', 'Publish', '2022-04-01', '/uploads/evaluation/publicity_file/1666756951_3 -- Publikasi Jurnal Sinta 2.pdf', '2022-10-26 04:02:31', '2022-10-26 04:02:31', NULL),
(244, 244, '2021-10-27', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-10-26 04:22:28', '2022-10-26 04:22:28', NULL),
(245, 245, '2023-07-01', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-10-26 04:46:39', '2022-10-26 04:46:39', NULL),
(246, 246, '2022-11-30', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-10-26 05:28:49', '2022-10-26 05:28:49', NULL),
(247, 247, NULL, 'Jurnal', 'Bioengineering', 'Publish', '2022-10-07', '/uploads/evaluation/publicity_file/1666763845_bioengineering-09-00531.pdf', '2022-10-26 05:57:25', '2022-10-26 05:57:25', NULL),
(248, 248, '2023-07-20', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-10-26 06:43:44', '2022-10-26 06:43:44', NULL),
(249, 249, NULL, 'Jurnal', 'WJEMSD', 'Accepted', '2022-04-20', '/uploads/evaluation/publicity_file/1666769358_Letter of Acceptance for Publication ICLGG 2021 Wilda.pdf', '2022-10-26 07:29:18', '2022-10-26 07:29:18', NULL),
(250, 250, '2024-11-23', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-10-26 08:40:13', '2022-10-26 08:40:13', NULL),
(251, 251, '2023-06-06', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-10-26 08:48:50', '2022-10-26 08:48:50', NULL),
(252, 252, '2024-12-19', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-10-26 09:08:57', '2022-10-26 09:08:57', NULL),
(253, 253, NULL, 'Jurnal', 'Journal of Public Health Research', 'Publish', '2022-06-29', '/uploads/evaluation/publicity_file/1666777973_JPHR.pdf', '2022-10-26 09:52:53', '2022-10-26 09:52:53', NULL),
(254, 254, NULL, 'Jurnal', 'International Journal of Power Electronics and Drive System (IJPEDS)', 'Publish', '2022-10-26', '/uploads/evaluation/publicity_file/1666792058_IJPEDS_Certificate of Author Agus Mukhlisin, Prisma Megantoro, Estiko Rijanto.pdf', '2022-10-26 13:47:38', '2022-10-26 13:47:38', NULL),
(255, 255, '2024-04-20', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-10-26 14:04:47', '2022-10-26 14:04:47', NULL),
(256, 256, NULL, 'Jurnal', 'Scientific Report', 'Accepted', '2022-03-08', '/uploads/evaluation/publicity_file/1666802530_s41598-022-07645-y.pdf', '2022-10-26 16:42:10', '2022-10-26 16:42:10', NULL),
(257, 257, NULL, 'Jurnal', 'Biomolecule', 'Publish', '2021-06-21', '/uploads/evaluation/publicity_file/1666804397_biomolecules-11-00905-v3 (5).pdf', '2022-10-26 17:13:17', '2022-10-26 17:13:17', NULL),
(258, 258, '2023-12-29', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-10-26 20:26:00', '2022-10-26 20:26:00', NULL),
(259, 259, '2023-01-27', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-10-27 02:13:50', '2022-10-27 02:13:50', NULL),
(260, 260, NULL, 'Jurnal', 'International Journal of Health Sciences', 'Publish', '2022-08-22', '/uploads/evaluation/publicity_file/1666839676_IJHS.pdf', '2022-10-27 03:01:16', '2022-10-27 03:01:16', NULL),
(261, 261, '2024-03-01', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-10-27 03:13:13', '2022-10-27 03:13:13', NULL),
(262, 262, NULL, 'Jurnal', NULL, 'Accepted', '2022-09-05', '/uploads/evaluation/publicity_file/1666840497_WhatsApp Image 2022-10-27 at 10.12.21.jpeg', '2022-10-27 03:14:57', '2022-10-27 03:15:49', NULL),
(263, 263, NULL, 'Prosedings', 'Seminar internasionaI ICOCSPA 2021/Jurnal Dialektika', 'Publish', '2121-03-31', '/uploads/evaluation/publicity_file/1666915650_certificate icocsps 21.pdf', '2022-10-27 03:17:32', '2022-10-28 00:07:30', NULL),
(264, 264, '2023-03-31', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-10-27 03:46:01', '2022-10-27 03:46:01', NULL),
(265, 265, '2023-08-28', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-10-27 04:01:53', '2022-10-27 04:01:53', NULL),
(266, 266, NULL, 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-10-27 04:15:05', '2022-10-27 04:15:05', NULL),
(267, 267, '2023-11-01', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-10-27 04:32:22', '2022-10-27 04:32:22', NULL),
(268, 268, NULL, 'Prosedings', 'International Seminar on Intelligent Technology and Its Application 2022', 'Publish', '2022-08-19', '/uploads/evaluation/publicity_file/1666849961_B104_Presenter.jpg', '2022-10-27 05:52:41', '2022-10-27 05:52:41', NULL),
(269, 269, NULL, 'Jurnal', NULL, 'Accepted', NULL, NULL, '2022-10-27 06:09:29', '2022-10-27 06:09:29', NULL),
(270, 270, '2023-01-31', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-10-27 07:41:56', '2022-10-27 07:41:56', NULL),
(271, 271, '2025-01-01', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-10-27 07:54:48', '2022-10-27 07:56:16', NULL),
(272, 272, '2023-01-30', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-10-27 09:48:55', '2022-10-27 09:48:55', NULL),
(273, 273, '2023-07-27', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-10-27 09:57:16', '2022-10-27 09:57:16', NULL),
(274, 274, '2023-01-14', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-10-27 10:44:29', '2022-10-27 10:44:29', NULL),
(275, 275, '2023-12-27', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-10-27 11:07:58', '2022-10-27 11:07:58', NULL),
(276, 276, '2023-04-07', 'Prosedings', 'IEEE BigData', 'Pilih', NULL, NULL, '2022-10-27 11:35:45', '2022-10-27 11:35:45', NULL),
(277, 277, '2023-03-27', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-10-27 14:21:55', '2022-10-27 14:21:55', NULL),
(278, 278, '2025-08-27', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-10-27 15:12:52', '2022-10-27 15:12:52', NULL),
(279, 279, NULL, 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-10-27 15:48:41', '2022-10-27 15:48:41', NULL),
(280, 280, '2026-08-01', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-10-28 01:40:19', '2022-10-28 01:40:19', NULL),
(281, 281, '2022-11-15', 'Jurnal', 'nutrients', 'Submit', NULL, NULL, '2022-10-28 01:41:31', '2022-10-28 01:41:31', NULL),
(282, 282, NULL, 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-10-28 01:53:01', '2022-10-28 01:53:01', NULL),
(283, 283, NULL, 'Jurnal', 'Sri Lanka Journal of Child Health', 'Publish', '2020-12-05', '/uploads/evaluation/publicity_file/1666923119_Artikel How to prepare your preterm baby before discharge.pdf', '2022-10-28 02:12:00', '2022-10-28 02:12:00', NULL),
(284, 284, '2022-12-01', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-10-28 03:26:36', '2022-10-28 03:26:36', NULL),
(285, 285, NULL, 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-10-28 04:21:03', '2022-10-28 04:21:03', NULL),
(286, 286, '2023-01-31', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-10-28 05:40:09', '2022-10-28 05:40:09', NULL),
(287, 287, NULL, 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-10-28 06:02:59', '2022-10-28 06:02:59', NULL),
(288, 288, NULL, 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-10-28 06:32:11', '2022-10-28 06:32:11', NULL),
(289, 289, '2023-08-20', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-10-28 06:58:48', '2022-10-28 06:58:48', NULL),
(290, 290, '2023-02-05', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-10-28 07:02:52', '2022-10-28 07:02:52', NULL),
(291, 291, '2023-02-01', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-10-28 07:22:50', '2022-10-28 07:22:50', NULL),
(292, 292, NULL, 'Jurnal', 'Pharmacy Education Journal', 'Publish', '2022-02-22', '/uploads/evaluation/publicity_file/1666946852_1593+Setiawan+.pdf', '2022-10-28 08:47:32', '2022-10-28 08:47:32', NULL),
(293, 293, '2023-01-28', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-10-28 09:31:45', '2022-10-28 09:31:45', NULL),
(294, 294, '2023-04-07', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-10-28 09:37:28', '2022-10-28 09:37:28', NULL),
(295, 295, '2023-02-28', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-10-28 10:27:06', '2022-10-28 10:27:06', NULL),
(296, 296, '2023-06-01', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-10-28 10:34:27', '2022-10-28 10:34:27', NULL),
(297, 297, NULL, 'Prosedings', 'Asian Conference on Comparative Law (ASIAN-COL) 2022', 'Accepted', '2022-07-21', '/uploads/evaluation/publicity_file/1666959220_LoA Fullpaper-Herliana and Sujayadi Sujayadi.pdf', '2022-10-28 12:13:40', '2022-10-28 12:13:40', NULL),
(298, 298, NULL, 'Jurnal', 'Correlation Between Ecological Status of Sedati Waters and Gonadosomatic Index of Short-Necked Clam (Paratapes undulatus)', 'Publish', '2022-08-01', '/uploads/evaluation/publicity_file/1666959743_jurnal accepted.pdf', '2022-10-28 12:22:23', '2022-10-28 12:22:23', NULL),
(299, 299, NULL, 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-10-28 13:00:30', '2022-10-28 13:00:30', NULL),
(300, 300, NULL, 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-10-28 13:08:51', '2022-10-28 13:08:51', NULL),
(301, 301, NULL, 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-10-28 13:13:35', '2022-10-28 13:13:35', NULL),
(302, 302, NULL, 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-10-28 13:18:30', '2022-10-28 13:18:30', NULL),
(303, 303, NULL, 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-10-28 13:23:47', '2022-10-28 13:23:47', NULL),
(304, 304, NULL, 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-10-28 13:25:28', '2022-10-28 13:25:28', NULL),
(305, 305, NULL, 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-10-28 13:25:34', '2022-10-28 13:25:34', NULL),
(306, 306, NULL, 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-10-28 13:28:25', '2022-10-28 13:28:25', NULL),
(307, 307, NULL, 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-10-28 13:31:48', '2022-10-28 13:31:48', NULL),
(308, 308, '2022-12-28', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-10-28 14:21:05', '2022-10-28 14:21:05', NULL),
(309, 309, NULL, 'Jurnal', 'Journal of International Dental and Medical Research', 'Publish', '2021-08-06', '/uploads/evaluation/publicity_file/1666971487_59-M-16.-2436-Erna-Dwi-Wahyuni-Jurnal Scopus Q3.pdf', '2022-10-28 15:38:07', '2022-10-28 15:38:07', NULL),
(310, 310, '2023-06-30', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-10-28 15:41:50', '2022-10-28 15:41:50', NULL),
(311, 311, NULL, 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-10-28 16:20:20', '2022-10-28 16:20:20', NULL),
(312, 314, '2023-12-28', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-10-28 16:59:21', '2022-10-28 16:59:21', NULL),
(313, 315, NULL, 'Jurnal', 'Air Quality, Atmosphere & Health', 'Publish', '2021-04-04', '/uploads/evaluation/publicity_file/1666998232_Prasasti et.al.2021_Association of VOCs, PM2.5 and household environmental exposure with children\'s respiroatory allergies.pdf', '2022-10-28 23:03:52', '2022-10-28 23:03:52', NULL),
(314, 316, NULL, 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-10-29 01:10:21', '2022-10-29 01:10:21', NULL),
(315, 317, NULL, 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-10-29 01:12:20', '2022-10-29 01:12:20', NULL),
(316, 318, '2023-08-20', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-10-29 02:06:52', '2022-10-29 02:06:52', NULL),
(317, 318, '2023-08-20', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-10-29 02:07:46', '2022-10-29 02:07:46', NULL),
(318, 319, NULL, 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-10-29 05:41:37', '2022-10-29 05:41:37', NULL),
(319, 320, '2026-08-30', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-10-30 01:03:12', '2022-10-30 01:03:12', NULL),
(320, 321, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-31 02:44:51', '2022-10-31 02:44:51', NULL),
(321, 321, '2023-07-02', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-10-31 02:49:54', '2022-11-02 01:28:30', NULL),
(322, 322, '2022-11-10', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-10-31 04:39:30', '2022-10-31 04:39:30', NULL),
(323, 323, '2023-01-02', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-10-31 09:30:05', '2022-10-31 09:30:05', NULL),
(324, 324, NULL, 'Jurnal', 'International Journal of Environmental Research Public Health', 'Accepted', '2022-10-30', '/uploads/evaluation/publicity_file/1667265923_Acceptance-Certificate-ijerph-1980750.pdf', '2022-11-01 01:25:24', '2022-11-01 01:25:24', NULL),
(325, 325, NULL, 'Pilih', 'Cleaner and responsible consumption', 'Publish', '2022-02-21', '/uploads/evaluation/publicity_file/1667284979_1-s2.0-S2666784322000146-main.pdf', '2022-11-01 06:42:59', '2022-11-01 06:42:59', NULL),
(326, 326, '2025-12-21', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-11-11 04:18:51', '2022-11-11 04:18:51', NULL),
(327, 327, '2023-01-31', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-11-18 05:56:57', '2022-11-18 05:56:57', NULL),
(328, 328, '2023-03-18', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-11-18 06:44:37', '2022-11-18 06:44:37', NULL),
(329, 329, '2022-12-30', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-11-19 10:43:28', '2022-11-19 10:43:28', NULL),
(330, 330, '2023-03-01', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-11-22 02:12:22', '2022-11-22 02:12:22', NULL),
(331, 331, NULL, 'Prosedings', NULL, 'Accepted', '2022-06-22', '/uploads/evaluation/publicity_file/1669091096_Sertifikat ICOWOBAS 2021 Marisa Rifada.pdf', '2022-11-22 04:24:56', '2022-11-22 04:26:13', NULL),
(332, 332, NULL, 'Jurnal', NULL, 'Publish', '2022-11-30', '/uploads/evaluation/publicity_file/1670300086_571-Other-2060-1-18-20220809.pdf', '2022-12-06 04:14:46', '2022-12-06 04:15:15', NULL),
(333, 333, NULL, 'Jurnal', 'Jurnal Pendidikan Teknologi Informasi (JUKANTI)', 'Publish', '2022-11-30', '/uploads/evaluation/publicity_file/1670301116_loa.jpeg', '2022-12-06 04:31:56', '2022-12-06 04:31:56', NULL),
(334, 334, '2025-06-02', 'Pilih', NULL, 'Pilih', NULL, NULL, '2022-12-06 08:40:31', '2022-12-06 08:40:31', NULL),
(335, 335, NULL, 'Jurnal', 'Malaysian Journal of Medicine and Health Sciences', 'Publish', '2021-12-12', NULL, '2022-12-30 03:33:19', '2022-12-30 03:33:19', NULL),
(336, 336, '2023-02-01', 'Pilih', NULL, 'Pilih', NULL, NULL, '2023-01-02 01:23:30', '2023-01-02 01:23:30', NULL),
(337, 337, '2023-01-09', 'Jurnal', NULL, 'Pilih', NULL, NULL, '2023-01-06 02:17:15', '2023-01-06 02:17:15', NULL),
(338, 338, NULL, 'Jurnal', 'Journal of Islamic Accounting and Business Research', 'Publish', '2022-07-17', NULL, '2023-01-10 15:13:04', '2023-01-10 15:13:04', NULL),
(339, 339, '2023-06-30', 'Pilih', NULL, 'Pilih', NULL, NULL, '2023-01-30 07:17:46', '2023-01-30 07:17:46', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `evaluation_toefls`
--

CREATE TABLE `evaluation_toefls` (
  `evaluation_toefl_id` int(11) NOT NULL,
  `evaluation_id` int(11) DEFAULT NULL,
  `toefl_plan` date DEFAULT NULL,
  `toefl_value` float DEFAULT NULL,
  `toefl_date` date DEFAULT NULL,
  `toefl_expired_date` date DEFAULT NULL,
  `toefl_by` text,
  `toefl_file` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `evaluation_toefls`
--

INSERT INTO `evaluation_toefls` (`evaluation_toefl_id`, `evaluation_id`, `toefl_plan`, `toefl_value`, `toefl_date`, `toefl_expired_date`, `toefl_by`, `toefl_file`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-20 00:00:00', '2022-05-20 00:00:00', NULL),
(2, 2, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-20 00:00:00', '2022-05-20 00:00:00', NULL),
(3, 3, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-20 00:00:00', '2022-05-20 00:00:00', NULL),
(4, 4, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-20 00:00:00', '2022-05-20 00:00:00', NULL),
(5, 5, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-20 00:00:00', '2022-05-20 00:00:00', NULL),
(6, 6, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-20 00:00:00', '2022-05-20 00:00:00', NULL),
(7, 7, '2022-06-03', NULL, NULL, NULL, NULL, NULL, '2022-05-23 02:02:04', '2022-05-23 02:02:04', NULL),
(8, 14, '2022-06-11', NULL, NULL, NULL, NULL, NULL, '2022-05-24 04:18:33', '2022-05-24 04:18:33', NULL),
(9, 15, '2022-12-24', NULL, NULL, NULL, NULL, NULL, '2022-05-24 04:25:00', '2022-05-24 04:25:00', NULL),
(10, 16, '2022-12-30', NULL, NULL, NULL, NULL, NULL, '2022-05-24 04:25:25', '2022-05-24 04:25:25', NULL),
(11, 17, '2022-06-23', NULL, NULL, NULL, NULL, NULL, '2022-05-24 04:28:48', '2022-05-24 04:28:48', NULL),
(12, 18, '2023-10-04', NULL, NULL, NULL, NULL, NULL, '2022-05-24 04:41:27', '2022-05-24 04:41:27', NULL),
(13, 34, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-24 07:42:43', '2022-05-24 07:42:43', NULL),
(14, 38, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-24 07:51:01', '2022-05-24 07:51:01', NULL),
(17, 44, NULL, 7, '2019-02-23', '2021-03-08', 'ID035 BRITISH COUNCIL', '/uploads/evaluation/toefl_file/1653379879_IELTS_133207.jpg', '2022-05-24 08:11:19', '2022-05-24 08:11:19', NULL),
(18, 38, NULL, 547, '2021-04-14', '2023-04-14', 'Pusat Bahasa dan Multi Budaya Universitas Airlangga', '/uploads/evaluation/toefl_file/1653380419_sertifikat ELPT Laily.pdf', '2022-05-24 08:20:19', '2022-05-24 08:20:19', NULL),
(19, 45, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-24 09:21:01', '2022-05-24 09:21:01', NULL),
(20, 46, NULL, 530, '2022-03-18', '2024-03-18', 'PUSAT BAHASA UNAIR', '/uploads/evaluation/toefl_file/1653399546_TOEFL PUSBA.pdf', '2022-05-24 13:39:06', '2022-05-24 13:39:06', NULL),
(21, 47, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-25 01:37:47', '2022-05-25 01:37:47', NULL),
(22, 48, '2022-07-31', NULL, NULL, NULL, NULL, NULL, '2022-05-25 01:54:00', '2022-05-25 01:54:00', NULL),
(23, 48, '2022-07-31', NULL, NULL, NULL, NULL, NULL, '2022-05-25 01:54:32', '2022-05-25 01:54:32', NULL),
(24, 49, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-25 02:32:48', '2022-05-25 02:32:48', NULL),
(25, 50, NULL, 560, NULL, NULL, NULL, NULL, '2022-05-25 03:28:29', '2022-05-25 03:28:29', NULL),
(26, 51, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-25 03:31:11', '2022-05-25 03:31:11', NULL),
(27, 52, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-25 03:42:11', '2022-05-25 03:42:11', NULL),
(28, 53, NULL, 587, '2022-02-18', NULL, 'Pusat Bahasa dan Multibudaya Universitas Airlangga', '/uploads/evaluation/toefl_file/1653454384_cetak-formulir-sertifikat ELPT-Erni Agustin.pdf', '2022-05-25 04:53:04', '2022-05-25 04:53:04', NULL),
(29, 53, NULL, 587, '2022-02-18', NULL, 'Pusat Bahasa dan Multibudaya Universitas Airlangga', NULL, '2022-05-25 04:53:52', '2022-05-25 04:53:52', NULL),
(30, 54, '2022-10-25', NULL, NULL, NULL, NULL, NULL, '2022-05-25 05:01:52', '2022-05-25 05:01:52', NULL),
(33, 57, NULL, 553, '2018-04-02', NULL, 'Pusat Bahasa, Fakultas Ilmu Budaya, UNAIR', '/uploads/evaluation/toefl_file/1653457899_ELPT Valid to 2 April 2018 (553).pdf', '2022-05-25 05:51:39', '2022-05-25 05:51:39', NULL),
(34, 58, '2022-12-01', NULL, NULL, NULL, NULL, NULL, '2022-05-25 05:56:35', '2022-05-25 05:56:35', NULL),
(35, 59, '2023-11-12', NULL, NULL, NULL, NULL, NULL, '2022-05-25 06:13:18', '2022-05-25 06:13:18', NULL),
(36, 60, '2022-08-25', NULL, NULL, NULL, NULL, NULL, '2022-05-25 06:21:29', '2022-05-25 06:21:29', NULL),
(37, 61, NULL, 563, '2022-03-23', '2024-03-23', 'Pusat Bahasa dan Multibudaya UNAIR', '/uploads/evaluation/toefl_file/1653487373_Sertifikat ELPT_Zendy Wulan Ayu Widhi Prameswari.pdf', '2022-05-25 14:02:53', '2022-05-25 14:02:53', NULL),
(38, 62, NULL, 523, '2018-03-09', '2022-05-27', 'ITS EFL Test', '/uploads/evaluation/toefl_file/1653622002_toefl - Indra Kharisma.pdf', '2022-05-27 03:26:42', '2022-05-27 03:26:42', NULL),
(39, 63, NULL, 563, '2022-03-16', '2024-03-16', 'Pusat Bahasa Universitas Airlangga', '/uploads/evaluation/toefl_file/1653625371_Kukuh Leksono Suminaring Aditya (2).png', '2022-05-27 04:22:51', '2022-05-27 04:22:51', NULL),
(40, 64, NULL, 563, '2021-07-18', '2023-07-18', 'EG Learning Center', '/uploads/evaluation/toefl_file/1653633633_01 - Sertifikat TOEFL ITP - Reiska Kumala Bakti.pdf', '2022-05-27 06:40:33', '2022-05-27 06:40:33', NULL),
(41, 65, NULL, NULL, '2020-11-12', NULL, NULL, NULL, '2022-05-27 07:43:58', '2022-05-27 07:43:58', NULL),
(42, 66, '2022-09-06', NULL, NULL, NULL, NULL, NULL, '2022-05-27 07:58:41', '2022-05-27 07:58:41', NULL),
(43, 66, '2022-09-06', NULL, NULL, NULL, NULL, NULL, '2022-05-27 08:05:28', '2022-05-27 08:05:28', NULL),
(44, 67, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-27 10:13:22', '2022-05-27 10:13:22', NULL),
(45, 68, '2023-06-22', NULL, NULL, NULL, NULL, NULL, '2022-05-27 13:17:14', '2022-05-27 13:17:14', NULL),
(46, 68, '2023-06-22', NULL, NULL, NULL, NULL, NULL, '2022-05-27 13:17:55', '2022-05-27 13:17:55', NULL),
(47, 68, '2023-06-22', NULL, NULL, NULL, NULL, NULL, '2022-05-27 13:18:25', '2022-05-27 13:18:25', NULL),
(48, 68, '2023-06-22', NULL, NULL, NULL, NULL, NULL, '2022-05-27 13:18:50', '2022-05-27 13:18:50', NULL),
(49, 68, '2023-06-22', NULL, NULL, NULL, NULL, NULL, '2022-05-27 13:19:25', '2022-05-27 13:19:25', NULL),
(50, 50, NULL, 560, '2021-03-24', '2023-03-24', 'Pusat Bahasa dan Multibudaya Universitas Airlangga', '/uploads/evaluation/toefl_file/1666829309_ELPT Score.pdf', '2022-05-28 01:14:47', '2022-10-27 00:08:29', NULL),
(51, 70, NULL, 580, '2021-07-17', '2023-07-17', 'ETS', '/uploads/evaluation/toefl_file/1653713139_04 - Sertifikat TOEFL ITP - Tia Saraswati.pdf', '2022-05-28 04:45:39', '2022-05-28 04:45:39', NULL),
(52, 71, '2024-05-07', NULL, NULL, NULL, NULL, NULL, '2022-05-29 03:21:03', '2022-05-29 03:21:03', NULL),
(53, 71, '2024-05-07', NULL, NULL, NULL, NULL, NULL, '2022-05-29 03:24:36', '2022-05-29 03:24:36', NULL),
(54, 72, '2022-08-01', NULL, NULL, NULL, NULL, NULL, '2022-05-29 11:13:33', '2022-05-29 11:13:33', NULL),
(55, 72, '2022-08-01', 530, NULL, NULL, NULL, NULL, '2022-05-29 11:27:22', '2022-05-29 11:27:22', NULL),
(56, 73, '2022-06-15', NULL, NULL, NULL, NULL, NULL, '2022-05-29 23:03:35', '2022-05-29 23:03:35', NULL),
(57, 73, '2022-06-15', NULL, NULL, NULL, NULL, NULL, '2022-05-29 23:04:43', '2022-05-29 23:04:43', NULL),
(58, 73, '2022-06-15', NULL, NULL, NULL, NULL, NULL, '2022-05-29 23:08:56', '2022-05-29 23:08:56', NULL),
(59, 73, '2022-06-15', NULL, NULL, NULL, NULL, NULL, '2022-05-30 00:31:11', '2022-05-30 00:31:11', NULL),
(60, 74, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-30 01:06:24', '2022-05-30 01:06:24', NULL),
(61, 74, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-30 02:13:35', '2022-05-30 02:13:35', NULL),
(62, 74, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-30 02:25:46', '2022-05-30 02:25:46', NULL),
(63, 75, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-30 02:29:13', '2022-05-30 02:29:13', NULL),
(64, 74, '0001-01-01', NULL, NULL, NULL, NULL, NULL, '2022-05-30 02:29:21', '2022-05-30 02:29:21', NULL),
(65, 76, '2022-06-30', NULL, NULL, NULL, NULL, NULL, '2022-05-30 03:01:01', '2022-05-30 03:01:01', NULL),
(66, 77, '2022-06-30', NULL, NULL, NULL, NULL, NULL, '2022-05-30 03:18:38', '2022-05-30 03:18:38', NULL),
(67, 78, NULL, 530, '2021-08-25', '2023-08-25', 'Pusat Bahasa Universitas Airlangga', '/uploads/evaluation/toefl_file/1653881582_BAYU LUKITO NUGROHO.pdf', '2022-05-30 03:33:02', '2022-05-30 03:33:02', NULL),
(68, 79, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-30 04:15:28', '2022-05-30 04:15:28', NULL),
(69, 69, '2022-09-30', NULL, NULL, NULL, NULL, NULL, '2022-05-30 04:18:52', '2022-10-26 01:38:13', NULL),
(70, 80, NULL, 6, '2018-01-13', '2020-01-13', 'IELTS', '/uploads/evaluation/toefl_file/1653885135_IELTS.pdf', '2022-05-30 04:32:15', '2022-05-30 04:32:15', NULL),
(71, 81, NULL, 563, '2021-03-31', '2023-03-31', 'Pusat Bahasa dan Multibudaya Universitas Airlangga', '/uploads/evaluation/toefl_file/1653885469_ERNA DWI WAHYUNI (1) sertifikat TOEFL.pdf', '2022-05-30 04:37:49', '2022-05-30 04:37:49', NULL),
(72, 82, NULL, 477, NULL, '2022-05-01', 'unair', '/uploads/evaluation/toefl_file/1653889410_TOEFL 490 SERTIFIKAT BISA DICETAK HARI JUMAT 2-11-2018.jpg', '2022-05-30 05:43:30', '2022-05-30 05:43:30', NULL),
(73, 73, '2022-06-15', NULL, NULL, NULL, NULL, '/uploads/evaluation/toefl_file/1653889952_3. SERTIFIKAT ELPT 2019.pdf', '2022-05-30 05:52:32', '2022-05-31 03:30:18', NULL),
(74, 84, NULL, 547, '2022-02-23', '2024-02-23', 'Pusat Bahasa dan Multibudaya Universitas Airlangga', '/uploads/evaluation/toefl_file/1653891379_Sertifikat Tes Tofl.pdf', '2022-05-30 06:16:19', '2022-05-30 06:16:19', NULL),
(75, 84, NULL, 547, '2022-02-23', '2024-02-23', 'Pusat Bahasa dan Multibudaya Universitas Airlangga', NULL, '2022-05-30 06:17:33', '2022-05-30 06:17:33', NULL),
(76, 85, NULL, 537, '2021-12-07', '2023-12-07', 'ETS TOEFL ITP', '/uploads/evaluation/toefl_file/1653892867_Sertifikat TOEFL ITP - Riska Nur Rosyidiana.pdf', '2022-05-30 06:41:07', '2022-05-30 06:41:07', NULL),
(77, 86, NULL, 487, '2021-08-25', '2023-08-25', 'Pusat Bahasa Universitas Airlangga', '/uploads/evaluation/toefl_file/1653896259_Sertif ELPT - NIKITA ATHARI LANES.pdf', '2022-05-30 07:37:39', '2022-05-30 07:37:39', NULL),
(78, 87, NULL, 507, '2019-02-13', NULL, 'ACEPT UGM-Pusat Bahasa Fakultas Ilmu Budaya Universitas Gadjah Mada', '/uploads/evaluation/toefl_file/1653897121_Sertifikat ACEPT UGM [EDIT].pdf', '2022-05-30 07:52:01', '2022-05-30 07:52:01', NULL),
(79, 88, NULL, 510, '2019-10-12', '2021-10-12', 'PUSBA UNAIR', '/uploads/evaluation/toefl_file/1653899177_cetak-formulir-sertifikat.pdf', '2022-05-30 08:26:17', '2022-05-30 08:26:17', NULL),
(80, 89, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-30 09:17:31', '2022-05-30 09:17:31', NULL),
(81, 81, NULL, 563, '2021-03-31', '2023-03-31', 'Pusat Bahasa dan Multibudaya Universitas Airlangga', NULL, '2022-05-30 09:27:06', '2022-10-28 15:19:26', NULL),
(82, 91, NULL, 570, '2022-02-16', '2024-02-14', 'PUSBA UNAIR', '/uploads/evaluation/toefl_file/1653909186_ELPT NUR SULASTRI.pdf', '2022-05-30 11:13:06', '2022-05-30 11:13:06', NULL),
(83, 91, NULL, 570, '2022-02-16', '2024-02-14', 'PUSBA UNAIR', NULL, '2022-05-30 11:16:52', '2022-05-30 11:16:52', NULL),
(84, 92, NULL, 507, '2022-02-18', '2024-02-18', 'Pusba Universitas Airlangga', '/uploads/evaluation/toefl_file/1653914328_ELPT_DEVI RAHMA SOFIA.pdf', '2022-05-30 12:38:48', '2022-05-30 12:38:48', NULL),
(85, 92, NULL, 507, '2022-02-18', '2024-02-18', 'Pusba Universitas Airlangga', NULL, '2022-05-30 12:40:15', '2022-05-30 12:40:15', NULL),
(86, 93, NULL, 613, '2018-12-07', '2024-12-30', 'ETS TOEFL ITP - Universitas Airlangga', '/uploads/evaluation/toefl_file/1653918506_TOEFL.pdf', '2022-05-30 13:48:26', '2022-05-30 13:48:26', NULL),
(87, 94, '2022-09-01', NULL, NULL, NULL, NULL, NULL, '2022-05-30 13:57:56', '2022-05-30 13:57:56', NULL),
(88, 95, '2022-09-01', NULL, NULL, NULL, NULL, NULL, '2022-05-30 14:04:15', '2022-05-30 14:04:15', NULL),
(89, 96, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-31 01:00:12', '2022-05-31 01:00:12', NULL),
(90, 97, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-31 01:03:09', '2022-05-31 01:03:09', NULL),
(91, 98, NULL, 517, '2022-03-23', '2024-03-23', 'Pusat Bahasa dan Multibudaya Universitas Airlangga', '/uploads/evaluation/toefl_file/1653962488_HILDA YUNITA SABRIE (2).pdf', '2022-05-31 02:01:28', '2022-05-31 02:01:28', NULL),
(92, 92, NULL, 507, '2022-02-18', '2024-02-18', 'Pusba Universitas Airlangga', '/uploads/evaluation/toefl_file/1667204272_ELPT_DEVI RAHMA SOFIA.pdf', '2022-05-31 02:19:00', '2022-10-31 08:17:52', NULL),
(93, 99, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-31 02:19:26', '2022-05-31 02:19:26', NULL),
(94, 99, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-31 02:19:48', '2022-05-31 02:19:48', NULL),
(95, 99, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-31 02:20:23', '2022-05-31 02:20:23', NULL),
(96, 96, NULL, NULL, NULL, NULL, NULL, '/uploads/evaluation/toefl_file/1653969558_tes toefl.jpg', '2022-05-31 03:59:18', '2022-10-25 00:44:58', NULL),
(97, 97, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-31 04:00:31', '2022-10-27 07:51:45', NULL),
(98, 102, '2022-06-13', NULL, NULL, NULL, NULL, NULL, '2022-05-31 04:13:25', '2022-05-31 04:13:25', NULL),
(99, 103, NULL, 507, '2019-01-19', '2021-01-19', 'ITP', '/uploads/evaluation/toefl_file/1653976758_Toefl ITP Kristiawati.pdf', '2022-05-31 05:59:18', '2022-05-31 05:59:18', NULL),
(100, 104, NULL, 543, '2017-07-07', '2018-07-07', 'IIEF', '/uploads/evaluation/toefl_file/1653976952_Dewi Meyrasyawati - TOEFL.jpg', '2022-05-31 06:02:32', '2022-05-31 06:02:32', NULL),
(101, 103, NULL, 507, '2019-01-19', '2021-01-19', 'ITP', NULL, '2022-05-31 06:07:51', '2022-05-31 06:07:51', NULL),
(102, 102, '2022-06-13', 497, '2022-11-04', '2024-11-04', 'Pusat Bahasa dan Multi Budaya Universitas Airlangga', '/uploads/evaluation/toefl_file/1668432838_sertifikat elpt-ardhena.pdf', '2022-05-31 06:28:40', '2022-11-14 13:33:58', NULL),
(103, 105, '2022-06-06', NULL, NULL, NULL, NULL, NULL, '2022-05-31 07:28:56', '2022-05-31 07:28:56', NULL),
(104, 106, NULL, 547, '2019-10-26', NULL, 'Pusat Bahasa Universitas Airlangga', NULL, '2022-05-31 07:50:00', '2022-05-31 07:50:00', NULL),
(105, 107, '2022-06-25', NULL, NULL, NULL, NULL, NULL, '2022-05-31 08:03:16', '2022-05-31 08:03:16', NULL),
(106, 108, NULL, 550, '2018-03-09', '2019-03-09', 'Pusat Bahasa Universitas Airlangga', '/uploads/evaluation/toefl_file/1653984309_TOEFL.jpeg', '2022-05-31 08:05:09', '2022-05-31 08:05:09', NULL),
(107, 109, NULL, 567, '2019-02-08', '2021-02-08', 'ETS TOEFL ITP lokasi di Kaplan EDUPAC', '/uploads/evaluation/toefl_file/1653984559_TOEFL 2019 Effita Piscesiana.pdf', '2022-05-31 08:09:19', '2022-05-31 08:09:19', NULL),
(108, 110, NULL, 507, '2021-07-23', '2023-07-23', 'Global Language Center ITS', '/uploads/evaluation/toefl_file/1653985867_Sertifikat TOEFL.pdf', '2022-05-31 08:31:07', '2022-05-31 08:31:07', NULL),
(109, 110, NULL, 507, '2021-07-23', '2023-07-23', 'Global Language Center ITS', NULL, '2022-05-31 08:36:57', '2022-05-31 08:36:57', NULL),
(110, 110, NULL, 507, '2021-07-23', '2023-07-23', 'Global Language Center ITS', NULL, '2022-05-31 08:38:17', '2022-05-31 08:38:17', NULL),
(111, 111, NULL, 519, '2019-09-01', '2023-09-01', 'Pusat Bahasa', NULL, '2022-05-31 08:43:33', '2022-05-31 08:43:33', NULL),
(112, 112, '2022-06-10', NULL, NULL, NULL, NULL, NULL, '2022-05-31 09:10:10', '2022-05-31 09:10:10', NULL),
(113, 113, '2022-06-30', NULL, NULL, NULL, NULL, NULL, '2022-05-31 09:22:10', '2022-05-31 09:22:10', NULL),
(114, 114, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-31 09:33:25', '2022-05-31 09:33:25', NULL),
(115, 115, '2022-07-18', NULL, NULL, NULL, NULL, NULL, '2022-05-31 09:45:24', '2022-05-31 09:45:24', NULL),
(116, 116, '2022-06-30', NULL, NULL, NULL, NULL, NULL, '2022-05-31 09:55:47', '2022-05-31 09:55:47', NULL),
(117, 117, '2024-08-01', NULL, NULL, NULL, NULL, NULL, '2022-05-31 10:13:24', '2022-05-31 10:13:24', NULL),
(118, 118, NULL, 537, '2020-02-01', '2022-02-01', 'PUSBA UNAIR', '/uploads/evaluation/toefl_file/1653996383_TOEFL.pdf', '2022-05-31 11:26:23', '2022-05-31 11:26:23', NULL),
(119, 119, NULL, 507, '2021-10-26', '2023-10-26', 'Universitas Brawijaya', '/uploads/evaluation/toefl_file/1654002334_TOEFL ITP Budi Lutfitra Wisada.pdf', '2022-05-31 13:05:34', '2022-05-31 13:05:34', NULL),
(120, 120, NULL, 597, '2019-09-29', '2021-09-29', 'Pusat Bahasa Universitas Airlangga', '/uploads/evaluation/toefl_file/1654078791_ELPT ASTARI.pdf', '2022-06-01 10:19:51', '2022-06-01 10:19:51', NULL),
(121, 121, NULL, 510, '2021-07-24', '2022-07-24', 'Pusat Bahasa Dan Multibudaya Universitas Airlangga', '/uploads/evaluation/toefl_file/1654142516_ELPT.LILIS INDRAWATI.pdf', '2022-06-02 04:01:56', '2022-06-02 04:01:56', NULL),
(122, 122, '2022-06-15', NULL, NULL, NULL, NULL, NULL, '2022-06-02 07:10:01', '2022-06-02 07:10:01', NULL),
(123, 123, '2022-06-24', NULL, NULL, NULL, NULL, NULL, '2022-06-02 09:15:40', '2022-06-02 09:15:40', NULL),
(124, 124, NULL, 490, '2020-09-20', '2022-09-28', 'nlc narotama', '/uploads/evaluation/toefl_file/1654161468_arya.jpg', '2022-06-02 09:17:48', '2022-06-02 09:17:48', NULL),
(125, 125, '2022-06-14', NULL, NULL, NULL, NULL, NULL, '2022-06-02 09:35:49', '2022-06-02 09:35:49', NULL),
(126, 126, '2022-10-08', NULL, NULL, NULL, NULL, NULL, '2022-06-03 01:55:25', '2022-08-02 09:30:42', NULL),
(127, 127, NULL, 530, '2020-04-03', '2022-04-03', 'Pusba Unair', '/uploads/evaluation/toefl_file/1654235668_cetak-formulir-sertifikat toefl susilo.pdf', '2022-06-03 05:54:28', '2022-06-03 05:54:28', NULL),
(128, 128, NULL, 507, NULL, NULL, NULL, NULL, '2022-06-03 06:31:16', '2022-06-03 06:31:16', NULL),
(129, 129, NULL, 550, '2021-07-22', '2023-07-22', 'EG Learning Centre, Denpasar Bali', '/uploads/evaluation/toefl_file/1654378636_10. Abd Nasir_Certificate TKBI New.pdf', '2022-06-04 21:37:16', '2022-06-04 21:37:16', NULL),
(130, 130, NULL, 533, '2020-10-26', '2022-10-26', 'LBI FIB UI', '/uploads/evaluation/toefl_file/1654480183_Toefl ITP Yanuar Nugroho.pdf', '2022-06-06 01:49:43', '2022-06-06 01:49:43', NULL),
(131, 131, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-06 03:48:04', '2022-06-06 03:48:04', NULL),
(132, 132, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-06 07:49:22', '2022-06-06 07:49:22', NULL),
(133, 133, NULL, 647, '2021-12-16', '2023-12-16', 'ETS', '/uploads/evaluation/toefl_file/1654585676_Toefl ITP 2021.pdf', '2022-06-07 07:07:56', '2022-06-07 07:07:56', NULL),
(134, 134, NULL, 77, '2016-06-11', '2018-06-11', 'UPT Pusat Bahasa Institut Teknologi bandung', '/uploads/evaluation/toefl_file/1654745306_Toefl_Ahmadin 2016.pdf', '2022-06-09 03:28:26', '2022-06-09 03:28:26', NULL),
(135, 135, NULL, 517, '2021-10-14', '2023-10-14', 'UNAIR ELPT', '/uploads/evaluation/toefl_file/1655096951_Wardah Rahmatul Islamiyah.pdf', '2022-06-13 05:09:11', '2022-06-13 05:09:11', NULL),
(136, 136, '2022-06-21', NULL, NULL, NULL, NULL, NULL, '2022-06-13 05:43:58', '2022-06-13 05:43:58', NULL),
(137, 137, NULL, NULL, '2021-07-24', '2023-07-24', 'PUSBA UNAIR', '/uploads/evaluation/toefl_file/1655181724_SOFIATUN_Sertifikat ELPT.pdf', '2022-06-14 04:42:04', '2022-06-14 04:42:04', NULL),
(138, 138, '2022-07-01', NULL, NULL, NULL, NULL, NULL, '2022-06-14 06:11:31', '2022-06-14 06:11:31', NULL),
(139, 139, NULL, 517, '2018-03-06', '2020-02-24', 'Pusat Budaya Fakultas Ilmu Budaya Universitas Airlangga', '/uploads/evaluation/toefl_file/1655201395_toefl yanti 2018.pdf', '2022-06-14 10:09:55', '2022-06-14 10:09:55', NULL),
(140, 140, '2022-09-15', NULL, NULL, NULL, NULL, NULL, '2022-06-15 01:06:14', '2022-06-15 01:06:14', NULL),
(141, 141, '2022-12-07', NULL, NULL, NULL, NULL, NULL, '2022-06-17 03:26:31', '2022-06-17 03:26:31', NULL),
(142, 142, '2023-09-18', NULL, NULL, NULL, NULL, NULL, '2022-06-18 10:42:47', '2022-06-18 10:42:47', NULL),
(143, 143, '2022-12-01', NULL, NULL, NULL, NULL, NULL, '2022-06-21 03:03:49', '2022-06-21 03:03:49', NULL),
(144, 144, NULL, NULL, '2021-02-06', '2023-02-06', 'IDP', '/uploads/evaluation/toefl_file/1655867198_IELTS Rahmad Rifqi Fahreza.pdf', '2022-06-22 03:06:38', '2022-06-22 03:06:38', NULL),
(145, 145, NULL, 517, '2019-03-25', '2021-03-25', 'Centre for Languages and Cultures-ITS', '/uploads/evaluation/toefl_file/1655970857_Sertifikat TOEFL ITS.jpg', '2022-06-23 07:54:17', '2022-06-23 07:54:17', NULL),
(146, 146, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-28 09:59:56', '2022-06-28 09:59:56', NULL),
(147, 147, NULL, 600, '2015-03-27', '2020-03-27', 'IALF Surabaya', '/uploads/evaluation/toefl_file/1656471765_IELTS Amak Yaqoub.pdf', '2022-06-29 03:02:45', '2022-06-29 03:02:45', NULL),
(148, 148, '2022-09-01', NULL, NULL, NULL, NULL, NULL, '2022-07-02 02:34:01', '2022-07-02 02:34:01', NULL),
(149, 149, NULL, 510, '2022-06-17', '2024-06-17', 'PUSBA UNAIR', NULL, '2022-07-19 00:06:44', '2022-07-19 00:06:44', NULL),
(150, 150, NULL, 447, '2021-08-21', '2023-08-21', 'ELPT Unair', '/uploads/evaluation/toefl_file/1658291047_Nilai TOEFL_Agt 21.pdf', '2022-07-20 04:24:07', '2022-07-20 04:24:07', NULL),
(151, 151, NULL, 222, '2018-01-10', NULL, 'AcEPT Pusat Bahasa UGM - skor memenuhi syarat kelulusan', '/uploads/evaluation/toefl_file/1658737966_Sertifikat Bhs Inggris AcEPT UGM - 10 Januari 2018 Gayung Kasuma.pdf', '2022-07-25 08:32:46', '2022-07-25 08:32:46', NULL),
(152, 152, '2022-08-27', NULL, NULL, NULL, NULL, NULL, '2022-07-26 17:44:18', '2022-07-26 17:44:18', NULL),
(153, 153, NULL, 560, '2021-06-17', '2023-06-17', 'ELPT', '/uploads/evaluation/toefl_file/1658892587_sertifikat TOEFL Nurmawati Fatimah.pdf', '2022-07-27 03:29:47', '2022-07-27 03:29:47', NULL),
(154, 154, NULL, 540, '2021-05-24', '2023-05-24', 'Pusat Bahasa dan Multibudaya Unair', '/uploads/evaluation/toefl_file/1659053785_Danti Nur Indiastuti.pdf', '2022-07-29 00:16:25', '2022-07-29 00:16:25', NULL),
(155, 155, '2022-08-31', NULL, NULL, NULL, NULL, NULL, '2022-07-29 02:02:02', '2022-07-29 02:02:02', NULL),
(156, 156, NULL, 550, NULL, NULL, 'FIB UNAIR', NULL, '2022-07-29 02:27:22', '2022-07-29 02:27:22', NULL),
(157, 157, '2023-01-10', NULL, NULL, NULL, NULL, NULL, '2022-07-29 07:47:07', '2022-07-29 07:47:07', NULL),
(158, 160, '2022-12-01', NULL, NULL, NULL, NULL, NULL, '2022-07-29 12:54:10', '2022-07-29 12:54:10', NULL),
(159, 161, '2022-11-14', NULL, NULL, NULL, NULL, NULL, '2022-08-01 12:10:47', '2022-08-01 12:10:47', NULL),
(160, 162, '2022-10-10', NULL, NULL, NULL, NULL, NULL, '2022-08-02 02:53:19', '2022-08-02 02:53:19', NULL),
(161, 161, '2022-11-14', NULL, NULL, NULL, NULL, NULL, '2022-08-02 02:56:58', '2022-08-04 11:02:05', NULL),
(162, 163, '2023-02-02', NULL, NULL, NULL, NULL, NULL, '2022-08-02 03:47:04', '2022-08-02 03:47:04', NULL),
(163, 164, NULL, 583, '2021-06-23', '2030-06-23', 'PUSAT BAHASA DAN MULTIBUDAYA UNIVERSITAS AIRLANGGA', '/uploads/evaluation/toefl_file/1659419605_PHOTO-2021-08-11-10-40-58.jpg', '2022-08-02 05:53:25', '2022-08-02 05:53:25', NULL),
(164, 165, NULL, 587, '2021-04-08', '2024-04-08', 'Pusat Bahasa dan Multibudaya UNAIR', '/uploads/evaluation/toefl_file/1659498730_TOEFL.jpeg', '2022-08-03 03:52:10', '2022-08-03 03:52:10', NULL),
(165, 166, NULL, 520, '2022-01-12', '2024-01-12', 'Pinlab UNAIR', '/uploads/evaluation/toefl_file/1659503760_skor Toefl.pdf', '2022-08-03 05:16:00', '2022-08-03 05:16:00', NULL),
(166, 166, NULL, 520, '2022-01-12', '2024-01-12', 'Pinlab UNAIR', '/uploads/evaluation/toefl_file/1659503882_sertif ELPT Dessy Harisanty juli 2022.pdf', '2022-08-03 05:18:02', '2022-08-03 07:28:47', NULL),
(167, 168, '2022-07-01', NULL, NULL, NULL, NULL, NULL, '2022-08-03 06:51:36', '2022-08-03 06:51:36', NULL),
(168, 169, '2022-07-20', NULL, NULL, NULL, NULL, NULL, '2022-08-03 06:55:13', '2022-08-03 06:55:13', NULL),
(169, 170, '2021-04-27', NULL, NULL, NULL, NULL, NULL, '2022-08-03 07:07:54', '2022-08-03 07:07:54', NULL),
(170, 171, '2020-08-10', NULL, NULL, NULL, NULL, NULL, '2022-08-03 07:10:39', '2022-08-03 07:10:39', NULL),
(171, 172, '2021-08-09', NULL, NULL, NULL, NULL, NULL, '2022-08-03 07:14:30', '2022-08-03 07:14:30', NULL),
(172, 173, '2021-08-03', NULL, NULL, NULL, NULL, NULL, '2022-08-03 07:18:00', '2022-08-03 07:18:00', NULL),
(173, 173, '2021-08-03', NULL, NULL, NULL, NULL, NULL, '2022-08-03 07:18:37', '2022-08-03 07:18:37', NULL),
(174, 174, '2021-08-03', NULL, NULL, NULL, NULL, NULL, '2022-08-03 07:25:48', '2022-08-03 07:25:48', NULL),
(175, 175, '2022-12-30', NULL, NULL, NULL, NULL, NULL, '2022-08-04 04:53:07', '2022-08-04 04:53:07', NULL),
(176, 176, '2022-09-12', NULL, NULL, NULL, NULL, NULL, '2022-08-05 06:11:03', '2022-08-05 06:11:03', NULL),
(177, 177, NULL, 500, '2018-02-12', '2018-09-13', 'Pusat Bahasa FIB Universitas Airlangga', '/uploads/evaluation/toefl_file/1659697694_TOEFL ELPT UNAIR Pradana Zaky Romadhon.pdf', '2022-08-05 11:08:14', '2022-08-05 11:08:14', NULL),
(178, 178, '2022-09-15', NULL, NULL, NULL, NULL, NULL, '2022-08-08 02:07:22', '2022-08-08 02:07:22', NULL),
(179, 179, NULL, 530, '2021-09-23', '2023-09-23', 'PUSBA Unair', '/uploads/evaluation/toefl_file/1659928809_Sertifikat ELPT_YULY SULISTYORINI_2021.pdf', '2022-08-08 03:20:09', '2022-08-08 03:20:09', NULL),
(180, 180, NULL, 510, '2021-06-17', '2021-06-17', 'EG Learning Centre', '/uploads/evaluation/toefl_file/1659928981_tkbi.pdf', '2022-08-08 03:23:01', '2022-08-08 03:23:01', NULL),
(181, 181, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-08 03:23:27', '2022-08-08 03:23:27', NULL),
(182, 182, NULL, 577, '2021-02-27', '2023-02-27', 'ECS', '/uploads/evaluation/toefl_file/1659929023_TOEFL 2021.pdf', '2022-08-08 03:23:43', '2022-08-08 03:23:43', NULL),
(183, 183, '2022-10-10', NULL, NULL, NULL, NULL, NULL, '2022-08-08 06:30:38', '2022-08-08 06:30:38', NULL),
(184, 184, NULL, 6, '2017-08-11', '2018-08-11', 'IALF', '/uploads/evaluation/toefl_file/1659963149_IELTS Tri Bhawono Dadi.jpg', '2022-08-08 12:52:29', '2022-08-08 12:52:29', NULL),
(185, 185, NULL, 647, '2021-12-16', '2023-12-16', 'ETS', '/uploads/evaluation/toefl_file/1660019057_Toefl ITP 2021.pdf', '2022-08-09 04:24:17', '2022-08-09 04:24:17', NULL),
(186, 186, NULL, 533, '2020-01-30', '2022-01-30', 'UNAIR', '/uploads/evaluation/toefl_file/1660031914_29. ELPT.pdf', '2022-08-09 07:58:34', '2022-08-09 07:58:34', NULL),
(187, 187, NULL, 557, '2020-02-01', NULL, 'Pusat Bahasa Universitas Airlangga', '/uploads/evaluation/toefl_file/1660033749_TOEFL elpt 2020.jpg', '2022-08-09 08:29:09', '2022-08-09 08:29:09', NULL),
(188, 188, '2022-12-06', NULL, NULL, NULL, NULL, NULL, '2022-08-12 07:19:51', '2022-08-12 07:19:51', NULL),
(189, 189, '2022-12-21', NULL, NULL, NULL, NULL, NULL, '2022-08-14 06:15:48', '2022-08-14 06:15:48', NULL),
(190, 190, NULL, 533, '2018-02-24', '2020-02-24', 'Pusat Bahasa Universitas Airlangga', '/uploads/evaluation/toefl_file/1660624324_WhatsApp Image 2022-08-16 at 11.11.31 AM.jpeg', '2022-08-16 04:32:04', '2022-08-16 04:32:04', NULL),
(191, 191, '2023-08-17', NULL, NULL, NULL, NULL, NULL, '2022-08-16 06:14:24', '2022-08-16 06:14:24', NULL),
(192, 192, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-22 02:36:36', '2022-08-22 02:36:36', NULL),
(193, 193, '2022-08-31', NULL, NULL, NULL, NULL, NULL, '2022-08-22 08:58:12', '2022-08-22 08:58:12', NULL),
(194, 194, NULL, 580, '2021-07-17', '2023-07-17', 'ETS', '/uploads/evaluation/toefl_file/1661394745_04 - Sertifikat TOEFL ITP - Tia Saraswati (1).pdf', '2022-08-25 02:32:25', '2022-08-25 02:32:25', NULL),
(195, 195, NULL, 497, '2021-12-16', '2024-12-16', 'Pusat Bahasa dan Multibudaya UNAIR', '/uploads/evaluation/toefl_file/1661485580_ITP TOEFL des 2021.jpeg', '2022-08-26 03:46:20', '2022-08-26 03:46:20', NULL),
(196, 196, NULL, 7.5, '2018-08-11', '2020-08-10', 'IALF Surabaya', '/uploads/evaluation/toefl_file/1661944328_IELTS 2018 Izzah.pdf', '2022-08-31 11:12:08', '2022-08-31 11:12:08', NULL),
(197, 197, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-01 08:34:34', '2022-09-01 08:34:34', NULL),
(198, 198, NULL, 6, '2018-01-13', '2020-01-13', 'IELTS-British Council', '/uploads/evaluation/toefl_file/1662605651_IELTS.pdf', '2022-09-08 02:54:11', '2022-09-08 02:54:11', NULL),
(199, 199, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-13 01:09:32', '2022-09-13 01:09:32', NULL),
(200, 200, NULL, 6, '2018-01-13', '2020-01-12', 'British Council', '/uploads/evaluation/toefl_file/1663808623_IELTS.pdf', '2022-09-22 01:03:43', '2022-09-22 01:03:43', NULL),
(201, 201, NULL, 503, '2022-10-05', '2024-10-05', 'ELPT Unair', '/uploads/evaluation/toefl_file/1665822167_Sert_TOEFL_5 Okt 22+Lglsr.pdf', '2022-10-15 08:22:47', '2022-10-15 08:22:47', NULL),
(202, 202, '0001-01-01', NULL, NULL, NULL, NULL, NULL, '2022-10-19 08:02:48', '2022-10-19 08:02:48', NULL),
(203, 203, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-20 02:58:58', '2022-10-20 02:58:58', NULL),
(204, 204, NULL, 480, '2022-07-20', '2024-10-23', 'Pusat Bahasa', '/uploads/evaluation/toefl_file/1666235706_cetak-formulir-sertifikat_elpt.pdf', '2022-10-20 03:15:06', '2022-10-20 03:15:06', NULL),
(205, 205, '2022-10-26', NULL, NULL, NULL, NULL, NULL, '2022-10-20 03:29:54', '2022-10-20 03:29:54', NULL),
(206, 206, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-20 03:46:14', '2022-10-20 03:46:14', NULL),
(207, 207, '2022-11-28', NULL, NULL, NULL, NULL, NULL, '2022-10-20 04:11:04', '2022-10-20 04:11:04', NULL),
(208, 208, NULL, 563, '2022-03-23', '2024-03-23', 'Pusat Bahasa dan Multibudaya UNAIR', '/uploads/evaluation/toefl_file/1666240825_Sertifikat ELPT_Zendy Wulan Ayu Widhi Prameswari.pdf', '2022-10-20 04:40:25', '2022-10-20 04:40:25', NULL),
(209, 209, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-20 05:09:20', '2022-10-20 05:09:20', NULL),
(210, 210, '2022-02-11', NULL, NULL, NULL, NULL, NULL, '2022-10-20 05:52:56', '2022-10-20 05:52:56', NULL),
(211, 211, NULL, 7, '2016-01-30', '2018-02-11', 'IALF Surabaya', '/uploads/evaluation/toefl_file/1666246833_IELTS Results.pdf', '2022-10-20 06:20:33', '2022-10-20 06:20:33', NULL),
(212, 212, NULL, 563, '2022-03-16', '2024-03-16', 'Pusat Bahasa Universitas Airlangga', '/uploads/evaluation/toefl_file/1666248331_ELPT KUKUH 2022.pdf', '2022-10-20 06:45:31', '2022-10-20 06:45:31', NULL),
(213, 213, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-20 07:00:36', '2022-10-20 07:00:36', NULL),
(214, 214, '2022-11-05', NULL, NULL, NULL, NULL, NULL, '2022-10-20 07:54:32', '2022-10-20 07:54:32', NULL),
(215, 215, NULL, 507, '2019-02-13', NULL, 'ACEPT UGM-Pusat Bahasa Fakultas Ilmu Budaya Universitas Gadjah Mada', '/uploads/evaluation/toefl_file/1666279342_Sertifikat ACEPT UGM [EDIT].pdf', '2022-10-20 15:22:22', '2022-10-20 15:22:22', NULL),
(216, 216, NULL, 7, '2019-02-23', '2021-03-08', 'ID035 BRITISH COUNCIL', '/uploads/evaluation/toefl_file/1666308662_Setho Hadisuyatmana_IELTS.pdf', '2022-10-20 23:31:02', '2022-10-20 23:31:02', NULL),
(217, 217, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-21 05:53:03', '2022-10-21 05:53:03', NULL),
(218, 218, NULL, 600, '2020-09-09', '2022-09-09', 'ETS', '/uploads/evaluation/toefl_file/1666358110_TOEFL Certificate 2020.pdf', '2022-10-21 13:15:10', '2022-10-21 13:15:10', NULL),
(219, 219, '2025-12-22', NULL, NULL, NULL, NULL, NULL, '2022-10-22 11:43:48', '2022-10-22 11:43:48', NULL),
(220, 220, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-22 18:49:44', '2022-10-22 18:49:44', NULL),
(221, 221, '2024-11-10', NULL, NULL, NULL, NULL, NULL, '2022-10-23 19:18:05', '2022-10-23 19:18:05', NULL),
(222, 222, '2024-11-11', NULL, NULL, NULL, NULL, NULL, '2022-10-23 19:30:05', '2022-10-23 19:30:05', NULL),
(223, 223, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-24 00:47:02', '2022-10-24 00:47:02', NULL),
(224, 224, '2023-10-21', NULL, NULL, NULL, NULL, NULL, '2022-10-24 01:10:41', '2022-10-24 01:10:41', NULL),
(225, 225, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-24 03:09:09', '2022-10-24 03:09:09', NULL),
(226, 226, '2024-01-01', NULL, NULL, NULL, NULL, NULL, '2022-10-24 03:13:11', '2022-10-24 03:13:11', NULL),
(227, 227, NULL, 477, '2022-10-19', '2024-10-19', 'Pusbamulya Unair', '/uploads/evaluation/toefl_file/1666582813_Sertifikat ELPT Rida Yutmani Melinda.pdf', '2022-10-24 03:40:13', '2022-10-24 03:40:13', NULL),
(228, 228, NULL, 6, '2017-03-25', '2022-03-25', 'IELTS di IALF', '/uploads/evaluation/toefl_file/1666584636_IELTS Certificate.pdf', '2022-10-24 04:10:36', '2022-10-24 04:10:36', NULL),
(229, 229, NULL, 6, '2017-03-25', '2022-03-25', 'IELTS di IALF', '/uploads/evaluation/toefl_file/1666585058_IELTS Certificate.pdf', '2022-10-24 04:17:38', '2022-10-24 04:17:38', NULL),
(230, 230, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-24 09:11:03', '2022-10-24 09:11:03', NULL),
(231, 231, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-25 01:25:29', '2022-10-25 01:25:29', NULL),
(232, 232, '2022-11-26', NULL, NULL, NULL, NULL, NULL, '2022-10-25 01:58:59', '2022-10-25 01:58:59', NULL),
(233, 233, '2022-11-30', NULL, NULL, NULL, NULL, NULL, '2022-10-25 04:49:11', '2022-10-25 04:49:11', NULL),
(234, 234, '2022-12-12', NULL, NULL, NULL, NULL, NULL, '2022-10-25 05:18:46', '2022-10-25 05:18:46', NULL),
(235, 235, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-25 07:26:50', '2022-10-25 07:26:50', NULL),
(236, 236, '2023-01-24', NULL, NULL, NULL, NULL, NULL, '2022-10-25 07:32:59', '2022-10-25 07:32:59', NULL),
(237, 237, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-25 09:06:29', '2022-10-25 09:06:29', NULL),
(238, 238, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-25 11:29:17', '2022-10-25 11:29:17', NULL),
(239, 239, NULL, 540, '2021-05-24', '2023-05-24', 'Pusat Bahasa dan Multibudaya Universitas Airlangga', '/uploads/evaluation/toefl_file/1666711721_Danti Nur Indiastuti.pdf', '2022-10-25 15:28:41', '2022-10-25 15:28:41', NULL),
(240, 240, NULL, 7, NULL, NULL, NULL, NULL, '2022-10-25 23:21:10', '2022-10-25 23:21:10', NULL),
(241, 241, NULL, 530, '2020-02-21', '2023-02-21', 'ETS', '/uploads/evaluation/toefl_file/1666742003_TOEFL-ITP.pdf', '2022-10-25 23:53:23', '2022-10-25 23:53:23', NULL),
(242, 242, '2025-12-20', NULL, NULL, NULL, NULL, NULL, '2022-10-26 02:56:10', '2022-10-26 02:56:10', NULL),
(243, 243, NULL, 477, '2022-03-16', '2024-03-16', 'Pusat Bahasa dan Multibudaya Universitas Airlangga', '/uploads/evaluation/toefl_file/1666756951_4 -- Toefl.pdf', '2022-10-26 04:02:31', '2022-10-26 04:02:31', NULL),
(244, 244, NULL, 517, '2021-03-25', '2025-03-25', 'Pusat Bahasa dan Multibudaya UNAIR', '/uploads/evaluation/toefl_file/1666758148_Farid Lusno - TOEFL ITP.pdf', '2022-10-26 04:22:28', '2022-10-26 04:22:28', NULL),
(245, 245, '2023-07-01', NULL, NULL, NULL, NULL, NULL, '2022-10-26 04:46:39', '2022-10-26 04:46:39', NULL),
(246, 246, '2022-11-30', NULL, NULL, NULL, NULL, NULL, '2022-10-26 05:28:49', '2022-10-26 05:28:49', NULL),
(247, 247, '2023-04-26', NULL, NULL, NULL, NULL, NULL, '2022-10-26 05:57:25', '2022-10-26 05:57:25', NULL),
(248, 248, '2023-02-19', NULL, NULL, NULL, NULL, NULL, '2022-10-26 06:43:44', '2022-10-26 06:43:44', NULL),
(249, 249, NULL, 530, '2022-03-18', '2024-03-18', 'PUSBA UNAIR', '/uploads/evaluation/toefl_file/1666769357_TOEFL PUSBA.pdf', '2022-10-26 07:29:18', '2022-10-26 07:29:18', NULL),
(250, 250, '2023-12-10', NULL, NULL, NULL, NULL, NULL, '2022-10-26 08:40:13', '2022-10-26 08:40:13', NULL),
(251, 251, '2025-10-14', NULL, NULL, NULL, NULL, NULL, '2022-10-26 08:48:50', '2022-10-26 08:48:50', NULL),
(252, 252, '2024-08-23', NULL, NULL, NULL, NULL, NULL, '2022-10-26 09:08:57', '2022-10-26 09:08:57', NULL),
(253, 253, '2023-01-26', NULL, NULL, NULL, NULL, NULL, '2022-10-26 09:52:53', '2022-10-26 09:52:53', NULL),
(254, 254, NULL, 503, '2020-02-07', '2022-12-30', 'Institut Teknologi Sepuluh Nopember Surabaya', '/uploads/evaluation/toefl_file/1666792058_Toefl Agus.png', '2022-10-26 13:47:38', '2022-10-26 13:47:38', NULL),
(255, 255, '2024-02-11', NULL, NULL, NULL, NULL, NULL, '2022-10-26 14:04:47', '2022-10-26 14:04:47', NULL),
(256, 256, NULL, 98, '2018-07-07', '2020-07-07', 'ETS TOEFL', '/uploads/evaluation/toefl_file/1666802530_iBT Score.pdf', '2022-10-26 16:42:10', '2022-10-26 16:42:10', NULL),
(257, 257, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-26 17:13:17', '2022-10-26 17:13:17', NULL),
(258, 258, NULL, 550, '2018-03-09', '2023-03-09', 'TOEFL ITP di UNAIR', '/uploads/evaluation/toefl_file/1666815960_TOEFL.jpeg', '2022-10-26 20:26:00', '2022-10-26 20:26:00', NULL),
(259, 259, '2023-01-27', NULL, NULL, NULL, NULL, NULL, '2022-10-27 02:13:50', '2022-10-27 02:13:50', NULL),
(260, 260, NULL, 517, '2021-10-14', '2023-10-14', 'UNAIR ELPT', '/uploads/evaluation/toefl_file/1666839676_TOEFL WRI 2021.pdf', '2022-10-27 03:01:16', '2022-10-27 03:01:16', NULL),
(261, 261, NULL, 540, '2019-04-12', '2021-04-12', 'ETS', '/uploads/evaluation/toefl_file/1666840393_9. Certificate of English ability.pdf', '2022-10-27 03:13:13', '2022-10-27 03:13:13', NULL),
(262, 262, NULL, 517, '2022-03-23', '2024-03-23', 'Pusat Bahasa dan Multi Budaya Universitas Airlangga', '/uploads/evaluation/toefl_file/1666840497_2164-KP Permohonan Laporan Progres Kemajuan Studi Semester Genap 2021-2022 dan Pengusulan SK Izin Belajar-Tugas Belajar.pdf', '2022-10-27 03:14:57', '2022-10-27 03:14:57', NULL),
(263, 263, '2023-01-01', NULL, NULL, NULL, NULL, NULL, '2022-10-27 03:17:32', '2022-10-27 03:17:32', NULL),
(264, 264, NULL, 510, '2021-07-17', '2023-07-17', 'ETS', '/uploads/evaluation/toefl_file/1666842361_17 - Sertifikat TOEFL ITP - Fatma Yasmin Mahdani.pdf', '2022-10-27 03:46:01', '2022-10-27 03:46:01', NULL),
(265, 265, '2025-12-19', NULL, NULL, NULL, NULL, NULL, '2022-10-27 04:01:53', '2022-10-27 04:01:53', NULL),
(266, 266, '2023-01-16', NULL, NULL, NULL, NULL, NULL, '2022-10-27 04:15:05', '2022-10-27 04:15:05', NULL),
(267, 267, '2023-01-27', NULL, NULL, NULL, NULL, NULL, '2022-10-27 04:32:22', '2022-10-27 04:32:22', NULL),
(268, 268, NULL, 513, '2021-07-06', '2023-07-06', 'Universitas Negeri Surabaya', '/uploads/evaluation/toefl_file/1666849961_Sertifikat TOEFL 2021.pdf', '2022-10-27 05:52:41', '2022-10-27 05:52:41', NULL),
(269, 269, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-27 06:09:29', '2022-10-27 06:09:29', NULL),
(270, 270, '2022-11-27', NULL, NULL, NULL, NULL, NULL, '2022-10-27 07:41:56', '2022-10-27 07:41:56', NULL),
(271, 271, '2025-08-01', NULL, NULL, NULL, NULL, NULL, '2022-10-27 07:54:48', '2022-10-27 07:56:16', NULL),
(272, 272, NULL, 6.5, '2020-11-07', '2022-11-07', 'IDP IELTS', '/uploads/evaluation/toefl_file/1666864135_IELTS WARNA.pdf', '2022-10-27 09:48:55', '2022-10-27 09:48:55', NULL),
(273, 273, '2023-02-27', NULL, NULL, NULL, NULL, NULL, '2022-10-27 09:57:16', '2022-10-27 09:57:16', NULL),
(274, 274, '2022-11-25', NULL, NULL, NULL, NULL, NULL, '2022-10-27 10:44:29', '2022-10-27 10:44:29', NULL),
(275, 275, '2022-12-08', NULL, NULL, NULL, NULL, NULL, '2022-10-27 11:07:58', '2022-10-27 11:07:58', NULL),
(276, 276, NULL, 613, '2018-12-07', '2024-12-07', 'ETS TOEFL ITP', '/uploads/evaluation/toefl_file/1666870545_TOEFL ITP Certificate of Achievement.pdf', '2022-10-27 11:35:45', '2022-10-27 11:35:45', NULL),
(277, 277, '2023-01-23', NULL, NULL, NULL, NULL, NULL, '2022-10-27 14:21:55', '2022-10-27 14:21:55', NULL),
(278, 278, '2025-08-27', NULL, NULL, NULL, NULL, NULL, '2022-10-27 15:12:52', '2022-10-27 15:12:52', NULL),
(279, 279, '2022-12-30', NULL, NULL, NULL, NULL, NULL, '2022-10-27 15:48:41', '2022-10-27 15:48:41', NULL),
(280, 280, '2026-01-28', NULL, NULL, NULL, NULL, NULL, '2022-10-28 01:40:19', '2022-10-28 01:40:19', NULL),
(281, 281, NULL, 540, '2018-05-25', '2020-05-25', 'PB FIB Univ. Airlangga', '/uploads/evaluation/toefl_file/1666921291_ITP TOEFL 25 mei 2018.pdf', '2022-10-28 01:41:31', '2022-10-28 01:41:31', NULL),
(282, 282, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-28 01:53:01', '2022-10-28 01:53:01', NULL),
(283, 283, NULL, 507, '2019-01-09', '2021-01-09', 'ITP', '/uploads/evaluation/toefl_file/1666923119_Toefl ITP Kristiawati.pdf', '2022-10-28 02:11:59', '2022-10-28 02:11:59', NULL),
(284, 284, NULL, 513, '2019-04-20', '2021-04-20', 'Mahidol University', '/uploads/evaluation/toefl_file/1666927596_TOEFL.jpg', '2022-10-28 03:26:36', '2022-10-28 03:26:36', NULL),
(285, 285, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-28 04:21:03', '2022-10-28 04:21:03', NULL),
(286, 286, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-28 05:40:09', '2022-10-28 05:40:09', NULL),
(287, 287, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-28 06:02:59', '2022-10-28 06:02:59', NULL),
(288, 288, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-28 06:32:11', '2022-10-28 06:32:11', NULL),
(289, 289, NULL, 507, '2022-08-19', NULL, 'Pinlab Unair', NULL, '2022-10-28 06:58:48', '2022-10-28 06:58:48', NULL),
(290, 290, NULL, 523, '2022-06-29', '2024-06-29', 'Universitas Airlangga', '/uploads/evaluation/toefl_file/1666940571_toefl.jpeg', '2022-10-28 07:02:52', '2022-10-28 07:02:52', NULL),
(291, 291, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-28 07:22:50', '2022-10-28 07:22:50', NULL),
(292, 292, NULL, 527, '2021-09-01', '2023-09-01', 'Pusat Bahasa UNAIR', '/uploads/evaluation/toefl_file/1666946852_elpt 2021.pdf', '2022-10-28 08:47:32', '2022-10-28 08:47:32', NULL),
(293, 293, NULL, 497, '2021-12-16', '2023-12-16', 'Pusat Bahasa dan Multibudaya UNAIR', '/uploads/evaluation/toefl_file/1666949505_ITP TOEFL des 2021.jpeg', '2022-10-28 09:31:45', '2022-10-28 09:31:45', NULL),
(294, 294, '2022-11-30', NULL, NULL, NULL, NULL, NULL, '2022-10-28 09:37:28', '2022-10-28 09:37:28', NULL),
(295, 295, '2022-12-12', NULL, NULL, NULL, NULL, NULL, '2022-10-28 10:27:06', '2022-10-28 10:27:06', NULL),
(296, 296, '2022-11-30', NULL, NULL, NULL, NULL, NULL, '2022-10-28 10:34:27', '2022-10-28 10:34:27', NULL),
(297, 297, NULL, 540, '2018-05-11', NULL, 'Pusat Bahasa FIB UNAIR', '/uploads/evaluation/toefl_file/1666959220_TOEFL-ITP-Sujayadi.pdf', '2022-10-28 12:13:40', '2022-10-28 12:13:40', NULL),
(298, 298, '2022-12-01', NULL, NULL, NULL, NULL, NULL, '2022-10-28 12:22:23', '2022-10-28 12:22:23', NULL),
(299, 299, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-28 13:00:30', '2022-10-28 13:00:30', NULL),
(300, 300, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-28 13:08:51', '2022-10-28 13:08:51', NULL),
(301, 301, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-28 13:13:35', '2022-10-28 13:13:35', NULL),
(302, 302, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-28 13:18:30', '2022-10-28 13:18:30', NULL),
(303, 303, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-28 13:23:47', '2022-10-28 13:23:47', NULL),
(304, 304, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-28 13:25:28', '2022-10-28 13:25:28', NULL),
(305, 305, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-28 13:25:34', '2022-10-28 13:25:34', NULL),
(306, 306, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-28 13:28:25', '2022-10-28 13:28:25', NULL),
(307, 307, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-28 13:31:48', '2022-10-28 13:31:48', NULL),
(308, 308, NULL, 510, '2019-10-12', '2021-10-12', 'PUSBA UNAIR', '/uploads/evaluation/toefl_file/1666966865_cyber elpt.png', '2022-10-28 14:21:05', '2022-10-28 14:21:05', NULL),
(309, 309, NULL, 563, '2021-03-31', '2023-03-31', 'Pusat Bahasa dan Multibudaya Universitas AIrlangga', '/uploads/evaluation/toefl_file/1666971487_ERNA DWI WAHYUNI- TOEFL-2021.pdf', '2022-10-28 15:38:07', '2022-10-28 15:38:07', NULL),
(310, 310, '2022-12-30', NULL, NULL, NULL, NULL, NULL, '2022-10-28 15:41:50', '2022-10-28 15:44:48', NULL),
(311, 311, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-28 16:20:20', '2022-10-28 16:20:20', NULL),
(312, 314, '2023-10-28', NULL, NULL, NULL, NULL, NULL, '2022-10-28 16:59:21', '2022-10-28 16:59:21', NULL),
(313, 315, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-28 23:03:52', '2022-10-28 23:03:52', NULL),
(314, 316, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-29 01:10:21', '2022-10-29 01:10:21', NULL),
(315, 317, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-29 01:12:20', '2022-10-29 01:12:20', NULL),
(316, 318, '2023-02-20', NULL, NULL, NULL, NULL, NULL, '2022-10-29 02:06:52', '2022-10-29 02:06:52', NULL),
(317, 318, '2023-02-20', NULL, NULL, NULL, NULL, NULL, '2022-10-29 02:07:46', '2022-10-29 02:07:46', NULL),
(318, 319, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-29 05:41:37', '2022-10-29 05:41:37', NULL),
(319, 320, NULL, 530, '2022-02-24', '2024-02-24', 'ETS', '/uploads/evaluation/toefl_file/1667091792_toefl.pdf', '2022-10-30 01:03:12', '2022-10-30 01:03:12', NULL),
(320, 321, NULL, 7, '2019-09-13', '2021-09-13', 'IALF Surabaya', NULL, '2022-10-31 02:44:51', '2022-10-31 02:44:51', NULL),
(321, 321, NULL, 7, '2019-09-13', '2021-09-13', 'IALF Surabaya', '/uploads/evaluation/toefl_file/1667352510_9.IELTS certificate.pdf', '2022-10-31 02:49:54', '2022-11-02 01:28:30', NULL),
(322, 322, NULL, 507, '2022-02-18', '2024-02-18', 'Pusba Universitas Airlangga', '/uploads/evaluation/toefl_file/1667204467_ELPT_DEVI RAHMA SOFIA.pdf', '2022-10-31 04:39:30', '2022-10-31 08:21:07', NULL),
(323, 323, NULL, 530, '2021-08-25', '2023-08-25', 'Pusat Bahasa Universitas Airlangga', '/uploads/evaluation/toefl_file/1667208605_BAYU LUKITO NUGROHO.pdf', '2022-10-31 09:30:05', '2022-10-31 09:30:05', NULL),
(324, 324, '2023-01-10', NULL, NULL, NULL, NULL, NULL, '2022-11-01 01:25:23', '2022-11-01 01:25:23', NULL),
(325, 325, '2023-05-01', NULL, NULL, NULL, NULL, NULL, '2022-11-01 06:42:59', '2022-11-01 06:42:59', NULL),
(326, 326, '2025-12-17', NULL, NULL, NULL, NULL, NULL, '2022-11-11 04:18:51', '2022-11-11 04:18:51', NULL),
(327, 327, NULL, 507, '2021-10-26', '2023-10-26', 'ETS Universitas Brawijaya', '/uploads/evaluation/toefl_file/1668751017_TOEFL ITP Budi Lutfitra Wisada.pdf', '2022-11-18 05:56:57', '2022-11-18 05:56:57', NULL),
(328, 328, NULL, 6, '2021-05-03', '2023-05-03', 'IDP South Jakarta', '/uploads/evaluation/toefl_file/1668753877_IELTS YUTIKA (2021).pdf', '2022-11-18 06:44:37', '2022-11-18 06:44:37', NULL),
(329, 329, NULL, 560, '2021-06-11', '2023-06-10', 'Unair', NULL, '2022-11-19 10:43:28', '2022-11-19 10:43:28', NULL),
(330, 330, NULL, 610, '2022-08-03', '2024-08-03', 'Pusat Bahasa dan Multibudaya Universitas Airlangga', '/uploads/evaluation/toefl_file/1669083142_sertifikat ELPT 2022 Nurina Hasanatuludhhiyah.pdf', '2022-11-22 02:12:22', '2022-11-22 02:12:22', NULL),
(331, 331, NULL, 507, '2021-07-23', '2023-07-23', 'Global Language Center ITS', '/uploads/evaluation/toefl_file/1669091096_Sertifikat TOEFL.pdf', '2022-11-22 04:24:56', '2022-11-22 04:24:56', NULL),
(332, 332, NULL, 453, '2022-06-17', '2024-06-17', 'Narotama Language Center', '/uploads/evaluation/toefl_file/1670300086_M YAN HANDITA.pdf', '2022-12-06 04:14:46', '2022-12-06 04:14:46', NULL),
(333, 333, NULL, 490, '2020-11-30', '2022-11-28', 'nlc narotama', '/uploads/evaluation/toefl_file/1670301116_toefl.jpeg', '2022-12-06 04:31:56', '2022-12-06 04:31:56', NULL),
(334, 334, '2024-01-01', NULL, NULL, NULL, NULL, NULL, '2022-12-06 08:40:31', '2022-12-06 08:40:31', NULL),
(335, 335, NULL, 540, '2021-10-10', '2023-10-10', 'pusat bahasa universitas airlangga', '/uploads/evaluation/toefl_file/1672371199_PULUNG SISWANTARA (1).pdf', '2022-12-30 03:33:19', '2022-12-30 03:33:19', NULL),
(336, 336, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-02 01:23:30', '2023-01-02 01:23:30', NULL),
(337, 337, NULL, 500, '2022-04-12', '2024-03-29', 'unair', '/uploads/evaluation/toefl_file/1672971435_Screenshot 2023-01-06 at 09.14.38.png', '2023-01-06 02:17:15', '2023-01-06 02:17:15', NULL),
(338, 338, NULL, 583, '2021-06-25', '2025-06-25', 'PUSAT BAHASA DAN MULTIBUDAYA UNIVERSITAS AIRLANGGA', NULL, '2023-01-10 15:13:04', '2023-01-10 15:13:04', NULL),
(339, 339, NULL, 647, '2021-12-16', '2023-12-16', 'ETS', '/uploads/evaluation/toefl_file/1675063066_Toefl ITP 2021.pdf', '2023-01-30 07:17:46', '2023-01-30 07:17:46', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `fakultas`
--

CREATE TABLE `fakultas` (
  `ID_FAKULTAS` int(11) NOT NULL,
  `ID_UNIT_KERJA` int(11) DEFAULT NULL COMMENT 'Hasil mapping dari cyber campus',
  `FAKULTAS` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `fakultas`
--

INSERT INTO `fakultas` (`ID_FAKULTAS`, `ID_UNIT_KERJA`, `FAKULTAS`) VALUES
(1, 221, 'Fakultas Kedokteran'),
(2, 242, 'Fakultas Kedokteran Gigi'),
(3, 243, 'Fakultas Hukum'),
(4, 244, 'Fakultas Ekonomi dan Bisnis'),
(5, 245, 'Fakultas Farmasi'),
(6, 246, 'Fakultas Kedokteran Hewan'),
(7, 247, 'Fakultas Ilmu Sosial Ilmu Politik'),
(8, 248, 'Fakultas Sains dan Teknologi'),
(9, 250, 'Fakultas Kesehatan Masyarakat'),
(10, 251, 'Fakultas Psikologi'),
(11, 252, 'Fakultas Ilmu Budaya'),
(12, 253, 'Fakultas Keperawatan'),
(13, 254, 'Fakultas Perikanan dan Kelautan'),
(14, 306, 'Fakultas Vokasi'),
(15, 690, 'Fakultas Teknologi Maju dan Multidisiplin'),
(16, 498, 'Lembaga Pengembangan dan Pelatihan Terpadu'),
(17, 2, 'Direktorat Pendidikan'),
(18, 30, 'Direktorat Sistem Informasi'),
(19, 31, 'Direktorat Sumberdaya Manusia'),
(20, 32, 'Direktorat Keuangan'),
(21, 33, 'Direktorat Kemahasiswaan'),
(22, 688, 'Direktorat Sarana Prasarana dan Lingkungan'),
(23, 1, 'Perpustakaan'),
(24, 22, 'Lembaga Penelitian dan Inovasi'),
(25, 24, 'Pusat Penerbitan dan Percetakan'),
(26, 34, 'Sekretaris Universitas'),
(27, 35, 'Badan Penjamin Mutu'),
(28, 36, 'BPP'),
(29, 37, 'BPI'),
(30, 38, 'LPT'),
(31, 39, 'Airlangga Global Engagement (AGE)'),
(32, 40, 'Rumah Sakit Universitas Airlangga'),
(33, 41, 'PINLABS'),
(34, 42, 'PLK'),
(35, 43, 'PPMB'),
(36, 44, 'Asrama Mahasiswa UA'),
(37, 699, 'PIHM'),
(38, 296, 'Pusat Pembinaan Karir dan Kewirausahaan'),
(39, 297, 'Rumah Sakit Khusus Infeksi'),
(40, 344, 'Lembaga Pengembangan Bisnis dan Inkubasi'),
(41, 367, 'Institut Ilmu Kesehatan'),
(42, 348, 'Pusat Pengembangan Jurnal dan Publikasi Ilmiah'),
(43, 370, 'Lembaga Pengabdian Kepada Masyarakat'),
(44, 377, 'Pusat Penelitian dan Pengembangan Stem Cell'),
(45, 603, 'Rumah Sakit Hewan Pendidikan'),
(46, 604, 'Rumah Sakit Gigi dan Mulut Pendidikan'),
(47, 605, 'Pusat Inovasi Pembelajaran dan Sertifikasi'),
(48, 606, 'Pusat Pengelolaan Dana Sosial'),
(49, 373, 'Pusat Layanan Pengadaan Barang dan Jasa'),
(50, 490, 'Lembaga Sertifikasi Profesi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `file_upload`
--

CREATE TABLE `file_upload` (
  `ID_FILE` int(11) NOT NULL,
  `ID_DAFTAR` int(11) NOT NULL,
  `NAMA_FILE` varchar(100) NOT NULL,
  `ID_JENISFILE` varchar(20) DEFAULT NULL,
  `UKURAN_FILE` int(11) DEFAULT NULL,
  `TIPE_FILE` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `history`
--

CREATE TABLE `history` (
  `ID_HISTORY` int(11) NOT NULL,
  `ID_DAFTAR` int(11) NOT NULL,
  `ID_STATUS` char(4) NOT NULL,
  `STATUS_PUBLISH` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `izin_belajar`
--

CREATE TABLE `izin_belajar` (
  `ID_IB` varchar(16) NOT NULL DEFAULT '',
  `PERGURUAN_TINGGI_PENYELENGGARA` varchar(80) DEFAULT NULL,
  `NAMA_BIDANG_PERGURUAN_TINGGI` varchar(50) DEFAULT NULL,
  `TGL_SUBMIT_IB` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `MULAI_IB` date DEFAULT NULL,
  `SELESAI_IB` date DEFAULT NULL,
  `NIK` varchar(20) DEFAULT NULL,
  `ID_JENJANG` char(6) DEFAULT NULL,
  `ID_STATUS_SL` int(4) NOT NULL,
  `HAS_REACTIVE` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `izin_belajar`
--

INSERT INTO `izin_belajar` (`ID_IB`, `PERGURUAN_TINGGI_PENYELENGGARA`, `NAMA_BIDANG_PERGURUAN_TINGGI`, `TGL_SUBMIT_IB`, `MULAI_IB`, `SELESAI_IB`, `NIK`, `ID_JENJANG`, `ID_STATUS_SL`, `HAS_REACTIVE`) VALUES
('IB000001', 'Universitas Airlangga', 'Sains Veteriner', '2022-01-24 08:44:41', '2018-01-09', NULL, '199110152015043201', 'S3', 7, 0),
('IB000002', 'Universitas Airlangga', 'Keperawatan', '2022-01-25 04:37:40', '2019-09-01', '0000-00-00', '198509012009022012', 'S3', 13, 0),
('IB000003', 'Universitas Airlangga', 'Ilmu Kedokteran Dasar', '2022-01-26 02:48:32', '2020-09-01', NULL, '199008232015043201', 'S2', 2, 0),
('IB000004', 'Universitas Airlangga', 'Psikologi Profesi', '2022-01-26 07:23:04', '2018-01-01', '0000-00-00', '198906112018013101', 'S2', 13, 0),
('IB000005', 'Universitas Airlangga', 'Pengembangan Sumber Daya Manusia', '2022-01-28 03:35:49', '2020-01-27', '0000-00-00', '199206042018013101', 'S2', 7, 0),
('IB000006', 'Universitas Terbuka', 'Ilmu Administrasi Publik', '2022-01-31 04:37:22', '2021-09-01', '0000-00-00', '198609012018013101', 'S1', 7, 0),
('IB000007', 'Universitas Terbuka', 'Manajemen', '2022-01-31 06:30:49', '2021-09-01', '0000-00-00', '198009162006041002', 'S1', 7, 0),
('IB000008', 'Universitas Airlangga', 'Magister Psikologi Profesi', '2022-02-02 06:17:17', '2018-01-01', NULL, '198906112018013101', 'S2', 1, 0),
('IB000009', 'Universitas Airlangga', 'Magister Psikologi Profesi', '2022-02-02 07:35:54', '2018-01-01', NULL, '198906112018013101', 'S2', 13, 0),
('IB000010', 'Universitas Airlangga', 'Magister Psikologi Profesi', '2022-02-02 07:37:25', '2018-01-01', NULL, '198906112018013101', 'S2', 1, 0),
('IB000011', 'Institut Teknologi Sepuluh Nopember', 'Teknik Elektro', '2022-02-02 08:11:39', '2021-02-01', NULL, '199003122016033101', 'S3', 2, 0),
('IB000012', 'Universitas Airlangga', 'Sains Ekonomi Islam', '2022-02-03 09:46:08', '2022-02-15', '2024-02-15', '199512052021025101', 'S2', 1, 0),
('IB000013', 'Universitas Terbuka', 'Ilmu Administrasi Negara', '2022-02-06 09:43:19', '2021-09-01', '2025-09-01', '198203252018013101', 'S1', 1, 0),
('IB000014', 'Universitas Airlangga', 'Ilmu Hukum', '2022-02-09 03:16:19', '2020-09-01', NULL, '198104072005011001', 'S3', 7, 0),
('IB000015', 'Fakultas Kedikteran Unair', 'Ilmu Kedokteran', '2022-02-09 03:25:34', '2021-09-01', '0000-00-00', '198110062008012018', 'S3', 13, 0),
('IB000016', 'unair', 'Ilmu Penyakit Mulut', '2022-02-09 03:28:41', '2020-01-09', NULL, '198812122015042001', 'Sp2', 13, 0),
('IB000017', 'UNIVERSITAS AIRLANGGA', 'ILMU SOSIAL', '2022-02-09 03:41:34', '2021-02-01', '0000-00-00', '198412152009122007', 'S3', 2, 0),
('IB000018', 'unair', 'Ilmu Kedokteran Gigi', '2022-02-09 03:47:26', '2018-01-09', NULL, '198103062006041002', 'S3', 13, 0),
('IB000019', 'Universitas Terbuka', 'Manajemen', '2022-02-09 03:56:10', '2021-09-01', NULL, '199905172020095101', 'S1', 13, 0),
('IB000020', 'Universitas Narotama Surabaya', 'Teknik Informatika', '2022-02-09 03:56:23', '2021-09-01', NULL, '199905072019105101', 'S1', 1, 0),
('IB000021', 'Universitas Terbuka', 'Akuntansi', '2022-02-09 04:01:00', '2020-03-01', NULL, '197812252018013101', 'S1', 2, 0),
('IB000022', 'Universitas Terbuka', 'Akuntansi', '2022-02-09 04:21:39', '2020-03-01', NULL, '198604182018013201', 'S1', 2, 0),
('IB000023', 'Universitas Terbuka (UPBJJ Surabaya)', ' Ilmu Administrasi Negara', '2022-02-09 04:27:03', '2019-11-18', NULL, '198106302007011001', 'S1', 13, 0),
('IB000024', 'Universitas Terbuka', 'Akuntansi', '2022-02-09 04:27:04', '2020-03-01', NULL, '199010272018013101', 'S1', 1, 0),
('IB000025', 'Universitas Terbuka (UPBJJ Surabaya)', ' Ilmu Administrasi Negara', '2022-02-09 04:29:04', '2019-11-18', NULL, '198106302007011001', 'S1', 13, 0),
('IB000026', 'Universitas Terbuka', 'Akuntansi', '2022-02-09 04:34:24', '2020-03-01', NULL, '198011122018013101', 'S1', 13, 0),
('IB000027', 'Fakulats Kedokteran Universitas Airlangga', 'Ilmu Kedokteran', '2022-02-11 05:40:26', '2020-04-01', '0000-00-00', '198302142010122003', 'S3', 13, 0),
('IB000028', 'UNIVERSITAS TERBUKA', 'BIOLOGI S1', '2022-02-16 03:52:31', '2020-11-02', '2025-11-28', '199003312018013101', 'S1', 3, 0),
('IB000029', 'Universitas Terbuka', 'Biologi', '2022-02-16 06:07:54', '2020-11-02', NULL, '199508212018035101', 'S1', 3, 0),
('IB000030', 'Universitas Terbuka', 'Manajemen', '2022-02-16 06:23:08', '2021-09-07', NULL, '198412072018035101', 'S1', 13, 0),
('IB000031', 'Universitas Terbuka', 'Manajemen', '2022-02-16 06:24:58', '2021-09-07', NULL, '198412072018035101', 'S1', 13, 0),
('IB000032', 'Universitas Terbuka', 'Manajemen', '2022-02-16 07:07:58', '2020-11-02', NULL, '198412072018035101', 'S1', 1, 0),
('IB000033', 'Universitas Terbuka', 'Manajemen', '2022-02-16 07:16:42', '2020-11-02', NULL, '198412072018035101', 'S1', 1, 0),
('IB000034', 'Universitas Terbuka ', 'Biologi', '2022-02-17 07:47:11', '2020-11-02', NULL, '199602112019015101', 'S1', 3, 0),
('IB000035', 'Universitas Terbuka', 'Manajemen S1', '2022-02-22 04:06:56', '2020-11-02', NULL, '198412072018035101', 'S1', 13, 0),
('IB000036', 'Universitas Terbuka Surabaya', 'Manajemen S1', '2022-02-22 05:30:15', '2020-11-07', NULL, '198412072018035101', 'S1', 13, 0),
('IB000037', 'Universitas Terbuka Surabaya', 'Manajemen S1', '2022-02-22 05:31:52', '2020-11-07', NULL, '198412072018035101', 'S1', 1, 0),
('IB000038', 'Universitas Terbuka Surabaya', 'Manajemen S1', '2022-02-22 05:36:41', '2020-11-07', NULL, '198412072018035101', 'S1', 1, 0),
('IB000039', 'Universitas Terbuka Surabaya', 'Manajemen S1', '2022-02-22 05:48:17', '2020-11-07', NULL, '198412072018035101', 'S1', 1, 0),
('IB000040', 'Universitas Terbuka Surabaya', 'Ilmu Administrasi Negara', '2022-02-22 07:35:01', '2022-03-12', NULL, '198505212018013101', 'S1', 13, 0),
('IB000041', 'Universitas Terbuka', 'Administrasi Negara', '2022-02-22 08:22:49', '2022-03-01', NULL, '198205092018013101', 'S1', 13, 0),
('IB000042', 'Universitas Terbuka SURABAYA', 'Manajeman S1', '2022-02-23 02:22:00', '2020-11-07', NULL, '198412072018035101', 'S1', 13, 0),
('IB000043', 'Universitas Terbuka', 'Managemen', '2022-02-23 02:24:15', '2020-08-30', NULL, '198412072018035101', 'S1', 1, 0),
('IB000044', 'UPBJJ Universitas Terbuka (UT) Surabaya', 'Ilmu Perpustakaan', '2022-02-23 09:24:18', '2021-10-18', '0000-00-00', '199107132018013201', 'S1', 2, 0),
('IB000045', 'Universitas Terbuka', 'Administrasi Negara', '2022-02-23 09:34:57', '2022-03-01', NULL, '198205092018013101', 'S1', 13, 0),
('IB000046', 'Universitas Terbuka Surabaya', 'Ilmu Administrasi Negara', '2022-02-23 09:49:17', '2022-03-12', NULL, '198505212018013101', 'S1', 13, 0),
('IB000047', 'Universitas Terbuka Surabaya', 'Ilmu Administrasi Negara', '2022-02-23 09:49:17', '2022-03-12', NULL, '198505212018013101', 'S1', 13, 0),
('IB000048', 'Universitas Airlangga', 'Keperawatan', '2022-02-23 10:58:22', '2022-09-01', '2025-08-31', '198705022015042002', 'S3', 3, 0),
('IB000049', 'Universitas Terbuka Surabaya', 'Ilmu Administrasi Negara', '2022-02-23 11:28:28', '2022-03-12', NULL, '198505212018013101', 'S1', 13, 0),
('IB000050', 'Universitas Airlangga', 'Keperawatan', '2022-02-23 13:12:54', '2022-09-01', '2025-08-30', '198702232016113201', 'S3', 3, 0),
('IB000051', 'Universitas Airlangga', 'Keperawatan', '2022-02-24 01:53:51', '2022-09-01', '2025-09-30', '198406062015042001', 'S3', 3, 0),
('IB000052', 'UNIVERSITAS AIRLANGGA', 'KESEHATAN MASYARAKAT', '2022-03-01 06:44:38', '2018-09-06', NULL, '199202162018013101', 'S2', 13, 0),
('IB000053', 'Universitas Terbuka', 'Manajemen S1', '2022-03-02 03:21:50', '2020-11-02', NULL, '198412072018035101', 'S1', 13, 0),
('IB000054', 'Universitas Terbuka (UT)', 'Manajemen Ekonomi', '2022-03-11 06:18:59', '2020-11-01', NULL, '198412072018035101', 'S1', 1, 0),
('IB000055', 'Universitas Terbuka (UT)', 'Administrasi Negara', '2022-03-11 06:38:45', '2019-09-01', NULL, '197706102008102001', 'S1', 1, 0),
('IB000056', 'Universitas Terbuka', 'Biologi', '2022-03-11 08:32:00', '2018-09-10', NULL, '198005172018013201', 'S1', 13, 0),
('IB000057', 'ITS', 'Teknik Elektro', '2022-03-13 01:21:11', '2022-08-23', '0000-00-00', '198705212018083201', 'S3', 2, 0),
('IB000058', 'Universitas Terbuka Surabaya', 'Manajemen', '2022-03-15 09:34:52', '2019-09-02', NULL, '198311252018035101', 'S1', 13, 0),
('IB000059', 'Universitas terbuka', 'Manajemen', '2022-03-19 02:04:49', '2021-06-01', NULL, '198805162018013101', 'S1', 13, 0),
('IB000060', 'Universitas Airlangga', 'Kesehatan dan Keselamatan Kerja', '2022-03-24 03:19:43', '2022-08-15', '2023-08-15', '198311082018013201', 'S2', 2, 0),
('IB000061', 'Universitas Muhammadiyah Surabaya', 'Manajemen', '2022-03-28 08:46:03', '2018-02-18', NULL, '198509082018013101', 'S1', 13, 0),
('IB000062', 'Universitas Terbuka', 'Ilmu Administrasi Negara', '2022-03-30 02:15:51', '2022-03-01', NULL, '198205092018013101', 'S1', 13, 0),
('IB000063', 'universitas terbuka', 'manajemen', '2022-03-31 02:04:18', '2022-03-31', NULL, '198805162018013101', 'S1', 13, 0),
('IB000064', 'Universitas Airlangga', 'Keperawatan', '2022-04-01 05:22:49', '2022-09-01', '2025-08-30', '198601252016113201', 'S3', 3, 0),
('IB000065', 'Universitas Airlangga', 'Keperawatan', '2022-04-01 05:39:35', '2022-09-01', '2025-08-31', '198606022015042001', 'S3', 3, 0),
('IB000066', 'Universitas Airlangga', 'Ilmu Keperawatan', '2022-04-01 08:13:24', '2022-09-01', '2025-08-30', '198611092015042002', 'S3', 3, 0),
('IB000067', 'Universitas Airlangga', 'Ilmu Akuntansi', '2022-04-05 04:47:27', '2022-08-01', '2026-08-01', '199001132015043101', 'S3', 2, 0),
('IB000068', 'Universitas Airlangga', 'Ilmu Akuntansi', '2022-04-05 06:48:50', '2022-08-01', '2026-08-01', '198704252016033201', 'S3', 2, 0),
('IB000069', 'Universitas Terbuka', 'Manajemmen', '2022-04-08 04:38:00', '2022-01-03', NULL, '197401262018035101', 'S1', 1, 0),
('IB000070', 'Universitas Terbuka', 'Manajemmen', '2022-04-08 06:21:49', '2022-03-01', NULL, '199412162018035101', 'S1', 1, 0),
('IB000071', 'UPBJJ - UNIVERSITAS TERBUKA SURABAYA', 'ILMU ADMINISTRASI NEGARA', '2022-04-16 07:37:25', '2022-03-18', NULL, '198505212018013101', 'S1', 1, 0),
('IB000072', 'UNIVERSITAS TERBUKA', 'ILMU HUKUM', '2022-04-16 12:54:18', '2022-03-13', NULL, '198504082018013101', 'S1', 13, 0),
('IB000073', 'UNIVERSITAS TERBUKA', 'ILMU HUKUM', '2022-04-16 13:11:56', '2022-03-13', NULL, '198504082018013101', 'S1', 13, 0),
('IB000074', 'UNIVERSITAS TERBUKA', 'ILMU HUKUM', '2022-04-16 13:18:00', '2022-03-13', NULL, '198504082018013101', 'S1', 13, 0),
('IB000075', 'UNIVERSITAS TERBUKA', 'ILMU HUKUM', '2022-04-16 13:26:25', '2022-03-13', NULL, '198504082018013101', 'S1', 13, 0),
('IB000076', 'Universitas Terbuka Surabaya', 'Administrasi Negara', '2022-04-17 02:26:25', '2022-03-30', NULL, '198212212018013101', 'S1', 13, 0),
('IB000077', 'UNIVERSITAS TERBUKA', 'ILMU HUKUM', '2022-04-19 15:44:20', '2022-03-13', NULL, '198504082018013101', 'S1', 1, 0),
('IB000078', 'Universitas Airlangga', 'Manajemen Pemasaran', '2022-04-26 02:47:38', '2022-08-25', '2027-09-13', '197602192021093101', 'S3', 13, 0),
('IB000079', 'Universitas Airlangga', 'MIPA', '2022-04-29 13:01:54', '2022-09-01', '0000-00-00', '198206062007101001', 'S3', 13, 0),
('IB000080', 'Universitas Terbuka Surabaya', 'Administrasi Negara', '2022-05-04 06:08:26', '2022-03-30', NULL, '198212212018013101', 'S1', 13, 0),
('IB000081', 'Universitas Terbuka Surabaya', 'Administrasi Negara', '2022-05-04 06:22:19', '2022-03-30', NULL, '198212212018013101', 'S1', 1, 0),
('IB000082', 'Universitas Airlangga', 'MIPA', '2022-05-06 12:23:30', '2022-09-01', '0000-00-00', '198002172005012001', 'S3', 13, 0),
('IB000083', 'UNIVERSITAS AIRLANGGA', 'KESEHATAN MASYARAKAT', '2022-05-07 23:33:27', '2022-09-01', '0000-00-00', '198604122015043101', 'S3', 1, 0),
('IB000084', 'Universitas Airlangga', 'Sistem Informasi', '2022-05-09 04:10:24', '2022-08-01', NULL, '197101042008121001', 'S3', 13, 0),
('IB000085', 'Universitas Airlangga', 'Psikologi', '2022-05-10 03:04:17', '2022-08-01', '2026-08-01', '198510142010121002', 'S3', 1, 0),
('IB000086', 'Universitas Airlangga', 'Farmasi', '2022-05-18 12:55:49', '2022-02-15', '0000-00-00', '197205021999031002', 'S3', 2, 0),
('IB000087', 'Institut TEknologi Sepuluh November Surabaya', 'Ilmu Komputer', '2022-05-24 00:44:30', '2022-09-05', NULL, '197107122008122001', 'S3', 13, 0),
('IB000088', 'Universitas Terbuka', 'Manajemen ', '2022-05-25 03:28:23', '2019-10-07', '0000-00-00', '198104082008101001', 'S1', 13, 0),
('IB000089', 'Universitas Airlangga', 'Akuntansi', '2022-05-25 04:37:23', '2022-08-01', '0000-00-00', '198912262016113201', 'S3', 2, 0),
('IB000090', 'UNiversitas Terbuka', 'Ilmu Informasi Dan perpustakaan', '2022-05-27 01:24:53', '2021-03-22', NULL, '199006292018013201', 'S1', 13, 0),
('IB000091', 'Universitas Airlangga', 'Ilmu Ekonomi Islam', '2022-05-27 11:41:02', '2022-08-01', '0000-00-00', '199207072018083201', 'S3', 2, 0),
('IB000092', 'Universitas Airlangga', 'Kebijakan Publik', '2022-05-30 03:48:12', '2020-09-21', '0000-00-00', '199009182018013101', 'S2', 13, 0),
('IB000093', 'Universitas Airlangga', 'Ilmu Keperawatan', '2022-05-30 03:56:50', '2021-12-02', NULL, '198106262014061003', 'S3', 13, 0),
('IB000094', 'Universitas Airlangga', 'Keperawatan', '2022-05-30 06:34:45', '2018-01-09', '2022-12-31', '196806281991031006', 'S3', 13, 0),
('IB000095', 'Universitas Airlangga', 'Keperawatan', '2022-05-30 06:34:47', '2019-01-09', '2024-08-01', '196604141992031010', 'S3', 13, 0),
('IB000096', 'UNIVERSITAS AIRLANGGA', 'KEPERAWATAN', '2022-05-30 07:17:18', '2019-09-01', NULL, '197106011995032003', 'S3', 13, 0),
('IB000097', 'Universitas Airlangga', 'Keperawatan', '2022-05-31 04:02:13', '2021-02-01', '2023-02-28', '198807132012122002', 'Sp1', 13, 0),
('IB000098', 'Universitas Airlangga', 'Ilmu Keperawatan', '2022-05-31 06:35:38', '2021-02-02', NULL, '198106262014061003', 'S3', 13, 0),
('IB000099', 'Universitas Airlangga', 'Ilmu Keperawatan', '2022-05-31 06:37:41', '2021-02-19', NULL, '198106262014061003', 'S3', 13, 0),
('IB000100', 'Universitas Airlangga', 'Ilmu Keperawatan', '2022-06-02 04:20:30', '2019-08-12', NULL, '197008141995032002', 'S2', 13, 0),
('IB000101', 'Universitas Narotama', 'Sistem Informasi', '2022-06-02 09:22:44', '2021-06-14', NULL, '199407232018013101', 'S1', 13, 0),
('IB000102', 'UPBJJ - UNIVERSITAS TERBUKA SURABAYA', 'ILMU ADMINISTRASI NEGARA', '2022-06-06 03:51:40', '2022-03-01', NULL, '198808112018013201', 'S1', 13, 0),
('IB000103', 'Universitas Terbuka', 'Ilmu Administrasi Negara', '2022-06-06 04:17:51', '2022-03-01', NULL, '198808112018013201', 'S1', 1, 0),
('IB000104', 'Universitas Terbuka', 'Ilmu Administrasi Negara', '2022-06-06 04:22:29', '2022-03-01', NULL, '198205092018013101', 'S1', 1, 0),
('IB000105', 'Universitas Terbuka', 'Ilmu Administrasi Negara', '2022-06-07 07:56:35', '2022-03-01', NULL, '198304182018013101', 'S1', 1, 0),
('IB000106', 'Universitas Airlangga', 'Sains Veterinar', '2022-06-07 10:42:30', '2022-02-21', '0000-00-00', '198603012016113101', 'S3', 3, 0),
('IB000107', 'Universitas terbuka', 'Ilmu hukum', '2022-06-08 06:00:02', '2022-01-17', NULL, '198812152018013101', 'S1', 13, 0),
('IB000108', 'Universitas Airlangga', 'Kesehatan Masyarakat', '2022-06-11 03:58:18', '2022-08-01', NULL, '198711112015041005', 'S3', 1, 0),
('IB000109', 'UNIVERSITAS AIRLANGGA', 'KEDOKTERAN', '2022-06-13 04:20:13', '2019-01-02', '2022-12-30', '198207122015042001', 'Sp2', 13, 0),
('IB000110', 'Fakultas Kedokteran Universitas Airlangga', 'S3 Kedokteran', '2022-06-13 04:43:04', '2016-04-01', NULL, '197905192009122003', 'S3', 13, 0),
('IB000111', 'Universitas Airlangga', 'Sains Veteriner', '2022-06-14 03:28:23', '2022-02-21', NULL, '197505222003121002', 'S3', 2, 0),
('IB000112', 'Universitas Airlangga', 'Ilmu Kedokteran', '2022-06-16 07:46:05', '2022-08-15', NULL, '198005252005012004', 'S3', 1, 0),
('IB000113', 'Universitas Airlangga', 'Keperawatan', '2022-06-21 01:09:22', '2022-09-01', NULL, '198711022015042003', 'S3', 2, 0),
('IB000114', 'Universitas Airlangga', 'Ilmu Sosial', '2022-06-22 04:40:18', '2022-03-07', NULL, '197505262003121006', 'S3', 1, 0),
('IB000115', 'Universitas Airlangga', 'Ilmu Sosial', '2022-06-23 10:22:34', '2022-03-07', NULL, '198805012016113201', 'S3', 1, 0),
('IB000116', 'universitas terbuka', 'ilmu hukum', '2022-06-24 07:19:26', '2022-01-17', NULL, '198812152018013101', 'S1', 13, 0),
('IB000117', 'universitas terbuka', 'ilmu hukum', '2022-06-24 07:23:28', '2022-01-17', NULL, '198812152018013101', 'S1', 13, 0),
('IB000118', 'Universitas Terbuka', 'Ilmu Hukum', '2022-06-24 08:23:10', '2022-01-17', NULL, '198812152018013101', 'S1', 13, 0),
('IB000119', 'universitas terbuka', 'manajemen', '2022-06-24 08:38:21', '2022-01-17', NULL, '198805162018013101', 'S1', 1, 0),
('IB000120', 'Universitas Airlangga', 'Sosiologi', '2022-06-26 13:48:37', '2022-09-01', NULL, '198701102015042001', 'S3', 13, 0),
('IB000121', 'Universitas Airlangga', 'Sosiologi', '2022-06-26 23:46:55', '2022-09-01', NULL, '198701102015042001', 'S3', 13, 0),
('IB000122', 'Universitas Terbuka', 'Ilmu Hukum', '2022-06-27 02:40:15', '2022-01-17', NULL, '198812152018013101', 'S1', 1, 0),
('IB000123', 'Universitas Airlangga', 'Sosiologi', '2022-06-27 05:01:06', '2022-09-01', NULL, '198701102015042001', 'S3', 1, 0),
('IB000124', 'Universitas Airlangga', 'S3 Ilmu Sosial', '2022-06-28 22:47:51', '2022-09-01', NULL, '198701102015042001', 'S3', 13, 0),
('IB000125', 'Universitas Airlangga', 'S3 Ilmu Sosial', '2022-06-28 22:51:27', '2022-09-01', NULL, '198701102015042001', 'S3', 1, 0),
('IB000126', 'universitas terbuka', 'ilmu hukum', '2022-06-29 11:31:53', '2022-01-18', NULL, '199310062018013101', 'S1', 13, 0),
('IB000127', 'universitas terbuka', 'ilmu hukum', '2022-06-29 11:40:50', '2022-01-18', NULL, '199310062018013101', 'S1', 13, 0),
('IB000128', 'Universitas Terbuka', 'Ilmu Hukum', '2022-06-29 12:08:14', '2022-01-18', NULL, '199310062018013101', 'S1', 1, 0),
('IB000129', 'Universitas Airlangga', 'Ilmu Sosial', '2022-07-03 03:10:06', '2022-09-01', NULL, NULL, 'S3', 13, 0),
('IB000130', 'Universitas Airlangga', 'Ilmu Sosial', '2022-07-03 03:10:47', '2022-09-01', NULL, '198701102015042001', 'S3', 13, 0),
('IB000131', 'Universitas Airlangga', 'Ilmu Sosial', '2022-07-03 03:16:14', '2022-09-01', NULL, '198701102015042001', 'S3', 13, 0),
('IB000132', 'UNIVERSITAS AIRLANGGA', 'ILMU SOSIAL', '2022-07-03 03:18:51', '2022-09-01', NULL, '198701102015042001', 'S3', 13, 0),
('IB000133', 'Universitas Airlangga', 'Ilmu-ilmu Sosial', '2022-07-05 03:54:00', '2022-01-03', NULL, '199507152022013101', 'S2', 13, 0),
('IB000134', 'Universitas Airlangga', 'Ilmu-ilmu Sosial', '2022-07-05 04:21:39', '2022-01-03', NULL, '199507152022013101', 'S3', 13, 0),
('IB000135', 'Universitas Terbuka Surabaya', 'Biologi', '2022-07-12 10:17:29', '2018-07-12', NULL, '198005172018013201', 'S1', 13, 0),
('IB000136', 'Universitas Terbuka Surabaya', 'Biologi', '2022-07-15 09:22:41', '2018-08-01', NULL, '198005172018013201', 'S1', 1, 0),
('IB000137', 'Universitas Terbuka Surabaya', 'Biologi', '2022-07-15 09:39:30', '2018-08-01', NULL, '198005172018013201', 'S1', 1, 0),
('IB000138', 'Universitas Terbuka', 'Biologi', '2022-07-19 08:37:18', '2018-08-22', NULL, '198005172018013201', 'S1', 1, 0),
('IB000139', 'Universitas Terbuka Kota Tanggerang Selatan', 'Manajemen', '2022-07-20 04:17:18', '2020-02-04', NULL, '197411092018035201', 'S1', 13, 0),
('IB000140', 'Universitas Terbuka Kota Tanggerang Selatan', 'Manajemen', '2022-07-20 05:36:55', '2020-02-04', NULL, '197411092018035201', 'S1', 1, 0),
('IB000141', 'Universitas Terbuka Kota Tanggerang Selatan', 'Manajemen', '2022-07-20 06:25:11', '2020-02-04', NULL, '197411092018035201', 'S1', 13, 0),
('IB000142', 'Universitas Airlangga ', 'Ilmu Kedokteran ', '2022-07-25 04:10:16', '2021-12-30', NULL, '198002022006042002', 'S3', 13, 0),
('IB000143', 'Universitas Airlangga', 'Ilmu Kedokteran', '2022-07-25 04:18:02', '2021-12-30', NULL, '198008172008012016', 'S3', 13, 0),
('IB000144', 'Universitas Airlangga', 'Biologi', '2022-07-27 01:03:55', '2019-08-20', NULL, '197003011994121001', 'S3', 13, 0),
('IB000145', 'Universitas Airlangga ', 'Ilmu Kedokteran ', '2022-07-29 01:16:10', '2022-02-01', '2025-07-29', '197810222008011005', 'S3', 13, 0),
('IB000146', 'Universitas Airlangga', 'S3 Ilmu Akuntansi', '2022-07-29 07:21:43', '2022-01-24', NULL, '198508242019031004', 'S3', 13, 0),
('IB000147', 'UNIVERSITAS AIRLANGGA', 'EKONOMI ISLAM', '2022-08-01 07:11:33', '2021-02-01', NULL, '197709192008012013', 'S3', 13, 0),
('IB000148', 'Universitas Airlangga', 'Sistem Informasi', '2022-08-02 03:40:06', '2020-08-01', NULL, '197801262006041001', 'S3', 13, 0),
('IB000149', 'Universitas Airlangga ', 'Sains Veteriner ', '2022-08-08 04:34:43', '2021-02-01', '0000-00-00', '197712202015043101', 'S3', 1, 0),
('IB000150', 'Universitas Airlangga', 'Kedokteran', '2022-08-15 06:43:24', '2022-08-15', NULL, '198606262015041003', 'S3', 13, 0),
('IB000151', 'Universitas Airlangga', 'Kedokteran', '2022-08-15 07:10:37', '2022-08-15', '0000-00-00', '198606262015041003', 'S3', 13, 0),
('IB000152', 'Universitas Negeri Surabaya', 'Bahasa Inggris', '2022-08-29 04:06:49', '2022-08-22', NULL, '198407182019031002', 'S3', 13, 0),
('IB000153', 'Universitas Negeri Surabaya', 'Bahasa Inggris', '2022-08-29 04:12:15', '2022-08-22', NULL, '198407182019031002', 'S3', 13, 0),
('IB000154', 'Institut Teknologi Sepuluh Nopember Surabaya', 'Teknik Elektro', '2022-08-31 02:13:00', '2022-08-31', '0000-00-00', '199204202021093101', 'S3', 1, 0),
('IB000155', 'Universitas Airlangga', 'Keperawatan', '2022-08-31 03:57:18', '2019-08-26', NULL, '196101251980122003', 'S3', 1, 0),
('IB000156', 'Institut Teknologi Sepuluh Nopembet Surabaya', 'Teknik Mesin ', '2022-08-31 10:48:54', '2022-08-31', '2023-08-01', '199008082021093101', 'S3', 1, 0),
('IB000157', 'Universitas Airlangga Surabaya', 'Ilmu Keperawatan', '2022-10-12 07:36:06', '2019-01-09', NULL, '197203311994032004', 'S3', 13, 0),
('IB000158', 'Universitas Airlangga Surabaya', 'Ilmu Keperawatan', '2022-10-12 07:55:19', '1999-01-09', NULL, '197203311994032004', 'S3', 13, 0),
('IB000159', 'Universitas Airlangga Surabaya', 'Ilmu Keperawatan', '2022-10-12 08:26:39', '1999-01-09', NULL, '197203311994032004', 'S3', 1, 0),
('IB000160', 'universitas airlangga', 'matematika dan ilmu pengetahuan alam', '2022-10-15 02:47:52', '2022-10-15', '0000-00-00', '198312232019043101', 'S3', 13, 0),
('IB000161', 'Universitas Airlangga', 'Ilmu kedokteran', '2022-10-20 03:11:11', '2020-02-17', NULL, '198408122020013201', 'S3', 13, 0),
('IB000162', 'Universitas Terbuka', 'Ilmu Administrasi Bisnis', '2022-10-24 01:00:48', '2019-06-01', NULL, '198210082008102001', 'S1', 2, 0),
('IB000163', 'Universitas Terbuka', 'Manajemen S1', '2022-10-24 01:57:40', '2021-12-09', NULL, '198412072018035101', 'S1', 1, 0),
('IB000164', 'Universitas Terbuka', 'Manajemen S1', '2022-10-24 05:11:06', '2021-10-18', NULL, '198412072018035101', 'S1', 13, 0),
('IB000165', 'Universitas Airlangga', 'Ilmu Keperawatan', '2022-10-25 00:07:11', '2021-12-02', NULL, '198106262014061003', 'S3', 13, 0),
('IB000166', 'Universitas Airlangga', 'kimia', '2022-10-25 11:51:42', '2020-08-25', NULL, '197904122020013201', 'S3', 13, 0),
('IB000167', 'Universitas Airlangga', 'Ilmu Keperawatan', '2022-10-26 09:03:52', '2021-12-02', NULL, '198106262014061003', 'S3', 1, 0),
('IB000168', 'Airlangga', 'S3 Ilmu Kedokteran Gigi', '2022-10-26 10:30:17', '2022-08-19', NULL, '198608262021093101', 'S3', 13, 0),
('IB000169', 'Universitas Airlangga', 'Ilmu Kedokteran Gigi', '2022-10-27 04:10:19', '2021-09-01', '2024-09-09', '197407242003122001', 'S3', 13, 0),
('IB000170', 'Universitas Airlangga', 'Ilmu Kedokteran Gigi', '2022-10-27 04:10:48', '2021-09-01', '0000-00-00', '198005012006041002', 'S3', 1, 0),
('IB000171', 'Institut Teknologi Sepuluh November (ITS) Surabaya', 'Instrumentasi Optik dan Fotonika', '2022-10-27 17:19:55', '2022-09-01', NULL, '197512062008121002', 'S3', 13, 0),
('IB000172', 'Universitas Airlangga', 'Ilmu Kedokteran Dasar', '2022-10-28 05:43:47', '2018-08-30', NULL, NULL, 'S3', 13, 0),
('IB000173', 'Universitas Terbuka', 'Manajemen', '2022-10-29 05:13:15', '2019-01-01', '0000-00-00', '198309102018013101', 'S1', 13, 0),
('IB000174', 'Universitas Airlangga', 'Sp2 Gastroenterohepatologi Patologi Klinik', '2022-11-02 02:48:20', '0000-00-00', NULL, '198111272015042002', 'Sp2', 13, 0),
('IB000175', 'Universitas Airlangga', 'Gastroenterohepatologi Patologi Klinik', '2022-11-02 02:50:11', '0000-00-00', NULL, '198111272015042002', 'Sp2', 13, 0),
('IB000176', 'Universitas Terbuka (UT)', 'Ilmu Hukum', '2022-12-08 03:49:26', '2022-02-16', '0000-00-00', '198010272018035101', 'S1', 13, 0),
('IB000177', 'Universitas Airlangga', 'Ilmu Keperawatan', '2023-01-11 00:49:23', '2021-08-01', NULL, '198106262014061003', 'S3', 1, 0),
('IB000178', 'Universitas Airlangga', 'Ilmu Keperawatan', '2023-01-11 00:58:37', '2021-08-01', NULL, '198106262014061003', 'S3', 13, 0),
('IB000179', 'Universitas Airlangga', 'Ilmu Keperawatan', '2023-01-11 00:59:43', '2021-08-01', NULL, '198106262014061003', 'S3', 1, 0);

--
-- Trigger `izin_belajar`
--
DELIMITER $$
CREATE TRIGGER `ID_IB` BEFORE INSERT ON `izin_belajar` FOR EACH ROW BEGIN
DECLARE nr integer DEFAULT 0;
SELECT COUNT(*) INTO @id FROM izin_belajar;
set new.id_ib=concat("IB", LPAD(@id+1,6,'0'));
end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenisfile_sl`
--

CREATE TABLE `jenisfile_sl` (
  `ID_JENIS` int(11) NOT NULL,
  `NAMAJENIS_FILE` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jenisfile_sl`
--

INSERT INTO `jenisfile_sl` (`ID_JENIS`, `NAMAJENIS_FILE`) VALUES
(1, 'Surat Jaminan Pembiayaan Studi'),
(2, 'LOA'),
(3, 'Surat Keterangan Sehat'),
(4, 'Surat Rekomendasi Pimpinan'),
(5, 'Surat Keterangan Linier'),
(6, 'SKP 2 tahun Terakhir'),
(7, 'Surat Pernyataan Bermaterai(9)'),
(8, 'Bukti Akreditas Prodi dan Instansi'),
(9, 'Akta Nikah'),
(10, 'KARPEG'),
(11, 'Scan KTP'),
(12, 'Scan CV'),
(13, 'PASPOR'),
(14, 'Perjanjian TB'),
(15, 'SK Kenaikan Jabatan Terakhir'),
(16, 'SK Kenaikan Pangkat Terakhir'),
(17, 'SK PNS'),
(18, 'SK CPNS'),
(19, 'Surat Permohonan SK TB dan Pembebasan'),
(20, 'STB'),
(21, 'SETNEG'),
(22, 'SK Tugas Belajar'),
(23, 'SK Rektor TB'),
(24, 'SK Rektor Pembebasan'),
(25, 'SK Pembebasan'),
(26, 'Surat Pernyataan Keterlambatan TB Bermaterai'),
(27, 'Surat Rekomendasi dari Lembaga Pendidikan'),
(28, 'Surat Keterangan Pembiayaan Perpanjangan'),
(29, 'Perjanjian Perpanjangan TB'),
(30, 'Surat Permohonan SK Perpanjangan'),
(31, 'Surat Perpanjangan Tugas Belajar'),
(32, 'SETNEG Perpanjangan'),
(33, 'Ijazah/SKL'),
(34, 'Penyetaraan Ijazah'),
(35, 'Berita Acara Pemeriksaan'),
(36, 'Surat Permohonan SK Pengaktifan'),
(37, 'SPMT'),
(38, 'SK Keputusan Daya Laku Surut'),
(39, 'SK Rektor Keputusan Belum Punya Jabfung'),
(40, 'SK Rektor Pengaktifan'),
(41, 'SK Rektor Pengaktifan RISTEK'),
(42, 'Surat Pernyataan tidak meninggalkan tugas'),
(43, 'Bukti Akreditas Prodi dan Instansi IB'),
(44, 'DP3 2 tahun Terakhir IB'),
(45, 'Surat Keterangan Sehat IB'),
(46, 'Surat Keterangan Linier IB'),
(47, 'Surat Pernyataan Pembiayaan IB'),
(48, 'Surat Pernyataan tidak menuntut kenaikan pangkat'),
(49, 'SK CPNS IB'),
(50, 'SK PNS IB'),
(51, 'SK Kenaikan Pangkat Terakhir IB'),
(52, 'SK Kenaikan Jabatan Terakhir IB'),
(53, 'SK Izin Belajar'),
(54, 'Progress Report'),
(55, 'SK Perpanjangan'),
(56, 'SK Kenaikan Pangkat Terakhir (Perpanjangan)'),
(57, 'SK Kenaikan Jabatan Terakhir (Perpanjangan)'),
(58, 'SK Kenaikan Pangkat Terakhir (Pengaktifan)'),
(59, 'SK Kenaikan Jabatan Terakhir (Pengaktifan)'),
(60, 'Surat Rekomendasi Pimpinan Kerja Perpanjangan'),
(61, 'SKL/Ijazah (Izin Belajar)'),
(62, 'Hasil SWAB'),
(63, 'Surat Kedutaan'),
(64, 'Agenda Kegiatan'),
(65, 'Konversi NIP'),
(66, 'DP3 Tahun Terakhir'),
(67, 'Pengantar Pengajuan Tugas Belajar'),
(68, 'Pengantar Pengajuan Perpanjangan'),
(69, 'Pengantar Pengajuan Pengaktifan'),
(70, 'Pengantar Pengajuan Izin Belajar');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis_file`
--

CREATE TABLE `jenis_file` (
  `ID_JENISFILE` varchar(20) NOT NULL DEFAULT '',
  `NAMA_JENISFILE` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jenis_file`
--

INSERT INTO `jenis_file` (`ID_JENISFILE`, `NAMA_JENISFILE`) VALUES
('1', 'LOA'),
('2', 'TOEFL'),
('3', 'Rencana Studi'),
('4', 'RAB'),
('5', 'Surat Ijin'),
('6', 'Abstrak'),
('7', 'lainnya');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenjang_pendidikan`
--

CREATE TABLE `jenjang_pendidikan` (
  `ID_JENJANG` char(6) NOT NULL,
  `NAMA_JENJANG` varchar(50) NOT NULL,
  `LAMA_STUDI` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jenjang_pendidikan`
--

INSERT INTO `jenjang_pendidikan` (`ID_JENJANG`, `NAMA_JENJANG`, `LAMA_STUDI`) VALUES
('D4', 'Diploma IV', 4),
('S1', 'Sarjana', 4),
('S2', 'Magister', 2),
('S3', 'Doktor', 3),
('Sp1', 'Spesialis 1', 2),
('Sp2', 'Spesialis 2', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `keuangan`
--

CREATE TABLE `keuangan` (
  `ID_KEUANGAN` int(11) NOT NULL,
  `ID_DAFTAR` int(11) NOT NULL,
  `ID_MATAUANG` varchar(4) NOT NULL,
  `TANGGAL` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `JENIS_KEUANGAN` int(11) NOT NULL,
  `DANA_PENDAFTARAN` double(12,0) NOT NULL,
  `SPP_SEMESTER1` double(12,0) NOT NULL,
  `SPP_SEMESTER2` double(12,0) NOT NULL,
  `SPP_SEMESTER3` double(12,0) NOT NULL,
  `SPP_SEMESTER4` double(12,0) NOT NULL,
  `SPP_SEMESTER5` double(12,0) NOT NULL,
  `SPP_SEMESTER6` double(12,0) NOT NULL,
  `SPP_SEMESTER7` double(12,0) NOT NULL,
  `DANA_TUNJANGAN_BUKU` double(12,0) NOT NULL,
  `DANA_BANTUAN_PENELITIAN_THESIS_DISERTASI` double(12,0) NOT NULL,
  `DANA_BANTUAN_SEMINAR_INTERNASIONAL` double(12,0) NOT NULL,
  `DANA_BANTUAN_PUBLIKASI_JURNAL_INTERNASIONAL` double(12,0) NOT NULL,
  `DANA_WISUDA` double(12,0) NOT NULL,
  `DANA_TRANSPORTASI_KEBERANGKATAN` double(12,0) NOT NULL,
  `DANA_TRANSPORTASI_KEPULANGAN` double(12,0) NOT NULL,
  `DANA_APLIKASI_VISA` double(12,0) NOT NULL,
  `DANA_PERPANJANGAN_VISA1` double(12,0) NOT NULL,
  `DANA_PERPANJANGAN_VISA2` double(12,0) NOT NULL,
  `DANA_ASURANSI_KESEHATAN` double(12,0) NOT NULL,
  `DANA_HIDUP_BULANAN` double(12,0) NOT NULL,
  `DANA_KEDATANGAN` double(12,0) NOT NULL,
  `DANA_KEADAAN_DARURAT` double(12,0) NOT NULL,
  `TAMBAHAN_KEKURANGAN_DANA_HIDUP_BULANAN` double(12,0) NOT NULL,
  `INSENTIF_UNIVERSITAS` double(12,0) NOT NULL,
  `TOTAL_DANA` double(12,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kota`
--

CREATE TABLE `kota` (
  `ID_KOTA` varchar(9) NOT NULL,
  `NAMA_KOTA` varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kota`
--

INSERT INTO `kota` (`ID_KOTA`, `NAMA_KOTA`) VALUES
('109001001', 'KABUPATEN ACEH TENGAH'),
('109001002', 'KOTA SABANG'),
('109001003', 'KABUPATEN ACEH BESAR'),
('109001004', 'KABUPATEN ACEH SELATAN'),
('109001005', 'KABUPATEN PIDIE'),
('109001006', 'KABUPATEN SIMEULUE'),
('109001007', 'KABUPATEN ACEH TENGGARA'),
('109001008', 'KABUPATEN ACEH SINGKIL'),
('109001009', 'KABUPATEN BENER MERIAH'),
('109001010', 'KABUPATEN ACEH TAMIANG'),
('109001011', 'KABUPATEN ACEH TIMUR'),
('109001012', 'KABUPATEN ACEH BARAT'),
('109001013', 'KABUPATEN BIREUEN'),
('109001014', 'KABUPATEN ACEH NAGAN RAYA'),
('109001015', 'KOTA LHOKSEUMAWE'),
('109001016', 'KOTA LANGSA'),
('109001017', 'KABUPATEN ACEH UTARA'),
('109001018', 'KOTA BANDA ACEH'),
('109001019', 'KABUPATEN GAYO LUAS'),
('109001020', 'KABUPATEN ACEH BARAT DAYA'),
('109001021', 'KABUPATEN ACEH JAYA'),
('109001022', 'KOTA SUBULUSSALAM'),
('109001023', 'PIDIE JAYA'),
('109002001', 'KABUPATEN KARO'),
('109002002', 'KOTA TANJUNG BALAI'),
('109002003', 'KABUPATEN LANGKAT'),
('109002004', 'KOTA BINJAI'),
('109002005', 'KOTA MEDAN'),
('109002006', 'KABUPATEN NIAS SELATAN'),
('109002007', 'KABUPATEN SAMOSIR'),
('109002008', 'KABUPATEN TAPANULI UTARA'),
('109002009', 'KABUPATEN ASAHAN'),
('109002010', 'KABUPATEN TOBA SAMOSIR'),
('109002011', 'KABUPATEN NIAS'),
('109002012', 'KABUPATEN TAPANULI TENGAH'),
('109002013', 'KABUPATEN SIMALUNGUN'),
('109002014', 'KABUPATEN DELI SERDANG'),
('109002015', 'KABUPATEN MANDAILING NATAL'),
('109002016', 'KOTA PEMATANG SIANTAR'),
('109002017', 'KOTA PADANG SIDEMPUAN'),
('109002018', 'KABUPATEN BATUBARA'),
('109002019', 'KABUPATEN LABUHANBATU SELATAN'),
('109002020', 'KABUPATEN PADANG LAWAS UTARA'),
('109002021', 'KABUPATEN LABUHANBATU'),
('109002022', 'KABUPATEN TAPANULI SELATAN'),
('109002023', 'KABUPATEN DAIRI'),
('109002024', 'KOTA SIBOLGA'),
('109002025', 'KOTA TEBING TINGGI'),
('109002026', 'KABUPATEN HUMBANG HASUNDUTAN'),
('109002027', 'KABUPATEN LABUHANBATU UTARA'),
('109002028', 'KABUPATEN PADANG LAWAS'),
('109002029', 'KABUPATEN PAKPAK BHARAT'),
('109002030', 'KABUPATEN SERDANG BEDAGAI'),
('109002031', 'KOTA GUNUNG SITOLI'),
('109003001', 'KABUPATEN AGAM'),
('109003002', 'KABUPATEN KEPULAUAN MENTAWAI'),
('109003003', 'KABUPATEN PESISIR SELATAN'),
('109003004', 'KOTA PARIAMAN'),
('109003005', 'KABUPATEN PADANG PARIAMAN'),
('109003006', 'KABUPATEN SOLOK'),
('109003007', 'KABUPATEN TANAH DATAR'),
('109003008', 'KABUPATEN LIMA PULUH KOTA'),
('109003009', 'KOTA PADANG'),
('109003010', 'KOTA SOLOK'),
('109003011', 'KOTA SAWAHLUNTO'),
('109003012', 'KOTA BUKITTINGGI'),
('109003013', 'KABUPATEN DHARMASRAYA'),
('109003014', 'KABUPATEN SOLOK SELATAN'),
('109003015', 'KOTA PAYAKUMBUH'),
('109003016', 'KOTA PADANG PANJANG'),
('109003017', 'KABUPATEN SAWAH LUNTO'),
('109003018', 'KABUPATEN PASAMAN'),
('109003019', 'KABUPATEN PASAMAN BARAT'),
('109003020', 'KABUPATEN SIJUNJUNG'),
('109004001', 'KABUPATEN ROKAN HULU'),
('109004002', 'KABUPATEN INDRAGIRI HULU'),
('109004003', 'KABUPATEN KAMPAR'),
('109004004', 'KABUPATEN ROKAN HILIR'),
('109004005', 'KABUPATEN BENGKALIS'),
('109004006', 'KABUPATEN PELALAWAN'),
('109004007', 'KABUPATEN KEPULAUAN RIAU'),
('109004008', 'KABUPATEN SIAK'),
('109004009', 'KOTA PEKANBARU'),
('109004010', 'KABUPATEN KUANTAN SINGING'),
('109004011', 'KOTA DUMAI'),
('109004012', 'KABUPATEN INDRAGIRI HILIR'),
('109004013', 'DURI'),
('109004014', 'PEBENAAN'),
('109005001', 'KABUPATEN BATANGHARI'),
('109005002', 'KABUPATEN BUNGO'),
('109005003', 'KOTA JAMBI'),
('109005004', 'KABUPATEN MUARA JAMBI'),
('109005005', 'KABUPATEN KERINCI'),
('109005006', 'KABUPATEN TANJUNG JABUNG TIMUR'),
('109005007', 'KABUPATEN TEBO'),
('109005008', 'KABUPATEN SAROLANGUN'),
('109005009', 'KABUPATEN TANJUNG JABUNG BARAT'),
('109005010', 'KOTA SUNGAI PENUH'),
('109005011', 'KABUPATEN MERANGIN'),
('109006001', 'KOTA PAGAR ALAM'),
('109006002', 'KABUPATEN MUSI RAWAS'),
('109006003', 'KABUPATEN OGAN KOMERING ILIR'),
('109006004', 'KABUPATEN OGAN KOMERING ULU'),
('109006005', 'KABUPATEN MUARA ENIM'),
('109006006', 'KOTA PALEMBANG'),
('109006007', 'KOTA PRABUMULIH'),
('109006008', 'KOTA LUBUK LINGGAU'),
('109006009', 'KABUPATEN LAHAT'),
('109006010', 'KABUPATEN OGAN ILIR'),
('109006011', 'KABUPATEN MUSI BANYUASIN'),
('109006012', 'KABUPATEN BANYUASIN'),
('109006013', 'KABUPATEN EMPAT LAWANG'),
('109006014', 'KABUPATEN OKU SELATAN'),
('109006015', 'KABUPATEN OKU TIMUR'),
('109007001', 'KABUPATEN BENGKULU SELATAN'),
('109007002', 'KABUPATEN MUKO-MUKO'),
('109007003', 'KABUPATEN REJANG LEBONG'),
('109007004', 'KABUPATEN KAUR'),
('109007005', 'KABUPATEN KEPAHIANG'),
('109007006', 'KABUPATEN BENGKULU UTARA'),
('109007007', 'KOTA BENGKULU'),
('109007008', 'KABUPATEN LEBONG'),
('109007009', 'KABUPATEN SELUMA'),
('109008001', 'KABUPATEN LAMPUNG UTARA'),
('109008002', 'KABUPATEN LAMPUNG BARAT'),
('109008003', 'KABUPATEN LAMPUNG SELATAN'),
('109008004', 'KABUPATEN WAY KANAN'),
('109008005', 'KABUPATEN PESAWARAN'),
('109008006', 'KABUPATEN TULANG BAWANG'),
('109008007', 'KABUPATEN LAMPUNG TENGAH'),
('109008008', 'KABUPATEN TANGGAMUS'),
('109008009', 'KOTA METRO'),
('109008010', 'KABUPATEN LAMPUNG TIMUR'),
('109008011', 'KOTA BANDAR LAMPUNG'),
('109008012', 'KABUPATEN PRINGSEWU'),
('109008013', 'TULANG BAWANG BARAT'),
('109009001', 'KABUPATEN BANGKA'),
('109009002', 'KABUPATEN BANGKA BARAT'),
('109009003', 'KABUPATEN BELITUNG'),
('109009004', 'KOTA PANGKAL PINANG'),
('109009005', 'KABUPATEN BANGKA SELATAN'),
('109009006', 'KABUPATEN BANGKA TENGAH'),
('109009007', 'KABUPATEN BELITUNG TIMUR'),
('109010001', 'KABUPATEN BINTAN'),
('109010002', 'KABUPATEN KARIMUN'),
('109010003', 'KABUPATEN NATUNA'),
('109010004', 'KOTA BATAM'),
('109010005', 'KOTA TANJUNG PINANG'),
('109010006', 'KABUPATEN KEPULAUAN ANAMBAS'),
('109010007', 'KABUPATEN LINGGA'),
('109011001', 'KOTA JAKARTA BARAT'),
('109011002', 'KOTA JAKARTA PUSAT'),
('109011003', 'KABUPATEN KEPULAUAN SERIBU'),
('109011004', 'KOTA JAKARTA TIMUR'),
('109011005', 'KOTA JAKARTA UTARA'),
('109011006', 'KOTA JAKARTA SELATAN'),
('109012001', 'KOTA BANDUNG'),
('109012002', 'KABUPATEN BANDUNG'),
('109012003', 'KABUPATEN INDRAMAYU'),
('109012004', 'KABUPATEN KERAWANG'),
('109012005', 'KOTA BEKASI'),
('109012006', 'KOTA BOGOR'),
('109012007', 'KABUPATEN BEKASI'),
('109012008', 'KABUPATEN TASIKMALAYA'),
('109012009', 'KOTA CIMAHI'),
('109012010', 'KABUPATEN SUKABUMI'),
('109012011', 'KABUPATEN CIAMIS'),
('109012012', 'KABUPATEN PURWAKARTA'),
('109012013', 'KOTA DEPOK'),
('109012014', 'KABUPATEN KUNINGAN'),
('109012015', 'KABUPATEN SUMEDANG'),
('109012016', 'KOTA SUKABUMI'),
('109012017', 'KOTA CIREBON'),
('109012018', 'KABUPATEN GARUT'),
('109012019', 'KABUPATEN SUBANG'),
('109012020', 'KOTA TASIKMALAYA'),
('109012021', 'KABUPATEN BOGOR'),
('109012022', 'KABUPATEN MAJALENGKA'),
('109012023', 'KABUPATEN BANDUNG BARAT'),
('109012024', 'KOTA BANJAR'),
('109012025', 'KABUPATEN CIANJUR'),
('109012026', 'KABUPATEN CIREBON'),
('109012027', 'TANGERANG'),
('109013001', 'KABUPATEN BANJARNEGARA'),
('109013002', 'KABUPATEN CILACAP'),
('109013003', 'KABUPATEN SRAGEN'),
('109013004', 'KABUPATEN DEMAK'),
('109013005', 'KABUPATEN BREBES'),
('109013006', 'KABUPATEN JEPARA'),
('109013007', 'KABUPATEN KARANGANYAR'),
('109013008', 'KOTA MAGELANG'),
('109013009', 'KOTA PEKALONGAN'),
('109013010', 'KABUPATEN PURWOREJO'),
('109013011', 'KABUPATEN KENDAL'),
('109013012', 'KABUPATEN PURBALINGGA'),
('109013013', 'KABUPATEN SUKOHARJO'),
('109013014', 'KABUPATEN REMBANG'),
('109013015', 'KABUPATEN PEMALANG'),
('109013016', 'KABUPATEN MAGELANG'),
('109013017', 'KABUPATEN SEMARANG'),
('109013018', 'KABUPATEN PEKALONGAN'),
('109013019', 'KOTA SALATIGA'),
('109013020', 'KABUPATEN WONOSOBO'),
('109013021', 'KABUPATEN PATI'),
('109013022', 'KABUPATEN TEGAL'),
('109013023', 'KABUPATEN BANYUMAS'),
('109013024', 'KABUPATEN KEBUMEN'),
('109013025', 'KABUPATEN BOYOLALI'),
('109013026', 'KABUPATEN KLATEN'),
('109013027', 'KABUPATEN WONOGIRI'),
('109013028', 'KABUPATEN GROBOGAN'),
('109013029', 'KABUPATEN BLORA'),
('109013030', 'KABUPATEN KUDUS'),
('109013031', 'KABUPATEN TEMANGGUNG'),
('109013032', 'KABUPATEN BATANG'),
('109013033', 'KOTA SURAKARTA'),
('109013034', 'KOTA SEMARANG'),
('109013035', 'KOTA TEGAL'),
('109013036', 'PURWOKERTO'),
('109014001', 'KOTA YOGYAKARTA'),
('109014002', 'KABUPATEN BANTUL'),
('109014003', 'KABUPATEN KULONPROGO'),
('109014004', 'KABUPATEN GUNUNG KIDUL'),
('109014005', 'KABUPATEN SLEMAN'),
('109015001', 'KABUPATEN MAGETAN'),
('109015002', 'KABUPATEN TRENGGALEK'),
('109015003', 'KABUPATEN TUBAN'),
('109015004', 'KABUPATEN LAMONGAN'),
('109015005', 'KABUPATEN MADIUN'),
('109015006', 'KOTA BATU'),
('109015007', 'KOTA KEDIRI'),
('109015008', 'KABUPATEN MALANG'),
('109015009', 'KABUPATEN PONOROGO'),
('109015010', 'KABUPATEN PAMEKASAN'),
('109015011', 'KABUPATEN KEDIRI'),
('109015012', 'KABUPATEN PASURUAN'),
('109015013', 'KABUPATEN NGAWI'),
('109015014', 'KOTA BLITAR'),
('109015015', 'KOTA SURABAYA'),
('109015016', 'KABUPATEN TULUNGAGUNG'),
('109015017', 'KABUPATEN JEMBER'),
('109015018', 'KABUPATEN BONDOWOSO'),
('109015019', 'KABUPATEN JOMBANG'),
('109015020', 'KABUPATEN BOJONEGORO'),
('109015021', 'KOTA MALANG'),
('109015022', 'KOTA PROBOLINGGO'),
('109015023', 'KOTA MADIUN'),
('109015024', 'KABUPATEN SITUBONDO'),
('109015025', 'KABUPATEN SIDOARJO'),
('109015026', 'KABUPATEN PROBOLINGGO'),
('109015027', 'KABUPATEN BANGKALAN'),
('109015028', 'KABUPATEN PACITAN'),
('109015029', 'KABUPATEN BLITAR'),
('109015030', 'KABUPATEN LUMAJANG'),
('109015031', 'KABUPATEN BANYUWANGI'),
('109015032', 'KABUPATEN MOJOKERTO'),
('109015033', 'KABUPATEN NGANJUK'),
('109015034', 'KABUPATEN GRESIK'),
('109015035', 'KABUPATEN SAMPANG'),
('109015036', 'KABUPATEN SUMENEP'),
('109015037', 'KOTA PASURUAN'),
('109015038', 'KOTA MOJOKERTO'),
('109016001', 'KOTA TANGERANG'),
('109016002', 'KOTA TANGERANG SELATAN'),
('109016003', 'KABUPATEN PANDEGLANG'),
('109016004', 'KOTA CILEGON'),
('109016005', 'KABUPATEN LEBAK'),
('109016006', 'KABUPATEN SERANG'),
('109016007', 'KABUPATEN TANGERANG'),
('109016008', 'KOTA SERANG'),
('109017001', 'KABUPATEN BADUNG'),
('109017002', 'KABUPATEN TABANAN'),
('109017003', 'KOTA DENPASAR'),
('109017004', 'KABUPATEN BANGLI'),
('109017005', 'KABUPATEN GIANYAR'),
('109017006', 'KABUPATEN KARANG ASEM'),
('109017007', 'KABUPATEN JEMBRANA'),
('109017008', 'KABUPATEN KLUNGKUNG'),
('109017009', 'KABUPATEN BULELENG'),
('109017010', 'KOTA SINGARAJA'),
('109017011', 'BALI'),
('109018001', 'KABUPATEN LOMBOK BARAT'),
('109018002', 'KABUPATEN BIMA'),
('109018003', 'KABUPATEN LOMBOK TIMUR'),
('109018004', 'KOTA MATARAM'),
('109018005', 'KABUPATEN LOMBOK TENGAH'),
('109018006', 'KABUPATEN SUMBAWA'),
('109018007', 'KABUPATEN DOMPU'),
('109018008', 'KOTA BIMA'),
('109018009', 'KOTA AMPENAN'),
('109018010', 'KABUPATEN SUMBAWA BARAT'),
('109018011', 'LOMBOK UTARA'),
('109019001', 'KABUPATEN ALOR'),
('109019002', 'KABUPATEN FLORES TIMUR'),
('109019003', 'KABUPATEN SUMBA TIMUR'),
('109019004', 'KABUPATEN SIKKA'),
('109019005', 'KABUPATEN TIMOR TENGAH SELATAN'),
('109019006', 'KABUPATEN MANGGARAI'),
('109019007', 'KABUPATEN MANGGARAI BARAT'),
('109019008', 'KABUPATEN ROTE NDAO'),
('109019009', 'KABUPATEN TIMOR TENGAH UTARA'),
('109019010', 'KABUPATEN SUMBA BARAT'),
('109019011', 'KABUPATEN LEMBATA'),
('109019012', 'KABUPATEN KUPANG'),
('109019013', 'KABUPATEN BELU'),
('109019014', 'KABUPATEN ENDE'),
('109019015', 'KABUPATEN NGADA'),
('109019016', 'KOTA KUPANG'),
('109019017', 'KABUPATEN MANGGARAI TIMUR'),
('109019018', 'KABUPATEN NAGEKEO'),
('109019019', 'KABUPATEN SUMBA TENGAH'),
('109019020', 'SUMBA BARAT DAYA'),
('109020001', 'KOTA PONTIANAK'),
('109020002', 'KABUPATEN KETAPANG'),
('109020003', 'KABUPATEN SANGGAU'),
('109020004', 'KABUPATEN SINTANG'),
('109020005', 'KABUPATEN BENGKAYANG'),
('109020006', 'KABUPATEN SAMBAS'),
('109020007', 'KABUPATEN MALAWI'),
('109020008', 'KABUPATEN PONTIANAK'),
('109020009', 'KOTA SINGKAWANG'),
('109020010', 'KABUPATEN KAPUAS HULU'),
('109020011', 'KABUPATEN LANDAK'),
('109020012', 'KABUPATEN SINGKANG'),
('109020013', 'KABUPATEN KUBU RAYA'),
('109020014', 'KABUPATEN KAYONG UTARA'),
('109020015', 'KABUPATEN SEKADAU'),
('109020016', 'MEMPAWAH'),
('109021001', 'KABUPATEN GUNUNG MAS'),
('109021002', 'KABUPATEN BARITO SELATAN'),
('109021003', 'KABUPATEN KATINGAN'),
('109021004', 'KABUPATEN KOTAWARINGIN TIMUR'),
('109021005', 'KABUPATEN BARITO TIMUR'),
('109021006', 'KABUPATEN LAMANDAU'),
('109021007', 'KABUPATEN SERUYAN'),
('109021008', 'KABUPATEN BARITO UTARA'),
('109021009', 'KOTA PALANGKARAYA'),
('109021010', 'TAMIANG LAYANG'),
('109021011', 'SAMPIT'),
('109021012', 'KABUPATEN PULANG PISAU'),
('109021013', 'KABUPATEN KOTAWARINGIN BARAT'),
('109021014', 'KABUPATEN KAPUAS'),
('109021015', 'KOTA MUARATEWEH'),
('109021016', 'KABUPATEN MURUNG RAYA'),
('109021017', 'KABUPATEN SUKAMARA'),
('109021018', 'PANGKALAN LADA'),
('109021019', 'PANGKALAN BUN'),
('109022001', 'KABUPATEN HULU SUNGAI UTARA'),
('109022002', 'KABUPATEN TANAH BUMBU'),
('109022003', 'KOTA BANJARMASIN'),
('109022004', 'KABUPATEN BALANGAN'),
('109022005', 'KABUPATEN HULU SUNGAI TENGAH'),
('109022006', 'KABUPATEN TAPIN'),
('109022007', 'KABUPATEN KOTABARU'),
('109022008', 'KABUPATEN BARITO KUALA'),
('109022009', 'KABUPATEN HULU SUNGAI SELATAN'),
('109022010', 'KABUPATEN TANAH LAUT'),
('109022011', 'KABUPATEN BANJAR'),
('109022012', 'KABUPATEN TABALONG'),
('109022013', 'KOTA BANJARBARU'),
('109023001', 'KOTA BALIKPAPAN'),
('109023002', 'KABUPATEN PASER'),
('109023003', 'KABUPATEN KUTAI KARTANEGARA'),
('109023004', 'KOTA SAMARINDA'),
('109023005', 'KABUPATEN BERAU'),
('109023006', 'KABUPATEN KUTAI TIMUR'),
('109023007', 'KABUPATEN KUTAI BARAT'),
('109023008', 'KOTA BONTANG'),
('109023009', 'KABUPATEN PENAJAM PASER UTARA'),
('109023010', 'KUARO'),
('109023011', 'WAHAU TIMUR'),
('109024001', 'KABUPATEN BOLAANG MONGONDOW'),
('109024002', 'KABUPATEN KEPL. TALAUD'),
('109024003', 'KABUPATEN SANGIHE'),
('109024004', 'KABUPATEN BOLAANG MONGONDOW UTARA'),
('109024005', 'KABUPATEN MINAHASA TENGGARA'),
('109024006', 'KABUPATEN MINAHASA'),
('109024007', 'KOTA MANADO'),
('109024008', 'KOTA BITUNG'),
('109024009', 'KABUPATEN KEPL. SITARO'),
('109024010', 'KABUPATEN MINAHASA SELATAN'),
('109024011', 'KABUPATEN MINAHASA UTARA'),
('109024012', 'KOTA KOTAMOBAGU'),
('109024013', 'KOTA TOMOHON'),
('109025001', 'KABUPATEN DONGGALA'),
('109025002', 'KABUPATEN PARIGI MUOTONG'),
('109025003', 'KABUPATEN BUOL'),
('109025004', 'KABUPATEN BANGGAI'),
('109025005', 'KABUPATEN TOLI TOLI'),
('109025006', 'KABUPATEN SIGI'),
('109025007', 'KABUPATEN BANGGAI KEPULAUAN'),
('109025008', 'KABUPATEN POSO'),
('109025009', 'KABUPATEN MOROWALI'),
('109025010', 'KOTA PALU'),
('109025011', 'KABUPATEN TOJO UNA-UNA'),
('109025012', 'KOTA LUWUK'),
('109026001', 'KABUPATEN MAMUJU'),
('109026002', 'KABUPATEN BANTAENG'),
('109026003', 'KABUPATEN JENEPONTO'),
('109026004', 'KABUPATEN MAROS'),
('109026005', 'KABUPATEN BULUKUMBA'),
('109026006', 'KABUPATEN BARRU'),
('109026007', 'KABUPATEN LUWU'),
('109026008', 'KOTA MAKASAR'),
('109026009', 'KABUPATEN GOWA'),
('109026010', 'KABUPATEN PANGKAJENE KEPULAUAN'),
('109026011', 'KABUPATEN SIDENRENG RAPPANG'),
('109026012', 'KABUPATEN POLEWALI MAMASA'),
('109026013', 'KABUPATEN SOPPENG'),
('109026014', 'KABUPATEN WAJO'),
('109026015', 'KABUPATEN TANA TORAJA'),
('109026016', 'KABUPATEN SELAYAR'),
('109026017', 'KABUPATEN TAKALAR'),
('109026018', 'KABUPATEN SINJAI'),
('109026019', 'KABUPATEN BONE'),
('109026020', 'KABUPATEN PINRANG'),
('109026021', 'KABUPATEN ENREKANG'),
('109026022', 'KABUPATEN MAJENE'),
('109026023', 'KABUPATEN LUWU UTARA'),
('109026024', 'KOTA PARE PARE'),
('109026025', 'KOTA PALOPO'),
('109026026', 'KABUPATEN LUWU TIMUR'),
('109026027', 'UJUNG PANDANG'),
('109027001', 'KABUPATEN KENDARI'),
('109027002', 'KABUPATEN BUTON'),
('109027003', 'KABUPATEN MUNA'),
('109027004', 'KOTA BAU-BAU'),
('109027005', 'KABUPATEN BUTON UTARA'),
('109027006', 'KABUPATEN KONAWE SELATAN'),
('109027007', 'KABUPATEN KONAWE'),
('109027008', 'KABUPATEN KOLAKA'),
('109027009', 'KOTA KENDARI'),
('109027010', 'KABUPATEN BOMBANA'),
('109027011', 'KABUPATEN KOLAKA UTARA'),
('109027012', 'KABUPATEN KONAWE UTARA'),
('109027013', 'KABUPATEN WAKATOBI'),
('109028001', 'KABUPATEN BOALEMO'),
('109028002', 'KABUPATEN GORONTALO UTARA'),
('109028003', 'KABUPATEN POHUWATO'),
('109028004', 'KABUPATEN BONEBOLANGO'),
('109028005', 'KABUPATEN GORONTALO'),
('109028006', 'KOTA GORONTALO'),
('109029001', 'KABUPATEN MAJENE'),
('109029002', 'KABUPATEN POLEWALI'),
('109029003', 'KABUPATEN MAMUJU'),
('109029004', 'KABUPATEN MAMASA'),
('109029005', 'KABUPATEN MAMUJU UTARA'),
('109030001', 'KABUPATEN MALUKU TENGAH'),
('109030002', 'KABUPATEN MALUKU TENGGARA BARAT'),
('109030003', 'KABUPATEN SERAM BAGIAN BARAT'),
('109030004', 'KABUPATEN MALUKU TENGGARA'),
('109030005', 'KABUPATEN BURU'),
('109030006', 'KOTA AMBON'),
('109030007', 'KABUPATEN KEPULAUAN ARU'),
('109030008', 'KABUPATEN SERAM BAGIAN TIMUR'),
('109030009', 'TUAL'),
('109031001', 'KABUPATEN HALMAHERA BARAT'),
('109031002', 'KABUPATEN HALMAHERA SELATAN'),
('109031003', 'KABUPATEN HALMAHERA TIMUR'),
('109031004', 'KABUPATEN HALMAHERA UTARA'),
('109031005', 'KABUPATEN HALMAHERA TENGAH'),
('109031006', 'KABUPATEN KEPULAUAN SULA'),
('109031007', 'KABUPATEN MALUKU UTARA'),
('109031008', 'KOTA TERNATE'),
('109031009', 'KOTA TIDORE KEPULAUAN'),
('109031010', 'PULAU MOROTAI'),
('109032001', 'KABUPATEN MANOKWARI'),
('109032002', 'KOTA SORONG'),
('109032003', 'KABUPATEN SORONG SELATAN'),
('109032004', 'KABUPATEN TELUK WONDAMA'),
('109032005', 'KABUPATEN SORONG'),
('109032006', 'KABUPATEN FAK-FAK'),
('109032007', 'KABUPATEN KAIMANA'),
('109032008', 'KABUPATEN RAJA AMPAT'),
('109032009', 'KABUPATEN TELUK BINTUNI'),
('109032010', 'MAYBRAT'),
('109033001', 'KOTA JAYAPURA'),
('109033002', 'KABUPATEN NABIRE'),
('109033003', 'KABUPATEN BOVEN DIGUL'),
('109033004', 'KABUPATEN KEEROM'),
('109033005', 'KABUPATEN MAMBERAMO TENGAH'),
('109033006', 'KABUPATEN PEGUNUNGAN BINTANG'),
('109033007', 'KABUPATEN TOLIKARA'),
('109033008', 'KABUPATEN YALIMO'),
('109033009', 'KABUPATEN JAYA PURA'),
('109033010', 'KABUPATEN BIAK NUMFOR'),
('109033011', 'KABUPATEN JAYAWIJAYA'),
('109033012', 'KABUPATEN PUNCAK JAYA'),
('109033013', 'KABUPATEN MARAUKE'),
('109033014', 'KABUPATEN KEPULAUAN YAPEN'),
('109033015', 'KABUPATEN ASMAT'),
('109033016', 'KABUPATEN DOGIYAI'),
('109033017', 'KABUPATEN INTAN JAYA'),
('109033018', 'KABUPATEN LANNY JAYA'),
('109033019', 'KABUPATEN MAPPI'),
('109033020', 'KABUPATEN MIMIKA'),
('109033021', 'KABUPATEN NDUGA'),
('109033022', 'KABUPATEN PANIAI'),
('109033023', 'KABUPATEN PUNCAK'),
('109033024', 'KABUPATEN SARMI'),
('109033025', 'KABUPATEN SUPIORI'),
('109033026', 'KABUPATEN WAROPEN'),
('109033027', 'KABUPATEN YAHUKIMO'),
('109033028', 'WAMENA'),
('109033029', 'SERUI'),
('109034001', 'KABUPATEN MALINAU'),
('109034002', 'KOTA TARAKAN'),
('109034003', 'KABUPATEN TANA TIDUNG'),
('109034004', 'KABUPATEN BULUNGAN'),
('109034005', 'KABUPATEN NUNUKAN'),
('109034006', 'TANJUNG SELOR'),
('14001001', 'KOTA ADELAIDE'),
('67001001', 'KOTA LIQUICA'),
('67001002', 'KOTA DILI');

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `ID_LOGIN` int(11) NOT NULL,
  `NIP` varchar(20) NOT NULL,
  `HAK_AKSES` char(1) DEFAULT NULL,
  `PASSWORD` varchar(8) NOT NULL,
  `LAST_LOGIN` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `UNIT_KERJA` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`ID_LOGIN`, `NIP`, `HAK_AKSES`, `PASSWORD`, `LAST_LOGIN`, `UNIT_KERJA`) VALUES
(1, '1', NULL, '123', '2019-07-15 03:21:00', ''),
(2, 'admin_sdm', '2', '123', '2020-01-26 02:59:58', ''),
(3, 'admin_age', '3', '123', '2021-11-28 08:10:41', ''),
(4, 'admin_fk', '1', '123', '2021-11-28 08:10:37', 'Fakultas Kedokteran'),
(5, 'admin_fkg', '1', '123', '2021-11-28 08:10:37', 'Fakultas Kedokteran Gigi'),
(6, 'admin_fh', '1', '123', '2021-11-28 08:10:42', 'Fakultas Hukum'),
(7, 'admin_feb', '1', '123', '2021-11-28 08:10:42', 'Fakultas Ekonomi dan Bisnis'),
(8, 'admin_ff', '1', '123', '2021-11-28 08:10:43', 'Fakultas Farmasi'),
(9, 'admin_fkh', '1', '123', '2021-11-28 08:10:43', 'Fakultas Kedokteran Hewan'),
(10, 'admin_fisip', '1', '123', '2021-11-28 08:10:44', 'Fakultas Ilmu Sosial Ilmu Politik'),
(11, 'admin_fst', '1', '123', '2021-11-28 08:10:44', 'Fakultas Sains dan Teknologi'),
(12, 'admin_fkm', '1', '123', '2021-11-28 08:10:45', 'Fakultas Kesehatan Masyarakat'),
(13, 'admin_fpsi', '1', '123', '2021-11-28 08:10:45', 'Fakultas Psikologi'),
(14, 'admin_fib', '1', '123', '2021-11-28 08:10:46', 'Fakultas Ilmu Budaya'),
(15, 'admin_fkp', '1', '123', '2021-11-28 08:10:46', 'Fakultas Keperawatan'),
(16, 'admin_fpk', '1', '123', '2021-11-28 08:10:47', 'Fakultas Perikanan dan Kelautan'),
(17, 'admin_fv', '1', '123', '2021-11-28 08:10:47', 'Fakultas Vokasi'),
(18, 'admin_pasjasarjana', '1', '123', '2021-11-28 08:10:48', 'Sekolah Pasca Sarjana'),
(19, 'admin_psdkub', '1', '123', '2021-11-28 08:10:49', 'PSDKU Banyuwangi'),
(20, 'admin_ftmm', '1', '123', '2022-01-19 05:15:16', 'Fakultas Teknologi Maju dan Multidisiplin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mata_uang`
--

CREATE TABLE `mata_uang` (
  `ID_MATAUANG` varchar(4) NOT NULL,
  `MATA_UANG` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mata_uang`
--

INSERT INTO `mata_uang` (`ID_MATAUANG`, `MATA_UANG`) VALUES
('AED', 'Dirham'),
('AFA', 'afghani'),
('ALL', 'Leke'),
('AMD', 'Dram'),
('AOA', 'Kwanza'),
('ARS', 'Peso'),
('AUD', 'Dollar'),
('AZN', 'Manat'),
('BAM', 'Mark'),
('BBD', 'Dollar'),
('BDT', 'Taka'),
('BGN', 'Lev'),
('BHD', 'Dinar'),
('BIF', 'Franc'),
('BND', 'Dollar'),
('BOB', 'Boliviano'),
('BRL', 'Real'),
('BSD', 'Dollar'),
('BTN', 'Ngultrum'),
('BWP', 'Pula'),
('BYR', 'Ruble'),
('BZD', 'Dollar'),
('CAD', 'Dollar'),
('CFD', 'Franc'),
('CHF', 'Franc'),
('CLP', 'Peso'),
('COP', 'Peso'),
('CRC', 'Colone'),
('CUP', 'Peso'),
('CVE', 'Escudo'),
('CZK', 'Koruny'),
('DKK', 'Krone'),
('Doll', 'USD'),
('DOP', 'Peso'),
('DZD', 'Dinar'),
('EEK', 'Kroon'),
('ERN', 'Nakfa'),
('ETB', 'Birr'),
('EUR', 'Euro'),
('FJD', 'Dollar Fiji'),
('Fran', 'DJF'),
('GBP', 'Pound'),
('GEL', 'Lari'),
('GHC', 'Cedi'),
('GMD', 'Dalasi'),
('GTQ', 'Quetzal'),
('GYD', 'Dollar'),
('HNL', 'Lempira'),
('HRK', 'Kuna'),
('HTG', 'Gourde'),
('HUF', 'Forint'),
('IDR', 'Rupiah'),
('ILS', 'Shekel'),
('INR', 'Rupee'),
('IQD', 'Dinar'),
('IRR', 'Rial'),
('ISK', 'Kronu'),
('JMD', 'Dollar'),
('JOD', 'Dinar'),
('JPY', 'Yen'),
('KD', 'Dinar'),
('KES', 'Shilling'),
('KGS', 'Som'),
('KHR', 'Riel'),
('KMF', 'Franc'),
('KPW', 'Won'),
('KZT', 'Tenge'),
('LAK', 'Kip'),
('LBP', 'Pound'),
('LKR', 'Rupee'),
('LRD', 'Dollar'),
('LSL', 'Maloti'),
('LTL', 'Litai'),
('LVL', 'Lati'),
('LYD', 'Dinar'),
('MAD', 'Dirham'),
('MDL', 'Lei'),
('MGA', 'Ariary'),
('MKD', 'Denar'),
('MMK', 'Kyat'),
('MNT', 'Tugrik'),
('MVR', 'Rufiyaa'),
('MWK', 'Kwacha'),
('MYR', 'Ringgit'),
('MZM', '	Meticai'),
('NAD', 'Dollar'),
('NGN', 'Naira'),
('NIO', 'Cordoba'),
('NOK', 'Krone'),
('NPR', 'Rupee'),
('OMR', 'Rial'),
('PAB', 'Balboa'),
('PEN', 'Sole'),
('PGK', 'Kina'),
('PHP', 'Peso'),
('PKR', 'Rupee'),
('PLN', 'Zloty'),
('PYG', 'Guarani'),
('QAR', 'Riyal'),
('RMB', 'Yuan'),
('RON', 'Leu'),
('RSD', 'Dinar'),
('RUB', 'Ruble'),
('RWF', 'Franc'),
('SAR', 'Riyal'),
('SAT', 'Tala'),
('SBD', 'Dollar'),
('SCR', 'Rupee'),
('SDG', 'Pound'),
('SEK', 'Krono'),
('SGD', 'Dollar'),
('SLL', 'Leone'),
('SOS', 'Shilling'),
('SRD', 'Guilder'),
('SSD', 'Pound'),
('STD', 'Dobra'),
('SVC', 'Colon'),
('SYP', 'Pound'),
('SZL', 'Lilageni'),
('THB', 'Baht'),
('TJS', 'Somoni'),
('TMM', 'Manat'),
('TND', 'Dinar'),
('TOP', 'Pa?anga'),
('TRY', 'Lira'),
('TTD', 'Dollar'),
('TZS', 'Shilling'),
('UAH', 'Hryvnia'),
('UGX', 'Shilling'),
('USD', 'Dollar'),
('UYU', 'Peso'),
('UZS', 'Soum'),
('VEB', 'Bolivar'),
('VND', 'Dong'),
('VUV', 'Vatu'),
('WON', 'KRW'),
('XAF', 'Franc'),
('XCD', 'Dollar'),
('XOF', 'Franc'),
('YER', 'Rial'),
('ZAR', 'Rand'),
('ZMK', 'Kwacha'),
('ZWD', 'Dollar');

-- --------------------------------------------------------

--
-- Struktur dari tabel `monitor`
--

CREATE TABLE `monitor` (
  `ID_MONITOR` char(4) NOT NULL,
  `ID_HISTORY` int(11) NOT NULL,
  `KHS` varchar(30) NOT NULL,
  `PROGRESS_BELAJAR` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `monitoring`
--

CREATE TABLE `monitoring` (
  `ID_MONITORING` int(11) NOT NULL,
  `ID_TUBEL` varchar(20) NOT NULL,
  `TOTAL_SEMESTER` int(10) NOT NULL DEFAULT '6',
  `SEMESTER_SEKARANG` int(10) NOT NULL,
  `PENASEHAT_AKADEMIK` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `monitoring`
--

INSERT INTO `monitoring` (`ID_MONITORING`, `ID_TUBEL`, `TOTAL_SEMESTER`, `SEMESTER_SEKARANG`, `PENASEHAT_AKADEMIK`) VALUES
(1, 'TB000011', 6, 1, NULL),
(2, 'TB000009', 6, 1, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `monitoring_ib`
--

CREATE TABLE `monitoring_ib` (
  `ID_MONITORING_IB` int(11) NOT NULL,
  `ID_IB` varchar(16) NOT NULL DEFAULT '',
  `TOTAL_SEMESTER` int(10) NOT NULL DEFAULT '6',
  `SEMESTER_SEKARANG` int(10) NOT NULL,
  `PENASEHAT_AKADEMIK` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `monitoring_ib`
--

INSERT INTO `monitoring_ib` (`ID_MONITORING_IB`, `ID_IB`, `TOTAL_SEMESTER`, `SEMESTER_SEKARANG`, `PENASEHAT_AKADEMIK`) VALUES
(1, 'IB000001', 6, 3, 'Prof. Dr. Sri Pantja Madyawati, drh., M.Si.'),
(2, 'IB000006', 6, 2, 'Rozki Kurnia'),
(3, 'IB000005', 6, 1, 'dr. Fajrianthy'),
(4, 'IB000007', 6, 1, NULL),
(5, 'IB000014', 6, 1, NULL),
(6, 'IB000048', 6, 1, NULL),
(7, 'IB000050', 6, 1, NULL),
(8, 'IB000051', 6, 1, NULL),
(9, 'IB000064', 6, 1, NULL),
(10, 'IB000065', 6, 1, NULL),
(11, 'IB000066', 6, 1, NULL),
(12, 'IB000106', 6, 1, NULL),
(13, 'IB000028', 6, 1, NULL),
(14, 'IB000034', 6, 1, NULL),
(15, 'IB000029', 6, 1, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `negara`
--

CREATE TABLE `negara` (
  `ID_NEGARA` varchar(4) NOT NULL,
  `NAMA_NEGARA` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `negara`
--

INSERT INTO `negara` (`ID_NEGARA`, `NAMA_NEGARA`) VALUES
('001', 'Afghanistan'),
('010', 'Argentina'),
('012', 'Aruba'),
('013', 'Kepulauan Ashmore dan Cartier'),
('100', 'Guyana'),
('101', 'Haiti'),
('102', 'Vatikan'),
('103', 'Honduras'),
('104', 'Hongkong'),
('105', 'Pulau Howland'),
('106', 'Hungaria'),
('107', 'Iceland'),
('108', 'India'),
('109', 'Indonesia'),
('11', 'Armenia'),
('110', 'Iran'),
('111', 'Iraq'),
('112', 'Irlandia'),
('113', 'Israel'),
('114', 'Italia'),
('115', 'Jamaika'),
('116', 'Jan Mayen'),
('117', 'Jepang'),
('118', 'Pulau Jarvis'),
('119', 'Jersey'),
('120', 'Johnston Atoll'),
('121', 'Jordan'),
('122', 'Pulau Juan de Nova'),
('123', 'Kazakhstan'),
('124', 'Kenya'),
('125', 'Karang Kingman'),
('126', 'Kiribati'),
('129', 'Kuwait'),
('130', 'Kirgistan'),
('131', 'Laos'),
('132', 'Latvia'),
('133', 'Lebanon'),
('134', 'Lesotho'),
('135', 'Liberia'),
('136', 'Libya'),
('137', 'Liechtenstein'),
('138', 'Lituania'),
('139', 'Luksemburg'),
('14', 'Australia'),
('140', 'Makau'),
('141', 'Makedonia Utara'),
('142', 'Madagaskar'),
('143', 'Malawi'),
('144', 'Malaysia'),
('145', 'Maldives'),
('146', 'Mali'),
('147', 'Malta'),
('148', 'Isle of Man'),
('149', 'Pulau Marshall'),
('15', 'Austria'),
('150', 'Martinik'),
('151', 'Mauritania'),
('152', 'Mauritius'),
('153', 'Mayotte'),
('154', 'Mexico'),
('155', 'Pulau Midway'),
('156', 'Miscellaneous (Paris)'),
('157', 'Moldova'),
('158', 'Monako'),
('159', 'Mongolia'),
('16', 'Azerbaijan'),
('160', 'Montenegro'),
('161', 'Montserrat'),
('162', 'Maroko'),
('163', 'Mozambik'),
('164', 'Myanmar'),
('165', 'Namibia'),
('166', 'Nauru'),
('167', 'Pulau Navassa'),
('168', 'Korea Selatan'),
('169', 'Nepal'),
('17', 'Bahrain'),
('170', 'Belanda'),
('171', 'Antillen Belanda'),
('172', 'Kaledonia Baru'),
('173', 'New Zealand'),
('174', 'Nicaragua'),
('175', 'Niger'),
('176', 'Nigeria'),
('177', 'Niue'),
('178', 'Pulau Norfolk'),
('179', 'Pulau Northern Mariana'),
('18', 'Pulau Baker'),
('180', 'Norwegia'),
('181', 'Oman'),
('182', 'Pakistan'),
('183', 'Palau'),
('184', 'Palestina'),
('185', 'Palmyra Atoll'),
('186', 'Panama'),
('187', 'Papua Nugini'),
('188', 'Pulau Paracel'),
('189', 'Paraguay'),
('19', 'Bangladesh'),
('190', 'Peru'),
('191', 'Filipina'),
('192', 'Pulau Pitcairn'),
('193', 'Polandia'),
('194', 'Portugal'),
('195', 'Puerto Riko'),
('196', 'Qatar'),
('197', 'Reunion'),
('198', 'Romania'),
('199', 'Russia'),
('2', 'Albania'),
('20', 'Barbados'),
('200', 'Rwanda'),
('201', 'Saint Helena'),
('202', 'Saint Kitts and Nevis'),
('203', 'Saint Lucia'),
('204', 'Saint Pierre and Miquelon'),
('205', 'Saint Vincent and the Grenadines'),
('206', 'Samoa'),
('207', 'San Marino'),
('208', 'Sao Tome dan Principe'),
('209', 'Saudi Arabia'),
('21', 'Bassas da India'),
('210', 'Senegal'),
('211', 'Serbia'),
('212', 'Serbia and Montenegro'),
('213', 'Seychelles'),
('214', 'Sierra Leone'),
('215', 'Singapore'),
('216', 'Slovakia'),
('217', 'Slovenia'),
('218', 'Kepulauan Solomon'),
('219', 'Somalia'),
('22', 'Belarus'),
('220', 'Afrika Selatan'),
('221', 'Spain'),
('222', 'Spratly Islands'),
('223', 'Sri Lanka'),
('224', 'Sudan'),
('225', 'Suriname'),
('226', 'Svalbard'),
('227', 'eSwatini'),
('228', 'Swedia'),
('229', 'Swiss'),
('23', 'Belgia'),
('230', 'Syria'),
('231', 'Taiwan'),
('232', 'Tajikistan'),
('233', 'Tanzania'),
('234', 'Thailand'),
('235', 'Bahama'),
('236', 'Gambia'),
('237', 'Togo'),
('238', 'Tokelau'),
('239', 'Tonga'),
('24', 'Belize'),
('240', 'Trinidad dan Tobago'),
('241', 'Pulau Tromelin'),
('242', 'Tunisia'),
('243', 'Turki'),
('244', 'Turkmenia'),
('245', 'Kepulauan Turks dan Caicos'),
('246', 'Tuvalu'),
('247', 'Uganda'),
('248', 'Ukraina'),
('249', 'Uni Emirat Arab'),
('25', 'Benin'),
('250', 'Inggris'),
('251', 'Amerika Serikat'),
('252', 'Uruguai'),
('253', 'Uzbekistan'),
('254', 'Vanuatu'),
('255', 'Venezuela'),
('256', 'Vietnam'),
('257', 'Virgin Islands'),
('258', 'Kepulauan Virgin (Inggris)'),
('259', 'Kepulauan Virgin (Amerika Serikat)'),
('26', 'Bermuda'),
('260', 'Pulau Wake'),
('261', 'Wallis dan Futuna'),
('262', 'West Bank'),
('263', 'Sahara Barat'),
('264', 'Samoa Barat'),
('265', 'World'),
('266', 'Yaman'),
('267', 'Yugoslavia'),
('268', 'Zaire'),
('269', 'Zambia'),
('27', 'Bhutan'),
('270', 'Zimbabwe'),
('28', 'Bolivia'),
('29', 'Bosnia dan Herzegovina'),
('3', 'Algeria'),
('30', 'Botswana'),
('31', 'Kepulauan Bouvet '),
('32', 'Brazil'),
('33', 'Kepulauan Virgin Inggris'),
('34', 'Brunei Darussalam'),
('35', 'Bulgaria'),
('36', 'Burkina Faso'),
('37', 'Burma'),
('38', 'Burundi'),
('39', 'Kamboja'),
('4', 'Samoa Amerika'),
('40', 'Cameroon'),
('41', 'Kanada'),
('42', 'Tanjung Verde'),
('43', 'Kepulauan Cayman'),
('44', 'Republik Afrika Tengah'),
('45', 'Chad'),
('46', 'Chili'),
('47', 'China'),
('48', 'Kepulauan Christmas'),
('49', 'Kepulauan Clipperton'),
('5', 'Andorra'),
('50', 'Kepulauan Cocos'),
('51', 'Kolombia'),
('52', 'Komoro'),
('53', 'Kongo'),
('54', 'Congo, Republic of the'),
('55', 'Kepulauan Cook'),
('56', 'Coral Sea Islands'),
('57', 'Costa Rica'),
('58', 'Cote d\'Ivoire'),
('59', 'Kroasia'),
('6', 'Angola'),
('60', 'Kuba'),
('61', 'Siprus'),
('62', 'Ceko'),
('63', 'Denmark'),
('64', 'Djibouti'),
('65', 'Dominika'),
('66', 'Dominican Republic'),
('67', 'Timor Leste'),
('68', 'Ekuador'),
('69', 'Mesir'),
('7', 'Anguilla'),
('70', 'El Salvador'),
('71', 'Guinea Khatulistiwa'),
('72', 'Eritrea'),
('73', 'Estonia'),
('74', 'Ethiopia'),
('75', 'Pulau Eropa'),
('76', ''),
('77', 'Kepulauan Faroe'),
('78', 'Fiji'),
('79', 'Finlandia'),
('8', 'Antartika'),
('80', 'Perancis'),
('81', 'France, Metropolitan'),
('8127', 'Korea Utara'),
('82', 'Guyana Percancis'),
('83', 'Polinesia Percancis'),
('84', 'Gabon'),
('85', 'Gaza Strip'),
('86', 'Georgia'),
('87', 'Jerman'),
('88', 'Ghana'),
('89', 'Gibraltar'),
('9', 'Antigua dan Barbuda'),
('90', 'Pulau Glorioso'),
('91', 'Yunani'),
('92', 'Greenland'),
('93', 'Grenada'),
('94', 'Guadeloupe'),
('95', 'Guam'),
('96', 'Guatemala'),
('97', 'Guernsey'),
('98', 'Guinea'),
('99', 'Guinea-Bissau');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pendaftaran`
--

CREATE TABLE `pendaftaran` (
  `ID_DAFTAR` int(11) NOT NULL,
  `ID_BEASISWA` int(11) NOT NULL,
  `NIK` varchar(20) NOT NULL,
  `ID_JENJANG` char(6) NOT NULL,
  `LOA` varchar(20) DEFAULT NULL,
  `TOEFL` varchar(5) DEFAULT NULL,
  `PERIODE_KULIAH_TAHUN` int(11) NOT NULL,
  `PERIODE_KULIAH_BULAN` varchar(10) NOT NULL,
  `SEKTOR` varchar(25) DEFAULT NULL,
  `RUMPUN` varchar(15) DEFAULT NULL,
  `NEGARA_TUJUAN_1` char(40) NOT NULL,
  `PERGURUAN_TINGGI_TUJUAN_1` varchar(200) NOT NULL,
  `PROGRAM_STUDI_TUJUAN_1` varchar(200) NOT NULL,
  `PROMOTOR_1` varchar(200) DEFAULT NULL,
  `JUDUL_1` varchar(200) DEFAULT NULL,
  `NEGARA_TUJUAN_2` char(40) DEFAULT NULL,
  `PERGURUAN_TINGGI_TUJUAN_2` varchar(200) DEFAULT NULL,
  `PROGRAM_STUDI_2` varchar(200) DEFAULT NULL,
  `PROMOTOR_2` varchar(200) DEFAULT NULL,
  `JUDUL_2` varchar(200) DEFAULT NULL,
  `NEGARA_TUJUAN_3` char(40) DEFAULT NULL,
  `PERGURUAN_TINGGI_TUJUAN_3` varchar(200) DEFAULT NULL,
  `PROGRAM_STUDI_3` varchar(200) DEFAULT NULL,
  `PROMOTOR_3` varchar(200) DEFAULT NULL,
  `JUDUL_3` varchar(200) DEFAULT NULL,
  `BEASISWA_GAGAL1` varchar(100) NOT NULL,
  `BEASISWA_GAGAL2` varchar(100) NOT NULL,
  `MENGIKUTI_BEASISWA_LAIN` tinyint(1) DEFAULT NULL,
  `STATUS_TERSIMPAN` tinyint(1) DEFAULT NULL,
  `CATATAN` varchar(200) DEFAULT NULL,
  `STATUS_TELAAH` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Trigger `pendaftaran`
--
DELIMITER $$
CREATE TRIGGER `trigger_insert_pendaftaran` AFTER INSERT ON `pendaftaran` FOR EACH ROW BEGIN
   INSERT INTO history VALUES (NULL, new.ID_DAFTAR, '03','0');
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengaktifan_ib`
--

CREATE TABLE `pengaktifan_ib` (
  `ID_PENGAKTIFAN_IB` char(6) NOT NULL,
  `ID_IB` varchar(16) NOT NULL,
  `ID_STATUS_SL` int(4) NOT NULL,
  `TANGGAL_SUBMIT_PK_IB` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `FILE_IJAZAH` varchar(75) NOT NULL,
  `TGL_LULUS_IB` date NOT NULL,
  `APPROVAL_DATE` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Trigger `pengaktifan_ib`
--
DELIMITER $$
CREATE TRIGGER `ID_AKTIF_IB` BEFORE INSERT ON `pengaktifan_ib` FOR EACH ROW BEGIN
DECLARE nr integer DEFAULT 0;
SELECT COUNT(*) INTO @id FROM pengaktifan_ib;
set new.id_pengaktifan_ib=concat("PI", LPAD(@id+1,3,'0'));
end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengaktifan_kembali`
--

CREATE TABLE `pengaktifan_kembali` (
  `ID_PENGAKTIFAN` char(6) NOT NULL,
  `ID_TUBEL` varchar(16) DEFAULT NULL,
  `ID_STATUS_SL` int(11) NOT NULL,
  `TANGGAL_SUBMIT_PK` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `TANGGAL_LULUS` date NOT NULL,
  `TANGGAL_SPMT` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Trigger `pengaktifan_kembali`
--
DELIMITER $$
CREATE TRIGGER `id_pengaktifa` BEFORE INSERT ON `pengaktifan_kembali` FOR EACH ROW BEGIN
DECLARE nr integer DEFAULT 0;
SELECT COUNT(*) INTO @id FROM pengaktifan_kembali;
set new.id_pengaktifan=concat("PA", LPAD(@id+1,3,'0'));
end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `penghargaan`
--

CREATE TABLE `penghargaan` (
  `ID_PENGHARGAAN` int(11) NOT NULL,
  `ID_MONITORING` int(11) NOT NULL,
  `NAMA_PENGHARGAAN` varchar(60) NOT NULL,
  `PEMBERI_PENGHARGAAN` varchar(60) NOT NULL,
  `TAHUN_PENGHARGAAN` varchar(5) NOT NULL,
  `FILE_UPLOAD_PENGHARGAAN` varchar(30) NOT NULL,
  `SEMESTER` int(11) NOT NULL,
  `TGL_SUBMIT_PH` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `STATUS_FILE_PENGHARGAAN` tinyint(1) NOT NULL,
  `KETERANGAN_REVISI_PENGHARGAAN` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `penghargaan_ib`
--

CREATE TABLE `penghargaan_ib` (
  `ID_PENGHARGAAN_IB` int(11) NOT NULL,
  `ID_MONITORING_IB` int(11) NOT NULL,
  `NAMA_PENGHARGAAN` varchar(60) NOT NULL,
  `PEMBERI_PENGHARGAAN` varchar(60) NOT NULL,
  `TAHUN_PENGHARGAAN` varchar(5) NOT NULL,
  `FILE_UPLOAD_PENGHARGAAN` varchar(30) NOT NULL,
  `SEMESTER` int(11) NOT NULL,
  `TGL_SUBMIT_PH` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `STATUS_FILE_PENGHARGAAN` tinyint(1) NOT NULL,
  `KETERANGAN_REVISI_PENGHARGAAN` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `perpanjangan`
--

CREATE TABLE `perpanjangan` (
  `ID_PERPANJANGAN` char(6) NOT NULL,
  `TANGGAL_PENGAJUAN` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ID_TUBEL` varchar(16) DEFAULT NULL,
  `STATUS_PERPANJANGAN` char(2) DEFAULT NULL,
  `MULAI_PERPANJANGAN` date NOT NULL,
  `SELESAI_PERPANJANGAN` date NOT NULL,
  `BEASISWA` varchar(100) NOT NULL,
  `ID_STATUS_SL` int(11) NOT NULL,
  `TAMBAHAN_SEMESTER` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Trigger `perpanjangan`
--
DELIMITER $$
CREATE TRIGGER `id_perpanjangan` BEFORE INSERT ON `perpanjangan` FOR EACH ROW BEGIN
DECLARE nr integer DEFAULT 0;
SELECT COUNT(*) INTO @id FROM perpanjangan;
set new.id_perpanjangan=concat("PP", LPAD(@id+1,3,'0'));
end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `publikasi`
--

CREATE TABLE `publikasi` (
  `ID_PUBLIKASI` int(11) NOT NULL,
  `ID_MONITORING` int(11) NOT NULL,
  `SEMESTER` int(11) NOT NULL,
  `SUDAH_BELUM` tinyint(1) NOT NULL,
  `KATEGORI_PUBLIKASI` varchar(25) DEFAULT NULL,
  `NAMA_PUBLIKASI` varchar(300) DEFAULT NULL,
  `TGL_SUBMIT` date DEFAULT NULL,
  `PROGRESS_JURNAL` varchar(30) DEFAULT NULL,
  `BUKTI_PUBLIKASI` varchar(50) DEFAULT NULL,
  `TGL_RENCANA` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `publikasi_ib`
--

CREATE TABLE `publikasi_ib` (
  `ID_PUBLIKASI_IB` int(11) NOT NULL,
  `ID_MONITORING_IB` int(11) NOT NULL,
  `SEMESTER` int(11) NOT NULL,
  `SUDAH_BELUM` tinyint(1) NOT NULL,
  `KATEGORI_PUBLIKASI` varchar(25) DEFAULT NULL,
  `NAMA_PUBLIKASI` varchar(300) DEFAULT NULL,
  `TGL_SUBMIT` date DEFAULT NULL,
  `PROGRESS_JURNAL` varchar(30) DEFAULT NULL,
  `BUKTI_PUBLIKASI` varchar(50) DEFAULT NULL,
  `TGL_RENCANA` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `publikasi_ib`
--

INSERT INTO `publikasi_ib` (`ID_PUBLIKASI_IB`, `ID_MONITORING_IB`, `SEMESTER`, `SUDAH_BELUM`, `KATEGORI_PUBLIKASI`, `NAMA_PUBLIKASI`, `TGL_SUBMIT`, `PROGRESS_JURNAL`, `BUKTI_PUBLIKASI`, `TGL_RENCANA`) VALUES
(1, 2, 1, 0, NULL, NULL, NULL, NULL, NULL, '2023-01-04'),
(2, 1, 1, 1, 'Jurnal', 'Veterinary World', '2019-03-07', 'Publish', 'buktipublikasi_1.pdf', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `seminar_pelatihan`
--

CREATE TABLE `seminar_pelatihan` (
  `ID_KEGIATAN` int(11) NOT NULL,
  `ID_MONITORING` int(11) NOT NULL,
  `JENIS_KEGIATAN` tinyint(1) NOT NULL,
  `NAMA_KEGIATAN` varchar(60) NOT NULL,
  `PENYELENGGARA_KEGIATAN` varchar(60) NOT NULL,
  `TAHUN_KEGIATAN` varchar(5) NOT NULL,
  `FILE_UPLOAD_BUKTI` varchar(60) NOT NULL,
  `SEMESTER` int(11) NOT NULL,
  `TGL_SUBMIT_SP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ID_NEGARA` varchar(4) NOT NULL,
  `STATUS_FILE_SEMINAR_PELATIHAN` tinyint(1) NOT NULL,
  `KETERANGAN_REVISI_SEMINAR_PELATIHAN` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `seminar_pelatihan_ib`
--

CREATE TABLE `seminar_pelatihan_ib` (
  `ID_KEGIATAN_IB` int(11) NOT NULL,
  `ID_MONITORING_IB` int(11) NOT NULL,
  `JENIS_KEGIATAN` tinyint(1) NOT NULL,
  `NAMA_KEGIATAN` varchar(60) NOT NULL,
  `PENYELENGGARA_KEGIATAN` varchar(60) NOT NULL,
  `TAHUN_KEGIATAN` varchar(5) NOT NULL,
  `FILE_UPLOAD_BUKTI` varchar(60) NOT NULL,
  `SEMESTER` int(11) NOT NULL,
  `TGL_SUBMIT_SP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ID_NEGARA` varchar(4) NOT NULL,
  `STATUS_FILE_SEMINAR_PELATIHAN` tinyint(1) NOT NULL,
  `KETERANGAN_REVISI_SEMINAR_PELATIHAN` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `status_studilanjut`
--

CREATE TABLE `status_studilanjut` (
  `ID_STATUS_SL` int(4) NOT NULL,
  `STATUS_SL` varchar(30) NOT NULL,
  `LOKASI_DATA` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `status_studilanjut`
--

INSERT INTO `status_studilanjut` (`ID_STATUS_SL`, `STATUS_SL`, `LOKASI_DATA`) VALUES
(1, 'Submit dari Dosen/Tendik', 'Fakultas'),
(2, 'Submit dari Fakultas', 'SDM'),
(3, 'Usulan Diterima', 'SDM'),
(4, 'Dokumen Ditangguhkan Dosen/Ten', 'Dosen/Tendik'),
(5, 'Proses Pengajuan SETNEG', 'AGE'),
(6, 'Submit dari AGE', 'Semua_User'),
(7, 'Selesai', 'Semua_User'),
(8, 'Usulan Diterima Fakultas', 'Fakultas'),
(9, 'Usulan Ditolak', 'SDM'),
(10, 'Proses SDM Lanjutan', 'SDM'),
(11, 'Simpan Ybs', 'Ybs'),
(12, 'Laporan IB', 'Semua_User'),
(13, 'Dosen', '-');

-- --------------------------------------------------------

--
-- Struktur dari tabel `status_verifikasi`
--

CREATE TABLE `status_verifikasi` (
  `ID_STATUS` char(4) NOT NULL,
  `NAMA_STATUS` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `status_verifikasi`
--

INSERT INTO `status_verifikasi` (`ID_STATUS`, `NAMA_STATUS`) VALUES
('01', 'Tidak Diterima'),
('02', 'Diterima'),
('03', 'verifikasi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `syarat_kelulusan`
--

CREATE TABLE `syarat_kelulusan` (
  `ID_SYARAT_KELULUSAN` int(11) NOT NULL,
  `ID_MONITORING` int(11) NOT NULL,
  `JUMLAH_SKS` int(11) NOT NULL,
  `JUMLAH_MATKUL` int(11) NOT NULL,
  `JUMLAH_PUBLIKASI` int(11) NOT NULL,
  `JUMLAH_DISERTASI_THESIS_SKRIPSI` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `syarat_kelulusan_ib`
--

CREATE TABLE `syarat_kelulusan_ib` (
  `ID_SYARAT_KELULUSAN_IB` int(11) NOT NULL,
  `ID_MONITORING_IB` int(11) NOT NULL,
  `JUMLAH_SKS` int(11) NOT NULL,
  `JUMLAH_MATKUL` int(11) NOT NULL,
  `JUMLAH_PUBLIKASI` int(11) NOT NULL,
  `JUMLAH_DISERTASI_THESIS_SKRIPSI` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `template`
--

CREATE TABLE `template` (
  `ID_TEMPLATE` int(11) NOT NULL,
  `NAMA_TEMPLATE` varchar(35) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `template`
--

INSERT INTO `template` (`ID_TEMPLATE`, `NAMA_TEMPLATE`) VALUES
(111, 'SIB'),
(112, 'STB');

-- --------------------------------------------------------

--
-- Struktur dari tabel `toefl`
--

CREATE TABLE `toefl` (
  `ID_TOEFL` int(11) NOT NULL,
  `ID_MONITORING` int(11) NOT NULL,
  `SUDAH_BELUM` tinyint(1) NOT NULL,
  `TGL_TES` date DEFAULT NULL,
  `TGL_BERLAKU_SAMPAI` date DEFAULT NULL,
  `PENYELENGGARA` varchar(100) DEFAULT NULL,
  `BUKTI_TOEFL` varchar(50) DEFAULT NULL,
  `TGL_RENCANA` date DEFAULT NULL,
  `NILAI` int(3) NOT NULL,
  `SEMESTER` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `toefl_ib`
--

CREATE TABLE `toefl_ib` (
  `ID_TOEFL` int(11) NOT NULL,
  `ID_MONITORING_IB` int(11) NOT NULL,
  `SUDAH_BELUM` tinyint(1) NOT NULL,
  `TGL_TES` date DEFAULT NULL,
  `TGL_BERLAKU_SAMPAI` date DEFAULT NULL,
  `PENYELENGGARA` varchar(100) DEFAULT NULL,
  `BUKTI_TOEFL` varchar(50) DEFAULT NULL,
  `TGL_RENCANA` date DEFAULT NULL,
  `NILAI` int(3) NOT NULL,
  `SEMESTER` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `toefl_ib`
--

INSERT INTO `toefl_ib` (`ID_TOEFL`, `ID_MONITORING_IB`, `SUDAH_BELUM`, `TGL_TES`, `TGL_BERLAKU_SAMPAI`, `PENYELENGGARA`, `BUKTI_TOEFL`, `TGL_RENCANA`, `NILAI`, `SEMESTER`) VALUES
(1, 2, 0, NULL, NULL, NULL, NULL, '2023-01-10', 0, 1),
(2, 1, 0, NULL, NULL, NULL, NULL, '2022-06-30', 0, 1),
(3, 1, 0, NULL, NULL, NULL, NULL, '2022-11-30', 0, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tugas_akhir`
--

CREATE TABLE `tugas_akhir` (
  `ID_TUGAS` int(11) NOT NULL,
  `ID_MONITORING` int(11) NOT NULL,
  `BUKTI_BIMBINGAN` varchar(50) DEFAULT NULL,
  `UJIAN_PROPOSAL` tinyint(1) NOT NULL,
  `TGL_UJIAN_PROPOSAL` date DEFAULT NULL,
  `TGL_RENCANA_UP` date DEFAULT NULL,
  `PENILAIAN_PLAGIASI` double NOT NULL,
  `HASIL` int(3) DEFAULT NULL,
  `TGL_TES` date DEFAULT NULL,
  `TGL_RENCANA` date DEFAULT NULL,
  `SEMINAR_AKHIR` tinyint(1) DEFAULT NULL,
  `KATEGORI_SA` varchar(50) DEFAULT NULL,
  `TGL_SA` date DEFAULT NULL,
  `TGL_RENCANA_SA` date DEFAULT NULL,
  `BUKTI_SA` varchar(50) DEFAULT NULL,
  `SEMESTER` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tugas_akhir_ib`
--

CREATE TABLE `tugas_akhir_ib` (
  `ID_TUGAS` int(11) NOT NULL,
  `ID_MONITORING_IB` int(11) NOT NULL,
  `BUKTI_BIMBINGAN` varchar(50) DEFAULT NULL,
  `UJIAN_PROPOSAL` tinyint(1) NOT NULL,
  `TGL_UJIAN_PROPOSAL` date DEFAULT NULL,
  `TGL_RENCANA_UP` date DEFAULT NULL,
  `PENILAIAN_PLAGIASI` double NOT NULL,
  `HASIL` int(3) NOT NULL,
  `TGL_TES` date NOT NULL,
  `TGL_RENCANA` date NOT NULL,
  `SEMINAR_AKHIR` tinyint(1) DEFAULT NULL,
  `KATEGORI_SA` varchar(50) NOT NULL,
  `TGL_SA` date NOT NULL,
  `TGL_RENCANA_SA` date NOT NULL,
  `BUKTI_SA` varchar(256) DEFAULT '',
  `SEMESTER` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tugas_akhir_ib`
--

INSERT INTO `tugas_akhir_ib` (`ID_TUGAS`, `ID_MONITORING_IB`, `BUKTI_BIMBINGAN`, `UJIAN_PROPOSAL`, `TGL_UJIAN_PROPOSAL`, `TGL_RENCANA_UP`, `PENILAIAN_PLAGIASI`, `HASIL`, `TGL_TES`, `TGL_RENCANA`, `SEMINAR_AKHIR`, `KATEGORI_SA`, `TGL_SA`, `TGL_RENCANA_SA`, `BUKTI_SA`, `SEMESTER`) VALUES
(1, 2, NULL, 0, '0000-00-00', '2024-02-21', 1, 90, '2022-01-18', '0000-00-00', 0, '', '0000-00-00', '2024-07-30', NULL, 1),
(2, 1, NULL, 0, '0000-00-00', '2022-12-30', 0, 0, '0000-00-00', '2023-08-30', 0, '', '0000-00-00', '2023-12-30', NULL, 1),
(3, 1, NULL, 0, '0000-00-00', '2022-11-30', 0, 0, '0000-00-00', '2023-05-30', 0, '', '0000-00-00', '0000-00-00', NULL, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tugas_belajar`
--

CREATE TABLE `tugas_belajar` (
  `ID_TUBEL` varchar(16) NOT NULL DEFAULT '',
  `NIK` varchar(20) DEFAULT NULL,
  `TGL_SUBMIT_TB` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `LOKASI_TUBEL` tinyint(1) NOT NULL,
  `PERGURUAN_TINGGI_PENYELENGGARA` varchar(150) DEFAULT NULL,
  `NAMA_BIDANG_PERGURUAN_TINGGI` varchar(150) DEFAULT NULL,
  `MULAI_TUBEL` date DEFAULT NULL,
  `SELESAI_TUBEL` date DEFAULT NULL,
  `JENIS_PEMBIAYAAN` tinyint(1) NOT NULL,
  `SUMBER_PEMBIAYAAN` varchar(150) DEFAULT NULL,
  `TAHUN_PEMBIAYAAN` char(4) DEFAULT NULL,
  `ID_NEGARA` varchar(4) DEFAULT NULL,
  `ID_JENJANG` char(6) DEFAULT NULL,
  `ID_STATUS_SL` int(4) NOT NULL,
  `SEMESTER` int(11) NOT NULL DEFAULT '6',
  `SEMESTER_SEKARANG` int(11) NOT NULL DEFAULT '1',
  `DEPARTEMEN` varchar(60) NOT NULL,
  `HOMEBASE` varchar(60) NOT NULL,
  `ID_SCOPUS` varchar(60) NOT NULL,
  `HAS_REACTIVE` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tugas_belajar`
--

INSERT INTO `tugas_belajar` (`ID_TUBEL`, `NIK`, `TGL_SUBMIT_TB`, `LOKASI_TUBEL`, `PERGURUAN_TINGGI_PENYELENGGARA`, `NAMA_BIDANG_PERGURUAN_TINGGI`, `MULAI_TUBEL`, `SELESAI_TUBEL`, `JENIS_PEMBIAYAAN`, `SUMBER_PEMBIAYAAN`, `TAHUN_PEMBIAYAAN`, `ID_NEGARA`, `ID_JENJANG`, `ID_STATUS_SL`, `SEMESTER`, `SEMESTER_SEKARANG`, `DEPARTEMEN`, `HOMEBASE`, `ID_SCOPUS`, `HAS_REACTIVE`) VALUES
('TB000001', '199202112020063101', '2021-12-23 03:29:03', 1, 'Perguruan Tinggi ABC', 'ilkom', '2021-12-21', '2023-12-20', 0, 'Pemerintah Argentina', '2021', '109', 'S2', 9, 6, 1, '', '', '', 0),
('TB000002', '199502232020125101', '2021-12-24 02:09:10', 1, 'Perguruan Tinggi ABC', 'ilkom', '2021-12-24', '2023-12-23', 0, 'Pemerintah Argentina', '2021', '001', 'S2', 0, 6, 1, '', '', '', 0),
('TB000003', '198407182015041001', '2022-01-28 01:25:20', 1, 'Istanbul Üniversitesi', 'AKUAKULTUR', '2019-10-01', '2022-09-30', 1, 'YTB (Türkiye Burslar? Scholarships)', '2019', '243', 'S3', 3, 6, 1, '', '', '', 0),
('TB000004', '199404142018083201', '2022-03-29 09:00:15', 1, 'Pukyong National University', 'Industrial Data Science and Engineering', '2022-03-07', '2025-03-06', 1, 'Brain Korea 21 (BK21) Scholarship', '2022', '168', 'S3', 3, 6, 1, '', '', '', 0),
('TB000005', '198807022016033101', '2022-01-26 03:34:02', 1, 'Prince of Songkla University (PSU)', 'Ph.D. Research Methodology', '2018-08-01', '2021-07-31', 1, 'Thailand\'s Education Hub For ASEAN Countries (TEH-AC)', '2018', '234', 'S3', 0, 6, 1, '', '', '', 0),
('TB000006', '198509222014041001', '2022-02-09 04:04:39', 1, 'Pingtung University', 'Tropical Agriculture and International Cooperation', '2019-09-01', '2022-08-31', 1, 'Beasiswa dari Ministry of Education, Taiwan', '2019', '231', 'S3', 2, 6, 1, '', '', '', 0),
('TB000007', '198911282019031019', '2022-01-27 08:54:39', 1, 'UTM', 'Manajemen', '2022-02-01', '2025-01-31', 0, 'BPI', '2022', '144', 'S3', 0, 6, 1, '', '', '', 0),
('TB000008', '198812172018083201', '2022-02-23 08:22:59', 1, 'University of Newcastle', 'Manajemen', '2022-02-01', '2025-01-31', 0, 'Kementerian Pendidikan, Kebudayaan, Riset, dan Teknologi dan LPDP', '2022', '14', 'S3', 1, 6, 1, '', '', '', 0),
('TB000009', '198801092016113201', '2022-03-30 07:06:23', 1, 'Okayama University', 'Graduate School of Interdisciplinary Science and Engineering in Health Systems', '2021-10-01', '2024-09-30', 1, 'Japanese Government (Mobukagakusho: MEXT) Scholarship', '2021', '117', 'S3', 5, 6, 1, '', '', '', 0),
('TB000010', '198712022015041002', '2022-02-09 03:50:29', 1, 'Asia University', 'Business Administration', '2020-09-01', '2023-08-31', 1, 'scholarship by Asia University', '2020', '231', 'S3', 11, 6, 1, '', '', '', 0),
('TB000011', '198909172014041001', '2022-02-09 04:46:24', 1, 'King\'s College London', 'Cancer Pharmaceutical Science Research', '2021-02-01', '2024-01-31', 1, 'Lembaga Pengelola Dana Pendidikan', '2021', '250', 'S3', 7, 6, 1, '', '', '', 0),
('TB000012', '199206012018083201', '2022-02-09 03:44:42', 1, 'Khalifa University', 'Mathematics', '2021-01-09', '2024-01-08', 1, 'Doctoral Research/ Teaching Scholarship (DRTS)', '2021', '249', 'S3', 11, 6, 1, '', '', '', 0),
('TB000013', '198806272016113101', '2022-02-09 03:21:32', 1, 'Leiden University', 'Doctor in Southeast Asian Studies', '2019-09-01', '2022-08-31', 0, 'LPDP', '2019', '170', 'S3', 11, 6, 1, '', '', '', 0),
('TB000014', '199006022016113201', '2022-02-09 04:47:35', 0, 'Universitas Indonesia', 'Ilmu Kesehatan Masyarakat', '2020-09-01', '2023-08-31', 0, 'Rector Scholarship Universitas Airlangga', '2020', '109', 'S3', 11, 6, 1, '', '', '', 0),
('TB000015', '198409012015041002', '2022-02-09 03:50:12', 1, 'Eotvos Lorand University', 'Doctoral School of History Programme', '2020-09-01', '2023-08-31', 1, 'Stipendium Hungaricum Scholarship', '2020', '106', 'S3', 11, 6, 1, '', '', '', 0),
('TB000016', '198209122008011006', '2022-02-10 02:04:08', 0, 'Universitas Indonesia', 'Ilmu Kesehatan Masyarakat', '2021-01-09', '2024-01-08', 0, 'LPDP', '2019', '109', 'S3', 11, 6, 1, '', '', '', 0),
('TB000017', '198707172015042002', '2022-02-10 01:28:41', 1, 'University of Malaya, Malaysia', 'Nursing Science ', '2020-02-28', '2023-02-27', 0, 'Beasiswa Universitas Airlangga', '2020', '144', 'S3', 1, 6, 1, '', '', '', 0),
('TB000018', '198609112014041001', '2022-02-09 07:01:16', 1, ' The University of Tokyo', 'Agricultural and Life Science', '2019-04-01', '2022-03-31', 1, ' MEXT Scholarship Student', '2019', '117', 'S3', 2, 6, 1, '', '', '', 0),
('TB000019', '198405052015042001', '2022-02-10 03:19:59', 0, 'Institut Pertanian Bogor', 'Ilmu Gizi', '2019-08-01', '2022-07-31', 0, 'BPP - DN', '2019', '109', 'S3', 11, 6, 1, '', '', '', 0),
('TB000020', '199007092015041002', '2022-02-10 06:08:40', 1, 'University of Natural Resources and Life Sciences', 'Food Chemistry', '2020-01-01', '2022-12-31', 1, 'The Austrian Agency for International Cooperation in Education & Reserarch (OeAD-GMbH)', '2020', '15', 'S3', 2, 6, 1, '', '', '', 0),
('TB000021', '198505252016113101', '2022-02-12 02:59:57', 1, 'La Trobe University', 'Keperawatan/Kesehatan Masyarakat', '2020-01-28', '2023-01-27', 1, 'BPPLN Kementrian Pendidikan dan Kebudayaan', '2019', '14', 'S3', 1, 6, 1, '', '', '', 0),
('TB000022', '198212022015043101', '2022-02-18 08:28:26', 0, 'Universitas Airlangga', 'Sains Veteriner', '2019-09-01', '2022-08-31', 0, 'BPPDN', '2019', '109', 'S3', 0, 6, 1, '', '', '', 0),
('TB000023', '198204252005012002', '2022-02-25 10:23:46', 0, 'UGM', 'Ilmu Hukum', '2019-08-01', '2022-07-31', 0, 'LPDP', '2019', '109', 'S3', 2, 6, 1, '', '', '', 0),
('TB000024', '199212242022013101', '2022-04-07 05:07:46', 1, 'The University of Manchester', 'Keperawatan', '2022-09-19', '2025-09-18', 0, 'Lembaga Pengelola Dana Pendidikan', '2022', '250', 'S3', 3, 6, 1, '', '', '', 0),
('TB000025', '198707042020122007', '2022-02-23 14:16:44', 0, 'Universitas Airlangga', 'Keperawatan', '2022-07-04', '2025-07-03', 0, 'RKAT', '2022', '109', 'S3', 0, 6, 1, '', '', '', 0),
('TB000026', '199102092014041001', '2022-06-26 07:00:44', 1, 'Yamaguchi University', 'Animal Breeding', '2020-04-01', '2023-03-31', 0, 'Rektor UNAIR', '2020', '117', 'S3', 2, 6, 1, '', '', '', 0),
('TB000027', '199301282019031015', '2022-07-25 02:29:59', 1, 'Sakarya Universities', 'Islamic Economics and Finance', '2021-09-01', '2024-08-31', 1, 'Pemerintah Turki', '2021', '243', 'S3', 11, 6, 1, '', '', '', 0),
('TB000028', '198703292016113101', '2022-04-06 09:22:30', 1, 'The University Of Western Australia', 'Ilmu Ekonomi', '2022-07-01', '2025-06-30', 1, 'Beasiswa LPDP', '2022', '14', 'S3', 2, 6, 1, '', '', '', 0),
('TB000029', '199005152014042001', '2022-03-09 07:27:21', 1, 'Tohoku University', 'Kedokteran Gigi', '2020-10-01', '2023-09-30', 1, 'MEXT Scholarship', '2020', '117', 'S3', 1, 6, 1, '', '', '', 0),
('TB000030', '199107262016113201', '2022-05-31 13:20:45', 1, 'Tohoku University', 'Dentistry', '2018-10-01', '2021-09-30', 1, 'MONBUKAGAKUSHO scholarship', '2018', '117', 'S3', 11, 6, 1, '', '', '', 0),
('TB000031', '199209182021093201', '2022-03-18 00:07:31', 1, 'Hiroshima University', 'Graduate School of Biomedical and Health Sciences, Department of Orthodontics and Craniofacial Developmental Biology', '2022-02-28', '2025-02-27', 1, 'Beasiswa MEXT', '2019', '117', 'S3', 0, 6, 1, '', '', '', 0),
('TB000032', '198412122008122002', '2022-03-21 09:47:51', 1, 'Queen\'s University Belfast', 'Farmasi', '2019-09-23', '2022-09-22', 1, 'LPDP', '2019', '250', 'S3', 11, 6, 1, '', '', '', 0),
('TB000033', '198304232010122007', '2022-03-24 05:53:59', 1, 'Yamaguchi University', 'Ilmu Kedokteran Hewan', '2021-10-01', '2024-09-30', 1, 'Universitas Airlangga', '2021', '117', 'S3', 11, 6, 1, '', '', '', 0),
('TB000034', NULL, '2022-04-04 07:43:22', 1, 'Universiti Malaya', 'Ekonomi Islam ', '2022-09-01', '2025-08-31', 1, 'Universitas Airlangga', '2022', '144', 'S3', 0, 6, 1, '', '', '', 0),
('TB000035', '198710232015042004', '2022-09-21 02:37:28', 1, 'Universiti Malaya', 'Ekonomi Islam ', '2022-10-01', '2025-09-30', 1, 'Pribadi ', '2022', '144', 'S3', 0, 6, 1, '', '', '', 0),
('TB000036', '198505182008122002', '2022-05-19 07:07:27', 1, 'University of Groningen', 'Bioanalysis, Therapeutic Drug Monitoring and Clinical Toxicology', '2019-09-02', '2022-09-01', 0, 'Beasiswa Lembaga Pengelola Dana Pendidikan (LPDP) Republik Indonesia', '2019', '170', 'S3', 1, 6, 1, '', '', '', 0),
('TB000037', '199010152015041001', '2022-05-18 09:04:33', 1, 'Yamaguchi University', 'Kedokteran Hewan', '2022-05-23', '2025-05-22', 1, 'MEXT Scholarship', '2022', '117', 'S3', 2, 6, 1, '', '', '', 0),
('TB000038', '198808302018083201', '2022-06-06 01:50:22', 1, 'Purdue University', 'Gizi', '2022-07-09', '2025-07-08', 1, 'Fulbright Scholarship', '2022', '251', 'S3', 1, 6, 1, '', '', '', 0),
('TB000039', '198210152005011001', '2022-06-21 04:09:46', 0, 'Universitas Airlangga', 'Ilmu Akuntansi', '2019-08-17', '2022-08-16', 0, 'BPPDN', '2019', '109', 'S3', 0, 6, 1, '', '', '', 0),
('TB000040', '199404232020073201', '2022-06-14 04:10:46', 1, 'National Central University', 'Network Learning Technology', '2022-09-05', '2025-09-04', 1, 'NCU Doctoral Scholarship Fall Semester 2022', '2022', '231', 'S3', 1, 6, 1, '', '', '', 0),
('TB000041', '198508262018013201', '2022-05-27 02:07:48', 0, 'Universitas Terbuka', 'Ilmu Perpustakaan', '2021-03-05', '2025-03-04', 0, 'Biaya Sendiri', '2021', '109', 'S1', 11, 6, 1, '', '', '', 0),
('TB000042', '198703142015042001', '2022-05-31 08:55:28', 0, 'Institut Teknologi Sepuluh Nopember Surabaya', 'Ilmu Statistik', '2019-09-01', '2022-08-31', 0, 'Beasiswa BPPDN', '2019', '109', 'S3', 0, 6, 1, '', '', '', 0),
('TB000043', '199103122015043201', '2022-05-31 10:04:07', 1, 'University of Malaya', 'Sistem Informasi', '2021-02-01', '2024-01-31', 0, 'Beasiswa Rektor Unair', '2021', '144', 'S3', 0, 6, 1, '', '', '', 0),
('TB000044', '199012102018083101', '2022-06-07 05:35:11', 1, 'Coventry University', 'Ph.D Business Sustainable Production and Consumption', '2022-09-26', '2025-09-25', 1, 'Beasiswa BPI ', '2022', '250', 'S3', 11, 6, 1, '', '', '', 0),
('TB000045', '198905232015043101', '2022-10-13 05:51:57', 0, 'Institut Teknologi Sepuluh Nopember', 'Teknik Elektro', '2022-08-29', '2025-08-28', 0, 'Beasiswa Pendidikan Indonesia (BPI)', '2022', '109', 'S3', 1, 6, 1, '', '', '', 0),
('TB000046', '198305232008012009', '2022-07-27 14:28:49', 1, 'China Medical University', 'Biomedical Science', '2022-09-12', '2025-09-11', 1, 'China Medical University', '2022', '231', 'S3', 0, 6, 1, '', '', '', 0),
('TB000047', '199006202014041001', '2022-08-08 12:41:09', 1, 'Gent university', 'Kedokteran Hewan', '2020-01-03', '2023-01-02', 0, 'Universitas Airlangga', '2019', '23', 'S3', 0, 6, 1, '', '', '', 0),
('TB000048', '199006092014093101', '2022-10-10 08:16:06', 1, 'ESKISEHIR OSMANGAZI UNIVERSITY', 'Biology', '2022-09-20', '2025-09-19', 1, 'Türkiye Scholarships', '2022', '243', 'S3', 3, 6, 1, '', '', '', 0),
('TB000049', '199309062021093101', '2022-09-01 13:39:03', 1, 'Chulalongkorn University', 'Kimia Fisik', '2022-08-08', '2025-08-07', 1, 'Chulalongkorn University', '2020', '234', 'S3', 1, 6, 1, '', '', '', 0),
('TB000050', '198911032021093101', '2022-09-01 03:55:33', 1, 'Northeast Normal University', 'Applied Mathematics', '2017-09-04', '2020-09-03', 1, 'Chinese Government Scholarship', '2017', '47', 'S3', 1, 6, 1, '', '', '', 0),
('TB000051', '199110232021093101', '2022-08-31 04:39:46', 1, 'Kumoh National Institute of Technology', 'IT Convergence Engineering - Computational Medicine Laboratory', '2022-08-31', '2025-08-30', 1, 'Beasiswa', '2022', '168', 'S3', 11, 6, 1, '', '', '', 0),
('TB000052', '198212152008122003', '2022-10-28 00:34:34', 0, 'Fakultas Kedokteran Universitas Indonesia', 'Ilmu Gizi', '2019-02-01', '2022-01-31', 0, 'Beasiswa rektorat', '2019', '109', 'S3', 0, 6, 1, '', '', '', 0),
('TB000053', '199208162020122018', '2022-11-02 22:48:25', 1, 'Kobe University', 'Clinical Virology', '2021-04-01', '2024-03-31', 1, 'MEXT', '2021', '117', 'S3', 0, 6, 1, '', '', '', 0),
('TB000054', NULL, '2022-11-12 03:07:20', 1, 'Kobe University', 'Clinical Virology', '2021-04-01', '2024-03-31', 1, 'MEXT', '2021', '117', 'S3', 0, 6, 1, '', '', '', 0),
('TB000055', '199302192022103101', '2022-12-06 05:43:38', 1, 'National Taiwan University of Science and Technology', 'Teknik Elektro', '2019-09-09', '2022-09-08', 1, 'NTUST Scholarship', '2022', '231', 'S3', 0, 6, 1, '', '', '', 0),
('TB000056', '199207222022103101', '2022-12-06 05:50:36', 1, 'National Taiwan University of Science and Technology', 'Teknik Elektronika dan Komputer', '2022-10-01', '2025-09-30', 1, 'Beasiswa', '2022', '231', 'S3', 11, 6, 1, '', '', '', 0),
('TB000057', '199105012014042001', '2022-12-27 14:02:36', 1, 'Tohoku University', 'Dental Science', '2018-10-01', '2021-09-30', 1, 'MEXT', '2018', '117', 'S3', 0, 6, 1, '', '', '', 0);

--
-- Trigger `tugas_belajar`
--
DELIMITER $$
CREATE TRIGGER `id_tubel` BEFORE INSERT ON `tugas_belajar` FOR EACH ROW BEGIN
DECLARE nr integer DEFAULT 0;
SELECT COUNT(*) INTO @id FROM tugas_belajar;
set new.id_tubel=concat("TB", LPAD(@id+1,6,'0'));
end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `upload_file_ib`
--

CREATE TABLE `upload_file_ib` (
  `ID_UP_FILE_IB` varchar(150) NOT NULL,
  `ID_IB` varchar(16) DEFAULT NULL,
  `ID_JENIS` int(11) DEFAULT NULL,
  `NAMA_FILE_IB` varchar(100) DEFAULT NULL,
  `TIPE_FILE` char(5) DEFAULT NULL,
  `STATUS_FILE_IB` tinyint(1) NOT NULL,
  `KETERANGAN_REVISI_IB` varchar(100) NOT NULL,
  `NOMOR_SURAT` varchar(100) DEFAULT NULL,
  `TGL_SURAT` date DEFAULT NULL,
  `JABATAN_PIMPINAN` varchar(100) DEFAULT NULL,
  `TGL_UPDATE` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `upload_file_ib`
--

INSERT INTO `upload_file_ib` (`ID_UP_FILE_IB`, `ID_IB`, `ID_JENIS`, `NAMA_FILE_IB`, `TIPE_FILE`, `STATUS_FILE_IB`, `KETERANGAN_REVISI_IB`, `NOMOR_SURAT`, `TGL_SURAT`, `JABATAN_PIMPINAN`, `TGL_UPDATE`) VALUES
('Bukti akreditasi prodi dan instansi minmal B_196101251980122003_IB000155.pdf', 'IB000155', 43, 'Bukti akreditasi prodi dan instansi minmal B', 'pdf', 2, '', '', '0000-00-00', '', '2022-08-31 04:00:03'),
('Bukti akreditasi prodi dan instansi minmal B_197003011994121001_IB000144.pdf', 'IB000144', 43, 'Bukti akreditasi prodi dan instansi minmal B', 'pdf', 2, '', '', '0000-00-00', '', '2022-07-27 01:10:35'),
('Bukti akreditasi prodi dan instansi minmal B_197101042008121001_IB000084.jpg', 'IB000084', 43, 'Bukti akreditasi prodi dan instansi minmal B', 'jpg', 2, '', '', '0000-00-00', '', '2022-05-09 04:13:39'),
('Bukti akreditasi prodi dan instansi minmal B_197203311994032004_IB000159.pdf', 'IB000159', 43, 'Bukti akreditasi prodi dan instansi minmal B', 'pdf', 2, '', '', '0000-00-00', '', '2022-10-12 08:31:00'),
('Bukti akreditasi prodi dan instansi minmal B_197205021999031002_IB000086.pdf', 'IB000086', 43, 'Bukti akreditasi prodi dan instansi minmal B', 'pdf', 2, '', '', '0000-00-00', '', '2022-05-23 06:08:34'),
('Bukti akreditasi prodi dan instansi minmal B_197401262018035101_IB000069.pdf', 'IB000069', 43, 'Bukti akreditasi prodi dan instansi minmal B', 'pdf', 2, '', '', '0000-00-00', '', '2022-04-08 06:11:48'),
('Bukti akreditasi prodi dan instansi minmal B_197411092018035201_IB000139.pdf', 'IB000139', 43, 'Bukti akreditasi prodi dan instansi minmal B', 'pdf', 2, '', '', '0000-00-00', '', '2022-07-20 04:38:30'),
('Bukti akreditasi prodi dan instansi minmal B_197411092018035201_IB000140.pdf', 'IB000140', 43, 'Bukti akreditasi prodi dan instansi minmal B', 'pdf', 2, '', '', '0000-00-00', '', '2022-07-20 05:54:27'),
('Bukti akreditasi prodi dan instansi minmal B_197505222003121002_IB000111.pdf', 'IB000111', 43, 'Bukti akreditasi prodi dan instansi minmal B', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-14 03:29:44'),
('Bukti akreditasi prodi dan instansi minmal B_197505262003121006_IB000114.pdf', 'IB000114', 43, 'Bukti akreditasi prodi dan instansi minmal B', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-22 05:47:14'),
('Bukti akreditasi prodi dan instansi minmal B_197512062008121002_IB000171.jpeg', 'IB000171', 43, 'Bukti akreditasi prodi dan instansi minmal B', 'jpeg', 2, '', '', '0000-00-00', '', '2022-10-27 17:24:57'),
('Bukti akreditasi prodi dan instansi minmal B_197706102008102001_IB000055.pdf', 'IB000055', 43, 'Bukti akreditasi prodi dan instansi minmal B', 'pdf', 2, '', '', '0000-00-00', '', '2022-03-11 06:45:17'),
('Bukti akreditasi prodi dan instansi minmal B_197712202015043101_IB000149.pdf', 'IB000149', 43, 'Bukti akreditasi prodi dan instansi minmal B', 'pdf', 2, '', '', '0000-00-00', '', '2022-08-08 12:49:09'),
('Bukti akreditasi prodi dan instansi minmal B_197812252018013101_IB000021.pdf', 'IB000021', 43, 'Bukti akreditasi prodi dan instansi minmal B', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-09 04:01:39'),
('Bukti akreditasi prodi dan instansi minmal B_198002172005012001_IB000082.jpg', 'IB000082', 43, 'Bukti akreditasi prodi dan instansi minmal B', 'jpg', 2, '', '', '0000-00-00', '', '2022-05-06 17:43:57'),
('Bukti akreditasi prodi dan instansi minmal B_198005012006041002_IB000170.pdf', 'IB000170', 43, 'Bukti akreditasi prodi dan instansi minmal B', 'pdf', 2, '', '', '0000-00-00', '', '2022-11-08 08:35:35'),
('Bukti akreditasi prodi dan instansi minmal B_198005172018013201_IB000136.pdf', 'IB000136', 43, 'Bukti akreditasi prodi dan instansi minmal B', 'pdf', 2, '', '', '0000-00-00', '', '2022-07-15 09:24:52'),
('Bukti akreditasi prodi dan instansi minmal B_198005172018013201_IB000137.pdf', 'IB000137', 43, 'Bukti akreditasi prodi dan instansi minmal B', 'pdf', 2, '', '', '0000-00-00', '', '2022-07-15 09:40:44'),
('Bukti akreditasi prodi dan instansi minmal B_198005172018013201_IB000138.pdf', 'IB000138', 43, 'Bukti akreditasi prodi dan instansi minmal B', 'pdf', 2, '', '', '0000-00-00', '', '2022-07-19 08:40:12'),
('Bukti akreditasi prodi dan instansi minmal B_198005252005012004_IB000112.pdf', 'IB000112', 43, 'Bukti akreditasi prodi dan instansi minmal B', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-16 08:02:45'),
('Bukti akreditasi prodi dan instansi minmal B_198009162006041002_IB000007.pdf', 'IB000007', 43, 'Bukti akreditasi prodi dan instansi minmal B', 'pdf', 0, '', '', '0000-00-00', '', '2022-02-03 01:35:39'),
('Bukti akreditasi prodi dan instansi minmal B_198104072005011001_IB000014.pdf', 'IB000014', 43, 'Bukti akreditasi prodi dan instansi minmal B', 'pdf', 0, '', '', '0000-00-00', '', '2022-04-07 02:33:12'),
('Bukti akreditasi prodi dan instansi minmal B_198104082008101001_IB000088.pdf', 'IB000088', 43, 'Bukti akreditasi prodi dan instansi minmal B', 'pdf', 2, '', '', '0000-00-00', '', '2022-05-25 03:32:22'),
('Bukti akreditasi prodi dan instansi minmal B_198106262014061003_IB000167.pdf', 'IB000167', 43, 'Bukti akreditasi prodi dan instansi minmal B', 'pdf', 2, '', '', '0000-00-00', '', '2022-10-26 09:17:03'),
('Bukti akreditasi prodi dan instansi minmal B_198106262014061003_IB000177.pdf', 'IB000177', 43, 'Bukti akreditasi prodi dan instansi minmal B', 'pdf', 2, '', '', '0000-00-00', '', '2023-01-11 00:55:48'),
('Bukti akreditasi prodi dan instansi minmal B_198106262014061003_IB000179.pdf', 'IB000179', 43, 'Bukti akreditasi prodi dan instansi minmal B', 'pdf', 2, '', '', '0000-00-00', '', '2023-01-11 00:59:57'),
('Bukti akreditasi prodi dan instansi minmal B_198203252018013101_IB000013.pdf', 'IB000013', 43, 'Bukti akreditasi prodi dan instansi minmal B', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-09 08:57:53'),
('Bukti akreditasi prodi dan instansi minmal B_198205092018013101_IB000045.pdf', 'IB000045', 43, 'Bukti akreditasi prodi dan instansi minmal B', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-23 09:38:45'),
('Bukti akreditasi prodi dan instansi minmal B_198205092018013101_IB000104.pdf', 'IB000104', 43, 'Bukti akreditasi prodi dan instansi minmal B', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-06 04:22:48'),
('Bukti akreditasi prodi dan instansi minmal B_198210082008102001_IB000162.pdf', 'IB000162', 43, 'Bukti akreditasi prodi dan instansi minmal B', 'pdf', 2, '', '', '0000-00-00', '', '2022-10-24 01:03:50'),
('Bukti akreditasi prodi dan instansi minmal B_198212212018013101_IB000081.pdf', 'IB000081', 43, 'Bukti akreditasi prodi dan instansi minmal B', 'pdf', 2, '', '', '0000-00-00', '', '2022-05-04 06:22:54'),
('Bukti akreditasi prodi dan instansi minmal B_198304182018013101_IB000105.pdf', 'IB000105', 43, 'Bukti akreditasi prodi dan instansi minmal B', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-07 07:57:04'),
('Bukti akreditasi prodi dan instansi minmal B_198311082018013201_IB000060.pdf', 'IB000060', 43, 'Bukti akreditasi prodi dan instansi minmal B', 'pdf', 2, '', '', '0000-00-00', '', '2022-03-24 03:24:56'),
('Bukti akreditasi prodi dan instansi minmal B_198406062015042001_IB000051.pdf', 'IB000051', 43, 'Bukti akreditasi prodi dan instansi minmal B', 'pdf', 0, '', '', '0000-00-00', '', '2022-06-10 07:47:29'),
('Bukti akreditasi prodi dan instansi minmal B_198407182019031002_IB000152.pdf', 'IB000152', 43, 'Bukti akreditasi prodi dan instansi minmal B', 'pdf', 2, '', '', '0000-00-00', '', '2022-08-29 04:09:06'),
('Bukti akreditasi prodi dan instansi minmal B_198407182019031002_IB000153.pdf', 'IB000153', 43, 'Bukti akreditasi prodi dan instansi minmal B', 'pdf', 2, '', '', '0000-00-00', '', '2022-08-29 04:12:40'),
('Bukti akreditasi prodi dan instansi minmal B_198412072018035101_IB000032.jpg', 'IB000032', 43, 'Bukti akreditasi prodi dan instansi minmal B', 'jpg', 2, '', '', '0000-00-00', '', '2022-02-16 07:10:00'),
('Bukti akreditasi prodi dan instansi minmal B_198412072018035101_IB000033.jpg', 'IB000033', 43, 'Bukti akreditasi prodi dan instansi minmal B', 'jpg', 2, '', '', '0000-00-00', '', '2022-02-16 07:18:10'),
('Bukti akreditasi prodi dan instansi minmal B_198412072018035101_IB000036.pdf', 'IB000036', 43, 'Bukti akreditasi prodi dan instansi minmal B', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-22 05:31:31'),
('Bukti akreditasi prodi dan instansi minmal B_198412072018035101_IB000037.jpg', 'IB000037', 43, 'Bukti akreditasi prodi dan instansi minmal B', 'jpg', 2, '', '', '0000-00-00', '', '2022-02-22 05:32:26'),
('Bukti akreditasi prodi dan instansi minmal B_198412072018035101_IB000038.jpg', 'IB000038', 43, 'Bukti akreditasi prodi dan instansi minmal B', 'jpg', 2, '', '', '0000-00-00', '', '2022-02-22 05:38:39'),
('Bukti akreditasi prodi dan instansi minmal B_198412072018035101_IB000039.jpg', 'IB000039', 43, 'Bukti akreditasi prodi dan instansi minmal B', 'jpg', 2, '', '', '0000-00-00', '', '2022-02-22 05:48:49'),
('Bukti akreditasi prodi dan instansi minmal B_198412072018035101_IB000043.jpg', 'IB000043', 43, 'Bukti akreditasi prodi dan instansi minmal B', 'jpg', 2, '', '', '0000-00-00', '', '2022-02-23 02:30:09'),
('Bukti akreditasi prodi dan instansi minmal B_198412072018035101_IB000053.jpg', 'IB000053', 43, 'Bukti akreditasi prodi dan instansi minmal B', 'jpg', 2, '', '', '0000-00-00', '', '2022-03-02 03:35:50'),
('Bukti akreditasi prodi dan instansi minmal B_198412072018035101_IB000054.jpg', 'IB000054', 43, 'Bukti akreditasi prodi dan instansi minmal B', 'jpg', 2, '', '', '0000-00-00', '', '2022-03-11 06:23:18'),
('Bukti akreditasi prodi dan instansi minmal B_198412072018035101_IB000163.pdf', 'IB000163', 43, 'Bukti akreditasi prodi dan instansi minmal B', 'pdf', 2, '', '', '0000-00-00', '', '2022-10-24 02:04:50'),
('Bukti akreditasi prodi dan instansi minmal B_198412152009122007_IB000017.pdf', 'IB000017', 43, 'Bukti akreditasi prodi dan instansi minmal B', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-25 06:15:38'),
('Bukti akreditasi prodi dan instansi minmal B_198504082018013101_IB000077.pdf', 'IB000077', 43, 'Bukti akreditasi prodi dan instansi minmal B', 'pdf', 2, '', '', '0000-00-00', '', '2022-04-19 15:45:14'),
('Bukti akreditasi prodi dan instansi minmal B_198505212018013101_IB000047.pdf', 'IB000047', 43, 'Bukti akreditasi prodi dan instansi minmal B', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-23 09:55:16'),
('Bukti akreditasi prodi dan instansi minmal B_198505212018013101_IB000071.pdf', 'IB000071', 43, 'Bukti akreditasi prodi dan instansi minmal B', 'pdf', 2, '', '', '0000-00-00', '', '2022-04-16 07:51:03'),
('Bukti akreditasi prodi dan instansi minmal B_198509012009022012_IB000002.pdf', 'IB000002', 43, 'Bukti akreditasi prodi dan instansi minmal B', 'pdf', 2, '', '', '0000-00-00', '', '2022-01-26 12:11:27'),
('Bukti akreditasi prodi dan instansi minmal B_198510142010121002_IB000085.pdf', 'IB000085', 43, 'Bukti akreditasi prodi dan instansi minmal B', 'pdf', 2, '', '', '0000-00-00', '', '2022-05-10 03:09:25'),
('Bukti akreditasi prodi dan instansi minmal B_198601252016113201_IB000064.pdf', 'IB000064', 43, 'Bukti akreditasi prodi dan instansi minmal B', 'pdf', 0, '', '', '0000-00-00', '', '2022-06-10 08:04:39'),
('Bukti akreditasi prodi dan instansi minmal B_198603012016113101_IB000106.jpg', 'IB000106', 43, 'Bukti akreditasi prodi dan instansi minmal B', 'jpg', 0, '', '', '0000-00-00', '', '2022-06-13 09:13:59'),
('Bukti akreditasi prodi dan instansi minmal B_198604122015043101_IB000083.pdf', 'IB000083', 43, 'Bukti akreditasi prodi dan instansi minmal B', 'pdf', 2, '', '', '0000-00-00', '', '2022-05-07 23:41:25'),
('Bukti akreditasi prodi dan instansi minmal B_198604182018013201_IB000022.pdf', 'IB000022', 43, 'Bukti akreditasi prodi dan instansi minmal B', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-09 04:22:24'),
('Bukti akreditasi prodi dan instansi minmal B_198606022015042001_IB000065.pdf', 'IB000065', 43, 'Bukti akreditasi prodi dan instansi minmal B', 'pdf', 0, '', '', '0000-00-00', '', '2022-06-10 08:07:18'),
('Bukti akreditasi prodi dan instansi minmal B_198609012018013101_IB000006.pdf', 'IB000006', 43, 'Bukti akreditasi prodi dan instansi minmal B', 'pdf', 0, '', '', '0000-00-00', '', '2022-01-31 04:52:47'),
('Bukti akreditasi prodi dan instansi minmal B_198611092015042002_IB000066.pdf', 'IB000066', 43, 'Bukti akreditasi prodi dan instansi minmal B', 'pdf', 0, '', '', '0000-00-00', '', '2022-06-10 08:08:49'),
('Bukti akreditasi prodi dan instansi minmal B_198701102015042001_IB000123.pdf', 'IB000123', 43, 'Bukti akreditasi prodi dan instansi minmal B', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-27 05:06:37'),
('Bukti akreditasi prodi dan instansi minmal B_198701102015042001_IB000124.pdf', 'IB000124', 43, 'Bukti akreditasi prodi dan instansi minmal B', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-28 22:48:58'),
('Bukti akreditasi prodi dan instansi minmal B_198701102015042001_IB000125.pdf', 'IB000125', 43, 'Bukti akreditasi prodi dan instansi minmal B', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-28 22:51:51'),
('Bukti akreditasi prodi dan instansi minmal B_198702232016113201_IB000050.pdf', 'IB000050', 43, 'Bukti akreditasi prodi dan instansi minmal B', 'pdf', 0, '', '', '0000-00-00', '', '2022-06-10 07:42:13'),
('Bukti akreditasi prodi dan instansi minmal B_198704252016033201_IB000068.pdf', 'IB000068', 43, 'Bukti akreditasi prodi dan instansi minmal B', 'pdf', 2, '', '', '0000-00-00', '', '2022-04-05 06:55:29'),
('Bukti akreditasi prodi dan instansi minmal B_198705022015042002_IB000048.pdf', 'IB000048', 43, 'Bukti akreditasi prodi dan instansi minmal B', 'pdf', 0, '', '', '0000-00-00', '', '2022-06-10 07:34:49'),
('Bukti akreditasi prodi dan instansi minmal B_198705212018083201_IB000057.pdf', 'IB000057', 43, 'Bukti akreditasi prodi dan instansi minmal B', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-02 04:31:17'),
('Bukti akreditasi prodi dan instansi minmal B_198711022015042003_IB000113.pdf', 'IB000113', 43, 'Bukti akreditasi prodi dan instansi minmal B', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-21 02:17:07'),
('Bukti akreditasi prodi dan instansi minmal B_198711112015041005_IB000108.pdf', 'IB000108', 43, 'Bukti akreditasi prodi dan instansi minmal B', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-11 04:21:29'),
('Bukti akreditasi prodi dan instansi minmal B_198805012016113201_IB000115.pdf', 'IB000115', 43, 'Bukti akreditasi prodi dan instansi minmal B', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-23 10:26:02'),
('Bukti akreditasi prodi dan instansi minmal B_198805162018013101_IB000119.pdf', 'IB000119', 43, 'Bukti akreditasi prodi dan instansi minmal B', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-24 08:39:10'),
('Bukti akreditasi prodi dan instansi minmal B_198808112018013201_IB000103.pdf', 'IB000103', 43, 'Bukti akreditasi prodi dan instansi minmal B', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-06 04:18:54'),
('Bukti akreditasi prodi dan instansi minmal B_198812152018013101_IB000122.pdf', 'IB000122', 43, 'Bukti akreditasi prodi dan instansi minmal B', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-27 02:44:14'),
('Bukti akreditasi prodi dan instansi minmal B_198906112018013101_IB000004.pdf', 'IB000004', 43, 'Bukti akreditasi prodi dan instansi minmal B', 'pdf', 2, '', '', '0000-00-00', '', '2022-01-26 07:46:21'),
('Bukti akreditasi prodi dan instansi minmal B_198906112018013101_IB000008.pdf', 'IB000008', 43, 'Bukti akreditasi prodi dan instansi minmal B', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-02 06:40:13'),
('Bukti akreditasi prodi dan instansi minmal B_198906112018013101_IB000010.pdf', 'IB000010', 43, 'Bukti akreditasi prodi dan instansi minmal B', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-02 07:37:46'),
('Bukti akreditasi prodi dan instansi minmal B_198912262016113201_IB000089.pdf', 'IB000089', 43, 'Bukti akreditasi prodi dan instansi minmal B', 'pdf', 2, '', '', '0000-00-00', '', '2022-05-25 04:58:14'),
('Bukti akreditasi prodi dan instansi minmal B_199001132015043101_IB000067.pdf', 'IB000067', 43, 'Bukti akreditasi prodi dan instansi minmal B', 'pdf', 2, '', '', '0000-00-00', '', '2022-04-12 07:25:11'),
('Bukti akreditasi prodi dan instansi minmal B_199003122016033101_IB000011.pdf', 'IB000011', 43, 'Bukti akreditasi prodi dan instansi minmal B', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-02 08:27:51'),
('Bukti akreditasi prodi dan instansi minmal B_199003312018013101_IB000028.pdf', 'IB000028', 43, 'Bukti akreditasi prodi dan instansi minmal B', 'pdf', 0, '', '', '0000-00-00', '', '2022-10-06 03:34:24'),
('Bukti akreditasi prodi dan instansi minmal B_199008082021093101_IB000156.pdf', 'IB000156', 43, 'Bukti akreditasi prodi dan instansi minmal B', 'pdf', 2, '', '', '0000-00-00', '', '2022-08-31 11:00:29'),
('Bukti akreditasi prodi dan instansi minmal B_199008232015043201_IB000003.pdf', 'IB000003', 43, 'Bukti akreditasi prodi dan instansi minmal B', 'pdf', 2, '', '', '0000-00-00', '', '2022-01-26 02:49:33'),
('Bukti akreditasi prodi dan instansi minmal B_199010272018013101_IB000024.pdf', 'IB000024', 43, 'Bukti akreditasi prodi dan instansi minmal B', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-09 04:28:58'),
('Bukti akreditasi prodi dan instansi minmal B_199107132018013201_IB000044.pdf', 'IB000044', 43, 'Bukti akreditasi prodi dan instansi minmal B', 'pdf', 0, '', '', '0000-00-00', '', '2022-10-07 02:51:38'),
('Bukti akreditasi prodi dan instansi minmal B_199110152015043201_IB000001.jpg', 'IB000001', 43, 'Bukti akreditasi prodi dan instansi minmal B', 'jpg', 0, '', '', '0000-00-00', '', '2022-01-28 01:27:57'),
('Bukti akreditasi prodi dan instansi minmal B_199204202021093101_IB000154.pdf', 'IB000154', 43, 'Bukti akreditasi prodi dan instansi minmal B', 'pdf', 2, '', '', '0000-00-00', '', '2022-08-31 03:42:36'),
('Bukti akreditasi prodi dan instansi minmal B_199206042018013101_IB000005.pdf', 'IB000005', 43, 'Bukti akreditasi prodi dan instansi minmal B', 'pdf', 0, 'cek kelengkapan lagi', NULL, NULL, NULL, '2022-01-31 09:36:11'),
('Bukti akreditasi prodi dan instansi minmal B_199207072018083201_IB000091.pdf', 'IB000091', 43, 'Bukti akreditasi prodi dan instansi minmal B', 'pdf', 2, '', '', '0000-00-00', '', '2022-05-27 11:57:56'),
('Bukti akreditasi prodi dan instansi minmal B_199310062018013101_IB000128.pdf', 'IB000128', 43, 'Bukti akreditasi prodi dan instansi minmal B', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-29 12:12:33'),
('Bukti akreditasi prodi dan instansi minmal B_199412162018035101_IB000070.pdf', 'IB000070', 43, 'Bukti akreditasi prodi dan instansi minmal B', 'pdf', 2, '', '', '0000-00-00', '', '2022-04-08 06:22:53'),
('Bukti akreditasi prodi dan instansi minmal B_199508212018035101_IB000029.pdf', 'IB000029', 43, 'Bukti akreditasi prodi dan instansi minmal B', 'pdf', 0, '', '', '0000-00-00', '', '2022-10-07 09:18:25'),
('Bukti akreditasi prodi dan instansi minmal B_199512052021025101_IB000012.jpg', 'IB000012', 43, 'Bukti akreditasi prodi dan instansi minmal B', 'jpg', 2, '', '', '0000-00-00', '', '2022-02-07 04:46:42'),
('Bukti akreditasi prodi dan instansi minmal B_199602112019015101_IB000034.pdf', 'IB000034', 43, 'Bukti akreditasi prodi dan instansi minmal B', 'pdf', 0, '', '', '0000-00-00', '', '2022-10-07 03:48:00'),
('Bukti akreditasi prodi dan instansi minmal B_199905072019105101_IB000020.pdf', 'IB000020', 43, 'Bukti akreditasi prodi dan instansi minmal B', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-09 03:56:51'),
('Bukti akreditasi prodi dan instansi minmal B__IB000079.jpg', 'IB000079', 43, 'Bukti akreditasi prodi dan instansi minmal B', 'jpg', 2, '', '', '0000-00-00', '', '2022-05-09 08:14:59'),
('DP3 dalam 2 tahun terakhir_196101251980122003_IB000155.pdf', 'IB000155', 44, 'DP3 dalam 2 tahun terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-08-31 04:19:12'),
('DP3 dalam 2 tahun terakhir_197203311994032004_IB000159.pdf', 'IB000159', 44, 'DP3 dalam 2 tahun terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-10-12 08:31:22'),
('DP3 dalam 2 tahun terakhir_197205021999031002_IB000086.pdf', 'IB000086', 44, 'DP3 dalam 2 tahun terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-05-23 06:17:57'),
('DP3 dalam 2 tahun terakhir_197401262018035101_IB000069.pdf', 'IB000069', 44, 'DP3 dalam 2 tahun terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-04-08 06:12:06'),
('DP3 dalam 2 tahun terakhir_197411092018035201_IB000140.pdf', 'IB000140', 44, 'DP3 dalam 2 tahun terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-07-20 06:02:42'),
('DP3 dalam 2 tahun terakhir_197505222003121002_IB000111.pdf', 'IB000111', 44, 'DP3 dalam 2 tahun terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-14 03:32:53'),
('DP3 dalam 2 tahun terakhir_197505262003121006_IB000114.pdf', 'IB000114', 44, 'DP3 dalam 2 tahun terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-22 05:47:42'),
('DP3 dalam 2 tahun terakhir_197706102008102001_IB000055.pdf', 'IB000055', 44, 'DP3 dalam 2 tahun terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-03-11 07:35:10'),
('DP3 dalam 2 tahun terakhir_197712202015043101_IB000149.pdf', 'IB000149', 44, 'DP3 dalam 2 tahun terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-08-08 13:51:55'),
('DP3 dalam 2 tahun terakhir_197812252018013101_IB000021.pdf', 'IB000021', 44, 'DP3 dalam 2 tahun terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-09 04:01:58'),
('DP3 dalam 2 tahun terakhir_198005012006041002_IB000170.pdf', 'IB000170', 44, 'DP3 dalam 2 tahun terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-11-08 08:36:44'),
('DP3 dalam 2 tahun terakhir_198005172018013201_IB000136.pdf', 'IB000136', 44, 'DP3 dalam 2 tahun terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-07-15 09:25:00'),
('DP3 dalam 2 tahun terakhir_198005172018013201_IB000137.pdf', 'IB000137', 44, 'DP3 dalam 2 tahun terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-07-15 09:40:51'),
('DP3 dalam 2 tahun terakhir_198005172018013201_IB000138.pdf', 'IB000138', 44, 'DP3 dalam 2 tahun terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-07-19 08:40:26'),
('DP3 dalam 2 tahun terakhir_198005252005012004_IB000112.pdf', 'IB000112', 44, 'DP3 dalam 2 tahun terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-16 07:55:48'),
('DP3 dalam 2 tahun terakhir_198009162006041002_IB000007.pdf', 'IB000007', 44, 'DP3 dalam 2 tahun terakhir', 'pdf', 0, '', '', '0000-00-00', '', '2022-02-03 01:35:40'),
('DP3 dalam 2 tahun terakhir_198104072005011001_IB000014.pdf', 'IB000014', 44, 'DP3 dalam 2 tahun terakhir', 'pdf', 0, '', '', '0000-00-00', '', '2022-04-07 02:33:13'),
('DP3 dalam 2 tahun terakhir_198106262014061003_IB000167.pdf', 'IB000167', 44, 'DP3 dalam 2 tahun terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-10-26 09:17:13'),
('DP3 dalam 2 tahun terakhir_198106262014061003_IB000177.pdf', 'IB000177', 44, 'DP3 dalam 2 tahun terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2023-01-11 00:55:56'),
('DP3 dalam 2 tahun terakhir_198106262014061003_IB000179.pdf', 'IB000179', 44, 'DP3 dalam 2 tahun terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2023-01-11 01:00:04'),
('DP3 dalam 2 tahun terakhir_198203252018013101_IB000013.pdf', 'IB000013', 44, 'DP3 dalam 2 tahun terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-09 08:58:43'),
('DP3 dalam 2 tahun terakhir_198205092018013101_IB000045.pdf', 'IB000045', 44, 'DP3 dalam 2 tahun terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-23 09:41:39'),
('DP3 dalam 2 tahun terakhir_198205092018013101_IB000104.pdf', 'IB000104', 44, 'DP3 dalam 2 tahun terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-06 04:22:56'),
('DP3 dalam 2 tahun terakhir_198210082008102001_IB000162.pdf', 'IB000162', 44, 'DP3 dalam 2 tahun terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-10-24 01:05:08'),
('DP3 dalam 2 tahun terakhir_198212212018013101_IB000080.pdf', 'IB000080', 44, 'DP3 dalam 2 tahun terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-05-04 06:15:12'),
('DP3 dalam 2 tahun terakhir_198212212018013101_IB000081.pdf', 'IB000081', 44, 'DP3 dalam 2 tahun terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-05-04 06:23:12'),
('DP3 dalam 2 tahun terakhir_198304182018013101_IB000105.pdf', 'IB000105', 44, 'DP3 dalam 2 tahun terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-07 07:57:14'),
('DP3 dalam 2 tahun terakhir_198311082018013201_IB000060.pdf', 'IB000060', 44, 'DP3 dalam 2 tahun terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-03-24 03:26:03'),
('DP3 dalam 2 tahun terakhir_198406062015042001_IB000051.pdf', 'IB000051', 44, 'DP3 dalam 2 tahun terakhir', 'pdf', 0, '', '', '0000-00-00', '', '2022-06-10 07:47:58'),
('DP3 dalam 2 tahun terakhir_198412072018035101_IB000032.pdf', 'IB000032', 44, 'DP3 dalam 2 tahun terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-16 07:12:19'),
('DP3 dalam 2 tahun terakhir_198412072018035101_IB000033.pdf', 'IB000033', 44, 'DP3 dalam 2 tahun terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-16 07:18:19'),
('DP3 dalam 2 tahun terakhir_198412072018035101_IB000037.pdf', 'IB000037', 44, 'DP3 dalam 2 tahun terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-22 05:32:41'),
('DP3 dalam 2 tahun terakhir_198412072018035101_IB000038.pdf', 'IB000038', 44, 'DP3 dalam 2 tahun terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-22 05:38:53'),
('DP3 dalam 2 tahun terakhir_198412072018035101_IB000039.pdf', 'IB000039', 44, 'DP3 dalam 2 tahun terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-22 05:49:00'),
('DP3 dalam 2 tahun terakhir_198412072018035101_IB000043.pdf', 'IB000043', 44, 'DP3 dalam 2 tahun terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-23 02:32:25'),
('DP3 dalam 2 tahun terakhir_198412072018035101_IB000053.pdf', 'IB000053', 44, 'DP3 dalam 2 tahun terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-03-02 03:37:49'),
('DP3 dalam 2 tahun terakhir_198412072018035101_IB000054.pdf', 'IB000054', 44, 'DP3 dalam 2 tahun terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-03-11 06:24:12'),
('DP3 dalam 2 tahun terakhir_198412072018035101_IB000163.pdf', 'IB000163', 44, 'DP3 dalam 2 tahun terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-10-24 02:02:03'),
('DP3 dalam 2 tahun terakhir_198412152009122007_IB000017.pdf', 'IB000017', 44, 'DP3 dalam 2 tahun terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-23 07:52:58'),
('DP3 dalam 2 tahun terakhir_198504082018013101_IB000077.pdf', 'IB000077', 44, 'DP3 dalam 2 tahun terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-04-19 15:45:55'),
('DP3 dalam 2 tahun terakhir_198505212018013101_IB000047.pdf', 'IB000047', 44, 'DP3 dalam 2 tahun terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-23 09:55:03'),
('DP3 dalam 2 tahun terakhir_198505212018013101_IB000071.pdf', 'IB000071', 44, 'DP3 dalam 2 tahun terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-04-16 07:48:42'),
('DP3 dalam 2 tahun terakhir_198509012009022012_IB000002.pdf', 'IB000002', 44, 'DP3 dalam 2 tahun terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-01-26 12:08:54'),
('DP3 dalam 2 tahun terakhir_198601252016113201_IB000064.pdf', 'IB000064', 44, 'DP3 dalam 2 tahun terakhir', 'pdf', 0, '', '', '0000-00-00', '', '2022-06-10 08:04:40'),
('DP3 dalam 2 tahun terakhir_198603012016113101_IB000106.pdf', 'IB000106', 44, 'DP3 dalam 2 tahun terakhir', 'pdf', 0, '', '', '0000-00-00', '', '2022-06-13 09:14:01'),
('DP3 dalam 2 tahun terakhir_198604122015043101_IB000083.pdf', 'IB000083', 44, 'DP3 dalam 2 tahun terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-13 13:26:38'),
('DP3 dalam 2 tahun terakhir_198604182018013201_IB000022.pdf', 'IB000022', 44, 'DP3 dalam 2 tahun terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-09 04:23:48'),
('DP3 dalam 2 tahun terakhir_198606022015042001_IB000065.pdf', 'IB000065', 44, 'DP3 dalam 2 tahun terakhir', 'pdf', 0, '', '', '0000-00-00', '', '2022-06-10 08:07:25'),
('DP3 dalam 2 tahun terakhir_198609012018013101_IB000006.pdf', 'IB000006', 44, 'DP3 dalam 2 tahun terakhir', 'pdf', 0, '', '', '0000-00-00', '', '2022-01-31 04:52:48'),
('DP3 dalam 2 tahun terakhir_198611092015042002_IB000066.pdf', 'IB000066', 44, 'DP3 dalam 2 tahun terakhir', 'pdf', 0, '', '', '0000-00-00', '', '2022-06-10 08:08:58'),
('DP3 dalam 2 tahun terakhir_198701102015042001_IB000121.pdf', 'IB000121', 44, 'DP3 dalam 2 tahun terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-26 23:47:36'),
('DP3 dalam 2 tahun terakhir_198701102015042001_IB000123.pdf', 'IB000123', 44, 'DP3 dalam 2 tahun terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-27 05:07:03'),
('DP3 dalam 2 tahun terakhir_198701102015042001_IB000125.pdf', 'IB000125', 44, 'DP3 dalam 2 tahun terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-28 22:52:29'),
('DP3 dalam 2 tahun terakhir_198702232016113201_IB000050.pdf', 'IB000050', 44, 'DP3 dalam 2 tahun terakhir', 'pdf', 0, '', '', '0000-00-00', '', '2022-06-10 07:42:28'),
('DP3 dalam 2 tahun terakhir_198704252016033201_IB000068.pdf', 'IB000068', 44, 'DP3 dalam 2 tahun terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-04-12 07:54:06'),
('DP3 dalam 2 tahun terakhir_198705022015042002_IB000048.pdf', 'IB000048', 44, 'DP3 dalam 2 tahun terakhir', 'pdf', 0, '', '', '0000-00-00', '', '2022-06-10 07:35:10'),
('DP3 dalam 2 tahun terakhir_198705212018083201_IB000057.pdf', 'IB000057', 44, 'DP3 dalam 2 tahun terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-02 04:43:16'),
('DP3 dalam 2 tahun terakhir_198711022015042003_IB000113.pdf', 'IB000113', 44, 'DP3 dalam 2 tahun terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-21 02:18:30'),
('DP3 dalam 2 tahun terakhir_198711112015041005_IB000108.pdf', 'IB000108', 44, 'DP3 dalam 2 tahun terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-11 04:21:15'),
('DP3 dalam 2 tahun terakhir_198805012016113201_IB000115.pdf', 'IB000115', 44, 'DP3 dalam 2 tahun terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-23 10:26:19'),
('DP3 dalam 2 tahun terakhir_198805162018013101_IB000119.pdf', 'IB000119', 44, 'DP3 dalam 2 tahun terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-24 08:39:52'),
('DP3 dalam 2 tahun terakhir_198808112018013201_IB000103.pdf', 'IB000103', 44, 'DP3 dalam 2 tahun terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-06 04:19:08'),
('DP3 dalam 2 tahun terakhir_198812152018013101_IB000122.pdf', 'IB000122', 44, 'DP3 dalam 2 tahun terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-27 02:44:32'),
('DP3 dalam 2 tahun terakhir_198906112018013101_IB000008.pdf', 'IB000008', 44, 'DP3 dalam 2 tahun terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-02 07:27:21'),
('DP3 dalam 2 tahun terakhir_198906112018013101_IB000010.pdf', 'IB000010', 44, 'DP3 dalam 2 tahun terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-02 07:37:56'),
('DP3 dalam 2 tahun terakhir_198912262016113201_IB000089.pdf', 'IB000089', 44, 'DP3 dalam 2 tahun terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-05-30 11:55:06'),
('DP3 dalam 2 tahun terakhir_199001132015043101_IB000067.pdf', 'IB000067', 44, 'DP3 dalam 2 tahun terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-04-12 07:30:41'),
('DP3 dalam 2 tahun terakhir_199003122016033101_IB000011.pdf', 'IB000011', 44, 'DP3 dalam 2 tahun terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-02 08:46:17'),
('DP3 dalam 2 tahun terakhir_199003312018013101_IB000028.pdf', 'IB000028', 44, 'DP3 dalam 2 tahun terakhir', 'pdf', 0, '', '', '0000-00-00', '', '2022-10-06 03:35:03'),
('DP3 dalam 2 tahun terakhir_199008082021093101_IB000156.pdf', 'IB000156', 44, 'DP3 dalam 2 tahun terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-09-14 08:21:04'),
('DP3 dalam 2 tahun terakhir_199008232015043201_IB000003.pdf', 'IB000003', 44, 'DP3 dalam 2 tahun terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-01-26 02:51:41'),
('DP3 dalam 2 tahun terakhir_199010272018013101_IB000024.pdf', 'IB000024', 44, 'DP3 dalam 2 tahun terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-09 04:30:11'),
('DP3 dalam 2 tahun terakhir_199107132018013201_IB000044.pdf', 'IB000044', 44, 'DP3 dalam 2 tahun terakhir', 'pdf', 0, '', '', '0000-00-00', '', '2022-10-07 02:52:15'),
('DP3 dalam 2 tahun terakhir_199110152015043201_IB000001.pdf', 'IB000001', 44, 'DP3 dalam 2 tahun terakhir', 'pdf', 0, '', '', '0000-00-00', '', '2022-01-28 01:27:58'),
('DP3 dalam 2 tahun terakhir_199204202021093101_IB000154.pdf', 'IB000154', 44, 'DP3 dalam 2 tahun terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-10-05 01:40:55'),
('DP3 dalam 2 tahun terakhir_199206042018013101_IB000005.pdf', 'IB000005', 44, 'DP3 dalam 2 tahun terakhir', 'pdf', 0, '', NULL, NULL, NULL, '2022-01-31 09:36:13'),
('DP3 dalam 2 tahun terakhir_199207072018083201_IB000091.pdf', 'IB000091', 44, 'DP3 dalam 2 tahun terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-05-30 04:24:45'),
('DP3 dalam 2 tahun terakhir_199310062018013101_IB000128.pdf', 'IB000128', 44, 'DP3 dalam 2 tahun terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-29 12:13:03'),
('DP3 dalam 2 tahun terakhir_199412162018035101_IB000070.pdf', 'IB000070', 44, 'DP3 dalam 2 tahun terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-04-08 06:23:08'),
('DP3 dalam 2 tahun terakhir_199508212018035101_IB000029.pdf', 'IB000029', 44, 'DP3 dalam 2 tahun terakhir', 'pdf', 0, '', '', '0000-00-00', '', '2022-10-07 09:19:58'),
('DP3 dalam 2 tahun terakhir_199512052021025101_IB000012.pdf', 'IB000012', 44, 'DP3 dalam 2 tahun terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-07 04:47:54'),
('DP3 dalam 2 tahun terakhir_199602112019015101_IB000034.pdf', 'IB000034', 44, 'DP3 dalam 2 tahun terakhir', 'pdf', 0, '', '', '0000-00-00', '', '2022-10-07 03:51:27'),
('DP3 dalam 2 tahun terakhir_199905072019105101_IB000020.pdf', 'IB000020', 44, 'DP3 dalam 2 tahun terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-09 03:58:40'),
('DP3 dalam 2 tahun terakhir__IB000085.pdf', 'IB000085', 44, 'DP3 dalam 2 tahun terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-05-12 05:30:20'),
('SK CPNS_Calon Pegawai tetap_197205021999031002_IB000086.pdf', 'IB000086', 49, 'SK CPNS_Calon Pegawai tetap', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-02 07:44:23'),
('SK CPNS_Calon Pegawai tetap_197505222003121002_IB000111.pdf', 'IB000111', 49, 'SK CPNS_Calon Pegawai tetap', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-14 03:41:00'),
('SK CPNS_Calon Pegawai tetap_197812252018013101_IB000021.pdf', 'IB000021', 49, 'SK CPNS_Calon Pegawai tetap', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-09 04:12:02'),
('SK CPNS_Calon Pegawai tetap_198009162006041002_IB000007.pdf', 'IB000007', 49, 'SK CPNS_Calon Pegawai tetap', 'pdf', 0, '', '', '0000-00-00', '', '2022-02-03 01:35:41'),
('SK CPNS_Calon Pegawai tetap_198104072005011001_IB000014.pdf', 'IB000014', 49, 'SK CPNS_Calon Pegawai tetap', 'pdf', 0, '', '', '0000-00-00', '', '2022-04-07 02:33:14'),
('SK CPNS_Calon Pegawai tetap_198104082008101001_IB000088.pdf', 'IB000088', 49, 'SK CPNS_Calon Pegawai tetap', 'pdf', 2, '', '', '0000-00-00', '', '2022-05-25 03:33:01'),
('SK CPNS_Calon Pegawai tetap_198210082008102001_IB000162.pdf', 'IB000162', 49, 'SK CPNS_Calon Pegawai tetap', 'pdf', 2, '', '', '0000-00-00', '', '2022-10-24 01:12:01'),
('SK CPNS_Calon Pegawai tetap_198309102018013101_IB000173.pdf', 'IB000173', 49, 'SK CPNS_Calon Pegawai tetap', 'pdf', 2, '', '', '0000-00-00', '', '2022-10-29 05:16:43'),
('SK CPNS_Calon Pegawai tetap_198311082018013201_IB000060.pdf', 'IB000060', 49, 'SK CPNS_Calon Pegawai tetap', 'pdf', 2, '', '', '0000-00-00', '', '2022-05-31 02:03:12'),
('SK CPNS_Calon Pegawai tetap_198406062015042001_IB000051.pdf', 'IB000051', 49, 'SK CPNS_Calon Pegawai tetap', 'pdf', 0, '', '', '0000-00-00', '', '2022-06-10 07:48:19'),
('SK CPNS_Calon Pegawai tetap_198412152009122007_IB000017.pdf', 'IB000017', 49, 'SK CPNS_Calon Pegawai tetap', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-21 08:50:40'),
('SK CPNS_Calon Pegawai tetap_198601252016113201_IB000064.pdf', 'IB000064', 49, 'SK CPNS_Calon Pegawai tetap', 'pdf', 0, '', '', '0000-00-00', '', '2022-06-10 08:04:42'),
('SK CPNS_Calon Pegawai tetap_198603012016113101_IB000106.pdf', 'IB000106', 49, 'SK CPNS_Calon Pegawai tetap', 'pdf', 0, '', '', '0000-00-00', '', '2022-06-13 09:14:02'),
('SK CPNS_Calon Pegawai tetap_198604182018013201_IB000022.pdf', 'IB000022', 49, 'SK CPNS_Calon Pegawai tetap', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-09 04:39:11'),
('SK CPNS_Calon Pegawai tetap_198606022015042001_IB000065.pdf', 'IB000065', 49, 'SK CPNS_Calon Pegawai tetap', 'pdf', 0, '', '', '0000-00-00', '', '2022-06-10 08:07:26'),
('SK CPNS_Calon Pegawai tetap_198609012018013101_IB000006.pdf', 'IB000006', 49, 'SK CPNS_Calon Pegawai tetap', 'pdf', 0, '', '', '0000-00-00', '', '2022-01-31 04:52:49'),
('SK CPNS_Calon Pegawai tetap_198611092015042002_IB000066.pdf', 'IB000066', 49, 'SK CPNS_Calon Pegawai tetap', 'pdf', 0, '', '', '0000-00-00', '', '2022-06-10 08:09:07'),
('SK CPNS_Calon Pegawai tetap_198702232016113201_IB000050.pdf', 'IB000050', 49, 'SK CPNS_Calon Pegawai tetap', 'pdf', 0, '', '', '0000-00-00', '', '2022-06-10 07:42:50'),
('SK CPNS_Calon Pegawai tetap_198704252016033201_IB000068.pdf', 'IB000068', 49, 'SK CPNS_Calon Pegawai tetap', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-21 10:30:49'),
('SK CPNS_Calon Pegawai tetap_198705022015042002_IB000048.pdf', 'IB000048', 49, 'SK CPNS_Calon Pegawai tetap', 'pdf', 0, '', '', '0000-00-00', '', '2022-06-10 07:35:52'),
('SK CPNS_Calon Pegawai tetap_198705212018083201_IB000057.pdf', 'IB000057', 49, 'SK CPNS_Calon Pegawai tetap', 'pdf', 2, '', '', '0000-00-00', '', '2022-07-27 03:45:27'),
('SK CPNS_Calon Pegawai tetap_198711022015042003_IB000113.pdf', 'IB000113', 49, 'SK CPNS_Calon Pegawai tetap', 'pdf', 2, '', '', '0000-00-00', '', '2022-07-11 02:27:41'),
('SK CPNS_Calon Pegawai tetap_198912262016113201_IB000089.pdf', 'IB000089', 49, 'SK CPNS_Calon Pegawai tetap', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-21 09:29:14'),
('SK CPNS_Calon Pegawai tetap_199001132015043101_IB000067.pdf', 'IB000067', 49, 'SK CPNS_Calon Pegawai tetap', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-21 10:24:22'),
('SK CPNS_Calon Pegawai tetap_199003122016033101_IB000011.pdf', 'IB000011', 49, 'SK CPNS_Calon Pegawai tetap', 'pdf', 2, '', '', '0000-00-00', '', '2022-08-31 08:30:30'),
('SK CPNS_Calon Pegawai tetap_199003312018013101_IB000028.pdf', 'IB000028', 49, 'SK CPNS_Calon Pegawai tetap', 'pdf', 0, '', '', '0000-00-00', '', '2022-10-06 03:35:41'),
('SK CPNS_Calon Pegawai tetap_199008232015043201_IB000003.pdf', 'IB000003', 49, 'SK CPNS_Calon Pegawai tetap', 'pdf', 2, '', '', '0000-00-00', '', '2022-01-26 03:01:27'),
('SK CPNS_Calon Pegawai tetap_199107132018013201_IB000044.pdf', 'IB000044', 49, 'SK CPNS_Calon Pegawai tetap', 'pdf', 0, '', '', '0000-00-00', '', '2022-10-07 02:52:38'),
('SK CPNS_Calon Pegawai tetap_199110152015043201_IB000001.pdf', 'IB000001', 49, 'SK CPNS_Calon Pegawai tetap', 'pdf', 0, '', '', '0000-00-00', '', '2022-01-28 01:28:00'),
('SK CPNS_Calon Pegawai tetap_199206042018013101_IB000005.pdf', 'IB000005', 49, 'SK CPNS_Calon Pegawai tetap', 'pdf', 0, '', '', '0000-00-00', '', '2022-01-31 09:32:57'),
('SK CPNS_Calon Pegawai tetap_199207072018083201_IB000091.pdf', 'IB000091', 49, 'SK CPNS_Calon Pegawai tetap', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-21 10:26:14'),
('SK CPNS_Calon Pegawai tetap_199508212018035101_IB000029.pdf', 'IB000029', 49, 'SK CPNS_Calon Pegawai tetap', 'pdf', 0, '', '', '0000-00-00', '', '2022-10-07 09:20:17'),
('SK CPNS_Calon Pegawai tetap_199602112019015101_IB000034.pdf', 'IB000034', 49, 'SK CPNS_Calon Pegawai tetap', 'pdf', 0, '', '', '0000-00-00', '', '2022-10-07 04:59:39'),
('SK Izin Belajar_198009162006041002_IB000007.pdf', 'IB000007', 53, 'SK Izin Belajar', 'pdf', 0, '', NULL, NULL, NULL, '2022-02-03 01:36:16'),
('SK Izin Belajar_198104072005011001_IB000014.pdf', 'IB000014', 53, 'SK Izin Belajar', 'pdf', 0, '', NULL, NULL, NULL, '2022-04-07 02:39:10'),
('SK Izin Belajar_198609012018013101_IB000006.pdf', 'IB000006', 53, 'SK Izin Belajar', 'pdf', 0, '', NULL, NULL, NULL, '2022-01-31 04:54:44'),
('SK Izin Belajar_199110152015043201_IB000001.pdf', 'IB000001', 53, 'SK Izin Belajar', 'pdf', 0, '', NULL, NULL, NULL, '2022-01-28 01:30:21'),
('SK Izin Belajar_199206042018013101_IB000005.pdf', 'IB000005', 53, 'SK Izin Belajar', 'pdf', 0, '', NULL, NULL, NULL, '2022-01-31 09:37:31'),
('SK Kenaikan Jabatan Terakhir_197205021999031002_IB000086.pdf', 'IB000086', 52, 'SK Kenaikan Jabatan Terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-02 07:44:23'),
('SK Kenaikan Jabatan Terakhir_197505222003121002_IB000111.pdf', 'IB000111', 52, 'SK Kenaikan Jabatan Terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-14 03:41:00'),
('SK Kenaikan Jabatan Terakhir_197812252018013101_IB000021.pdf', 'IB000021', 52, 'SK Kenaikan Jabatan Terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-09 04:12:02'),
('SK Kenaikan Jabatan terakhir_198009162006041002_IB000007.pdf', 'IB000007', 52, 'SK Kenaikan Jabatan terakhir', 'pdf', 0, '', '', '0000-00-00', '', '2022-02-03 01:35:43'),
('SK Kenaikan Jabatan Terakhir_198104072005011001_IB000014.pdf', 'IB000014', 52, 'SK Kenaikan Jabatan Terakhir', 'pdf', 0, '', '', '0000-00-00', '', '2022-04-07 02:33:16'),
('SK Kenaikan Jabatan terakhir_198210082008102001_IB000162.pdf', 'IB000162', 52, 'SK Kenaikan Jabatan terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-10-24 01:18:32'),
('SK Kenaikan Jabatan Terakhir_198311082018013201_IB000060.pdf', 'IB000060', 52, 'SK Kenaikan Jabatan Terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-05-31 02:03:12'),
('SK Kenaikan Jabatan Terakhir_198406062015042001_IB000051.pdf', 'IB000051', 52, 'SK Kenaikan Jabatan Terakhir', 'pdf', 0, '', '', '0000-00-00', '', '2022-06-10 07:48:40'),
('SK Kenaikan Jabatan Terakhir_198412152009122007_IB000017.pdf', 'IB000017', 52, 'SK Kenaikan Jabatan Terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-21 08:50:40'),
('SK Kenaikan Jabatan Terakhir_198601252016113201_IB000064.pdf', 'IB000064', 52, 'SK Kenaikan Jabatan Terakhir', 'pdf', 0, '', '', '0000-00-00', '', '2022-06-10 08:04:45'),
('SK Kenaikan Jabatan Terakhir_198603012016113101_IB000106.pdf', 'IB000106', 52, 'SK Kenaikan Jabatan Terakhir', 'pdf', 0, '', '', '0000-00-00', '', '2022-06-13 09:14:03'),
('SK Kenaikan Jabatan Terakhir_198604182018013201_IB000022.pdf', 'IB000022', 52, 'SK Kenaikan Jabatan Terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-09 04:39:11'),
('SK Kenaikan Jabatan Terakhir_198606022015042001_IB000065.pdf', 'IB000065', 52, 'SK Kenaikan Jabatan Terakhir', 'pdf', 0, '', '', '0000-00-00', '', '2022-06-10 08:07:28'),
('SK Kenaikan Jabatan terakhir_198609012018013101_IB000006.pdf', 'IB000006', 52, 'SK Kenaikan Jabatan terakhir', 'pdf', 0, '', '', '0000-00-00', '', '2022-01-31 04:52:50'),
('SK Kenaikan Jabatan Terakhir_198611092015042002_IB000066.pdf', 'IB000066', 52, 'SK Kenaikan Jabatan Terakhir', 'pdf', 0, '', '', '0000-00-00', '', '2022-06-10 08:09:21'),
('SK Kenaikan Jabatan Terakhir_198702232016113201_IB000050.pdf', 'IB000050', 52, 'SK Kenaikan Jabatan Terakhir', 'pdf', 0, '', '', '0000-00-00', '', '2022-06-10 07:43:07'),
('SK Kenaikan Jabatan Terakhir_198704252016033201_IB000068.pdf', 'IB000068', 52, 'SK Kenaikan Jabatan Terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-21 10:30:49'),
('SK Kenaikan Jabatan Terakhir_198705022015042002_IB000048.pdf', 'IB000048', 52, 'SK Kenaikan Jabatan Terakhir', 'pdf', 0, '', '', '0000-00-00', '', '2022-06-10 07:36:14'),
('SK Kenaikan Jabatan Terakhir_198705212018083201_IB000057.pdf', 'IB000057', 52, 'SK Kenaikan Jabatan Terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-07-27 03:45:27'),
('SK Kenaikan Jabatan Terakhir_198711022015042003_IB000113.pdf', 'IB000113', 52, 'SK Kenaikan Jabatan Terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-07-11 02:27:41'),
('SK Kenaikan Jabatan Terakhir_198912262016113201_IB000089.pdf', 'IB000089', 52, 'SK Kenaikan Jabatan Terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-21 09:29:14'),
('SK Kenaikan Jabatan Terakhir_199001132015043101_IB000067.pdf', 'IB000067', 52, 'SK Kenaikan Jabatan Terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-21 10:24:22'),
('SK Kenaikan Jabatan Terakhir_199003122016033101_IB000011.pdf', 'IB000011', 52, 'SK Kenaikan Jabatan Terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-08-31 08:30:30'),
('SK Kenaikan Jabatan Terakhir_199003312018013101_IB000028.pdf', 'IB000028', 52, 'SK Kenaikan Jabatan Terakhir', 'pdf', 0, '', '', '0000-00-00', '', '2022-10-06 03:36:34'),
('SK Kenaikan Jabatan Terakhir_199008232015043201_IB000003.pdf', 'IB000003', 52, 'SK Kenaikan Jabatan Terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-01-26 03:01:27'),
('SK Kenaikan Jabatan Terakhir_199107132018013201_IB000044.pdf', 'IB000044', 52, 'SK Kenaikan Jabatan Terakhir', 'pdf', 0, '', '', '0000-00-00', '', '2022-10-07 02:53:45'),
('SK Kenaikan Jabatan Terakhir_199110152015043201_IB000001.pdf', 'IB000001', 52, 'SK Kenaikan Jabatan Terakhir', 'pdf', 0, '', '', '0000-00-00', '', '2022-01-28 01:28:02'),
('SK Kenaikan Jabatan terakhir_199206042018013101_IB000005.pdf', 'IB000005', 52, 'SK Kenaikan Jabatan terakhir', 'pdf', 0, '', NULL, NULL, NULL, '2022-01-31 09:36:15'),
('SK Kenaikan Jabatan Terakhir_199207072018083201_IB000091.pdf', 'IB000091', 52, 'SK Kenaikan Jabatan Terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-21 10:26:14'),
('SK Kenaikan Jabatan Terakhir_199508212018035101_IB000029.pdf', 'IB000029', 52, 'SK Kenaikan Jabatan Terakhir', 'pdf', 0, '', '', '0000-00-00', '', '2022-10-07 09:20:37'),
('SK Kenaikan Jabatan Terakhir_199602112019015101_IB000034.pdf', 'IB000034', 52, 'SK Kenaikan Jabatan Terakhir', 'pdf', 0, '', '', '0000-00-00', '', '2022-10-07 05:01:39'),
('SK Kenaikan Pangkat terakhir_197205021999031002_IB000086.pdf', 'IB000086', 51, 'SK Kenaikan Pangkat terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-02 07:44:23'),
('SK Kenaikan Pangkat terakhir_197505222003121002_IB000111.pdf', 'IB000111', 51, 'SK Kenaikan Pangkat terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-14 03:41:00'),
('SK Kenaikan Pangkat terakhir_197812252018013101_IB000021.pdf', 'IB000021', 51, 'SK Kenaikan Pangkat terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-09 04:12:02'),
('SK Kenaikan Pangkat terakhir_198009162006041002_IB000007.pdf', 'IB000007', 51, 'SK Kenaikan Pangkat terakhir', 'pdf', 0, '', '', '0000-00-00', '', '2022-02-03 01:35:44'),
('SK Kenaikan Pangkat terakhir_198104072005011001_IB000014.pdf', 'IB000014', 51, 'SK Kenaikan Pangkat terakhir', 'pdf', 0, '', '', '0000-00-00', '', '2022-04-07 02:33:17'),
('SK Kenaikan Pangkat terakhir_198104082008101001_IB000088.pdf', 'IB000088', 51, 'SK Kenaikan Pangkat terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-05-25 03:33:16'),
('SK Kenaikan Pangkat terakhir_198210082008102001_IB000162.pdf', 'IB000162', 51, 'SK Kenaikan Pangkat terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-10-24 01:18:25'),
('SK Kenaikan Pangkat terakhir_198311082018013201_IB000060.pdf', 'IB000060', 51, 'SK Kenaikan Pangkat terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-05-31 02:03:12'),
('SK Kenaikan Pangkat terakhir_198406062015042001_IB000051.pdf', 'IB000051', 51, 'SK Kenaikan Pangkat terakhir', 'pdf', 0, '', '', '0000-00-00', '', '2022-06-10 07:49:00'),
('SK Kenaikan Pangkat terakhir_198412152009122007_IB000017.pdf', 'IB000017', 51, 'SK Kenaikan Pangkat terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-21 08:50:40'),
('SK Kenaikan Pangkat terakhir_198601252016113201_IB000064.pdf', 'IB000064', 51, 'SK Kenaikan Pangkat terakhir', 'pdf', 0, '', '', '0000-00-00', '', '2022-06-10 08:04:46'),
('SK Kenaikan Pangkat terakhir_198603012016113101_IB000106.pdf', 'IB000106', 51, 'SK Kenaikan Pangkat terakhir', 'pdf', 0, '', '', '0000-00-00', '', '2022-06-13 09:14:05'),
('SK Kenaikan Pangkat terakhir_198604182018013201_IB000022.pdf', 'IB000022', 51, 'SK Kenaikan Pangkat terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-09 04:39:11'),
('SK Kenaikan Pangkat terakhir_198606022015042001_IB000065.pdf', 'IB000065', 51, 'SK Kenaikan Pangkat terakhir', 'pdf', 0, '', '', '0000-00-00', '', '2022-06-10 08:07:29'),
('SK Kenaikan Pangkat terakhir_198609012018013101_IB000006.pdf', 'IB000006', 51, 'SK Kenaikan Pangkat terakhir', 'pdf', 0, '', '', '0000-00-00', '', '2022-01-31 04:52:51'),
('SK Kenaikan Pangkat terakhir_198611092015042002_IB000066.pdf', 'IB000066', 51, 'SK Kenaikan Pangkat terakhir', 'pdf', 0, '', '', '0000-00-00', '', '2022-06-10 08:09:28'),
('SK Kenaikan Pangkat terakhir_198702232016113201_IB000050.pdf', 'IB000050', 51, 'SK Kenaikan Pangkat terakhir', 'pdf', 0, '', '', '0000-00-00', '', '2022-06-10 07:43:23'),
('SK Kenaikan Pangkat terakhir_198704252016033201_IB000068.pdf', 'IB000068', 51, 'SK Kenaikan Pangkat terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-21 10:30:49'),
('SK Kenaikan Pangkat terakhir_198705022015042002_IB000048.pdf', 'IB000048', 51, 'SK Kenaikan Pangkat terakhir', 'pdf', 0, '', '', '0000-00-00', '', '2022-06-10 07:36:40'),
('SK Kenaikan Pangkat terakhir_198705212018083201_IB000057.pdf', 'IB000057', 51, 'SK Kenaikan Pangkat terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-07-27 03:45:27'),
('SK Kenaikan Pangkat terakhir_198711022015042003_IB000113.pdf', 'IB000113', 51, 'SK Kenaikan Pangkat terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-07-11 02:27:41'),
('SK Kenaikan Pangkat terakhir_198912262016113201_IB000089.pdf', 'IB000089', 51, 'SK Kenaikan Pangkat terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-21 09:29:14'),
('SK Kenaikan Pangkat terakhir_199001132015043101_IB000067.pdf', 'IB000067', 51, 'SK Kenaikan Pangkat terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-21 10:24:22'),
('SK Kenaikan Pangkat terakhir_199003122016033101_IB000011.pdf', 'IB000011', 51, 'SK Kenaikan Pangkat terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-08-31 08:30:30'),
('SK Kenaikan Pangkat terakhir_199003312018013101_IB000028.pdf', 'IB000028', 51, 'SK Kenaikan Pangkat terakhir', 'pdf', 0, '', '', '0000-00-00', '', '2022-10-06 03:37:35'),
('SK Kenaikan Pangkat terakhir_199008232015043201_IB000003.pdf', 'IB000003', 51, 'SK Kenaikan Pangkat terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-01-26 03:01:27'),
('SK Kenaikan Pangkat terakhir_199107132018013201_IB000044.pdf', 'IB000044', 51, 'SK Kenaikan Pangkat terakhir', 'pdf', 0, '', '', '0000-00-00', '', '2022-10-07 02:54:59'),
('SK Kenaikan Pangkat terakhir_199110152015043201_IB000001.pdf', 'IB000001', 51, 'SK Kenaikan Pangkat terakhir', 'pdf', 0, '', '', '0000-00-00', '', '2022-01-28 01:28:03'),
('SK Kenaikan Pangkat terakhir_199206042018013101_IB000005.pdf', 'IB000005', 51, 'SK Kenaikan Pangkat terakhir', 'pdf', 0, '', NULL, NULL, NULL, '2022-01-31 09:36:16');
INSERT INTO `upload_file_ib` (`ID_UP_FILE_IB`, `ID_IB`, `ID_JENIS`, `NAMA_FILE_IB`, `TIPE_FILE`, `STATUS_FILE_IB`, `KETERANGAN_REVISI_IB`, `NOMOR_SURAT`, `TGL_SURAT`, `JABATAN_PIMPINAN`, `TGL_UPDATE`) VALUES
('SK Kenaikan Pangkat terakhir_199207072018083201_IB000091.pdf', 'IB000091', 51, 'SK Kenaikan Pangkat terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-21 10:26:14'),
('SK Kenaikan Pangkat terakhir_199508212018035101_IB000029.pdf', 'IB000029', 51, 'SK Kenaikan Pangkat terakhir', 'pdf', 0, '', '', '0000-00-00', '', '2022-10-07 09:20:45'),
('SK Kenaikan Pangkat terakhir_199602112019015101_IB000034.pdf', 'IB000034', 51, 'SK Kenaikan Pangkat terakhir', 'pdf', 0, '', '', '0000-00-00', '', '2022-10-07 05:02:41'),
('SK PNS_Pegawai Tetap_197205021999031002_IB000086.pdf', 'IB000086', 50, 'SK PNS_Pegawai Tetap', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-02 07:44:23'),
('SK PNS_Pegawai Tetap_197505222003121002_IB000111.pdf', 'IB000111', 50, 'SK PNS_Pegawai Tetap', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-14 03:41:00'),
('SK PNS_Pegawai Tetap_197812252018013101_IB000021.pdf', 'IB000021', 50, 'SK PNS_Pegawai Tetap', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-09 04:12:02'),
('SK PNS_Pegawai Tetap_198009162006041002_IB000007.pdf', 'IB000007', 50, 'SK PNS_Pegawai Tetap', 'pdf', 0, '', '', '0000-00-00', '', '2022-02-03 01:35:46'),
('SK PNS_Pegawai Tetap_198104072005011001_IB000014.pdf', 'IB000014', 50, 'SK PNS_Pegawai Tetap', 'pdf', 0, '', '', '0000-00-00', '', '2022-04-07 02:33:18'),
('SK PNS_Pegawai Tetap_198104082008101001_IB000088.pdf', 'IB000088', 50, 'SK PNS_Pegawai Tetap', 'pdf', 2, '', '', '0000-00-00', '', '2022-05-25 03:33:10'),
('SK PNS_Pegawai Tetap_198210082008102001_IB000162.pdf', 'IB000162', 50, 'SK PNS_Pegawai Tetap', 'pdf', 2, '', '', '0000-00-00', '', '2022-10-24 01:17:29'),
('SK PNS_Pegawai Tetap_198309102018013101_IB000173.pdf', 'IB000173', 50, 'SK PNS_Pegawai Tetap', 'pdf', 2, '', '', '0000-00-00', '', '2022-10-29 05:16:56'),
('SK PNS_Pegawai Tetap_198311082018013201_IB000060.pdf', 'IB000060', 50, 'SK PNS_Pegawai Tetap', 'pdf', 2, '', '', '0000-00-00', '', '2022-05-31 02:03:12'),
('SK PNS_Pegawai Tetap_198406062015042001_IB000051.pdf', 'IB000051', 50, 'SK PNS_Pegawai Tetap', 'pdf', 0, '', '', '0000-00-00', '', '2022-06-10 07:49:30'),
('SK PNS_Pegawai Tetap_198412152009122007_IB000017.pdf', 'IB000017', 50, 'SK PNS_Pegawai Tetap', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-21 08:50:40'),
('SK PNS_Pegawai Tetap_198601252016113201_IB000064.pdf', 'IB000064', 50, 'SK PNS_Pegawai Tetap', 'pdf', 0, '', '', '0000-00-00', '', '2022-06-10 08:04:48'),
('SK PNS_Pegawai Tetap_198603012016113101_IB000106.pdf', 'IB000106', 50, 'SK PNS_Pegawai Tetap', 'pdf', 0, '', '', '0000-00-00', '', '2022-06-13 09:14:06'),
('SK PNS_Pegawai Tetap_198604182018013201_IB000022.pdf', 'IB000022', 50, 'SK PNS_Pegawai Tetap', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-09 04:39:11'),
('SK PNS_Pegawai Tetap_198606022015042001_IB000065.pdf', 'IB000065', 50, 'SK PNS_Pegawai Tetap', 'pdf', 0, '', '', '0000-00-00', '', '2022-06-10 08:07:31'),
('SK PNS_Pegawai Tetap_198609012018013101_IB000006.pdf', 'IB000006', 50, 'SK PNS_Pegawai Tetap', 'pdf', 0, '', '', '0000-00-00', '', '2022-01-31 04:52:53'),
('SK PNS_Pegawai Tetap_198611092015042002_IB000066.pdf', 'IB000066', 50, 'SK PNS_Pegawai Tetap', 'pdf', 0, '', '', '0000-00-00', '', '2022-06-10 08:09:52'),
('SK PNS_Pegawai Tetap_198702232016113201_IB000050.pdf', 'IB000050', 50, 'SK PNS_Pegawai Tetap', 'pdf', 0, '', '', '0000-00-00', '', '2022-06-10 07:43:52'),
('SK PNS_Pegawai Tetap_198704252016033201_IB000068.pdf', 'IB000068', 50, 'SK PNS_Pegawai Tetap', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-21 10:30:49'),
('SK PNS_Pegawai Tetap_198705022015042002_IB000048.pdf', 'IB000048', 50, 'SK PNS_Pegawai Tetap', 'pdf', 0, '', '', '0000-00-00', '', '2022-06-10 07:36:59'),
('SK PNS_Pegawai Tetap_198705212018083201_IB000057.pdf', 'IB000057', 50, 'SK PNS_Pegawai Tetap', 'pdf', 2, '', '', '0000-00-00', '', '2022-07-27 03:45:27'),
('SK PNS_Pegawai Tetap_198711022015042003_IB000113.pdf', 'IB000113', 50, 'SK PNS_Pegawai Tetap', 'pdf', 2, '', '', '0000-00-00', '', '2022-07-11 02:27:41'),
('SK PNS_Pegawai Tetap_198912262016113201_IB000089.pdf', 'IB000089', 50, 'SK PNS_Pegawai Tetap', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-21 09:29:14'),
('SK PNS_Pegawai Tetap_199001132015043101_IB000067.pdf', 'IB000067', 50, 'SK PNS_Pegawai Tetap', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-21 10:24:22'),
('SK PNS_Pegawai Tetap_199003122016033101_IB000011.pdf', 'IB000011', 50, 'SK PNS_Pegawai Tetap', 'pdf', 2, '', '', '0000-00-00', '', '2022-08-31 08:30:30'),
('SK PNS_Pegawai Tetap_199003312018013101_IB000028.pdf', 'IB000028', 50, 'SK PNS_Pegawai Tetap', 'pdf', 0, '', '', '0000-00-00', '', '2022-10-06 03:38:13'),
('SK PNS_Pegawai Tetap_199008232015043201_IB000003.pdf', 'IB000003', 50, 'SK PNS_Pegawai Tetap', 'pdf', 2, '', '', '0000-00-00', '', '2022-01-26 03:01:27'),
('SK PNS_Pegawai Tetap_199107132018013201_IB000044.pdf', 'IB000044', 50, 'SK PNS_Pegawai Tetap', 'pdf', 0, '', '', '0000-00-00', '', '2022-10-07 02:55:29'),
('SK PNS_Pegawai Tetap_199110152015043201_IB000001.pdf', 'IB000001', 50, 'SK PNS_Pegawai Tetap', 'pdf', 0, '', '', '0000-00-00', '', '2022-01-28 01:28:04'),
('SK PNS_Pegawai Tetap_199206042018013101_IB000005.pdf', 'IB000005', 50, 'SK PNS_Pegawai Tetap', 'pdf', 0, '', '', '0000-00-00', '', '2022-01-31 09:33:06'),
('SK PNS_Pegawai Tetap_199207072018083201_IB000091.pdf', 'IB000091', 50, 'SK PNS_Pegawai Tetap', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-21 10:26:14'),
('SK PNS_Pegawai Tetap_199508212018035101_IB000029.pdf', 'IB000029', 50, 'SK PNS_Pegawai Tetap', 'pdf', 0, '', '', '0000-00-00', '', '2022-10-07 09:21:00'),
('SK PNS_Pegawai Tetap_199602112019015101_IB000034.pdf', 'IB000034', 50, 'SK PNS_Pegawai Tetap', 'pdf', 0, '', '', '0000-00-00', '', '2022-10-07 05:02:47'),
('surat keterangan sehat_196101251980122003_IB000155.pdf', 'IB000155', 45, 'surat keterangan sehat', 'pdf', 2, '', '', '0000-00-00', '', '2022-08-31 04:09:06'),
('surat keterangan sehat_197101042008121001_IB000084.pdf', 'IB000084', 45, 'surat keterangan sehat', 'pdf', 2, '', '', '0000-00-00', '', '2022-05-09 04:11:58'),
('surat keterangan sehat_197203311994032004_IB000159.pdf', 'IB000159', 45, 'surat keterangan sehat', 'pdf', 2, '', '', '0000-00-00', '', '2022-10-12 08:31:45'),
('surat keterangan sehat_197205021999031002_IB000086.pdf', 'IB000086', 45, 'surat keterangan sehat', 'pdf', 2, '', '', '0000-00-00', '', '2022-05-23 06:28:29'),
('surat keterangan sehat_197401262018035101_IB000069.pdf', 'IB000069', 45, 'surat keterangan sehat', 'pdf', 2, '', '', '0000-00-00', '', '2022-04-08 06:12:24'),
('surat keterangan sehat_197411092018035201_IB000140.pdf', 'IB000140', 45, 'surat keterangan sehat', 'pdf', 2, '', '', '0000-00-00', '', '2022-07-20 06:06:19'),
('surat keterangan sehat_197505222003121002_IB000111.pdf', 'IB000111', 45, 'surat keterangan sehat', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-14 03:33:05'),
('surat keterangan sehat_197505262003121006_IB000114.pdf', 'IB000114', 45, 'surat keterangan sehat', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-22 05:47:54'),
('surat keterangan sehat_197512062008121002_IB000171.pdf', 'IB000171', 45, 'surat keterangan sehat', 'pdf', 2, '', '', '0000-00-00', '', '2022-10-27 17:25:17'),
('surat keterangan sehat_197706102008102001_IB000055.pdf', 'IB000055', 45, 'surat keterangan sehat', 'pdf', 2, '', '', '0000-00-00', '', '2022-03-11 06:50:47'),
('surat keterangan sehat_197712202015043101_IB000149.pdf', 'IB000149', 45, 'surat keterangan sehat', 'pdf', 2, '', '', '0000-00-00', '', '2022-08-11 15:59:33'),
('surat keterangan sehat_197812252018013101_IB000021.pdf', 'IB000021', 45, 'surat keterangan sehat', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-09 04:02:06'),
('surat keterangan sehat_198002172005012001_IB000082.pdf', 'IB000082', 45, 'surat keterangan sehat', 'pdf', 2, '', '', '0000-00-00', '', '2022-05-06 17:34:21'),
('surat keterangan sehat_198005012006041002_IB000170.jpg', 'IB000170', 45, 'surat keterangan sehat', 'jpg', 2, '', '', '0000-00-00', '', '2022-11-10 07:05:55'),
('surat keterangan sehat_198005172018013201_IB000136.pdf', 'IB000136', 45, 'surat keterangan sehat', 'pdf', 2, '', '', '0000-00-00', '', '2022-07-15 09:25:08'),
('surat keterangan sehat_198005172018013201_IB000137.pdf', 'IB000137', 45, 'surat keterangan sehat', 'pdf', 2, '', '', '0000-00-00', '', '2022-07-15 09:41:00'),
('surat keterangan sehat_198005172018013201_IB000138.pdf', 'IB000138', 45, 'surat keterangan sehat', 'pdf', 2, '', '', '0000-00-00', '', '2022-07-19 08:40:34'),
('surat keterangan sehat_198005252005012004_IB000112.pdf', 'IB000112', 45, 'surat keterangan sehat', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-16 07:47:31'),
('surat keterangan sehat_198009162006041002_IB000007.pdf', 'IB000007', 45, 'surat keterangan sehat', 'pdf', 0, '', '', '0000-00-00', '', '2022-02-03 01:35:48'),
('surat keterangan sehat_198104072005011001_IB000014.pdf', 'IB000014', 45, 'surat keterangan sehat', 'pdf', 0, '', '', '0000-00-00', '', '2022-04-07 02:33:19'),
('surat keterangan sehat_198106262014061003_IB000167.pdf', 'IB000167', 45, 'surat keterangan sehat', 'pdf', 2, '', '', '0000-00-00', '', '2022-10-26 09:04:49'),
('surat keterangan sehat_198106262014061003_IB000177.pdf', 'IB000177', 45, 'surat keterangan sehat', 'pdf', 2, '', '', '0000-00-00', '', '2023-01-11 00:56:03'),
('surat keterangan sehat_198106262014061003_IB000179.pdf', 'IB000179', 45, 'surat keterangan sehat', 'pdf', 2, '', '', '0000-00-00', '', '2023-01-11 01:00:08'),
('surat keterangan sehat_198110062008012018_IB000015.pdf', 'IB000015', 45, 'surat keterangan sehat', 'pdf', 2, '', '', '0000-00-00', '', '2022-07-25 04:48:07'),
('surat keterangan sehat_198203252018013101_IB000013.pdf', 'IB000013', 45, 'surat keterangan sehat', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-09 08:59:33'),
('surat keterangan sehat_198205092018013101_IB000104.pdf', 'IB000104', 45, 'surat keterangan sehat', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-06 04:23:03'),
('surat keterangan sehat_198206062007101001_IB000079.pdf', 'IB000079', 45, 'surat keterangan sehat', 'pdf', 2, '', '', '0000-00-00', '', '2022-05-09 04:22:46'),
('surat keterangan sehat_198210082008102001_IB000162.pdf', 'IB000162', 45, 'surat keterangan sehat', 'pdf', 2, '', '', '0000-00-00', '', '2022-10-24 01:06:07'),
('surat keterangan sehat_198212212018013101_IB000076.pdf', 'IB000076', 45, 'surat keterangan sehat', 'pdf', 2, '', '', '0000-00-00', '', '2022-04-17 02:38:56'),
('surat keterangan sehat_198212212018013101_IB000080.pdf', 'IB000080', 45, 'surat keterangan sehat', 'pdf', 2, '', '', '0000-00-00', '', '2022-05-04 06:15:31'),
('surat keterangan sehat_198212212018013101_IB000081.pdf', 'IB000081', 45, 'surat keterangan sehat', 'pdf', 2, '', '', '0000-00-00', '', '2022-05-04 06:23:24'),
('surat keterangan sehat_198304182018013101_IB000105.pdf', 'IB000105', 45, 'surat keterangan sehat', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-07 07:57:21'),
('surat keterangan sehat_198311082018013201_IB000060.jpeg', 'IB000060', 45, 'surat keterangan sehat', 'jpeg', 2, '', '', '0000-00-00', '', '2022-04-04 03:13:01'),
('surat keterangan sehat_198406062015042001_IB000051.pdf', 'IB000051', 45, 'surat keterangan sehat', 'pdf', 0, '', '', '0000-00-00', '', '2022-06-10 07:49:49'),
('surat keterangan sehat_198407182019031002_IB000153.pdf', 'IB000153', 45, 'surat keterangan sehat', 'pdf', 2, '', '', '0000-00-00', '', '2022-08-29 05:51:16'),
('surat keterangan sehat_198412072018035101_IB000032.pdf', 'IB000032', 45, 'surat keterangan sehat', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-16 07:10:32'),
('surat keterangan sehat_198412072018035101_IB000033.pdf', 'IB000033', 45, 'surat keterangan sehat', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-16 07:18:33'),
('surat keterangan sehat_198412072018035101_IB000037.pdf', 'IB000037', 45, 'surat keterangan sehat', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-22 05:32:50'),
('surat keterangan sehat_198412072018035101_IB000038.pdf', 'IB000038', 45, 'surat keterangan sehat', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-22 05:39:03'),
('surat keterangan sehat_198412072018035101_IB000039.pdf', 'IB000039', 45, 'surat keterangan sehat', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-22 05:49:15'),
('surat keterangan sehat_198412072018035101_IB000043.pdf', 'IB000043', 45, 'surat keterangan sehat', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-23 02:32:46'),
('surat keterangan sehat_198412072018035101_IB000053.pdf', 'IB000053', 45, 'surat keterangan sehat', 'pdf', 2, '', '', '0000-00-00', '', '2022-03-02 03:39:08'),
('surat keterangan sehat_198412072018035101_IB000054.pdf', 'IB000054', 45, 'surat keterangan sehat', 'pdf', 2, '', '', '0000-00-00', '', '2022-03-11 06:24:21'),
('surat keterangan sehat_198412072018035101_IB000163.pdf', 'IB000163', 45, 'surat keterangan sehat', 'pdf', 2, '', '', '0000-00-00', '', '2022-10-24 02:02:32'),
('surat keterangan sehat_198412152009122007_IB000017.pdf', 'IB000017', 45, 'surat keterangan sehat', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-25 06:16:27'),
('surat keterangan sehat_198504082018013101_IB000077.pdf', 'IB000077', 45, 'surat keterangan sehat', 'pdf', 2, '', '', '0000-00-00', '', '2022-04-19 15:46:17'),
('surat keterangan sehat_198505212018013101_IB000071.pdf', 'IB000071', 45, 'surat keterangan sehat', 'pdf', 2, '', '', '0000-00-00', '', '2022-04-16 07:54:38'),
('surat keterangan sehat_198509012009022012_IB000002.pdf', 'IB000002', 45, 'surat keterangan sehat', 'pdf', 2, '', '', '0000-00-00', '', '2022-01-26 12:09:39'),
('surat keterangan sehat_198510142010121002_IB000085.pdf', 'IB000085', 45, 'surat keterangan sehat', 'pdf', 2, '', '', '0000-00-00', '', '2022-05-10 03:06:43'),
('surat keterangan sehat_198601252016113201_IB000064.pdf', 'IB000064', 45, 'surat keterangan sehat', 'pdf', 0, '', '', '0000-00-00', '', '2022-06-10 08:04:50'),
('surat keterangan sehat_198603012016113101_IB000106.pdf', 'IB000106', 45, 'surat keterangan sehat', 'pdf', 0, '', '', '0000-00-00', '', '2022-06-13 09:14:08'),
('surat keterangan sehat_198604122015043101_IB000083.pdf', 'IB000083', 45, 'surat keterangan sehat', 'pdf', 2, '', '', '0000-00-00', '', '2022-05-09 07:46:16'),
('surat keterangan sehat_198604182018013201_IB000022.pdf', 'IB000022', 45, 'surat keterangan sehat', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-09 04:22:40'),
('surat keterangan sehat_198606022015042001_IB000065.pdf', 'IB000065', 45, 'surat keterangan sehat', 'pdf', 0, '', '', '0000-00-00', '', '2022-06-10 08:07:33'),
('surat keterangan sehat_198609012018013101_IB000006.pdf', 'IB000006', 45, 'surat keterangan sehat', 'pdf', 0, '', '', '0000-00-00', '', '2022-01-31 04:52:54'),
('surat keterangan sehat_198611092015042002_IB000066.pdf', 'IB000066', 45, 'surat keterangan sehat', 'pdf', 0, '', '', '0000-00-00', '', '2022-06-10 08:10:02'),
('surat keterangan sehat_198701102015042001_IB000120.pdf', 'IB000120', 45, 'surat keterangan sehat', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-26 13:49:48'),
('surat keterangan sehat_198701102015042001_IB000123.pdf', 'IB000123', 45, 'surat keterangan sehat', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-27 05:07:49'),
('surat keterangan sehat_198701102015042001_IB000125.pdf', 'IB000125', 45, 'surat keterangan sehat', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-28 22:52:39'),
('surat keterangan sehat_198702232016113201_IB000050.pdf', 'IB000050', 45, 'surat keterangan sehat', 'pdf', 0, '', '', '0000-00-00', '', '2022-06-10 07:44:31'),
('surat keterangan sehat_198704252016033201_IB000068.pdf', 'IB000068', 45, 'surat keterangan sehat', 'pdf', 2, '', '', '0000-00-00', '', '2022-04-08 07:35:25'),
('surat keterangan sehat_198705022015042002_IB000048.pdf', 'IB000048', 45, 'surat keterangan sehat', 'pdf', 0, '', '', '0000-00-00', '', '2022-06-10 07:37:20'),
('surat keterangan sehat_198705212018083201_IB000057.pdf', 'IB000057', 45, 'surat keterangan sehat', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-02 04:24:04'),
('surat keterangan sehat_198711022015042003_IB000113.pdf', 'IB000113', 45, 'surat keterangan sehat', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-21 02:18:44'),
('surat keterangan sehat_198711112015041005_IB000108.pdf', 'IB000108', 45, 'surat keterangan sehat', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-11 04:03:06'),
('surat keterangan sehat_198805012016113201_IB000115.pdf', 'IB000115', 45, 'surat keterangan sehat', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-23 10:26:39'),
('surat keterangan sehat_198805162018013101_IB000119.pdf', 'IB000119', 45, 'surat keterangan sehat', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-24 08:40:11'),
('surat keterangan sehat_198808112018013201_IB000103.pdf', 'IB000103', 45, 'surat keterangan sehat', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-06 04:19:19'),
('surat keterangan sehat_198812152018013101_IB000122.pdf', 'IB000122', 45, 'surat keterangan sehat', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-27 02:44:41'),
('surat keterangan sehat_198906112018013101_IB000008.pdf', 'IB000008', 45, 'surat keterangan sehat', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-02 07:30:19'),
('surat keterangan sehat_198906112018013101_IB000010.pdf', 'IB000010', 45, 'surat keterangan sehat', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-02 07:38:06'),
('surat keterangan sehat_198912262016113201_IB000089.pdf', 'IB000089', 45, 'surat keterangan sehat', 'pdf', 2, '', '', '0000-00-00', '', '2022-05-30 11:55:49'),
('surat keterangan sehat_199001132015043101_IB000067.pdf', 'IB000067', 45, 'surat keterangan sehat', 'pdf', 2, '', '', '0000-00-00', '', '2022-04-12 07:30:50'),
('surat keterangan sehat_199003122016033101_IB000011.pdf', 'IB000011', 45, 'surat keterangan sehat', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-02 08:47:00'),
('surat keterangan sehat_199003312018013101_IB000028.pdf', 'IB000028', 45, 'surat keterangan sehat', 'pdf', 0, '', '', '0000-00-00', '', '2022-10-06 03:38:47'),
('surat keterangan sehat_199008082021093101_IB000156.pdf', 'IB000156', 45, 'surat keterangan sehat', 'pdf', 2, '', '', '0000-00-00', '', '2022-08-31 20:48:46'),
('surat keterangan sehat_199008232015043201_IB000003.pdf', 'IB000003', 45, 'surat keterangan sehat', 'pdf', 2, '', '', '0000-00-00', '', '2022-01-26 02:51:48'),
('surat keterangan sehat_199010272018013101_IB000024.pdf', 'IB000024', 45, 'surat keterangan sehat', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-09 04:30:17'),
('surat keterangan sehat_199107132018013201_IB000044.jpg', 'IB000044', 45, 'surat keterangan sehat', 'jpg', 0, '', '', '0000-00-00', '', '2022-10-07 02:55:55'),
('surat keterangan sehat_199110152015043201_IB000001.pdf', 'IB000001', 45, 'surat keterangan sehat', 'pdf', 0, '', '', '0000-00-00', '', '2022-01-28 01:28:06'),
('surat keterangan sehat_199204202021093101_IB000154.jpeg', 'IB000154', 45, 'surat keterangan sehat', 'jpeg', 2, '', '', '0000-00-00', '', '2022-08-31 03:29:03'),
('surat keterangan sehat_199206042018013101_IB000005.pdf', 'IB000005', 45, 'surat keterangan sehat', 'pdf', 0, '', '', '0000-00-00', '', '2022-01-31 09:33:07'),
('surat keterangan sehat_199207072018083201_IB000091.pdf', 'IB000091', 45, 'surat keterangan sehat', 'pdf', 2, '', '', '0000-00-00', '', '2022-05-27 11:56:18'),
('surat keterangan sehat_199310062018013101_IB000128.pdf', 'IB000128', 45, 'surat keterangan sehat', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-29 12:13:18'),
('surat keterangan sehat_199412162018035101_IB000070.pdf', 'IB000070', 45, 'surat keterangan sehat', 'pdf', 2, '', '', '0000-00-00', '', '2022-04-08 06:23:53'),
('surat keterangan sehat_199508212018035101_IB000029.pdf', 'IB000029', 45, 'surat keterangan sehat', 'pdf', 0, '', '', '0000-00-00', '', '2022-10-07 09:21:14'),
('surat keterangan sehat_199512052021025101_IB000012.pdf', 'IB000012', 45, 'surat keterangan sehat', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-04 10:09:47'),
('surat keterangan sehat_199602112019015101_IB000034.pdf', 'IB000034', 45, 'surat keterangan sehat', 'pdf', 0, '', '', '0000-00-00', '', '2022-10-07 05:03:08'),
('surat keterangan sehat_199905072019105101_IB000020.pdf', 'IB000020', 45, 'surat keterangan sehat', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-09 03:57:14'),
('Surat Keterangan studi Linear dengan pekerjaan_197205021999031002_IB000086.pdf', 'IB000086', 46, 'Surat Keterangan studi Linear dengan pekerjaan', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-02 07:44:23'),
('Surat Keterangan studi Linear dengan pekerjaan_197505222003121002_IB000111.pdf', 'IB000111', 46, 'Surat Keterangan studi Linear dengan pekerjaan', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-14 03:41:00'),
('Surat Keterangan studi Linear dengan pekerjaan_197812252018013101_IB000021.pdf', 'IB000021', 46, 'Surat Keterangan studi Linear dengan pekerjaan', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-09 04:12:02'),
('Surat Keterangan studi Linear dengan pekerjaan_198009162006041002_IB000007.pdf', 'IB000007', 46, 'Surat Keterangan studi Linear dengan pekerjaan', 'pdf', 0, '', '', '0000-00-00', '', '2022-02-03 01:35:49'),
('Surat Keterangan studi Linear dengan pekerjaan_198104072005011001_IB000014.pdf', 'IB000014', 46, 'Surat Keterangan studi Linear dengan pekerjaan', 'pdf', 0, '', '', '0000-00-00', '', '2022-04-07 02:33:21'),
('Surat Keterangan studi Linear dengan pekerjaan_198210082008102001_IB000162.pdf', 'IB000162', 46, 'Surat Keterangan studi Linear dengan pekerjaan', 'pdf', 2, '', '', '0000-00-00', '', '2022-10-24 01:09:03'),
('Surat Keterangan studi Linear dengan pekerjaan_198311082018013201_IB000060.pdf', 'IB000060', 46, 'Surat Keterangan studi Linear dengan pekerjaan', 'pdf', 2, '', '', '0000-00-00', '', '2022-05-31 02:03:12'),
('Surat Keterangan studi Linear dengan pekerjaan_198406062015042001_IB000051.pdf', 'IB000051', 46, 'Surat Keterangan studi Linear dengan pekerjaan', 'pdf', 0, '', '', '0000-00-00', '', '2022-06-10 07:50:02'),
('Surat Keterangan studi Linear dengan pekerjaan_198412152009122007_IB000017.pdf', 'IB000017', 46, 'Surat Keterangan studi Linear dengan pekerjaan', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-21 08:50:40'),
('Surat Keterangan studi Linear dengan pekerjaan_198601252016113201_IB000064.pdf', 'IB000064', 46, 'Surat Keterangan studi Linear dengan pekerjaan', 'pdf', 0, '', '', '0000-00-00', '', '2022-06-10 08:04:53'),
('Surat Keterangan studi Linear dengan pekerjaan_198603012016113101_IB000106.pdf', 'IB000106', 46, 'Surat Keterangan studi Linear dengan pekerjaan', 'pdf', 0, '', '', '0000-00-00', '', '2022-06-13 09:14:09'),
('Surat Keterangan studi Linear dengan pekerjaan_198604182018013201_IB000022.pdf', 'IB000022', 46, 'Surat Keterangan studi Linear dengan pekerjaan', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-09 04:39:11'),
('Surat Keterangan studi Linear dengan pekerjaan_198606022015042001_IB000065.pdf', 'IB000065', 46, 'Surat Keterangan studi Linear dengan pekerjaan', 'pdf', 0, '', '', '0000-00-00', '', '2022-06-10 08:07:35'),
('Surat Keterangan studi Linear dengan pekerjaan_198609012018013101_IB000006.pdf', 'IB000006', 46, 'Surat Keterangan studi Linear dengan pekerjaan', 'pdf', 0, '', '', '0000-00-00', '', '2022-01-31 04:52:55'),
('Surat Keterangan studi Linear dengan pekerjaan_198611092015042002_IB000066.pdf', 'IB000066', 46, 'Surat Keterangan studi Linear dengan pekerjaan', 'pdf', 0, '', '', '0000-00-00', '', '2022-06-10 08:10:16'),
('Surat Keterangan studi Linear dengan pekerjaan_198702232016113201_IB000050.pdf', 'IB000050', 46, 'Surat Keterangan studi Linear dengan pekerjaan', 'pdf', 0, '', '', '0000-00-00', '', '2022-06-10 07:44:50'),
('Surat Keterangan studi Linear dengan pekerjaan_198704252016033201_IB000068.pdf', 'IB000068', 46, 'Surat Keterangan studi Linear dengan pekerjaan', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-21 10:30:49'),
('Surat Keterangan studi Linear dengan pekerjaan_198705022015042002_IB000048.pdf', 'IB000048', 46, 'Surat Keterangan studi Linear dengan pekerjaan', 'pdf', 0, '', '', '0000-00-00', '', '2022-06-10 07:37:51'),
('Surat Keterangan studi Linear dengan pekerjaan_198705212018083201_IB000057.pdf', 'IB000057', 46, 'Surat Keterangan studi Linear dengan pekerjaan', 'pdf', 2, '', '', '0000-00-00', '', '2022-07-27 03:45:27'),
('Surat Keterangan studi Linear dengan pekerjaan_198711022015042003_IB000113.pdf', 'IB000113', 46, 'Surat Keterangan studi Linear dengan pekerjaan', 'pdf', 2, '', '', '0000-00-00', '', '2022-07-11 02:27:41'),
('Surat Keterangan studi Linear dengan pekerjaan_198912262016113201_IB000089.pdf', 'IB000089', 46, 'Surat Keterangan studi Linear dengan pekerjaan', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-21 09:29:14'),
('Surat Keterangan studi Linear dengan pekerjaan_199001132015043101_IB000067.pdf', 'IB000067', 46, 'Surat Keterangan studi Linear dengan pekerjaan', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-21 10:24:22'),
('Surat Keterangan studi Linear dengan pekerjaan_199003122016033101_IB000011.pdf', 'IB000011', 46, 'Surat Keterangan studi Linear dengan pekerjaan', 'pdf', 2, '', '', '0000-00-00', '', '2022-08-31 08:30:30'),
('Surat Keterangan studi Linear dengan pekerjaan_199003312018013101_IB000028.pdf', 'IB000028', 46, 'Surat Keterangan studi Linear dengan pekerjaan', 'pdf', 0, '', '', '0000-00-00', '', '2022-10-06 03:39:23'),
('Surat Keterangan studi Linear dengan pekerjaan_199008232015043201_IB000003.pdf', 'IB000003', 46, 'Surat Keterangan studi Linear dengan pekerjaan', 'pdf', 2, '', '', '0000-00-00', '', '2022-01-26 03:01:27'),
('Surat Keterangan studi Linear dengan pekerjaan_199107132018013201_IB000044.pdf', 'IB000044', 46, 'Surat Keterangan studi Linear dengan pekerjaan', 'pdf', 0, '', '', '0000-00-00', '', '2022-10-07 03:44:13'),
('Surat Keterangan studi Linear dengan pekerjaan_199110152015043201_IB000001.pdf', 'IB000001', 46, 'Surat Keterangan studi Linear dengan pekerjaan', 'pdf', 0, '', '', '0000-00-00', '', '2022-01-28 01:28:07'),
('Surat Keterangan studi Linear dengan pekerjaan_199206042018013101_IB000005.pdf', 'IB000005', 46, 'Surat Keterangan studi Linear dengan pekerjaan', 'pdf', 0, '', '', '0000-00-00', '', '2022-01-31 09:33:13'),
('Surat Keterangan studi Linear dengan pekerjaan_199207072018083201_IB000091.pdf', 'IB000091', 46, 'Surat Keterangan studi Linear dengan pekerjaan', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-21 10:26:14'),
('Surat Keterangan studi Linear dengan pekerjaan_199508212018035101_IB000029.pdf', 'IB000029', 46, 'Surat Keterangan studi Linear dengan pekerjaan', 'pdf', 0, '', '', '0000-00-00', '', '2022-10-07 09:21:33'),
('Surat Keterangan studi Linear dengan pekerjaan_199602112019015101_IB000034.pdf', 'IB000034', 46, 'Surat Keterangan studi Linear dengan pekerjaan', 'pdf', 0, '', '', '0000-00-00', '', '2022-10-07 05:05:16'),
('Surat Pengantar Pengajuan Izin Belajar_197205021999031002_IB000086.pdf', 'IB000086', 70, 'Surat Pengantar Pengajuan Izin Belajar', 'pdf', 2, '', '523/UN3.1.5/KP/2022', '2022-03-02', 'Wakil Dekan II FFUA', '2022-06-02 07:44:23'),
('Surat Pengantar Pengajuan Izin Belajar_197505222003121002_IB000111.pdf', 'IB000111', 70, 'Surat Pengantar Pengajuan Izin Belajar', 'pdf', 2, '', '1589/UN3.1.12/KP/2022', '2022-06-08', 'Dekan', '2022-06-14 03:41:00'),
('Surat Pengantar Pengajuan Izin Belajar_197812252018013101_IB000021.pdf', 'IB000021', 70, 'Surat Pengantar Pengajuan Izin Belajar', 'pdf', 2, '', '42/UN3.1.4/KP/2020', '2020-01-03', 'Wakil Dekan II', '2022-02-09 04:12:02'),
('Surat Pengantar Pengajuan Izin Belajar_198009162006041002_IB000007.pdf', 'IB000007', 70, 'Surat Pengantar Pengajuan Izin Belajar', 'pdf', 0, '', NULL, NULL, NULL, '2022-02-03 01:35:50'),
('Surat Pengantar Pengajuan Izin Belajar_198104072005011001_IB000014.pdf', 'IB000014', 70, 'Surat Pengantar Pengajuan Izin Belajar', 'pdf', 0, '', '1204/UN3.1.3/KP/2022', '2002-02-22', 'Wakil Dekan II', '2022-04-07 02:33:22'),
('Surat Pengantar Pengajuan Izin Belajar_198210082008102001_IB000162.pdf', 'IB000162', 70, 'Surat Pengantar Pengajuan Izin Belajar', 'pdf', 2, '', NULL, NULL, NULL, '2022-10-24 01:20:36'),
('Surat Pengantar Pengajuan Izin Belajar_198311082018013201_IB000060.pdf', 'IB000060', 70, 'Surat Pengantar Pengajuan Izin Belajar', 'pdf', 2, '', '2300/UN3.1.10/DL/2022', '2022-04-04', 'Wakil Dekan 2', '2022-05-31 02:03:12'),
('Surat Pengantar Pengajuan Izin Belajar_198406062015042001_IB000051.pdf', 'IB000051', 70, 'Surat Pengantar Pengajuan Izin Belajar', 'pdf', 0, '', '1427/UN3.1.13/KP/2022', '2022-04-06', 'Wakil Dekan II', '2022-06-10 07:50:18'),
('Surat Pengantar Pengajuan Izin Belajar_198412152009122007_IB000017.pdf', 'IB000017', 70, 'Surat Pengantar Pengajuan Izin Belajar', 'pdf', 2, '', '2708/UN3.1.14/KP/2022', '2022-05-25', 'Dekan', '2022-06-21 08:50:40'),
('Surat Pengantar Pengajuan Izin Belajar_198601252016113201_IB000064.pdf', 'IB000064', 70, 'Surat Pengantar Pengajuan Izin Belajar', 'pdf', 0, '', '1427/UN3.1.13/KP/2022', '2022-04-06', 'Wakil Dekan II', '2022-06-10 08:04:55'),
('Surat Pengantar Pengajuan Izin Belajar_198603012016113101_IB000106.pdf', 'IB000106', 70, 'Surat Pengantar Pengajuan Izin Belajar', 'pdf', 0, '', '1588/UN3.1.12/KP/2022', '2022-06-08', 'Dekan', '2022-06-13 09:14:13'),
('Surat Pengantar Pengajuan Izin Belajar_198604182018013201_IB000022.pdf', 'IB000022', 70, 'Surat Pengantar Pengajuan Izin Belajar', 'pdf', 2, '', '42/UN3.1.4/KP/2020', '2020-01-03', 'Wakil Dekan II', '2022-02-09 04:39:11'),
('Surat Pengantar Pengajuan Izin Belajar_198606022015042001_IB000065.pdf', 'IB000065', 70, 'Surat Pengantar Pengajuan Izin Belajar', 'pdf', 0, '', '1427/UN3.1.13/KP/2022', '2022-04-06', 'Wakil Dekan II', '2022-06-10 08:07:37'),
('Surat Pengantar Pengajuan Izin Belajar_198609012018013101_IB000006.pdf', 'IB000006', 70, 'Surat Pengantar Pengajuan Izin Belajar', 'pdf', 0, '', NULL, NULL, NULL, '2022-01-31 04:52:57'),
('Surat Pengantar Pengajuan Izin Belajar_198611092015042002_IB000066.pdf', 'IB000066', 70, 'Surat Pengantar Pengajuan Izin Belajar', 'pdf', 0, '', '1427/UN3.1.13/KP/2022', '2022-04-06', 'Wakil Dekan II', '2022-06-10 08:10:26'),
('Surat Pengantar Pengajuan Izin Belajar_198702232016113201_IB000050.pdf', 'IB000050', 70, 'Surat Pengantar Pengajuan Izin Belajar', 'pdf', 0, '', '1427/UN3.1.13/KP/2022', '2022-04-06', 'Wakil Dekan II', '2022-06-10 07:45:18'),
('Surat Pengantar Pengajuan Izin Belajar_198704252016033201_IB000068.pdf', 'IB000068', 70, 'Surat Pengantar Pengajuan Izin Belajar', 'pdf', 2, '', '2287/UN3.1.14/KP/2022', '2022-04-05', 'Dekan', '2022-06-21 10:30:49'),
('Surat Pengantar Pengajuan Izin Belajar_198705022015042002_IB000048.pdf', 'IB000048', 70, 'Surat Pengantar Pengajuan Izin Belajar', 'pdf', 0, '', '1427/UN3.1.13/KP/2022', '2022-04-06', 'Wakil Dekan II', '2022-06-10 07:38:08'),
('Surat Pengantar Pengajuan Izin Belajar_198705212018083201_IB000057.pdf', 'IB000057', 70, 'Surat Pengantar Pengajuan Izin Belajar', 'pdf', 2, '', '2581/UN3.1.14/KP/2022', '2022-04-18', 'Dekan', '2022-07-27 03:45:27'),
('Surat Pengantar Pengajuan Izin Belajar_198711022015042003_IB000113.pdf', 'IB000113', 70, 'Surat Pengantar Pengajuan Izin Belajar', 'pdf', 2, '', '2136', '2022-05-24', 'Dekan ', '2022-07-11 02:27:41'),
('Surat Pengantar Pengajuan Izin Belajar_198912262016113201_IB000089.pdf', 'IB000089', 70, 'Surat Pengantar Pengajuan Izin Belajar', 'pdf', 2, '', '2765/UN3.1.14/KP/2022', '2022-05-25', 'Dekan', '2022-06-21 09:29:14'),
('Surat Pengantar Pengajuan Izin Belajar_199001132015043101_IB000067.pdf', 'IB000067', 70, 'Surat Pengantar Pengajuan Izin Belajar', 'pdf', 2, '', '2284/UN3.1.14/KP/2022', '2022-04-05', 'Dekan', '2022-06-21 10:24:22'),
('Surat Pengantar Pengajuan Izin Belajar_199003122016033101_IB000011.pdf', 'IB000011', 70, 'Surat Pengantar Pengajuan Izin Belajar', 'pdf', 2, '', '6395', '2021-12-27', 'Dekan', '2022-08-31 08:30:30'),
('Surat Pengantar Pengajuan Izin Belajar_199003312018013101_IB000028.pdf', 'IB000028', 70, 'Surat Pengantar Pengajuan Izin Belajar', 'pdf', 0, '', '737/UN3.1.6/KP/2022', '2022-02-23', 'Wakil Dekan II FKH', '2022-10-06 03:39:34'),
('Surat Pengantar Pengajuan Izin Belajar_199008232015043201_IB000003.pdf', 'IB000003', 70, 'Surat Pengantar Pengajuan Izin Belajar', 'pdf', 2, '', '4088', '2020-12-28', 'Dekan Fakultas Vokasi', '2022-01-26 03:01:27'),
('Surat Pengantar Pengajuan Izin Belajar_199107132018013201_IB000044.pdf', 'IB000044', 70, 'Surat Pengantar Pengajuan Izin Belajar', 'pdf', 0, '', '737/UN3.1.6/KP/2022', '2022-02-23', 'Wakil Dekan II FKH', '2022-10-07 02:57:38'),
('Surat Pengantar Pengajuan Izin Belajar_199110152015043201_IB000001.pdf', 'IB000001', 70, 'Surat Pengantar Pengajuan Izin Belajar', 'pdf', 0, '', '2996', '2018-12-07', 'Dekan Fakultas Vokasi', '2022-01-28 01:28:08'),
('Surat Pengantar Pengajuan Izin Belajar_199206042018013101_IB000005.pdf', 'IB000005', 70, 'Surat Pengantar Pengajuan Izin Belajar', 'pdf', 0, '', NULL, NULL, NULL, '2022-01-31 09:36:18'),
('Surat Pengantar Pengajuan Izin Belajar_199207072018083201_IB000091.pdf', 'IB000091', 70, 'Surat Pengantar Pengajuan Izin Belajar', 'pdf', 2, '', '2763/UN3.1.14/KP/2022', '2022-05-25', 'Dekan', '2022-06-21 10:26:14'),
('Surat Pengantar Pengajuan Izin Belajar_199508212018035101_IB000029.pdf', 'IB000029', 70, 'Surat Pengantar Pengajuan Izin Belajar', 'pdf', 0, '', '737/UN3.1.6/KP/2022', '2022-02-23', 'Wakil Dekan II FKH', '2022-10-07 09:21:45'),
('Surat Pengantar Pengajuan Izin Belajar_199602112019015101_IB000034.pdf', 'IB000034', 70, 'Surat Pengantar Pengajuan Izin Belajar', 'pdf', 0, '', '737/UN3.1.6/KP/2022', '2022-02-23', 'Wakil Dekan II FKH', '2022-10-07 05:05:32'),
('surat pernyataan biaya pendidikan ditanggung ybs_196101251980122003_IB000155.pdf', 'IB000155', 47, 'surat pernyataan biaya pendidikan ditanggung ybs', 'pdf', 2, '', '', '0000-00-00', '', '2022-08-31 04:00:52'),
('surat pernyataan biaya pendidikan ditanggung ybs_197003011994121001_IB000144.pdf', 'IB000144', 47, 'surat pernyataan biaya pendidikan ditanggung ybs', 'pdf', 2, '', '', '0000-00-00', '', '2022-07-27 01:05:22'),
('surat pernyataan biaya pendidikan ditanggung ybs_197203311994032004_IB000159.pdf', 'IB000159', 47, 'surat pernyataan biaya pendidikan ditanggung ybs', 'pdf', 2, '', '', '0000-00-00', '', '2022-10-12 08:32:15'),
('surat pernyataan biaya pendidikan ditanggung ybs_197205021999031002_IB000086.pdf', 'IB000086', 47, 'surat pernyataan biaya pendidikan ditanggung ybs', 'pdf', 2, '', '', '0000-00-00', '', '2022-05-23 06:29:54'),
('surat pernyataan biaya pendidikan ditanggung ybs_197401262018035101_IB000069.pdf', 'IB000069', 47, 'surat pernyataan biaya pendidikan ditanggung ybs', 'pdf', 2, '', '', '0000-00-00', '', '2022-04-08 06:13:15'),
('surat pernyataan biaya pendidikan ditanggung ybs_197411092018035201_IB000139.pdf', 'IB000139', 47, 'surat pernyataan biaya pendidikan ditanggung ybs', 'pdf', 2, '', '', '0000-00-00', '', '2022-07-20 04:44:47'),
('surat pernyataan biaya pendidikan ditanggung ybs_197411092018035201_IB000140.pdf', 'IB000140', 47, 'surat pernyataan biaya pendidikan ditanggung ybs', 'pdf', 2, '', '', '0000-00-00', '', '2022-07-20 05:54:47'),
('surat pernyataan biaya pendidikan ditanggung ybs_197505222003121002_IB000111.pdf', 'IB000111', 47, 'surat pernyataan biaya pendidikan ditanggung ybs', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-14 03:34:19'),
('surat pernyataan biaya pendidikan ditanggung ybs_197505262003121006_IB000114.pdf', 'IB000114', 47, 'surat pernyataan biaya pendidikan ditanggung ybs', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-22 05:48:13'),
('surat pernyataan biaya pendidikan ditanggung ybs_197706102008102001_IB000055.pdf', 'IB000055', 47, 'surat pernyataan biaya pendidikan ditanggung ybs', 'pdf', 2, '', '', '0000-00-00', '', '2022-03-11 06:54:13'),
('surat pernyataan biaya pendidikan ditanggung ybs_197712202015043101_IB000149.pdf', 'IB000149', 47, 'surat pernyataan biaya pendidikan ditanggung ybs', 'pdf', 2, '', '', '0000-00-00', '', '2022-08-08 12:48:03'),
('surat pernyataan biaya pendidikan ditanggung ybs_197812252018013101_IB000021.pdf', 'IB000021', 47, 'surat pernyataan biaya pendidikan ditanggung ybs', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-09 04:02:21'),
('surat pernyataan biaya pendidikan ditanggung ybs_198005012006041002_IB000170.pdf', 'IB000170', 47, 'surat pernyataan biaya pendidikan ditanggung ybs', 'pdf', 2, '', '', '0000-00-00', '', '2022-11-08 08:37:17'),
('surat pernyataan biaya pendidikan ditanggung ybs_198005172018013201_IB000136.pdf', 'IB000136', 47, 'surat pernyataan biaya pendidikan ditanggung ybs', 'pdf', 2, '', '', '0000-00-00', '', '2022-07-15 09:26:09'),
('surat pernyataan biaya pendidikan ditanggung ybs_198005172018013201_IB000137.pdf', 'IB000137', 47, 'surat pernyataan biaya pendidikan ditanggung ybs', 'pdf', 2, '', '', '0000-00-00', '', '2022-07-15 09:41:19'),
('surat pernyataan biaya pendidikan ditanggung ybs_198005172018013201_IB000138.pdf', 'IB000138', 47, 'surat pernyataan biaya pendidikan ditanggung ybs', 'pdf', 2, '', '', '0000-00-00', '', '2022-07-19 08:40:49'),
('surat pernyataan biaya pendidikan ditanggung ybs_198005252005012004_IB000112.pdf', 'IB000112', 47, 'surat pernyataan biaya pendidikan ditanggung ybs', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-16 07:47:49'),
('surat pernyataan biaya pendidikan ditanggung ybs_198009162006041002_IB000007.pdf', 'IB000007', 47, 'surat pernyataan biaya pendidikan ditanggung ybs', 'pdf', 0, '', '', '0000-00-00', '', '2022-02-03 01:35:52'),
('surat pernyataan biaya pendidikan ditanggung ybs_198104072005011001_IB000014.pdf', 'IB000014', 47, 'surat pernyataan biaya pendidikan ditanggung ybs', 'pdf', 0, '', '', '0000-00-00', '', '2022-04-07 02:33:23'),
('surat pernyataan biaya pendidikan ditanggung ybs_198106262014061003_IB000167.pdf', 'IB000167', 47, 'surat pernyataan biaya pendidikan ditanggung ybs', 'pdf', 2, '', '', '0000-00-00', '', '2022-10-26 09:05:07'),
('surat pernyataan biaya pendidikan ditanggung ybs_198106262014061003_IB000177.pdf', 'IB000177', 47, 'surat pernyataan biaya pendidikan ditanggung ybs', 'pdf', 2, '', '', '0000-00-00', '', '2023-01-11 00:56:27'),
('surat pernyataan biaya pendidikan ditanggung ybs_198106262014061003_IB000179.pdf', 'IB000179', 47, 'surat pernyataan biaya pendidikan ditanggung ybs', 'pdf', 2, '', '', '0000-00-00', '', '2023-01-11 01:00:12'),
('surat pernyataan biaya pendidikan ditanggung ybs_198203252018013101_IB000013.pdf', 'IB000013', 47, 'surat pernyataan biaya pendidikan ditanggung ybs', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-09 09:01:50'),
('surat pernyataan biaya pendidikan ditanggung ybs_198205092018013101_IB000104.pdf', 'IB000104', 47, 'surat pernyataan biaya pendidikan ditanggung ybs', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-06 04:23:12'),
('surat pernyataan biaya pendidikan ditanggung ybs_198210082008102001_IB000162.pdf', 'IB000162', 47, 'surat pernyataan biaya pendidikan ditanggung ybs', 'pdf', 2, '', '', '0000-00-00', '', '2022-10-24 01:07:09'),
('surat pernyataan biaya pendidikan ditanggung ybs_198212212018013101_IB000076.pdf', 'IB000076', 47, 'surat pernyataan biaya pendidikan ditanggung ybs', 'pdf', 2, '', '', '0000-00-00', '', '2022-04-17 02:30:43'),
('surat pernyataan biaya pendidikan ditanggung ybs_198212212018013101_IB000080.pdf', 'IB000080', 47, 'surat pernyataan biaya pendidikan ditanggung ybs', 'pdf', 2, '', '', '0000-00-00', '', '2022-05-04 06:15:58'),
('surat pernyataan biaya pendidikan ditanggung ybs_198212212018013101_IB000081.pdf', 'IB000081', 47, 'surat pernyataan biaya pendidikan ditanggung ybs', 'pdf', 2, '', '', '0000-00-00', '', '2022-05-04 06:23:55'),
('surat pernyataan biaya pendidikan ditanggung ybs_198302142010122003_IB000027.pdf', 'IB000027', 47, 'surat pernyataan biaya pendidikan ditanggung ybs', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-15 07:28:15'),
('surat pernyataan biaya pendidikan ditanggung ybs_198304182018013101_IB000105.pdf', 'IB000105', 47, 'surat pernyataan biaya pendidikan ditanggung ybs', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-07 07:57:32'),
('surat pernyataan biaya pendidikan ditanggung ybs_198311082018013201_IB000060.pdf', 'IB000060', 47, 'surat pernyataan biaya pendidikan ditanggung ybs', 'pdf', 2, '', '', '0000-00-00', '', '2022-04-03 14:30:03'),
('surat pernyataan biaya pendidikan ditanggung ybs_198406062015042001_IB000051.pdf', 'IB000051', 47, 'surat pernyataan biaya pendidikan ditanggung ybs', 'pdf', 0, '', '', '0000-00-00', '', '2022-06-10 08:03:19'),
('surat pernyataan biaya pendidikan ditanggung ybs_198412072018035101_IB000032.pdf', 'IB000032', 47, 'surat pernyataan biaya pendidikan ditanggung ybs', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-16 07:11:44'),
('surat pernyataan biaya pendidikan ditanggung ybs_198412072018035101_IB000033.pdf', 'IB000033', 47, 'surat pernyataan biaya pendidikan ditanggung ybs', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-16 07:18:42'),
('surat pernyataan biaya pendidikan ditanggung ybs_198412072018035101_IB000037.pdf', 'IB000037', 47, 'surat pernyataan biaya pendidikan ditanggung ybs', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-22 05:33:00'),
('surat pernyataan biaya pendidikan ditanggung ybs_198412072018035101_IB000038.pdf', 'IB000038', 47, 'surat pernyataan biaya pendidikan ditanggung ybs', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-22 05:39:11'),
('surat pernyataan biaya pendidikan ditanggung ybs_198412072018035101_IB000039.pdf', 'IB000039', 47, 'surat pernyataan biaya pendidikan ditanggung ybs', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-22 05:49:25'),
('surat pernyataan biaya pendidikan ditanggung ybs_198412072018035101_IB000043.pdf', 'IB000043', 47, 'surat pernyataan biaya pendidikan ditanggung ybs', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-23 02:33:15'),
('surat pernyataan biaya pendidikan ditanggung ybs_198412072018035101_IB000054.pdf', 'IB000054', 47, 'surat pernyataan biaya pendidikan ditanggung ybs', 'pdf', 2, '', '', '0000-00-00', '', '2022-03-11 06:24:35'),
('surat pernyataan biaya pendidikan ditanggung ybs_198412072018035101_IB000163.pdf', 'IB000163', 47, 'surat pernyataan biaya pendidikan ditanggung ybs', 'pdf', 2, '', '', '0000-00-00', '', '2022-10-24 02:03:12'),
('surat pernyataan biaya pendidikan ditanggung ybs_198412152009122007_IB000017.pdf', 'IB000017', 47, 'surat pernyataan biaya pendidikan ditanggung ybs', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-23 07:55:54'),
('surat pernyataan biaya pendidikan ditanggung ybs_198504082018013101_IB000072.pdf', 'IB000072', 47, 'surat pernyataan biaya pendidikan ditanggung ybs', 'pdf', 2, '', '', '0000-00-00', '', '2022-04-16 13:02:32'),
('surat pernyataan biaya pendidikan ditanggung ybs_198504082018013101_IB000073.pdf', 'IB000073', 47, 'surat pernyataan biaya pendidikan ditanggung ybs', 'pdf', 2, '', '', '0000-00-00', '', '2022-04-16 13:13:19'),
('surat pernyataan biaya pendidikan ditanggung ybs_198504082018013101_IB000074.pdf', 'IB000074', 47, 'surat pernyataan biaya pendidikan ditanggung ybs', 'pdf', 2, '', '', '0000-00-00', '', '2022-04-16 13:19:32'),
('surat pernyataan biaya pendidikan ditanggung ybs_198504082018013101_IB000075.pdf', 'IB000075', 47, 'surat pernyataan biaya pendidikan ditanggung ybs', 'pdf', 2, '', '', '0000-00-00', '', '2022-04-16 13:27:33'),
('surat pernyataan biaya pendidikan ditanggung ybs_198504082018013101_IB000077.pdf', 'IB000077', 47, 'surat pernyataan biaya pendidikan ditanggung ybs', 'pdf', 2, '', '', '0000-00-00', '', '2022-04-19 15:46:36'),
('surat pernyataan biaya pendidikan ditanggung ybs_198505212018013101_IB000071.pdf', 'IB000071', 47, 'surat pernyataan biaya pendidikan ditanggung ybs', 'pdf', 2, '', '', '0000-00-00', '', '2022-04-16 07:44:46'),
('surat pernyataan biaya pendidikan ditanggung ybs_198601252016113201_IB000064.pdf', 'IB000064', 47, 'surat pernyataan biaya pendidikan ditanggung ybs', 'pdf', 0, '', '', '0000-00-00', '', '2022-06-10 08:04:58'),
('surat pernyataan biaya pendidikan ditanggung ybs_198603012016113101_IB000106.pdf', 'IB000106', 47, 'surat pernyataan biaya pendidikan ditanggung ybs', 'pdf', 0, '', '', '0000-00-00', '', '2022-06-13 09:14:16'),
('surat pernyataan biaya pendidikan ditanggung ybs_198604122015043101_IB000083.pdf', 'IB000083', 47, 'surat pernyataan biaya pendidikan ditanggung ybs', 'pdf', 2, '', '', '0000-00-00', '', '2022-05-14 03:18:57'),
('surat pernyataan biaya pendidikan ditanggung ybs_198604182018013201_IB000022.pdf', 'IB000022', 47, 'surat pernyataan biaya pendidikan ditanggung ybs', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-09 04:22:55'),
('surat pernyataan biaya pendidikan ditanggung ybs_198606022015042001_IB000065.pdf', 'IB000065', 47, 'surat pernyataan biaya pendidikan ditanggung ybs', 'pdf', 0, '', '', '0000-00-00', '', '2022-06-10 08:07:39'),
('surat pernyataan biaya pendidikan ditanggung ybs_198609012018013101_IB000006.pdf', 'IB000006', 47, 'surat pernyataan biaya pendidikan ditanggung ybs', 'pdf', 0, '', '', '0000-00-00', '', '2022-01-31 04:52:58'),
('surat pernyataan biaya pendidikan ditanggung ybs_198611092015042002_IB000066.pdf', 'IB000066', 47, 'surat pernyataan biaya pendidikan ditanggung ybs', 'pdf', 0, '', '', '0000-00-00', '', '2022-06-10 08:10:35'),
('surat pernyataan biaya pendidikan ditanggung ybs_198701102015042001_IB000120.pdf', 'IB000120', 47, 'surat pernyataan biaya pendidikan ditanggung ybs', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-26 13:50:43'),
('surat pernyataan biaya pendidikan ditanggung ybs_198701102015042001_IB000123.pdf', 'IB000123', 47, 'surat pernyataan biaya pendidikan ditanggung ybs', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-27 05:08:04'),
('surat pernyataan biaya pendidikan ditanggung ybs_198701102015042001_IB000125.pdf', 'IB000125', 47, 'surat pernyataan biaya pendidikan ditanggung ybs', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-28 22:52:51'),
('surat pernyataan biaya pendidikan ditanggung ybs_198702232016113201_IB000050.pdf', 'IB000050', 47, 'surat pernyataan biaya pendidikan ditanggung ybs', 'pdf', 0, '', '', '0000-00-00', '', '2022-06-10 07:45:48'),
('surat pernyataan biaya pendidikan ditanggung ybs_198704252016033201_IB000068.pdf', 'IB000068', 47, 'surat pernyataan biaya pendidikan ditanggung ybs', 'pdf', 2, '', '', '0000-00-00', '', '2022-04-12 07:54:33'),
('surat pernyataan biaya pendidikan ditanggung ybs_198705022015042002_IB000048.pdf', 'IB000048', 47, 'surat pernyataan biaya pendidikan ditanggung ybs', 'pdf', 0, '', '', '0000-00-00', '', '2022-06-10 07:38:50'),
('surat pernyataan biaya pendidikan ditanggung ybs_198705212018083201_IB000057.pdf', 'IB000057', 47, 'surat pernyataan biaya pendidikan ditanggung ybs', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-02 04:21:49'),
('surat pernyataan biaya pendidikan ditanggung ybs_198711022015042003_IB000113.pdf', 'IB000113', 47, 'surat pernyataan biaya pendidikan ditanggung ybs', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-21 02:19:04'),
('surat pernyataan biaya pendidikan ditanggung ybs_198711112015041005_IB000108.pdf', 'IB000108', 47, 'surat pernyataan biaya pendidikan ditanggung ybs', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-11 04:03:51'),
('surat pernyataan biaya pendidikan ditanggung ybs_198805012016113201_IB000115.pdf', 'IB000115', 47, 'surat pernyataan biaya pendidikan ditanggung ybs', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-23 10:26:55'),
('surat pernyataan biaya pendidikan ditanggung ybs_198805162018013101_IB000119.pdf', 'IB000119', 47, 'surat pernyataan biaya pendidikan ditanggung ybs', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-24 08:40:33'),
('surat pernyataan biaya pendidikan ditanggung ybs_198808112018013201_IB000103.pdf', 'IB000103', 47, 'surat pernyataan biaya pendidikan ditanggung ybs', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-06 04:19:27'),
('surat pernyataan biaya pendidikan ditanggung ybs_198812152018013101_IB000122.pdf', 'IB000122', 47, 'surat pernyataan biaya pendidikan ditanggung ybs', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-27 02:44:55'),
('surat pernyataan biaya pendidikan ditanggung ybs_198906112018013101_IB000008.pdf', 'IB000008', 47, 'surat pernyataan biaya pendidikan ditanggung ybs', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-02 07:33:23'),
('surat pernyataan biaya pendidikan ditanggung ybs_198906112018013101_IB000010.pdf', 'IB000010', 47, 'surat pernyataan biaya pendidikan ditanggung ybs', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-02 07:38:24'),
('surat pernyataan biaya pendidikan ditanggung ybs_198912262016113201_IB000089.pdf', 'IB000089', 47, 'surat pernyataan biaya pendidikan ditanggung ybs', 'pdf', 2, '', '', '0000-00-00', '', '2022-05-30 11:56:29'),
('surat pernyataan biaya pendidikan ditanggung ybs_199001132015043101_IB000067.pdf', 'IB000067', 47, 'surat pernyataan biaya pendidikan ditanggung ybs', 'pdf', 2, '', '', '0000-00-00', '', '2022-04-12 07:31:26'),
('surat pernyataan biaya pendidikan ditanggung ybs_199003122016033101_IB000011.pdf', 'IB000011', 47, 'surat pernyataan biaya pendidikan ditanggung ybs', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-02 08:31:05'),
('surat pernyataan biaya pendidikan ditanggung ybs_199003312018013101_IB000028.pdf', 'IB000028', 47, 'surat pernyataan biaya pendidikan ditanggung ybs', 'pdf', 0, '', '', '0000-00-00', '', '2022-10-06 03:40:02'),
('surat pernyataan biaya pendidikan ditanggung ybs_199008082021093101_IB000156.pdf', 'IB000156', 47, 'surat pernyataan biaya pendidikan ditanggung ybs', 'pdf', 2, '', '', '0000-00-00', '', '2022-09-13 21:31:06'),
('surat pernyataan biaya pendidikan ditanggung ybs_199008232015043201_IB000003.pdf', 'IB000003', 47, 'surat pernyataan biaya pendidikan ditanggung ybs', 'pdf', 2, '', '', '0000-00-00', '', '2022-01-26 02:52:48'),
('surat pernyataan biaya pendidikan ditanggung ybs_199010272018013101_IB000024.pdf', 'IB000024', 47, 'surat pernyataan biaya pendidikan ditanggung ybs', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-09 04:30:31'),
('surat pernyataan biaya pendidikan ditanggung ybs_199107132018013201_IB000044.pdf', 'IB000044', 47, 'surat pernyataan biaya pendidikan ditanggung ybs', 'pdf', 0, '', '', '0000-00-00', '', '2022-10-07 03:44:16'),
('surat pernyataan biaya pendidikan ditanggung ybs_199110152015043201_IB000001.pdf', 'IB000001', 47, 'surat pernyataan biaya pendidikan ditanggung ybs', 'pdf', 0, '', '', '0000-00-00', '', '2022-01-28 01:28:09'),
('surat pernyataan biaya pendidikan ditanggung ybs_199204202021093101_IB000154.png', 'IB000154', 47, 'surat pernyataan biaya pendidikan ditanggung ybs', 'png', 2, '', '', '0000-00-00', '', '2022-10-05 01:37:01'),
('surat pernyataan biaya pendidikan ditanggung ybs_199206042018013101_IB000005.pdf', 'IB000005', 47, 'surat pernyataan biaya pendidikan ditanggung ybs', 'pdf', 0, '', '', '0000-00-00', '', '2022-01-31 09:33:18');
INSERT INTO `upload_file_ib` (`ID_UP_FILE_IB`, `ID_IB`, `ID_JENIS`, `NAMA_FILE_IB`, `TIPE_FILE`, `STATUS_FILE_IB`, `KETERANGAN_REVISI_IB`, `NOMOR_SURAT`, `TGL_SURAT`, `JABATAN_PIMPINAN`, `TGL_UPDATE`) VALUES
('surat pernyataan biaya pendidikan ditanggung ybs_199207072018083201_IB000091.pdf', 'IB000091', 47, 'surat pernyataan biaya pendidikan ditanggung ybs', 'pdf', 2, '', '', '0000-00-00', '', '2022-05-27 11:55:55'),
('surat pernyataan biaya pendidikan ditanggung ybs_199310062018013101_IB000128.pdf', 'IB000128', 47, 'surat pernyataan biaya pendidikan ditanggung ybs', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-29 12:14:09'),
('surat pernyataan biaya pendidikan ditanggung ybs_199412162018035101_IB000070.pdf', 'IB000070', 47, 'surat pernyataan biaya pendidikan ditanggung ybs', 'pdf', 2, '', '', '0000-00-00', '', '2022-04-08 06:24:18'),
('surat pernyataan biaya pendidikan ditanggung ybs_199508212018035101_IB000029.pdf', 'IB000029', 47, 'surat pernyataan biaya pendidikan ditanggung ybs', 'pdf', 0, '', '', '0000-00-00', '', '2022-10-07 09:24:00'),
('surat pernyataan biaya pendidikan ditanggung ybs_199512052021025101_IB000012.pdf', 'IB000012', 47, 'surat pernyataan biaya pendidikan ditanggung ybs', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-15 04:13:49'),
('surat pernyataan biaya pendidikan ditanggung ybs_199602112019015101_IB000034.pdf', 'IB000034', 47, 'surat pernyataan biaya pendidikan ditanggung ybs', 'pdf', 0, '', '', '0000-00-00', '', '2022-10-07 05:06:27'),
('surat pernyataan biaya pendidikan ditanggung ybs_199905072019105101_IB000020.pdf', 'IB000020', 47, 'surat pernyataan biaya pendidikan ditanggung ybs', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-09 03:59:00'),
('surat pernyataan biaya pendidikan ditanggung ybs__IB000085.pdf', 'IB000085', 47, 'surat pernyataan biaya pendidikan ditanggung ybs', 'pdf', 2, '', '', '0000-00-00', '', '2022-05-11 07:15:22'),
('Surat Pernyataan Tidak Meninggalkan Tugas_196101251980122003_IB000155.pdf', 'IB000155', 42, 'Surat Pernyataan Tidak Meninggalkan Tugas', 'pdf', 2, '', '', '0000-00-00', '', '2022-08-31 04:02:11'),
('Surat Pernyataan Tidak Meninggalkan Tugas_197203311994032004_IB000159.pdf', 'IB000159', 42, 'Surat Pernyataan Tidak Meninggalkan Tugas', 'pdf', 2, '', '', '0000-00-00', '', '2022-10-12 08:30:16'),
('Surat Pernyataan Tidak Meninggalkan Tugas_197205021999031002_IB000086.pdf', 'IB000086', 42, 'Surat Pernyataan Tidak Meninggalkan Tugas', 'pdf', 2, '', '', '0000-00-00', '', '2022-05-23 06:06:06'),
('Surat Pernyataan Tidak Meninggalkan Tugas_197401262018035101_IB000069.pdf', 'IB000069', 42, 'Surat Pernyataan Tidak Meninggalkan Tugas', 'pdf', 2, '', '', '0000-00-00', '', '2022-04-08 06:11:28'),
('Surat Pernyataan Tidak Meninggalkan Tugas_197411092018035201_IB000139.pdf', 'IB000139', 42, 'Surat Pernyataan Tidak Meninggalkan Tugas', 'pdf', 2, '', '', '0000-00-00', '', '2022-07-20 04:38:15'),
('Surat Pernyataan Tidak Meninggalkan Tugas_197411092018035201_IB000140.pdf', 'IB000140', 42, 'Surat Pernyataan Tidak Meninggalkan Tugas', 'pdf', 2, '', '', '0000-00-00', '', '2022-07-20 05:53:59'),
('Surat Pernyataan Tidak Meninggalkan Tugas_197505222003121002_IB000111.pdf', 'IB000111', 42, 'Surat Pernyataan Tidak Meninggalkan Tugas', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-14 03:29:31'),
('Surat Pernyataan Tidak Meninggalkan Tugas_197505262003121006_IB000114.pdf', 'IB000114', 42, 'Surat Pernyataan Tidak Meninggalkan Tugas', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-22 04:42:00'),
('Surat Pernyataan Tidak Meninggalkan Tugas_197706102008102001_IB000055.pdf', 'IB000055', 42, 'Surat Pernyataan Tidak Meninggalkan Tugas', 'pdf', 2, '', '', '0000-00-00', '', '2022-03-11 06:42:34'),
('Surat Pernyataan Tidak Meninggalkan Tugas_197712202015043101_IB000149.pdf', 'IB000149', 42, 'Surat Pernyataan Tidak Meninggalkan Tugas', 'pdf', 2, '', '', '0000-00-00', '', '2022-08-08 12:47:43'),
('Surat Pernyataan Tidak Meninggalkan Tugas_197812252018013101_IB000021.pdf', 'IB000021', 42, 'Surat Pernyataan Tidak Meninggalkan Tugas', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-09 04:01:23'),
('Surat Pernyataan Tidak Meninggalkan Tugas_198005012006041002_IB000170.pdf', 'IB000170', 42, 'Surat Pernyataan Tidak Meninggalkan Tugas', 'pdf', 2, '', '', '0000-00-00', '', '2022-11-08 08:35:14'),
('Surat Pernyataan Tidak Meninggalkan Tugas_198005172018013201_IB000136.pdf', 'IB000136', 42, 'Surat Pernyataan Tidak Meninggalkan Tugas', 'pdf', 2, '', '', '0000-00-00', '', '2022-07-15 09:24:02'),
('Surat Pernyataan Tidak Meninggalkan Tugas_198005172018013201_IB000137.pdf', 'IB000137', 42, 'Surat Pernyataan Tidak Meninggalkan Tugas', 'pdf', 2, '', '', '0000-00-00', '', '2022-07-15 09:40:32'),
('Surat Pernyataan Tidak Meninggalkan Tugas_198005172018013201_IB000138.pdf', 'IB000138', 42, 'Surat Pernyataan Tidak Meninggalkan Tugas', 'pdf', 2, '', '', '0000-00-00', '', '2022-07-19 08:38:57'),
('Surat Pernyataan Tidak Meninggalkan Tugas_198005252005012004_IB000112.pdf', 'IB000112', 42, 'Surat Pernyataan Tidak Meninggalkan Tugas', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-16 07:46:51'),
('Surat Pernyataan Tidak Meninggalkan Tugas_198009162006041002_IB000007.pdf', 'IB000007', 42, 'Surat Pernyataan Tidak Meninggalkan Tugas', 'pdf', 0, '', '', '0000-00-00', '', '2022-02-03 01:35:53'),
('Surat Pernyataan Tidak Meninggalkan Tugas_198011122018013101_IB000026.pdf', 'IB000026', 42, 'Surat Pernyataan Tidak Meninggalkan Tugas', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-09 04:34:46'),
('Surat Pernyataan Tidak Meninggalkan Tugas_198104072005011001_IB000014.pdf', 'IB000014', 42, 'Surat Pernyataan Tidak Meninggalkan Tugas', 'pdf', 0, '', '', '0000-00-00', '', '2022-04-07 02:33:25'),
('Surat Pernyataan Tidak Meninggalkan Tugas_198106262014061003_IB000167.pdf', 'IB000167', 42, 'Surat Pernyataan Tidak Meninggalkan Tugas', 'pdf', 2, '', '', '0000-00-00', '', '2022-10-26 09:04:33'),
('Surat Pernyataan Tidak Meninggalkan Tugas_198106262014061003_IB000177.pdf', 'IB000177', 42, 'Surat Pernyataan Tidak Meninggalkan Tugas', 'pdf', 2, '', '', '0000-00-00', '', '2023-01-11 00:49:48'),
('Surat Pernyataan Tidak Meninggalkan Tugas_198106262014061003_IB000178.pdf', 'IB000178', 42, 'Surat Pernyataan Tidak Meninggalkan Tugas', 'pdf', 2, '', '', '0000-00-00', '', '2023-01-11 00:59:27'),
('Surat Pernyataan Tidak Meninggalkan Tugas_198106262014061003_IB000179.pdf', 'IB000179', 42, 'Surat Pernyataan Tidak Meninggalkan Tugas', 'pdf', 2, '', '', '0000-00-00', '', '2023-01-11 00:59:52'),
('Surat Pernyataan Tidak Meninggalkan Tugas_198203252018013101_IB000013.pdf', 'IB000013', 42, 'Surat Pernyataan Tidak Meninggalkan Tugas', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-09 08:54:02'),
('Surat Pernyataan Tidak Meninggalkan Tugas_198205092018013101_IB000104.pdf', 'IB000104', 42, 'Surat Pernyataan Tidak Meninggalkan Tugas', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-06 04:22:41'),
('Surat Pernyataan Tidak Meninggalkan Tugas_198210082008102001_IB000162.pdf', 'IB000162', 42, 'Surat Pernyataan Tidak Meninggalkan Tugas', 'pdf', 2, '', '', '0000-00-00', '', '2022-10-24 01:02:40'),
('Surat Pernyataan Tidak Meninggalkan Tugas_198212212018013101_IB000076.pdf', 'IB000076', 42, 'Surat Pernyataan Tidak Meninggalkan Tugas', 'pdf', 2, '', '', '0000-00-00', '', '2022-04-17 02:30:21'),
('Surat Pernyataan Tidak Meninggalkan Tugas_198212212018013101_IB000080.pdf', 'IB000080', 42, 'Surat Pernyataan Tidak Meninggalkan Tugas', 'pdf', 2, '', '', '0000-00-00', '', '2022-05-04 06:14:24'),
('Surat Pernyataan Tidak Meninggalkan Tugas_198212212018013101_IB000081.pdf', 'IB000081', 42, 'Surat Pernyataan Tidak Meninggalkan Tugas', 'pdf', 2, '', '', '0000-00-00', '', '2022-05-04 06:22:39'),
('Surat Pernyataan Tidak Meninggalkan Tugas_198302142010122003_IB000027.pdf', 'IB000027', 42, 'Surat Pernyataan Tidak Meninggalkan Tugas', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-15 07:28:02'),
('Surat Pernyataan Tidak Meninggalkan Tugas_198304182018013101_IB000105.pdf', 'IB000105', 42, 'Surat Pernyataan Tidak Meninggalkan Tugas', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-07 07:56:52'),
('Surat Pernyataan Tidak Meninggalkan Tugas_198311082018013201_IB000060.pdf', 'IB000060', 42, 'Surat Pernyataan Tidak Meninggalkan Tugas', 'pdf', 2, '', '', '0000-00-00', '', '2022-04-03 14:30:30'),
('Surat Pernyataan Tidak Meninggalkan Tugas_198406062015042001_IB000051.pdf', 'IB000051', 42, 'Surat Pernyataan Tidak Meninggalkan Tugas', 'pdf', 0, '', '', '0000-00-00', '', '2022-06-10 08:03:32'),
('Surat Pernyataan Tidak Meninggalkan Tugas_198412072018035101_IB000032.jpg', 'IB000032', 42, 'Surat Pernyataan Tidak Meninggalkan Tugas', 'jpg', 2, '', '', '0000-00-00', '', '2022-02-16 07:09:45'),
('Surat Pernyataan Tidak Meninggalkan Tugas_198412072018035101_IB000033.pdf', 'IB000033', 42, 'Surat Pernyataan Tidak Meninggalkan Tugas', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-16 07:17:37'),
('Surat Pernyataan Tidak Meninggalkan Tugas_198412072018035101_IB000036.pdf', 'IB000036', 42, 'Surat Pernyataan Tidak Meninggalkan Tugas', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-22 05:31:13'),
('Surat Pernyataan Tidak Meninggalkan Tugas_198412072018035101_IB000037.pdf', 'IB000037', 42, 'Surat Pernyataan Tidak Meninggalkan Tugas', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-22 05:32:14'),
('Surat Pernyataan Tidak Meninggalkan Tugas_198412072018035101_IB000038.jpg', 'IB000038', 42, 'Surat Pernyataan Tidak Meninggalkan Tugas', 'jpg', 2, '', '', '0000-00-00', '', '2022-02-22 05:38:14'),
('Surat Pernyataan Tidak Meninggalkan Tugas_198412072018035101_IB000039.pdf', 'IB000039', 42, 'Surat Pernyataan Tidak Meninggalkan Tugas', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-22 05:48:39'),
('Surat Pernyataan Tidak Meninggalkan Tugas_198412072018035101_IB000043.pdf', 'IB000043', 42, 'Surat Pernyataan Tidak Meninggalkan Tugas', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-23 02:29:51'),
('Surat Pernyataan Tidak Meninggalkan Tugas_198412072018035101_IB000054.pdf', 'IB000054', 42, 'Surat Pernyataan Tidak Meninggalkan Tugas', 'pdf', 2, '', '', '0000-00-00', '', '2022-03-11 06:23:05'),
('Surat Pernyataan Tidak Meninggalkan Tugas_198412072018035101_IB000163.pdf', 'IB000163', 42, 'Surat Pernyataan Tidak Meninggalkan Tugas', 'pdf', 2, '', '', '0000-00-00', '', '2022-10-24 02:00:32'),
('Surat Pernyataan Tidak Meninggalkan Tugas_198412152009122007_IB000017.pdf', 'IB000017', 42, 'Surat Pernyataan Tidak Meninggalkan Tugas', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-23 07:49:13'),
('Surat Pernyataan Tidak Meninggalkan Tugas_198504082018013101_IB000072.pdf', 'IB000072', 42, 'Surat Pernyataan Tidak Meninggalkan Tugas', 'pdf', 2, '', '', '0000-00-00', '', '2022-04-16 13:01:51'),
('Surat Pernyataan Tidak Meninggalkan Tugas_198504082018013101_IB000074.pdf', 'IB000074', 42, 'Surat Pernyataan Tidak Meninggalkan Tugas', 'pdf', 2, '', '', '0000-00-00', '', '2022-04-16 13:18:25'),
('Surat Pernyataan Tidak Meninggalkan Tugas_198504082018013101_IB000075.pdf', 'IB000075', 42, 'Surat Pernyataan Tidak Meninggalkan Tugas', 'pdf', 2, '', '', '0000-00-00', '', '2022-04-16 13:27:08'),
('Surat Pernyataan Tidak Meninggalkan Tugas_198504082018013101_IB000077.pdf', 'IB000077', 42, 'Surat Pernyataan Tidak Meninggalkan Tugas', 'pdf', 2, '', '', '0000-00-00', '', '2022-04-19 15:44:45'),
('Surat Pernyataan Tidak Meninggalkan Tugas_198505212018013101_IB000071.pdf', 'IB000071', 42, 'Surat Pernyataan Tidak Meninggalkan Tugas', 'pdf', 2, '', '', '0000-00-00', '', '2022-04-16 07:44:02'),
('Surat Pernyataan Tidak Meninggalkan Tugas_198510142010121002_IB000085.pdf', 'IB000085', 42, 'Surat Pernyataan Tidak Meninggalkan Tugas', 'pdf', 2, '', '', '0000-00-00', '', '2022-05-11 03:13:05'),
('Surat Pernyataan Tidak Meninggalkan Tugas_198601252016113201_IB000064.pdf', 'IB000064', 42, 'Surat Pernyataan Tidak Meninggalkan Tugas', 'pdf', 0, '', '', '0000-00-00', '', '2022-06-10 08:05:00'),
('Surat Pernyataan Tidak Meninggalkan Tugas_198603012016113101_IB000106.pdf', 'IB000106', 42, 'Surat Pernyataan Tidak Meninggalkan Tugas', 'pdf', 0, '', '', '0000-00-00', '', '2022-06-13 09:14:17'),
('Surat Pernyataan Tidak Meninggalkan Tugas_198604122015043101_IB000083.pdf', 'IB000083', 42, 'Surat Pernyataan Tidak Meninggalkan Tugas', 'pdf', 2, '', '', '0000-00-00', '', '2022-05-09 07:56:31'),
('Surat Pernyataan Tidak Meninggalkan Tugas_198604182018013201_IB000022.pdf', 'IB000022', 42, 'Surat Pernyataan Tidak Meninggalkan Tugas', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-09 04:22:06'),
('Surat Pernyataan Tidak Meninggalkan Tugas_198606022015042001_IB000065.pdf', 'IB000065', 42, 'Surat Pernyataan Tidak Meninggalkan Tugas', 'pdf', 0, '', '', '0000-00-00', '', '2022-06-10 08:07:40'),
('Surat Pernyataan Tidak Meninggalkan Tugas_198609012018013101_IB000006.pdf', 'IB000006', 42, 'Surat Pernyataan Tidak Meninggalkan Tugas', 'pdf', 0, '', '', '0000-00-00', '', '2022-01-31 04:52:59'),
('Surat Pernyataan Tidak Meninggalkan Tugas_198611092015042002_IB000066.pdf', 'IB000066', 42, 'Surat Pernyataan Tidak Meninggalkan Tugas', 'pdf', 0, '', '', '0000-00-00', '', '2022-06-10 08:10:44'),
('Surat Pernyataan Tidak Meninggalkan Tugas_198701102015042001_IB000120.pdf', 'IB000120', 42, 'Surat Pernyataan Tidak Meninggalkan Tugas', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-26 13:49:11'),
('Surat Pernyataan Tidak Meninggalkan Tugas_198701102015042001_IB000123.pdf', 'IB000123', 42, 'Surat Pernyataan Tidak Meninggalkan Tugas', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-27 05:01:18'),
('Surat Pernyataan Tidak Meninggalkan Tugas_198701102015042001_IB000124.pdf', 'IB000124', 42, 'Surat Pernyataan Tidak Meninggalkan Tugas', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-28 22:48:34'),
('Surat Pernyataan Tidak Meninggalkan Tugas_198701102015042001_IB000125.pdf', 'IB000125', 42, 'Surat Pernyataan Tidak Meninggalkan Tugas', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-28 22:51:39'),
('Surat Pernyataan Tidak Meninggalkan Tugas_198704252016033201_IB000068.pdf', 'IB000068', 42, 'Surat Pernyataan Tidak Meninggalkan Tugas', 'pdf', 2, '', '', '0000-00-00', '', '2022-04-12 07:51:13'),
('Surat Pernyataan Tidak Meninggalkan Tugas_198705022015042002_IB000048.pdf', 'IB000048', 42, 'Surat Pernyataan Tidak Meninggalkan Tugas', 'pdf', 0, '', '', '0000-00-00', '', '2022-06-10 07:39:12'),
('Surat Pernyataan Tidak Meninggalkan Tugas_198705212018083201_IB000057.pdf', 'IB000057', 42, 'Surat Pernyataan Tidak Meninggalkan Tugas', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-02 04:20:39'),
('Surat Pernyataan Tidak Meninggalkan Tugas_198711022015042003_IB000113.pdf', 'IB000113', 42, 'Surat Pernyataan Tidak Meninggalkan Tugas', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-21 02:16:54'),
('Surat Pernyataan Tidak Meninggalkan Tugas_198711112015041005_IB000108.pdf', 'IB000108', 42, 'Surat Pernyataan Tidak Meninggalkan Tugas', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-11 04:02:15'),
('Surat Pernyataan Tidak Meninggalkan Tugas_198805012016113201_IB000115.pdf', 'IB000115', 42, 'Surat Pernyataan Tidak Meninggalkan Tugas', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-23 10:25:36'),
('Surat Pernyataan Tidak Meninggalkan Tugas_198805162018013101_IB000119.pdf', 'IB000119', 42, 'Surat Pernyataan Tidak Meninggalkan Tugas', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-24 08:38:35'),
('Surat Pernyataan Tidak Meninggalkan Tugas_198808112018013201_IB000103.pdf', 'IB000103', 42, 'Surat Pernyataan Tidak Meninggalkan Tugas', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-06 04:18:42'),
('Surat Pernyataan Tidak Meninggalkan Tugas_198812152018013101_IB000122.pdf', 'IB000122', 42, 'Surat Pernyataan Tidak Meninggalkan Tugas', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-27 02:43:58'),
('Surat Pernyataan Tidak Meninggalkan Tugas_198906112018013101_IB000004.pdf', 'IB000004', 42, 'Surat Pernyataan Tidak Meninggalkan Tugas', 'pdf', 2, '', '', '0000-00-00', '', '2022-01-26 09:07:03'),
('Surat Pernyataan Tidak Meninggalkan Tugas_198906112018013101_IB000008.pdf', 'IB000008', 42, 'Surat Pernyataan Tidak Meninggalkan Tugas', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-02 06:53:35'),
('Surat Pernyataan Tidak Meninggalkan Tugas_198906112018013101_IB000010.pdf', 'IB000010', 42, 'Surat Pernyataan Tidak Meninggalkan Tugas', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-02 07:37:36'),
('Surat Pernyataan Tidak Meninggalkan Tugas_198912262016113201_IB000089.pdf', 'IB000089', 42, 'Surat Pernyataan Tidak Meninggalkan Tugas', 'pdf', 2, '', '', '0000-00-00', '', '2022-05-30 11:50:51'),
('Surat Pernyataan Tidak Meninggalkan Tugas_199001132015043101_IB000067.pdf', 'IB000067', 42, 'Surat Pernyataan Tidak Meninggalkan Tugas', 'pdf', 2, '', '', '0000-00-00', '', '2022-04-12 07:25:01'),
('Surat Pernyataan Tidak Meninggalkan Tugas_199003122016033101_IB000011.pdf', 'IB000011', 42, 'Surat Pernyataan Tidak Meninggalkan Tugas', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-02 08:27:21'),
('Surat Pernyataan Tidak Meninggalkan Tugas_199003312018013101_IB000028.pdf', 'IB000028', 42, 'Surat Pernyataan Tidak Meninggalkan Tugas', 'pdf', 0, '', '', '0000-00-00', '', '2022-10-06 03:40:21'),
('Surat Pernyataan Tidak Meninggalkan Tugas_199008232015043201_IB000003.pdf', 'IB000003', 42, 'Surat Pernyataan Tidak Meninggalkan Tugas', 'pdf', 2, '', '', '0000-00-00', '', '2022-01-26 02:49:19'),
('Surat Pernyataan Tidak Meninggalkan Tugas_199010272018013101_IB000024.pdf', 'IB000024', 42, 'Surat Pernyataan Tidak Meninggalkan Tugas', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-09 04:28:52'),
('Surat Pernyataan Tidak Meninggalkan Tugas_199107132018013201_IB000044.jpg', 'IB000044', 42, 'Surat Pernyataan Tidak Meninggalkan Tugas', 'jpg', 1, 'tidak sesuai, yg terlampir surat sehat', '', '0000-00-00', '', '2022-10-07 03:20:28'),
('Surat Pernyataan Tidak Meninggalkan Tugas_199110152015043201_IB000001.pdf', 'IB000001', 42, 'Surat Pernyataan Tidak Meninggalkan Tugas', 'pdf', 0, '', '', '0000-00-00', '', '2022-01-28 01:28:11'),
('Surat Pernyataan Tidak Meninggalkan Tugas_199204202021093101_IB000154.jpeg', 'IB000154', 42, 'Surat Pernyataan Tidak Meninggalkan Tugas', 'jpeg', 2, '', '', '0000-00-00', '', '2022-10-05 01:28:09'),
('Surat Pernyataan Tidak Meninggalkan Tugas_199206042018013101_IB000005.pdf', 'IB000005', 42, 'Surat Pernyataan Tidak Meninggalkan Tugas', 'pdf', 0, '', NULL, NULL, NULL, '2022-01-31 09:36:19'),
('Surat Pernyataan Tidak Meninggalkan Tugas_199207072018083201_IB000091.pdf', 'IB000091', 42, 'Surat Pernyataan Tidak Meninggalkan Tugas', 'pdf', 2, '', '', '0000-00-00', '', '2022-05-27 11:55:39'),
('Surat Pernyataan Tidak Meninggalkan Tugas_199310062018013101_IB000128.pdf', 'IB000128', 42, 'Surat Pernyataan Tidak Meninggalkan Tugas', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-29 12:12:02'),
('Surat Pernyataan Tidak Meninggalkan Tugas_199412162018035101_IB000070.pdf', 'IB000070', 42, 'Surat Pernyataan Tidak Meninggalkan Tugas', 'pdf', 2, '', '', '0000-00-00', '', '2022-04-08 06:22:37'),
('Surat Pernyataan Tidak Meninggalkan Tugas_199508212018035101_IB000029.pdf', 'IB000029', 42, 'Surat Pernyataan Tidak Meninggalkan Tugas', 'pdf', 0, '', '', '0000-00-00', '', '2022-10-07 09:24:02'),
('Surat Pernyataan Tidak Meninggalkan Tugas_199512052021025101_IB000012.pdf', 'IB000012', 42, 'Surat Pernyataan Tidak Meninggalkan Tugas', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-07 04:46:18'),
('Surat Pernyataan Tidak Meninggalkan Tugas_199602112019015101_IB000034.pdf', 'IB000034', 42, 'Surat Pernyataan Tidak Meninggalkan Tugas', 'pdf', 0, '', '', '0000-00-00', '', '2022-10-07 05:31:39'),
('Surat Pernyataan Tidak Meninggalkan Tugas_199905072019105101_IB000020.pdf', 'IB000020', 42, 'Surat Pernyataan Tidak Meninggalkan Tugas', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-09 03:56:44'),
('Surat Pernyataan Tidak Meninggalkan Tugas__IB000050.pdf', 'IB000050', 42, 'Surat Pernyataan Tidak Meninggalkan Tugas', 'pdf', 0, '', '', '0000-00-00', '', '2022-06-10 07:46:05'),
('Surat Pernyataan Tidak Meninggalkan Tugas__IB000156.pdf', 'IB000156', 42, 'Surat Pernyataan Tidak Meninggalkan Tugas', 'pdf', 2, '', '', '0000-00-00', '', '2022-08-31 20:45:40'),
('surat pernyataan tidak menuntut kenaikan pangkat_196101251980122003_IB000155.pdf', 'IB000155', 48, 'surat pernyataan tidak menuntut kenaikan pangkat', 'pdf', 2, '', '', '0000-00-00', '', '2022-08-31 04:03:32'),
('surat pernyataan tidak menuntut kenaikan pangkat_197203311994032004_IB000159.pdf', 'IB000159', 48, 'surat pernyataan tidak menuntut kenaikan pangkat', 'pdf', 2, '', '', '0000-00-00', '', '2022-10-12 08:32:38'),
('surat pernyataan tidak menuntut kenaikan pangkat_197205021999031002_IB000086.pdf', 'IB000086', 48, 'surat pernyataan tidak menuntut kenaikan pangkat', 'pdf', 2, '', '', '0000-00-00', '', '2022-05-23 06:31:31'),
('surat pernyataan tidak menuntut kenaikan pangkat_197401262018035101_IB000069.pdf', 'IB000069', 48, 'surat pernyataan tidak menuntut kenaikan pangkat', 'pdf', 2, '', '', '0000-00-00', '', '2022-04-08 06:13:54'),
('surat pernyataan tidak menuntut kenaikan pangkat_197411092018035201_IB000139.pdf', 'IB000139', 48, 'surat pernyataan tidak menuntut kenaikan pangkat', 'pdf', 2, '', '', '0000-00-00', '', '2022-07-20 04:46:55'),
('surat pernyataan tidak menuntut kenaikan pangkat_197411092018035201_IB000140.pdf', 'IB000140', 48, 'surat pernyataan tidak menuntut kenaikan pangkat', 'pdf', 2, '', '', '0000-00-00', '', '2022-07-20 05:54:59'),
('surat pernyataan tidak menuntut kenaikan pangkat_197505222003121002_IB000111.pdf', 'IB000111', 48, 'surat pernyataan tidak menuntut kenaikan pangkat', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-14 03:34:42'),
('surat pernyataan tidak menuntut kenaikan pangkat_197505262003121006_IB000114.pdf', 'IB000114', 48, 'surat pernyataan tidak menuntut kenaikan pangkat', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-22 05:48:26'),
('surat pernyataan tidak menuntut kenaikan pangkat_197706102008102001_IB000055.pdf', 'IB000055', 48, 'surat pernyataan tidak menuntut kenaikan pangkat', 'pdf', 2, '', '', '0000-00-00', '', '2022-03-11 06:56:02'),
('surat pernyataan tidak menuntut kenaikan pangkat_197712202015043101_IB000149.pdf', 'IB000149', 48, 'surat pernyataan tidak menuntut kenaikan pangkat', 'pdf', 2, '', '', '0000-00-00', '', '2022-08-08 12:48:18'),
('surat pernyataan tidak menuntut kenaikan pangkat_197812252018013101_IB000021.pdf', 'IB000021', 48, 'surat pernyataan tidak menuntut kenaikan pangkat', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-09 04:02:42'),
('surat pernyataan tidak menuntut kenaikan pangkat_198005012006041002_IB000170.pdf', 'IB000170', 48, 'surat pernyataan tidak menuntut kenaikan pangkat', 'pdf', 2, '', '', '0000-00-00', '', '2022-11-08 08:37:36'),
('surat pernyataan tidak menuntut kenaikan pangkat_198005172018013201_IB000136.pdf', 'IB000136', 48, 'surat pernyataan tidak menuntut kenaikan pangkat', 'pdf', 2, '', '', '0000-00-00', '', '2022-07-15 09:26:20'),
('surat pernyataan tidak menuntut kenaikan pangkat_198005172018013201_IB000137.pdf', 'IB000137', 48, 'surat pernyataan tidak menuntut kenaikan pangkat', 'pdf', 2, '', '', '0000-00-00', '', '2022-07-15 09:41:27'),
('surat pernyataan tidak menuntut kenaikan pangkat_198005172018013201_IB000138.pdf', 'IB000138', 48, 'surat pernyataan tidak menuntut kenaikan pangkat', 'pdf', 2, '', '', '0000-00-00', '', '2022-07-19 08:41:11'),
('surat pernyataan tidak menuntut kenaikan pangkat_198005252005012004_IB000112.pdf', 'IB000112', 48, 'surat pernyataan tidak menuntut kenaikan pangkat', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-16 07:48:21'),
('surat pernyataan tidak menuntut kenaikan pangkat_198009162006041002_IB000007.pdf', 'IB000007', 48, 'surat pernyataan tidak menuntut kenaikan pangkat', 'pdf', 0, '', '', '0000-00-00', '', '2022-02-03 01:35:54'),
('surat pernyataan tidak menuntut kenaikan pangkat_198104072005011001_IB000014.pdf', 'IB000014', 48, 'surat pernyataan tidak menuntut kenaikan pangkat', 'pdf', 0, '', '', '0000-00-00', '', '2022-04-07 02:33:26'),
('surat pernyataan tidak menuntut kenaikan pangkat_198106262014061003_IB000167.pdf', 'IB000167', 48, 'surat pernyataan tidak menuntut kenaikan pangkat', 'pdf', 2, '', '', '0000-00-00', '', '2022-10-26 09:05:28'),
('surat pernyataan tidak menuntut kenaikan pangkat_198106262014061003_IB000177.pdf', 'IB000177', 48, 'surat pernyataan tidak menuntut kenaikan pangkat', 'pdf', 2, '', '', '0000-00-00', '', '2023-01-11 00:56:45'),
('surat pernyataan tidak menuntut kenaikan pangkat_198106262014061003_IB000179.pdf', 'IB000179', 48, 'surat pernyataan tidak menuntut kenaikan pangkat', 'pdf', 2, '', '', '0000-00-00', '', '2023-01-11 01:00:17'),
('surat pernyataan tidak menuntut kenaikan pangkat_198203252018013101_IB000013.pdf', 'IB000013', 48, 'surat pernyataan tidak menuntut kenaikan pangkat', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-09 09:01:57'),
('surat pernyataan tidak menuntut kenaikan pangkat_198205092018013101_IB000104.pdf', 'IB000104', 48, 'surat pernyataan tidak menuntut kenaikan pangkat', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-06 04:23:19'),
('surat pernyataan tidak menuntut kenaikan pangkat_198210082008102001_IB000162.pdf', 'IB000162', 48, 'surat pernyataan tidak menuntut kenaikan pangkat', 'pdf', 2, '', '', '0000-00-00', '', '2022-10-24 01:08:11'),
('surat pernyataan tidak menuntut kenaikan pangkat_198212212018013101_IB000076.pdf', 'IB000076', 48, 'surat pernyataan tidak menuntut kenaikan pangkat', 'pdf', 2, '', '', '0000-00-00', '', '2022-04-17 02:30:59'),
('surat pernyataan tidak menuntut kenaikan pangkat_198212212018013101_IB000080.pdf', 'IB000080', 48, 'surat pernyataan tidak menuntut kenaikan pangkat', 'pdf', 2, '', '', '0000-00-00', '', '2022-05-04 06:16:20'),
('surat pernyataan tidak menuntut kenaikan pangkat_198212212018013101_IB000081.pdf', 'IB000081', 48, 'surat pernyataan tidak menuntut kenaikan pangkat', 'pdf', 2, '', '', '0000-00-00', '', '2022-05-04 06:24:09'),
('surat pernyataan tidak menuntut kenaikan pangkat_198302142010122003_IB000027.pdf', 'IB000027', 48, 'surat pernyataan tidak menuntut kenaikan pangkat', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-15 07:28:28'),
('surat pernyataan tidak menuntut kenaikan pangkat_198304182018013101_IB000105.pdf', 'IB000105', 48, 'surat pernyataan tidak menuntut kenaikan pangkat', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-07 07:57:39'),
('surat pernyataan tidak menuntut kenaikan pangkat_198311082018013201_IB000060.pdf', 'IB000060', 48, 'surat pernyataan tidak menuntut kenaikan pangkat', 'pdf', 2, '', '', '0000-00-00', '', '2022-04-03 14:30:13'),
('surat pernyataan tidak menuntut kenaikan pangkat_198406062015042001_IB000051.pdf', 'IB000051', 48, 'surat pernyataan tidak menuntut kenaikan pangkat', 'pdf', 0, '', '', '0000-00-00', '', '2022-06-10 08:03:54'),
('surat pernyataan tidak menuntut kenaikan pangkat_198412072018035101_IB000032.jpg', 'IB000032', 48, 'surat pernyataan tidak menuntut kenaikan pangkat', 'jpg', 2, '', '', '0000-00-00', '', '2022-02-16 07:11:55'),
('surat pernyataan tidak menuntut kenaikan pangkat_198412072018035101_IB000033.pdf', 'IB000033', 48, 'surat pernyataan tidak menuntut kenaikan pangkat', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-16 07:19:01'),
('surat pernyataan tidak menuntut kenaikan pangkat_198412072018035101_IB000037.pdf', 'IB000037', 48, 'surat pernyataan tidak menuntut kenaikan pangkat', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-22 05:33:08'),
('surat pernyataan tidak menuntut kenaikan pangkat_198412072018035101_IB000038.pdf', 'IB000038', 48, 'surat pernyataan tidak menuntut kenaikan pangkat', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-22 05:39:22'),
('surat pernyataan tidak menuntut kenaikan pangkat_198412072018035101_IB000039.pdf', 'IB000039', 48, 'surat pernyataan tidak menuntut kenaikan pangkat', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-22 05:49:32'),
('surat pernyataan tidak menuntut kenaikan pangkat_198412072018035101_IB000043.pdf', 'IB000043', 48, 'surat pernyataan tidak menuntut kenaikan pangkat', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-23 02:34:12'),
('surat pernyataan tidak menuntut kenaikan pangkat_198412072018035101_IB000054.pdf', 'IB000054', 48, 'surat pernyataan tidak menuntut kenaikan pangkat', 'pdf', 2, '', '', '0000-00-00', '', '2022-03-11 06:24:48'),
('surat pernyataan tidak menuntut kenaikan pangkat_198412072018035101_IB000163.pdf', 'IB000163', 48, 'surat pernyataan tidak menuntut kenaikan pangkat', 'pdf', 2, '', '', '0000-00-00', '', '2022-10-24 02:03:31'),
('surat pernyataan tidak menuntut kenaikan pangkat_198412152009122007_IB000017.pdf', 'IB000017', 48, 'surat pernyataan tidak menuntut kenaikan pangkat', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-23 07:56:16'),
('surat pernyataan tidak menuntut kenaikan pangkat_198504082018013101_IB000073.pdf', 'IB000073', 48, 'surat pernyataan tidak menuntut kenaikan pangkat', 'pdf', 2, '', '', '0000-00-00', '', '2022-04-16 13:12:54'),
('surat pernyataan tidak menuntut kenaikan pangkat_198504082018013101_IB000074.pdf', 'IB000074', 48, 'surat pernyataan tidak menuntut kenaikan pangkat', 'pdf', 2, '', '', '0000-00-00', '', '2022-04-16 13:19:05'),
('surat pernyataan tidak menuntut kenaikan pangkat_198504082018013101_IB000075.pdf', 'IB000075', 48, 'surat pernyataan tidak menuntut kenaikan pangkat', 'pdf', 2, '', '', '0000-00-00', '', '2022-04-16 13:27:55'),
('surat pernyataan tidak menuntut kenaikan pangkat_198504082018013101_IB000077.pdf', 'IB000077', 48, 'surat pernyataan tidak menuntut kenaikan pangkat', 'pdf', 2, '', '', '0000-00-00', '', '2022-04-19 15:47:05'),
('surat pernyataan tidak menuntut kenaikan pangkat_198505212018013101_IB000071.pdf', 'IB000071', 48, 'surat pernyataan tidak menuntut kenaikan pangkat', 'pdf', 2, '', '', '0000-00-00', '', '2022-04-16 07:45:00'),
('surat pernyataan tidak menuntut kenaikan pangkat_198510142010121002_IB000085.pdf', 'IB000085', 48, 'surat pernyataan tidak menuntut kenaikan pangkat', 'pdf', 2, '', '', '0000-00-00', '', '2022-05-11 07:16:09'),
('surat pernyataan tidak menuntut kenaikan pangkat_198601252016113201_IB000064.pdf', 'IB000064', 48, 'surat pernyataan tidak menuntut kenaikan pangkat', 'pdf', 0, '', '', '0000-00-00', '', '2022-06-10 08:05:02'),
('surat pernyataan tidak menuntut kenaikan pangkat_198603012016113101_IB000106.pdf', 'IB000106', 48, 'surat pernyataan tidak menuntut kenaikan pangkat', 'pdf', 0, '', '', '0000-00-00', '', '2022-06-13 09:14:18'),
('surat pernyataan tidak menuntut kenaikan pangkat_198604122015043101_IB000083.pdf', 'IB000083', 48, 'surat pernyataan tidak menuntut kenaikan pangkat', 'pdf', 2, '', '', '0000-00-00', '', '2022-05-14 03:19:08'),
('surat pernyataan tidak menuntut kenaikan pangkat_198604182018013201_IB000022.pdf', 'IB000022', 48, 'surat pernyataan tidak menuntut kenaikan pangkat', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-09 04:23:03'),
('surat pernyataan tidak menuntut kenaikan pangkat_198606022015042001_IB000065.pdf', 'IB000065', 48, 'surat pernyataan tidak menuntut kenaikan pangkat', 'pdf', 0, '', '', '0000-00-00', '', '2022-06-10 08:07:42'),
('surat pernyataan tidak menuntut kenaikan pangkat_198609012018013101_IB000006.pdf', 'IB000006', 48, 'surat pernyataan tidak menuntut kenaikan pangkat', 'pdf', 0, '', '', '0000-00-00', '', '2022-01-31 04:53:00'),
('surat pernyataan tidak menuntut kenaikan pangkat_198611092015042002_IB000066.pdf', 'IB000066', 48, 'surat pernyataan tidak menuntut kenaikan pangkat', 'pdf', 0, '', '', '0000-00-00', '', '2022-06-10 08:10:56'),
('surat pernyataan tidak menuntut kenaikan pangkat_198701102015042001_IB000120.pdf', 'IB000120', 48, 'surat pernyataan tidak menuntut kenaikan pangkat', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-26 13:50:17'),
('surat pernyataan tidak menuntut kenaikan pangkat_198701102015042001_IB000123.pdf', 'IB000123', 48, 'surat pernyataan tidak menuntut kenaikan pangkat', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-27 05:08:29'),
('surat pernyataan tidak menuntut kenaikan pangkat_198701102015042001_IB000125.pdf', 'IB000125', 48, 'surat pernyataan tidak menuntut kenaikan pangkat', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-28 22:53:02'),
('surat pernyataan tidak menuntut kenaikan pangkat_198702232016113201_IB000050.pdf', 'IB000050', 48, 'surat pernyataan tidak menuntut kenaikan pangkat', 'pdf', 0, '', '', '0000-00-00', '', '2022-06-10 07:46:26'),
('surat pernyataan tidak menuntut kenaikan pangkat_198704252016033201_IB000068.pdf', 'IB000068', 48, 'surat pernyataan tidak menuntut kenaikan pangkat', 'pdf', 2, '', '', '0000-00-00', '', '2022-04-12 07:54:41'),
('surat pernyataan tidak menuntut kenaikan pangkat_198705022015042002_IB000048.pdf', 'IB000048', 48, 'surat pernyataan tidak menuntut kenaikan pangkat', 'pdf', 0, '', '', '0000-00-00', '', '2022-06-10 07:39:28'),
('surat pernyataan tidak menuntut kenaikan pangkat_198705212018083201_IB000057.pdf', 'IB000057', 48, 'surat pernyataan tidak menuntut kenaikan pangkat', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-02 04:22:47'),
('surat pernyataan tidak menuntut kenaikan pangkat_198711022015042003_IB000113.pdf', 'IB000113', 48, 'surat pernyataan tidak menuntut kenaikan pangkat', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-21 02:19:22'),
('surat pernyataan tidak menuntut kenaikan pangkat_198711112015041005_IB000108.pdf', 'IB000108', 48, 'surat pernyataan tidak menuntut kenaikan pangkat', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-11 04:04:21'),
('surat pernyataan tidak menuntut kenaikan pangkat_198805012016113201_IB000115.pdf', 'IB000115', 48, 'surat pernyataan tidak menuntut kenaikan pangkat', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-23 10:27:12'),
('surat pernyataan tidak menuntut kenaikan pangkat_198805162018013101_IB000119.pdf', 'IB000119', 48, 'surat pernyataan tidak menuntut kenaikan pangkat', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-24 08:40:43'),
('surat pernyataan tidak menuntut kenaikan pangkat_198808112018013201_IB000103.pdf', 'IB000103', 48, 'surat pernyataan tidak menuntut kenaikan pangkat', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-06 04:19:34'),
('surat pernyataan tidak menuntut kenaikan pangkat_198812152018013101_IB000122.pdf', 'IB000122', 48, 'surat pernyataan tidak menuntut kenaikan pangkat', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-27 02:45:05'),
('surat pernyataan tidak menuntut kenaikan pangkat_198906112018013101_IB000008.pdf', 'IB000008', 48, 'surat pernyataan tidak menuntut kenaikan pangkat', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-02 07:34:36'),
('surat pernyataan tidak menuntut kenaikan pangkat_198906112018013101_IB000010.pdf', 'IB000010', 48, 'surat pernyataan tidak menuntut kenaikan pangkat', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-02 07:38:34'),
('surat pernyataan tidak menuntut kenaikan pangkat_198912262016113201_IB000089.pdf', 'IB000089', 48, 'surat pernyataan tidak menuntut kenaikan pangkat', 'pdf', 2, '', '', '0000-00-00', '', '2022-05-30 11:56:42'),
('surat pernyataan tidak menuntut kenaikan pangkat_199001132015043101_IB000067.pdf', 'IB000067', 48, 'surat pernyataan tidak menuntut kenaikan pangkat', 'pdf', 2, '', '', '0000-00-00', '', '2022-04-12 07:31:19'),
('surat pernyataan tidak menuntut kenaikan pangkat_199003122016033101_IB000011.pdf', 'IB000011', 48, 'surat pernyataan tidak menuntut kenaikan pangkat', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-02 08:47:28'),
('surat pernyataan tidak menuntut kenaikan pangkat_199003312018013101_IB000028.pdf', 'IB000028', 48, 'surat pernyataan tidak menuntut kenaikan pangkat', 'pdf', 0, '', '', '0000-00-00', '', '2022-10-06 03:40:44'),
('surat pernyataan tidak menuntut kenaikan pangkat_199008082021093101_IB000156.pdf', 'IB000156', 48, 'surat pernyataan tidak menuntut kenaikan pangkat', 'pdf', 2, '', '', '0000-00-00', '', '2022-09-13 21:31:39'),
('surat pernyataan tidak menuntut kenaikan pangkat_199008232015043201_IB000003.pdf', 'IB000003', 48, 'surat pernyataan tidak menuntut kenaikan pangkat', 'pdf', 2, '', '', '0000-00-00', '', '2022-01-26 02:52:57'),
('surat pernyataan tidak menuntut kenaikan pangkat_199010272018013101_IB000024.pdf', 'IB000024', 48, 'surat pernyataan tidak menuntut kenaikan pangkat', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-09 04:30:38'),
('surat pernyataan tidak menuntut kenaikan pangkat_199107132018013201_IB000044.pdf', 'IB000044', 48, 'surat pernyataan tidak menuntut kenaikan pangkat', 'pdf', 0, '', '', '0000-00-00', '', '2022-10-07 03:44:19'),
('surat pernyataan tidak menuntut kenaikan pangkat_199110152015043201_IB000001.pdf', 'IB000001', 48, 'surat pernyataan tidak menuntut kenaikan pangkat', 'pdf', 0, '', '', '0000-00-00', '', '2022-01-28 01:28:12'),
('surat pernyataan tidak menuntut kenaikan pangkat_199204202021093101_IB000154.png', 'IB000154', 48, 'surat pernyataan tidak menuntut kenaikan pangkat', 'png', 2, '', '', '0000-00-00', '', '2022-10-05 01:37:21'),
('surat pernyataan tidak menuntut kenaikan pangkat_199206042018013101_IB000005.pdf', 'IB000005', 48, 'surat pernyataan tidak menuntut kenaikan pangkat', 'pdf', 0, '', '', '0000-00-00', '', '2022-01-31 09:33:24'),
('surat pernyataan tidak menuntut kenaikan pangkat_199207072018083201_IB000091.pdf', 'IB000091', 48, 'surat pernyataan tidak menuntut kenaikan pangkat', 'pdf', 2, '', '', '0000-00-00', '', '2022-05-27 11:56:03'),
('surat pernyataan tidak menuntut kenaikan pangkat_199310062018013101_IB000128.pdf', 'IB000128', 48, 'surat pernyataan tidak menuntut kenaikan pangkat', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-29 12:14:21'),
('surat pernyataan tidak menuntut kenaikan pangkat_199412162018035101_IB000070.pdf', 'IB000070', 48, 'surat pernyataan tidak menuntut kenaikan pangkat', 'pdf', 2, '', '', '0000-00-00', '', '2022-04-08 06:24:49'),
('surat pernyataan tidak menuntut kenaikan pangkat_199508212018035101_IB000029.pdf', 'IB000029', 48, 'surat pernyataan tidak menuntut kenaikan pangkat', 'pdf', 0, '', '', '0000-00-00', '', '2022-10-07 09:23:49'),
('surat pernyataan tidak menuntut kenaikan pangkat_199512052021025101_IB000012.pdf', 'IB000012', 48, 'surat pernyataan tidak menuntut kenaikan pangkat', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-15 04:14:08'),
('surat pernyataan tidak menuntut kenaikan pangkat_199602112019015101_IB000034.pdf', 'IB000034', 48, 'surat pernyataan tidak menuntut kenaikan pangkat', 'pdf', 0, '', '', '0000-00-00', '', '2022-10-07 07:33:15'),
('surat pernyataan tidak menuntut kenaikan pangkat_199905072019105101_IB000020.pdf', 'IB000020', 48, 'surat pernyataan tidak menuntut kenaikan pangkat', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-09 03:59:41');

-- --------------------------------------------------------

--
-- Struktur dari tabel `upload_file_pengaktifan`
--

CREATE TABLE `upload_file_pengaktifan` (
  `ID_UP_FILE_AKT` varchar(100) NOT NULL,
  `ID_PENGAKTIFAN` char(6) NOT NULL,
  `ID_JENIS` int(11) DEFAULT NULL,
  `NAMA_FILE_AKT` varchar(100) DEFAULT NULL,
  `TIPE_FILE` char(5) DEFAULT NULL,
  `STATUS_FILE_PENGAKTIFAN` tinyint(1) NOT NULL,
  `KETERANGAN_REVISI_PENGAKTIFAN` varchar(100) NOT NULL,
  `NOMOR_SURAT` varchar(100) DEFAULT NULL,
  `TGL_SURAT` date DEFAULT NULL,
  `JABATAN_PIMPINAN` varchar(100) DEFAULT NULL,
  `TGL_UPDATE` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `upload_file_perpanjangan`
--

CREATE TABLE `upload_file_perpanjangan` (
  `ID_UP_FILE_PJG` varchar(200) NOT NULL,
  `ID_PERPANJANGAN` char(6) DEFAULT NULL,
  `ID_JENIS` int(100) DEFAULT NULL,
  `NAMA_FILE_PJG` varchar(100) DEFAULT NULL,
  `TIPE_FILE` char(5) DEFAULT NULL,
  `STATUS_FILE_PERPANJANGAN` tinyint(1) NOT NULL,
  `KETERANGAN_REVISI_PERPANJANGAN` varchar(100) NOT NULL,
  `NOMOR_SURAT` varchar(100) DEFAULT NULL,
  `TGL_SURAT` date DEFAULT NULL,
  `JABATAN_PIMPINAN` varchar(100) DEFAULT NULL,
  `TGL_UPDATE` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `upload_file_tubel`
--

CREATE TABLE `upload_file_tubel` (
  `ID_UP_FILE_T` varchar(1024) NOT NULL,
  `ID_TUBEL` varchar(16) DEFAULT NULL,
  `ID_JENIS` int(11) DEFAULT NULL,
  `NAMA_FILE_T` varchar(100) DEFAULT NULL,
  `TIPE_FILE` varchar(5) DEFAULT NULL,
  `STATUS_FILE_TUBEL` tinyint(1) NOT NULL,
  `KETERANGAN_REVISI_TUBEL` varchar(100) NOT NULL,
  `NOMOR_SURAT` varchar(100) DEFAULT NULL,
  `TGL_SURAT` date DEFAULT NULL,
  `JABATAN_PIMPINAN` varchar(100) DEFAULT NULL,
  `TGL_UPDATE` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `upload_file_tubel`
--

INSERT INTO `upload_file_tubel` (`ID_UP_FILE_T`, `ID_TUBEL`, `ID_JENIS`, `NAMA_FILE_T`, `TIPE_FILE`, `STATUS_FILE_TUBEL`, `KETERANGAN_REVISI_TUBEL`, `NOMOR_SURAT`, `TGL_SURAT`, `JABATAN_PIMPINAN`, `TGL_UPDATE`) VALUES
('AGENDA_198204252005012002_TB000023.pdf', 'TB000023', 64, 'AGENDA', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-25 09:51:53'),
('AGENDA_198304232010122007_TB000033.pdf', 'TB000033', 64, 'AGENDA', 'pdf', 2, '', '', '0000-00-00', '', '2022-03-24 05:28:04'),
('AGENDA_198407182015041001_TB000003.pdf', 'TB000003', 64, 'AGENDA', 'pdf', 0, '', '', '0000-00-00', '', '2022-01-28 01:24:42'),
('AGENDA_198409012015041002_TB000015.pdf', 'TB000015', 64, 'AGENDA', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-09 03:42:38'),
('AGENDA_198505182008122002_TB000036.pdf', 'TB000036', 64, 'AGENDA', 'pdf', 2, '', '', '0000-00-00', '', '2022-04-29 09:40:21'),
('AGENDA_198505252016113101_TB000021.pdf', 'TB000021', 64, 'AGENDA', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-12 02:56:40'),
('AGENDA_198703292016113101_TB000028.pdf', 'TB000028', 64, 'AGENDA', 'pdf', 2, '', '', '0000-00-00', '', '2022-03-16 07:52:02'),
('AGENDA_198707172015042002_TB000017.pdf', 'TB000017', 64, 'AGENDA', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-10 01:25:14'),
('AGENDA_198801092016113201_TB000009.pdf', 'TB000009', 64, 'AGENDA', 'pdf', 0, '', '', '0000-00-00', '', '2022-03-30 07:03:16'),
('AGENDA_198808302018083201_TB000038.pdf', 'TB000038', 64, 'AGENDA', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-06 01:49:59'),
('AGENDA_198812172018083201_TB000008.pdf', 'TB000008', 64, 'AGENDA', 'pdf', 2, '', '', '0000-00-00', '', '2022-01-31 09:53:29'),
('AGENDA_198905232015043101_TB000045.pdf', 'TB000045', 64, 'AGENDA', 'pdf', 2, '', '', '0000-00-00', '', '2022-10-13 05:49:17'),
('AGENDA_198911032021093101_TB000050.pdf', 'TB000050', 64, 'AGENDA', 'pdf', 2, '', '', '0000-00-00', '', '2022-08-31 04:32:44'),
('AGENDA_199005152014042001_TB000029.pdf', 'TB000029', 64, 'AGENDA', 'pdf', 2, '', '', '0000-00-00', '', '2022-03-08 06:10:20'),
('AGENDA_199006092014093101_TB000048.pdf', 'TB000048', 64, 'AGENDA', 'pdf', 0, '', '', '0000-00-00', '', '2022-10-06 03:30:51'),
('AGENDA_199010152015041001_TB000037.pdf', 'TB000037', 64, 'AGENDA', 'pdf', 2, '', '', '0000-00-00', '', '2022-05-11 08:22:36'),
('AGENDA_199110232021093101_TB000051.pdf', 'TB000051', 64, 'AGENDA', 'pdf', 2, '', '', '0000-00-00', '', '2022-08-31 04:39:15'),
('AGENDA_199207222022103101_TB000056.pdf', 'TB000056', 64, 'AGENDA', 'pdf', 2, '', '', '0000-00-00', '', '2022-12-05 09:12:09'),
('AGENDA_199212242022013101_TB000024.pdf', 'TB000024', 64, 'AGENDA', 'pdf', 0, '', '', '0000-00-00', '', '2022-04-07 05:00:58'),
('AGENDA_199302192022103101_TB000055.pdf', 'TB000055', 64, 'AGENDA', 'pdf', 2, '', '', '0000-00-00', '', '2022-12-06 05:40:51'),
('AGENDA_199309062021093101_TB000049.pdf', 'TB000049', 64, 'AGENDA', 'pdf', 2, '', '', '0000-00-00', '', '2022-09-01 13:38:56'),
('AGENDA_199404142018083201_TB000004.pdf', 'TB000004', 64, 'AGENDA', 'pdf', 0, '', '', '0000-00-00', '', '2022-03-29 08:54:37'),
('AGENDA_199404232020073201_TB000040.pdf', 'TB000040', 64, 'AGENDA', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-14 02:24:48'),
('AGENDA__TB000026.pdf', 'TB000026', 64, 'AGENDA', 'pdf', 2, '', '', '0000-00-00', '', '2022-05-31 00:16:19'),
('Akta Nikah_198204252005012002_TB000023.pdf', 'TB000023', 9, 'Akta Nikah', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-21 04:37:05'),
('Akta Nikah_198209122008011006_TB000016.pdf', 'TB000016', 9, 'Akta Nikah', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-10 02:01:55'),
('Akta Nikah_198304232010122007_TB000033.pdf', 'TB000033', 9, 'Akta Nikah', 'pdf', 2, '', '', '0000-00-00', '', '2022-03-24 05:22:42'),
('Akta Nikah_198407182015041001_TB000003.pdf', 'TB000003', 9, 'Akta Nikah', 'pdf', 0, '', '', '0000-00-00', '', '2022-01-28 01:24:44'),
('Akta Nikah_198409012015041002_TB000015.pdf', 'TB000015', 9, 'Akta Nikah', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-09 03:34:05'),
('Akta Nikah_198505252016113101_TB000021.pdf', 'TB000021', 9, 'Akta Nikah', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-12 02:20:59'),
('Akta Nikah_198509222014041001_TB000006.pdf', 'TB000006', 9, 'Akta Nikah', 'pdf', 2, '', '', '0000-00-00', '', '2022-01-26 04:37:40'),
('Akta Nikah_198609112014041001_TB000018.pdf', 'TB000018', 9, 'Akta Nikah', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-09 05:20:14'),
('Akta Nikah_198703292016113101_TB000028.pdf', 'TB000028', 9, 'Akta Nikah', 'pdf', 2, '', '', '0000-00-00', '', '2022-03-16 06:59:48'),
('Akta Nikah_198707172015042002_TB000017.pdf', 'TB000017', 9, 'Akta Nikah', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-10 01:04:39'),
('Akta Nikah_198710232015042004_TB000035.pdf', 'TB000035', 9, 'Akta Nikah', 'pdf', 2, '', '', '0000-00-00', '', '2022-09-26 05:42:40'),
('Akta Nikah_198712022015041002_TB000010.pdf', 'TB000010', 9, 'Akta Nikah', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-09 03:41:53'),
('Akta Nikah_198905232015043101_TB000045.pdf', 'TB000045', 9, 'Akta Nikah', 'pdf', 2, '', '', '0000-00-00', '', '2022-07-16 16:54:48'),
('Akta Nikah_198911032021093101_TB000050.pdf', 'TB000050', 9, 'Akta Nikah', 'pdf', 2, '', '', '0000-00-00', '', '2022-08-31 04:31:19'),
('Akta Nikah_199005152014042001_TB000029.pdf', 'TB000029', 9, 'Akta Nikah', 'pdf', 2, '', '', '0000-00-00', '', '2022-03-08 06:16:34'),
('Akta Nikah_199006022016113201_TB000014.pdf', 'TB000014', 9, 'Akta Nikah', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-09 04:32:59'),
('Akta Nikah_199006092014093101_TB000048.pdf', 'TB000048', 9, 'Akta Nikah', 'pdf', 0, '', '', '0000-00-00', '', '2022-10-10 07:36:43'),
('Akta Nikah_199007092015041002_TB000020.pdf', 'TB000020', 9, 'Akta Nikah', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-10 05:25:19'),
('Akta Nikah_199102092014041001_TB000026.pdf', 'TB000026', 9, 'Akta Nikah', 'pdf', 2, '', '', '0000-00-00', '', '2022-05-30 06:09:47'),
('Akta Nikah_199110232021093101_TB000051.jpg', 'TB000051', 9, 'Akta Nikah', 'jpg', 2, '', '', '0000-00-00', '', '2022-08-31 04:35:58'),
('Akta Nikah_199202112020063101_TB000001.pdf', 'TB000001', 9, 'Akta Nikah', 'pdf', 0, '', '', '0000-00-00', '', '2021-12-23 03:24:38'),
('Akta Nikah_199206012018083201_TB000012.pdf', 'TB000012', 9, 'Akta Nikah', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-09 03:26:53'),
('Akta Nikah_199207222022103101_TB000056.jpg', 'TB000056', 9, 'Akta Nikah', 'jpg', 2, '', '', '0000-00-00', '', '2022-12-05 08:28:32'),
('Akta Nikah_199212242022013101_TB000024.pdf', 'TB000024', 9, 'Akta Nikah', 'pdf', 0, '', '', '0000-00-00', '', '2022-04-07 05:01:37'),
('Akta Nikah_199301282019031015_TB000027.pdf', 'TB000027', 9, 'Akta Nikah', 'pdf', 2, '', '', '0000-00-00', '', '2022-03-01 23:47:00'),
('Akta Nikah_199302192022103101_TB000055.pdf', 'TB000055', 9, 'Akta Nikah', 'pdf', 2, '', '', '0000-00-00', '', '2022-12-06 05:38:52'),
('Akta Nikah_199309062021093101_TB000049.png', 'TB000049', 9, 'Akta Nikah', 'png', 2, '', '', '0000-00-00', '', '2022-09-01 13:38:29'),
('Akta Nikah_199404142018083201_TB000004.pdf', 'TB000004', 9, 'Akta Nikah', 'pdf', 0, '', '', '0000-00-00', '', '2022-03-29 08:54:40'),
('Akta Nikah_199404232020073201_TB000040.pdf', 'TB000040', 9, 'Akta Nikah', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-10 14:37:54'),
('KARPEG_198204252005012002_TB000023.pdf', 'TB000023', 10, 'KARPEG', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-25 10:23:46'),
('KARPEG_198304232010122007_TB000033.pdf', 'TB000033', 10, 'KARPEG', 'pdf', 2, '', '', '0000-00-00', '', '2022-03-24 05:48:37'),
('KARPEG_198407182015041001_TB000003.pdf', 'TB000003', 10, 'KARPEG', 'pdf', 0, '', '', '0000-00-00', '', '2022-01-28 01:24:46'),
('KARPEG_198409012015041002_TB000015.pdf', 'TB000015', 10, 'KARPEG', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-09 03:40:40'),
('KARPEG_198509222014041001_TB000006.pdf', 'TB000006', 10, 'KARPEG', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-09 04:04:39'),
('KARPEG_198609112014041001_TB000018.pdf', 'TB000018', 10, 'KARPEG', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-09 07:01:16'),
('KARPEG_198703292016113101_TB000028.pdf', 'TB000028', 10, 'KARPEG', 'pdf', 2, '', '', '0000-00-00', '', '2022-04-06 09:22:30'),
('KARPEG_198712022015041002_TB000010.pdf', 'TB000010', 10, 'KARPEG', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-09 03:48:57'),
('KARPEG_198801092016113201_TB000009.pdf', 'TB000009', 10, 'KARPEG', 'pdf', 0, '', '', '0000-00-00', '', '2022-03-30 07:03:18'),
('KARPEG_198909172014041001_TB000011.pdf', 'TB000011', 10, 'KARPEG', 'pdf', 0, '', '', '0000-00-00', '', '2022-02-09 04:34:30'),
('KARPEG_199006092014093101_TB000048.pdf', 'TB000048', 10, 'KARPEG', 'pdf', 0, '', '', '0000-00-00', '', '2022-10-10 07:36:57'),
('KARPEG_199007092015041002_TB000020.pdf', 'TB000020', 10, 'KARPEG', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-10 06:08:40'),
('KARPEG_199010152015041001_TB000037.pdf', 'TB000037', 10, 'KARPEG', 'pdf', 2, '', '', '0000-00-00', '', '2022-05-18 09:04:33'),
('KARPEG_199102092014041001_TB000026.pdf', 'TB000026', 10, 'KARPEG', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-26 07:00:44'),
('KARPEG_199202112020063101_TB000001.pdf', 'TB000001', 10, 'KARPEG', 'pdf', 0, '', '', '0000-00-00', '', '2021-12-23 03:24:39'),
('KARPEG_199212242022013101_TB000024.pdf', 'TB000024', 10, 'KARPEG', 'pdf', 0, '', '', '0000-00-00', '', '2022-04-07 05:01:57'),
('KARPEG_199301282019031015_TB000027.pdf', 'TB000027', 10, 'KARPEG', 'pdf', 2, '', '', '0000-00-00', '', '2022-03-01 23:56:15'),
('Konversi NIP_198204252005012002_TB000023.pdf', 'TB000023', 65, 'Konversi NIP', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-25 10:23:46'),
('Konversi NIP_199006092014093101_TB000048.pdf', 'TB000048', 65, 'Konversi NIP', 'pdf', 0, '', '', '0000-00-00', '', '2022-10-10 07:38:04'),
('Konversi NIP_199010152015041001_TB000037.PDF', 'TB000037', 65, 'Konversi NIP', 'PDF', 2, '', '', '0000-00-00', '', '2022-05-18 09:04:33'),
('Konversi NIP_199202112020063101_TB000001.pdf', 'TB000001', 65, 'Konversi NIP', 'pdf', 0, '', '', '0000-00-00', '', '2021-12-23 03:24:40'),
('LOA_198204252005012002_TB000023.pdf', 'TB000023', 2, 'LOA', 'pdf', 2, '', NULL, NULL, '', '2022-02-21 04:28:04'),
('LOA_198304232010122007_TB000033.pdf', 'TB000033', 2, 'LOA', 'pdf', 2, '', '01', NULL, '', '2022-03-24 04:43:36'),
('LOA_198305232008012009_TB000046.pdf', 'TB000046', 2, 'LOA', 'pdf', 2, '', '111F245', NULL, '', '2022-07-27 14:33:27'),
('LOA_198407182015041001_TB000003.pdf', 'TB000003', 2, 'LOA', 'pdf', 0, '', NULL, NULL, '', '2022-01-28 01:24:47'),
('LOA_198409012015041002_TB000015.pdf', 'TB000015', 2, 'LOA', 'pdf', 2, '', 'BTK/3935/1(2020)', NULL, '', '2022-02-09 03:32:11'),
('LOA_198505182008122002_TB000036.pdf', 'TB000036', 2, 'LOA', 'pdf', 2, '', NULL, NULL, '', '2022-04-29 09:37:08'),
('LOA_198505252016113101_TB000021.pdf', 'TB000021', 2, 'LOA', 'pdf', 2, '', NULL, NULL, '', '2022-02-12 02:10:18'),
('LOA_198509222014041001_TB000006.pdf', 'TB000006', 2, 'LOA', 'pdf', 2, '', NULL, NULL, '', '2022-01-26 04:35:10'),
('LOA_198609112014041001_TB000018.pdf', 'TB000018', 2, 'LOA', 'pdf', 2, '', NULL, NULL, '', '2022-02-09 05:15:37'),
('LOA_198703292016113101_TB000028.pdf', 'TB000028', 2, 'LOA', 'pdf', 2, '', NULL, NULL, '', '2022-03-16 06:58:38'),
('LOA_198707172015042002_TB000017.pdf', 'TB000017', 2, 'LOA', 'pdf', 2, '', NULL, NULL, '', '2022-02-10 00:56:53'),
('LOA_198710232015042004_TB000035.pdf', 'TB000035', 2, 'LOA', 'pdf', 2, '', NULL, NULL, '', '2022-04-04 07:53:16'),
('LOA_198712022015041002_TB000010.pdf', 'TB000010', 2, 'LOA', 'pdf', 2, '', '-', NULL, '', '2022-02-09 03:41:08'),
('LOA_198801092016113201_TB000009.pdf', 'TB000009', 2, 'LOA', 'pdf', 0, '', '212254', NULL, '', '2022-03-30 07:03:19'),
('LOA_198808302018083201_TB000038.pdf', 'TB000038', 2, 'LOA', 'pdf', 2, '', NULL, NULL, '', '2022-05-11 15:30:34'),
('LOA_198812172018083201_TB000008.pdf', 'TB000008', 2, 'LOA', 'pdf', 2, '', NULL, NULL, '', '2022-01-31 09:45:30'),
('LOA_198905232015043101_TB000045.pdf', 'TB000045', 2, 'LOA', 'pdf', 2, '', NULL, NULL, '', '2022-07-15 14:20:59'),
('LOA_198909172014041001_TB000011.pdf', 'TB000011', 2, 'LOA', 'pdf', 0, '', NULL, NULL, '', '2022-02-09 04:34:34'),
('LOA_198911032021093101_TB000050.pdf', 'TB000050', 2, 'LOA', 'pdf', 2, '', NULL, NULL, '', '2022-08-31 04:30:34'),
('LOA_199005152014042001_TB000029.pdf', 'TB000029', 2, 'LOA', 'pdf', 2, '', NULL, NULL, '', '2022-03-08 05:02:24'),
('LOA_199006092014093101_TB000048.pdf', 'TB000048', 2, 'LOA', 'pdf', 0, '', NULL, NULL, '', '2022-10-10 07:39:04'),
('LOA_199007092015041002_TB000020.pdf', 'TB000020', 2, 'LOA', 'pdf', 2, '', NULL, NULL, '', '2022-02-10 04:31:04'),
('LOA_199010152015041001_TB000037.PDF', 'TB000037', 2, 'LOA', 'PDF', 2, '', NULL, NULL, '', '2022-05-11 08:20:08'),
('LOA_199102092014041001_TB000026.PDF', 'TB000026', 2, 'LOA', 'PDF', 2, '', NULL, NULL, '', '2022-05-30 06:08:24'),
('LOA_199107262016113201_TB000030.pdf', 'TB000030', 2, 'LOA', 'pdf', 2, '', NULL, NULL, '', '2022-03-10 01:10:46'),
('LOA_199110232021093101_TB000051.pdf', 'TB000051', 2, 'LOA', 'pdf', 2, '', NULL, NULL, '', '2022-08-31 04:35:01'),
('LOA_199202112020063101_TB000001.pdf', 'TB000001', 2, 'LOA', 'pdf', 0, '', NULL, NULL, '', '2021-12-23 03:24:42'),
('LOA_199206012018083201_TB000012.pdf', 'TB000012', 2, 'LOA', 'pdf', 2, '', ' 2021175723', NULL, '', '2022-02-09 03:44:00'),
('LOA_199207222022103101_TB000056.jpg', 'TB000056', 2, 'LOA', 'jpg', 2, '', NULL, NULL, '', '2022-12-05 08:13:06'),
('LOA_199212242022013101_TB000024.pdf', 'TB000024', 2, 'LOA', 'pdf', 0, '', NULL, NULL, '', '2022-04-07 05:05:07'),
('LOA_199301282019031015_TB000027.pdf', 'TB000027', 2, 'LOA', 'pdf', 2, '', '21ID014135', NULL, '', '2022-03-01 23:43:26'),
('LOA_199302192022103101_TB000055.pdf', 'TB000055', 2, 'LOA', 'pdf', 2, '', NULL, NULL, '', '2022-12-06 05:36:35'),
('LOA_199309062021093101_TB000049.pdf', 'TB000049', 2, 'LOA', 'pdf', 2, '', NULL, NULL, '', '2022-09-01 13:38:12'),
('LOA_199404142018083201_TB000004.pdf', 'TB000004', 2, 'LOA', 'pdf', 0, '', NULL, NULL, '', '2022-03-29 08:54:42'),
('LOA_199404232020073201_TB000040.pdf', 'TB000040', 2, 'LOA', 'pdf', 2, '', NULL, NULL, '', '2022-06-10 14:32:41'),
('LOA_199502232020125101_TB000002.pdf', 'TB000002', 2, 'LOA', 'pdf', 2, '', '123123', NULL, '', '2021-12-24 02:23:45'),
('PASPOR_198204252005012002_TB000023.pdf', 'TB000023', 13, 'PASPOR', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-25 09:51:33'),
('PASPOR_198304232010122007_TB000033.pdf', 'TB000033', 13, 'PASPOR', 'pdf', 2, '', '', '0000-00-00', '', '2022-03-24 05:26:01'),
('PASPOR_198407182015041001_TB000003.pdf', 'TB000003', 13, 'PASPOR', 'pdf', 0, '', '', '0000-00-00', '', '2022-01-28 01:24:49'),
('PASPOR_198409012015041002_TB000015.pdf', 'TB000015', 13, 'PASPOR', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-09 03:34:43'),
('PASPOR_198505182008122002_TB000036.pdf', 'TB000036', 13, 'PASPOR', 'pdf', 2, '', '', '0000-00-00', '', '2022-04-29 09:39:24'),
('PASPOR_198505252016113101_TB000021.pdf', 'TB000021', 13, 'PASPOR', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-12 02:53:37'),
('PASPOR_198509222014041001_TB000006.pdf', 'TB000006', 13, 'PASPOR', 'pdf', 2, '', '', '0000-00-00', '', '2022-01-26 04:38:41'),
('PASPOR_198609112014041001_TB000018.pdf', 'TB000018', 13, 'PASPOR', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-09 06:08:24'),
('PASPOR_198703292016113101_TB000028.pdf', 'TB000028', 13, 'PASPOR', 'pdf', 2, '', '', '0000-00-00', '', '2022-03-16 07:01:14'),
('PASPOR_198707172015042002_TB000017.pdf', 'TB000017', 13, 'PASPOR', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-10 01:12:01'),
('PASPOR_198710232015042004_TB000035.pdf', 'TB000035', 13, 'PASPOR', 'pdf', 2, '', '', '0000-00-00', '', '2022-09-26 05:45:43'),
('PASPOR_198801092016113201_TB000009.pdf', 'TB000009', 13, 'PASPOR', 'pdf', 0, '', '', '0000-00-00', '', '2022-03-30 07:03:20'),
('PASPOR_198806272016113101_TB000013.pdf', 'TB000013', 13, 'PASPOR', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-09 03:20:59'),
('PASPOR_198808302018083201_TB000038.pdf', 'TB000038', 13, 'PASPOR', 'pdf', 2, '', '', '0000-00-00', '', '2022-05-11 15:38:45'),
('PASPOR_198812172018083201_TB000008.pdf', 'TB000008', 13, 'PASPOR', 'pdf', 2, '', '', '0000-00-00', '', '2022-01-31 09:48:43'),
('PASPOR_198905232015043101_TB000045.pdf', 'TB000045', 13, 'PASPOR', 'pdf', 2, '', '', '0000-00-00', '', '2022-10-13 05:51:49'),
('PASPOR_198909172014041001_TB000011.pdf', 'TB000011', 13, 'PASPOR', 'pdf', 0, '', '', '0000-00-00', '', '2022-02-09 04:34:37'),
('PASPOR_198911032021093101_TB000050.pdf', 'TB000050', 13, 'PASPOR', 'pdf', 2, '', '', '0000-00-00', '', '2022-08-31 04:32:16'),
('PASPOR_199005152014042001_TB000029.pdf', 'TB000029', 13, 'PASPOR', 'pdf', 2, '', '', '0000-00-00', '', '2022-03-08 05:13:39'),
('PASPOR_199006092014093101_TB000048.pdf', 'TB000048', 13, 'PASPOR', 'pdf', 0, '', '', '0000-00-00', '', '2022-10-10 07:39:16'),
('PASPOR_199007092015041002_TB000020.pdf', 'TB000020', 13, 'PASPOR', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-10 05:47:09'),
('PASPOR_199010152015041001_TB000037.pdf', 'TB000037', 13, 'PASPOR', 'pdf', 2, '', '', '0000-00-00', '', '2022-05-11 08:22:06'),
('PASPOR_199012102018083101_TB000044.pdf', 'TB000044', 13, 'PASPOR', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-07 05:34:12'),
('PASPOR_199102092014041001_TB000026.pdf', 'TB000026', 13, 'PASPOR', 'pdf', 2, '', '', '0000-00-00', '', '2022-05-30 06:10:49'),
('PASPOR_199107262016113201_TB000030.pdf', 'TB000030', 13, 'PASPOR', 'pdf', 2, '', '', '0000-00-00', '', '2022-03-10 01:16:16'),
('PASPOR_199110232021093101_TB000051.jpg', 'TB000051', 13, 'PASPOR', 'jpg', 2, '', '', '0000-00-00', '', '2022-08-31 04:37:24'),
('PASPOR_199202112020063101_TB000001.pdf', 'TB000001', 13, 'PASPOR', 'pdf', 0, '', '', '0000-00-00', '', '2021-12-23 03:24:43'),
('PASPOR_199206012018083201_TB000012.pdf', 'TB000012', 13, 'PASPOR', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-09 03:28:53'),
('PASPOR_199207222022103101_TB000056.jpg', 'TB000056', 13, 'PASPOR', 'jpg', 2, '', '', '0000-00-00', '', '2022-12-05 08:25:01'),
('PASPOR_199212242022013101_TB000024.pdf', 'TB000024', 13, 'PASPOR', 'pdf', 0, '', '', '0000-00-00', '', '2022-04-07 05:05:16'),
('PASPOR_199301282019031015_TB000027.pdf', 'TB000027', 13, 'PASPOR', 'pdf', 2, '', '', '0000-00-00', '', '2022-03-01 23:57:53'),
('PASPOR_199302192022103101_TB000055.pdf', 'TB000055', 13, 'PASPOR', 'pdf', 2, '', '', '0000-00-00', '', '2022-12-06 05:39:56'),
('PASPOR_199309062021093101_TB000049.pdf', 'TB000049', 13, 'PASPOR', 'pdf', 2, '', '', '0000-00-00', '', '2022-09-01 13:38:43'),
('PASPOR_199404142018083201_TB000004.pdf', 'TB000004', 13, 'PASPOR', 'pdf', 0, '', '', '0000-00-00', '', '2022-03-29 08:54:57'),
('PASPOR_199404232020073201_TB000040.pdf', 'TB000040', 13, 'PASPOR', 'pdf', 2, '', '', '0000-00-00', '', '2022-05-25 04:19:13'),
('Perjanjian Tugas Belajar_198801092016113201_TB000009.pdf', 'TB000009', 14, 'Perjanjian Tugas Belajar', 'pdf', 0, '', '5521/UN3/KP/2021', '2021-12-21', NULL, '2022-03-30 07:05:09'),
('Perjanjian Tugas Belajar_198909172014041001_TB000011.pdf', 'TB000011', 14, 'Perjanjian Tugas Belajar', 'pdf', 0, '', '123', '2022-02-07', NULL, '2022-02-09 04:39:58'),
('Scan CV_198204252005012002_TB000023.pdf', 'TB000023', 12, 'Scan CV', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-25 09:51:15'),
('Scan CV_198304232010122007_TB000033.pdf', 'TB000033', 12, 'Scan CV', 'pdf', 2, '', '', '0000-00-00', '', '2022-03-24 05:24:42'),
('Scan CV_198407182015041001_TB000003.pdf', 'TB000003', 12, 'Scan CV', 'pdf', 0, '', '', '0000-00-00', '', '2022-01-28 01:24:50'),
('Scan CV_198409012015041002_TB000015.pdf', 'TB000015', 12, 'Scan CV', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-09 03:34:25'),
('Scan CV_198505182008122002_TB000036.pdf', 'TB000036', 12, 'Scan CV', 'pdf', 2, '', '', '0000-00-00', '', '2022-04-29 09:38:53'),
('Scan CV_198505252016113101_TB000021.docx', 'TB000021', 12, 'Scan CV', 'docx', 2, '', '', '0000-00-00', '', '2022-02-12 02:43:41'),
('Scan CV_198509222014041001_TB000006.pdf', 'TB000006', 12, 'Scan CV', 'pdf', 2, '', '', '0000-00-00', '', '2022-01-26 04:38:24'),
('Scan CV_198609112014041001_TB000018.pdf', 'TB000018', 12, 'Scan CV', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-09 05:32:36'),
('Scan CV_198703292016113101_TB000028.pdf', 'TB000028', 12, 'Scan CV', 'pdf', 2, '', '', '0000-00-00', '', '2022-03-16 07:00:55'),
('Scan CV_198707172015042002_TB000017.pdf', 'TB000017', 12, 'Scan CV', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-10 01:06:05'),
('Scan CV_198710232015042004_TB000035.pdf', 'TB000035', 12, 'Scan CV', 'pdf', 2, '', '', '0000-00-00', '', '2022-09-26 05:52:29'),
('Scan CV_198801092016113201_TB000009.pdf', 'TB000009', 12, 'Scan CV', 'pdf', 0, '', '', '0000-00-00', '', '2022-03-30 07:03:21'),
('Scan CV_198806272016113101_TB000013.pdf', 'TB000013', 12, 'Scan CV', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-09 03:20:29'),
('Scan CV_198808302018083201_TB000038.docx', 'TB000038', 12, 'Scan CV', 'docx', 2, '', '', '0000-00-00', '', '2022-05-11 15:34:20'),
('Scan CV_198812172018083201_TB000008.pdf', 'TB000008', 12, 'Scan CV', 'pdf', 2, '', '', '0000-00-00', '', '2022-01-31 09:50:30'),
('Scan CV_198905232015043101_TB000045.pdf', 'TB000045', 12, 'Scan CV', 'pdf', 2, '', '', '0000-00-00', '', '2022-07-16 16:58:12'),
('Scan CV_198909172014041001_TB000011.pdf', 'TB000011', 12, 'Scan CV', 'pdf', 0, '', '', '0000-00-00', '', '2022-02-09 04:34:41'),
('Scan CV_198911032021093101_TB000050.pdf', 'TB000050', 12, 'Scan CV', 'pdf', 2, '', '', '0000-00-00', '', '2022-08-31 04:31:56'),
('Scan CV_199006092014093101_TB000048.pdf', 'TB000048', 12, 'Scan CV', 'pdf', 0, '', '', '0000-00-00', '', '2022-10-10 07:39:27'),
('Scan CV_199007092015041002_TB000020.pdf', 'TB000020', 12, 'Scan CV', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-10 05:46:47'),
('Scan CV_199010152015041001_TB000037.pdf', 'TB000037', 12, 'Scan CV', 'pdf', 2, '', '', '0000-00-00', '', '2022-05-11 08:21:56'),
('Scan CV_199012102018083101_TB000044.pdf', 'TB000044', 12, 'Scan CV', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-07 05:34:00'),
('Scan CV_199102092014041001_TB000026.pdf', 'TB000026', 12, 'Scan CV', 'pdf', 2, '', '', '0000-00-00', '', '2022-05-30 06:10:07'),
('Scan CV_199107262016113201_TB000030.pdf', 'TB000030', 12, 'Scan CV', 'pdf', 2, '', '', '0000-00-00', '', '2022-03-10 01:18:03'),
('Scan CV_199110232021093101_TB000051.pdf', 'TB000051', 12, 'Scan CV', 'pdf', 2, '', '', '0000-00-00', '', '2022-08-31 04:36:53'),
('Scan CV_199202112020063101_TB000001.pdf', 'TB000001', 12, 'Scan CV', 'pdf', 0, '', '', '0000-00-00', '', '2021-12-23 03:24:45'),
('Scan CV_199206012018083201_TB000012.pdf', 'TB000012', 12, 'Scan CV', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-09 03:28:27'),
('Scan CV_199207222022103101_TB000056.pdf', 'TB000056', 12, 'Scan CV', 'pdf', 2, '', '', '0000-00-00', '', '2022-12-05 08:26:04'),
('Scan CV_199212242022013101_TB000024.pdf', 'TB000024', 12, 'Scan CV', 'pdf', 0, '', '', '0000-00-00', '', '2022-04-07 05:05:24'),
('Scan CV_199301282019031015_TB000027.pdf', 'TB000027', 12, 'Scan CV', 'pdf', 2, '', '', '0000-00-00', '', '2022-03-02 00:03:08'),
('Scan CV_199302192022103101_TB000055.pdf', 'TB000055', 12, 'Scan CV', 'pdf', 2, '', '', '0000-00-00', '', '2022-12-06 05:39:16'),
('Scan CV_199309062021093101_TB000049.pdf', 'TB000049', 12, 'Scan CV', 'pdf', 2, '', '', '0000-00-00', '', '2022-09-01 13:38:37'),
('Scan CV_199404142018083201_TB000004.pdf', 'TB000004', 12, 'Scan CV', 'pdf', 0, '', '', '0000-00-00', '', '2022-03-29 08:55:15'),
('Scan CV_199404232020073201_TB000040.pdf', 'TB000040', 12, 'Scan CV', 'pdf', 2, '', '', '0000-00-00', '', '2022-05-25 04:21:11'),
('Scan CV__TB000029.pdf', 'TB000029', 12, 'Scan CV', 'pdf', 2, '', '', '0000-00-00', '', '2022-03-09 07:25:31'),
('Scan KTP_198204252005012002_TB000023.pdf', 'TB000023', 11, 'Scan KTP', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-25 09:43:38'),
('Scan KTP_198210152005011001_TB000039.jpg', 'TB000039', 11, 'Scan KTP', 'jpg', 2, '', '', '0000-00-00', '', '2022-06-21 01:14:25'),
('Scan KTP_198304232010122007_TB000033.jpg', 'TB000033', 11, 'Scan KTP', 'jpg', 2, '', '', '0000-00-00', '', '2022-03-24 05:22:57'),
('Scan KTP_198407182015041001_TB000003.pdf', 'TB000003', 11, 'Scan KTP', 'pdf', 0, '', '', '0000-00-00', '', '2022-01-28 01:24:52'),
('Scan KTP_198409012015041002_TB000015.jpeg', 'TB000015', 11, 'Scan KTP', 'jpeg', 2, '', '', '0000-00-00', '', '2022-02-09 03:34:18'),
('Scan KTP_198505182008122002_TB000036.pdf', 'TB000036', 11, 'Scan KTP', 'pdf', 2, '', '', '0000-00-00', '', '2022-04-29 09:38:44'),
('Scan KTP_198505252016113101_TB000021.jpg', 'TB000021', 11, 'Scan KTP', 'jpg', 2, '', '', '0000-00-00', '', '2022-02-12 02:34:49'),
('Scan KTP_198509222014041001_TB000006.pdf', 'TB000006', 11, 'Scan KTP', 'pdf', 2, '', '', '0000-00-00', '', '2022-01-26 04:37:58'),
('Scan KTP_198609112014041001_TB000018.pdf', 'TB000018', 11, 'Scan KTP', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-09 05:31:55'),
('Scan KTP_198703292016113101_TB000028.pdf', 'TB000028', 11, 'Scan KTP', 'pdf', 2, '', '', '0000-00-00', '', '2022-03-16 07:00:02'),
('Scan KTP_198707172015042002_TB000017.pdf', 'TB000017', 11, 'Scan KTP', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-10 01:07:18'),
('Scan KTP_198710232015042004_TB000035.jpg', 'TB000035', 11, 'Scan KTP', 'jpg', 2, '', '', '0000-00-00', '', '2022-09-26 05:47:58'),
('Scan KTP_198712022015041002_TB000010.pdf', 'TB000010', 11, 'Scan KTP', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-09 03:42:03'),
('Scan KTP_198801092016113201_TB000009.pdf', 'TB000009', 11, 'Scan KTP', 'pdf', 0, '', '', '0000-00-00', '', '2022-03-30 07:03:23'),
('Scan KTP_198808302018083201_TB000038.jpeg', 'TB000038', 11, 'Scan KTP', 'jpeg', 2, '', '', '0000-00-00', '', '2022-05-11 15:33:21'),
('Scan KTP_198812172018083201_TB000008.pdf', 'TB000008', 11, 'Scan KTP', 'pdf', 2, '', '', '0000-00-00', '', '2022-01-31 09:47:38'),
('Scan KTP_198905232015043101_TB000045.pdf', 'TB000045', 11, 'Scan KTP', 'pdf', 2, '', '', '0000-00-00', '', '2022-07-15 14:16:48'),
('Scan KTP_198909172014041001_TB000011.pdf', 'TB000011', 11, 'Scan KTP', 'pdf', 0, '', '', '0000-00-00', '', '2022-02-09 04:34:45'),
('Scan KTP_198911032021093101_TB000050.pdf', 'TB000050', 11, 'Scan KTP', 'pdf', 2, '', '', '0000-00-00', '', '2022-08-31 04:31:48'),
('Scan KTP_199005152014042001_TB000029.jpg', 'TB000029', 11, 'Scan KTP', 'jpg', 2, '', '', '0000-00-00', '', '2022-03-08 05:41:20'),
('Scan KTP_199006092014093101_TB000048.pdf', 'TB000048', 11, 'Scan KTP', 'pdf', 0, '', '', '0000-00-00', '', '2022-10-10 07:39:44'),
('Scan KTP_199007092015041002_TB000020.pdf', 'TB000020', 11, 'Scan KTP', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-10 05:45:47'),
('Scan KTP_199010152015041001_TB000037.pdf', 'TB000037', 11, 'Scan KTP', 'pdf', 2, '', '', '0000-00-00', '', '2022-05-11 08:21:46'),
('Scan KTP_199012102018083101_TB000044.jpeg', 'TB000044', 11, 'Scan KTP', 'jpeg', 2, '', '', '0000-00-00', '', '2022-06-07 05:35:01'),
('Scan KTP_199102092014041001_TB000026.pdf', 'TB000026', 11, 'Scan KTP', 'pdf', 2, '', '', '0000-00-00', '', '2022-05-30 06:09:58'),
('Scan KTP_199107262016113201_TB000030.jpg', 'TB000030', 11, 'Scan KTP', 'jpg', 2, '', '', '0000-00-00', '', '2022-03-10 01:15:51'),
('Scan KTP_199110232021093101_TB000051.jpg', 'TB000051', 11, 'Scan KTP', 'jpg', 2, '', '', '0000-00-00', '', '2022-08-31 04:36:23'),
('Scan KTP_199202112020063101_TB000001.pdf', 'TB000001', 11, 'Scan KTP', 'pdf', 0, '', '', '0000-00-00', '', '2021-12-23 03:24:46'),
('Scan KTP_199206012018083201_TB000012.pdf', 'TB000012', 11, 'Scan KTP', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-09 03:27:56'),
('Scan KTP_199207222022103101_TB000056.jpg', 'TB000056', 11, 'Scan KTP', 'jpg', 2, '', '', '0000-00-00', '', '2022-12-05 08:21:54'),
('Scan KTP_199212242022013101_TB000024.pdf', 'TB000024', 11, 'Scan KTP', 'pdf', 0, '', '', '0000-00-00', '', '2022-04-07 05:05:31'),
('Scan KTP_199301282019031015_TB000027.pdf', 'TB000027', 11, 'Scan KTP', 'pdf', 2, '', '', '0000-00-00', '', '2022-03-01 23:47:07'),
('Scan KTP_199302192022103101_TB000055.pdf', 'TB000055', 11, 'Scan KTP', 'pdf', 2, '', '', '0000-00-00', '', '2022-12-06 05:39:04'),
('Scan KTP_199309062021093101_TB000049.pdf', 'TB000049', 11, 'Scan KTP', 'pdf', 2, '', '', '0000-00-00', '', '2022-09-01 13:38:33'),
('Scan KTP_199404142018083201_TB000004.pdf', 'TB000004', 11, 'Scan KTP', 'pdf', 0, '', '', '0000-00-00', '', '2022-03-29 08:55:34'),
('Scan KTP_199404232020073201_TB000040.pdf', 'TB000040', 11, 'Scan KTP', 'pdf', 2, '', '', '0000-00-00', '', '2022-05-25 04:19:57'),
('SETNEG_198909172014041001_TB000011.pdf', 'TB000011', 21, 'SETNEG', 'pdf', 0, '', '123', '2022-02-08', NULL, '2022-02-09 04:41:33'),
('SK CPNS_198204252005012002_TB000023.pdf', 'TB000023', 18, 'SK CPNS', 'pdf', 2, '', '5197/A2/KP/2005', '2005-03-03', 'Mendiknas', '2022-02-25 10:23:46'),
('SK CPNS_198304232010122007_TB000033.pdf', 'TB000033', 18, 'SK CPNS', 'pdf', 2, '', '16712/A4/KP/2011', '2011-03-21', 'Menteri Pendidikan Nasional', '2022-03-24 05:33:16'),
('SK CPNS_198405052015042001_TB000019.pdf', 'TB000019', 18, 'SK CPNS', 'pdf', 2, '', '52375/A4/KP/2015', '2015-03-31', 'Biro Kepegawaian', '2022-02-10 02:41:52'),
('SK CPNS_198407182015041001_TB000003.pdf', 'TB000003', 18, 'SK CPNS', 'pdf', 0, '', '53044/A4/KP/2015', '2015-03-31', 'KEPALA BAGIAN PERENCANAAN DAN PENGADAAN BIRO KEPEGAWAIAN', '2022-01-28 01:24:54'),
('SK CPNS_198409012015041002_TB000015.pdf', 'TB000015', 18, 'SK CPNS', 'pdf', 2, '', '53338/A4/KP/2015', '2015-03-31', 'Kabag Perencanaan dan Pengadaan Biro Kepegawaian', '2022-02-09 03:38:49'),
('SK CPNS_198509222014041001_TB000006.pdf', 'TB000006', 18, 'SK CPNS', 'pdf', 2, '', '80989/A4/KP/2014', '2014-04-22', 'Kepala Bagian Mutasi Dosen', '2022-02-09 04:04:39'),
('SK CPNS_198609112014041001_TB000018.pdf', 'TB000018', 18, 'SK CPNS', 'pdf', 2, '', '80436/A4/KP/2014', '2014-04-22', 'Kepala Bagian Mutasi Dosen Biro Kepegawaian', '2022-02-09 07:01:16'),
('SK CPNS_198703292016113101_TB000028.pdf', 'TB000028', 18, 'SK CPNS', 'pdf', 2, '', '1985/UN3/2016', '2016-11-01', 'Rektor Universitas Airlangga', '2022-04-06 09:22:30'),
('SK CPNS_198712022015041002_TB000010.pdf', 'TB000010', 18, 'SK CPNS', 'pdf', 2, '', '50873/A4/KP/2015', '2015-03-31', 'Menteri Pendidikan dan Kebudayaan', '2022-02-09 03:46:02'),
('SK CPNS_198801092016113201_TB000009.pdf', 'TB000009', 18, 'SK CPNS', 'pdf', 0, '', '1990/UN3/2016', '2016-10-27', 'Rektor', '2022-03-30 07:03:24'),
('SK CPNS_198909172014041001_TB000011.pdf', 'TB000011', 18, 'SK CPNS', 'pdf', 0, '', '80987/A4/KP/2014', '2014-04-22', 'Kepala Bagian Mutasi Dosen', '2022-02-09 04:34:49'),
('SK CPNS_199006092014093101_TB000048.pdf', 'TB000048', 18, 'SK CPNS', 'pdf', 0, '', '2045/UN3/2014', '2014-08-29', 'Wakil Rektor II', '2022-10-10 07:40:38'),
('SK CPNS_199007092015041002_TB000020.pdf', 'TB000020', 18, 'SK CPNS', 'pdf', 2, '', '53333/A4/KP/2015', '2015-03-31', 'KEPALA BAGIAN PERENCANAAN DAN PENGADAAN BIRO KEPEGAWAIAN', '2022-02-10 06:08:40'),
('SK CPNS_199010152015041001_TB000037.PDF', 'TB000037', 18, 'SK CPNS', 'PDF', 2, '', '1295/UN3.1.6/KP/2022', '2015-03-31', 'Kepala Bagian Perencanaan dan Pengadaan Biro Kepegawaian', '2022-05-18 09:04:33'),
('SK CPNS_199102092014041001_TB000026.pdf', 'TB000026', 18, 'SK CPNS', 'pdf', 2, '', '94904/A4/KP/2014', '2014-04-22', 'Kepala Bagian Pengembangan, Disiplin dan Pensiun', '2022-06-26 07:00:44'),
('SK CPNS_199202112020063101_TB000001.pdf', 'TB000001', 18, 'SK CPNS', 'pdf', 0, '', '1234213', '2021-12-23', 'Biro SDM', '2021-12-23 03:24:48'),
('SK CPNS_199206012018083201_TB000012.pdf', 'TB000012', 18, 'SK CPNS', 'pdf', 2, '', '1265/UN3/2018', '2018-03-07', 'Wakil Rektor II', '2022-02-09 03:38:16'),
('SK CPNS_199212242022013101_TB000024.pdf', 'TB000024', 18, 'SK CPNS', 'pdf', 0, '', '33/UN3/2022', '2022-01-03', 'Wakil Rektor Bidang Sumberdaya', '2022-04-07 05:05:59'),
('SK CPNS_199301282019031015_TB000027.pdf', 'TB000027', 18, 'SK CPNS', 'pdf', 2, '', '5132/M/KP/2019', '2019-02-28', 'Kepala Bagian Perencaan dan pengembangan Kemenristekdikti', '2022-03-01 23:52:03'),
('SK CPNS_199404142018083201_TB000004.pdf', 'TB000004', 18, 'SK CPNS', 'pdf', 0, '', '1215/UN3/2018', '2018-07-30', 'WAKIL REKTOR II', '2022-03-29 08:55:49'),
('SK Kenaikan Jabatan Terakhir_198204252005012002_TB000023.pdf', 'TB000023', 15, 'SK Kenaikan Jabatan Terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-25 10:23:46'),
('SK Kenaikan Jabatan Terakhir_198304232010122007_TB000033.pdf', 'TB000033', 15, 'SK Kenaikan Jabatan Terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-03-24 05:30:51'),
('SK Kenaikan Jabatan Terakhir_198405052015042001_TB000019.pdf', 'TB000019', 15, 'SK Kenaikan Jabatan Terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-10 02:36:11'),
('SK Kenaikan Jabatan Terakhir_198407182015041001_TB000003.pdf', 'TB000003', 15, 'SK Kenaikan Jabatan Terakhir', 'pdf', 0, '', '', '0000-00-00', '', '2022-01-28 01:24:56'),
('SK Kenaikan Jabatan Terakhir_198409012015041002_TB000015.pdf', 'TB000015', 15, 'SK Kenaikan Jabatan Terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-09 03:36:37'),
('SK Kenaikan Jabatan Terakhir_198509222014041001_TB000006.pdf', 'TB000006', 15, 'SK Kenaikan Jabatan Terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-09 04:04:39'),
('SK Kenaikan Jabatan Terakhir_198609112014041001_TB000018.pdf', 'TB000018', 15, 'SK Kenaikan Jabatan Terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-09 07:01:16'),
('SK Kenaikan Jabatan Terakhir_198703292016113101_TB000028.pdf', 'TB000028', 15, 'SK Kenaikan Jabatan Terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-04-06 09:22:30'),
('SK Kenaikan Jabatan Terakhir_198712022015041002_TB000010.pdf', 'TB000010', 15, 'SK Kenaikan Jabatan Terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-09 03:43:46'),
('SK Kenaikan Jabatan Terakhir_198801092016113201_TB000009.pdf', 'TB000009', 15, 'SK Kenaikan Jabatan Terakhir', 'pdf', 0, '', '', '0000-00-00', '', '2022-03-30 07:03:25'),
('SK Kenaikan Jabatan Terakhir_198909172014041001_TB000011.pdf', 'TB000011', 15, 'SK Kenaikan Jabatan Terakhir', 'pdf', 0, '', '', '0000-00-00', '', '2022-02-09 04:34:55'),
('SK Kenaikan Jabatan Terakhir_199006092014093101_TB000048.pdf', 'TB000048', 15, 'SK Kenaikan Jabatan Terakhir', 'pdf', 0, '', '', '0000-00-00', '', '2022-10-10 07:45:05'),
('SK Kenaikan Jabatan Terakhir_199007092015041002_TB000020.pdf', 'TB000020', 15, 'SK Kenaikan Jabatan Terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-10 06:08:40'),
('SK Kenaikan Jabatan Terakhir_199010152015041001_TB000037.pdf', 'TB000037', 15, 'SK Kenaikan Jabatan Terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-05-18 09:04:33'),
('SK Kenaikan Jabatan Terakhir_199102092014041001_TB000026.pdf', 'TB000026', 15, 'SK Kenaikan Jabatan Terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-26 07:00:44'),
('SK Kenaikan Jabatan Terakhir_199202112020063101_TB000001.pdf', 'TB000001', 15, 'SK Kenaikan Jabatan Terakhir', 'pdf', 0, '', '', '0000-00-00', '', '2021-12-23 03:24:50'),
('SK Kenaikan Jabatan Terakhir_199206012018083201_TB000012.pdf', 'TB000012', 15, 'SK Kenaikan Jabatan Terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-09 03:44:27'),
('SK Kenaikan Jabatan Terakhir_199212242022013101_TB000024.pdf', 'TB000024', 15, 'SK Kenaikan Jabatan Terakhir', 'pdf', 0, '', '', '0000-00-00', '', '2022-04-07 05:06:10'),
('SK Kenaikan Jabatan Terakhir_199301282019031015_TB000027.pdf', 'TB000027', 15, 'SK Kenaikan Jabatan Terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-03-01 23:49:06'),
('SK Kenaikan Jabatan Terakhir_199404142018083201_TB000004.pdf', 'TB000004', 15, 'SK Kenaikan Jabatan Terakhir', 'pdf', 0, '', '', '0000-00-00', '', '2022-03-29 08:56:08'),
('SK Kenaikan Pangkat Terakhir_198204252005012002_TB000023.pdf', 'TB000023', 16, 'SK Kenaikan Pangkat Terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-25 10:23:46'),
('SK Kenaikan Pangkat Terakhir_198304232010122007_TB000033.PDF', 'TB000033', 16, 'SK Kenaikan Pangkat Terakhir', 'PDF', 2, '', '', '0000-00-00', '', '2022-03-24 05:31:11'),
('SK Kenaikan Pangkat Terakhir_198405052015042001_TB000019.pdf', 'TB000019', 16, 'SK Kenaikan Pangkat Terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-10 02:37:31'),
('SK Kenaikan Pangkat Terakhir_198407182015041001_TB000003.pdf', 'TB000003', 16, 'SK Kenaikan Pangkat Terakhir', 'pdf', 0, '', '', '0000-00-00', '', '2022-01-28 01:24:58'),
('SK Kenaikan Pangkat Terakhir_198409012015041002_TB000015.pdf', 'TB000015', 16, 'SK Kenaikan Pangkat Terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-09 03:36:48'),
('SK Kenaikan Pangkat Terakhir_198509222014041001_TB000006.pdf', 'TB000006', 16, 'SK Kenaikan Pangkat Terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-09 04:04:39'),
('SK Kenaikan Pangkat Terakhir_198609112014041001_TB000018.pdf', 'TB000018', 16, 'SK Kenaikan Pangkat Terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-09 07:01:16'),
('SK Kenaikan Pangkat Terakhir_198703292016113101_TB000028.pdf', 'TB000028', 16, 'SK Kenaikan Pangkat Terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-04-06 09:22:30'),
('SK Kenaikan Pangkat Terakhir_198712022015041002_TB000010.pdf', 'TB000010', 16, 'SK Kenaikan Pangkat Terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-09 03:44:00'),
('SK Kenaikan Pangkat Terakhir_198801092016113201_TB000009.pdf', 'TB000009', 16, 'SK Kenaikan Pangkat Terakhir', 'pdf', 0, '', '', '0000-00-00', '', '2022-03-30 07:03:27'),
('SK Kenaikan Pangkat Terakhir_198909172014041001_TB000011.pdf', 'TB000011', 16, 'SK Kenaikan Pangkat Terakhir', 'pdf', 0, '', '', '0000-00-00', '', '2022-02-09 04:35:11'),
('SK Kenaikan Pangkat Terakhir_199006092014093101_TB000048.pdf', 'TB000048', 16, 'SK Kenaikan Pangkat Terakhir', 'pdf', 0, '', '', '0000-00-00', '', '2022-10-10 07:45:31'),
('SK Kenaikan Pangkat Terakhir_199007092015041002_TB000020.pdf', 'TB000020', 16, 'SK Kenaikan Pangkat Terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-10 06:08:40'),
('SK Kenaikan Pangkat Terakhir_199010152015041001_TB000037.pdf', 'TB000037', 16, 'SK Kenaikan Pangkat Terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-05-18 09:04:33'),
('SK Kenaikan Pangkat Terakhir_199102092014041001_TB000026.pdf', 'TB000026', 16, 'SK Kenaikan Pangkat Terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-26 07:00:44'),
('SK Kenaikan Pangkat Terakhir_199202112020063101_TB000001.pdf', 'TB000001', 16, 'SK Kenaikan Pangkat Terakhir', 'pdf', 0, '', '', '0000-00-00', '', '2021-12-23 03:24:52'),
('SK Kenaikan Pangkat Terakhir_199206012018083201_TB000012.pdf', 'TB000012', 16, 'SK Kenaikan Pangkat Terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-09 03:29:34'),
('SK Kenaikan Pangkat Terakhir_199212242022013101_TB000024.pdf', 'TB000024', 16, 'SK Kenaikan Pangkat Terakhir', 'pdf', 0, '', '', '0000-00-00', '', '2022-04-07 05:06:12'),
('SK Kenaikan Pangkat Terakhir_199301282019031015_TB000027.pdf', 'TB000027', 16, 'SK Kenaikan Pangkat Terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-03-01 23:49:19'),
('SK Kenaikan Pangkat Terakhir_199404142018083201_TB000004.pdf', 'TB000004', 16, 'SK Kenaikan Pangkat Terakhir', 'pdf', 0, '', '', '0000-00-00', '', '2022-03-29 08:56:24'),
('SK Pembebasan Sementara_198909172014041001_TB000011.pdf', 'TB000011', 25, 'SK Pembebasan Sementara', 'pdf', 0, '', '123', '2022-02-22', NULL, '2022-02-09 04:46:24'),
('SK PNS_198204252005012002_TB000023.pdf', 'TB000023', 17, 'SK PNS', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-25 10:23:46'),
('SK PNS_198304232010122007_TB000033.pdf', 'TB000033', 17, 'SK PNS', 'pdf', 2, '', '', '0000-00-00', '', '2022-03-24 05:31:28'),
('SK PNS_198405052015042001_TB000019.pdf', 'TB000019', 17, 'SK PNS', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-10 02:38:01'),
('SK PNS_198407182015041001_TB000003.pdf', 'TB000003', 17, 'SK PNS', 'pdf', 0, '', '', '0000-00-00', '', '2022-01-28 01:25:01'),
('SK PNS_198409012015041002_TB000015.pdf', 'TB000015', 17, 'SK PNS', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-09 03:37:00'),
('SK PNS_198509222014041001_TB000006.pdf', 'TB000006', 17, 'SK PNS', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-09 04:04:39'),
('SK PNS_198609112014041001_TB000018.pdf', 'TB000018', 17, 'SK PNS', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-09 07:01:16'),
('SK PNS_198703292016113101_TB000028.pdf', 'TB000028', 17, 'SK PNS', 'pdf', 2, '', '', '0000-00-00', '', '2022-04-06 09:22:30'),
('SK PNS_198712022015041002_TB000010.pdf', 'TB000010', 17, 'SK PNS', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-09 03:44:10'),
('SK PNS_198801092016113201_TB000009.pdf', 'TB000009', 17, 'SK PNS', 'pdf', 0, '', '', '0000-00-00', '', '2022-03-30 07:03:29'),
('SK PNS_198909172014041001_TB000011.pdf', 'TB000011', 17, 'SK PNS', 'pdf', 0, '', '', '0000-00-00', '', '2022-02-09 04:35:17'),
('SK PNS_199006092014093101_TB000048.jpg', 'TB000048', 17, 'SK PNS', 'jpg', 0, '', '', '0000-00-00', '', '2022-10-10 07:46:01'),
('SK PNS_199007092015041002_TB000020.pdf', 'TB000020', 17, 'SK PNS', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-10 06:08:40'),
('SK PNS_199010152015041001_TB000037.pdf', 'TB000037', 17, 'SK PNS', 'pdf', 2, '', '', '0000-00-00', '', '2022-05-18 09:04:33'),
('SK PNS_199102092014041001_TB000026.pdf', 'TB000026', 17, 'SK PNS', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-26 07:00:44'),
('SK PNS_199202112020063101_TB000001.pdf', 'TB000001', 17, 'SK PNS', 'pdf', 0, '', '', '0000-00-00', '', '2021-12-23 03:24:54'),
('SK PNS_199206012018083201_TB000012.pdf', 'TB000012', 17, 'SK PNS', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-09 03:45:46'),
('SK PNS_199212242022013101_TB000024.pdf', 'TB000024', 17, 'SK PNS', 'pdf', 0, '', '', '0000-00-00', '', '2022-04-07 05:06:24'),
('SK PNS_199301282019031015_TB000027.pdf', 'TB000027', 17, 'SK PNS', 'pdf', 2, '', '', '0000-00-00', '', '2022-03-01 23:49:34'),
('SK PNS_199404142018083201_TB000004.pdf', 'TB000004', 17, 'SK PNS', 'pdf', 0, '', '', '0000-00-00', '', '2022-03-29 08:56:47'),
('SK Tugas Belajar_198909172014041001_TB000011.pdf', 'TB000011', 22, 'SK Tugas Belajar', 'pdf', 0, '', '123', '2022-02-08', NULL, '2022-02-09 04:45:41'),
('SKP 2 tahun Terakhir_198204252005012002_TB000023.pdf', 'TB000023', 6, 'SKP 2 tahun Terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-21 04:36:50'),
('SKP 2 tahun Terakhir_198304232010122007_TB000033.pdf', 'TB000033', 6, 'SKP 2 tahun Terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-03-24 05:21:43'),
('SKP 2 tahun Terakhir_198407182015041001_TB000003.pdf', 'TB000003', 6, 'SKP 2 tahun Terakhir', 'pdf', 0, '', '', '0000-00-00', '', '2022-01-28 01:25:02'),
('SKP 2 tahun Terakhir_198409012015041002_TB000015.pdf', 'TB000015', 6, 'SKP 2 tahun Terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-09 03:33:51'),
('SKP 2 tahun Terakhir_198505182008122002_TB000036.pdf', 'TB000036', 6, 'SKP 2 tahun Terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-05-19 07:06:59'),
('SKP 2 tahun Terakhir_198505252016113101_TB000021.pdf', 'TB000021', 6, 'SKP 2 tahun Terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-12 02:19:28'),
('SKP 2 tahun Terakhir_198509222014041001_TB000006.pdf', 'TB000006', 6, 'SKP 2 tahun Terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-01-26 04:37:16'),
('SKP 2 tahun Terakhir_198609112014041001_TB000018.pdf', 'TB000018', 6, 'SKP 2 tahun Terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-09 05:20:06'),
('SKP 2 tahun Terakhir_198703292016113101_TB000028.pdf', 'TB000028', 6, 'SKP 2 tahun Terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-03-18 07:57:08'),
('SKP 2 tahun Terakhir_198707172015042002_TB000017.pdf', 'TB000017', 6, 'SKP 2 tahun Terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-10 01:28:30'),
('SKP 2 tahun Terakhir_198712022015041002_TB000010.pdf', 'TB000010', 6, 'SKP 2 tahun Terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-09 03:41:44'),
('SKP 2 tahun Terakhir_198801092016113201_TB000009.pdf', 'TB000009', 6, 'SKP 2 tahun Terakhir', 'pdf', 0, '', '', '0000-00-00', '', '2022-03-30 07:03:31'),
('SKP 2 tahun Terakhir_198808302018083201_TB000038.pdf', 'TB000038', 6, 'SKP 2 tahun Terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-06 01:38:40'),
('SKP 2 tahun Terakhir_198812172018083201_TB000008.pdf', 'TB000008', 6, 'SKP 2 tahun Terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-01-31 09:46:30'),
('SKP 2 tahun Terakhir_198905232015043101_TB000045.pdf', 'TB000045', 6, 'SKP 2 tahun Terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-07-16 16:50:31'),
('SKP 2 tahun Terakhir_198909172014041001_TB000011.pdf', 'TB000011', 6, 'SKP 2 tahun Terakhir', 'pdf', 0, '', '', '0000-00-00', '', '2022-02-09 04:35:23'),
('SKP 2 tahun Terakhir_198911032021093101_TB000050.pdf', 'TB000050', 6, 'SKP 2 tahun Terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-09-01 03:54:58'),
('SKP 2 tahun Terakhir_199005152014042001_TB000029.pdf', 'TB000029', 6, 'SKP 2 tahun Terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-03-08 05:08:17'),
('SKP 2 tahun Terakhir_199006022016113201_TB000014.pdf', 'TB000014', 6, 'SKP 2 tahun Terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-09 03:59:56'),
('SKP 2 tahun Terakhir_199006092014093101_TB000048.pdf', 'TB000048', 6, 'SKP 2 tahun Terakhir', 'pdf', 0, '', '', '0000-00-00', '', '2022-10-10 07:47:33'),
('SKP 2 tahun Terakhir_199007092015041002_TB000020.pdf', 'TB000020', 6, 'SKP 2 tahun Terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-10 05:25:09'),
('SKP 2 tahun Terakhir_199010152015041001_TB000037.pdf', 'TB000037', 6, 'SKP 2 tahun Terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-05-11 08:31:07'),
('SKP 2 tahun Terakhir_199102092014041001_TB000026.pdf', 'TB000026', 6, 'SKP 2 tahun Terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-05-30 06:14:58'),
('SKP 2 tahun Terakhir_199202112020063101_TB000001.pdf', 'TB000001', 6, 'SKP 2 tahun Terakhir', 'pdf', 0, '', '', '0000-00-00', '', '2021-12-23 03:24:56'),
('SKP 2 tahun Terakhir_199206012018083201_TB000012.pdf', 'TB000012', 6, 'SKP 2 tahun Terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-09 03:44:08'),
('SKP 2 tahun Terakhir_199212242022013101_TB000024.pdf', 'TB000024', 6, 'SKP 2 tahun Terakhir', 'pdf', 0, '', '', '0000-00-00', '', '2022-04-07 05:06:35'),
('SKP 2 tahun Terakhir_199301282019031015_TB000027.pdf', 'TB000027', 6, 'SKP 2 tahun Terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-03-01 23:46:51'),
('SKP 2 tahun Terakhir_199309062021093101_TB000049.pdf', 'TB000049', 6, 'SKP 2 tahun Terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-09-01 13:38:24'),
('SKP 2 tahun Terakhir_199404142018083201_TB000004.pdf', 'TB000004', 6, 'SKP 2 tahun Terakhir', 'pdf', 0, '', '', '0000-00-00', '', '2022-03-29 08:57:11'),
('SKP 2 tahun Terakhir_199404232020073201_TB000040.pdf', 'TB000040', 6, 'SKP 2 tahun Terakhir', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-14 04:09:01'),
('Surat Jaminan Pembiayaan Studi_198204252005012002_TB000023.pdf', 'TB000023', 1, 'Surat Jaminan Pembiayaan Studi', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-21 04:26:34'),
('Surat Jaminan Pembiayaan Studi_198209122008011006_TB000016.pdf', 'TB000016', 1, 'Surat Jaminan Pembiayaan Studi', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-10 02:00:41'),
('Surat Jaminan Pembiayaan Studi_198304232010122007_TB000033.pdf', 'TB000033', 1, 'Surat Jaminan Pembiayaan Studi', 'pdf', 2, '', '', '0000-00-00', '', '2022-03-24 04:41:55'),
('Surat Jaminan Pembiayaan Studi_198305232008012009_TB000046.pdf', 'TB000046', 1, 'Surat Jaminan Pembiayaan Studi', 'pdf', 2, '', '', '0000-00-00', '', '2022-07-27 14:31:09'),
('Surat Jaminan Pembiayaan Studi_198405052015042001_TB000019.pdf', 'TB000019', 1, 'Surat Jaminan Pembiayaan Studi', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-10 02:34:49'),
('Surat Jaminan Pembiayaan Studi_198407182015041001_TB000003.pdf', 'TB000003', 1, 'Surat Jaminan Pembiayaan Studi', 'pdf', 0, '', '', '0000-00-00', '', '2022-01-28 01:25:04'),
('Surat Jaminan Pembiayaan Studi_198409012015041002_TB000015.pdf', 'TB000015', 1, 'Surat Jaminan Pembiayaan Studi', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-09 03:30:39'),
('Surat Jaminan Pembiayaan Studi_198505182008122002_TB000036.pdf', 'TB000036', 1, 'Surat Jaminan Pembiayaan Studi', 'pdf', 2, '', '', '0000-00-00', '', '2022-04-29 09:35:34'),
('Surat Jaminan Pembiayaan Studi_198505252016113101_TB000021.pdf', 'TB000021', 1, 'Surat Jaminan Pembiayaan Studi', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-12 02:09:43'),
('Surat Jaminan Pembiayaan Studi_198509222014041001_TB000006.pdf', 'TB000006', 1, 'Surat Jaminan Pembiayaan Studi', 'pdf', 2, '', '', '0000-00-00', '', '2022-01-26 04:33:23'),
('Surat Jaminan Pembiayaan Studi_198609112014041001_TB000018.pdf', 'TB000018', 1, 'Surat Jaminan Pembiayaan Studi', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-09 04:28:37'),
('Surat Jaminan Pembiayaan Studi_198703292016113101_TB000028.pdf', 'TB000028', 1, 'Surat Jaminan Pembiayaan Studi', 'pdf', 2, '', '', '0000-00-00', '', '2022-03-16 06:56:28'),
('Surat Jaminan Pembiayaan Studi_198707172015042002_TB000017.pdf', 'TB000017', 1, 'Surat Jaminan Pembiayaan Studi', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-10 00:55:53'),
('Surat Jaminan Pembiayaan Studi_198712022015041002_TB000010.pdf', 'TB000010', 1, 'Surat Jaminan Pembiayaan Studi', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-09 03:40:39'),
('Surat Jaminan Pembiayaan Studi_198801092016113201_TB000009.pdf', 'TB000009', 1, 'Surat Jaminan Pembiayaan Studi', 'pdf', 0, '', '', '0000-00-00', '', '2022-03-30 07:03:32'),
('Surat Jaminan Pembiayaan Studi_198806272016113101_TB000013.pdf', 'TB000013', 1, 'Surat Jaminan Pembiayaan Studi', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-09 03:18:47'),
('Surat Jaminan Pembiayaan Studi_198808302018083201_TB000038.pdf', 'TB000038', 1, 'Surat Jaminan Pembiayaan Studi', 'pdf', 2, '', '', '0000-00-00', '', '2022-05-11 15:43:19'),
('Surat Jaminan Pembiayaan Studi_198812172018083201_TB000008.pdf', 'TB000008', 1, 'Surat Jaminan Pembiayaan Studi', 'pdf', 2, '', '', '0000-00-00', '', '2022-01-31 09:44:06'),
('Surat Jaminan Pembiayaan Studi_198905232015043101_TB000045.jpg', 'TB000045', 1, 'Surat Jaminan Pembiayaan Studi', 'jpg', 2, '', '', '0000-00-00', '', '2022-10-13 04:42:14'),
('Surat Jaminan Pembiayaan Studi_198909172014041001_TB000011.pdf', 'TB000011', 1, 'Surat Jaminan Pembiayaan Studi', 'pdf', 0, '', '', '0000-00-00', '', '2022-02-09 04:35:27'),
('Surat Jaminan Pembiayaan Studi_198911032021093101_TB000050.pdf', 'TB000050', 1, 'Surat Jaminan Pembiayaan Studi', 'pdf', 2, '', '', '0000-00-00', '', '2022-08-31 04:27:06'),
('Surat Jaminan Pembiayaan Studi_199005152014042001_TB000029.pdf', 'TB000029', 1, 'Surat Jaminan Pembiayaan Studi', 'pdf', 2, '', '', '0000-00-00', '', '2022-03-08 05:01:56'),
('Surat Jaminan Pembiayaan Studi_199006022016113201_TB000014.pdf', 'TB000014', 1, 'Surat Jaminan Pembiayaan Studi', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-09 03:30:22');
INSERT INTO `upload_file_tubel` (`ID_UP_FILE_T`, `ID_TUBEL`, `ID_JENIS`, `NAMA_FILE_T`, `TIPE_FILE`, `STATUS_FILE_TUBEL`, `KETERANGAN_REVISI_TUBEL`, `NOMOR_SURAT`, `TGL_SURAT`, `JABATAN_PIMPINAN`, `TGL_UPDATE`) VALUES
('Surat Jaminan Pembiayaan Studi_199006092014093101_TB000048.pdf', 'TB000048', 1, 'Surat Jaminan Pembiayaan Studi', 'pdf', 0, '', '', '0000-00-00', '', '2022-10-10 07:48:02'),
('Surat Jaminan Pembiayaan Studi_199007092015041002_TB000020.pdf', 'TB000020', 1, 'Surat Jaminan Pembiayaan Studi', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-10 04:28:40'),
('Surat Jaminan Pembiayaan Studi_199010152015041001_TB000037.pdf', 'TB000037', 1, 'Surat Jaminan Pembiayaan Studi', 'pdf', 2, '', '', '0000-00-00', '', '2022-05-11 08:18:58'),
('Surat Jaminan Pembiayaan Studi_199102092014041001_TB000026.PDF', 'TB000026', 1, 'Surat Jaminan Pembiayaan Studi', 'PDF', 2, '', '', '0000-00-00', '', '2022-05-30 06:11:18'),
('Surat Jaminan Pembiayaan Studi_199107262016113201_TB000030.pdf', 'TB000030', 1, 'Surat Jaminan Pembiayaan Studi', 'pdf', 2, '', '', '0000-00-00', '', '2022-03-10 01:10:01'),
('Surat Jaminan Pembiayaan Studi_199110232021093101_TB000051.jpg', 'TB000051', 1, 'Surat Jaminan Pembiayaan Studi', 'jpg', 2, '', '', '0000-00-00', '', '2022-08-31 04:31:09'),
('Surat Jaminan Pembiayaan Studi_199202112020063101_TB000001.pdf', 'TB000001', 1, 'Surat Jaminan Pembiayaan Studi', 'pdf', 0, '', '', '0000-00-00', '', '2021-12-23 03:24:58'),
('Surat Jaminan Pembiayaan Studi_199206012018083201_TB000012.pdf', 'TB000012', 1, 'Surat Jaminan Pembiayaan Studi', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-09 03:14:15'),
('Surat Jaminan Pembiayaan Studi_199207222022103101_TB000056.jpg', 'TB000056', 1, 'Surat Jaminan Pembiayaan Studi', 'jpg', 2, '', '', '0000-00-00', '', '2022-12-05 08:11:57'),
('Surat Jaminan Pembiayaan Studi_199212242022013101_TB000024.pdf', 'TB000024', 1, 'Surat Jaminan Pembiayaan Studi', 'pdf', 0, '', '', '0000-00-00', '', '2022-04-07 05:06:44'),
('Surat Jaminan Pembiayaan Studi_199301282019031015_TB000027.pdf', 'TB000027', 1, 'Surat Jaminan Pembiayaan Studi', 'pdf', 2, '', '', '0000-00-00', '', '2022-03-01 23:55:18'),
('Surat Jaminan Pembiayaan Studi_199302192022103101_TB000055.pdf', 'TB000055', 1, 'Surat Jaminan Pembiayaan Studi', 'pdf', 2, '', '', '0000-00-00', '', '2022-12-06 05:34:25'),
('Surat Jaminan Pembiayaan Studi_199309062021093101_TB000049.pdf', 'TB000049', 1, 'Surat Jaminan Pembiayaan Studi', 'pdf', 2, '', '', '0000-00-00', '', '2022-09-01 13:37:08'),
('Surat Jaminan Pembiayaan Studi_199404142018083201_TB000004.pdf', 'TB000004', 1, 'Surat Jaminan Pembiayaan Studi', 'pdf', 0, '', '', '0000-00-00', '', '2022-03-29 08:57:39'),
('Surat Jaminan Pembiayaan Studi_199404232020073201_TB000040.pdf', 'TB000040', 1, 'Surat Jaminan Pembiayaan Studi', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-10 14:31:55'),
('Surat Jaminan Pembiayaan Studi_199502232020125101_TB000002.pdf', 'TB000002', 1, 'Surat Jaminan Pembiayaan Studi', 'pdf', 2, '', '', '0000-00-00', '', '2021-12-24 02:23:24'),
('Surat Jaminan Pembiayaan Studi__TB000053.jpg', 'TB000053', 1, 'Surat Jaminan Pembiayaan Studi', 'jpg', 2, '', '', '0000-00-00', '', '2022-11-12 03:06:43'),
('Surat Keterangan Linier_198204252005012002_TB000023.pdf', 'TB000023', 5, 'Surat Keterangan Linier', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-25 10:23:46'),
('Surat Keterangan Linier_198304232010122007_TB000033.pdf', 'TB000033', 5, 'Surat Keterangan Linier', 'pdf', 2, '', '', '0000-00-00', '', '2022-03-24 05:40:12'),
('Surat Keterangan Linier_198405052015042001_TB000019.pdf', 'TB000019', 5, 'Surat Keterangan Linier', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-10 03:07:38'),
('Surat Keterangan Linier_198407182015041001_TB000003.pdf', 'TB000003', 5, 'Surat Keterangan Linier', 'pdf', 0, '', '', '0000-00-00', '', '2022-01-28 01:25:06'),
('Surat Keterangan Linier_198409012015041002_TB000015.pdf', 'TB000015', 5, 'Surat Keterangan Linier', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-09 03:40:13'),
('Surat Keterangan Linier_198509222014041001_TB000006.pdf', 'TB000006', 5, 'Surat Keterangan Linier', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-09 04:04:39'),
('Surat Keterangan Linier_198609112014041001_TB000018.pdf', 'TB000018', 5, 'Surat Keterangan Linier', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-09 07:01:16'),
('Surat Keterangan Linier_198703292016113101_TB000028.pdf', 'TB000028', 5, 'Surat Keterangan Linier', 'pdf', 2, '', '', '0000-00-00', '', '2022-04-06 09:22:30'),
('Surat Keterangan Linier_198712022015041002_TB000010.pdf', 'TB000010', 5, 'Surat Keterangan Linier', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-09 03:47:27'),
('Surat Keterangan Linier_198801092016113201_TB000009.pdf', 'TB000009', 5, 'Surat Keterangan Linier', 'pdf', 0, '', '', '0000-00-00', '', '2022-03-30 07:03:34'),
('Surat Keterangan Linier_198909172014041001_TB000011.pdf', 'TB000011', 5, 'Surat Keterangan Linier', 'pdf', 0, '', '', '0000-00-00', '', '2022-02-09 04:35:32'),
('Surat Keterangan Linier_199006092014093101_TB000048.pdf', 'TB000048', 5, 'Surat Keterangan Linier', 'pdf', 0, '', '', '0000-00-00', '', '2022-10-10 07:55:27'),
('Surat Keterangan Linier_199007092015041002_TB000020.pdf', 'TB000020', 5, 'Surat Keterangan Linier', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-10 06:08:40'),
('Surat Keterangan Linier_199010152015041001_TB000037.pdf', 'TB000037', 5, 'Surat Keterangan Linier', 'pdf', 2, '', '', '0000-00-00', '', '2022-05-18 09:04:33'),
('Surat Keterangan Linier_199102092014041001_TB000026.pdf', 'TB000026', 5, 'Surat Keterangan Linier', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-26 07:00:44'),
('Surat Keterangan Linier_199202112020063101_TB000001.pdf', 'TB000001', 5, 'Surat Keterangan Linier', 'pdf', 0, '', '', '0000-00-00', '', '2021-12-23 03:25:00'),
('Surat Keterangan Linier_199206012018083201_TB000012.pdf', 'TB000012', 5, 'Surat Keterangan Linier', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-09 03:42:12'),
('Surat Keterangan Linier_199212242022013101_TB000024.pdf', 'TB000024', 5, 'Surat Keterangan Linier', 'pdf', 0, '', '', '0000-00-00', '', '2022-04-07 05:06:57'),
('Surat Keterangan Linier_199301282019031015_TB000027.pdf', 'TB000027', 5, 'Surat Keterangan Linier', 'pdf', 2, '', '', '0000-00-00', '', '2022-03-01 23:53:44'),
('Surat Keterangan Linier_199404142018083201_TB000004.pdf', 'TB000004', 5, 'Surat Keterangan Linier', 'pdf', 0, '', '', '0000-00-00', '', '2022-03-29 08:57:56'),
('Surat Keterangan Sehat_198204252005012002_TB000023.pdf', 'TB000023', 3, 'Surat Keterangan Sehat', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-21 04:28:59'),
('Surat Keterangan Sehat_198209122008011006_TB000016.pdf', 'TB000016', 3, 'Surat Keterangan Sehat', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-10 02:01:20'),
('Surat Keterangan Sehat_198304232010122007_TB000033.pdf', 'TB000033', 3, 'Surat Keterangan Sehat', 'pdf', 2, '', '', '0000-00-00', '', '2022-03-24 05:21:29'),
('Surat Keterangan Sehat_198305232008012009_TB000046.pdf', 'TB000046', 3, 'Surat Keterangan Sehat', 'pdf', 2, '', '', '0000-00-00', '', '2022-07-27 14:34:07'),
('Surat Keterangan Sehat_198405052015042001_TB000019.pdf', 'TB000019', 3, 'Surat Keterangan Sehat', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-10 02:35:08'),
('Surat Keterangan Sehat_198407182015041001_TB000003.pdf', 'TB000003', 3, 'Surat Keterangan Sehat', 'pdf', 0, '', '', '0000-00-00', '', '2022-01-28 01:25:08'),
('Surat Keterangan Sehat_198409012015041002_TB000015.pdf', 'TB000015', 3, 'Surat Keterangan Sehat', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-09 03:32:20'),
('Surat Keterangan Sehat_198505182008122002_TB000036.pdf', 'TB000036', 3, 'Surat Keterangan Sehat', 'pdf', 2, '', '', '0000-00-00', '', '2022-04-29 09:37:16'),
('Surat Keterangan Sehat_198505252016113101_TB000021.pdf', 'TB000021', 3, 'Surat Keterangan Sehat', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-12 02:35:44'),
('Surat Keterangan Sehat_198509222014041001_TB000006.pdf', 'TB000006', 3, 'Surat Keterangan Sehat', 'pdf', 2, '', '', '0000-00-00', '', '2022-01-26 04:36:25'),
('Surat Keterangan Sehat_198609112014041001_TB000018.pdf', 'TB000018', 3, 'Surat Keterangan Sehat', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-09 05:15:55'),
('Surat Keterangan Sehat_198703292016113101_TB000028.pdf', 'TB000028', 3, 'Surat Keterangan Sehat', 'pdf', 2, '', '', '0000-00-00', '', '2022-03-16 06:59:29'),
('Surat Keterangan Sehat_198707172015042002_TB000017.pdf', 'TB000017', 3, 'Surat Keterangan Sehat', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-10 00:57:12'),
('Surat Keterangan Sehat_198710232015042004_TB000035.pdf', 'TB000035', 3, 'Surat Keterangan Sehat', 'pdf', 2, '', '', '0000-00-00', '', '2022-09-26 04:44:26'),
('Surat Keterangan Sehat_198712022015041002_TB000010.pdf', 'TB000010', 3, 'Surat Keterangan Sehat', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-09 03:41:36'),
('Surat Keterangan Sehat_198801092016113201_TB000009.pdf', 'TB000009', 3, 'Surat Keterangan Sehat', 'pdf', 0, '', '', '0000-00-00', '', '2022-03-30 07:03:35'),
('Surat Keterangan Sehat_198806272016113101_TB000013.pdf', 'TB000013', 3, 'Surat Keterangan Sehat', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-09 03:19:16'),
('Surat Keterangan Sehat_198808302018083201_TB000038.pdf', 'TB000038', 3, 'Surat Keterangan Sehat', 'pdf', 2, '', '', '0000-00-00', '', '2022-05-11 15:31:27'),
('Surat Keterangan Sehat_198812172018083201_TB000008.pdf', 'TB000008', 3, 'Surat Keterangan Sehat', 'pdf', 2, '', '', '0000-00-00', '', '2022-01-31 09:46:02'),
('Surat Keterangan Sehat_198905232015043101_TB000045.pdf', 'TB000045', 3, 'Surat Keterangan Sehat', 'pdf', 2, '', '', '0000-00-00', '', '2022-09-02 06:14:54'),
('Surat Keterangan Sehat_198909172014041001_TB000011.PDF', 'TB000011', 3, 'Surat Keterangan Sehat', 'PDF', 0, '', '', '0000-00-00', '', '2022-02-09 04:35:40'),
('Surat Keterangan Sehat_198911032021093101_TB000050.pdf', 'TB000050', 3, 'Surat Keterangan Sehat', 'pdf', 2, '', '', '0000-00-00', '', '2022-09-01 03:45:23'),
('Surat Keterangan Sehat_199005152014042001_TB000029.pdf', 'TB000029', 3, 'Surat Keterangan Sehat', 'pdf', 2, '', '', '0000-00-00', '', '2022-03-08 05:16:05'),
('Surat Keterangan Sehat_199006022016113201_TB000014.pdf', 'TB000014', 3, 'Surat Keterangan Sehat', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-09 04:19:49'),
('Surat Keterangan Sehat_199006092014093101_TB000048.pdf', 'TB000048', 3, 'Surat Keterangan Sehat', 'pdf', 0, '', '', '0000-00-00', '', '2022-10-10 07:56:14'),
('Surat Keterangan Sehat_199007092015041002_TB000020.pdf', 'TB000020', 3, 'Surat Keterangan Sehat', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-10 04:32:12'),
('Surat Keterangan Sehat_199010152015041001_TB000037.pdf', 'TB000037', 3, 'Surat Keterangan Sehat', 'pdf', 2, '', '', '0000-00-00', '', '2022-05-11 08:21:24'),
('Surat Keterangan Sehat_199102092014041001_TB000026.PDF', 'TB000026', 3, 'Surat Keterangan Sehat', 'PDF', 2, '', '', '0000-00-00', '', '2022-05-30 06:08:54'),
('Surat Keterangan Sehat_199107262016113201_TB000030.jpeg', 'TB000030', 3, 'Surat Keterangan Sehat', 'jpeg', 2, '', '', '0000-00-00', '', '2022-03-10 01:11:12'),
('Surat Keterangan Sehat_199110232021093101_TB000051.jpg', 'TB000051', 3, 'Surat Keterangan Sehat', 'jpg', 2, '', '', '0000-00-00', '', '2022-08-31 04:35:22'),
('Surat Keterangan Sehat_199202112020063101_TB000001.pdf', 'TB000001', 3, 'Surat Keterangan Sehat', 'pdf', 0, '', '', '0000-00-00', '', '2021-12-23 03:25:02'),
('Surat Keterangan Sehat_199206012018083201_TB000012.pdf', 'TB000012', 3, 'Surat Keterangan Sehat', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-09 03:22:14'),
('Surat Keterangan Sehat_199207222022103101_TB000056.pdf', 'TB000056', 3, 'Surat Keterangan Sehat', 'pdf', 2, '', '', '0000-00-00', '', '2022-12-05 08:17:42'),
('Surat Keterangan Sehat_199212242022013101_TB000024.pdf', 'TB000024', 3, 'Surat Keterangan Sehat', 'pdf', 0, '', '', '0000-00-00', '', '2022-04-07 05:07:09'),
('Surat Keterangan Sehat_199301282019031015_TB000027.pdf', 'TB000027', 3, 'Surat Keterangan Sehat', 'pdf', 2, '', '', '0000-00-00', '', '2022-03-01 23:43:44'),
('Surat Keterangan Sehat_199302192022103101_TB000055.pdf', 'TB000055', 3, 'Surat Keterangan Sehat', 'pdf', 2, '', '', '0000-00-00', '', '2022-12-06 05:38:25'),
('Surat Keterangan Sehat_199309062021093101_TB000049.pdf', 'TB000049', 3, 'Surat Keterangan Sehat', 'pdf', 2, '', '', '0000-00-00', '', '2022-09-01 13:38:18'),
('Surat Keterangan Sehat_199404142018083201_TB000004.pdf', 'TB000004', 3, 'Surat Keterangan Sehat', 'pdf', 0, '', '', '0000-00-00', '', '2022-03-29 08:58:13'),
('Surat Keterangan Sehat_199404232020073201_TB000040.pdf', 'TB000040', 3, 'Surat Keterangan Sehat', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-14 01:53:50'),
('Surat Pengantar Pengajuan Tugas Belajar_198204252005012002_TB000023.pdf', 'TB000023', 67, 'Surat Pengantar Pengajuan Tugas Belajar', 'pdf', 2, '', '7786/UN3.1.3/KP/2019', '2019-11-14', 'Wakil Dekan II', '2022-02-25 10:23:46'),
('Surat Pengantar Pengajuan Tugas Belajar_198304232010122007_TB000033.pdf', 'TB000033', 67, 'Surat Pengantar Pengajuan Tugas Belajar', 'pdf', 2, '', '2606/UN3.1.6/KP/2021', '2021-09-02', 'Wakil Dekan II FKH UNAIR', '2022-03-24 05:44:57'),
('Surat Pengantar Pengajuan Tugas Belajar_198409012015041002_TB000015.pdf', 'TB000015', 67, 'Surat Pengantar Pengajuan Tugas Belajar', 'pdf', 2, '', '2187/UN3.1.11/KP/2020', '2020-09-17', 'Dekan', '2022-02-09 03:41:31'),
('Surat Pengantar Pengajuan Tugas Belajar_198712022015041002_TB000010.pdf', 'TB000010', 67, 'Surat Pengantar Pengajuan Tugas Belajar', 'pdf', 2, '', '50873/A4/KP/2015', '2020-08-26', 'Wakil Dekan II', '2022-02-09 03:50:22'),
('Surat Pengantar Pengajuan Tugas Belajar_198801092016113201_TB000009.pdf', 'TB000009', 67, 'Surat Pengantar Pengajuan Tugas Belajar', 'pdf', 0, '', '2961/UN3.1.11/KP/2021', '2021-10-04', 'Dekan', '2022-03-30 07:03:37'),
('Surat Pengantar Pengajuan Tugas Belajar_199006092014093101_TB000048.pdf', 'TB000048', 67, 'Surat Pengantar Pengajuan Tugas Belajar', 'pdf', 0, '', '1535/UN3.1.16/KP/2022', '2022-09-08', 'Direktur SIKIA', '2022-10-10 07:56:32'),
('Surat Pengantar Pengajuan Tugas Belajar_199010152015041001_TB000037.pdf', 'TB000037', 67, 'Surat Pengantar Pengajuan Tugas Belajar', 'pdf', 2, '', '1803/UN3.1.6/KP/2022 ', '2022-05-17', 'Wakil Dekan II FKH', '2022-05-18 09:04:33'),
('Surat Pengantar Pengajuan Tugas Belajar_199202112020063101_TB000001.pdf', 'TB000001', 67, 'Surat Pengantar Pengajuan Tugas Belajar', 'pdf', 0, '', '123', '2021-12-23', 'Wakil Dekan II', '2021-12-23 03:25:05'),
('Surat Pengantar Pengajuan Tugas Belajar_199206012018083201_TB000012.pdf', 'TB000012', 67, 'Surat Pengantar Pengajuan Tugas Belajar', 'pdf', 2, '', '6162/UN3.1.8/KP/2021  ', '2021-02-09', 'Wakil Dekan II', '2022-02-09 03:41:24'),
('Surat Pengantar Pengajuan Tugas Belajar_199301282019031015_TB000027.pdf', 'TB000027', 67, 'Surat Pengantar Pengajuan Tugas Belajar', 'pdf', 2, '', '2001/UN3.1.4/KP/2021', '2021-08-20', 'Wakil Dekan II', '2022-03-01 23:54:53'),
('Surat Permohonan SK TB_198204252005012002_TB000023.pdf', 'TB000023', 19, 'Surat Permohonan SK TB', 'pdf', 2, '', '7787/UN3.1.3/KP/2019', '2019-11-14', 'Wakil Dekan II', '2022-02-25 10:23:46'),
('Surat Permohonan SK TB_198304232010122007_TB000033.pdf', 'TB000033', 19, 'Surat Permohonan SK TB', 'pdf', 2, '', '2606/UN3.1.6/KP/2021', '2021-09-02', 'Wakil Dekan II FKH UNAIR', '2022-03-24 05:38:27'),
('Surat Permohonan SK TB_198405052015042001_TB000019.pdf', 'TB000019', 19, 'Surat Permohonan SK TB', 'pdf', 2, '', '7332/UN3.1.10/KP/2019', '2019-10-15', 'Wakil Dekan 2', '2022-02-10 02:44:36'),
('Surat Permohonan SK TB_198407182015041001_TB000003.pdf', 'TB000003', 19, 'Surat Permohonan SK TB', 'pdf', 0, '', '3651/UN3.1.12/KP/2021', '2021-12-27', 'Dekan', '2022-01-28 01:25:10'),
('Surat Permohonan SK TB_198409012015041002_TB000015.pdf', 'TB000015', 19, 'Surat Permohonan SK TB', 'pdf', 2, '', '2187/UN3.1.11/KP/2020', '2020-09-17', 'Dekan', '2022-02-09 03:39:56'),
('Surat Permohonan SK TB_198509222014041001_TB000006.pdf', 'TB000006', 19, 'Surat Permohonan SK TB', 'pdf', 2, '', ' 1901/UN3.1.12/KP/2019 ', '2019-07-30', 'Dekan', '2022-02-09 04:04:39'),
('Surat Permohonan SK TB_198609112014041001_TB000018.pdf', 'TB000018', 19, 'Surat Permohonan SK TB', 'pdf', 2, '', '3642/UN3.1.12/KP/2021', '2021-12-22', 'Dekan', '2022-02-09 07:01:16'),
('Surat Permohonan SK TB_198703292016113101_TB000028.pdf', 'TB000028', 19, 'Surat Permohonan SK TB', 'pdf', 2, '', '604/UN3.1.4/KP/2022', '2022-03-07', 'Wakil Dekan II FEB Unair', '2022-04-06 09:22:30'),
('Surat Permohonan SK TB_198712022015041002_TB000010.pdf', 'TB000010', 19, 'Surat Permohonan SK TB', 'pdf', 2, '', '1788/UN3.1.4/KP/2020', '2020-08-28', 'Wakil Dekan II', '2022-02-09 03:47:07'),
('Surat Permohonan SK TB_198801092016113201_TB000009.pdf', 'TB000009', 19, 'Surat Permohonan SK TB', 'pdf', 0, '', '2961/UN3.1.11/KP/2021', '2021-10-04', 'Dekan', '2022-03-30 07:03:42'),
('Surat Permohonan SK TB_198909172014041001_TB000011.pdf', 'TB000011', 19, 'Surat Permohonan SK TB', 'pdf', 0, '', '1664/UN3.1.5/KP/2020', '2020-10-06', 'Wakil Dekan II Fakultas Farmasi', '2022-02-09 04:36:00'),
('Surat Permohonan SK TB_199006092014093101_TB000048.pdf', 'TB000048', 19, 'Surat Permohonan SK TB', 'pdf', 0, '', '1536 /UN3.1.16/KP/2022', '2022-09-08', 'Direktur SIKIA', '2022-10-10 08:14:37'),
('Surat Permohonan SK TB_199007092015041002_TB000020.pdf', 'TB000020', 19, 'Surat Permohonan SK TB', 'pdf', 2, '', '3128/UN3.1.12/KP/2019', '2019-10-16', 'Dekan', '2022-02-10 06:08:40'),
('Surat Permohonan SK TB_199010152015041001_TB000037.pdf', 'TB000037', 19, 'Surat Permohonan SK TB', 'pdf', 2, '', '1804/UN3.1.6/KP/2022', '2022-05-17', 'Wakil Dekan II FKH', '2022-05-18 09:04:33'),
('Surat Permohonan SK TB_199102092014041001_TB000026.pdf', 'TB000026', 19, 'Surat Permohonan SK TB', 'pdf', 2, '', '2168/UN3.1.6/KP/2022 ', '2022-06-16', 'Wakil Dekan II', '2022-06-26 07:00:44'),
('Surat Permohonan SK TB_199202112020063101_TB000001.pdf', 'TB000001', 19, 'Surat Permohonan SK TB', 'pdf', 0, '', '123123', '2021-12-23', 'Wakil Dekan II', '2021-12-23 03:25:09'),
('Surat Permohonan SK TB_199206012018083201_TB000012.pdf', 'TB000012', 19, 'Surat Permohonan SK TB', 'pdf', 2, '', '6162/UN3.1.8/KP/2021', '2021-02-09', 'Lektor Kepala', '2022-02-09 03:35:55'),
('Surat Permohonan SK TB_199212242022013101_TB000024.pdf', 'TB000024', 19, 'Surat Permohonan SK TB', 'pdf', 0, '', '1311/UN3.1.13/KP/2022', '2022-03-30', 'DEKAN', '2022-04-07 05:07:19'),
('Surat Permohonan SK TB_199301282019031015_TB000027.pdf', 'TB000027', 19, 'Surat Permohonan SK TB', 'pdf', 2, '', '2001/UN3.1.4/KP/2021', '2021-08-20', 'Wakil Dekan II', '2022-03-01 23:53:21'),
('Surat Permohonan SK TB_199404142018083201_TB000004.pdf', 'TB000004', 19, 'Surat Permohonan SK TB', 'pdf', 0, '', '140/UN3.1.17/KP/2022', '2022-02-10', 'DEKAN', '2022-03-29 08:58:30'),
('Surat Pernyataan Bermaterai(9)_198204252005012002_TB000023.pdf', 'TB000023', 7, 'Surat Pernyataan Bermaterai(9)', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-25 10:23:46'),
('Surat Pernyataan Bermaterai(9)_198304232010122007_TB000033.pdf', 'TB000033', 7, 'Surat Pernyataan Bermaterai(9)', 'pdf', 2, '', '', '0000-00-00', '', '2022-03-24 05:41:47'),
('Surat Pernyataan Bermaterai(9)_198407182015041001_TB000003.pdf', 'TB000003', 7, 'Surat Pernyataan Bermaterai(9)', 'pdf', 0, '', '', '0000-00-00', '', '2022-01-28 01:25:12'),
('Surat Pernyataan Bermaterai(9)_198409012015041002_TB000015.pdf', 'TB000015', 7, 'Surat Pernyataan Bermaterai(9)', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-09 03:40:25'),
('Surat Pernyataan Bermaterai(9)_198509222014041001_TB000006.pdf', 'TB000006', 7, 'Surat Pernyataan Bermaterai(9)', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-09 04:04:39'),
('Surat Pernyataan Bermaterai(9)_198609112014041001_TB000018.pdf', 'TB000018', 7, 'Surat Pernyataan Bermaterai(9)', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-09 07:01:16'),
('Surat Pernyataan Bermaterai(9)_198703292016113101_TB000028.pdf', 'TB000028', 7, 'Surat Pernyataan Bermaterai(9)', 'pdf', 2, '', '', '0000-00-00', '', '2022-04-06 09:22:30'),
('Surat Pernyataan Bermaterai(9)_198801092016113201_TB000009.pdf', 'TB000009', 7, 'Surat Pernyataan Bermaterai(9)', 'pdf', 0, '', '', '0000-00-00', '', '2022-03-30 07:03:44'),
('Surat Pernyataan Bermaterai(9)_198806272016113101_TB000013.pdf', 'TB000013', 7, 'Surat Pernyataan Bermaterai(9)', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-09 03:19:57'),
('Surat Pernyataan Bermaterai(9)_198909172014041001_TB000011.pdf', 'TB000011', 7, 'Surat Pernyataan Bermaterai(9)', 'pdf', 0, '', '', '0000-00-00', '', '2022-02-09 04:36:06'),
('Surat Pernyataan Bermaterai(9)_199006092014093101_TB000048.pdf', 'TB000048', 7, 'Surat Pernyataan Bermaterai(9)', 'pdf', 0, '', '', '0000-00-00', '', '2022-10-10 08:15:03'),
('Surat Pernyataan Bermaterai(9)_199007092015041002_TB000020.pdf', 'TB000020', 7, 'Surat Pernyataan Bermaterai(9)', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-10 06:08:40'),
('Surat Pernyataan Bermaterai(9)_199010152015041001_TB000037.pdf', 'TB000037', 7, 'Surat Pernyataan Bermaterai(9)', 'pdf', 2, '', '', '0000-00-00', '', '2022-05-18 09:04:33'),
('Surat Pernyataan Bermaterai(9)_199102092014041001_TB000026.pdf', 'TB000026', 7, 'Surat Pernyataan Bermaterai(9)', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-26 07:00:44'),
('Surat Pernyataan Bermaterai(9)_199202112020063101_TB000001.pdf', 'TB000001', 7, 'Surat Pernyataan Bermaterai(9)', 'pdf', 0, '', '', '0000-00-00', '', '2021-12-23 03:25:11'),
('Surat Pernyataan Bermaterai(9)_199206012018083201_TB000012.pdf', 'TB000012', 7, 'Surat Pernyataan Bermaterai(9)', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-09 03:39:11'),
('Surat Pernyataan Bermaterai(9)_199212242022013101_TB000024.pdf', 'TB000024', 7, 'Surat Pernyataan Bermaterai(9)', 'pdf', 0, '', '', '0000-00-00', '', '2022-04-07 05:07:29'),
('Surat Pernyataan Bermaterai(9)_199301282019031015_TB000027.pdf', 'TB000027', 7, 'Surat Pernyataan Bermaterai(9)', 'pdf', 2, '', '', '0000-00-00', '', '2022-03-01 23:54:16'),
('Surat Pernyataan Bermaterai(9)_199404142018083201_TB000004.pdf', 'TB000004', 7, 'Surat Pernyataan Bermaterai(9)', 'pdf', 0, '', '', '0000-00-00', '', '2022-03-29 08:59:12'),
('Surat Rekomendasi Pimpinan_198204252005012002_TB000023.pdf', 'TB000023', 4, 'Surat Rekomendasi Pimpinan', 'pdf', 2, '', '7789/UN3.1.3/KP/2019', '2019-11-14', 'Dekan FHUA', '2022-02-25 10:23:46'),
('Surat Rekomendasi Pimpinan_198304232010122007_TB000033.pdf', 'TB000033', 4, 'Surat Rekomendasi Pimpinan', 'pdf', 2, '', '2655/UN3.1.6/KP/2021', '2021-09-07', 'Dekan FKH UNAIR', '2022-03-24 05:29:51'),
('Surat Rekomendasi Pimpinan_198405052015042001_TB000019.pdf', 'TB000019', 4, 'Surat Rekomendasi Pimpinan', 'pdf', 2, '', '6431/UN3.1.10/KP/2019', '2019-09-12', 'Dekan', '2022-02-10 03:10:15'),
('Surat Rekomendasi Pimpinan_198407182015041001_TB000003.pdf', 'TB000003', 4, 'Surat Rekomendasi Pimpinan', 'pdf', 0, '', '1910/UN3.1.12/KP/2019', '2019-08-01', 'Dekan', '2022-01-28 01:25:14'),
('Surat Rekomendasi Pimpinan_198409012015041002_TB000015.pdf', 'TB000015', 4, 'Surat Rekomendasi Pimpinan', 'pdf', 2, '', '2124/UN3.1.11/KP/2020', '2020-09-11', 'Wakil Dekan II', '2022-02-09 03:36:16'),
('Surat Rekomendasi Pimpinan_198509222014041001_TB000006.pdf', 'TB000006', 4, 'Surat Rekomendasi Pimpinan', 'pdf', 2, '', '1594/UN3.1.12/KP/2019', '2019-07-11', 'Dekan', '2022-02-09 04:04:39'),
('Surat Rekomendasi Pimpinan_198609112014041001_TB000018.pdf', 'TB000018', 4, 'Surat Rekomendasi Pimpinan', 'pdf', 2, '', '226/UN3.1.12/KP/2019', '2019-01-25', 'Dekan', '2022-02-09 07:01:16'),
('Surat Rekomendasi Pimpinan_198703292016113101_TB000028.pdf', 'TB000028', 4, 'Surat Rekomendasi Pimpinan', 'pdf', 2, '', '1466/UN3.1.4/KP/2022', '2022-03-04', 'Ketua Departemen Ilmu Ekonomi', '2022-04-06 09:22:30'),
('Surat Rekomendasi Pimpinan_198712022015041002_TB000010.pdf', 'TB000010', 4, 'Surat Rekomendasi Pimpinan', 'pdf', 2, '', '3149/UN3.1.4/PPd/2020', '2020-08-26', 'Ketua Departemen Manajemen', '2022-02-09 03:43:35'),
('Surat Rekomendasi Pimpinan_198801092016113201_TB000009.pdf', 'TB000009', 4, 'Surat Rekomendasi Pimpinan', 'pdf', 0, '', '2965/UN3.1.11/KP/2021', '2021-10-04', 'Dekan', '2022-03-30 07:03:46'),
('Surat Rekomendasi Pimpinan_198909172014041001_TB000011.pdf', 'TB000011', 4, 'Surat Rekomendasi Pimpinan', 'pdf', 0, '', '2391/UN3.1.5/KP/2020', '2020-02-11', 'Wsakil Dekan II', '2022-02-09 04:36:18'),
('Surat Rekomendasi Pimpinan_199006092014093101_TB000048.pdf', 'TB000048', 4, 'Surat Rekomendasi Pimpinan', 'pdf', 0, '', '1519/UN3.1.16/KP/2022', '2022-09-08', 'Direktur SIKIA', '2022-10-10 08:15:28'),
('Surat Rekomendasi Pimpinan_199007092015041002_TB000020.pdf', 'TB000020', 4, 'Surat Rekomendasi Pimpinan', 'pdf', 2, '', '2214/UN3.1.12/KP/2019', '2019-09-06', 'Dekan', '2022-02-10 06:08:40'),
('Surat Rekomendasi Pimpinan_199010152015041001_TB000037.pdf', 'TB000037', 4, 'Surat Rekomendasi Pimpinan', 'pdf', 2, '', '1295/UN3.1.6/KP/2022', '2022-04-01', 'Dekan FKH', '2022-05-18 09:04:33'),
('Surat Rekomendasi Pimpinan_199102092014041001_TB000026.pdf', 'TB000026', 4, 'Surat Rekomendasi Pimpinan', 'pdf', 2, '', '462/UN3.1.6/KP/2022', '2022-02-07', 'Dekan FKH', '2022-06-26 07:00:44'),
('Surat Rekomendasi Pimpinan_199202112020063101_TB000001.pdf', 'TB000001', 4, 'Surat Rekomendasi Pimpinan', 'pdf', 0, '', '1324132', '2021-12-23', 'Bayu', '2021-12-23 03:25:13'),
('Surat Rekomendasi Pimpinan_199206012018083201_TB000012.pdf', 'TB000012', 4, 'Surat Rekomendasi Pimpinan', 'pdf', 2, '', '5969/UN3.1.8/KP/2021', '2021-12-09', 'Ketua Departemen', '2022-02-09 03:21:39'),
('Surat Rekomendasi Pimpinan_199212242022013101_TB000024.pdf', 'TB000024', 4, 'Surat Rekomendasi Pimpinan', 'pdf', 0, '', '935/UN3.1.13/KP/2022', '2022-03-07', 'DEKAN', '2022-04-07 05:07:39'),
('Surat Rekomendasi Pimpinan_199301282019031015_TB000027.pdf', 'TB000027', 4, 'Surat Rekomendasi Pimpinan', 'pdf', 2, '', '4090/UN3.1.4/KP/2021', '2021-08-19', 'Ketua Departemen Ekonomi Syariah', '2022-03-01 23:48:55'),
('Surat Rekomendasi Pimpinan_199404142018083201_TB000004.pdf', 'TB000004', 4, 'Surat Rekomendasi Pimpinan', 'pdf', 0, '', '138/UN3.1.17/KP/2022', '2022-02-10', 'DEKAN', '2022-03-29 08:59:27'),
('Surat Tugas Belajar_198801092016113201_TB000009.pdf', 'TB000009', 20, 'Surat Tugas Belajar', 'pdf', 0, '', '3984/UN3/KP/2021', '2021-10-13', NULL, '2022-03-30 07:06:23'),
('Surat Tugas Belajar_198909172014041001_TB000011.pdf', 'TB000011', 20, 'Surat Tugas Belajar', 'pdf', 0, '', '123', '2022-02-07', NULL, '2022-02-09 04:40:22'),
('Surat Tugas Belajar_199212242022013101_TB000024.pdf', 'TB000024', 20, 'Surat Tugas Belajar', 'pdf', 0, '', '1886/UN3.5/KP/2022', '2022-04-13', NULL, '2022-04-20 01:47:22'),
('Surat Tugas Belajar_199404142018083201_TB000004.pdf', 'TB000004', 20, 'Surat Tugas Belajar', 'pdf', 0, '', '1588/UN3/KP/2022', '2022-03-29', NULL, '2022-03-30 06:12:31'),
('SuratKedutaan_198204252005012002_TB000023.pdf', 'TB000023', 63, 'SuratKedutaan', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-25 09:51:46'),
('SuratKedutaan_198407182015041001_TB000003.pdf', 'TB000003', 63, 'SuratKedutaan', 'pdf', 0, '', '', '0000-00-00', '', '2022-01-28 01:25:15'),
('SuratKedutaan_198409012015041002_TB000015.pdf', 'TB000015', 63, 'SuratKedutaan', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-09 03:42:29'),
('SuratKedutaan_198505182008122002_TB000036.pdf', 'TB000036', 63, 'SuratKedutaan', 'pdf', 2, '', '', '0000-00-00', '', '2022-04-29 09:40:42'),
('SuratKedutaan_198505252016113101_TB000021.pdf', 'TB000021', 63, 'SuratKedutaan', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-12 02:55:29'),
('SuratKedutaan_198703292016113101_TB000028.pdf', 'TB000028', 63, 'SuratKedutaan', 'pdf', 2, '', '', '0000-00-00', '', '2022-03-16 08:33:10'),
('SuratKedutaan_198707172015042002_TB000017.pdf', 'TB000017', 63, 'SuratKedutaan', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-10 01:14:56'),
('SuratKedutaan_198801092016113201_TB000009.pdf', 'TB000009', 63, 'SuratKedutaan', 'pdf', 0, '', '', '0000-00-00', '', '2022-03-30 07:03:47'),
('SuratKedutaan_198812172018083201_TB000008.pdf', 'TB000008', 63, 'SuratKedutaan', 'pdf', 2, '', '', '0000-00-00', '', '2022-01-31 09:52:05'),
('SuratKedutaan_198905232015043101_TB000045.pdf', 'TB000045', 63, 'SuratKedutaan', 'pdf', 2, '', '', '0000-00-00', '', '2022-10-13 05:45:28'),
('SuratKedutaan_198911032021093101_TB000050.pdf', 'TB000050', 63, 'SuratKedutaan', 'pdf', 2, '', '', '0000-00-00', '', '2022-08-31 04:36:18'),
('SuratKedutaan_199005152014042001_TB000029.pdf', 'TB000029', 63, 'SuratKedutaan', 'pdf', 2, '', '', '0000-00-00', '', '2022-03-08 05:10:24'),
('SuratKedutaan_199006092014093101_TB000048.pdf', 'TB000048', 63, 'SuratKedutaan', 'pdf', 0, '', '', '0000-00-00', '', '2022-10-10 08:15:44'),
('SuratKedutaan_199102092014041001_TB000026.pdf', 'TB000026', 63, 'SuratKedutaan', 'pdf', 2, '', '', '0000-00-00', '', '2022-05-30 06:12:11'),
('SuratKedutaan_199110232021093101_TB000051.jpg', 'TB000051', 63, 'SuratKedutaan', 'jpg', 2, '', '', '0000-00-00', '', '2022-08-31 04:38:51'),
('SuratKedutaan_199207222022103101_TB000056.pdf', 'TB000056', 63, 'SuratKedutaan', 'pdf', 2, '', '', '0000-00-00', '', '2022-12-06 05:50:34'),
('SuratKedutaan_199212242022013101_TB000024.pdf', 'TB000024', 63, 'SuratKedutaan', 'pdf', 0, '', '', '0000-00-00', '', '2022-04-07 05:07:41'),
('SuratKedutaan_199302192022103101_TB000055.pdf', 'TB000055', 63, 'SuratKedutaan', 'pdf', 2, '', '', '0000-00-00', '', '2022-12-06 05:40:39'),
('SuratKedutaan_199309062021093101_TB000049.pdf', 'TB000049', 63, 'SuratKedutaan', 'pdf', 2, '', '', '0000-00-00', '', '2022-09-01 13:38:52'),
('SuratKedutaan_199404142018083201_TB000004.pdf', 'TB000004', 63, 'SuratKedutaan', 'pdf', 0, '', '', '0000-00-00', '', '2022-03-29 08:59:40'),
('SuratKedutaan_199404232020073201_TB000040.pdf', 'TB000040', 63, 'SuratKedutaan', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-14 01:57:40'),
('SWAB_198204252005012002_TB000023.pdf', 'TB000023', 62, 'SWAB', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-25 09:51:39'),
('SWAB_198304232010122007_TB000033.pdf', 'TB000033', 62, 'SWAB', 'pdf', 2, '', '', '0000-00-00', '', '2022-03-24 05:27:26'),
('SWAB_198407182015041001_TB000003.pdf', 'TB000003', 62, 'SWAB', 'pdf', 0, '', '', '0000-00-00', '', '2022-01-28 01:25:17'),
('SWAB_198409012015041002_TB000015.pdf', 'TB000015', 62, 'SWAB', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-09 03:42:14'),
('SWAB_198505182008122002_TB000036.pdf', 'TB000036', 62, 'SWAB', 'pdf', 2, '', '', '0000-00-00', '', '2022-04-29 09:43:34'),
('SWAB_198505252016113101_TB000021.pdf', 'TB000021', 62, 'SWAB', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-12 02:59:47'),
('SWAB_198703292016113101_TB000028.pdf', 'TB000028', 62, 'SWAB', 'pdf', 2, '', '', '0000-00-00', '', '2022-03-18 07:52:48'),
('SWAB_198707172015042002_TB000017.pdf', 'TB000017', 62, 'SWAB', 'pdf', 2, '', '', '0000-00-00', '', '2022-02-10 01:19:33'),
('SWAB_198801092016113201_TB000009.pdf', 'TB000009', 62, 'SWAB', 'pdf', 0, '', '', '0000-00-00', '', '2022-03-30 07:03:49'),
('SWAB_198812172018083201_TB000008.pdf', 'TB000008', 62, 'SWAB', 'pdf', 2, '', '', '0000-00-00', '', '2022-01-31 09:51:24'),
('SWAB_198905232015043101_TB000045.jpg', 'TB000045', 62, 'SWAB', 'jpg', 2, '', '', '0000-00-00', '', '2022-10-13 05:45:59'),
('SWAB_198911032021093101_TB000050.pdf', 'TB000050', 62, 'SWAB', 'pdf', 2, '', '', '0000-00-00', '', '2022-09-01 03:45:45'),
('SWAB_199005152014042001_TB000029.jpg', 'TB000029', 62, 'SWAB', 'jpg', 2, '', '', '0000-00-00', '', '2022-03-08 05:32:58'),
('SWAB_199006092014093101_TB000048.pdf', 'TB000048', 62, 'SWAB', 'pdf', 0, '', '', '0000-00-00', '', '2022-10-10 08:16:02'),
('SWAB_199010152015041001_TB000037.pdf', 'TB000037', 62, 'SWAB', 'pdf', 2, '', '', '0000-00-00', '', '2022-05-11 08:22:26'),
('SWAB_199102092014041001_TB000026.pdf', 'TB000026', 62, 'SWAB', 'pdf', 2, '', '', '0000-00-00', '', '2022-05-30 06:12:03'),
('SWAB_199110232021093101_TB000051.jpg', 'TB000051', 62, 'SWAB', 'jpg', 2, '', '', '0000-00-00', '', '2022-08-31 04:38:23'),
('SWAB_199207222022103101_TB000056.pdf', 'TB000056', 62, 'SWAB', 'pdf', 2, '', '', '0000-00-00', '', '2022-12-05 08:45:25'),
('SWAB_199212242022013101_TB000024.pdf', 'TB000024', 62, 'SWAB', 'pdf', 0, '', '', '0000-00-00', '', '2022-04-07 05:07:43'),
('SWAB_199302192022103101_TB000055.pdf', 'TB000055', 62, 'SWAB', 'pdf', 2, '', '', '0000-00-00', '', '2022-12-06 05:40:05'),
('SWAB_199309062021093101_TB000049.pdf', 'TB000049', 62, 'SWAB', 'pdf', 2, '', '', '0000-00-00', '', '2022-09-01 13:38:48'),
('SWAB_199404232020073201_TB000040.pdf', 'TB000040', 62, 'SWAB', 'pdf', 2, '', '', '0000-00-00', '', '2022-06-14 01:59:43');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `aktivitas_studi`
--
ALTER TABLE `aktivitas_studi`
  ADD PRIMARY KEY (`ID_AKTIVITAS`);

--
-- Indeks untuk tabel `aktivitas_studi_ib`
--
ALTER TABLE `aktivitas_studi_ib`
  ADD PRIMARY KEY (`ID_AKTIVITAS_IB`);

--
-- Indeks untuk tabel `beasiswa`
--
ALTER TABLE `beasiswa`
  ADD PRIMARY KEY (`ID_BEASISWA`);

--
-- Indeks untuk tabel `biodata`
--
ALTER TABLE `biodata`
  ADD PRIMARY KEY (`NIK`);

--
-- Indeks untuk tabel `evaluations`
--
ALTER TABLE `evaluations`
  ADD PRIMARY KEY (`evaluation_id`);

--
-- Indeks untuk tabel `evaluation_publicities`
--
ALTER TABLE `evaluation_publicities`
  ADD PRIMARY KEY (`evaluation_publicity_id`);

--
-- Indeks untuk tabel `evaluation_toefls`
--
ALTER TABLE `evaluation_toefls`
  ADD PRIMARY KEY (`evaluation_toefl_id`);

--
-- Indeks untuk tabel `fakultas`
--
ALTER TABLE `fakultas`
  ADD PRIMARY KEY (`ID_FAKULTAS`);

--
-- Indeks untuk tabel `file_upload`
--
ALTER TABLE `file_upload`
  ADD PRIMARY KEY (`ID_FILE`),
  ADD KEY `FK_RELATIONSHIP_10` (`ID_DAFTAR`),
  ADD KEY `ID_JENISFILE` (`ID_JENISFILE`);

--
-- Indeks untuk tabel `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`ID_HISTORY`),
  ADD KEY `FK_RELATIONSHIP_5` (`ID_DAFTAR`),
  ADD KEY `FK_RELATIONSHIP_9` (`ID_STATUS`);

--
-- Indeks untuk tabel `izin_belajar`
--
ALTER TABLE `izin_belajar`
  ADD PRIMARY KEY (`ID_IB`),
  ADD KEY `NIK` (`NIK`),
  ADD KEY `ID_JENJANG` (`ID_JENJANG`),
  ADD KEY `izin_belajar_ibfk_4` (`ID_STATUS_SL`);

--
-- Indeks untuk tabel `jenisfile_sl`
--
ALTER TABLE `jenisfile_sl`
  ADD PRIMARY KEY (`ID_JENIS`);

--
-- Indeks untuk tabel `jenis_file`
--
ALTER TABLE `jenis_file`
  ADD PRIMARY KEY (`ID_JENISFILE`);

--
-- Indeks untuk tabel `jenjang_pendidikan`
--
ALTER TABLE `jenjang_pendidikan`
  ADD PRIMARY KEY (`ID_JENJANG`);

--
-- Indeks untuk tabel `keuangan`
--
ALTER TABLE `keuangan`
  ADD PRIMARY KEY (`ID_KEUANGAN`),
  ADD KEY `ID_DAFTAR` (`ID_DAFTAR`),
  ADD KEY `ID_MATAUANG` (`ID_MATAUANG`);

--
-- Indeks untuk tabel `kota`
--
ALTER TABLE `kota`
  ADD PRIMARY KEY (`ID_KOTA`);

--
-- Indeks untuk tabel `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`ID_LOGIN`);

--
-- Indeks untuk tabel `mata_uang`
--
ALTER TABLE `mata_uang`
  ADD PRIMARY KEY (`ID_MATAUANG`);

--
-- Indeks untuk tabel `monitor`
--
ALTER TABLE `monitor`
  ADD PRIMARY KEY (`ID_MONITOR`),
  ADD KEY `FK_RELATIONSHIP_8` (`ID_HISTORY`);

--
-- Indeks untuk tabel `monitoring`
--
ALTER TABLE `monitoring`
  ADD PRIMARY KEY (`ID_MONITORING`),
  ADD KEY `FK_RELATIONSHIP_19999` (`ID_TUBEL`);

--
-- Indeks untuk tabel `monitoring_ib`
--
ALTER TABLE `monitoring_ib`
  ADD PRIMARY KEY (`ID_MONITORING_IB`),
  ADD KEY `ID_IB` (`ID_IB`);

--
-- Indeks untuk tabel `negara`
--
ALTER TABLE `negara`
  ADD PRIMARY KEY (`ID_NEGARA`);

--
-- Indeks untuk tabel `pendaftaran`
--
ALTER TABLE `pendaftaran`
  ADD PRIMARY KEY (`ID_DAFTAR`),
  ADD KEY `FK_RELATIONSHIP_2` (`NIK`),
  ADD KEY `FK_RELATIONSHIP_6` (`ID_BEASISWA`),
  ADD KEY `FK_RELATIONSHIP_7` (`ID_JENJANG`);

--
-- Indeks untuk tabel `pengaktifan_ib`
--
ALTER TABLE `pengaktifan_ib`
  ADD PRIMARY KEY (`ID_PENGAKTIFAN_IB`),
  ADD KEY `ID_IB` (`ID_IB`),
  ADD KEY `ID_STATUS_SL` (`ID_STATUS_SL`);

--
-- Indeks untuk tabel `pengaktifan_kembali`
--
ALTER TABLE `pengaktifan_kembali`
  ADD PRIMARY KEY (`ID_PENGAKTIFAN`),
  ADD KEY `ID_TUBEL` (`ID_TUBEL`),
  ADD KEY `ID_STATUS_SL` (`ID_STATUS_SL`);

--
-- Indeks untuk tabel `penghargaan`
--
ALTER TABLE `penghargaan`
  ADD PRIMARY KEY (`ID_PENGHARGAAN`),
  ADD KEY `FK_RELATIONSHIP_45` (`ID_MONITORING`);

--
-- Indeks untuk tabel `penghargaan_ib`
--
ALTER TABLE `penghargaan_ib`
  ADD PRIMARY KEY (`ID_PENGHARGAAN_IB`),
  ADD KEY `ID_MONITORING_IB` (`ID_MONITORING_IB`);

--
-- Indeks untuk tabel `perpanjangan`
--
ALTER TABLE `perpanjangan`
  ADD PRIMARY KEY (`ID_PERPANJANGAN`),
  ADD KEY `ID_TUBEL` (`ID_TUBEL`),
  ADD KEY `ID_STATUS_SL` (`ID_STATUS_SL`);

--
-- Indeks untuk tabel `publikasi`
--
ALTER TABLE `publikasi`
  ADD PRIMARY KEY (`ID_PUBLIKASI`),
  ADD KEY `FK_RELATIONSHIP_33` (`ID_MONITORING`);

--
-- Indeks untuk tabel `publikasi_ib`
--
ALTER TABLE `publikasi_ib`
  ADD PRIMARY KEY (`ID_PUBLIKASI_IB`),
  ADD KEY `ID_MONITORING_IB` (`ID_MONITORING_IB`);

--
-- Indeks untuk tabel `seminar_pelatihan`
--
ALTER TABLE `seminar_pelatihan`
  ADD PRIMARY KEY (`ID_KEGIATAN`),
  ADD KEY `FK_RELATIONSHIP_54` (`ID_MONITORING`),
  ADD KEY `ID_NEGARA` (`ID_NEGARA`);

--
-- Indeks untuk tabel `seminar_pelatihan_ib`
--
ALTER TABLE `seminar_pelatihan_ib`
  ADD PRIMARY KEY (`ID_KEGIATAN_IB`),
  ADD KEY `ID_MONITORING_IB` (`ID_MONITORING_IB`);

--
-- Indeks untuk tabel `status_studilanjut`
--
ALTER TABLE `status_studilanjut`
  ADD PRIMARY KEY (`ID_STATUS_SL`);

--
-- Indeks untuk tabel `status_verifikasi`
--
ALTER TABLE `status_verifikasi`
  ADD PRIMARY KEY (`ID_STATUS`);

--
-- Indeks untuk tabel `syarat_kelulusan`
--
ALTER TABLE `syarat_kelulusan`
  ADD PRIMARY KEY (`ID_SYARAT_KELULUSAN`),
  ADD KEY `ID_TUBEL` (`ID_MONITORING`);

--
-- Indeks untuk tabel `syarat_kelulusan_ib`
--
ALTER TABLE `syarat_kelulusan_ib`
  ADD PRIMARY KEY (`ID_SYARAT_KELULUSAN_IB`),
  ADD KEY `ID_MONITORING_IB` (`ID_MONITORING_IB`);

--
-- Indeks untuk tabel `template`
--
ALTER TABLE `template`
  ADD PRIMARY KEY (`ID_TEMPLATE`);

--
-- Indeks untuk tabel `toefl`
--
ALTER TABLE `toefl`
  ADD PRIMARY KEY (`ID_TOEFL`);

--
-- Indeks untuk tabel `toefl_ib`
--
ALTER TABLE `toefl_ib`
  ADD PRIMARY KEY (`ID_TOEFL`);

--
-- Indeks untuk tabel `tugas_akhir`
--
ALTER TABLE `tugas_akhir`
  ADD PRIMARY KEY (`ID_TUGAS`);

--
-- Indeks untuk tabel `tugas_akhir_ib`
--
ALTER TABLE `tugas_akhir_ib`
  ADD PRIMARY KEY (`ID_TUGAS`);

--
-- Indeks untuk tabel `tugas_belajar`
--
ALTER TABLE `tugas_belajar`
  ADD PRIMARY KEY (`ID_TUBEL`),
  ADD KEY `NIK` (`NIK`),
  ADD KEY `ID_NEGARA` (`ID_NEGARA`),
  ADD KEY `ID_JENJANG` (`ID_JENJANG`),
  ADD KEY `ID_STATUS_SL` (`ID_STATUS_SL`);

--
-- Indeks untuk tabel `upload_file_ib`
--
ALTER TABLE `upload_file_ib`
  ADD PRIMARY KEY (`ID_UP_FILE_IB`);

--
-- Indeks untuk tabel `upload_file_pengaktifan`
--
ALTER TABLE `upload_file_pengaktifan`
  ADD PRIMARY KEY (`ID_UP_FILE_AKT`),
  ADD KEY `ID_JENISFILE` (`ID_JENIS`),
  ADD KEY `ID_PENGAKTIFAN` (`ID_PENGAKTIFAN`);

--
-- Indeks untuk tabel `upload_file_perpanjangan`
--
ALTER TABLE `upload_file_perpanjangan`
  ADD PRIMARY KEY (`ID_UP_FILE_PJG`),
  ADD KEY `ID_JENISFILE` (`ID_JENIS`),
  ADD KEY `ID_PERPANJANGAN` (`ID_PERPANJANGAN`);

--
-- Indeks untuk tabel `upload_file_tubel`
--
ALTER TABLE `upload_file_tubel`
  ADD PRIMARY KEY (`ID_UP_FILE_T`),
  ADD KEY `ID_JENISFILE` (`ID_JENIS`),
  ADD KEY `ID_TUBEL` (`ID_TUBEL`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `aktivitas_studi`
--
ALTER TABLE `aktivitas_studi`
  MODIFY `ID_AKTIVITAS` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `aktivitas_studi_ib`
--
ALTER TABLE `aktivitas_studi_ib`
  MODIFY `ID_AKTIVITAS_IB` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `beasiswa`
--
ALTER TABLE `beasiswa`
  MODIFY `ID_BEASISWA` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `evaluations`
--
ALTER TABLE `evaluations`
  MODIFY `evaluation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=340;

--
-- AUTO_INCREMENT untuk tabel `evaluation_publicities`
--
ALTER TABLE `evaluation_publicities`
  MODIFY `evaluation_publicity_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=340;

--
-- AUTO_INCREMENT untuk tabel `evaluation_toefls`
--
ALTER TABLE `evaluation_toefls`
  MODIFY `evaluation_toefl_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=340;

--
-- AUTO_INCREMENT untuk tabel `fakultas`
--
ALTER TABLE `fakultas`
  MODIFY `ID_FAKULTAS` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT untuk tabel `file_upload`
--
ALTER TABLE `file_upload`
  MODIFY `ID_FILE` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `history`
--
ALTER TABLE `history`
  MODIFY `ID_HISTORY` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jenisfile_sl`
--
ALTER TABLE `jenisfile_sl`
  MODIFY `ID_JENIS` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT untuk tabel `keuangan`
--
ALTER TABLE `keuangan`
  MODIFY `ID_KEUANGAN` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `monitoring`
--
ALTER TABLE `monitoring`
  MODIFY `ID_MONITORING` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `monitoring_ib`
--
ALTER TABLE `monitoring_ib`
  MODIFY `ID_MONITORING_IB` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `pendaftaran`
--
ALTER TABLE `pendaftaran`
  MODIFY `ID_DAFTAR` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `penghargaan`
--
ALTER TABLE `penghargaan`
  MODIFY `ID_PENGHARGAAN` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `penghargaan_ib`
--
ALTER TABLE `penghargaan_ib`
  MODIFY `ID_PENGHARGAAN_IB` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `publikasi`
--
ALTER TABLE `publikasi`
  MODIFY `ID_PUBLIKASI` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `publikasi_ib`
--
ALTER TABLE `publikasi_ib`
  MODIFY `ID_PUBLIKASI_IB` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `seminar_pelatihan`
--
ALTER TABLE `seminar_pelatihan`
  MODIFY `ID_KEGIATAN` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `seminar_pelatihan_ib`
--
ALTER TABLE `seminar_pelatihan_ib`
  MODIFY `ID_KEGIATAN_IB` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `status_studilanjut`
--
ALTER TABLE `status_studilanjut`
  MODIFY `ID_STATUS_SL` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `syarat_kelulusan`
--
ALTER TABLE `syarat_kelulusan`
  MODIFY `ID_SYARAT_KELULUSAN` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `syarat_kelulusan_ib`
--
ALTER TABLE `syarat_kelulusan_ib`
  MODIFY `ID_SYARAT_KELULUSAN_IB` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `toefl`
--
ALTER TABLE `toefl`
  MODIFY `ID_TOEFL` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `toefl_ib`
--
ALTER TABLE `toefl_ib`
  MODIFY `ID_TOEFL` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tugas_akhir`
--
ALTER TABLE `tugas_akhir`
  MODIFY `ID_TUGAS` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tugas_akhir_ib`
--
ALTER TABLE `tugas_akhir_ib`
  MODIFY `ID_TUGAS` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `file_upload`
--
ALTER TABLE `file_upload`
  ADD CONSTRAINT `FK_RELATIONSHIP_11` FOREIGN KEY (`ID_JENISFILE`) REFERENCES `jenis_file` (`ID_JENISFILE`),
  ADD CONSTRAINT `file_upload_ibfk_1` FOREIGN KEY (`ID_DAFTAR`) REFERENCES `pendaftaran` (`ID_DAFTAR`);

--
-- Ketidakleluasaan untuk tabel `history`
--
ALTER TABLE `history`
  ADD CONSTRAINT `FK_RELATIONSHIP_9` FOREIGN KEY (`ID_STATUS`) REFERENCES `status_verifikasi` (`ID_STATUS`);

--
-- Ketidakleluasaan untuk tabel `izin_belajar`
--
ALTER TABLE `izin_belajar`
  ADD CONSTRAINT `izin_belajar_ibfk_1` FOREIGN KEY (`NIK`) REFERENCES `biodata` (`NIK`),
  ADD CONSTRAINT `izin_belajar_ibfk_4` FOREIGN KEY (`ID_STATUS_SL`) REFERENCES `status_studilanjut` (`ID_STATUS_SL`),
  ADD CONSTRAINT `izin_belajar_ibfk_5` FOREIGN KEY (`ID_JENJANG`) REFERENCES `jenjang_pendidikan` (`ID_JENJANG`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
