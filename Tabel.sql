--------------------------------------//Buat Tabel Apoteker//---------------- 
CREATE TABLE `apoteker` (
 `ID_Apoteker` int(11) NOT NULL,
 `Nama` varchar(100) NOT NULL,
 `Spesialisasi` varchar(100) DEFAULT NULL,
 `Nomor_Telepon` varchar(15) DEFAULT NULL,
 PRIMARY KEY (`ID_Apoteker`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci

//Mengisi tabel apoteker//
INSERT INTO apoteker (ID_Apoteker, Nama, Spesialisasi, Nomor_Telepon) VALUES
(101, 'Dr. Kevin Tulung', 'Spesialis Mata', '08111111111'),
(102, 'Dr. Alifa Sara', 'Spesialis Gigi', '08222222222'),
(103, 'Dr. Sarah Fanlee', 'Spesialis Kecantikan', '08333333333'),
(104, 'Dr. Manda', 'Spesialis THT', '08444444444'),
(105, 'Dr. Azandra Budiluhur', 'Spesialis Kulit Dan Kelamin', '08555555555'),
(107, 'Dr. Towel Stefanus', 'Spesialis Penyakit Dalam', '08666666666'),
(108, 'Dr. Marlin Sibabanuki', 'Spesialis Penyakit Dalam', '08777777777');

--------------------------------------//Buat Tabel detail_transaksi //----------------
CREATE TABLE `detail_transaksi` (
 `ID_Transaksi` int(11) NOT NULL,
 `ID_Obat` int(11) NOT NULL,
 `Jumlah` int(11) NOT NULL,
 PRIMARY KEY (`ID_Transaksi`,`ID_Obat`),
 KEY `ID_Obat` (`ID_Obat`),
 CONSTRAINT `detail_transaksi_ibfk_1` FOREIGN KEY (`ID_Transaksi`) REFERENCES `transaksi` (`ID_Transaksi`),
 CONSTRAINT `detail_transaksi_ibfk_2` FOREIGN KEY (`ID_Obat`) REFERENCES `obat` (`ID_Obat`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci


//Mengisi Tabel detail_transaksi//
INSERT INTO detail_transaksi (ID_Transaksi, ID_Obat, Jumlah) VALUES
(1201, 11, 3),
(1202, 12, 2),
(1203, 13, 4),
(1204, 14, 1),
(1205, 15, 2),
(1206, 16, 3),
(1207, 17, 2);

--------------------------------------//Buat Tabel Obat //----------------
CREATE TABLE `obat` (
 `ID_Obat` int(11) NOT NULL,
 `Nama_Obat` varchar(100) NOT NULL,
 `Harga` decimal(10,2) NOT NULL,
 PRIMARY KEY (`ID_Obat`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci

//Membuat Tabel Obat//
INSERT INTO obat (ID_Obat, Nama_Obat, Harga) VALUES
(11, 'Loratadine', 41000.00),
(12, 'Omeprazole', 64000.00),
(13, 'Paracetamol', 13000.00),
(14, 'Amoxicillin', 180000.00),
(15, 'Atorvastatin', 18000.00),
(16, 'Metformin', 54000.00),
(17, 'Ibuprofen', 35000.00);




--------------------------------------//Buat Tabel Pelanggan //----------------

CREATE TABLE `pelanggan` (
 `ID_Pelanggan` int(11) NOT NULL,
 `Nama` varchar(100) NOT NULL,
 `Alamat` text DEFAULT NULL,
 `Tanggal_Lahir` date DEFAULT NULL,
 `Nomor_Telepon` varchar(15) DEFAULT NULL,
 `Nama_Asuransi` varchar(30) DEFAULT NULL,
 `Nomor_Polisi` varchar(10) DEFAULT NULL,
 PRIMARY KEY (`ID_Pelanggan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci

//Mengisi Tabel Pelanggan//
INSERT INTO pelanggan (ID_Pelanggan, Nama, Alamat, Tanggal_Lahir, Nomor_Telepon, Nama_Asuransi, Nomor_Polisi) VALUES
(1, 'Dhani', 'Cikarang Selatan', '2004-05-21', '08130203814', 'AIA Financial', 'B 7654 AGM'),
(2, 'Tiffany', 'Bekasi Timur', '2000-01-20', '08567891234', 'Axa Financial Indonesia', 'B 8390 TTC'),
(3, 'Dadan Mahardika', 'Bekasi Timur', '1999-09-09', '08234567899', 'Asuransi Jiwa BCA', 'B 9696 KKA'),
(4, 'Robbi Jae', 'Jakarta Timur', '2001-10-18', '08165432199', 'AIA Financial', 'B 9871 PAX'),
(5, 'Rifky Alwan', 'Bogor', '1998-03-29', '08131234571', 'BNI Life Insurance', 'F 14 QQQ'),
(6, 'Dhean Shafwan', 'Kabupaten Bandung', '1993-10-25', '08965678901', 'Asuransi Bersama', 'U 7894 BAX'),
(7, 'Nopal Ramdhani', 'Bekasi Selatan', '1990-01-15', '08456789012', 'BNI Life Insurance', 'B 4567 ADA');

--------------------------------------//Buat Tabel  Transaksi //----------------
	
CREATE TABLE `transaksi` (
 `ID_Transaksi` int(11) NOT NULL,
 `ID_Pelanggan` int(11) DEFAULT NULL,
 `ID_Apoteker` int(11) DEFAULT NULL,
 `Tanggal_Transaksi` date NOT NULL,
 `Total_Biaya` decimal(10,2) DEFAULT NULL,
 PRIMARY KEY (`ID_Transaksi`),
 KEY `ID_Pelanggan` (`ID_Pelanggan`),
 KEY `ID_Apoteker` (`ID_Apoteker`),
 CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`ID_Pelanggan`) REFERENCES `pelanggan` (`ID_Pelanggan`),
 CONSTRAINT `transaksi_ibfk_2` FOREIGN KEY (`ID_Apoteker`) REFERENCES `apoteker` (`ID_Apoteker`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci

//Mengisi Tabel Transaksi//
INSERT INTO transaksi (ID_Transaksi, ID_Pelanggan, ID_Apoteker, Tanggal_Transaksi, Total_Biaya) VALUES
(1201, 1, 102, '2024-03-14', 450000.00),
(1202, 2, 104, '2024-04-13', 980000.00),
(1203, 3, 101, '2024-05-04', 1100000.00),
(1204, 4, 103, '2024-05-10', 655000.00),
(1205, 5, 105, '2024-05-11', 1800000.00),
(1206, 6, 107, '2024-05-26', 2270000.00),
(1207, 7, 108, '2024-06-17', 5670000.00);
