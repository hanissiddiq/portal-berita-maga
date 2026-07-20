-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 20, 2026 at 07:18 AM
-- Server version: 8.0.30
-- PHP Version: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_portal_berita`
--

-- --------------------------------------------------------

--
-- Table structure for table `article_news`
--

CREATE TABLE `article_news` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `author_id` bigint UNSIGNED NOT NULL,
  `is_featured` enum('featured','not_featured') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'not_featured',
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `article_news`
--

INSERT INTO `article_news` (`id`, `name`, `content`, `thumbnail`, `category_id`, `author_id`, `is_featured`, `slug`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Tesla Meluncurkan Super Charger di NAD', '<h2><strong>Tesla Meluncurkan Supercharger di Aceh</strong></h2><p>BANDA ACEH – Tesla secara resmi meluncurkan jaringan Supercharger pertamanya di Aceh dalam sebuah acara peresmian yang berlangsung meriah di pusat kota Banda Aceh. Kehadiran fasilitas ini disebut sebagai tonggak baru dalam pengembangan ekosistem kendaraan listrik di wilayah paling barat Indonesia.</p><p>Dalam sambutannya, perwakilan Tesla menjelaskan bahwa Aceh dipilih karena memiliki potensi besar sebagai destinasi wisata berkelanjutan dan terus berkembangnya minat masyarakat terhadap teknologi ramah lingkungan. Jaringan pengisian cepat ini diharapkan dapat mendukung mobilitas pengguna kendaraan listrik yang melintasi jalur utama Pulau Sumatra.</p><pre>php artisan serve</pre><p>Stasiun Supercharger tersebut dilengkapi delapan titik pengisian daya berkecepatan tinggi yang mampu mengisi baterai hingga 80 persen dalam waktu sekitar 25 menit. Area ini juga menyediakan ruang tunggu yang nyaman, akses internet gratis, serta kafe yang menyajikan produk lokal khas Nanggroe Aceh Darussalam.</p><p><figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image/png&quot;,&quot;filename&quot;:&quot;cover-5.png&quot;,&quot;filesize&quot;:1175034,&quot;height&quot;:1077,&quot;href&quot;:&quot;http://127.0.0.1:8000/storage/cl7E1oxw5KROG8LDoMt2Rlrh5jm3I2BKIjWhHUKc.png&quot;,&quot;url&quot;:&quot;http://127.0.0.1:8000/storage/cl7E1oxw5KROG8LDoMt2Rlrh5jm3I2BKIjWhHUKc.png&quot;,&quot;width&quot;:1400}\" data-trix-content-type=\"image/png\" data-trix-attributes=\"{&quot;caption&quot;:&quot;Portal Super Charging Station&quot;,&quot;presentation&quot;:&quot;gallery&quot;}\" class=\"attachment attachment--preview attachment--png\"><a href=\"http://127.0.0.1:8000/storage/cl7E1oxw5KROG8LDoMt2Rlrh5jm3I2BKIjWhHUKc.png\"><img src=\"http://127.0.0.1:8000/storage/cl7E1oxw5KROG8LDoMt2Rlrh5jm3I2BKIjWhHUKc.png\" width=\"1400\" height=\"1077\"><figcaption class=\"attachment__caption attachment__caption--edited\">Portal Super Charging Station</figcaption></a></figure><a href=\"facebook.com/hanis.siddiq\"><span style=\"text-decoration: underline;\">facebook</span></a>&nbsp;</p><p>Pemerintah daerah menyambut baik investasi ini dan menilai bahwa kehadiran infrastruktur kendaraan listrik akan membuka peluang usaha baru bagi masyarakat. Berbagai pelaku UMKM di sekitar lokasi pun diproyeksikan memperoleh manfaat dari meningkatnya jumlah pengunjung.</p><p>Selain itu, Tesla mengumumkan program edukasi mengenai kendaraan listrik bagi pelajar dan komunitas setempat. Program tersebut mencakup seminar, lokakarya, dan kegiatan demonstrasi teknologi untuk meningkatkan pemahaman masyarakat tentang transportasi berkelanjutan.</p><p>Para anggota komunitas otomotif di Aceh menyampaikan antusiasme mereka terhadap fasilitas baru ini. Mereka berharap ke depan akan hadir lebih banyak stasiun pengisian cepat di berbagai kabupaten sehingga perjalanan jarak jauh dengan kendaraan listrik menjadi semakin praktis.</p><p>Peresmian Supercharger ini menandai awal babak baru bagi transformasi transportasi di Aceh. Meskipun kisah ini sepenuhnya fiktif, gambaran tersebut menunjukkan bagaimana kolaborasi antara teknologi, pemerintah, dan masyarakat dapat mendorong masa depan mobilitas yang lebih bersih dan efisien.</p>', '01KX4Z99HT1ETE521QGE84QQ0J.png', 1, 2, 'not_featured', 'tesla-meluncurkan-super-charger-di-nad', NULL, '2026-07-09 19:56:37', '2026-07-12 21:15:37'),
(2, 'Oprit Jembatan Kutablang Bireuen Mulai Ditimbun, Progres Pembangunan Capai 71,80 Persen', '<p><strong>SERAMBINEWS.COM, BIREUEN</strong> – Proses <a href=\"https://aceh.tribunnews.com/tag/pembangunan\"><span style=\"text-decoration: underline;\">pembangunan</span></a> jembatan duplikasi <a href=\"https://aceh.tribunnews.com/tag/krueng-tingkeum\"><span style=\"text-decoration: underline;\">Krueng Tingkeum</span></a> di Kecamatan <a href=\"https://aceh.tribunnews.com/tag/kutablang\"><span style=\"text-decoration: underline;\">Kutablang</span></a>, Kabupaten <a href=\"https://aceh.tribunnews.com/tag/bireuen\"><span style=\"text-decoration: underline;\">Bireuen</span></a>, terus dikebut siang dan malam.</p><p>Sejak Sabtu (11/7/2026), pekerjaan oprit jembatan di sisi timur mulai dikerjakan.</p><p>Oprit merupakan bagian yang menghubungkan jalan nasional dengan kepala jembatan.</p><p>Sementara itu, oprit di sisi barat telah lebih dulu rampung dan lantai jembatan pada bagian tersebut juga sudah selesai dicor.</p><p>Pantauan Serambinews.com, abutment atau kepala jembatan di sisi timur telah selesai dicor beberapa waktu lalu.</p><p>Saat ini, satu unit alat berat melakukan penggalian di area oprit, kemudian dilanjutkan dengan penimbunan material yang dipadatkan sebagai akses menuju jembatan.</p><p>Asisten Barang Milik Negara (BMN) Balai Pelaksanaan Jalan Nasional (BPJN) Aceh Satker Wilayah I, Fachruddin, kepada Serambinews.com, Sabtu (11/7/2026), mengatakan bahwa saat ini juga sedang dilakukan erection Steel Plate Girder (SPG-57) atau pemasangan balok penyangga baja, serta perapian oprit arah Medan dan sejumlah pekerjaan pendukung lainnya.</p><p><figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image/jpeg&quot;,&quot;filename&quot;:&quot;Berita2.JPG&quot;,&quot;filesize&quot;:58537,&quot;height&quot;:450,&quot;href&quot;:&quot;http://127.0.0.1:8000/storage/770rChpIclH5kYIO9WHBroqe8wAMsWjkbP79jN9u.jpg&quot;,&quot;url&quot;:&quot;http://127.0.0.1:8000/storage/770rChpIclH5kYIO9WHBroqe8wAMsWjkbP79jN9u.jpg&quot;,&quot;width&quot;:800}\" data-trix-content-type=\"image/jpeg\" data-trix-attributes=\"{&quot;caption&quot;:&quot;Kutablang&quot;,&quot;presentation&quot;:&quot;gallery&quot;}\" class=\"attachment attachment--preview attachment--jpg\"><a href=\"http://127.0.0.1:8000/storage/770rChpIclH5kYIO9WHBroqe8wAMsWjkbP79jN9u.jpg\"><img src=\"http://127.0.0.1:8000/storage/770rChpIclH5kYIO9WHBroqe8wAMsWjkbP79jN9u.jpg\" width=\"800\" height=\"450\"><figcaption class=\"attachment__caption attachment__caption--edited\">Kutablang</figcaption></a></figure></p><p>Menurut Fachruddin, hingga Sabtu (11/7/2026), progres <a href=\"https://aceh.tribunnews.com/tag/pembangunan\"><span style=\"text-decoration: underline;\">pembangunan</span></a> jembatan telah mencapai 71,80 persen.</p><p>\"Setelah pekerjaan ini selesai dan dilanjutkan dengan tahapan berikutnya, progresnya akan kembali meningkat. Mudah-mudahan selama pelaksanaan tidak ada kendala. Para pekerja terus menyelesaikan pekerjaan siang dan malam,\" ujarnya.</p><p>Fachruddin juga mengimbau para pengendara agar berhati-hati saat melintasi jembatan bailey <a href=\"https://aceh.tribunnews.com/tag/krueng-tingkeum\"><span style=\"text-decoration: underline;\">Krueng Tingkeum</span></a>, <a href=\"https://aceh.tribunnews.com/tag/kutablang\"><span style=\"text-decoration: underline;\">Kutablang</span></a>.</p><p>Pasalnya, terdapat beberapa pelat besi yang bergeser dan bertumpuk sehingga berpotensi membahayakan pengguna jalan, terutama saat hujan karena permukaan menjadi licin dan rawan menyebabkan kendaraan tergelincir.</p><p><br></p>', '01KXCVSTBPQ8SW93771T1182XC.JPG', 1, 1, 'featured', 'oprit-jembatan-kutablang-bireuen-mulai-ditimbun-progres-pembangunan-capai-7180-persen', NULL, '2026-07-12 21:29:40', '2026-07-12 21:51:29'),
(3, 'PT. NINDYA KARYA Gerak Cepat, Jembatan Depan Pukesmas Syamtalira Bayu Capai 70% – Target Selesai 31 Juli', '<p>Aceh Utara ( DetikPost.id ) – Pembangunan jembatan yang terletak tepat di depan Puskesmas Syamtalira Bayu, Kecamatan Syamtalira Bayu, Kabupaten Aceh Utara, kini telah mencapai progres pengerjaan sekitar 70 persen. Pekerjaan ini dilaksanakan langsung oleh PT. NINDYA KARYA.</p><p>Meskipun secara administrasi anggaran penanganan bencana alam belum disahkan, Surat Perintah Mulai Kerja (SPMK) belum diterbitkan, dan kontrak kerja resmi pun belum ditandatangani, pihak pelaksana memilih untuk langsung bergerak cepat tanpa menunggu semua dokumen rampung.</p><p>Menurut keterangan dari PT. NINDYA KARYA, langkah ini diambil demi keselamatan dan kepentingan masyarakat luas. Jembatan tersebut merupakan bagian dari jalur utama penghubung Medan – Banda Aceh yang sangat vital. Pengerjaan dimulai lebih awal agar pembangunan segera selesai sebelum terjadi risiko musibah akibat kondisi jalur yang sebelumnya sudah dikhawatirkan rawan membahayakan.</p><p>&nbsp;<figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image/jpeg&quot;,&quot;filename&quot;:&quot;IMG-20260612-WA0023.jpg&quot;,&quot;filesize&quot;:192619,&quot;height&quot;:900,&quot;href&quot;:&quot;http://127.0.0.1:8000/storage/zgE2PWyCWGJGMthjDkPQuug86nwg5a1SDGE7HvQC.jpg&quot;,&quot;url&quot;:&quot;http://127.0.0.1:8000/storage/zgE2PWyCWGJGMthjDkPQuug86nwg5a1SDGE7HvQC.jpg&quot;,&quot;width&quot;:1600}\" data-trix-content-type=\"image/jpeg\" data-trix-attributes=\"{&quot;caption&quot;:&quot;jembatan bayu&quot;,&quot;presentation&quot;:&quot;gallery&quot;}\" class=\"attachment attachment--preview attachment--jpg\"><a href=\"http://127.0.0.1:8000/storage/zgE2PWyCWGJGMthjDkPQuug86nwg5a1SDGE7HvQC.jpg\"><img src=\"http://127.0.0.1:8000/storage/zgE2PWyCWGJGMthjDkPQuug86nwg5a1SDGE7HvQC.jpg\" width=\"1600\" height=\"900\"><figcaption class=\"attachment__caption attachment__caption--edited\">jembatan bayu</figcaption></a></figure></p><p>Kami bergerak cepat bukan tanpa alasan, tujuannya agar jembatan ini bisa segera digunakan dan menjamin keamanan lalu lintas. Kami menargetkan seluruh pekerjaan selesai sepenuhnya paling lambat pada 31 Juli 2026,” jelas perwakilan perusahaan.</p><p>Pihaknya juga menegaskan bahwa meskipun memulai pekerjaan lebih awal, proses penyelesaian dokumen administrasi dan keuangan tetap dijalankan secara beriringan agar tetap sesuai dengan ketentuan peraturan yang berlaku.</p><p>&nbsp;</p><p>Warga sekitar menyambut baik langkah ini dan berharap target penyelesaian dapat tercapai tepat waktu, sehingga akses perjalanan serta pelayanan ke fasilitas kesehatan menjadi lebih aman dan lancar.</p>', '01KXCW24T4M2DSYCD2VAR3MYP3.jpg', 1, 3, 'not_featured', 'pt-nindya-karya-gerak-cepat-jembatan-depan-pukesmas-syamtalira-bayu-capai-70-target-selesai-31-juli', NULL, '2026-07-12 21:34:13', '2026-07-12 21:34:13'),
(4, '5 Fakta Film Kungfu Soccer Garapan Stephen Chow', '<p>Jakarta, CNN Indonesia -- Stephen Chow kembali ke layar lebar dengan film terbaru Kung Fu Soccer. Film itu disebut hadir sekitar 25 tahun setelah karya komedi hit fenomenal Chow, Shaolin Soccer (2001).<br>Seperti film-filmnya yang lain, Chow menyutradarai dan menulis proyek ini, tetapi ia tidak berperan di dalamnya. Ia berhenti berakting setelah filmnya tahun 2008, CJ7.<br><br>Namun, Kung Fu Soccer menandai akhir dari masa hiatus sang sutradara selama tujuh tahun setelah terakhir kali menggarap The New King of Comedy pada 2019.<br><br>Kali ini, ia menuliskan cerita tentang perjuangan tim sepak bola putri. Mengawali langkah sebagai tim yang dipandang sebelah mata, mereka bangkit menjadi penantang gelar juara dengan memadukan teknik bela diri di lapangan hijau.<br><br><figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image/png&quot;,&quot;filename&quot;:&quot;film-china-kung-fu-soccer-2026-1783911866019_169.png&quot;,&quot;filesize&quot;:43106,&quot;height&quot;:366,&quot;href&quot;:&quot;http://127.0.0.1:8000/storage/lp6YExLOxE5BXAtxAEBRPAJE2GkHoz0csSiIJmGx.jpg&quot;,&quot;url&quot;:&quot;http://127.0.0.1:8000/storage/lp6YExLOxE5BXAtxAEBRPAJE2GkHoz0csSiIJmGx.jpg&quot;,&quot;width&quot;:650}\" data-trix-content-type=\"image/png\" data-trix-attributes=\"{&quot;presentation&quot;:&quot;gallery&quot;}\" class=\"attachment attachment--preview attachment--png\"><a href=\"http://127.0.0.1:8000/storage/lp6YExLOxE5BXAtxAEBRPAJE2GkHoz0csSiIJmGx.jpg\"><img src=\"http://127.0.0.1:8000/storage/lp6YExLOxE5BXAtxAEBRPAJE2GkHoz0csSiIJmGx.jpg\" width=\"650\" height=\"366\"><figcaption class=\"attachment__caption\"><span class=\"attachment__name\">film-china-kung-fu-soccer-2026-1783911866019_169.png</span> <span class=\"attachment__size\">42.1 KB</span></figcaption></a></figure><br><br><strong>Berikut 5 fakta Kung Fu Soccer Stephen Chow.</strong><br><br>Sekuel Shaolin Soccer?<br>Kung Fu Soccer bukan sekuel langsung Shaolin Soccer. Namun, film itu disebut menjadi sekuel spin-off yang masih memiliki inti cerita sama dengan Shaolin Soccer.<br><br>Jika Shaolin Soccer fokus ahli bela diri yang ingin mengubah nasib dengan menjadi pemain sepak bola, Kung Fu Soccer menceritakan tim sepak bola putri Emei yang mengintegrasikan teknik bela diri ke dalam permainan mereka.<br><br>Para bintang<br>Kung Fu Soccer dibintangi Zhang Xiaofei, Lay Zhang, serta Dilraba Dilmurat. Proyek layar lebar ini kian semarak berkat penampilan khusus dari aktris senior Hong Kong Carina Lau dan aktor papan atas Jepang Takeru Satoh.<br><br>Pilihan Redaksi<br>Bintang Shaolin Soccer Sewa 18 Studio Dukung Kung Fu Soccer<br>Siapa Aktor Shaolin Soccer yang Kembali di Kung Fu Soccer?<br>Stephen Chow turut menggandeng deretan nama beken lainnya seperti Sisley Choi, Louis Cheung, MC Jin, hingga aktor Hollywood Jimmy O. Yang yang hadir memberikan dukungan sebagai kameo.<br><br>Beberapa nama dari film pendahulunya, Shaolin Soccer, pun dipastikan kembali. Salah satunya adalah Wong Yat-fei yang sebelumnya menjadi Iron Head.<br><br>Selain Wong Yat-fei, Lam Chi-cung juga kembali. Dalam Shaolin Soccer, aktor kelahiran 1976 itu berperan sebagai Light Weight atau the Sixth Junior Brother yang memanfaatkan berat badannya untuk melayang dan melompat di udara.<br><br>Namun, Lam Chi-cung kini tak lagi berperan di depan kamera. Dalam Kung Fu Soccer, ia berkolaborasi dengan Stephen Chow sebagai sutradara pelaksana.<br><br>Keterlibatan atlet<br>Demi menjaga autentisitas tema olahraga tersebut, Stephen Chow juga melibatkan mantan kiper tim nasional putri China Zhao Lina serta bek tim nasional Li Jiayue dalam Kung Fu Soccer.<br><br></p>', '01KXMB4H3S8GZTB0XYCPB338QM.png', 4, 4, 'featured', '5-fakta-film-kungfu-soccer-garapan-stephen-chow', NULL, '2026-07-15 19:12:21', '2026-07-15 19:12:21'),
(5, 'Jadwal Tayang The Batman Part II Ditunda Lagi ke Februari 2028', '<p>Jakarta, CNN Indonesia -- The Batman Part II dibintangi Robert Pattinson kembali ditunda. Film garapan sutradara Matt Reeves itu kini dijadwalkan tayang di bioskop pada 18 Februari 2028 atau hampir enam tahun setelah The Batman pada Maret 2022.<br>Jadwal tayang baru The Batman II diumumkan Matt Reeves melalui link Vimeo yang diunggah ke media sosial. Unggahan itu disertai cuplikan uji kamera pertama kembalinya Robert Pattinson sebagai the Dark Knight.<br><br>Cuplikan tersebut menampilkan lampu yang perlahan menyala dengan Batman mulai menoleh ke arah kamera. Batman berdiri di tengan deru sirene dan salju, disertai musik yang semakin intens sebelum tanggal rilis baru muncul.<br><br>Unggahan tersebut menandai penundaan perilisan The Batman Part II yang kedua kali. Film itu awalnya dijadwalkan tayang pada 2 Oktober 2026, dan Warner Bros. menundanya hingga 1 Oktober 2027.<br><br>Kini, Reeves mengumumkan film itu diundur ke 18 Februari 2028. Memindahkan film ke tahun 2028 akan memberi Reeves waktu tambahan dalam pasca-produksi.<br><br>Robert Pattinson dalam cuplikan first camera test The Batman Part II yang dirilis pada Juli 2026. Foto: (Matt Reeves via Vimeo)<br>Salah satu kepala DC Studios, James Gunn, membela penundaan rilis pertama dengan menjelaskan bahwa \"cukup umum\" bagi film-film beranggaran besar untuk memiliki jeda yang panjang sebelum sekuelnya dirilis.<br><br>The Batman Part II diarahkan Matt Reeves yang juga berlaku selaku penulis skenario bersama Mattson Tomlin. Detail plot masih dirahasiakan, begitu pula peran yang dimainkan para pemeran pendukung film tersebut.<br><br>Selain Robert Pattison, sekuel The Batman itu juga bakal dibintangi Scarlett Johansson, Sebastian Stan, Charles Dance, Brian Tyree Henry, dan Sebastian Koch.<br><br></p>', '01KXMB8BHD95B1GWHZ0JP3TSCN.png', 4, 4, 'not_featured', 'jadwal-tayang-the-batman-part-ii-ditunda-lagi-ke-februari-2028', NULL, '2026-07-15 19:14:26', '2026-07-15 19:14:33'),
(6, 'Jadi Spider-Man Bukan Jaminan, Tom Holland Curhat Kirim DM Erling Haaland tapi Tak Dibalas', '<p>KOMPAS.com- Tom Holland curhat tak dapat balasan pesan dari bintang sepak bola Norwegia, Erling Haaland. Bintang Spider-Man itu mengatakan mengirimkan pesan untuk Haaland melalui media sosial. \"Ya, ya (saya mengirim pesan kepadanya),\" Holland mengaku di acara The Tonight Show. \"Dan saya beri tahu kalian, itu jenis pengalaman yang merendahkan hati yang penting bagi para aktor. Kamu seperti, \'Saya akan mengirim pesan kepadanya, saya akan mengajaknya makan malam,\'\" ungkapnya.&nbsp;</p><p>Baca juga: Disleksia Buat Tom Holland Sangat Takut hingga Menolak Tampil di SNL Alasan dia menyebut itu sebagai pengalaman \'merendahkan hati\' karena bahkan nama besar seorang aktor tak membuat dia mendapat balasan dari Haaland. Haaland, Viking yang Menaklukkan Hati Amerika Artikel Kompas.id \"Bahkan tidak mendapat balasan, tidak ada alasan, tidak ada \'Saya sibuk malam ini, saya sedang bermain sepak bola,\' tidak ada sama sekali,\" ungkapnya. Bintang The Odyssey itu melanjutkan dengan mengatakan bahwa dia mengirim pesan kepada Haaland setelah bertemu langsung dengannya di Grand Prix F1 Monaco pada bulan Juni.</p><p>&nbsp;\"Saya sedang menonton Lewis (Hamilton) balapan, dan saya melihat (Haaland),\" kata Holland kepada Fallon. Baca juga: Zendaya Pamer Selfie Bareng Tom Holland setelah Dikabarkan Menikah \"Dia berada di ruang VIP di seberang saya, dan saya pikir saya akan mencoba peruntungan. Mengiriminya pesan singkat,\" ujarnya tentang awal momen itu. Meskipun Fallon menyarankan bahwa Holland mungkin akan mendapat manfaat dari menghubungi Haaland lagi, aktor \"Spider-Man\" itu menanggapi dengan candaan. Bahwa dia tidak berpikir bintang sepak bola itu akan mengatakan \"ya\" setelah Inggris, tim sepak bola favorit Holland, baru-baru ini mengalahkan Norwegia untuk melaju ke semifinal Piala Dunia FIFA tahun ini.</p><p>&nbsp;\"Kurasa dia tidak akan makan malam denganku setelah (kejadian) beberapa hari yang lalu,\" kata Holland. \"Ya. Dia mungkin sedikit sakit hati,\" kata Fallon menanggapi. Holland melanjutkan dengan mengatakan bahwa dia masih mengagumi Haaland, menyebutnya \"luar biasa\" dan \"legenda sejati.\"&nbsp;</p><p>Baca juga: Pesan Sederhana Haaland di Ruang Ganti Sebelum Hancurkan Brasil Sementara itu, dalam sebuah wawancara baru-baru ini dengan acara bincang-bincang Norwegia \"A-laget,\" Haaland mengakui bahwa dia bukan orang yang suka menonton film. \"Saya tidak terlalu sering menonton film, jadi saya tidak tahu siapa orang-orang itu,\" jelas pemain sepak bola Norwegia itu. \"Ada satu orang yang bertanya apakah kami bisa pergi makan malam, tetapi saya belum pernah melihatnya, jadi saya tidak repot-repot menjawab. Saya tidak ingin menjawab orang yang tidak dikenal,\" lanjutnya.&nbsp;<br><br></p>', '01KXMC45FKAQPW368N55M46MWS.jpg', 4, 4, 'not_featured', 'jadi-spider-man-bukan-jaminan-tom-holland-curhat-kirim-dm-erling-haaland-tapi-tak-dibalas', NULL, '2026-07-15 19:29:37', '2026-07-15 19:29:37'),
(7, 'Kung Fu Soccer Garapan Stephen Chow Tayang di Indonesia 12 Agustus 2026, Dibintangi Dilraba Dilmurat', '<p><a href=\"https://pontianakpost.jawapos.com/tag/kung-fu-soccer\">Kung Fu Soccer</a>, film terbaru garapan <a href=\"https://pontianakpost.jawapos.com/tag/stephen-chow\">Stephen Chow</a> yang dibintangi <a href=\"https://pontianakpost.jawapos.com/tag/dilraba-dilmurat\">Dilraba Dilmurat</a>, dipastikan tayang di bioskop Indonesia mulai 12 Agustus 2026. Kepastian itu diumumkan Encore Films, distributor yang memegang hak distribusi internasional film tersebut di luar China daratan.</p><p>Film ini menjadi karya penyutradaraan pertama <a href=\"https://pontianakpost.jawapos.com/tag/stephen-chow\">Stephen Chow</a> dalam tujuh tahun terakhir. Kehadirannya juga menandai comeback sineas legendaris tersebut setelah The New King of Comedy yang dirilis pada 2019.</p><h2>Encore Films Bawa <a href=\"https://pontianakpost.jawapos.com/tag/kung-fu-soccer\">Kung Fu Soccer</a> ke Indonesia</h2><p>Encore Films yang berbasis di Singapura memperoleh hak distribusi global <a href=\"https://pontianakpost.jawapos.com/tag/kung-fu-soccer\">Kung Fu Soccer</a> di luar China daratan. Sementara distribusi di China ditangani oleh Maoyan Entertainment.</p><p>Melalui akun media sosial resminya, Encore Films mengumumkan penayangan Kung Fu Soccer di Indonesia pada 12 Agustus 2026.</p><p>Dalam pengumuman itu, distributor menggambarkan film tersebut sebagai perpaduan aksi kung fu, sepak bola, dan komedi khas <a href=\"https://pontianakpost.jawapos.com/tag/stephen-chow\">Stephen Chow</a>.</p><p>\"Penantian akhirnya usai... Stephen Chow kembali dengan <a href=\"https://pontianakpost.jawapos.com/tag/kung-fu-soccer\"><em>Kung Fu Soccer</em></a>! Aksi kung fu legendaris. Sepak bola penuh adrenalin. Komedi khas <a href=\"https://pontianakpost.jawapos.com/tag/stephen-chow\">Stephen Chow</a> yang selalu bikin ngakak.\"</p><p>Distributor juga menyebut film tersebut menghadirkan aksi spektakuler dan kisah tim underdog yang berjuang mencetak sejarah.</p><p><a href=\"https://pontianakpost.jawapos.com/tag/dilraba-dilmurat\">Dilraba Dilmurat</a> Jadi Andalan di Film Comeback <a href=\"https://pontianakpost.jawapos.com/tag/stephen-chow\">Stephen Chow</a></p><p>Salah satu daya tarik utama <a href=\"https://pontianakpost.jawapos.com/tag/kung-fu-soccer\">Kung Fu Soccer</a> adalah kehadiran <a href=\"https://pontianakpost.jawapos.com/tag/dilraba-dilmurat\">Dilraba Dilmurat</a> sebagai pemeran utama bersama Zhang Xiaofei dan Lay Zhang.</p><p>Film ini juga menghadirkan penampilan spesial Carina Lau dan Takeru Satoh.</p>', '01KXMCA2DCR56JTXQ7H9D4CK59.jpg', 4, 4, 'not_featured', 'kung-fu-soccer-garapan-stephen-chow-tayang-di-indonesia-12-agustus-2026-dibintangi-dilraba-dilmurat', NULL, '2026-07-15 19:32:51', '2026-07-15 19:32:51');

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `occupation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `name`, `slug`, `occupation`, `avatar`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Sabrina Juli', 'sabrina-juli', 'Designer', '01KX4ESMKKWF1MGSN8GKA1WXJ4.png', NULL, '2026-07-09 15:08:27', '2026-07-09 15:08:27'),
(2, 'Ijan Malawi', 'ijan-malawi', 'Reporter', '01KX4EVQTJ7QBSREF40ZZXPXWA.png', NULL, '2026-07-09 15:09:36', '2026-07-09 15:09:36'),
(3, 'Sandiaga Hasibuan', 'sandiaga-hasibuan', 'Developer', '01KX4EXYKXG0JDR5QPNN2QAAJB.png', NULL, '2026-07-09 15:10:49', '2026-07-09 15:10:49'),
(4, 'Hanis', 'hanis', 'Programer', '01KXCW5V4BE2QDA3Y5YGKCATCK.png', NULL, '2026-07-12 21:36:14', '2026-07-12 21:36:14'),
(5, 'Kausar', 'kausar', 'Journalist', '01KXCW75BYKJ03WFTXETHCTSHF.png', NULL, '2026-07-12 21:36:57', '2026-07-12 21:36:57'),
(6, 'Nindya', 'nindya', 'Designer', '01KXCW894JBH5G4H0829E37FZ2.png', NULL, '2026-07-12 21:37:34', '2026-07-12 21:37:34');

-- --------------------------------------------------------

--
-- Table structure for table `banner_ads`
--

CREATE TABLE `banner_ads` (
  `id` bigint UNSIGNED NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` enum('active','not_active') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'not_active',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banner_ads`
--

INSERT INTO `banner_ads` (`id`, `link`, `type`, `thumbnail`, `is_active`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'https://daftar-sscasn.bkn.go.id/login', 'square', '01KX4W17T31R7PWSCBBTN163KG.png', 'active', NULL, '2026-07-09 18:59:48', '2026-07-09 19:08:10'),
(2, 'https://daftar-sscasn.bkn.go.id', 'banner', '01KX4WEHG8RN7ZJGHWSTFX7YA2.png', 'active', NULL, '2026-07-09 19:07:04', '2026-07-13 00:27:20'),
(3, 'https://daftar-sscasn.bkn.go.id/resume/96d14d8e-9aaa-4fb1-8def-b121b7c51ef5', 'banner', '01KX4WNM14T82PC74BNQWV5D9S.png', 'active', '2026-07-13 00:27:27', '2026-07-09 19:10:56', '2026-07-13 00:27:27'),
(4, 'https://buildwithangga.com/', 'square', '01KXYVBR8SKB2ZRNCS1PVFMAJ7.png', 'active', NULL, '2026-07-19 21:08:19', '2026-07-19 21:08:19');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('laravel-cache-77de68daecd823babbb58edb1c8e14d7106e83bb', 'i:1;', 1784520556),
('laravel-cache-77de68daecd823babbb58edb1c8e14d7106e83bb:timer', 'i:1784520556;', 1784520556),
('laravel-cache-livewire-rate-limiter:a17961fa74e9275d529f489537f179c05d50c2f3', 'i:3;', 1784519647),
('laravel-cache-livewire-rate-limiter:a17961fa74e9275d529f489537f179c05d50c2f3:timer', 'i:1784519647;', 1784519647);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `icon`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Global', 'global', '01KX2W8PK2JBMANTPN0SJHKXYR.png', NULL, '2026-07-09 00:25:23', '2026-07-09 00:25:23'),
(2, 'Status Up', 'status-up', '01KX2WG1RXAAKK5SF0C1HCMX37.png', NULL, '2026-07-09 00:29:24', '2026-07-09 00:29:24'),
(3, 'Car', 'car', '01KX2WGNTS6KG6MF0RBG7ZD5V0.png', NULL, '2026-07-09 00:29:45', '2026-07-09 00:29:45'),
(4, 'Entertainment', 'entertainment', '01KXM9GXVBBJGH2MKGVM48Q5J1.png', NULL, '2026-07-15 18:44:10', '2026-07-15 18:44:10'),
(5, 'Politic', 'politic', '01KXMCN56HKAJ8EVXCFDNJFY49.png', NULL, '2026-07-15 19:38:54', '2026-07-15 19:38:54'),
(6, 'Sport', 'sport', '01KXMCQE4F0PD8J20KQF65X1P2.png', NULL, '2026-07-15 19:40:09', '2026-07-15 19:40:09'),
(7, 'Food', 'food', '01KXMCS73KA1SNZQ70XAGCMJ0J.png', NULL, '2026-07-15 19:41:07', '2026-07-15 19:41:07');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2026_07_09_040928_create_categories_table', 1),
(5, '2026_07_09_041023_create_authors_table', 1),
(6, '2026_07_09_041033_create_banner_ads_table', 1),
(7, '2026_07_09_041128_create_article_news_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('lJkJJF7GRhtnMWVixn6FvvPOLOl2XbQX0oVmLEYW', 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiTVFDYmdCTjZHNXRud1ViZ29VUWdkOXJVTDJqQ3ZwNTNaN2dIQ3I2OCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MTI5OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvZGV0YWlscy9rdW5nLWZ1LXNvY2Nlci1nYXJhcGFuLXN0ZXBoZW4tY2hvdy10YXlhbmctZGktaW5kb25lc2lhLTEyLWFndXN0dXMtMjAyNi1kaWJpbnRhbmdpLWRpbHJhYmEtZGlsbXVyYXQiO3M6NToicm91dGUiO3M6MTM6ImZyb250LmRldGFpbHMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjM6InVybCI7YTowOnt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MztzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2NDoiYzJiNDJkOTU1NTRmZjJkNzM5NTVhZmI0YmJlMTI1MDAwNzhhNzk3N2RkZWIyOTIyMTYwYjhjODNmN2Q2ODUyZCI7czo4OiJmaWxhbWVudCI7YTowOnt9fQ==', 1784522099);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Test User', 'test@example.com', '2026-07-08 23:33:16', '$2y$12$R6ZzFWu17gqTX38FUIW40.yW9supbPzapq3wLnm5821OFAo1S4W3.', 'xNcgV4FwCD', '2026-07-08 23:33:17', '2026-07-08 23:33:17'),
(2, 'admin', 'admin@gmail.com', '2026-07-08 23:33:17', '$2y$12$dorSgpTgCN54CYK84ZNpJevty9gYNzHMACYc0fotQ6T/9fmxG78l2', 'y5H4Qy53RV', '2026-07-08 23:33:17', '2026-07-08 23:33:17'),
(3, 'Maga Team', 'team@maga.com', '2026-07-08 23:33:17', '$2y$12$YadpDPNrZfp4lbKbjnF3qOcDgGU.e/yyLtRuQdYH8JPokdrEvIYC.', 'v8EqNJL1JlNrMOSMImeWZBpwSXUO8lGSWtJmycmnptxU2Nq4PHr33yB5IAMa', '2026-07-08 23:33:17', '2026-07-08 23:33:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `article_news`
--
ALTER TABLE `article_news`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `article_news_slug_unique` (`slug`),
  ADD KEY `article_news_category_id_foreign` (`category_id`),
  ADD KEY `article_news_author_id_foreign` (`author_id`);

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `authors_slug_unique` (`slug`);

--
-- Indexes for table `banner_ads`
--
ALTER TABLE `banner_ads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_expiration_index` (`expiration`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_locks_expiration_index` (`expiration`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `article_news`
--
ALTER TABLE `article_news`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `banner_ads`
--
ALTER TABLE `banner_ads`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `article_news`
--
ALTER TABLE `article_news`
  ADD CONSTRAINT `article_news_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `article_news_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
