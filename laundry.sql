CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `nomor_telepon` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

CREATE TABLE `order` (
  `id` INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `jenis_laundry` VARCHAR(8) DEFAULT NULL,
  `jumlah_barang` INT(3) DEFAULT NULL,
  `waktu_pengambilan` DATE DEFAULT NULL,
  `waktu_pengantaran` DATE DEFAULT NULL,
  `alamat` VARCHAR (80) DEFAULT NULL,
  `catatan` VARCHAR (128) DEFAULT NULL,
  `garis_lintang` FLOAT(10, 6) DEFAULT NULL,
  `garis_bujur` FLOAT(10, 6) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

CREATE TABLE `harga` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_barang` varchar(30) DEFAULT NULL,
  `harga` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;