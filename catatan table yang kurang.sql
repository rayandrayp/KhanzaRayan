-- booking operasi = kd_ruang_ok
-- pemeriksaan_ralan = spo2, evaluasi
-- pemeriksaan_ranap = spo2, evaluasi
-- penjualan = ppn
-- resep_obat = tgl_penyerahan, jam_penyerahan
-- set_akun = Bayar_JM_Dokter, PPN_Masukan
-- set_harga_obat = ppn
-- template_laboratorium = alias(delete)
-- 



CREATE TABLE IF NOT EXISTS `akun_bayar_hutang` (
  `nama_bayar` varchar(50) NOT NULL,
  `kd_rek` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`nama_bayar`),
  KEY `kd_rek` (`kd_rek`),
  CONSTRAINT `akun_bayar_hutang_ibfk_1` FOREIGN KEY (`kd_rek`) REFERENCES `rekening` (`kd_rek`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping structure for table sik_ori.antriapotek2
CREATE TABLE IF NOT EXISTS `antriapotek2` (
  `no_resep` varchar(14) DEFAULT NULL,
  `status` enum('0','1') DEFAULT NULL,
  `no_rawat` varchar(17) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table sik_ori.antriapotek3
CREATE TABLE IF NOT EXISTS `antriapotek3` (
  `no_resep` varchar(14) DEFAULT NULL,
  `status` enum('0','1') DEFAULT NULL,
  `no_rawat` varchar(17) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table sik_ori.antriaps
CREATE TABLE IF NOT EXISTS `antriaps` (
  `no_pernyataan` varchar(20) DEFAULT NULL,
  `no_rawat` varchar(17) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table sik_ori.antrilabmb
CREATE TABLE IF NOT EXISTS `antrilabmb` (
  `status` enum('0','1') DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table sik_ori.antrilabmb2
CREATE TABLE IF NOT EXISTS `antrilabmb2` (
  `status` enum('0','1') DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table sik_ori.antrilabpa
CREATE TABLE IF NOT EXISTS `antrilabpa` (
  `status` enum('0','1') DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table sik_ori.antrilabpa2
CREATE TABLE IF NOT EXISTS `antrilabpa2` (
  `status` enum('0','1') DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table sik_ori.antrilabpk
CREATE TABLE IF NOT EXISTS `antrilabpk` (
  `status` enum('0','1') DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table sik_ori.antrilabpk2
CREATE TABLE IF NOT EXISTS `antrilabpk2` (
  `status` enum('0','1') DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Data exporting was unselected.


-- Dumping structure for table sik_ori.antriloketcetak
CREATE TABLE IF NOT EXISTS `antriloketcetak` (
  `tanggal` date NOT NULL,
  `jam` time DEFAULT NULL,
  `nomor` varchar(4) NOT NULL,
  PRIMARY KEY (`tanggal`,`nomor`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table sik_ori.antripemulangan
CREATE TABLE IF NOT EXISTS `antripemulangan` (
  `no_rawat` varchar(17) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table sik_ori.antripernyataanumum
CREATE TABLE IF NOT EXISTS `antripernyataanumum` (
  `no_pernyataan` varchar(20) DEFAULT NULL,
  `no_rawat` varchar(17) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table sik_ori.antripersetujuan
CREATE TABLE IF NOT EXISTS `antripersetujuan` (
  `no_pernyataan` varchar(20) DEFAULT NULL,
  `no_rawat` varchar(17) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table sik_ori.antripersetujuanumum
CREATE TABLE IF NOT EXISTS `antripersetujuanumum` (
  `no_surat` varchar(20) DEFAULT NULL,
  `no_rawat` varchar(17) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table sik_ori.antripoli
CREATE TABLE IF NOT EXISTS `antripoli` (
  `kd_dokter` varchar(20) DEFAULT NULL,
  `kd_poli` char(5) DEFAULT NULL,
  `status` enum('0','1') DEFAULT NULL,
  `no_rawat` varchar(17) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table sik_ori.antriradiologi
CREATE TABLE IF NOT EXISTS `antriradiologi` (
  `status` enum('0','1') DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table sik_ori.antriradiologi2
CREATE TABLE IF NOT EXISTS `antriradiologi2` (
  `status` enum('0','1') DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Kolom kelas berbeda
-- Dumping structure for table sik_dev.aplicare_ketersediaan_kamar
CREATE TABLE IF NOT EXISTS `aplicare_ketersediaan_kamar` (
  `kode_kelas_aplicare` varchar(15) NOT NULL DEFAULT '',
  `kd_bangsal` char(5) NOT NULL DEFAULT '',
  `kelas` enum('KELAS I','KELAS II','KELAS III','UTAMA','VIP','VVIP','-','ICU','ICCU','NICU','PICU','IGD','UGD','RUANG BERSALIN','HCU','RUANG ISOLASI') NOT NULL,
  `kapasitas` int(11) DEFAULT NULL,
  `tersedia` int(11) DEFAULT NULL,
  `tersediapria` int(11) DEFAULT NULL,
  `tersediawanita` int(11) DEFAULT NULL,
  `tersediapriawanita` int(11) DEFAULT NULL,
  PRIMARY KEY (`kode_kelas_aplicare`,`kd_bangsal`,`kelas`) USING BTREE,
  KEY `kd_bangsal` (`kd_bangsal`) USING BTREE,
  KEY `kapasitas` (`kapasitas`) USING BTREE,
  KEY `tersedia` (`tersedia`) USING BTREE,
  KEY `tersediapria` (`tersediapria`) USING BTREE,
  KEY `tersediawanita` (`tersediawanita`) USING BTREE,
  KEY `tersediapriawanita` (`tersediapriawanita`) USING BTREE,
  CONSTRAINT `aplicare_ketersediaan_kamar_ibfk_1` FOREIGN KEY (`kd_bangsal`) REFERENCES `bangsal` (`kd_bangsal`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;


-- kolom biokimia, fisik_klinis, diagnosis, intervensi_gizi, monitoring_evaluasi -> 1000
-- Dumping structure for table sik_ori.asuhan_gizi
CREATE TABLE IF NOT EXISTS `asuhan_gizi` (
  `no_rawat` varchar(17) NOT NULL,
  `tanggal` date NOT NULL,
  `antropometri_bb` char(5) DEFAULT NULL,
  `antropometri_tb` char(5) DEFAULT NULL,
  `antropometri_imt` char(5) DEFAULT NULL,
  `antropometri_lla` char(5) DEFAULT NULL,
  `antropometri_tl` char(5) DEFAULT NULL,
  `antropometri_ulna` char(5) NOT NULL,
  `antropometri_bbideal` char(5) NOT NULL,
  `antropometri_bbperu` char(5) NOT NULL,
  `antropometri_tbperu` char(5) NOT NULL,
  `antropometri_bbpertb` char(5) NOT NULL,
  `antropometri_llaperu` char(5) NOT NULL,
  `biokimia` varchar(1000) DEFAULT NULL,
  `fisik_klinis` varchar(1000) DEFAULT NULL,
  `alergi_telur` enum('Ya','Tidak') DEFAULT NULL,
  `alergi_susu_sapi` enum('Ya','Tidak') DEFAULT NULL,
  `alergi_kacang` enum('Ya','Tidak') DEFAULT NULL,
  `alergi_gluten` enum('Ya','Tidak') DEFAULT NULL,
  `alergi_udang` enum('Ya','Tidak') DEFAULT NULL,
  `alergi_ikan` enum('Ya','Tidak') DEFAULT NULL,
  `alergi_hazelnut` enum('Ya','Tidak') DEFAULT NULL,
  `pola_makan` varchar(100) DEFAULT NULL,
  `riwayat_personal` varchar(100) DEFAULT NULL,
  `diagnosis` varchar(1000) DEFAULT NULL,
  `intervensi_gizi` varchar(1000) DEFAULT NULL,
  `monitoring_evaluasi` varchar(1000) DEFAULT NULL,
  `nip` varchar(20) NOT NULL,
  PRIMARY KEY (`no_rawat`,`tanggal`),
  KEY `nip` (`nip`),
  CONSTRAINT `asuhan_gizi_ibfk_1` FOREIGN KEY (`no_rawat`) REFERENCES `reg_periksa` (`no_rawat`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `asuhan_gizi_ibfk_2` FOREIGN KEY (`nip`) REFERENCES `petugas` (`nip`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping structure for table sik_ori.audit_bundle_iadp
CREATE TABLE IF NOT EXISTS `audit_bundle_iadp` (
  `tanggal` datetime NOT NULL,
  `nik` varchar(20) NOT NULL,
  `handhygiene` enum('Ya','Tidak') DEFAULT NULL,
  `apd` enum('Ya','Tidak') DEFAULT NULL,
  `skin_antiseptik` enum('Ya','Tidak') DEFAULT NULL,
  `lokasi_iv` enum('Ya','Tidak') DEFAULT NULL,
  `perawatan_rutin` enum('Ya','Tidak') DEFAULT NULL,
  PRIMARY KEY (`tanggal`,`nik`),
  KEY `nik` (`nik`),
  CONSTRAINT `audit_bundle_iadp_ibfk_1` FOREIGN KEY (`nik`) REFERENCES `pegawai` (`nik`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table sik_ori.audit_bundle_ido
CREATE TABLE IF NOT EXISTS `audit_bundle_ido` (
  `tanggal` datetime NOT NULL,
  `id_ruang` varchar(5) NOT NULL,
  `pencukuran_rambut` enum('Ya','Tidak') DEFAULT NULL,
  `antibiotik` enum('Ya','Tidak') DEFAULT NULL,
  `temperature` enum('Ya','Tidak') DEFAULT NULL,
  `sugar` enum('Ya','Tidak') DEFAULT NULL,
  PRIMARY KEY (`tanggal`,`id_ruang`),
  KEY `id_ruang` (`id_ruang`),
  CONSTRAINT `audit_bundle_ido_ibfk_1` FOREIGN KEY (`id_ruang`) REFERENCES `ruang_audit_kepatuhan` (`id_ruang`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table sik_ori.audit_bundle_isk
CREATE TABLE IF NOT EXISTS `audit_bundle_isk` (
  `tanggal` datetime NOT NULL,
  `id_ruang` varchar(5) NOT NULL,
  `pemasangan_sesuai_indikasi` enum('Ya','Tidak') DEFAULT NULL,
  `hand_hygiene` enum('Ya','Tidak') DEFAULT NULL,
  `menggunakan_apd_yang_tepat` enum('Ya','Tidak') DEFAULT NULL,
  `pemasangan_menggunakan_alat_steril` enum('Ya','Tidak') DEFAULT NULL,
  `segera_dilepas_setelah_tidak_diperlukan` enum('Ya','Tidak') DEFAULT NULL,
  `pengisian_balon_sesuai_petunjuk` enum('Ya','Tidak') DEFAULT NULL,
  `fiksasi_kateter_dengan_plester` enum('Ya','Tidak') DEFAULT NULL,
  `urinebag_menggantung_tidak_menyentuh_lantai` enum('Ya','Tidak') DEFAULT NULL,
  PRIMARY KEY (`tanggal`,`id_ruang`),
  KEY `id_ruang` (`id_ruang`) USING BTREE,
  CONSTRAINT `audit_bundle_isk_ibfk_1` FOREIGN KEY (`id_ruang`) REFERENCES `ruang_audit_kepatuhan` (`id_ruang`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table sik_ori.audit_bundle_plabsi
CREATE TABLE IF NOT EXISTS `audit_bundle_plabsi` (
  `tanggal` datetime NOT NULL,
  `id_ruang` varchar(5) NOT NULL,
  `sebelum_melakukan_hand_hygiene` enum('Ya','Tidak') DEFAULT NULL,
  `menggunakan_apd_lengkap` enum('Ya','Tidak') DEFAULT NULL,
  `lokasi_pemasangan_sesuai` enum('Ya','Tidak') DEFAULT NULL,
  `alat_yang_digunakan_steril` enum('Ya','Tidak') DEFAULT NULL,
  `pembersihan_kulit` enum('Ya','Tidak') DEFAULT NULL,
  `setelah_melakukan_hand_hygiene` enum('Ya','Tidak') DEFAULT NULL,
  `perawatan_dressing_infus` enum('Ya','Tidak') DEFAULT NULL,
  `spoit_yang_digunakan_disposible` enum('Ya','Tidak') DEFAULT NULL,
  `memberi_tanggal_dan_jam_pemasangan_infus` enum('Ya','Tidak') DEFAULT NULL,
  `set_infus_setiap_72jam` enum('Ya','Tidak') DEFAULT NULL,
  PRIMARY KEY (`tanggal`,`id_ruang`),
  KEY `id_ruang` (`id_ruang`) USING BTREE,
  CONSTRAINT `audit_bundle_plabsi_ibfk_1` FOREIGN KEY (`id_ruang`) REFERENCES `ruang_audit_kepatuhan` (`id_ruang`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table sik_ori.audit_bundle_vap
CREATE TABLE IF NOT EXISTS `audit_bundle_vap` (
  `tanggal` datetime NOT NULL,
  `id_ruang` varchar(5) NOT NULL,
  `posisi_kepala` enum('Ya','Tidak') DEFAULT NULL,
  `pengkajian_setiap_hari` enum('Ya','Tidak') DEFAULT NULL,
  `hand_hygiene` enum('Ya','Tidak') DEFAULT NULL,
  `oral_hygiene` enum('Ya','Tidak') DEFAULT NULL,
  `suction_manajemen_sekresi` enum('Ya','Tidak') DEFAULT NULL,
  `profilaksis_peptic_ulcer` enum('Ya','Tidak') DEFAULT NULL,
  `dvt_profiklasisi` enum('Ya','Tidak') DEFAULT NULL,
  `penggunaan_apd_sesuai` enum('Ya','Tidak') DEFAULT NULL,
  PRIMARY KEY (`tanggal`,`id_ruang`),
  KEY `id_ruang` (`id_ruang`) USING BTREE,
  CONSTRAINT `audit_bundle_vap_ibfk_1` FOREIGN KEY (`id_ruang`) REFERENCES `ruang_audit_kepatuhan` (`id_ruang`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table sik_ori.audit_cuci_tangan_medis
CREATE TABLE IF NOT EXISTS `audit_cuci_tangan_medis` (
  `tanggal` datetime NOT NULL,
  `nik` varchar(20) NOT NULL,
  `sebelum_menyentuh_pasien` enum('Ya','Tidak') DEFAULT NULL,
  `sebelum_tehnik_aseptik` enum('Ya','Tidak') DEFAULT NULL,
  `setelah_terpapar_cairan_tubuh_pasien` enum('Ya','Tidak') DEFAULT NULL,
  `setelah_kontak_dengan_pasien` enum('Ya','Tidak') DEFAULT NULL,
  `setelah_kontak_dengan_lingkungan_pasien` enum('Ya','Tidak') DEFAULT NULL,
  PRIMARY KEY (`tanggal`,`nik`),
  KEY `nik` (`nik`),
  CONSTRAINT `audit_cuci_tangan_medis_ibfk_1` FOREIGN KEY (`nik`) REFERENCES `pegawai` (`nik`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table sik_ori.audit_fasilitas_apd
CREATE TABLE IF NOT EXISTS `audit_fasilitas_apd` (
  `tanggal` datetime NOT NULL,
  `id_ruang` varchar(5) NOT NULL,
  `audit1` enum('Ya','Tidak') DEFAULT NULL,
  `audit2` enum('Ya','Tidak') DEFAULT NULL,
  `audit3` enum('Ya','Tidak') DEFAULT NULL,
  `audit4` enum('Ya','Tidak') DEFAULT NULL,
  `audit5` enum('Ya','Tidak') DEFAULT NULL,
  `audit6` enum('Ya','Tidak') DEFAULT NULL,
  PRIMARY KEY (`tanggal`,`id_ruang`),
  KEY `id_ruang` (`id_ruang`),
  CONSTRAINT `audit_fasilitas_apd_ibfk_1` FOREIGN KEY (`id_ruang`) REFERENCES `ruang_audit_kepatuhan` (`id_ruang`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table sik_ori.audit_fasilitas_kebersihan_tangan
CREATE TABLE IF NOT EXISTS `audit_fasilitas_kebersihan_tangan` (
  `tanggal` datetime NOT NULL,
  `id_ruang` varchar(5) NOT NULL,
  `audit1` enum('Ya','Tidak') DEFAULT NULL,
  `audit2` enum('Ya','Tidak') DEFAULT NULL,
  `audit3` enum('Ya','Tidak') DEFAULT NULL,
  `audit4` enum('Ya','Tidak') DEFAULT NULL,
  `audit5` enum('Ya','Tidak') DEFAULT NULL,
  `audit6` enum('Ya','Tidak') DEFAULT NULL,
  `audit7` enum('Ya','Tidak') DEFAULT NULL,
  `audit8` enum('Ya','Tidak') DEFAULT NULL,
  `audit9` enum('Ya','Tidak') NOT NULL,
  PRIMARY KEY (`tanggal`,`id_ruang`),
  KEY `id_ruang` (`id_ruang`),
  CONSTRAINT `audit_fasilitas_kebersihan_tangan_ibfk_1` FOREIGN KEY (`id_ruang`) REFERENCES `ruang_audit_kepatuhan` (`id_ruang`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table sik_ori.audit_kamar_jenazah
CREATE TABLE IF NOT EXISTS `audit_kamar_jenazah` (
  `tanggal` datetime NOT NULL,
  `audit1` enum('Ya','Tidak') DEFAULT NULL,
  `audit2` enum('Ya','Tidak') DEFAULT NULL,
  `audit3` enum('Ya','Tidak') DEFAULT NULL,
  `audit4` enum('Ya','Tidak') DEFAULT NULL,
  `audit5` enum('Ya','Tidak') DEFAULT NULL,
  `audit6` enum('Ya','Tidak') DEFAULT NULL,
  `audit7` enum('Ya','Tidak') DEFAULT NULL,
  `audit8` enum('Ya','Tidak') DEFAULT NULL,
  PRIMARY KEY (`tanggal`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table sik_ori.audit_kepatuhan_apd
CREATE TABLE IF NOT EXISTS `audit_kepatuhan_apd` (
  `nik` varchar(20) NOT NULL,
  `tindakan` varchar(50) NOT NULL,
  `tanggal` datetime NOT NULL,
  `topi` enum('Ya','Tidak') DEFAULT NULL,
  `masker` enum('Ya','Tidak') DEFAULT NULL,
  `kacamata` enum('Ya','Tidak') DEFAULT NULL,
  `sarungtangan` enum('Ya','Tidak') DEFAULT NULL,
  `apron` enum('Ya','Tidak') DEFAULT NULL,
  `sepatu` enum('Ya','Tidak') DEFAULT NULL,
  PRIMARY KEY (`nik`,`tindakan`,`tanggal`),
  CONSTRAINT `audit_kepatuhan_apd_ibfk_1` FOREIGN KEY (`nik`) REFERENCES `pegawai` (`nik`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table sik_ori.audit_pembuangan_benda_tajam
CREATE TABLE IF NOT EXISTS `audit_pembuangan_benda_tajam` (
  `tanggal` datetime NOT NULL,
  `id_ruang` varchar(5) NOT NULL,
  `setiap_injeksi_needle_langsung_dimasukkan_safety_box` enum('Ya','Tidak') DEFAULT NULL,
  `setiap_pemasangan_iv_canula_langsung_dimasukkan_safety_box` enum('Ya','Tidak') DEFAULT NULL,
  `setiap_benda_tajam_jarum_dimasukkan_safety_box` enum('Ya','Tidak') DEFAULT NULL,
  `safety_box_tigaperempat_diganti` enum('Ya','Tidak') DEFAULT NULL,
  `safety_box_keadaan_bersih` enum('Ya','Tidak') DEFAULT NULL,
  `saftey_box_tertutup_setelah_digunakan` enum('Ya','Tidak') DEFAULT NULL,
  PRIMARY KEY (`tanggal`,`id_ruang`),
  KEY `id_ruang` (`id_ruang`),
  CONSTRAINT `audit_pembuangan_benda_tajam_ibfk_1` FOREIGN KEY (`id_ruang`) REFERENCES `ruang_audit_kepatuhan` (`id_ruang`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table sik_ori.audit_pembuangan_limbah
CREATE TABLE IF NOT EXISTS `audit_pembuangan_limbah` (
  `tanggal` datetime NOT NULL,
  `id_ruang` varchar(5) NOT NULL,
  `pemisahan_limbah_oleh_penghasil_limbah` enum('Ya','Tidak') DEFAULT NULL,
  `limbah_infeksius_dimasukkan_kantong_kuning` enum('Ya','Tidak') DEFAULT NULL,
  `limbah_noninfeksius_dimasukkan_kantong_hitam` enum('Ya','Tidak') DEFAULT NULL,
  `limbah_tigaperempat_diikat` enum('Ya','Tidak') DEFAULT NULL,
  `limbah_segera_dibawa_kepembuangan_sementara` enum('Ya','Tidak') DEFAULT NULL,
  `kotak_sampah_dalam_kondisi_bersih` enum('Ya','Tidak') DEFAULT NULL,
  `pembersihan_tempat_sampah_dengan_desinfekten` enum('Ya','Tidak') DEFAULT NULL,
  `pembersihan_penampungan_sementara_dengan_desinfekten` enum('Ya','Tidak') DEFAULT NULL,
  PRIMARY KEY (`tanggal`,`id_ruang`),
  KEY `id_ruang` (`id_ruang`),
  CONSTRAINT `audit_pembuangan_limbah_ibfk_1` FOREIGN KEY (`id_ruang`) REFERENCES `ruang_audit_kepatuhan` (`id_ruang`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table sik_ori.audit_pembuangan_limbah_cair_infeksius
CREATE TABLE IF NOT EXISTS `audit_pembuangan_limbah_cair_infeksius` (
  `tanggal` datetime NOT NULL,
  `id_ruang` varchar(5) NOT NULL,
  `audit1` enum('Ya','Tidak') DEFAULT NULL,
  `audit2` enum('Ya','Tidak') DEFAULT NULL,
  `audit3` enum('Ya','Tidak') DEFAULT NULL,
  `audit4` enum('Ya','Tidak') DEFAULT NULL,
  `audit5` enum('Ya','Tidak') DEFAULT NULL,
  `audit6` enum('Ya','Tidak') DEFAULT NULL,
  PRIMARY KEY (`tanggal`,`id_ruang`),
  KEY `id_ruang` (`id_ruang`),
  CONSTRAINT `audit_pembuangan_limbah_cair_infeksius_ibfk_1` FOREIGN KEY (`id_ruang`) REFERENCES `ruang_audit_kepatuhan` (`id_ruang`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table sik_ori.audit_penanganan_darah
CREATE TABLE IF NOT EXISTS `audit_penanganan_darah` (
  `tanggal` datetime NOT NULL,
  `id_ruang` varchar(5) NOT NULL,
  `menggunakan_apd_waktu_membuang_darah` enum('Ya','Tidak') DEFAULT NULL,
  `komponen_darah_tidak_ada_dilantai` enum('Ya','Tidak') DEFAULT NULL,
  `membuang_darah_pada_tempat_ditentukan` enum('Ya','Tidak') DEFAULT NULL,
  `pembersihan_areal_tumbahan_darah` enum('Ya','Tidak') DEFAULT NULL,
  `apd_dibuang_di_limbah_infeksius` enum('Ya','Tidak') DEFAULT NULL,
  `melakukan_kebersihan_tangan_setelah_prosedur` enum('Ya','Tidak') DEFAULT NULL,
  PRIMARY KEY (`tanggal`,`id_ruang`),
  KEY `id_ruang` (`id_ruang`),
  CONSTRAINT `audit_penanganan_darah_ibfk_1` FOREIGN KEY (`id_ruang`) REFERENCES `ruang_audit_kepatuhan` (`id_ruang`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table sik_ori.audit_penempatan_pasien
CREATE TABLE IF NOT EXISTS `audit_penempatan_pasien` (
  `tanggal` datetime NOT NULL,
  `id_ruang` varchar(5) NOT NULL,
  `audit1` enum('Ya','Tidak') DEFAULT NULL,
  `audit2` enum('Ya','Tidak') DEFAULT NULL,
  `audit3` enum('Ya','Tidak') DEFAULT NULL,
  `audit4` enum('Ya','Tidak') DEFAULT NULL,
  `audit5` enum('Ya','Tidak') DEFAULT NULL,
  `audit6` enum('Ya','Tidak') DEFAULT NULL,
  `audit7` enum('Ya','Tidak') DEFAULT NULL,
  `audit8` enum('Ya','Tidak') DEFAULT NULL,
  `audit9` enum('Ya','Tidak') DEFAULT NULL,
  PRIMARY KEY (`tanggal`,`id_ruang`),
  KEY `id_ruang` (`id_ruang`),
  CONSTRAINT `audit_penempatan_pasien_ibfk_1` FOREIGN KEY (`id_ruang`) REFERENCES `ruang_audit_kepatuhan` (`id_ruang`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table sik_ori.audit_pengelolaan_linen_kotor
CREATE TABLE IF NOT EXISTS `audit_pengelolaan_linen_kotor` (
  `tanggal` datetime NOT NULL,
  `id_ruang` varchar(5) NOT NULL,
  `audit1` enum('Ya','Tidak') DEFAULT NULL,
  `audit2` enum('Ya','Tidak') DEFAULT NULL,
  `audit3` enum('Ya','Tidak') DEFAULT NULL,
  `audit4` enum('Ya','Tidak') DEFAULT NULL,
  `audit5` enum('Ya','Tidak') DEFAULT NULL,
  `audit6` enum('Ya','Tidak') DEFAULT NULL,
  `audit7` enum('Ya','Tidak') DEFAULT NULL,
  `audit8` enum('Ya','Tidak') DEFAULT NULL,
  PRIMARY KEY (`tanggal`,`id_ruang`),
  KEY `id_ruang` (`id_ruang`),
  CONSTRAINT `audit_pengelolaan_linen_kotor_ibfk_1` FOREIGN KEY (`id_ruang`) REFERENCES `ruang_audit_kepatuhan` (`id_ruang`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table sik_ori.audit_sterilisasi_alat
CREATE TABLE IF NOT EXISTS `audit_sterilisasi_alat` (
  `tanggal` datetime NOT NULL,
  `id_ruang` varchar(5) NOT NULL,
  `audit1` enum('Ya','Tidak') DEFAULT NULL,
  `audit2` enum('Ya','Tidak') DEFAULT NULL,
  `audit3` enum('Ya','Tidak') DEFAULT NULL,
  `audit4` enum('Ya','Tidak') DEFAULT NULL,
  `audit5` enum('Ya','Tidak') DEFAULT NULL,
  `audit6` enum('Ya','Tidak') DEFAULT NULL,
  `audit7` enum('Ya','Tidak') DEFAULT NULL,
  `audit8` enum('Ya','Tidak') DEFAULT NULL,
  `audit9` enum('Ya','Tidak') NOT NULL,
  `audit10` enum('Ya','Tidak') NOT NULL,
  `audit11` enum('Ya','Tidak') NOT NULL,
  PRIMARY KEY (`tanggal`,`id_ruang`),
  KEY `id_ruang` (`id_ruang`),
  CONSTRAINT `audit_sterilisasi_alat_ibfk_1` FOREIGN KEY (`id_ruang`) REFERENCES `ruang_audit_kepatuhan` (`id_ruang`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- Dumping structure for table sik_ori.bayar_detail_periksa_lab
CREATE TABLE IF NOT EXISTS `bayar_detail_periksa_lab` (
  `no_bayar` varchar(17) NOT NULL DEFAULT '',
  `no_rawat` varchar(17) NOT NULL,
  `kd_jenis_prw` varchar(15) NOT NULL,
  `tgl_periksa` date NOT NULL,
  `jam` time NOT NULL,
  `id_template` int(11) NOT NULL,
  `bagian_dokter` double NOT NULL,
  PRIMARY KEY (`no_bayar`,`no_rawat`,`kd_jenis_prw`,`tgl_periksa`,`jam`,`id_template`),
  KEY `id_template` (`id_template`),
  KEY `kd_jenis_prw` (`kd_jenis_prw`),
  KEY `no_rawat` (`no_rawat`),
  KEY `no_bayar` (`no_bayar`),
  CONSTRAINT `bayar_detail_periksa_lab_ibfk_1` FOREIGN KEY (`no_rawat`) REFERENCES `reg_periksa` (`no_rawat`) ON UPDATE CASCADE,
  CONSTRAINT `bayar_detail_periksa_lab_ibfk_2` FOREIGN KEY (`kd_jenis_prw`) REFERENCES `jns_perawatan_lab` (`kd_jenis_prw`) ON UPDATE CASCADE,
  CONSTRAINT `bayar_detail_periksa_lab_ibfk_3` FOREIGN KEY (`id_template`) REFERENCES `template_laboratorium` (`id_template`) ON UPDATE CASCADE,
  CONSTRAINT `bayar_detail_periksa_lab_ibfk_4` FOREIGN KEY (`no_bayar`) REFERENCES `bayar_jm_dokter` (`no_bayar`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table sik_ori.bayar_detail_periksa_lab_perujuk
CREATE TABLE IF NOT EXISTS `bayar_detail_periksa_lab_perujuk` (
  `no_bayar` varchar(17) NOT NULL DEFAULT '',
  `no_rawat` varchar(17) NOT NULL,
  `kd_jenis_prw` varchar(15) NOT NULL,
  `tgl_periksa` date NOT NULL,
  `jam` time NOT NULL,
  `id_template` int(11) NOT NULL,
  `bagian_perujuk` double NOT NULL,
  PRIMARY KEY (`no_bayar`,`no_rawat`,`kd_jenis_prw`,`tgl_periksa`,`jam`,`id_template`),
  KEY `id_template` (`id_template`),
  KEY `kd_jenis_prw` (`kd_jenis_prw`),
  KEY `no_rawat` (`no_rawat`),
  KEY `no_bayar` (`no_bayar`),
  CONSTRAINT `bayar_detail_periksa_lab_perujuk_ibfk_1` FOREIGN KEY (`no_rawat`) REFERENCES `reg_periksa` (`no_rawat`) ON UPDATE CASCADE,
  CONSTRAINT `bayar_detail_periksa_lab_perujuk_ibfk_2` FOREIGN KEY (`kd_jenis_prw`) REFERENCES `jns_perawatan_lab` (`kd_jenis_prw`) ON UPDATE CASCADE,
  CONSTRAINT `bayar_detail_periksa_lab_perujuk_ibfk_3` FOREIGN KEY (`id_template`) REFERENCES `template_laboratorium` (`id_template`) ON UPDATE CASCADE,
  CONSTRAINT `bayar_detail_periksa_lab_perujuk_ibfk_4` FOREIGN KEY (`no_bayar`) REFERENCES `bayar_jm_dokter` (`no_bayar`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table sik_ori.bayar_jm_dokter
CREATE TABLE IF NOT EXISTS `bayar_jm_dokter` (
  `no_bayar` varchar(17) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `kd_dokter` varchar(20) DEFAULT NULL,
  `besar_bayar` double DEFAULT NULL,
  `nama_bayar` varchar(50) NOT NULL,
  `keterangan` varchar(70) NOT NULL,
  `rawatjalan` double NOT NULL,
  `rawatinap` double NOT NULL,
  `labrawatjalan` double NOT NULL,
  `labrawatinap` double NOT NULL,
  `radrawatjalan` double NOT NULL,
  `radrawatinap` double NOT NULL,
  `operasiralan` double NOT NULL,
  `operasiranap` double NOT NULL,
  PRIMARY KEY (`no_bayar`),
  KEY `kd_dokter` (`kd_dokter`),
  KEY `nama_bayar` (`nama_bayar`),
  CONSTRAINT `bayar_jm_dokter_ibfk_1` FOREIGN KEY (`kd_dokter`) REFERENCES `dokter` (`kd_dokter`) ON UPDATE CASCADE,
  CONSTRAINT `bayar_jm_dokter_ibfk_2` FOREIGN KEY (`nama_bayar`) REFERENCES `akun_bayar_hutang` (`nama_bayar`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table sik_ori.bayar_operasi_dokter_anak
CREATE TABLE IF NOT EXISTS `bayar_operasi_dokter_anak` (
  `no_bayar` varchar(17) NOT NULL DEFAULT '',
  `no_rawat` varchar(17) NOT NULL,
  `kode_paket` varchar(15) NOT NULL,
  `tgl_operasi` datetime NOT NULL,
  `biayadokter_anak` double NOT NULL,
  PRIMARY KEY (`no_rawat`,`tgl_operasi`,`kode_paket`,`no_bayar`),
  KEY `no_rawat` (`no_rawat`),
  KEY `no_bayar` (`no_bayar`),
  KEY `kode_paket` (`kode_paket`),
  CONSTRAINT `bayar_operasi_dokter_anak_ibfk_1` FOREIGN KEY (`no_rawat`) REFERENCES `reg_periksa` (`no_rawat`) ON UPDATE CASCADE,
  CONSTRAINT `bayar_operasi_dokter_anak_ibfk_2` FOREIGN KEY (`no_bayar`) REFERENCES `bayar_jm_dokter` (`no_bayar`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `bayar_operasi_dokter_anak_ibfk_3` FOREIGN KEY (`kode_paket`) REFERENCES `paket_operasi` (`kode_paket`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table sik_ori.bayar_operasi_dokter_anestesi
CREATE TABLE IF NOT EXISTS `bayar_operasi_dokter_anestesi` (
  `no_bayar` varchar(17) NOT NULL DEFAULT '',
  `no_rawat` varchar(17) NOT NULL,
  `kode_paket` varchar(15) NOT NULL,
  `tgl_operasi` datetime NOT NULL,
  `biayadokter_anestesi` double NOT NULL,
  PRIMARY KEY (`no_rawat`,`tgl_operasi`,`kode_paket`,`no_bayar`),
  KEY `no_rawat` (`no_rawat`),
  KEY `no_bayar` (`no_bayar`),
  KEY `kode_paket` (`kode_paket`),
  CONSTRAINT `bayar_operasi_dokter_anestesi_ibfk_1` FOREIGN KEY (`no_rawat`) REFERENCES `reg_periksa` (`no_rawat`) ON UPDATE CASCADE,
  CONSTRAINT `bayar_operasi_dokter_anestesi_ibfk_2` FOREIGN KEY (`no_bayar`) REFERENCES `bayar_jm_dokter` (`no_bayar`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `bayar_operasi_dokter_anestesi_ibfk_3` FOREIGN KEY (`kode_paket`) REFERENCES `paket_operasi` (`kode_paket`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table sik_ori.bayar_operasi_dokter_pjanak
CREATE TABLE IF NOT EXISTS `bayar_operasi_dokter_pjanak` (
  `no_bayar` varchar(17) NOT NULL DEFAULT '',
  `no_rawat` varchar(17) NOT NULL,
  `kode_paket` varchar(15) NOT NULL,
  `tgl_operasi` datetime NOT NULL,
  `biaya_dokter_pjanak` double NOT NULL,
  PRIMARY KEY (`no_rawat`,`tgl_operasi`,`kode_paket`,`no_bayar`),
  KEY `no_rawat` (`no_rawat`),
  KEY `no_bayar` (`no_bayar`),
  KEY `kode_paket` (`kode_paket`),
  CONSTRAINT `bayar_operasi_dokter_pjanak_ibfk_1` FOREIGN KEY (`no_rawat`) REFERENCES `reg_periksa` (`no_rawat`) ON UPDATE CASCADE,
  CONSTRAINT `bayar_operasi_dokter_pjanak_ibfk_2` FOREIGN KEY (`no_bayar`) REFERENCES `bayar_jm_dokter` (`no_bayar`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `bayar_operasi_dokter_pjanak_ibfk_3` FOREIGN KEY (`kode_paket`) REFERENCES `paket_operasi` (`kode_paket`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table sik_ori.bayar_operasi_dokter_umum
CREATE TABLE IF NOT EXISTS `bayar_operasi_dokter_umum` (
  `no_bayar` varchar(17) NOT NULL DEFAULT '',
  `no_rawat` varchar(17) NOT NULL,
  `kode_paket` varchar(15) NOT NULL,
  `tgl_operasi` datetime NOT NULL,
  `biaya_dokter_umum` double NOT NULL,
  PRIMARY KEY (`no_rawat`,`tgl_operasi`,`kode_paket`,`no_bayar`),
  KEY `no_rawat` (`no_rawat`),
  KEY `no_bayar` (`no_bayar`),
  KEY `kode_paket` (`kode_paket`),
  CONSTRAINT `bayar_operasi_dokter_umum_ibfk_1` FOREIGN KEY (`no_rawat`) REFERENCES `reg_periksa` (`no_rawat`) ON UPDATE CASCADE,
  CONSTRAINT `bayar_operasi_dokter_umum_ibfk_2` FOREIGN KEY (`no_bayar`) REFERENCES `bayar_jm_dokter` (`no_bayar`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `bayar_operasi_dokter_umum_ibfk_3` FOREIGN KEY (`kode_paket`) REFERENCES `paket_operasi` (`kode_paket`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table sik_ori.bayar_operasi_operator1
CREATE TABLE IF NOT EXISTS `bayar_operasi_operator1` (
  `no_bayar` varchar(17) NOT NULL DEFAULT '',
  `no_rawat` varchar(17) NOT NULL,
  `kode_paket` varchar(15) NOT NULL,
  `tgl_operasi` datetime NOT NULL,
  `biayaoperator1` double NOT NULL,
  PRIMARY KEY (`no_rawat`,`tgl_operasi`,`kode_paket`,`no_bayar`),
  KEY `no_rawat` (`no_rawat`),
  KEY `no_bayar` (`no_bayar`),
  KEY `kode_paket` (`kode_paket`),
  CONSTRAINT `bayar_operasi_operator1_ibfk_1` FOREIGN KEY (`no_rawat`) REFERENCES `reg_periksa` (`no_rawat`) ON UPDATE CASCADE,
  CONSTRAINT `bayar_operasi_operator1_ibfk_2` FOREIGN KEY (`no_bayar`) REFERENCES `bayar_jm_dokter` (`no_bayar`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `bayar_operasi_operator1_ibfk_3` FOREIGN KEY (`kode_paket`) REFERENCES `paket_operasi` (`kode_paket`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table sik_ori.bayar_operasi_operator2
CREATE TABLE IF NOT EXISTS `bayar_operasi_operator2` (
  `no_bayar` varchar(17) NOT NULL DEFAULT '',
  `no_rawat` varchar(17) NOT NULL,
  `kode_paket` varchar(15) NOT NULL,
  `tgl_operasi` datetime NOT NULL,
  `biayaoperator2` double NOT NULL,
  PRIMARY KEY (`no_rawat`,`tgl_operasi`,`kode_paket`,`no_bayar`),
  KEY `no_rawat` (`no_rawat`),
  KEY `no_bayar` (`no_bayar`),
  KEY `kode_paket` (`kode_paket`),
  CONSTRAINT `bayar_operasi_operator2_ibfk_1` FOREIGN KEY (`no_rawat`) REFERENCES `reg_periksa` (`no_rawat`) ON UPDATE CASCADE,
  CONSTRAINT `bayar_operasi_operator2_ibfk_2` FOREIGN KEY (`no_bayar`) REFERENCES `bayar_jm_dokter` (`no_bayar`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `bayar_operasi_operator2_ibfk_3` FOREIGN KEY (`kode_paket`) REFERENCES `paket_operasi` (`kode_paket`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table sik_ori.bayar_operasi_operator3
CREATE TABLE IF NOT EXISTS `bayar_operasi_operator3` (
  `no_bayar` varchar(17) NOT NULL DEFAULT '',
  `no_rawat` varchar(17) NOT NULL,
  `kode_paket` varchar(15) NOT NULL,
  `tgl_operasi` datetime NOT NULL,
  `biayaoperator3` double NOT NULL,
  PRIMARY KEY (`no_rawat`,`tgl_operasi`,`kode_paket`,`no_bayar`),
  KEY `no_rawat` (`no_rawat`),
  KEY `no_bayar` (`no_bayar`),
  KEY `kode_paket` (`kode_paket`),
  CONSTRAINT `bayar_operasi_operator3_ibfk_1` FOREIGN KEY (`no_rawat`) REFERENCES `reg_periksa` (`no_rawat`) ON UPDATE CASCADE,
  CONSTRAINT `bayar_operasi_operator3_ibfk_2` FOREIGN KEY (`no_bayar`) REFERENCES `bayar_jm_dokter` (`no_bayar`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `bayar_operasi_operator3_ibfk_3` FOREIGN KEY (`kode_paket`) REFERENCES `paket_operasi` (`kode_paket`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



-- Dumping structure for table sik_ori.bayar_periksa_lab
CREATE TABLE IF NOT EXISTS `bayar_periksa_lab` (
  `no_bayar` varchar(17) NOT NULL DEFAULT '',
  `no_rawat` varchar(17) NOT NULL,
  `kd_jenis_prw` varchar(15) NOT NULL,
  `tgl_periksa` date NOT NULL,
  `jam` time NOT NULL,
  `tarif_tindakan_dokter` double NOT NULL,
  PRIMARY KEY (`no_bayar`,`no_rawat`,`kd_jenis_prw`,`tgl_periksa`,`jam`),
  KEY `kd_jenis_prw` (`kd_jenis_prw`),
  KEY `no_rawat` (`no_rawat`),
  KEY `no_bayar` (`no_bayar`),
  CONSTRAINT `bayar_periksa_lab_ibfk_1` FOREIGN KEY (`kd_jenis_prw`) REFERENCES `jns_perawatan_lab` (`kd_jenis_prw`) ON UPDATE CASCADE,
  CONSTRAINT `bayar_periksa_lab_ibfk_2` FOREIGN KEY (`no_rawat`) REFERENCES `reg_periksa` (`no_rawat`) ON UPDATE CASCADE,
  CONSTRAINT `bayar_periksa_lab_ibfk_3` FOREIGN KEY (`no_bayar`) REFERENCES `bayar_jm_dokter` (`no_bayar`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table sik_ori.bayar_periksa_lab_perujuk
CREATE TABLE IF NOT EXISTS `bayar_periksa_lab_perujuk` (
  `no_bayar` varchar(17) NOT NULL DEFAULT '',
  `no_rawat` varchar(17) NOT NULL,
  `kd_jenis_prw` varchar(15) NOT NULL,
  `tgl_periksa` date NOT NULL,
  `jam` time NOT NULL,
  `tarif_perujuk` double NOT NULL,
  PRIMARY KEY (`no_bayar`,`no_rawat`,`kd_jenis_prw`,`tgl_periksa`,`jam`),
  KEY `kd_jenis_prw` (`kd_jenis_prw`),
  KEY `no_rawat` (`no_rawat`),
  KEY `no_bayar` (`no_bayar`),
  CONSTRAINT `bayar_periksa_lab_perujuk_ibfk_1` FOREIGN KEY (`kd_jenis_prw`) REFERENCES `jns_perawatan_lab` (`kd_jenis_prw`) ON UPDATE CASCADE,
  CONSTRAINT `bayar_periksa_lab_perujuk_ibfk_2` FOREIGN KEY (`no_rawat`) REFERENCES `reg_periksa` (`no_rawat`) ON UPDATE CASCADE,
  CONSTRAINT `bayar_periksa_lab_perujuk_ibfk_3` FOREIGN KEY (`no_bayar`) REFERENCES `bayar_jm_dokter` (`no_bayar`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table sik_ori.bayar_periksa_radiologi
CREATE TABLE IF NOT EXISTS `bayar_periksa_radiologi` (
  `no_bayar` varchar(17) NOT NULL DEFAULT '',
  `no_rawat` varchar(17) NOT NULL,
  `kd_jenis_prw` varchar(15) NOT NULL,
  `tgl_periksa` date NOT NULL,
  `jam` time NOT NULL,
  `tarif_tindakan_dokter` double NOT NULL,
  PRIMARY KEY (`no_rawat`,`kd_jenis_prw`,`no_bayar`,`tgl_periksa`,`jam`),
  KEY `kd_jenis_prw` (`kd_jenis_prw`),
  KEY `no_rawat` (`no_rawat`),
  KEY `no_bayar` (`no_bayar`),
  CONSTRAINT `bayar_periksa_radiologi_ibfk_1` FOREIGN KEY (`no_rawat`) REFERENCES `reg_periksa` (`no_rawat`) ON UPDATE CASCADE,
  CONSTRAINT `bayar_periksa_radiologi_ibfk_2` FOREIGN KEY (`kd_jenis_prw`) REFERENCES `jns_perawatan_radiologi` (`kd_jenis_prw`) ON UPDATE CASCADE,
  CONSTRAINT `bayar_periksa_radiologi_ibfk_3` FOREIGN KEY (`no_bayar`) REFERENCES `bayar_jm_dokter` (`no_bayar`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table sik_ori.bayar_periksa_radiologi_perujuk
CREATE TABLE IF NOT EXISTS `bayar_periksa_radiologi_perujuk` (
  `no_bayar` varchar(17) NOT NULL DEFAULT '',
  `no_rawat` varchar(17) NOT NULL,
  `kd_jenis_prw` varchar(15) NOT NULL,
  `tgl_periksa` date NOT NULL,
  `jam` time NOT NULL,
  `tarif_perujuk` double NOT NULL,
  PRIMARY KEY (`no_rawat`,`kd_jenis_prw`,`no_bayar`,`tgl_periksa`,`jam`),
  KEY `kd_jenis_prw` (`kd_jenis_prw`),
  KEY `no_rawat` (`no_rawat`),
  KEY `no_bayar` (`no_bayar`),
  CONSTRAINT `bayar_periksa_radiologi_perujuk_ibfk_1` FOREIGN KEY (`no_rawat`) REFERENCES `reg_periksa` (`no_rawat`) ON UPDATE CASCADE,
  CONSTRAINT `bayar_periksa_radiologi_perujuk_ibfk_2` FOREIGN KEY (`kd_jenis_prw`) REFERENCES `jns_perawatan_radiologi` (`kd_jenis_prw`) ON UPDATE CASCADE,
  CONSTRAINT `bayar_periksa_radiologi_perujuk_ibfk_3` FOREIGN KEY (`no_bayar`) REFERENCES `bayar_jm_dokter` (`no_bayar`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table sik_ori.bayar_piutang_lainlain
CREATE TABLE IF NOT EXISTS `bayar_piutang_lainlain` (
  `tgl_bayar` date NOT NULL,
  `kode_peminjam` varchar(5) NOT NULL,
  `besar_cicilan` double NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `nota_piutang` varchar(15) NOT NULL,
  `kd_rek` varchar(15) NOT NULL,
  `nama_bayar` varchar(50) NOT NULL,
  PRIMARY KEY (`tgl_bayar`,`kode_peminjam`,`nota_piutang`,`kd_rek`,`nama_bayar`),
  KEY `kode_peminjam` (`kode_peminjam`),
  KEY `kd_rek` (`kd_rek`),
  KEY `nama_bayar` (`nama_bayar`),
  KEY `nota_piutang` (`nota_piutang`),
  CONSTRAINT `bayar_piutang_lainlain_ibfk_1` FOREIGN KEY (`kode_peminjam`) REFERENCES `peminjampiutang` (`kode_peminjam`) ON UPDATE CASCADE,
  CONSTRAINT `bayar_piutang_lainlain_ibfk_2` FOREIGN KEY (`kd_rek`) REFERENCES `rekening` (`kd_rek`) ON UPDATE CASCADE,
  CONSTRAINT `bayar_piutang_lainlain_ibfk_3` FOREIGN KEY (`nama_bayar`) REFERENCES `akun_bayar` (`nama_bayar`) ON UPDATE CASCADE,
  CONSTRAINT `bayar_piutang_lainlain_ibfk_4` FOREIGN KEY (`nota_piutang`) REFERENCES `piutang_lainlain` (`nota_piutang`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- beri_bhp_pa removed

-- Dumping structure for table sik_ori.bayar_piutang_lainlain
CREATE TABLE IF NOT EXISTS `bayar_piutang_lainlain` (
  `tgl_bayar` date NOT NULL,
  `kode_peminjam` varchar(5) NOT NULL,
  `besar_cicilan` double NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `nota_piutang` varchar(15) NOT NULL,
  `kd_rek` varchar(15) NOT NULL,
  `nama_bayar` varchar(50) NOT NULL,
  PRIMARY KEY (`tgl_bayar`,`kode_peminjam`,`nota_piutang`,`kd_rek`,`nama_bayar`),
  KEY `kode_peminjam` (`kode_peminjam`),
  KEY `kd_rek` (`kd_rek`),
  KEY `nama_bayar` (`nama_bayar`),
  KEY `nota_piutang` (`nota_piutang`),
  CONSTRAINT `bayar_piutang_lainlain_ibfk_1` FOREIGN KEY (`kode_peminjam`) REFERENCES `peminjampiutang` (`kode_peminjam`) ON UPDATE CASCADE,
  CONSTRAINT `bayar_piutang_lainlain_ibfk_2` FOREIGN KEY (`kd_rek`) REFERENCES `rekening` (`kd_rek`) ON UPDATE CASCADE,
  CONSTRAINT `bayar_piutang_lainlain_ibfk_3` FOREIGN KEY (`nama_bayar`) REFERENCES `akun_bayar` (`nama_bayar`) ON UPDATE CASCADE,
  CONSTRAINT `bayar_piutang_lainlain_ibfk_4` FOREIGN KEY (`nota_piutang`) REFERENCES `piutang_lainlain` (`nota_piutang`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table sik_ori.bayar_rawat_inap_dr
CREATE TABLE IF NOT EXISTS `bayar_rawat_inap_dr` (
  `no_bayar` varchar(17) NOT NULL DEFAULT '',
  `no_rawat` varchar(17) NOT NULL DEFAULT '',
  `kd_jenis_prw` varchar(15) NOT NULL,
  `tgl_perawatan` date NOT NULL DEFAULT '0000-00-00',
  `jam_rawat` time NOT NULL DEFAULT '00:00:00',
  `tarif_tindakandr` double NOT NULL,
  PRIMARY KEY (`no_rawat`,`kd_jenis_prw`,`no_bayar`,`tgl_perawatan`,`jam_rawat`),
  KEY `kd_jenis_prw` (`kd_jenis_prw`),
  KEY `no_rawat` (`no_rawat`),
  KEY `no_bayar` (`no_bayar`),
  CONSTRAINT `bayar_rawat_inap_dr_ibfk_1` FOREIGN KEY (`kd_jenis_prw`) REFERENCES `jns_perawatan_inap` (`kd_jenis_prw`) ON UPDATE CASCADE,
  CONSTRAINT `bayar_rawat_inap_dr_ibfk_2` FOREIGN KEY (`no_rawat`) REFERENCES `reg_periksa` (`no_rawat`) ON UPDATE CASCADE,
  CONSTRAINT `bayar_rawat_inap_dr_ibfk_3` FOREIGN KEY (`no_bayar`) REFERENCES `bayar_jm_dokter` (`no_bayar`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table sik_ori.bayar_rawat_inap_drpr
CREATE TABLE IF NOT EXISTS `bayar_rawat_inap_drpr` (
  `no_bayar` varchar(17) NOT NULL DEFAULT '',
  `no_rawat` varchar(17) NOT NULL DEFAULT '',
  `kd_jenis_prw` varchar(15) NOT NULL,
  `tgl_perawatan` date NOT NULL DEFAULT '0000-00-00',
  `jam_rawat` time NOT NULL DEFAULT '00:00:00',
  `tarif_tindakandr` double NOT NULL,
  PRIMARY KEY (`no_rawat`,`kd_jenis_prw`,`no_bayar`,`tgl_perawatan`,`jam_rawat`),
  KEY `kd_jenis_prw` (`kd_jenis_prw`),
  KEY `no_rawat` (`no_rawat`),
  KEY `no_bayar` (`no_bayar`),
  CONSTRAINT `bayar_rawat_inap_drpr_ibfk_1` FOREIGN KEY (`kd_jenis_prw`) REFERENCES `jns_perawatan_inap` (`kd_jenis_prw`) ON UPDATE CASCADE,
  CONSTRAINT `bayar_rawat_inap_drpr_ibfk_2` FOREIGN KEY (`no_rawat`) REFERENCES `reg_periksa` (`no_rawat`) ON UPDATE CASCADE,
  CONSTRAINT `bayar_rawat_inap_drpr_ibfk_3` FOREIGN KEY (`no_bayar`) REFERENCES `bayar_jm_dokter` (`no_bayar`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table sik_ori.bayar_rawat_jl_dr
CREATE TABLE IF NOT EXISTS `bayar_rawat_jl_dr` (
  `no_bayar` varchar(17) NOT NULL DEFAULT '',
  `no_rawat` varchar(17) NOT NULL DEFAULT '',
  `kd_jenis_prw` varchar(15) NOT NULL,
  `tgl_perawatan` date NOT NULL,
  `jam_rawat` time NOT NULL,
  `tarif_tindakandr` double NOT NULL,
  PRIMARY KEY (`no_bayar`,`no_rawat`,`kd_jenis_prw`,`tgl_perawatan`,`jam_rawat`),
  KEY `no_rawat` (`no_rawat`),
  KEY `kd_jenis_prw` (`kd_jenis_prw`),
  CONSTRAINT `bayar_rawat_jl_dr_ibfk_1` FOREIGN KEY (`kd_jenis_prw`) REFERENCES `jns_perawatan` (`kd_jenis_prw`) ON UPDATE CASCADE,
  CONSTRAINT `bayar_rawat_jl_dr_ibfk_2` FOREIGN KEY (`no_rawat`) REFERENCES `reg_periksa` (`no_rawat`) ON UPDATE CASCADE,
  CONSTRAINT `bayar_rawat_jl_dr_ibfk_3` FOREIGN KEY (`no_bayar`) REFERENCES `bayar_jm_dokter` (`no_bayar`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table sik_ori.bayar_rawat_jl_drpr
CREATE TABLE IF NOT EXISTS `bayar_rawat_jl_drpr` (
  `no_bayar` varchar(17) NOT NULL DEFAULT '',
  `no_rawat` varchar(17) NOT NULL DEFAULT '',
  `kd_jenis_prw` varchar(15) NOT NULL,
  `tgl_perawatan` date NOT NULL,
  `jam_rawat` time NOT NULL,
  `tarif_tindakandr` double DEFAULT NULL,
  PRIMARY KEY (`no_rawat`,`kd_jenis_prw`,`no_bayar`,`tgl_perawatan`,`jam_rawat`),
  KEY `kd_jenis_prw` (`kd_jenis_prw`),
  KEY `no_rawat` (`no_rawat`),
  KEY `no_bayar` (`no_bayar`),
  CONSTRAINT `bayar_rawat_jl_drpr_ibfk_1` FOREIGN KEY (`kd_jenis_prw`) REFERENCES `jns_perawatan` (`kd_jenis_prw`) ON UPDATE CASCADE,
  CONSTRAINT `bayar_rawat_jl_drpr_ibfk_2` FOREIGN KEY (`no_rawat`) REFERENCES `reg_periksa` (`no_rawat`) ON UPDATE CASCADE,
  CONSTRAINT `bayar_rawat_jl_drpr_ibfk_3` FOREIGN KEY (`no_bayar`) REFERENCES `bayar_jm_dokter` (`no_bayar`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.


--kolom baru kd_ruang_ok 
-- Dumping structure for table sik_ori.booking_operasi
CREATE TABLE IF NOT EXISTS `booking_operasi` (
  `no_rawat` varchar(17) DEFAULT NULL,
  `kode_paket` varchar(15) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `jam_mulai` time DEFAULT NULL,
  `jam_selesai` time DEFAULT NULL,
  `status` enum('Menunggu','Proses Operasi','Selesai') DEFAULT NULL,
  `kd_dokter` varchar(20) DEFAULT NULL,
  `kd_ruang_ok` varchar(3) NOT NULL,
  KEY `no_rawat` (`no_rawat`),
  KEY `kode_paket` (`kode_paket`),
  KEY `kd_dokter` (`kd_dokter`),
  KEY `kd_ruang_ok` (`kd_ruang_ok`) USING BTREE,
  CONSTRAINT `booking_operasi_ibfk_1` FOREIGN KEY (`no_rawat`) REFERENCES `reg_periksa` (`no_rawat`) ON UPDATE CASCADE,
  CONSTRAINT `booking_operasi_ibfk_2` FOREIGN KEY (`kode_paket`) REFERENCES `paket_operasi` (`kode_paket`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `booking_operasi_ibfk_3` FOREIGN KEY (`kd_dokter`) REFERENCES `dokter` (`kd_dokter`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `booking_operasi_ibfk_4` FOREIGN KEY (`kd_ruang_ok`) REFERENCES `ruang_ok` (`kd_ruang_ok`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- Dumping structure for table sik_ori.bukti_penyerahan_resep_obat
CREATE TABLE IF NOT EXISTS `bukti_penyerahan_resep_obat` (
  `no_resep` varchar(14) NOT NULL,
  `photo` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`no_resep`),
  CONSTRAINT `bukti_penyerahan_resep_obat_ibfk_1` FOREIGN KEY (`no_resep`) REFERENCES `resep_obat` (`no_resep`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table sik_ori.bukti_perencanaan_pemulangan_saksikeluarga
CREATE TABLE IF NOT EXISTS `bukti_perencanaan_pemulangan_saksikeluarga` (
  `no_rawat` varchar(17) NOT NULL,
  `photo` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`no_rawat`),
  CONSTRAINT `bukti_perencanaan_pemulangan_saksikeluarga_ibfk_1` FOREIGN KEY (`no_rawat`) REFERENCES `perencanaan_pemulangan` (`no_rawat`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table sik_ori.bukti_persetujuan_penolakan_tindakan_penerimainformasi
CREATE TABLE IF NOT EXISTS `bukti_persetujuan_penolakan_tindakan_penerimainformasi` (
  `no_pernyataan` varchar(20) NOT NULL,
  `photo` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`no_pernyataan`),
  CONSTRAINT `bukti_persetujuan_penolakan_tindakan_penerimainformasi_ibfk_1` FOREIGN KEY (`no_pernyataan`) REFERENCES `persetujuan_penolakan_tindakan` (`no_pernyataan`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table sik_ori.bukti_persetujuan_penolakan_tindakan_saksikeluarga
CREATE TABLE IF NOT EXISTS `bukti_persetujuan_penolakan_tindakan_saksikeluarga` (
  `no_pernyataan` varchar(20) NOT NULL,
  `photo` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`no_pernyataan`),
  CONSTRAINT `bukti_persetujuan_penolakan_tindakan_saksikeluarga_ibfk_1` FOREIGN KEY (`no_pernyataan`) REFERENCES `persetujuan_penolakan_tindakan` (`no_pernyataan`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.


-- Dumping structure for table sik_ori.catatan_keperawatan_ranap
CREATE TABLE IF NOT EXISTS `catatan_keperawatan_ranap` (
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `no_rawat` varchar(17) NOT NULL,
  `uraian` varchar(1000) DEFAULT NULL,
  `nip` varchar(20) NOT NULL,
  PRIMARY KEY (`tanggal`,`jam`,`no_rawat`),
  KEY `no_rawat` (`no_rawat`),
  KEY `nip` (`nip`),
  CONSTRAINT `catatan_keperawatan_ranap_ibfk_1` FOREIGN KEY (`no_rawat`) REFERENCES `reg_periksa` (`no_rawat`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `catatan_keperawatan_ranap_ibfk_2` FOREIGN KEY (`nip`) REFERENCES `petugas` (`nip`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table sik_ori.catatan_observasi_igd
CREATE TABLE IF NOT EXISTS `catatan_observasi_igd` (
  `no_rawat` varchar(17) NOT NULL,
  `tgl_perawatan` date NOT NULL,
  `jam_rawat` time NOT NULL,
  `gcs` varchar(10) DEFAULT NULL,
  `td` varchar(8) NOT NULL,
  `hr` varchar(5) DEFAULT NULL,
  `rr` varchar(5) DEFAULT NULL,
  `suhu` varchar(5) DEFAULT NULL,
  `spo2` varchar(3) NOT NULL,
  `nip` varchar(20) NOT NULL,
  PRIMARY KEY (`no_rawat`,`tgl_perawatan`,`jam_rawat`),
  KEY `no_rawat` (`no_rawat`),
  KEY `nip` (`nip`),
  CONSTRAINT `catatan_observasi_igd_ibfk_1` FOREIGN KEY (`no_rawat`) REFERENCES `reg_periksa` (`no_rawat`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `catatan_observasi_igd_ibfk_2` FOREIGN KEY (`nip`) REFERENCES `petugas` (`nip`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table sik_ori.catatan_observasi_ranap
CREATE TABLE IF NOT EXISTS `catatan_observasi_ranap` (
  `no_rawat` varchar(17) NOT NULL,
  `tgl_perawatan` date NOT NULL,
  `jam_rawat` time NOT NULL,
  `gcs` varchar(10) DEFAULT NULL,
  `td` varchar(8) NOT NULL,
  `hr` varchar(5) DEFAULT NULL,
  `rr` varchar(5) DEFAULT NULL,
  `suhu` varchar(5) DEFAULT NULL,
  `spo2` varchar(3) NOT NULL,
  `nip` varchar(20) NOT NULL,
  PRIMARY KEY (`no_rawat`,`tgl_perawatan`,`jam_rawat`),
  KEY `no_rawat` (`no_rawat`),
  KEY `nip` (`nip`),
  CONSTRAINT `catatan_observasi_ranap_ibfk_1` FOREIGN KEY (`no_rawat`) REFERENCES `reg_periksa` (`no_rawat`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `catatan_observasi_ranap_ibfk_2` FOREIGN KEY (`nip`) REFERENCES `petugas` (`nip`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table sik_ori.catatan_observasi_ranap_kebidanan
CREATE TABLE IF NOT EXISTS `catatan_observasi_ranap_kebidanan` (
  `no_rawat` varchar(17) NOT NULL,
  `tgl_perawatan` date NOT NULL,
  `jam_rawat` time NOT NULL,
  `gcs` varchar(10) DEFAULT NULL,
  `td` varchar(8) NOT NULL,
  `hr` varchar(5) DEFAULT NULL,
  `rr` varchar(5) DEFAULT NULL,
  `suhu` varchar(5) DEFAULT NULL,
  `spo2` varchar(3) NOT NULL,
  `kontraksi` varchar(15) NOT NULL,
  `bjj` varchar(5) NOT NULL,
  `ppv` varchar(15) NOT NULL,
  `vt` varchar(30) NOT NULL,
  `nip` varchar(20) NOT NULL,
  PRIMARY KEY (`no_rawat`,`tgl_perawatan`,`jam_rawat`),
  KEY `no_rawat` (`no_rawat`),
  KEY `nip` (`nip`),
  CONSTRAINT `catatan_observasi_ranap_kebidanan_ibfk_1` FOREIGN KEY (`no_rawat`) REFERENCES `reg_periksa` (`no_rawat`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `catatan_observasi_ranap_kebidanan_ibfk_2` FOREIGN KEY (`nip`) REFERENCES `petugas` (`nip`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table sik_ori.catatan_observasi_ranap_postpartum
CREATE TABLE IF NOT EXISTS `catatan_observasi_ranap_postpartum` (
  `no_rawat` varchar(17) NOT NULL,
  `tgl_perawatan` date NOT NULL,
  `jam_rawat` time NOT NULL,
  `gcs` varchar(10) DEFAULT NULL,
  `td` varchar(8) NOT NULL,
  `hr` varchar(5) DEFAULT NULL,
  `rr` varchar(5) DEFAULT NULL,
  `suhu` varchar(5) DEFAULT NULL,
  `spo2` varchar(3) NOT NULL,
  `tfu` varchar(15) NOT NULL,
  `kontraksi` varchar(15) NOT NULL,
  `perdarahan` varchar(15) NOT NULL,
  `keterangan` varchar(30) NOT NULL,
  `nip` varchar(20) NOT NULL,
  PRIMARY KEY (`no_rawat`,`tgl_perawatan`,`jam_rawat`),
  KEY `no_rawat` (`no_rawat`),
  KEY `nip` (`nip`),
  CONSTRAINT `catatan_observasi_ranap_postpartum_ibfk_1` FOREIGN KEY (`no_rawat`) REFERENCES `reg_periksa` (`no_rawat`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `catatan_observasi_ranap_postpartum_ibfk_2` FOREIGN KEY (`nip`) REFERENCES `petugas` (`nip`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- kolom catatan tambah DEFAULT NULL
-- Dumping structure for table sik_ori.catatan_pasien
CREATE TABLE IF NOT EXISTS `catatan_pasien` (
  `no_rkm_medis` varchar(15) NOT NULL,
  `catatan` text DEFAULT NULL,
  PRIMARY KEY (`no_rkm_medis`),
  KEY `no_rkm_medis` (`no_rkm_medis`),
  CONSTRAINT `catatan_pasien_ibfk_1` FOREIGN KEY (`no_rkm_medis`) REFERENCES `pasien` (`no_rkm_medis`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- competency, config removed

-- databarang letak_barang->100

-- data_alkes_lab untuk laporan spuit

-- Dumping structure for table sik_dev.data_alkes_lab
CREATE TABLE IF NOT EXISTS `data_alkes_lab` (
  `no_rawat` varchar(17) NOT NULL,
  `kd_jenis_prw` varchar(15) NOT NULL,
  `tgl_periksa` date NOT NULL,
  `jam` time NOT NULL,
  `jml_spuit` int(5) NOT NULL,
  `jml_reagen` int(5) NOT NULL,
  PRIMARY KEY (`no_rawat`,`kd_jenis_prw`,`tgl_periksa`,`jam`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- data_HAIs stay

-- deleted_data stay

-- kolom baru keterangan
-- Dumping structure for table sik_ori.deposit
CREATE TABLE IF NOT EXISTS `deposit` (
  `no_deposit` varchar(17) NOT NULL,
  `no_rawat` varchar(17) NOT NULL,
  `tgl_deposit` datetime NOT NULL,
  `nama_bayar` varchar(50) NOT NULL,
  `besarppn` double NOT NULL,
  `besar_deposit` double DEFAULT NULL,
  `nip` varchar(20) NOT NULL,
  `keterangan` varchar(70) NOT NULL,
  PRIMARY KEY (`no_deposit`),
  KEY `nip` (`nip`),
  KEY `besar_deposit` (`besar_deposit`),
  KEY `no_rawat` (`no_rawat`),
  KEY `nama_bayar` (`nama_bayar`),
  CONSTRAINT `deposit_ibfk_1` FOREIGN KEY (`no_rawat`) REFERENCES `reg_periksa` (`no_rawat`) ON UPDATE CASCADE,
  CONSTRAINT `deposit_ibfk_2` FOREIGN KEY (`nip`) REFERENCES `petugas` (`nip`) ON UPDATE CASCADE,
  CONSTRAINT `deposit_ibfk_3` FOREIGN KEY (`nama_bayar`) REFERENCES `akun_bayar` (`nama_bayar`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- detail_pemberian_obat_copy1 removed if empty

-- detail_periksa_lab stay

-- detail_permintaan_lab stay untuk jaga2


-- Dumping structure for table sik_ori.detail_permintaan_resep_pulang
CREATE TABLE IF NOT EXISTS `detail_permintaan_resep_pulang` (
  `no_permintaan` varchar(14) DEFAULT NULL,
  `kode_brng` varchar(15) DEFAULT NULL,
  `jml` double DEFAULT NULL,
  `dosis` varchar(150) DEFAULT NULL,
  KEY `no_permintaan` (`no_permintaan`),
  KEY `kode_brng` (`kode_brng`),
  CONSTRAINT `detail_permintaan_resep_pulang_ibfk_1` FOREIGN KEY (`no_permintaan`) REFERENCES `permintaan_resep_pulang` (`no_permintaan`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `detail_permintaan_resep_pulang_ibfk_2` FOREIGN KEY (`kode_brng`) REFERENCES `databarang` (`kode_brng`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- tambah kolom jamxx

-- Dumping structure for table sik_ori.detail_permintaan_stok_obat_pasien
CREATE TABLE IF NOT EXISTS `detail_permintaan_stok_obat_pasien` (
  `no_permintaan` varchar(14) DEFAULT NULL,
  `kode_brng` varchar(15) DEFAULT NULL,
  `jml` double DEFAULT NULL,
  `aturan_pakai` varchar(150) DEFAULT NULL,
  `jam00` enum('true','false') NOT NULL,
  `jam01` enum('true','false') NOT NULL,
  `jam02` enum('true','false') NOT NULL,
  `jam03` enum('true','false') NOT NULL,
  `jam04` enum('true','false') NOT NULL,
  `jam05` enum('true','false') NOT NULL,
  `jam06` enum('true','false') NOT NULL,
  `jam07` enum('true','false') NOT NULL,
  `jam08` enum('true','false') NOT NULL,
  `jam09` enum('true','false') NOT NULL,
  `jam10` enum('true','false') NOT NULL,
  `jam11` enum('true','false') NOT NULL,
  `jam12` enum('true','false') NOT NULL,
  `jam13` enum('true','false') NOT NULL,
  `jam14` enum('true','false') NOT NULL,
  `jam15` enum('true','false') NOT NULL,
  `jam16` enum('true','false') NOT NULL,
  `jam17` enum('true','false') NOT NULL,
  `jam18` enum('true','false') NOT NULL,
  `jam19` enum('true','false') NOT NULL,
  `jam20` enum('true','false') NOT NULL,
  `jam21` enum('true','false') NOT NULL,
  `jam22` enum('true','false') NOT NULL,
  `jam23` enum('true','false') NOT NULL,
  KEY `no_permintaan` (`no_permintaan`),
  KEY `kode_brng` (`kode_brng`),
  CONSTRAINT `detail_permintaan_stok_obat_pasien_ibfk_1` FOREIGN KEY (`no_permintaan`) REFERENCES `permintaan_stok_obat_pasien` (`no_permintaan`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `detail_permintaan_stok_obat_pasien_ibfk_2` FOREIGN KEY (`kode_brng`) REFERENCES `databarang` (`kode_brng`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- epasien stay

-- tambah beberapa kolom
-- Dumping structure for table sik_ori.gambar
CREATE TABLE IF NOT EXISTS `gambar` (
  `inde` int(11) NOT NULL,
  `bpjs` longblob NOT NULL,
  `nyeri` longblob NOT NULL,
  `inhealth` longblob NOT NULL,
  `lokalis` longblob NOT NULL,
  `fisikfisio` longblob NOT NULL,
  `lokalistht` longblob NOT NULL,
  `lokalismata` longblob NOT NULL,
  `lokalisortho` longblob NOT NULL,
  PRIMARY KEY (`inde`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- gambar_pa removed

-- hasil_pa removed

-- Dumping structure for table sik_ori.hasil_pemeriksaan_usg
CREATE TABLE IF NOT EXISTS `hasil_pemeriksaan_usg` (
  `no_rawat` varchar(17) NOT NULL,
  `tanggal` datetime NOT NULL,
  `kd_dokter` varchar(20) NOT NULL,
  `diagnosa_klinis` varchar(50) DEFAULT NULL,
  `kiriman_dari` varchar(50) DEFAULT NULL,
  `hta` varchar(40) DEFAULT NULL,
  `kantong_gestasi` varchar(6) DEFAULT NULL,
  `ukuran_bokongkepala` varchar(6) DEFAULT NULL,
  `jenis_prestasi` varchar(30) DEFAULT NULL,
  `diameter_biparietal` varchar(6) DEFAULT NULL,
  `panjang_femur` varchar(6) DEFAULT NULL,
  `lingkar_abdomen` varchar(6) DEFAULT NULL,
  `tafsiran_berat_janin` varchar(6) DEFAULT NULL,
  `usia_kehamilan` varchar(15) DEFAULT NULL,
  `plasenta_berimplatansi` varchar(50) DEFAULT NULL,
  `derajat_maturitas` enum('0','1','2','3') DEFAULT NULL,
  `jumlah_air_ketuban` enum('Cukup','Berkurang') DEFAULT NULL,
  `indek_cairan_ketuban` varchar(40) DEFAULT NULL,
  `kelainan_kongenital` varchar(60) DEFAULT NULL,
  `peluang_sex` enum('Laki-laki','Perempuan') DEFAULT NULL,
  `kesimpulan` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`no_rawat`),
  KEY `kd_dokter` (`kd_dokter`),
  CONSTRAINT `hasil_pemeriksaan_usg_ibfk_1` FOREIGN KEY (`no_rawat`) REFERENCES `reg_periksa` (`no_rawat`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `hasil_pemeriksaan_usg_ibfk_2` FOREIGN KEY (`kd_dokter`) REFERENCES `dokter` (`kd_dokter`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table sik_ori.hasil_pemeriksaan_usg_gambar
CREATE TABLE IF NOT EXISTS `hasil_pemeriksaan_usg_gambar` (
  `no_rawat` varchar(20) NOT NULL,
  `photo` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`no_rawat`),
  CONSTRAINT `hasil_pemeriksaan_usg_gambar_ibfk_1` FOREIGN KEY (`no_rawat`) REFERENCES `hasil_pemeriksaan_usg` (`no_rawat`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- Dumping structure for table sik_ori.inacbg_data_terkirim_internal
CREATE TABLE IF NOT EXISTS `inacbg_data_terkirim_internal` (
  `no_sep` varchar(40) NOT NULL,
  `nik` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`no_sep`),
  CONSTRAINT `inacbg_data_terkirim_internal_ibfk_1` FOREIGN KEY (`no_sep`) REFERENCES `bridging_sep_internal` (`no_sep`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- Dumping structure for table sik_ori.inacbg_grouping_stage1_internal
CREATE TABLE IF NOT EXISTS `inacbg_grouping_stage1_internal` (
  `no_sep` varchar(40) NOT NULL,
  `code_cbg` varchar(10) DEFAULT NULL,
  `deskripsi` varchar(200) DEFAULT NULL,
  `tarif` double DEFAULT NULL,
  PRIMARY KEY (`no_sep`),
  CONSTRAINT `inacbg_grouping_stage1_internal_ibfk_1` FOREIGN KEY (`no_sep`) REFERENCES `bridging_sep_internal` (`no_sep`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS `inacbg_klaim_baru_internal` (
  `no_sep` varchar(40) NOT NULL DEFAULT '',
  `patient_id` varchar(30) DEFAULT NULL,
  `admission_id` varchar(30) DEFAULT NULL,
  `hospital_admission_id` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`no_sep`),
  CONSTRAINT `inacbg_klaim_baru_internal_ibfk_1` FOREIGN KEY (`no_sep`) REFERENCES `bridging_sep_internal` (`no_sep`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- inhealth_tindakan_pa removed

-- Dumping structure for table sik_ori.inventaris_gambar
CREATE TABLE IF NOT EXISTS `inventaris_gambar` (
  `no_inventaris` varchar(30) NOT NULL,
  `photo` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`no_inventaris`),
  CONSTRAINT `inventaris_gambar_ibfk_1` FOREIGN KEY (`no_inventaris`) REFERENCES `inventaris` (`no_inventaris`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--kolom status tambah item
-- Dumping structure for table sik_ori.inventaris_pemesanan
CREATE TABLE IF NOT EXISTS `inventaris_pemesanan` (
  `no_faktur` varchar(20) NOT NULL,
  `no_order` varchar(20) NOT NULL,
  `kode_suplier` char(5) DEFAULT NULL,
  `nip` varchar(20) DEFAULT NULL,
  `tgl_pesan` date DEFAULT NULL,
  `tgl_faktur` date DEFAULT NULL,
  `tgl_tempo` date DEFAULT NULL,
  `total1` double NOT NULL,
  `potongan` double NOT NULL,
  `total2` double NOT NULL,
  `ppn` double NOT NULL,
  `meterai` double DEFAULT NULL,
  `tagihan` double NOT NULL,
  `status` enum('Sudah Dibayar','Belum Dibayar','Belum Lunas','Titip Faktur') DEFAULT NULL,
  `kd_rek_aset` varchar(15) NOT NULL,
  PRIMARY KEY (`no_faktur`),
  KEY `kode_suplier` (`kode_suplier`),
  KEY `nip` (`nip`),
  CONSTRAINT `inventaris_pemesanan_ibfk_1` FOREIGN KEY (`kode_suplier`) REFERENCES `inventaris_suplier` (`kode_suplier`) ON UPDATE CASCADE,
  CONSTRAINT `inventaris_pemesanan_ibfk_2` FOREIGN KEY (`nip`) REFERENCES `petugas` (`nip`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--kolom status tambah item
-- Dumping structure for table sik_ori.ipsrspemesanan
CREATE TABLE IF NOT EXISTS `ipsrspemesanan` (
  `no_faktur` varchar(20) NOT NULL,
  `no_order` varchar(20) NOT NULL,
  `kode_suplier` char(5) DEFAULT NULL,
  `nip` varchar(20) DEFAULT NULL,
  `tgl_pesan` date DEFAULT NULL,
  `tgl_faktur` date DEFAULT NULL,
  `tgl_tempo` date DEFAULT NULL,
  `total1` double NOT NULL,
  `potongan` double NOT NULL,
  `total2` double NOT NULL,
  `ppn` double NOT NULL,
  `meterai` double DEFAULT NULL,
  `tagihan` double NOT NULL,
  `status` enum('Sudah Dibayar','Belum Dibayar','Belum Lunas','Titip Faktur') DEFAULT NULL,
  PRIMARY KEY (`no_faktur`),
  KEY `kode_suplier` (`kode_suplier`),
  KEY `nip` (`nip`),
  CONSTRAINT `ipsrspemesanan_ibfk_1` FOREIGN KEY (`kode_suplier`) REFERENCES `ipsrssuplier` (`kode_suplier`) ON UPDATE CASCADE,
  CONSTRAINT `ipsrspemesanan_ibfk_2` FOREIGN KEY (`nip`) REFERENCES `petugas` (`nip`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- item_received removed

--kolom kd_poli jadi DEFAULT NULL
-- Dumping structure for table sik_ori.jadwal
CREATE TABLE IF NOT EXISTS `jadwal` (
  `kd_dokter` varchar(20) NOT NULL,
  `hari_kerja` enum('SENIN','SELASA','RABU','KAMIS','JUMAT','SABTU','AKHAD') NOT NULL DEFAULT 'SENIN',
  `jam_mulai` time NOT NULL DEFAULT '00:00:00',
  `jam_selesai` time DEFAULT NULL,
  `kd_poli` char(5) DEFAULT NULL,
  `kuota` int(11) DEFAULT NULL,
  PRIMARY KEY (`kd_dokter`,`hari_kerja`,`jam_mulai`),
  KEY `kd_dokter` (`kd_dokter`),
  KEY `kd_poli` (`kd_poli`),
  KEY `jam_mulai` (`jam_mulai`),
  KEY `jam_selesai` (`jam_selesai`),
  CONSTRAINT `jadwal_ibfk_1` FOREIGN KEY (`kd_dokter`) REFERENCES `dokter` (`kd_dokter`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `jadwal_ibfk_2` FOREIGN KEY (`kd_poli`) REFERENCES `poliklinik` (`kd_poli`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping structure for table sik_ori.jawaban_pio_apoteker
CREATE TABLE IF NOT EXISTS `jawaban_pio_apoteker` (
  `no_permintaan` varchar(20) NOT NULL,
  `tanggal_jawab` datetime NOT NULL,
  `metode` enum('Lisan','Tertulis','Telepon') DEFAULT NULL,
  `penyampaian_jawaban` enum('Segera','Dalam 24 Jam','Lebih Dari 24 Jam') DEFAULT NULL,
  `jawaban` varchar(500) DEFAULT NULL,
  `referensi` varchar(500) DEFAULT NULL,
  `nip` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`no_permintaan`),
  KEY `nip` (`nip`),
  CONSTRAINT `jawaban_pio_apoteker_ibfk_1` FOREIGN KEY (`nip`) REFERENCES `petugas` (`nip`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

--kolom kategori tambah MB
-- Dumping structure for table sik_ori.jns_perawatan_lab
CREATE TABLE IF NOT EXISTS `jns_perawatan_lab` (
  `kd_jenis_prw` varchar(15) NOT NULL,
  `nm_perawatan` varchar(80) DEFAULT NULL,
  `bagian_rs` double DEFAULT NULL,
  `bhp` double NOT NULL,
  `tarif_perujuk` double NOT NULL,
  `tarif_tindakan_dokter` double NOT NULL,
  `tarif_tindakan_petugas` double DEFAULT NULL,
  `kso` double DEFAULT NULL,
  `menejemen` double DEFAULT NULL,
  `total_byr` double DEFAULT NULL,
  `kd_pj` char(3) NOT NULL,
  `status` enum('0','1') NOT NULL,
  `kelas` enum('-','Rawat Jalan','Kelas 1','Kelas 2','Kelas 3','Kelas Utama','Kelas VIP','Kelas VVIP') NOT NULL,
  `kategori` enum('PK','PA','MB') NOT NULL,
  PRIMARY KEY (`kd_jenis_prw`),
  KEY `kd_pj` (`kd_pj`),
  KEY `nm_perawatan` (`nm_perawatan`),
  KEY `tarif_perujuk` (`tarif_perujuk`),
  KEY `tarif_tindakan_dokter` (`tarif_tindakan_dokter`),
  KEY `tarif_tindakan_petugas` (`tarif_tindakan_petugas`),
  KEY `total_byr` (`total_byr`),
  KEY `bagian_rs` (`bagian_rs`),
  KEY `bhp` (`bhp`),
  KEY `kso` (`kso`),
  KEY `menejemen` (`menejemen`),
  KEY `status` (`status`),
  CONSTRAINT `jns_perawatan_lab_ibfk_1` FOREIGN KEY (`kd_pj`) REFERENCES `penjab` (`kd_pj`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- jns_perawatan_pa removed

-- kamar stay


--kolom tgl_Masuk -> default '0000-00-00'
-- Dumping structure for table sik_ori.kamar_inap
CREATE TABLE IF NOT EXISTS `kamar_inap` (
  `no_rawat` varchar(17) NOT NULL DEFAULT '',
  `kd_kamar` varchar(15) NOT NULL,
  `trf_kamar` double DEFAULT NULL,
  `diagnosa_awal` varchar(100) DEFAULT NULL,
  `diagnosa_akhir` varchar(100) DEFAULT NULL,
  `tgl_masuk` date NOT NULL DEFAULT '0000-00-00',
  `jam_masuk` time NOT NULL DEFAULT '00:00:00',
  `tgl_keluar` date DEFAULT NULL,
  `jam_keluar` time DEFAULT NULL,
  `lama` double DEFAULT NULL,
  `ttl_biaya` double DEFAULT NULL,
  `stts_pulang` enum('Sehat','Rujuk','APS','+','Meninggal','Sembuh','Membaik','Pulang Paksa','-','Pindah Kamar','Status Belum Lengkap','Atas Persetujuan Dokter','Atas Permintaan Sendiri','Isoman','Lain-lain') NOT NULL,
  PRIMARY KEY (`no_rawat`,`tgl_masuk`,`jam_masuk`),
  KEY `kd_kamar` (`kd_kamar`),
  KEY `diagnosa_awal` (`diagnosa_awal`),
  KEY `diagnosa_akhir` (`diagnosa_akhir`),
  KEY `tgl_keluar` (`tgl_keluar`),
  KEY `jam_keluar` (`jam_keluar`),
  KEY `lama` (`lama`),
  KEY `ttl_biaya` (`ttl_biaya`),
  KEY `stts_pulang` (`stts_pulang`),
  KEY `trf_kamar` (`trf_kamar`),
  CONSTRAINT `kamar_inap_ibfk_2` FOREIGN KEY (`kd_kamar`) REFERENCES `kamar` (`kd_kamar`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `kamar_inap_ibfk_3` FOREIGN KEY (`no_rawat`) REFERENCES `reg_periksa` (`no_rawat`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- tambah kolom baru
CREATE TABLE IF NOT EXISTS `kesling_mutu_air_limbah` (
  `nip` varchar(20) NOT NULL,
  `tanggal` datetime NOT NULL,
  `meteran` double DEFAULT NULL,
  `jumlahharian` double DEFAULT NULL,
  `ph` double DEFAULT NULL,
  `suhu` double DEFAULT NULL,
  `tds` double NOT NULL,
  `ec` double NOT NULL,
  `salt` double NOT NULL,
  PRIMARY KEY (`nip`,`tanggal`),
  CONSTRAINT `kesling_mutu_air_limbah_ibfk_1` FOREIGN KEY (`nip`) REFERENCES `petugas` (`nip`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- Dumping structure for table sik_ori.konseling_farmasi
CREATE TABLE IF NOT EXISTS `konseling_farmasi` (
  `no_rawat` varchar(17) NOT NULL,
  `tanggal` datetime NOT NULL,
  `diagnosa` varchar(40) DEFAULT NULL,
  `obat_pemakaian` varchar(700) DEFAULT NULL,
  `riwayat_alergi` varchar(30) DEFAULT NULL,
  `keluhan` varchar(300) DEFAULT NULL,
  `pernah_datang` enum('Ya','Tidak') DEFAULT NULL,
  `tindak_lanjut` varchar(400) DEFAULT NULL,
  `nip` varchar(20) NOT NULL,
  PRIMARY KEY (`no_rawat`),
  KEY `nip` (`nip`),
  CONSTRAINT `konseling_farmasi_ibfk_1` FOREIGN KEY (`no_rawat`) REFERENCES `reg_periksa` (`no_rawat`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `konseling_farmasi_ibfk_2` FOREIGN KEY (`nip`) REFERENCES `petugas` (`nip`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- location_city removed
-- location_district removed
-- location_province removed
-- location_village removed

-- Dumping structure for table sik_ori.master_masalah_keperawatan_igd
CREATE TABLE IF NOT EXISTS `master_masalah_keperawatan_igd` (
  `kode_masalah` varchar(3) NOT NULL,
  `nama_masalah` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`kode_masalah`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping structure for table sik_ori.master_masalah_keperawatan_psikiatri
CREATE TABLE IF NOT EXISTS `master_masalah_keperawatan_psikiatri` (
  `kode_masalah` varchar(3) NOT NULL,
  `nama_masalah` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`kode_masalah`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table sik_ori.master_rencana_keperawatan
CREATE TABLE IF NOT EXISTS `master_rencana_keperawatan` (
  `kode_masalah` varchar(3) NOT NULL,
  `kode_rencana` varchar(3) NOT NULL,
  `rencana_keperawatan` varchar(150) NOT NULL,
  PRIMARY KEY (`kode_rencana`),
  KEY `kode_masalah` (`kode_masalah`),
  CONSTRAINT `master_rencana_keperawatan_ibfk_1` FOREIGN KEY (`kode_masalah`) REFERENCES `master_masalah_keperawatan` (`kode_masalah`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table sik_ori.master_rencana_keperawatan_anak
CREATE TABLE IF NOT EXISTS `master_rencana_keperawatan_anak` (
  `kode_masalah` varchar(3) NOT NULL,
  `kode_rencana` varchar(3) NOT NULL,
  `rencana_keperawatan` varchar(150) NOT NULL,
  PRIMARY KEY (`kode_rencana`),
  KEY `kode_masalah` (`kode_masalah`),
  CONSTRAINT `master_rencana_keperawatan_anak_ibfk_1` FOREIGN KEY (`kode_masalah`) REFERENCES `master_masalah_keperawatan_anak` (`kode_masalah`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table sik_ori.master_rencana_keperawatan_gigi
CREATE TABLE IF NOT EXISTS `master_rencana_keperawatan_gigi` (
  `kode_masalah` varchar(3) NOT NULL,
  `kode_rencana` varchar(3) NOT NULL,
  `rencana_keperawatan` varchar(150) NOT NULL,
  PRIMARY KEY (`kode_rencana`),
  KEY `kode_masalah` (`kode_masalah`),
  CONSTRAINT `master_rencana_keperawatan_gigi_ibfk_1` FOREIGN KEY (`kode_masalah`) REFERENCES `master_masalah_keperawatan_gigi` (`kode_masalah`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table sik_ori.master_rencana_keperawatan_igd
CREATE TABLE IF NOT EXISTS `master_rencana_keperawatan_igd` (
  `kode_masalah` varchar(3) NOT NULL,
  `kode_rencana` varchar(3) NOT NULL,
  `rencana_keperawatan` varchar(150) NOT NULL,
  PRIMARY KEY (`kode_rencana`),
  KEY `kode_masalah` (`kode_masalah`),
  CONSTRAINT `master_rencana_keperawatan_igd_ibfk_1` FOREIGN KEY (`kode_masalah`) REFERENCES `master_masalah_keperawatan_igd` (`kode_masalah`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table sik_ori.master_rencana_keperawatan_mata
CREATE TABLE IF NOT EXISTS `master_rencana_keperawatan_mata` (
  `kode_masalah` varchar(3) NOT NULL,
  `kode_rencana` varchar(3) NOT NULL,
  `rencana_keperawatan` varchar(150) NOT NULL,
  PRIMARY KEY (`kode_rencana`),
  KEY `kode_masalah` (`kode_masalah`),
  CONSTRAINT `master_rencana_keperawatan_mata_ibfk_1` FOREIGN KEY (`kode_masalah`) REFERENCES `master_masalah_keperawatan_mata` (`kode_masalah`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table sik_ori.master_rencana_keperawatan_psikiatri
CREATE TABLE IF NOT EXISTS `master_rencana_keperawatan_psikiatri` (
  `kode_masalah` varchar(3) NOT NULL,
  `kode_rencana` varchar(3) NOT NULL,
  `rencana_keperawatan` varchar(150) NOT NULL,
  PRIMARY KEY (`kode_rencana`),
  KEY `kode_masalah` (`kode_masalah`),
  CONSTRAINT `master_rencana_keperawatan_psikiatri_ibfk_1` FOREIGN KEY (`kode_masalah`) REFERENCES `master_masalah_keperawatan_psikiatri` (`kode_masalah`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- mlite stay

-- kolom monitoring & evaluasi -> 500
CREATE TABLE IF NOT EXISTS `monitoring_asuhan_gizi` (
  `no_rawat` varchar(17) NOT NULL,
  `tanggal` datetime NOT NULL,
  `monitoring` varchar(500) DEFAULT NULL,
  `evaluasi` varchar(500) DEFAULT NULL,
  `nip` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`no_rawat`,`tanggal`),
  KEY `nip` (`nip`),
  CONSTRAINT `monitoring_asuhan_gizi_ibfk_1` FOREIGN KEY (`no_rawat`) REFERENCES `reg_periksa` (`no_rawat`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `monitoring_asuhan_gizi_ibfk_2` FOREIGN KEY (`nip`) REFERENCES `petugas` (`nip`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- mrconso, mt_xx re-check 

-- mutu_xx stay

-- kolom kategori beda

-- Dumping structure for table sik_ori.paket_operasi
CREATE TABLE IF NOT EXISTS `paket_operasi` (
  `kode_paket` varchar(15) NOT NULL,
  `nm_perawatan` varchar(80) NOT NULL,
  `kategori` enum('Kebidanan','Operasi') DEFAULT NULL,
  `operator1` double NOT NULL,
  `operator2` double NOT NULL,
  `operator3` double NOT NULL,
  `asisten_operator1` double DEFAULT NULL,
  `asisten_operator2` double NOT NULL,
  `asisten_operator3` double DEFAULT NULL,
  `instrumen` double DEFAULT NULL,
  `dokter_anak` double NOT NULL,
  `perawaat_resusitas` double NOT NULL,
  `dokter_anestesi` double NOT NULL,
  `asisten_anestesi` double NOT NULL,
  `asisten_anestesi2` double DEFAULT NULL,
  `bidan` double NOT NULL,
  `bidan2` double DEFAULT NULL,
  `bidan3` double DEFAULT NULL,
  `perawat_luar` double NOT NULL,
  `sewa_ok` double NOT NULL,
  `alat` double NOT NULL,
  `akomodasi` double DEFAULT NULL,
  `bagian_rs` double NOT NULL,
  `omloop` double NOT NULL,
  `omloop2` double DEFAULT NULL,
  `omloop3` double DEFAULT NULL,
  `omloop4` double DEFAULT NULL,
  `omloop5` double DEFAULT NULL,
  `sarpras` double DEFAULT NULL,
  `dokter_pjanak` double DEFAULT NULL,
  `dokter_umum` double DEFAULT NULL,
  `kd_pj` char(3) DEFAULT NULL,
  `status` enum('0','1') DEFAULT NULL,
  `kelas` enum('-','Rawat Jalan','Kelas 1','Kelas 2','Kelas 3','Kelas Utama','Kelas VIP','Kelas VVIP') DEFAULT NULL,
  PRIMARY KEY (`kode_paket`),
  KEY `nm_perawatan` (`nm_perawatan`),
  KEY `operator1` (`operator1`),
  KEY `operator2` (`operator2`),
  KEY `operator3` (`operator3`),
  KEY `asisten_operator1` (`asisten_operator1`),
  KEY `asisten_operator2` (`asisten_operator2`),
  KEY `asisten_operator3` (`instrumen`),
  KEY `dokter_anak` (`dokter_anak`),
  KEY `perawat_resusitas` (`perawaat_resusitas`),
  KEY `dokter_anestasi` (`dokter_anestesi`),
  KEY `asisten_anastesi` (`asisten_anestesi`),
  KEY `bidan` (`bidan`),
  KEY `perawat_luar` (`perawat_luar`),
  KEY `sewa_ok` (`sewa_ok`),
  KEY `alat` (`alat`),
  KEY `sewa_vk` (`akomodasi`),
  KEY `bagian_rs` (`bagian_rs`),
  KEY `omloop` (`omloop`),
  KEY `kd_pj` (`kd_pj`),
  KEY `asisten_anestesi2` (`asisten_anestesi2`),
  KEY `omloop2` (`omloop2`),
  KEY `omloop3` (`omloop3`),
  KEY `omloop4` (`omloop4`),
  KEY `omloop5` (`omloop5`),
  KEY `status` (`status`),
  KEY `kategori` (`kategori`),
  KEY `bidan2` (`bidan2`),
  KEY `bidan3` (`bidan3`),
  KEY `asisten_operator3_2` (`asisten_operator3`),
  CONSTRAINT `paket_operasi_ibfk_1` FOREIGN KEY (`kd_pj`) REFERENCES `penjab` (`kd_pj`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- tambah kolom lingkarperut
-- Dumping structure for table sik_ori.pcare_kunjungan_umum
CREATE TABLE IF NOT EXISTS `pcare_kunjungan_umum` (
  `no_rawat` varchar(17) NOT NULL,
  `noKunjungan` varchar(40) DEFAULT NULL,
  `tglDaftar` date DEFAULT NULL,
  `no_rkm_medis` varchar(15) DEFAULT NULL,
  `nm_pasien` varchar(40) DEFAULT NULL,
  `noKartu` varchar(25) DEFAULT NULL,
  `kdPoli` char(5) DEFAULT NULL,
  `nmPoli` varchar(50) DEFAULT NULL,
  `keluhan` varchar(400) DEFAULT NULL,
  `kdSadar` varchar(5) DEFAULT NULL,
  `nmSadar` varchar(50) DEFAULT NULL,
  `sistole` varchar(3) DEFAULT NULL,
  `diastole` varchar(3) DEFAULT NULL,
  `beratBadan` varchar(5) DEFAULT NULL,
  `tinggiBadan` varchar(5) DEFAULT NULL,
  `respRate` varchar(3) DEFAULT NULL,
  `heartRate` varchar(3) DEFAULT NULL,
  `lingkarPerut` varchar(5) NOT NULL,
  `terapi` varchar(400) DEFAULT NULL,
  `kdStatusPulang` varchar(5) DEFAULT NULL,
  `nmStatusPulang` varchar(50) DEFAULT NULL,
  `tglPulang` date DEFAULT NULL,
  `kdDokter` varchar(20) DEFAULT NULL,
  `nmDokter` varchar(50) DEFAULT NULL,
  `kdDiag1` varchar(10) DEFAULT NULL,
  `nmDiag1` varchar(400) DEFAULT NULL,
  `kdDiag2` varchar(10) DEFAULT NULL,
  `nmDiag2` varchar(400) DEFAULT NULL,
  `kdDiag3` varchar(10) DEFAULT NULL,
  `nmDiag3` varchar(400) DEFAULT NULL,
  `status` enum('Terkirim','Gagal') NOT NULL,
  PRIMARY KEY (`no_rawat`),
  CONSTRAINT `pcare_kunjungan_umum_ibfk_1` FOREIGN KEY (`no_rawat`) REFERENCES `reg_periksa` (`no_rawat`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- tambah kolom lingkar_perut
-- Dumping structure for table sik_ori.pcare_pendaftaran
CREATE TABLE IF NOT EXISTS `pcare_pendaftaran` (
  `no_rawat` varchar(17) NOT NULL,
  `tglDaftar` date NOT NULL,
  `no_rkm_medis` varchar(15) NOT NULL,
  `nm_pasien` varchar(40) NOT NULL,
  `kdProviderPeserta` varchar(15) NOT NULL,
  `noKartu` varchar(25) NOT NULL,
  `kdPoli` varchar(5) NOT NULL,
  `nmPoli` varchar(50) NOT NULL,
  `keluhan` varchar(400) NOT NULL,
  `kunjSakit` enum('Kunjungan Sakit','Kunjungan Sehat') NOT NULL,
  `sistole` varchar(3) NOT NULL,
  `diastole` varchar(3) NOT NULL,
  `beratBadan` varchar(5) NOT NULL,
  `tinggiBadan` varchar(5) NOT NULL,
  `respRate` varchar(3) NOT NULL,
  `lingkar_perut` varchar(5) NOT NULL,
  `heartRate` varchar(3) NOT NULL,
  `rujukBalik` varchar(3) NOT NULL,
  `kdTkp` enum('10 Rawat Jalan','20 Rawat Inap','50 Promotif Preventif') NOT NULL,
  `noUrut` varchar(5) NOT NULL,
  `status` enum('Terkirim','Gagal') NOT NULL,
  PRIMARY KEY (`no_rawat`),
  CONSTRAINT `pcare_pendaftaran_ibfk_1` FOREIGN KEY (`no_rawat`) REFERENCES `reg_periksa` (`no_rawat`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- tambah kolom lingkarperut
-- Dumping structure for table sik_ori.pcare_rujuk_internal
CREATE TABLE IF NOT EXISTS `pcare_rujuk_internal` (
  `no_rawat` varchar(17) NOT NULL,
  `noKunjungan` varchar(40) DEFAULT NULL,
  `tglDaftar` date DEFAULT NULL,
  `no_rkm_medis` varchar(15) DEFAULT NULL,
  `nm_pasien` varchar(40) DEFAULT NULL,
  `noKartu` varchar(25) DEFAULT NULL,
  `kdPoli` char(5) DEFAULT NULL,
  `nmPoli` varchar(50) DEFAULT NULL,
  `keluhan` varchar(400) DEFAULT NULL,
  `kdSadar` varchar(5) DEFAULT NULL,
  `nmSadar` varchar(50) DEFAULT NULL,
  `sistole` varchar(3) DEFAULT NULL,
  `diastole` varchar(3) DEFAULT NULL,
  `beratBadan` varchar(5) DEFAULT NULL,
  `tinggiBadan` varchar(5) DEFAULT NULL,
  `respRate` varchar(3) DEFAULT NULL,
  `heartRate` varchar(3) DEFAULT NULL,
  `lingkarPerut` varchar(5) NOT NULL,
  `terapi` varchar(400) DEFAULT NULL,
  `kdStatusPulang` varchar(5) DEFAULT NULL,
  `nmStatusPulang` varchar(50) DEFAULT NULL,
  `tglPulang` date DEFAULT NULL,
  `kdDokter` varchar(20) DEFAULT NULL,
  `nmDokter` varchar(50) DEFAULT NULL,
  `kdDiag1` varchar(10) DEFAULT NULL,
  `nmDiag1` varchar(400) DEFAULT NULL,
  `kdDiag2` varchar(10) DEFAULT NULL,
  `nmDiag2` varchar(400) DEFAULT NULL,
  `kdDiag3` varchar(10) DEFAULT NULL,
  `nmDiag3` varchar(400) DEFAULT NULL,
  `kdPoliRujukInternal` char(5) DEFAULT NULL,
  `nmPoliRujukInternal` varchar(50) DEFAULT NULL,
  `kdTACC` char(5) DEFAULT NULL,
  `nmTACC` varchar(50) DEFAULT NULL,
  `alasanTACC` varchar(400) DEFAULT NULL,
  PRIMARY KEY (`no_rawat`),
  CONSTRAINT `pcare_rujuk_internal_ibfk_1` FOREIGN KEY (`no_rawat`) REFERENCES `reg_periksa` (`no_rawat`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- tambah kolom lingkarperut
-- Dumping structure for table sik_ori.pcare_rujuk_subspesialis
CREATE TABLE IF NOT EXISTS `pcare_rujuk_subspesialis` (
  `no_rawat` varchar(17) NOT NULL,
  `noKunjungan` varchar(40) DEFAULT NULL,
  `tglDaftar` date DEFAULT NULL,
  `no_rkm_medis` varchar(15) DEFAULT NULL,
  `nm_pasien` varchar(40) DEFAULT NULL,
  `noKartu` varchar(25) DEFAULT NULL,
  `kdPoli` char(5) DEFAULT NULL,
  `nmPoli` varchar(50) DEFAULT NULL,
  `keluhan` varchar(400) DEFAULT NULL,
  `kdSadar` varchar(5) DEFAULT NULL,
  `nmSadar` varchar(50) DEFAULT NULL,
  `sistole` varchar(3) DEFAULT NULL,
  `diastole` varchar(3) DEFAULT NULL,
  `beratBadan` varchar(5) DEFAULT NULL,
  `tinggiBadan` varchar(5) DEFAULT NULL,
  `respRate` varchar(3) DEFAULT NULL,
  `heartRate` varchar(3) DEFAULT NULL,
  `lingkarPerut` varchar(5) NOT NULL,
  `terapi` varchar(400) DEFAULT NULL,
  `kdStatusPulang` varchar(5) DEFAULT NULL,
  `nmStatusPulang` varchar(50) DEFAULT NULL,
  `tglPulang` date DEFAULT NULL,
  `kdDokter` varchar(20) DEFAULT NULL,
  `nmDokter` varchar(50) DEFAULT NULL,
  `kdDiag1` varchar(10) DEFAULT NULL,
  `nmDiag1` varchar(400) DEFAULT NULL,
  `kdDiag2` varchar(10) DEFAULT NULL,
  `nmDiag2` varchar(400) DEFAULT NULL,
  `kdDiag3` varchar(10) DEFAULT NULL,
  `nmDiag3` varchar(400) DEFAULT NULL,
  `tglEstRujuk` date DEFAULT NULL,
  `kdPPK` varchar(15) DEFAULT NULL,
  `nmPPK` varchar(100) NOT NULL,
  `kdSubSpesialis` varchar(5) DEFAULT NULL,
  `nmSubSpesialis` varchar(50) DEFAULT NULL,
  `kdSarana` char(5) DEFAULT NULL,
  `nmSarana` varchar(50) DEFAULT NULL,
  `kdTACC` char(5) DEFAULT NULL,
  `nmTACC` varchar(50) DEFAULT NULL,
  `alasanTACC` varchar(400) DEFAULT NULL,
  PRIMARY KEY (`no_rawat`),
  CONSTRAINT `pcare_rujuk_subspesialis_ibfk_1` FOREIGN KEY (`no_rawat`) REFERENCES `reg_periksa` (`no_rawat`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- Dumping structure for table sik_ori.pelayanan_informasi_obat
CREATE TABLE IF NOT EXISTS `pelayanan_informasi_obat` (
  `no_permintaan` varchar(20) NOT NULL,
  `no_rawat` varchar(17) NOT NULL,
  `tanggal` datetime NOT NULL,
  `metode` enum('Lisan','Tertulis','Telepon') DEFAULT NULL,
  `penanya` varchar(70) DEFAULT NULL,
  `status_penanya` enum('Pasien','Keluarga Pasien','Petugas Kesehatan') DEFAULT NULL,
  `no_telp_penanya` varchar(30) DEFAULT NULL,
  `jenis_pertanyaan` enum('Identifikasi Obat','Interaksi Obat','Harga Obat','Kontraindikasi','Cara Pemakaian','Stabilitas','Dosis','Keracunan','Efek Samping Obat','Penggunaan Terapeutik','Farmakokinetika','Farmakodinamika','Ketersediaan Obat','Lain-lain') DEFAULT NULL,
  `keterangan_jenis_pertanyaan` varchar(30) DEFAULT NULL,
  `uraian_pertanyaan` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`no_permintaan`),
  KEY `no_rawat` (`no_rawat`),
  CONSTRAINT `pelayanan_informasi_obat_ibfk_1` FOREIGN KEY (`no_rawat`) REFERENCES `reg_periksa` (`no_rawat`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table sik_ori.pemantauan_pews_anak
CREATE TABLE IF NOT EXISTS `pemantauan_pews_anak` (
  `no_rawat` varchar(17) NOT NULL,
  `tanggal` datetime NOT NULL,
  `parameter_perilaku` enum('Sadar / Bermain','Tidur / Perubahan Perilaku','Gelisah','Tidak Merespon Terhadap Nyeri Penurunan Kesadaran') DEFAULT NULL,
  `skor_perilaku` varchar(1) DEFAULT NULL,
  `parameter_crt_atau_warna_kulit` enum('1 - 2 dtk / Pink','3 dtk / Pucat','4 dtk / Sianosis','>=5 dtk / Mottle') DEFAULT NULL,
  `skor_crt_atau_warna_kulit` varchar(1) DEFAULT NULL,
  `parameter_perespirasi` enum('Tidak Ada Retraksi','Cuping Hidung / O2 1-3 Lpm','Retraksi Dada / O2 4-6 Lpm','Stridor / O2 7-8 Lpm') DEFAULT NULL,
  `skor_perespirasi` varchar(1) DEFAULT NULL,
  `skor_total` varchar(1) DEFAULT NULL,
  `parameter_total` varchar(250) DEFAULT NULL,
  `nip` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`no_rawat`,`tanggal`),
  KEY `nip` (`nip`),
  CONSTRAINT `pemantauan_pews_anak_ibfk_1` FOREIGN KEY (`no_rawat`) REFERENCES `reg_periksa` (`no_rawat`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `pemantauan_pews_anak_ibfk_2` FOREIGN KEY (`nip`) REFERENCES `petugas` (`nip`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.


-- kolom char->varchar; tambah kolom spo2 & evaluasi
-- Dumping structure for table sik_ori.pemeriksaan_ralan
CREATE TABLE IF NOT EXISTS `pemeriksaan_ralan` (
  `no_rawat` varchar(17) NOT NULL,
  `tgl_perawatan` date NOT NULL,
  `jam_rawat` time NOT NULL,
  `suhu_tubuh` varchar(5) DEFAULT NULL,
  `tensi` varchar(8) NOT NULL,
  `nadi` varchar(3) DEFAULT NULL,
  `respirasi` varchar(3) DEFAULT NULL,
  `tinggi` varchar(5) DEFAULT NULL,
  `berat` varchar(5) DEFAULT NULL,
  `spo2` varchar(3) NOT NULL,
  `gcs` varchar(10) DEFAULT NULL,
  `kesadaran` enum('Compos Mentis','Somnolence','Sopor','Coma') NOT NULL,
  `keluhan` varchar(2000) DEFAULT NULL,
  `pemeriksaan` varchar(2000) DEFAULT NULL,
  `alergi` varchar(50) DEFAULT NULL,
  `lingkar_perut` varchar(5) DEFAULT NULL,
  `rtl` varchar(2000) NOT NULL,
  `penilaian` varchar(2000) NOT NULL,
  `instruksi` varchar(2000) NOT NULL,
  `evaluasi` varchar(2000) NOT NULL,
  `nip` varchar(20) NOT NULL,
  PRIMARY KEY (`no_rawat`,`tgl_perawatan`,`jam_rawat`),
  KEY `no_rawat` (`no_rawat`),
  KEY `nip` (`nip`),
  CONSTRAINT `pemeriksaan_ralan_ibfk_1` FOREIGN KEY (`no_rawat`) REFERENCES `reg_periksa` (`no_rawat`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `pemeriksaan_ralan_ibfk_2` FOREIGN KEY (`nip`) REFERENCES `pegawai` (`nik`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- kolom char->varchar; tambah kolom spo2 & evaluasi
-- Dumping structure for table sik_ori.pemeriksaan_ranap
CREATE TABLE IF NOT EXISTS `pemeriksaan_ranap` (
  `no_rawat` varchar(17) NOT NULL,
  `tgl_perawatan` date NOT NULL,
  `jam_rawat` time NOT NULL,
  `suhu_tubuh` varchar(5) DEFAULT NULL,
  `tensi` varchar(8) NOT NULL,
  `nadi` varchar(3) DEFAULT NULL,
  `respirasi` varchar(3) DEFAULT NULL,
  `tinggi` varchar(5) DEFAULT NULL,
  `berat` varchar(5) DEFAULT NULL,
  `spo2` varchar(3) NOT NULL,
  `gcs` varchar(10) DEFAULT NULL,
  `kesadaran` enum('Compos Mentis','Somnolence','Sopor','Coma') NOT NULL,
  `keluhan` varchar(2000) DEFAULT NULL,
  `pemeriksaan` varchar(2000) DEFAULT NULL,
  `alergi` varchar(50) DEFAULT NULL,
  `penilaian` varchar(2000) NOT NULL,
  `rtl` varchar(2000) NOT NULL,
  `instruksi` varchar(2000) NOT NULL,
  `evaluasi` varchar(2000) NOT NULL,
  `nip` varchar(20) NOT NULL,
  PRIMARY KEY (`no_rawat`,`tgl_perawatan`,`jam_rawat`),
  KEY `no_rawat` (`no_rawat`),
  KEY `nip` (`nip`),
  CONSTRAINT `pemeriksaan_ranap_ibfk_1` FOREIGN KEY (`no_rawat`) REFERENCES `reg_periksa` (`no_rawat`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `pemeriksaan_ranap_ibfk_2` FOREIGN KEY (`nip`) REFERENCES `pegawai` (`nik`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- kolom status tambah titip faktur
-- Dumping structure for table sik_ori.pemesanan
CREATE TABLE IF NOT EXISTS `pemesanan` (
  `no_faktur` varchar(20) NOT NULL,
  `no_order` varchar(20) NOT NULL,
  `kode_suplier` char(5) DEFAULT NULL,
  `nip` varchar(20) DEFAULT NULL,
  `tgl_pesan` date DEFAULT NULL,
  `tgl_faktur` date DEFAULT NULL,
  `tgl_tempo` date DEFAULT NULL,
  `total1` double NOT NULL,
  `potongan` double NOT NULL,
  `total2` double NOT NULL,
  `ppn` double NOT NULL,
  `meterai` double DEFAULT NULL,
  `tagihan` double NOT NULL,
  `kd_bangsal` char(5) NOT NULL,
  `status` enum('Sudah Dibayar','Belum Dibayar','Belum Lunas','Titip Faktur') DEFAULT NULL,
  PRIMARY KEY (`no_faktur`),
  KEY `kode_suplier` (`kode_suplier`),
  KEY `nip` (`nip`),
  KEY `kd_bangsal` (`kd_bangsal`),
  CONSTRAINT `pemesanan_ibfk_1` FOREIGN KEY (`kode_suplier`) REFERENCES `datasuplier` (`kode_suplier`) ON UPDATE CASCADE,
  CONSTRAINT `pemesanan_ibfk_2` FOREIGN KEY (`nip`) REFERENCES `petugas` (`nip`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `pemesanan_ibfk_3` FOREIGN KEY (`kd_bangsal`) REFERENCES `bangsal` (`kd_bangsal`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- Dumping structure for table sik_ori.peminjampiutang
CREATE TABLE IF NOT EXISTS `peminjampiutang` (
  `kode_peminjam` varchar(5) NOT NULL,
  `nama_peminjam` varchar(50) DEFAULT NULL,
  `alamat` varchar(150) DEFAULT NULL,
  `no_telp` varchar(13) DEFAULT NULL,
  `kd_rek` varchar(15) DEFAULT NULL,
  `status` enum('0','1') NOT NULL,
  PRIMARY KEY (`kode_peminjam`),
  KEY `kd_rek` (`kd_rek`),
  CONSTRAINT `peminjampiutang_ibfk_1` FOREIGN KEY (`kd_rek`) REFERENCES `rekening` (`kd_rek`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- Dumping structure for table sik_ori.penilaian_awal_keperawatan_igd
CREATE TABLE IF NOT EXISTS `penilaian_awal_keperawatan_igd` (
  `no_rawat` varchar(17) NOT NULL,
  `tanggal` datetime NOT NULL,
  `informasi` enum('Autoanamnesis','Alloanamnesis') NOT NULL,
  `keluhan_utama` text NOT NULL,
  `rpd` text NOT NULL,
  `rpo` text NOT NULL,
  `status_kehamilan` enum('Tidak Hamil','Hamil') NOT NULL,
  `gravida` varchar(20) DEFAULT NULL,
  `para` varchar(20) DEFAULT NULL,
  `abortus` varchar(20) DEFAULT NULL,
  `hpht` varchar(20) DEFAULT NULL,
  `tekanan` enum('TAK','Sakit Kepala','Muntah','Pusing','Bingung') NOT NULL,
  `pupil` enum('Normal','Miosis','Isokor','Anisokor') NOT NULL,
  `neurosensorik` enum('TAK','Spasme Otot','Perubahan Sensorik','Perubahan Motorik','Perubahan Bentuk Ekstremitas','Penurunan Tingkat Kesadaran','Fraktur/Dislokasi','Luksasio','Kerusakan Jaringan/Luka') NOT NULL,
  `integumen` enum('TAK','Luka Bakar','Luka Robek','Lecet','Luka Decubitus','Luka Gangren') NOT NULL,
  `turgor` enum('Baik','Menurun') NOT NULL,
  `edema` enum('Tidak Ada','Ekstremitas','Seluruh Tubuh','Asites','Palpebrae') NOT NULL,
  `mukosa` enum('Lembab','Kering') NOT NULL,
  `perdarahan` enum('Tidak Ada','Ada') NOT NULL,
  `jumlah_perdarahan` char(5) DEFAULT NULL,
  `warna_perdarahan` varchar(40) DEFAULT '',
  `intoksikasi` enum('Tidak Ada','Ada','Gigitan Binatang','Zat Kimia','Gas','Obat') NOT NULL,
  `bab` char(2) DEFAULT NULL,
  `xbab` varchar(10) DEFAULT NULL,
  `kbab` varchar(40) DEFAULT NULL,
  `wbab` varchar(40) DEFAULT NULL,
  `bak` char(2) DEFAULT NULL,
  `xbak` varchar(10) DEFAULT NULL,
  `wbak` varchar(40) DEFAULT '',
  `lbak` varchar(40) DEFAULT '',
  `psikologis` enum('Tidak Ada Masalah','Marah','Takut','Depresi','Cepat Lelah','Cemas','Gelisah','Lain-lain') NOT NULL,
  `jiwa` enum('Ya','Tidak') NOT NULL,
  `perilaku` enum('Perilaku Kekerasan','Gangguan Efek','Gangguan Memori','Halusinasi','Kecenderungan Percobaan Bunuh Diri','Lainnya') NOT NULL,
  `dilaporkan` varchar(50) DEFAULT NULL,
  `sebutkan` varchar(50) DEFAULT NULL,
  `hubungan` enum('Harmonis','Kurang Harmonis','Tidak Harmonis','Konflik Besar') NOT NULL,
  `tinggal_dengan` enum('Sendiri','Orang Tua','Suami / Istri','Lainnya') NOT NULL,
  `ket_tinggal` varchar(50) DEFAULT '',
  `budaya` enum('Tidak Ada','Ada') NOT NULL,
  `ket_budaya` varchar(50) NOT NULL,
  `pendidikan_pj` enum('-','TS','TK','SD','SMP','SMA','SLTA/SEDERAJAT','D1','D2','D3','D4','S1','S2','S3') NOT NULL,
  `ket_pendidikan_pj` varchar(50) DEFAULT NULL,
  `edukasi` enum('Pasien','Keluarga') NOT NULL,
  `ket_edukasi` varchar(50) NOT NULL,
  `kemampuan` enum('Mandiri','Bantuan Minimal','Bantuan Sebagian','Ketergantungan Total') NOT NULL,
  `aktifitas` enum('Tirah Baring','Duduk','Berjalan') NOT NULL,
  `alat_bantu` enum('Tidak','Ya') NOT NULL,
  `ket_bantu` varchar(50) DEFAULT '',
  `nyeri` enum('Tidak Ada Nyeri','Nyeri Akut','Nyeri Kronis') NOT NULL,
  `provokes` enum('Proses Penyakit','Benturan','Lain-lain') NOT NULL,
  `ket_provokes` varchar(40) NOT NULL,
  `quality` enum('Seperti Tertusuk','Berdenyut','Teriris','Tertindih','Tertiban','Lain-lain') NOT NULL,
  `ket_quality` varchar(50) NOT NULL,
  `lokasi` varchar(50) NOT NULL,
  `menyebar` enum('Tidak','Ya') NOT NULL,
  `skala_nyeri` enum('0','1','2','3','4','5','6','7','8','9','10') NOT NULL,
  `durasi` varchar(25) NOT NULL,
  `nyeri_hilang` enum('Istirahat','Medengar Musik','Minum Obat') NOT NULL,
  `ket_nyeri` varchar(40) DEFAULT NULL,
  `pada_dokter` enum('Tidak','Ya') NOT NULL,
  `ket_dokter` varchar(15) DEFAULT NULL,
  `berjalan_a` enum('Ya','Tidak') NOT NULL,
  `berjalan_b` enum('Ya','Tidak') NOT NULL,
  `berjalan_c` enum('Ya','Tidak') NOT NULL,
  `hasil` enum('Tidak beresiko (tidak ditemukan a dan b)','Resiko rendah (ditemukan a/b)','Resiko tinggi (ditemukan a dan b)') NOT NULL,
  `lapor` enum('Ya','Tidak') NOT NULL,
  `ket_lapor` varchar(15) DEFAULT NULL,
  `rencana` text NOT NULL,
  `nip` varchar(20) NOT NULL,
  PRIMARY KEY (`no_rawat`),
  KEY `nip` (`nip`) USING BTREE,
  CONSTRAINT `penilaian_awal_keperawatan_igd_ibfk_1` FOREIGN KEY (`no_rawat`) REFERENCES `reg_periksa` (`no_rawat`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `penilaian_awal_keperawatan_igd_ibfk_2` FOREIGN KEY (`nip`) REFERENCES `petugas` (`nip`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.

-- Dumping structure for table sik_ori.penilaian_awal_keperawatan_igd_masalah
CREATE TABLE IF NOT EXISTS `penilaian_awal_keperawatan_igd_masalah` (
  `no_rawat` varchar(17) NOT NULL,
  `kode_masalah` varchar(3) NOT NULL,
  PRIMARY KEY (`no_rawat`,`kode_masalah`),
  KEY `kode_masalah` (`kode_masalah`) USING BTREE,
  CONSTRAINT `penilaian_awal_keperawatan_igd_masalah_ibfk_1` FOREIGN KEY (`no_rawat`) REFERENCES `reg_periksa` (`no_rawat`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `penilaian_awal_keperawatan_igd_masalah_ibfk_2` FOREIGN KEY (`kode_masalah`) REFERENCES `master_masalah_keperawatan_igd` (`kode_masalah`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- penilaian_awal_keperawatan_ralan kolom nyeri tambah 'N/A'



-- Dumping structure for table sik_ori.penilaian_awal_keperawatan_ralan_masalah_psikiatri
CREATE TABLE IF NOT EXISTS `penilaian_awal_keperawatan_ralan_masalah_psikiatri` (
  `no_rawat` varchar(17) NOT NULL,
  `kode_masalah` varchar(3) NOT NULL,
  PRIMARY KEY (`no_rawat`,`kode_masalah`),
  KEY `kode_masalah` (`kode_masalah`) USING BTREE,
  CONSTRAINT `penilaian_awal_keperawatan_ralan_masalah_psikiatri_ibfk_1` FOREIGN KEY (`no_rawat`) REFERENCES `reg_periksa` (`no_rawat`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `penilaian_awal_keperawatan_ralan_masalah_psikiatri_ibfk_2` FOREIGN KEY (`kode_masalah`) REFERENCES `master_masalah_keperawatan_psikiatri` (`kode_masalah`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.

-- Dumping structure for table sik_ori.penilaian_awal_keperawatan_ralan_psikiatri
CREATE TABLE IF NOT EXISTS `penilaian_awal_keperawatan_ralan_psikiatri` (
  `no_rawat` varchar(17) NOT NULL,
  `tanggal` datetime NOT NULL,
  `informasi` enum('Autoanamnesis','Alloanamnesis') NOT NULL,
  `keluhan_utama` varchar(500) NOT NULL DEFAULT '',
  `rkd_sakit_sejak` varchar(8) NOT NULL,
  `rkd_keluhan` varchar(500) NOT NULL,
  `rkd_berobat` enum('Tidak','Ya, Alternatif','Ya, RS','Ya, Puskesmas') NOT NULL,
  `rkd_hasil_pengobatan` enum('Berhasil','Tidak Berhasil') NOT NULL,
  `fp_putus_obat` enum('Tidak','Ya') NOT NULL,
  `ket_putus_obat` varchar(50) NOT NULL,
  `fp_ekonomi` enum('Tidak','Ya') NOT NULL,
  `ket_masalah_ekonomi` varchar(50) NOT NULL,
  `fp_masalah_fisik` enum('Tidak','Ya') NOT NULL,
  `ket_masalah_fisik` varchar(50) NOT NULL,
  `fp_masalah_psikososial` enum('Tidak','Ya') NOT NULL,
  `ket_masalah_psikososial` varchar(50) NOT NULL,
  `rh_keluarga` enum('Tidak','Ya') NOT NULL,
  `ket_rh_keluarga` varchar(50) NOT NULL,
  `resiko_bunuh_diri` enum('Tidak','Ya') NOT NULL,
  `rbd_ide` enum('Tidak','Ya') NOT NULL,
  `ket_rbd_ide` varchar(50) NOT NULL,
  `rbd_rencana` enum('Tidak','Ya') NOT NULL,
  `ket_rbd_rencana` varchar(50) NOT NULL,
  `rbd_alat` enum('Tidak','Ya') NOT NULL,
  `ket_rbd_alat` varchar(50) NOT NULL,
  `rbd_percobaan` enum('Tidak','Ya') NOT NULL,
  `ket_rbd_percobaan` varchar(15) NOT NULL,
  `rbd_keinginan` enum('Tidak','Ya') NOT NULL,
  `ket_rbd_keinginan` varchar(100) NOT NULL,
  `rpo_penggunaan` enum('Tidak','Ya') NOT NULL,
  `ket_rpo_penggunaan` varchar(20) NOT NULL,
  `rpo_efek_samping` enum('Tidak','Ya') NOT NULL,
  `ket_rpo_efek_samping` varchar(20) NOT NULL,
  `rpo_napza` enum('Tidak','Ya') NOT NULL,
  `ket_rpo_napza` varchar(25) NOT NULL,
  `ket_lama_pemakaian` varchar(8) NOT NULL,
  `ket_cara_pemakaian` varchar(15) NOT NULL,
  `ket_latar_belakang_pemakaian` varchar(60) NOT NULL,
  `rpo_penggunaan_obat_lainnya` enum('Tidak','Ya') NOT NULL,
  `ket_penggunaan_obat_lainnya` varchar(20) NOT NULL,
  `ket_alasan_penggunaan` varchar(65) NOT NULL,
  `rpo_alergi_obat` enum('Tidak','Ya') NOT NULL,
  `ket_alergi_obat` varchar(25) NOT NULL,
  `rpo_merokok` enum('Tidak','Ya') NOT NULL,
  `ket_merokok` varchar(25) NOT NULL,
  `rpo_minum_kopi` enum('Tidak','Ya') NOT NULL,
  `ket_minum_kopi` varchar(25) NOT NULL,
  `td` varchar(8) NOT NULL DEFAULT '',
  `nadi` varchar(5) NOT NULL DEFAULT '',
  `gcs` varchar(5) NOT NULL,
  `rr` varchar(5) NOT NULL,
  `suhu` varchar(5) NOT NULL DEFAULT '',
  `pf_keluhan_fisik` enum('Tidak','Ya') NOT NULL,
  `ket_keluhan_fisik` varchar(100) NOT NULL,
  `skala_nyeri` enum('0','1','2','3','4','5','6','7','8','9','10') NOT NULL,
  `durasi` varchar(25) NOT NULL,
  `nyeri` enum('Tidak Ada Nyeri','Nyeri Akut','Nyeri Kronis') NOT NULL,
  `provokes` enum('Proses Penyakit','Benturan','Lain-lain') NOT NULL,
  `ket_provokes` varchar(40) NOT NULL,
  `quality` enum('Seperti Tertusuk','Berdenyut','Teriris','Tertindih','Tertiban','Lain-lain') NOT NULL,
  `ket_quality` varchar(50) NOT NULL,
  `lokasi` varchar(50) NOT NULL,
  `menyebar` enum('Tidak','Ya') NOT NULL,
  `pada_dokter` enum('Tidak','Ya') NOT NULL,
  `ket_dokter` varchar(15) NOT NULL,
  `nyeri_hilang` enum('Istirahat','Medengar Musik','Minum Obat') NOT NULL,
  `ket_nyeri` varchar(40) NOT NULL,
  `bb` varchar(5) NOT NULL DEFAULT '',
  `tb` varchar(5) NOT NULL DEFAULT '',
  `bmi` varchar(5) NOT NULL,
  `lapor_status_nutrisi` enum('Ya','Tidak') NOT NULL,
  `ket_lapor_status_nutrisi` varchar(15) NOT NULL,
  `sg1` enum('Tidak','Tidak Yakin','Ya, 1-5 Kg','Ya, 6-10 Kg','Ya, 11-15 Kg','Ya, >15 Kg') NOT NULL,
  `nilai1` enum('0','1','2','3','4') NOT NULL,
  `sg2` enum('Ya','Tidak') NOT NULL,
  `nilai2` enum('0','1') NOT NULL,
  `total_hasil` tinyint(4) NOT NULL,
  `resikojatuh` enum('Ya','Tidak') NOT NULL,
  `bjm` enum('Ya','Tidak') NOT NULL,
  `msa` enum('Ya','Tidak') NOT NULL,
  `hasil` enum('Tidak beresiko (tidak ditemukan a dan b)','Resiko rendah (ditemukan a/b)','Resiko tinggi (ditemukan a dan b)') NOT NULL,
  `lapor` enum('Ya','Tidak') NOT NULL,
  `ket_lapor` varchar(15) NOT NULL,
  `adl_mandi` enum('Mandiri','Bantuan Minimal','Bantuan Total') NOT NULL,
  `adl_berpakaian` enum('Mandiri','Bantuan Minimal','Bantuan Total') NOT NULL,
  `adl_makan` enum('Mandiri','Bantuan Minimal','Bantuan Total') NOT NULL,
  `adl_bak` enum('Mandiri','Bantuan Minimal','Bantuan Total') NOT NULL,
  `adl_bab` enum('Mandiri','Bantuan Minimal','Bantuan Total') NOT NULL,
  `adl_hobi` enum('Ya','Tidak') NOT NULL,
  `ket_adl_hobi` varchar(50) NOT NULL,
  `adl_sosialisasi` enum('Ya','Tidak') NOT NULL,
  `ket_adl_sosialisasi` varchar(50) NOT NULL,
  `adl_kegiatan` enum('Ya','Tidak') NOT NULL,
  `ket_adl_kegiatan` varchar(50) NOT NULL,
  `sk_penampilan` enum('Bersih','Rapi','Tidak Rapi','Kotor','Tidak Seperti Biasanya','Pakaian Tidak Sesuai') NOT NULL,
  `sk_alam_perasaan` enum('Sesuai','Marah','Putus Asa','Tertekan','Sedih','Labil','Malu','Khawatir','Gembira Berlebihan','Merasa Tidak Mampu','Ketakutan','Tidak Berguna') NOT NULL,
  `sk_pembicaraan` enum('Sesuai','Cepat','Lambat','Membisu','Mendominasi','Mengancam','Inkoheren','Apatis','Keras','Gagap','Tidak Mampu Memulai Pembicaraan') NOT NULL,
  `sk_afek` enum('Sesuai','Datar','Tumpul','Labil','Tidak Sesuai') NOT NULL,
  `sk_aktifitas_motorik` enum('Normal','Tegang','Gelisah','Lesuh','Grimasem','TIK','Tremor','Agitasi','Konfulsif','Melamun','Sulit Diarahkan') NOT NULL,
  `sk_gangguan_ringan` enum('Gangguan Ringan','Gangguan Bermakna') NOT NULL,
  `sk_proses_pikir` enum('Sesuai','Sirkumsial','Kehilangan Asosiasi','Flight Of Ideas','Bloking','Pengulangan Pembicaraan','Tangensial') NOT NULL,
  `sk_orientasi` enum('Tidak','Ya') NOT NULL,
  `sk_tingkat_kesadaran_orientasi` enum('-','Bingung','Sedasi','Waktu','Stupor','Tempat','Orang') NOT NULL,
  `sk_memori` enum('Ganguan Daya Ingat Jangka Pendek','Ganguan Daya Ingat Jangka Panjang','Ganguan Daya Ingat Saat Ini','Konfabulasi') NOT NULL,
  `sk_interaksi` enum('Kooperatif','Tidak Kooperatif','Bermusuhan','Mudah Tersinggung','Curiga','Defensif','Kontak Mata Kurang') NOT NULL,
  `sk_konsentrasi` enum('Konsentrasi Baik','Mudah Beralih','Tidak Mampu Berkonsentrasi','Tidak Mampu Berhitung Sederhana') NOT NULL,
  `sk_persepsi` enum('Halusinasi','Pendengaran','Penghidung','Penglihatan','Pengecapan','Perabaan') NOT NULL,
  `ket_sk_persepsi` varchar(70) NOT NULL DEFAULT '',
  `sk_isi_pikir` enum('Sesuai','Obsesi','Fobia','Hipokondria','Depersonalisasi','Pikiran Magis','Ide Yang Terkait','Waham') NOT NULL,
  `sk_waham` enum('Kebesaran','Curiga','Agama','Nihilistik') NOT NULL,
  `ket_sk_waham` varchar(100) NOT NULL DEFAULT '',
  `sk_daya_tilik_diri` enum('Mengingkari Penyakit Yang Diderita','Menyalahkan Hal-hal Diluar Dirinya') NOT NULL,
  `ket_sk_daya_tilik_diri` varchar(100) NOT NULL DEFAULT '',
  `kk_pembelajaran` enum('Tidak','Ya') NOT NULL,
  `ket_kk_pembelajaran` enum('-','Pendengaran','Penglihatan','Kognitif','Fisik','Budaya','Emosi','Bahasa','Lainnya') NOT NULL,
  `ket_kk_pembelajaran_lainnya` varchar(50) NOT NULL DEFAULT '',
  `kk_Penerjamah` enum('Tidak','Ya') NOT NULL,
  `ket_kk_penerjamah_Lainnya` varchar(50) NOT NULL,
  `kk_bahasa_isyarat` enum('Tidak','Ya') NOT NULL,
  `kk_kebutuhan_edukasi` enum('Diagnosa Dan Manajemen Penyakit','Obat-obatan/Terapi','Diet Dan Nutrisi','Tindakan Keperawatan','Rehabilitasi','Manajemen Nyeri','Lain-lain') NOT NULL,
  `ket_kk_kebutuhan_edukasi` varchar(50) NOT NULL DEFAULT '',
  `rencana` varchar(200) NOT NULL,
  `nip` varchar(20) NOT NULL,
  PRIMARY KEY (`no_rawat`),
  KEY `nip` (`nip`),
  CONSTRAINT `penilaian_awal_keperawatan_ralan_psikiatri_ibfk_1` FOREIGN KEY (`no_rawat`) REFERENCES `reg_periksa` (`no_rawat`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `penilaian_awal_keperawatan_ralan_psikiatri_ibfk_2` FOREIGN KEY (`nip`) REFERENCES `petugas` (`nip`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table sik_ori.penilaian_awal_keperawatan_ralan_rencana
CREATE TABLE IF NOT EXISTS `penilaian_awal_keperawatan_ralan_rencana` (
  `no_rawat` varchar(17) NOT NULL,
  `kode_rencana` varchar(3) NOT NULL,
  PRIMARY KEY (`no_rawat`,`kode_rencana`),
  KEY `kode_rencana` (`kode_rencana`),
  CONSTRAINT `penilaian_awal_keperawatan_ralan_rencana_ibfk_1` FOREIGN KEY (`no_rawat`) REFERENCES `reg_periksa` (`no_rawat`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `penilaian_awal_keperawatan_ralan_rencana_ibfk_2` FOREIGN KEY (`kode_rencana`) REFERENCES `master_rencana_keperawatan` (`kode_rencana`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table sik_ori.penilaian_awal_keperawatan_ralan_rencana_anak
CREATE TABLE IF NOT EXISTS `penilaian_awal_keperawatan_ralan_rencana_anak` (
  `no_rawat` varchar(17) NOT NULL,
  `kode_rencana` varchar(3) NOT NULL,
  PRIMARY KEY (`no_rawat`,`kode_rencana`),
  KEY `kode_rencana` (`kode_rencana`),
  CONSTRAINT `penilaian_awal_keperawatan_ralan_rencana_anak_ibfk_1` FOREIGN KEY (`no_rawat`) REFERENCES `reg_periksa` (`no_rawat`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `penilaian_awal_keperawatan_ralan_rencana_anak_ibfk_2` FOREIGN KEY (`kode_rencana`) REFERENCES `master_rencana_keperawatan_anak` (`kode_rencana`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table sik_ori.penilaian_awal_keperawatan_ralan_rencana_gigi
CREATE TABLE IF NOT EXISTS `penilaian_awal_keperawatan_ralan_rencana_gigi` (
  `no_rawat` varchar(17) NOT NULL,
  `kode_rencana` varchar(3) NOT NULL,
  PRIMARY KEY (`no_rawat`,`kode_rencana`),
  KEY `kode_rencana` (`kode_rencana`),
  CONSTRAINT `penilaian_awal_keperawatan_ralan_rencana_gigi_ibfk_1` FOREIGN KEY (`no_rawat`) REFERENCES `reg_periksa` (`no_rawat`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `penilaian_awal_keperawatan_ralan_rencana_gigi_ibfk_2` FOREIGN KEY (`kode_rencana`) REFERENCES `master_rencana_keperawatan_gigi` (`kode_rencana`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table sik_ori.penilaian_awal_keperawatan_ralan_rencana_igd
CREATE TABLE IF NOT EXISTS `penilaian_awal_keperawatan_ralan_rencana_igd` (
  `no_rawat` varchar(17) NOT NULL,
  `kode_rencana` varchar(3) NOT NULL,
  PRIMARY KEY (`no_rawat`,`kode_rencana`),
  KEY `kode_rencana` (`kode_rencana`),
  CONSTRAINT `penilaian_awal_keperawatan_ralan_rencana_igd_ibfk_1` FOREIGN KEY (`no_rawat`) REFERENCES `reg_periksa` (`no_rawat`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `penilaian_awal_keperawatan_ralan_rencana_igd_ibfk_2` FOREIGN KEY (`kode_rencana`) REFERENCES `master_rencana_keperawatan_igd` (`kode_rencana`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table sik_ori.penilaian_awal_keperawatan_ralan_rencana_psikiatri
CREATE TABLE IF NOT EXISTS `penilaian_awal_keperawatan_ralan_rencana_psikiatri` (
  `no_rawat` varchar(17) NOT NULL,
  `kode_rencana` varchar(3) NOT NULL,
  PRIMARY KEY (`no_rawat`,`kode_rencana`),
  KEY `kode_rencana` (`kode_rencana`),
  CONSTRAINT `penilaian_awal_keperawatan_ralan_rencana_psikiatri_ibfk_1` FOREIGN KEY (`no_rawat`) REFERENCES `reg_periksa` (`no_rawat`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `penilaian_awal_keperawatan_ralan_rencana_psikiatri_ibfk_2` FOREIGN KEY (`kode_rencana`) REFERENCES `master_rencana_keperawatan_psikiatri` (`kode_rencana`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table sik_ori.penilaian_awal_keperawatan_ranap
CREATE TABLE IF NOT EXISTS `penilaian_awal_keperawatan_ranap` (
  `no_rawat` varchar(17) NOT NULL,
  `tanggal` datetime NOT NULL,
  `informasi` enum('Autoanamnesis','Alloanamnesis') NOT NULL,
  `ket_informasi` varchar(30) NOT NULL,
  `tiba_diruang_rawat` enum('Jalan Tanpa Bantuan','Kursi Roda','Brankar') NOT NULL,
  `kasus_trauma` enum('Trauma','Non Trauma') DEFAULT NULL,
  `cara_masuk` enum('Poli','IGD','Lain-lain') NOT NULL,
  `rps` varchar(300) NOT NULL,
  `rpd` varchar(100) NOT NULL,
  `rpk` varchar(100) NOT NULL,
  `rpo` varchar(100) NOT NULL,
  `riwayat_pembedahan` varchar(40) NOT NULL,
  `riwayat_dirawat_dirs` varchar(40) NOT NULL,
  `alat_bantu_dipakai` enum('Kacamata','Prothesa','Alat Bantu Dengar','Lain-lain') NOT NULL,
  `riwayat_kehamilan` enum('Tidak','Ya') NOT NULL,
  `riwayat_kehamilan_perkiraan` varchar(30) NOT NULL,
  `riwayat_tranfusi` varchar(40) NOT NULL,
  `riwayat_alergi` varchar(40) NOT NULL,
  `riwayat_merokok` enum('Tidak','Ya') NOT NULL,
  `riwayat_merokok_jumlah` varchar(5) NOT NULL,
  `riwayat_alkohol` enum('Tidak','Ya') NOT NULL,
  `riwayat_alkohol_jumlah` varchar(5) NOT NULL,
  `riwayat_narkoba` enum('Tidak','Ya') NOT NULL,
  `riwayat_olahraga` enum('Tidak','Ya') NOT NULL,
  `pemeriksaan_mental` varchar(40) NOT NULL,
  `pemeriksaan_keadaan_umum` enum('Baik','Sedang','Buruk') NOT NULL,
  `pemeriksaan_gcs` varchar(10) NOT NULL,
  `pemeriksaan_td` varchar(8) NOT NULL,
  `pemeriksaan_nadi` varchar(5) NOT NULL,
  `pemeriksaan_rr` varchar(5) NOT NULL,
  `pemeriksaan_suhu` varchar(5) NOT NULL,
  `pemeriksaan_spo2` varchar(5) NOT NULL,
  `pemeriksaan_bb` varchar(5) NOT NULL,
  `pemeriksaan_tb` varchar(5) NOT NULL,
  `pemeriksaan_susunan_kepala` enum('TAK','Hydrocephalus','Hematoma','Lain-lain') NOT NULL,
  `pemeriksaan_susunan_kepala_keterangan` varchar(50) NOT NULL,
  `pemeriksaan_susunan_wajah` enum('TAK','Asimetris','Kelainan Kongenital') NOT NULL,
  `pemeriksaan_susunan_wajah_keterangan` varchar(50) NOT NULL,
  `pemeriksaan_susunan_leher` enum('TAK','Kaku Kuduk','Pembesaran Thyroid','Pembesaran KGB') NOT NULL,
  `pemeriksaan_susunan_kejang` enum('TAK','Kuat','Ada') NOT NULL,
  `pemeriksaan_susunan_kejang_keterangan` varchar(50) NOT NULL,
  `pemeriksaan_susunan_sensorik` enum('TAK','Sakit Nyeri','Rasa kebas') NOT NULL,
  `pemeriksaan_kardiovaskuler_denyut_nadi` enum('Teratur','Tidak Teratur') NOT NULL,
  `pemeriksaan_kardiovaskuler_sirkulasi` enum('Akral Hangat','Akral Dingin','Edema') NOT NULL,
  `pemeriksaan_kardiovaskuler_sirkulasi_keterangan` varchar(50) NOT NULL,
  `pemeriksaan_kardiovaskuler_pulsasi` enum('Kuat','Lemah','Lain-lain') NOT NULL,
  `pemeriksaan_respirasi_pola_nafas` enum('Normal','Bradipnea','Tachipnea') NOT NULL,
  `pemeriksaan_respirasi_retraksi` enum('Tidak Ada','Ringan','Berat') NOT NULL,
  `pemeriksaan_respirasi_suara_nafas` enum('Vesikuler','Wheezing','Rhonki') NOT NULL,
  `pemeriksaan_respirasi_volume_pernafasan` enum('Normal','Hiperventilasi','Hipoventilasi') NOT NULL,
  `pemeriksaan_respirasi_jenis_pernafasan` enum('Pernafasan Dada','Alat Bantu Pernafasaan') NOT NULL,
  `pemeriksaan_respirasi_jenis_pernafasan_keterangan` varchar(50) NOT NULL,
  `pemeriksaan_respirasi_irama_nafas` enum('Teratur','Tidak Teratur') NOT NULL,
  `pemeriksaan_respirasi_batuk` enum('Tidak','Ya : Produktif','Ya : Non Produktif') NOT NULL,
  `pemeriksaan_gastrointestinal_mulut` enum('TAK','Stomatitis','Mukosa Kering','Bibir Pucat','Lain-lain') NOT NULL,
  `pemeriksaan_gastrointestinal_mulut_keterangan` varchar(50) NOT NULL,
  `pemeriksaan_gastrointestinal_gigi` enum('TAK','Karies','Goyang','Lain-lain') NOT NULL,
  `pemeriksaan_gastrointestinal_gigi_keterangan` varchar(50) NOT NULL,
  `pemeriksaan_gastrointestinal_lidah` enum('TAK','Kotor','Gerak Asimetris','Lain-lain') NOT NULL,
  `pemeriksaan_gastrointestinal_lidah_keterangan` varchar(50) NOT NULL,
  `pemeriksaan_gastrointestinal_tenggorokan` enum('TAK','Gangguan Menelan','Sakit Menelan','Lain-lain') NOT NULL,
  `pemeriksaan_gastrointestinal_tenggorokan_keterangan` varchar(50) NOT NULL,
  `pemeriksaan_gastrointestinal_abdomen` enum('Supel','Asictes',' Tegang','Nyeri Tekan/Lepas','Lain-lain') NOT NULL,
  `pemeriksaan_gastrointestinal_abdomen_keterangan` varchar(50) NOT NULL,
  `pemeriksaan_gastrointestinal_peistatik_usus` enum('TAK','Tidak Ada Bising Usus','Hiperistaltik') NOT NULL,
  `pemeriksaan_gastrointestinal_anus` enum('TAK','Atresia Ani') NOT NULL,
  `pemeriksaan_neurologi_pengelihatan` enum('TAK','Ada Kelainan') NOT NULL,
  `pemeriksaan_neurologi_pengelihatan_keterangan` varchar(50) NOT NULL,
  `pemeriksaan_neurologi_alat_bantu_penglihatan` enum('Tidak','Kacamata','Lensa Kontak') NOT NULL,
  `pemeriksaan_neurologi_pendengaran` enum('TAK','Berdengung','Nyeri','Tuli','Keluar Cairan','Lain-lain') NOT NULL,
  `pemeriksaan_neurologi_bicara` enum('Jelas','Tidak Jelas') NOT NULL,
  `pemeriksaan_neurologi_bicara_keterangan` varchar(50) NOT NULL,
  `pemeriksaan_neurologi_sensorik` enum('TAK','Sakit Nyeri','Rasa Kebas','Lain-lain') NOT NULL,
  `pemeriksaan_neurologi_motorik` enum('TAK','Hemiparese','Tetraparese','Tremor','Lain-lain') NOT NULL,
  `pemeriksaan_neurologi_kekuatan_otot` enum('Kuat','Lemah') NOT NULL,
  `pemeriksaan_integument_warnakulit` enum('Pucat','Sianosis','Normal','Lain-lain') NOT NULL,
  `pemeriksaan_integument_turgor` enum('Baik','Sedang','Buruk') NOT NULL,
  `pemeriksaan_integument_kulit` enum('Normal','Rash/Kemerahan','Luka','Memar','Ptekie','Bula') NOT NULL,
  `pemeriksaan_integument_dekubitas` enum('Tidak Ada','Usia > 65 tahun','Obesitas','Imobilisasi','Paraplegi/Vegetative State','Dirawat Di HCU','Penyakit Kronis (DM, CHF, CKD)','Inkontinentia Uri/Alvi') NOT NULL,
  `pemeriksaan_muskuloskletal_pergerakan_sendi` enum('Bebas','Terbatas') NOT NULL,
  `pemeriksaan_muskuloskletal_kekauatan_otot` enum('Baik','Lemah','Tremor') NOT NULL,
  `pemeriksaan_muskuloskletal_nyeri_sendi` enum('Tidak Ada','Ada') NOT NULL,
  `pemeriksaan_muskuloskletal_nyeri_sendi_keterangan` varchar(50) NOT NULL,
  `pemeriksaan_muskuloskletal_oedema` enum('Tidak Ada','Ada') NOT NULL,
  `pemeriksaan_muskuloskletal_oedema_keterangan` varchar(50) NOT NULL,
  `pemeriksaan_muskuloskletal_fraktur` enum('Tidak Ada','Ada') NOT NULL,
  `pemeriksaan_muskuloskletal_fraktur_keterangan` varchar(50) NOT NULL,
  `pemeriksaan_eliminasi_bab_frekuensi_jumlah` varchar(5) NOT NULL,
  `pemeriksaan_eliminasi_bab_frekuensi_durasi` varchar(10) NOT NULL,
  `pemeriksaan_eliminasi_bab_konsistensi` varchar(30) NOT NULL,
  `pemeriksaan_eliminasi_bab_warna` varchar(30) NOT NULL,
  `pemeriksaan_eliminasi_bak_frekuensi_jumlah` varchar(5) NOT NULL,
  `pemeriksaan_eliminasi_bak_frekuensi_durasi` varchar(10) NOT NULL,
  `pemeriksaan_eliminasi_bak_warna` varchar(30) NOT NULL,
  `pemeriksaan_eliminasi_bak_lainlain` varchar(30) NOT NULL,
  `pola_aktifitas_makanminum` enum('Mandiri','Bantuan Orang Lain') NOT NULL,
  `pola_aktifitas_mandi` enum('Mandiri','Bantuan Orang Lain') NOT NULL,
  `pola_aktifitas_eliminasi` enum('Mandiri','Bantuan Orang Lain') NOT NULL,
  `pola_aktifitas_berpakaian` enum('Mandiri','Bantuan Orang Lain') NOT NULL,
  `pola_aktifitas_berpindah` enum('Mandiri','Bantuan Orang Lain') NOT NULL,
  `pola_nutrisi_frekuesi_makan` varchar(3) NOT NULL,
  `pola_nutrisi_jenis_makanan` varchar(20) NOT NULL,
  `pola_nutrisi_porsi_makan` varchar(3) NOT NULL,
  `pola_tidur_lama_tidur` varchar(3) NOT NULL,
  `pola_tidur_gangguan` enum('Tidak Ada Gangguan','Insomnia') NOT NULL,
  `pengkajian_fungsi_kemampuan_sehari` enum('Mandiri','Bantuan Minimal','Bantuann Sebagian','Ketergantungan Total') NOT NULL,
  `pengkajian_fungsi_aktifitas` enum('Tirah Baring','Duduk','Berjalan') NOT NULL,
  `pengkajian_fungsi_berjalan` enum('TAK','Penurunan Kekuatan/ROM','Paralisis','Sering Jatuh','Deformitas','Hilang Keseimbangan','Riwayat Patah Tulang','Lain-lain') NOT NULL,
  `pengkajian_fungsi_berjalan_keterangan` varchar(40) NOT NULL,
  `pengkajian_fungsi_ambulasi` enum('Walker','Tongkat','Kursi Roda','Tidak Menggunakan') NOT NULL,
  `pengkajian_fungsi_ekstrimitas_atas` enum('TAK','Lemah','Oedema','Tidak Simetris','Lain-lain') NOT NULL,
  `pengkajian_fungsi_ekstrimitas_atas_keterangan` varchar(40) NOT NULL,
  `pengkajian_fungsi_ekstrimitas_bawah` enum('TAK','Varises','Oedema','Tidak Simetris','Lain-lain') NOT NULL,
  `pengkajian_fungsi_ekstrimitas_bawah_keterangan` varchar(40) NOT NULL,
  `pengkajian_fungsi_menggenggam` enum('Tidak Ada Kesulitan','Terakhir','Lain-lain') NOT NULL,
  `pengkajian_fungsi_menggenggam_keterangan` varchar(40) NOT NULL,
  `pengkajian_fungsi_koordinasi` enum('Tidak Ada Kesulitan','Ada Masalah') NOT NULL,
  `pengkajian_fungsi_koordinasi_keterangan` varchar(40) NOT NULL,
  `pengkajian_fungsi_kesimpulan` enum('Ya (Co DPJP)','Tidak (Tidak Perlu Co DPJP)') NOT NULL,
  `riwayat_psiko_kondisi_psiko` enum('Tidak Ada Masalah','Marah','Takut','Depresi','Cepat Lelah','Cemas','Gelisah','Sulit Tidur','Lain-lain') NOT NULL,
  `riwayat_psiko_gangguan_jiwa` enum('Ya','Tidak') NOT NULL,
  `riwayat_psiko_perilaku` enum('Tidak Ada Masalah','Perilaku Kekerasan','Gangguan Efek','Gangguan Memori','Halusinasi','Kecenderungan Percobaan Bunuh Diri','Lain-lain') NOT NULL,
  `riwayat_psiko_perilaku_keterangan` varchar(40) NOT NULL,
  `riwayat_psiko_hubungan_keluarga` enum('Harmonis','Kurang Harmonis','Tidak Harmonis','Konflik Besar') NOT NULL,
  `riwayat_psiko_tinggal` enum('Sendiri','Orang Tua','Suami/Istri','Keluarga','Lain-lain') NOT NULL,
  `riwayat_psiko_tinggal_keterangan` varchar(40) NOT NULL,
  `riwayat_psiko_nilai_kepercayaan` enum('Tidak Ada','Ada') NOT NULL,
  `riwayat_psiko_nilai_kepercayaan_keterangan` varchar(40) NOT NULL,
  `riwayat_psiko_pendidikan_pj` enum('-','TS','TK','SD','SMP','SMA','SLTA/SEDERAJAT','D1','D2','D3','D4','S1','S2','S3') NOT NULL,
  `riwayat_psiko_edukasi_diberikan` enum('Pasien','Keluarga') NOT NULL,
  `riwayat_psiko_edukasi_diberikan_keterangan` varchar(40) NOT NULL,
  `penilaian_nyeri` enum('Tidak Ada Nyeri','Nyeri Akut','Nyeri Kronis') NOT NULL,
  `penilaian_nyeri_penyebab` enum('Proses Penyakit','Benturan','Lain-lain') NOT NULL,
  `penilaian_nyeri_ket_penyebab` varchar(50) NOT NULL,
  `penilaian_nyeri_kualitas` enum('Seperti Tertusuk','Berdenyut','Teriris','Tertindih','Tertiban','Lain-lain') NOT NULL,
  `penilaian_nyeri_ket_kualitas` varchar(50) NOT NULL,
  `penilaian_nyeri_lokasi` varchar(50) NOT NULL,
  `penilaian_nyeri_menyebar` enum('Tidak','Ya') NOT NULL,
  `penilaian_nyeri_skala` enum('0','1','2','3','4','5','6','7','8','9','10') NOT NULL,
  `penilaian_nyeri_waktu` varchar(5) NOT NULL,
  `penilaian_nyeri_hilang` enum('Istirahat','Medengar Musik','Minum Obat') NOT NULL,
  `penilaian_nyeri_ket_hilang` varchar(50) NOT NULL,
  `penilaian_nyeri_diberitahukan_dokter` enum('Tidak','Ya') NOT NULL,
  `penilaian_nyeri_jam_diberitahukan_dokter` varchar(10) NOT NULL,
  `penilaian_jatuhmorse_skala1` enum('Tidak','Ya') DEFAULT NULL,
  `penilaian_jatuhmorse_nilai1` tinyint(4) DEFAULT NULL,
  `penilaian_jatuhmorse_skala2` enum('Tidak','Ya') DEFAULT NULL,
  `penilaian_jatuhmorse_nilai2` tinyint(4) DEFAULT NULL,
  `penilaian_jatuhmorse_skala3` enum('Tidak Ada/Kursi Roda/Perawat/Tirah Baring','Tongkat/Alat Penopang','Berpegangan Pada Perabot') DEFAULT NULL,
  `penilaian_jatuhmorse_nilai3` tinyint(4) DEFAULT NULL,
  `penilaian_jatuhmorse_skala4` enum('Tidak','Ya') DEFAULT NULL,
  `penilaian_jatuhmorse_nilai4` tinyint(4) DEFAULT NULL,
  `penilaian_jatuhmorse_skala5` enum('Normal/Tirah Baring/Imobilisasi','Lemah','Terganggu') DEFAULT NULL,
  `penilaian_jatuhmorse_nilai5` tinyint(4) DEFAULT NULL,
  `penilaian_jatuhmorse_skala6` enum('Sadar Akan Kemampuan Diri Sendiri','Sering Lupa Akan Keterbatasan Yang Dimiliki') DEFAULT NULL,
  `penilaian_jatuhmorse_nilai6` tinyint(4) DEFAULT NULL,
  `penilaian_jatuhmorse_totalnilai` tinyint(4) DEFAULT NULL,
  `penilaian_jatuhsydney_skala1` enum('Tidak','Ya') DEFAULT NULL,
  `penilaian_jatuhsydney_nilai1` tinyint(4) DEFAULT NULL,
  `penilaian_jatuhsydney_skala2` enum('Tidak','Ya') DEFAULT NULL,
  `penilaian_jatuhsydney_nilai2` tinyint(4) DEFAULT NULL,
  `penilaian_jatuhsydney_skala3` enum('Tidak','Ya') DEFAULT NULL,
  `penilaian_jatuhsydney_nilai3` tinyint(4) DEFAULT NULL,
  `penilaian_jatuhsydney_skala4` enum('Tidak','Ya') DEFAULT NULL,
  `penilaian_jatuhsydney_nilai4` tinyint(4) DEFAULT NULL,
  `penilaian_jatuhsydney_skala5` enum('Tidak','Ya') DEFAULT NULL,
  `penilaian_jatuhsydney_nilai5` tinyint(4) DEFAULT NULL,
  `penilaian_jatuhsydney_skala6` enum('Tidak','Ya') DEFAULT NULL,
  `penilaian_jatuhsydney_nilai6` tinyint(4) DEFAULT NULL,
  `penilaian_jatuhsydney_skala7` enum('Tidak','Ya') DEFAULT NULL,
  `penilaian_jatuhsydney_nilai7` tinyint(4) DEFAULT NULL,
  `penilaian_jatuhsydney_skala8` enum('Tidak','Ya') DEFAULT NULL,
  `penilaian_jatuhsydney_nilai8` tinyint(4) DEFAULT NULL,
  `penilaian_jatuhsydney_skala9` enum('Tidak','Ya') DEFAULT NULL,
  `penilaian_jatuhsydney_nilai9` tinyint(4) DEFAULT NULL,
  `penilaian_jatuhsydney_skala10` enum('Tidak','Ya') DEFAULT NULL,
  `penilaian_jatuhsydney_nilai10` tinyint(4) DEFAULT NULL,
  `penilaian_jatuhsydney_skala11` enum('Tidak','Ya') DEFAULT NULL,
  `penilaian_jatuhsydney_nilai11` tinyint(4) DEFAULT NULL,
  `penilaian_jatuhsydney_totalnilai` tinyint(4) DEFAULT NULL,
  `skrining_gizi1` enum('Tidak ada penurunan berat badan','Tidak yakin/ tidak tahu/ terasa baju lebih longgar','Ya 1-5 kg','Ya 6-10 kg','Ya 11-15 kg','Ya > 15 kg') DEFAULT NULL,
  `nilai_gizi1` int(11) DEFAULT NULL,
  `skrining_gizi2` enum('Tidak','Ya') DEFAULT NULL,
  `nilai_gizi2` int(11) DEFAULT NULL,
  `nilai_total_gizi` double DEFAULT NULL,
  `skrining_gizi_diagnosa_khusus` enum('Tidak','Ya') DEFAULT NULL,
  `skrining_gizi_ket_diagnosa_khusus` varchar(50) DEFAULT NULL,
  `skrining_gizi_diketahui_dietisen` enum('Tidak','Ya') DEFAULT NULL,
  `skrining_gizi_jam_diketahui_dietisen` varchar(10) DEFAULT NULL,
  `rencana` varchar(200) DEFAULT NULL,
  `nip1` varchar(20) NOT NULL,
  `nip2` varchar(20) NOT NULL,
  `kd_dokter` varchar(20) NOT NULL,
  PRIMARY KEY (`no_rawat`),
  KEY `nip1` (`nip1`),
  KEY `nip2` (`nip2`),
  KEY `kd_dokter` (`kd_dokter`),
  CONSTRAINT `penilaian_awal_keperawatan_ranap_ibfk_1` FOREIGN KEY (`no_rawat`) REFERENCES `reg_periksa` (`no_rawat`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `penilaian_awal_keperawatan_ranap_ibfk_2` FOREIGN KEY (`nip1`) REFERENCES `petugas` (`nip`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `penilaian_awal_keperawatan_ranap_ibfk_3` FOREIGN KEY (`nip2`) REFERENCES `petugas` (`nip`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `penilaian_awal_keperawatan_ranap_ibfk_4` FOREIGN KEY (`kd_dokter`) REFERENCES `dokter` (`kd_dokter`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table sik_ori.penilaian_awal_keperawatan_ranap_masalah
CREATE TABLE IF NOT EXISTS `penilaian_awal_keperawatan_ranap_masalah` (
  `no_rawat` varchar(17) NOT NULL,
  `kode_masalah` varchar(3) NOT NULL,
  PRIMARY KEY (`no_rawat`,`kode_masalah`),
  KEY `kode_masalah` (`kode_masalah`),
  CONSTRAINT `penilaian_awal_keperawatan_ranap_masalah_ibfk_1` FOREIGN KEY (`no_rawat`) REFERENCES `reg_periksa` (`no_rawat`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `penilaian_awal_keperawatan_ranap_masalah_ibfk_2` FOREIGN KEY (`kode_masalah`) REFERENCES `master_masalah_keperawatan` (`kode_masalah`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table sik_ori.penilaian_awal_keperawatan_ranap_rencana
CREATE TABLE IF NOT EXISTS `penilaian_awal_keperawatan_ranap_rencana` (
  `no_rawat` varchar(17) NOT NULL,
  `kode_rencana` varchar(3) NOT NULL,
  PRIMARY KEY (`no_rawat`,`kode_rencana`),
  KEY `kode_rencana` (`kode_rencana`),
  CONSTRAINT `penilaian_awal_keperawatan_ranap_rencana_ibfk_1` FOREIGN KEY (`no_rawat`) REFERENCES `reg_periksa` (`no_rawat`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `penilaian_awal_keperawatan_ranap_rencana_ibfk_2` FOREIGN KEY (`kode_rencana`) REFERENCES `master_rencana_keperawatan` (`kode_rencana`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping structure for table sik_ori.penilaian_lanjutan_resiko_jatuh_anak
CREATE TABLE IF NOT EXISTS `penilaian_lanjutan_resiko_jatuh_anak` (
  `no_rawat` varchar(17) NOT NULL,
  `tanggal` datetime NOT NULL,
  `penilaian_humptydumpty_skala1` enum('0 - 3 Tahun','3 - 7 Tahun','7 - 13 Tahun','> 13 Tahun') DEFAULT NULL,
  `penilaian_humptydumpty_nilai1` tinyint(4) DEFAULT NULL,
  `penilaian_humptydumpty_skala2` enum('Laki-laki','Perempuan') DEFAULT NULL,
  `penilaian_humptydumpty_nilai2` tinyint(4) DEFAULT NULL,
  `penilaian_humptydumpty_skala3` enum('Kelainan Neurologi','Perubahan Dalam Oksigen(Masalah Saluran Nafas, Dehidrasi, Anemia, Anoreksia / Sakit Kepala, Dll)','Kelainan Psikis / Perilaku','Diagnosa Lain') DEFAULT NULL,
  `penilaian_humptydumpty_nilai3` tinyint(4) DEFAULT NULL,
  `penilaian_humptydumpty_skala4` enum('Tidak Sadar Terhadap Keterbatasan','Lupa Keterbatasan','Mengetahui Kemampuan Diri') DEFAULT NULL,
  `penilaian_humptydumpty_nilai4` tinyint(4) DEFAULT NULL,
  `penilaian_humptydumpty_skala5` enum('Riwayat Jatuh Dari Tempat Tidur Saat Bayi/Anak','Pasien Menggunakan Alat Bantu/Box/Mebel','Pasien Berada Di Tempat Tidur','Di Luar Ruang Rawat') DEFAULT NULL,
  `penilaian_humptydumpty_nilai5` tinyint(4) DEFAULT NULL,
  `penilaian_humptydumpty_skala6` enum('Dalam 24 Jam','Dalam 48 Jam','> 48 Jam') DEFAULT NULL,
  `penilaian_humptydumpty_nilai6` tinyint(4) DEFAULT NULL,
  `penilaian_humptydumpty_skala7` enum('Bermacam-macam Obat Yang Digunakan : Obat Sedative (Kecuali Pasien ICU Yang Menggunakan sedasi dan paralisis), Hipnotik, Barbiturat, Fenoti-Azin, Antidepresan, Laksans/Diuretika,Narkotik','Salah Satu Dari Pengobatan Di Atas','Pengobatan Lain') DEFAULT NULL,
  `penilaian_humptydumpty_nilai7` tinyint(4) DEFAULT NULL,
  `penilaian_humptydumpty_totalnilai` tinyint(4) DEFAULT NULL,
  `hasil_skrining` varchar(200) DEFAULT NULL,
  `saran` varchar(200) DEFAULT NULL,
  `nip` varchar(20) NOT NULL,
  PRIMARY KEY (`no_rawat`,`tanggal`),
  KEY `nip` (`nip`),
  CONSTRAINT `penilaian_lanjutan_resiko_jatuh_anak_ibfk_1` FOREIGN KEY (`no_rawat`) REFERENCES `reg_periksa` (`no_rawat`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `penilaian_lanjutan_resiko_jatuh_anak_ibfk_2` FOREIGN KEY (`nip`) REFERENCES `petugas` (`nip`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table sik_ori.penilaian_lanjutan_resiko_jatuh_dewasa
CREATE TABLE IF NOT EXISTS `penilaian_lanjutan_resiko_jatuh_dewasa` (
  `no_rawat` varchar(17) NOT NULL,
  `tanggal` datetime NOT NULL,
  `penilaian_jatuhmorse_skala1` enum('Tidak','Ya') DEFAULT NULL,
  `penilaian_jatuhmorse_nilai1` tinyint(4) DEFAULT NULL,
  `penilaian_jatuhmorse_skala2` enum('Tidak','Ya') DEFAULT NULL,
  `penilaian_jatuhmorse_nilai2` tinyint(4) DEFAULT NULL,
  `penilaian_jatuhmorse_skala3` enum('Tidak Ada/Kursi Roda/Perawat/Tirah Baring','Tongkat/Alat Penopang','Berpegangan Pada Perabot') DEFAULT NULL,
  `penilaian_jatuhmorse_nilai3` tinyint(4) DEFAULT NULL,
  `penilaian_jatuhmorse_skala4` enum('Tidak','Ya') DEFAULT NULL,
  `penilaian_jatuhmorse_nilai4` tinyint(4) DEFAULT NULL,
  `penilaian_jatuhmorse_skala5` enum('Normal/Tirah Baring/Imobilisasi','Lemah','Terganggu') DEFAULT NULL,
  `penilaian_jatuhmorse_nilai5` tinyint(4) DEFAULT NULL,
  `penilaian_jatuhmorse_skala6` enum('Sadar Akan Kemampuan Diri Sendiri','Sering Lupa Akan Keterbatasan Yang Dimiliki') DEFAULT NULL,
  `penilaian_jatuhmorse_nilai6` tinyint(4) DEFAULT NULL,
  `penilaian_jatuhmorse_totalnilai` tinyint(4) DEFAULT NULL,
  `hasil_skrining` varchar(200) DEFAULT NULL,
  `saran` varchar(200) DEFAULT NULL,
  `nip` varchar(20) NOT NULL,
  PRIMARY KEY (`no_rawat`,`tanggal`),
  KEY `nip` (`nip`),
  CONSTRAINT `penilaian_lanjutan_resiko_jatuh_dewasa_ibfk_1` FOREIGN KEY (`no_rawat`) REFERENCES `reg_periksa` (`no_rawat`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `penilaian_lanjutan_resiko_jatuh_dewasa_ibfk_2` FOREIGN KEY (`nip`) REFERENCES `petugas` (`nip`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table sik_ori.penilaian_mcu
CREATE TABLE IF NOT EXISTS `penilaian_mcu` (
  `no_rawat` varchar(17) NOT NULL,
  `tanggal` datetime NOT NULL,
  `kd_dokter` varchar(20) NOT NULL,
  `informasi` enum('Autoanamnesis','Alloanamnesis') NOT NULL,
  `rps` varchar(2000) NOT NULL,
  `rpk` varchar(1000) NOT NULL,
  `rpd` varchar(1000) NOT NULL,
  `alergi` varchar(150) NOT NULL DEFAULT '',
  `keadaan` enum('Baik','Tidak Baik') NOT NULL,
  `kesadaran` enum('Composmentis','Apatis','Somnolen') NOT NULL,
  `td` varchar(8) NOT NULL DEFAULT '',
  `nadi` varchar(5) NOT NULL DEFAULT '',
  `rr` varchar(5) NOT NULL,
  `tb` varchar(5) NOT NULL DEFAULT '',
  `bb` varchar(5) NOT NULL DEFAULT '',
  `suhu` varchar(5) NOT NULL DEFAULT '',
  `submandibula` enum('Tidak Membesar','Membesar') NOT NULL,
  `axilla` enum('Tidak Membesar','Membesar') NOT NULL,
  `supraklavikula` enum('Tidak Membesar','Membesar') NOT NULL,
  `leher` enum('Tidak Membesar','Membesar') NOT NULL,
  `inguinal` enum('Tidak Membesar','Membesar') NOT NULL,
  `oedema` enum('Tidak Ada','Ada') NOT NULL,
  `sinus_frontalis` enum('Tidak Ada','Ada') NOT NULL,
  `sinus_maxilaris` enum('Tidak Ada','Ada') NOT NULL,
  `palpebra` enum('Normal','Oedem','Ptosis') NOT NULL,
  `sklera` enum('Normal','Ikterik') NOT NULL,
  `cornea` enum('Normal','Tidak Normal') NOT NULL,
  `buta_warna` enum('Normal','Buta Warna Partial','Buta Warna Total') NOT NULL,
  `konjungtiva` enum('Normal','Anemis','Hiperemis') NOT NULL,
  `lensa` enum('Jernih','Keruh','Kacamata') NOT NULL,
  `pupil` enum('Isokor','Anisokor') NOT NULL,
  `lubang_telinga` enum('Lapang','Sempit','Serumen Prop') NOT NULL,
  `daun_telinga` enum('Normal','Tidak Normal') NOT NULL,
  `selaput_pendengaran` enum('Intak','Tidak Intak') NOT NULL,
  `proc_mastoideus` enum('Tidak Ada','Ada') NOT NULL,
  `septum_nasi` enum('Normal','Deviasi') NOT NULL,
  `lubang_hidung` enum('Lapang','Rhinore','Epistaksis') NOT NULL,
  `bibir` enum('Lembab','Kering') NOT NULL,
  `caries` enum('Tidak Ada','Ada') NOT NULL,
  `lidah` enum('Bersih','Kotor','Tremor') NOT NULL,
  `faring` enum('Normal','Hiperemis') NOT NULL,
  `tonsil` enum('T1-T1','T2-T2','T3-T3','T4-T4','T0-T0') NOT NULL,
  `kelenjar_limfe` enum('Tidak Membesar','Membesar') NOT NULL,
  `kelenjar_gondok` enum('Tidak Membesar','Membesar') NOT NULL,
  `gerakan_dada` enum('Simetris','Tidak Simetris') NOT NULL,
  `vocal_femitus` enum('Sama','Tidak Sama') NOT NULL,
  `perkusi_dada` enum('Sonor','Pekak') NOT NULL,
  `bunyi_napas` enum('Vesikuler','Bronkhial','Trakeal') NOT NULL,
  `bunyi_tambahan` enum('Tidak Ada','Wheezing','Tronkhi') NOT NULL,
  `ictus_cordis` enum('Tidak Terlihat','Terlihat','Teraba','Tidak Teraba') NOT NULL,
  `bunyi_jantung` enum('Reguler','Irreguler','Korotkoff I, II','Gallop','Lain-lain') NOT NULL,
  `batas` enum('Normal','Melebar') NOT NULL,
  `inspeksi` enum('Datar','Cembung') NOT NULL,
  `palpasi` enum('Supel','Tegang (Defans Muscular)') NOT NULL,
  `hepar` enum('Tidak Membesar','Membesar') NOT NULL,
  `perkusi_abdomen` enum('Timpani','Hipertimpani') NOT NULL,
  `auskultasi` enum('Normal','Meningkat (>4x/menit)') NOT NULL,
  `limpa` enum('Tidak Membesar','Membesar') NOT NULL,
  `costovertebral` enum('Tidak Ada','Ada') NOT NULL,
  `kondisi_kulit` enum('Normal','Tato','Penyakit Kulit') NOT NULL,
  `ekstrimitas_atas` enum('Normal','Tidak Normal') NOT NULL,
  `ekstrimitas_atas_ket` varchar(50) NOT NULL,
  `ekstrimitas_bawah` enum('Normal','Tidak Normal') NOT NULL,
  `ekstrimitas_bawah_ket` varchar(50) NOT NULL,
  `laborat` text NOT NULL,
  `radiologi` text NOT NULL,
  `ekg` text NOT NULL,
  `spirometri` text NOT NULL,
  `audiometri` text NOT NULL,
  `treadmill` text NOT NULL,
  `lainlain` text NOT NULL,
  `merokok` varchar(100) NOT NULL,
  `alkohol` varchar(100) NOT NULL,
  `kesimpulan` text NOT NULL,
  `anjuran` text NOT NULL,
  PRIMARY KEY (`no_rawat`),
  KEY `kd_dokter` (`kd_dokter`),
  CONSTRAINT `penilaian_mcu_ibfk_1` FOREIGN KEY (`no_rawat`) REFERENCES `reg_periksa` (`no_rawat`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `penilaian_mcu_ibfk_2` FOREIGN KEY (`kd_dokter`) REFERENCES `dokter` (`kd_dokter`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- Dumping structure for table sik_ori.penilaian_medis_ralan_bedah
CREATE TABLE IF NOT EXISTS `penilaian_medis_ralan_bedah` (
  `no_rawat` varchar(17) NOT NULL,
  `tanggal` datetime NOT NULL,
  `kd_dokter` varchar(20) NOT NULL,
  `anamnesis` enum('Autoanamnesis','Alloanamnesis') NOT NULL,
  `hubungan` varchar(30) NOT NULL,
  `keluhan_utama` varchar(2000) NOT NULL DEFAULT '',
  `rps` varchar(2000) NOT NULL,
  `rpd` varchar(1000) NOT NULL DEFAULT '',
  `rpo` varchar(1000) NOT NULL,
  `alergi` varchar(50) NOT NULL DEFAULT '',
  `kesadaran` enum('Compos Mentis','Apatis','Delirum') NOT NULL,
  `status` varchar(50) NOT NULL,
  `td` varchar(8) NOT NULL DEFAULT '',
  `nadi` varchar(5) NOT NULL DEFAULT '',
  `suhu` varchar(5) NOT NULL,
  `rr` varchar(5) NOT NULL DEFAULT '',
  `bb` varchar(5) NOT NULL,
  `nyeri` varchar(5) NOT NULL DEFAULT '',
  `gcs` varchar(10) NOT NULL,
  `kepala` enum('Normal','Abnormal','Tidak Diperiksa') NOT NULL,
  `thoraks` enum('Normal','Abnormal','Tidak Diperiksa') NOT NULL,
  `abdomen` enum('Normal','Abnormal','Tidak Diperiksa') NOT NULL,
  `ekstremitas` enum('Normal','Abnormal','Tidak Diperiksa') NOT NULL,
  `genetalia` enum('Normal','Abnormal','Tidak Diperiksa') NOT NULL,
  `columna` enum('Normal','Abnormal','Tidak Diperiksa') NOT NULL,
  `muskulos` enum('Normal','Abnormal','Tidak Diperiksa') NOT NULL,
  `lainnya` varchar(1000) CHARACTER SET utf8mb4 NOT NULL,
  `ket_lokalis` text CHARACTER SET utf8mb4 NOT NULL,
  `lab` varchar(500) NOT NULL,
  `rad` varchar(500) NOT NULL,
  `pemeriksaan` varchar(500) NOT NULL,
  `diagnosis` varchar(500) NOT NULL,
  `diagnosis2` varchar(500) NOT NULL,
  `permasalahan` varchar(500) NOT NULL,
  `terapi` varchar(500) NOT NULL,
  `tindakan` varchar(500) NOT NULL,
  `edukasi` varchar(500) NOT NULL,
  PRIMARY KEY (`no_rawat`),
  KEY `kd_dokter` (`kd_dokter`),
  CONSTRAINT `penilaian_medis_ralan_bedah_ibfk_1` FOREIGN KEY (`no_rawat`) REFERENCES `reg_periksa` (`no_rawat`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `penilaian_medis_ralan_bedah_ibfk_2` FOREIGN KEY (`kd_dokter`) REFERENCES `dokter` (`kd_dokter`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table sik_ori.penilaian_medis_ralan_bedah_mulut
CREATE TABLE IF NOT EXISTS `penilaian_medis_ralan_bedah_mulut` (
  `no_rawat` varchar(17) NOT NULL,
  `tanggal` datetime NOT NULL,
  `kd_dokter` varchar(20) NOT NULL,
  `anamnesis` enum('Autoanamnesis','Alloanamnesis') NOT NULL,
  `hubungan` varchar(30) NOT NULL,
  `keluhan_utama` varchar(2000) NOT NULL DEFAULT '',
  `rps` varchar(2000) NOT NULL,
  `rpk` varchar(1000) NOT NULL,
  `alergi` varchar(50) NOT NULL DEFAULT '',
  `keadaan` varchar(30) NOT NULL,
  `kesadaran` varchar(30) NOT NULL,
  `nyeri` varchar(30) NOT NULL,
  `td` varchar(8) NOT NULL DEFAULT '',
  `nadi` varchar(5) NOT NULL DEFAULT '',
  `suhu` varchar(5) NOT NULL,
  `rr` varchar(5) NOT NULL DEFAULT '',
  `bb` varchar(5) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT '',
  `tb` varchar(10) NOT NULL,
  `kulit` varchar(100) NOT NULL,
  `kepala` varchar(100) NOT NULL,
  `mata` varchar(100) NOT NULL,
  `leher` varchar(100) NOT NULL,
  `kelenjar` varchar(100) NOT NULL,
  `dada` varchar(100) NOT NULL,
  `perut` varchar(100) NOT NULL,
  `ekstremitas` varchar(100) NOT NULL,
  `wajah` varchar(500) NOT NULL,
  `intra` varchar(500) NOT NULL,
  `gigigeligi` varchar(500) NOT NULL,
  `lab` varchar(100) NOT NULL,
  `rad` varchar(100) NOT NULL,
  `pemeriksaan` varchar(100) NOT NULL,
  `diagnosis` varchar(500) NOT NULL,
  `diagnosis2` varchar(500) NOT NULL,
  `permasalahan` varchar(500) NOT NULL,
  `terapi` varchar(500) NOT NULL,
  `tindakan` varchar(100) NOT NULL,
  `edukasi` varchar(500) NOT NULL,
  PRIMARY KEY (`no_rawat`) USING BTREE,
  KEY `kd_dokter` (`kd_dokter`) USING BTREE,
  CONSTRAINT `penilaian_medis_ralan_bedah_mulut_ibfk_1` FOREIGN KEY (`no_rawat`) REFERENCES `reg_periksa` (`no_rawat`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `penilaian_medis_ralan_bedah_mulut_ibfk_2` FOREIGN KEY (`kd_dokter`) REFERENCES `dokter` (`kd_dokter`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table sik_ori.penilaian_medis_ralan_geriatri
CREATE TABLE IF NOT EXISTS `penilaian_medis_ralan_geriatri` (
  `no_rawat` varchar(17) NOT NULL,
  `tanggal` datetime NOT NULL,
  `kd_dokter` varchar(20) NOT NULL,
  `anamnesis` enum('Autoanamnesis','Alloanamnesis') NOT NULL,
  `hubungan` varchar(30) NOT NULL,
  `keluhan_utama` varchar(2000) NOT NULL DEFAULT '',
  `rps` varchar(2000) NOT NULL,
  `rpd` varchar(1000) NOT NULL DEFAULT '',
  `rpo` varchar(1000) NOT NULL,
  `alergi` varchar(50) NOT NULL DEFAULT '',
  `tulang_belakang` enum('Tegap','Membungkuk','Kifosis','Skoliosis','Lordosis') NOT NULL,
  `td` varchar(8) NOT NULL DEFAULT '',
  `nadi` varchar(5) NOT NULL DEFAULT '',
  `suhu` varchar(5) NOT NULL,
  `rr` varchar(5) NOT NULL DEFAULT '',
  `kondisi_umum` varchar(1000) NOT NULL,
  `status_psikologis_gds` enum('Skor 1-4 Tidak Ada Depresi','Skor Antara 5-9 Menunjukkan Kemungkinan Besar Depresi','Skor 10 Atau Lebih Menunjukkan Depresi') NOT NULL,
  `kondisi_sosial` varchar(500) NOT NULL,
  `status_kognitif_mmse` enum('24-30 : Tidak Ada Gangguan Kognitif','18-23 : Gangguan Kognitif Sedang','0-17 : Gangguan Kognitif Berat') NOT NULL,
  `kepala` enum('Normal','Abnormal','Tidak Diperiksa') NOT NULL,
  `keterangan_kepala` varchar(100) NOT NULL,
  `thoraks` enum('Normal','Abnormal','Tidak Diperiksa') NOT NULL,
  `keterangan_thoraks` varchar(100) NOT NULL,
  `abdomen` enum('Normal','Abnormal','Tidak Diperiksa') NOT NULL,
  `keterangan_abdomen` varchar(100) NOT NULL,
  `ekstremitas` enum('Normal','Abnormal','Tidak Diperiksa') NOT NULL,
  `keterangan_ekstremitas` varchar(100) NOT NULL,
  `Integument_kebersihan` enum('Normal','Abnormal') NOT NULL,
  `Integument_warna` enum('Normal','Pucat','Sianosis','Lain-lain') NOT NULL,
  `Integument_kelembaban` enum('Kering','Lembab') NOT NULL,
  `Integument_gangguan_kulit` enum('Normal','Rash','Luka','Memar','Ptekie','Bula') NOT NULL,
  `status_fungsional` enum('20 : Mandiri (A)','12-19 : Ketergantungan Ringan (B)','9-11 : Ketergantungan Sedang (B)','5-8 : Ketergantungan Berat (C)','0-4 : Ketergantungan Total (C)') NOT NULL,
  `skrining_jatuh` enum('Risiko Rendah Skor 0-5','Risiko Sedang Skor 6-16','Risiko Tinggi Skor 17-30') NOT NULL,
  `status_nutrisi` enum('Skor 12-14 : Status Gizi Normal','Skor 8-11 : Berisiko Malnutrisi','Skor 0-7 : Malnutrisi') NOT NULL,
  `lainnya` varchar(1000) NOT NULL,
  `lab` varchar(500) NOT NULL,
  `rad` varchar(500) NOT NULL,
  `pemeriksaan` varchar(500) NOT NULL,
  `diagnosis` varchar(500) NOT NULL,
  `diagnosis2` varchar(500) NOT NULL,
  `permasalahan` varchar(500) NOT NULL,
  `terapi` varchar(500) NOT NULL,
  `tindakan` varchar(500) NOT NULL,
  `edukasi` varchar(500) NOT NULL,
  PRIMARY KEY (`no_rawat`),
  KEY `kd_dokter` (`kd_dokter`),
  CONSTRAINT `penilaian_medis_ralan_geriatri_ibfk_1` FOREIGN KEY (`no_rawat`) REFERENCES `reg_periksa` (`no_rawat`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `penilaian_medis_ralan_geriatri_ibfk_2` FOREIGN KEY (`kd_dokter`) REFERENCES `dokter` (`kd_dokter`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- Dumping structure for table sik_ori.penilaian_medis_ralan_mata
CREATE TABLE IF NOT EXISTS `penilaian_medis_ralan_mata` (
  `no_rawat` varchar(17) NOT NULL,
  `tanggal` datetime NOT NULL,
  `kd_dokter` varchar(20) NOT NULL,
  `anamnesis` enum('Autoanamnesis','Alloanamnesis') NOT NULL,
  `hubungan` varchar(30) NOT NULL,
  `keluhan_utama` varchar(2000) NOT NULL DEFAULT '',
  `rps` varchar(2000) NOT NULL,
  `rpd` varchar(1000) NOT NULL DEFAULT '',
  `rpo` varchar(1000) NOT NULL,
  `alergi` varchar(50) NOT NULL DEFAULT '',
  `status` varchar(50) NOT NULL,
  `td` varchar(8) NOT NULL DEFAULT '',
  `nadi` varchar(5) NOT NULL DEFAULT '',
  `rr` varchar(5) NOT NULL,
  `suhu` varchar(5) NOT NULL DEFAULT '',
  `nyeri` varchar(50) NOT NULL,
  `bb` varchar(5) NOT NULL DEFAULT '',
  `visuskanan` varchar(100) NOT NULL,
  `visuskiri` varchar(100) NOT NULL,
  `cckanan` varchar(100) NOT NULL,
  `cckiri` varchar(100) NOT NULL,
  `palkanan` varchar(100) NOT NULL,
  `palkiri` varchar(100) NOT NULL,
  `conkanan` varchar(100) NOT NULL,
  `conkiri` varchar(100) NOT NULL,
  `corneakanan` varchar(100) NOT NULL,
  `corneakiri` varchar(100) NOT NULL,
  `coakanan` varchar(100) NOT NULL,
  `coakiri` varchar(100) NOT NULL,
  `pupilkanan` varchar(100) NOT NULL,
  `pupilkiri` varchar(100) NOT NULL,
  `lensakanan` varchar(100) NOT NULL,
  `lensakiri` varchar(100) NOT NULL,
  `funduskanan` varchar(100) NOT NULL,
  `funduskiri` varchar(100) NOT NULL,
  `papilkanan` varchar(100) NOT NULL,
  `papilkiri` varchar(100) NOT NULL,
  `retinakanan` varchar(100) NOT NULL,
  `retinakiri` varchar(100) NOT NULL,
  `makulakanan` varchar(100) NOT NULL,
  `makulakiri` varchar(100) NOT NULL,
  `tiokanan` varchar(100) NOT NULL,
  `tiokiri` varchar(100) NOT NULL,
  `mbokanan` varchar(100) NOT NULL,
  `mbokiri` varchar(100) NOT NULL,
  `lab` text NOT NULL,
  `rad` text NOT NULL,
  `penunjang` text NOT NULL,
  `tes` text NOT NULL,
  `pemeriksaan` text NOT NULL,
  `diagnosis` varchar(500) NOT NULL,
  `diagnosisbdg` varchar(500) NOT NULL,
  `permasalahan` text NOT NULL,
  `terapi` text NOT NULL,
  `tindakan` text NOT NULL,
  `edukasi` varchar(1000) NOT NULL,
  PRIMARY KEY (`no_rawat`) USING BTREE,
  KEY `kd_dokter` (`kd_dokter`) USING BTREE,
  CONSTRAINT `penilaian_medis_ralan_mata_ibfk_1` FOREIGN KEY (`no_rawat`) REFERENCES `reg_periksa` (`no_rawat`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `penilaian_medis_ralan_mata_ibfk_2` FOREIGN KEY (`kd_dokter`) REFERENCES `dokter` (`kd_dokter`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table sik_ori.penilaian_medis_ralan_neurologi
CREATE TABLE IF NOT EXISTS `penilaian_medis_ralan_neurologi` (
  `no_rawat` varchar(17) NOT NULL,
  `tanggal` datetime NOT NULL,
  `kd_dokter` varchar(20) NOT NULL,
  `anamnesis` enum('Autoanamnesis','Alloanamnesis') NOT NULL,
  `hubungan` varchar(30) NOT NULL,
  `keluhan_utama` varchar(2000) NOT NULL DEFAULT '',
  `rps` varchar(2000) NOT NULL,
  `rpd` varchar(1000) NOT NULL DEFAULT '',
  `rpo` varchar(1000) NOT NULL,
  `alergi` varchar(50) NOT NULL DEFAULT '',
  `kesadaran` enum('Compos Mentis','Apatis','Delirum') NOT NULL,
  `status` enum('Skor < 2','Skor >= 2') NOT NULL,
  `td` varchar(8) NOT NULL DEFAULT '',
  `nadi` varchar(5) NOT NULL DEFAULT '',
  `suhu` varchar(5) NOT NULL,
  `rr` varchar(5) NOT NULL DEFAULT '',
  `bb` varchar(5) NOT NULL,
  `nyeri` varchar(50) NOT NULL DEFAULT '',
  `gcs` varchar(10) NOT NULL,
  `kepala` enum('Normal','Abnormal','Tidak Diperiksa') NOT NULL,
  `keterangan_kepala` varchar(30) CHARACTER SET utf8mb4 NOT NULL,
  `thoraks` enum('Normal','Abnormal','Tidak Diperiksa') NOT NULL,
  `keterangan_thoraks` varchar(30) CHARACTER SET utf8mb4 NOT NULL,
  `abdomen` enum('Normal','Abnormal','Tidak Diperiksa') NOT NULL,
  `keterangan_abdomen` varchar(30) CHARACTER SET utf8mb4 NOT NULL,
  `ekstremitas` enum('Normal','Abnormal','Tidak Diperiksa') NOT NULL,
  `keterangan_ekstremitas` varchar(30) CHARACTER SET utf8mb4 NOT NULL,
  `columna` enum('Normal','Abnormal','Tidak Diperiksa') NOT NULL,
  `keterangan_columna` varchar(30) CHARACTER SET utf8mb4 NOT NULL,
  `muskulos` enum('Normal','Abnormal','Tidak Diperiksa') NOT NULL,
  `keterangan_muskulos` varchar(30) CHARACTER SET utf8mb4 NOT NULL,
  `lainnya` varchar(1000) NOT NULL,
  `lab` varchar(500) NOT NULL,
  `rad` varchar(500) NOT NULL,
  `penunjanglain` varchar(500) NOT NULL,
  `diagnosis` varchar(500) NOT NULL,
  `diagnosis2` varchar(500) NOT NULL,
  `permasalahan` varchar(500) NOT NULL,
  `terapi` varchar(500) NOT NULL,
  `tindakan` varchar(500) NOT NULL,
  `edukasi` varchar(500) NOT NULL,
  PRIMARY KEY (`no_rawat`) USING BTREE,
  KEY `kd_dokter` (`kd_dokter`) USING BTREE,
  CONSTRAINT `penilaian_medis_ralan_neurologi_ibfk_1` FOREIGN KEY (`no_rawat`) REFERENCES `reg_periksa` (`no_rawat`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `penilaian_medis_ralan_neurologi_ibfk_2` FOREIGN KEY (`kd_dokter`) REFERENCES `dokter` (`kd_dokter`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table sik_ori.penilaian_medis_ralan_orthopedi
CREATE TABLE IF NOT EXISTS `penilaian_medis_ralan_orthopedi` (
  `no_rawat` varchar(17) NOT NULL,
  `tanggal` datetime NOT NULL,
  `kd_dokter` varchar(20) NOT NULL,
  `anamnesis` enum('Autoanamnesis','Alloanamnesis') NOT NULL,
  `hubungan` varchar(30) NOT NULL,
  `keluhan_utama` varchar(2000) NOT NULL DEFAULT '',
  `rps` varchar(2000) NOT NULL,
  `rpd` varchar(1000) NOT NULL DEFAULT '',
  `rpo` varchar(1000) NOT NULL,
  `alergi` varchar(50) NOT NULL DEFAULT '',
  `kesadaran` enum('Compos Mentis','Apatis','Delirum') NOT NULL,
  `status` varchar(50) NOT NULL,
  `td` varchar(8) NOT NULL DEFAULT '',
  `nadi` varchar(5) NOT NULL DEFAULT '',
  `suhu` varchar(5) NOT NULL,
  `rr` varchar(5) NOT NULL DEFAULT '',
  `bb` varchar(5) NOT NULL,
  `nyeri` varchar(5) NOT NULL DEFAULT '',
  `gcs` varchar(10) NOT NULL,
  `kepala` enum('Normal','Abnormal','Tidak Diperiksa') NOT NULL,
  `thoraks` enum('Normal','Abnormal','Tidak Diperiksa') NOT NULL,
  `abdomen` enum('Normal','Abnormal','Tidak Diperiksa') NOT NULL,
  `ekstremitas` enum('Normal','Abnormal','Tidak Diperiksa') NOT NULL,
  `genetalia` enum('Normal','Abnormal','Tidak Diperiksa') NOT NULL,
  `columna` enum('Normal','Abnormal','Tidak Diperiksa') NOT NULL,
  `muskulos` enum('Normal','Abnormal','Tidak Diperiksa') NOT NULL,
  `lainnya` varchar(1000) NOT NULL,
  `ket_lokalis` text NOT NULL,
  `lab` varchar(500) NOT NULL,
  `rad` varchar(500) NOT NULL,
  `pemeriksaan` varchar(500) NOT NULL,
  `diagnosis` varchar(500) NOT NULL,
  `diagnosis2` varchar(500) NOT NULL,
  `permasalahan` varchar(500) NOT NULL,
  `terapi` varchar(500) NOT NULL,
  `tindakan` varchar(500) NOT NULL,
  `edukasi` varchar(500) NOT NULL,
  PRIMARY KEY (`no_rawat`) USING BTREE,
  KEY `kd_dokter` (`kd_dokter`) USING BTREE,
  CONSTRAINT `penilaian_medis_ralan_orthopedi_ibfk_1` FOREIGN KEY (`no_rawat`) REFERENCES `reg_periksa` (`no_rawat`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `penilaian_medis_ralan_orthopedi_ibfk_2` FOREIGN KEY (`kd_dokter`) REFERENCES `dokter` (`kd_dokter`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table sik_ori.penilaian_medis_ralan_penyakit_dalam
CREATE TABLE IF NOT EXISTS `penilaian_medis_ralan_penyakit_dalam` (
  `no_rawat` varchar(17) NOT NULL,
  `tanggal` datetime NOT NULL,
  `kd_dokter` varchar(20) NOT NULL,
  `anamnesis` enum('Autoanamnesis','Alloanamnesis') NOT NULL,
  `hubungan` varchar(30) NOT NULL,
  `keluhan_utama` varchar(2000) NOT NULL DEFAULT '',
  `rps` varchar(2000) NOT NULL,
  `rpd` varchar(1000) NOT NULL DEFAULT '',
  `rpo` varchar(1000) NOT NULL,
  `alergi` varchar(50) NOT NULL DEFAULT '',
  `kondisi` varchar(500) NOT NULL,
  `status` varchar(100) NOT NULL,
  `td` varchar(8) NOT NULL DEFAULT '',
  `nadi` varchar(5) NOT NULL DEFAULT '',
  `suhu` varchar(5) NOT NULL,
  `rr` varchar(5) NOT NULL DEFAULT '',
  `bb` varchar(5) NOT NULL,
  `nyeri` varchar(50) NOT NULL DEFAULT '',
  `gcs` varchar(10) NOT NULL,
  `kepala` enum('Normal','Abnormal','Tidak Diperiksa') NOT NULL,
  `keterangan_kepala` varchar(30) CHARACTER SET utf8mb4 NOT NULL,
  `thoraks` enum('Normal','Abnormal','Tidak Diperiksa') NOT NULL,
  `keterangan_thorak` varchar(30) CHARACTER SET utf8mb4 NOT NULL,
  `abdomen` enum('Normal','Abnormal','Tidak Diperiksa') NOT NULL,
  `keterangan_abdomen` varchar(30) CHARACTER SET utf8mb4 NOT NULL,
  `ekstremitas` enum('Normal','Abnormal','Tidak Diperiksa') NOT NULL,
  `keterangan_ekstremitas` varchar(30) CHARACTER SET utf8mb4 NOT NULL,
  `lainnya` varchar(1000) NOT NULL,
  `lab` varchar(1000) NOT NULL,
  `rad` varchar(1000) NOT NULL,
  `penunjanglain` varchar(1000) NOT NULL,
  `diagnosis` varchar(500) NOT NULL,
  `diagnosis2` varchar(500) NOT NULL,
  `permasalahan` varchar(500) NOT NULL,
  `terapi` varchar(500) NOT NULL,
  `tindakan` varchar(200) NOT NULL,
  `edukasi` varchar(500) NOT NULL,
  PRIMARY KEY (`no_rawat`) USING BTREE,
  KEY `kd_dokter` (`kd_dokter`) USING BTREE,
  CONSTRAINT `penilaian_medis_ralan_penyakit_dalam_ibfk_1` FOREIGN KEY (`no_rawat`) REFERENCES `reg_periksa` (`no_rawat`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `penilaian_medis_ralan_penyakit_dalam_ibfk_2` FOREIGN KEY (`kd_dokter`) REFERENCES `dokter` (`kd_dokter`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table sik_ori.penilaian_medis_ralan_psikiatrik
CREATE TABLE IF NOT EXISTS `penilaian_medis_ralan_psikiatrik` (
  `no_rawat` varchar(17) NOT NULL,
  `tanggal` datetime NOT NULL,
  `kd_dokter` varchar(20) NOT NULL,
  `anamnesis` enum('Autoanamnesis','Alloanamnesis') NOT NULL,
  `hubungan` varchar(30) NOT NULL,
  `keluhan_utama` varchar(2000) NOT NULL DEFAULT '',
  `rps` varchar(2000) NOT NULL,
  `rpd` varchar(1000) NOT NULL DEFAULT '',
  `rpk` varchar(1000) NOT NULL,
  `rpo` varchar(1000) NOT NULL,
  `alergi` varchar(50) NOT NULL,
  `penampilan` varchar(200) NOT NULL,
  `pembicaraan` varchar(200) NOT NULL,
  `psikomotor` varchar(200) NOT NULL,
  `sikap` varchar(200) NOT NULL,
  `mood` varchar(200) NOT NULL,
  `fungsi_kognitif` varchar(200) NOT NULL,
  `gangguan_persepsi` varchar(200) NOT NULL,
  `proses_pikir` varchar(200) NOT NULL,
  `pengendalian_impuls` varchar(200) NOT NULL,
  `tilikan` varchar(200) NOT NULL,
  `rta` varchar(200) NOT NULL,
  `keadaan` enum('Sehat','Sakit Ringan','Sakit Sedang','Sakit Berat') NOT NULL,
  `gcs` varchar(10) NOT NULL,
  `kesadaran` enum('Compos Mentis','Apatis','Somnolen','Sopor','Koma') NOT NULL,
  `td` varchar(8) NOT NULL DEFAULT '',
  `nadi` varchar(5) NOT NULL DEFAULT '',
  `rr` varchar(5) NOT NULL,
  `suhu` varchar(5) NOT NULL DEFAULT '',
  `spo` varchar(5) NOT NULL,
  `bb` varchar(5) NOT NULL DEFAULT '',
  `tb` varchar(5) NOT NULL DEFAULT '',
  `kepala` enum('Normal','Abnormal','Tidak Diperiksa') NOT NULL,
  `gigi` enum('Normal','Abnormal','Tidak Diperiksa') NOT NULL,
  `tht` enum('Normal','Abnormal','Tidak Diperiksa') NOT NULL,
  `thoraks` enum('Normal','Abnormal','Tidak Diperiksa') NOT NULL,
  `abdomen` enum('Normal','Abnormal','Tidak Diperiksa') NOT NULL,
  `genital` enum('Normal','Abnormal','Tidak Diperiksa') NOT NULL,
  `ekstremitas` enum('Normal','Abnormal','Tidak Diperiksa') NOT NULL,
  `kulit` enum('Normal','Abnormal','Tidak Diperiksa') NOT NULL,
  `ket_fisik` varchar(1000) NOT NULL,
  `penunjang` varchar(1000) NOT NULL,
  `diagnosis` varchar(300) NOT NULL,
  `tata` varchar(1000) NOT NULL,
  `konsulrujuk` varchar(500) NOT NULL,
  PRIMARY KEY (`no_rawat`),
  KEY `kd_dokter` (`kd_dokter`),
  CONSTRAINT `penilaian_medis_ralan_psikiatrik_ibfk_1` FOREIGN KEY (`no_rawat`) REFERENCES `reg_periksa` (`no_rawat`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `penilaian_medis_ralan_psikiatrik_ibfk_2` FOREIGN KEY (`kd_dokter`) REFERENCES `dokter` (`kd_dokter`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table sik_ori.penilaian_medis_ralan_tht
CREATE TABLE IF NOT EXISTS `penilaian_medis_ralan_tht` (
  `no_rawat` varchar(17) NOT NULL,
  `tanggal` datetime NOT NULL,
  `kd_dokter` varchar(20) NOT NULL,
  `anamnesis` enum('Autoanamnesis','Alloanamnesis') NOT NULL,
  `hubungan` varchar(30) NOT NULL,
  `keluhan_utama` varchar(2000) NOT NULL DEFAULT '',
  `rps` varchar(2000) NOT NULL,
  `rpd` varchar(1000) NOT NULL DEFAULT '',
  `rpo` varchar(1000) NOT NULL,
  `alergi` varchar(50) NOT NULL DEFAULT '',
  `td` varchar(8) NOT NULL DEFAULT '',
  `nadi` varchar(5) NOT NULL DEFAULT '',
  `rr` varchar(5) NOT NULL,
  `suhu` varchar(5) NOT NULL DEFAULT '',
  `bb` varchar(5) NOT NULL DEFAULT '',
  `tb` varchar(5) NOT NULL DEFAULT '',
  `nyeri` varchar(50) NOT NULL,
  `status_nutrisi` varchar(50) NOT NULL,
  `kondisi` text NOT NULL,
  `ket_lokalis` text NOT NULL,
  `lab` text NOT NULL,
  `rad` text NOT NULL,
  `tes_pendengaran` text NOT NULL,
  `penunjang` text NOT NULL,
  `diagnosis` varchar(500) NOT NULL,
  `diagnosisbanding` varchar(500) NOT NULL,
  `permasalahan` text NOT NULL,
  `terapi` text NOT NULL,
  `tindakan` text NOT NULL,
  `tatalaksana` text NOT NULL,
  `edukasi` varchar(1000) NOT NULL,
  PRIMARY KEY (`no_rawat`) USING BTREE,
  KEY `kd_dokter` (`kd_dokter`) USING BTREE,
  CONSTRAINT `penilaian_medis_ralan_tht_ibfk_1` FOREIGN KEY (`no_rawat`) REFERENCES `reg_periksa` (`no_rawat`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `penilaian_medis_ralan_tht_ibfk_2` FOREIGN KEY (`kd_dokter`) REFERENCES `dokter` (`kd_dokter`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- Dumping structure for table sik_ori.penilaian_pre_anestesi
CREATE TABLE IF NOT EXISTS `penilaian_pre_anestesi` (
  `no_rawat` varchar(17) NOT NULL,
  `tanggal` datetime NOT NULL,
  `kd_dokter` varchar(20) NOT NULL,
  `tanggal_operasi` datetime DEFAULT NULL,
  `diagnosa` varchar(100) DEFAULT NULL,
  `rencana_tindakan` varchar(100) DEFAULT NULL,
  `tb` varchar(5) NOT NULL DEFAULT '',
  `bb` varchar(5) NOT NULL DEFAULT '',
  `td` varchar(8) NOT NULL DEFAULT '',
  `io2` varchar(5) NOT NULL,
  `nadi` varchar(5) NOT NULL DEFAULT '',
  `pernapasan` varchar(5) NOT NULL,
  `suhu` varchar(5) NOT NULL DEFAULT '',
  `fisik_cardiovasculer` varchar(100) DEFAULT NULL,
  `fisik_paru` varchar(100) DEFAULT NULL,
  `fisik_abdomen` varchar(100) DEFAULT NULL,
  `fisik_extrimitas` varchar(100) DEFAULT NULL,
  `fisik_endokrin` varchar(100) DEFAULT NULL,
  `fisik_ginjal` varchar(100) DEFAULT NULL,
  `fisik_obatobatan` varchar(100) DEFAULT NULL,
  `fisik_laborat` varchar(100) DEFAULT NULL,
  `fisik_penunjang` varchar(100) DEFAULT NULL,
  `riwayat_penyakit_alergiobat` varchar(50) DEFAULT NULL,
  `riwayat_penyakit_alergilainnya` varchar(50) DEFAULT NULL,
  `riwayat_penyakit_terapi` varchar(100) DEFAULT NULL,
  `riwayat_kebiasaan_merokok` enum('Tidak','Ya') NOT NULL,
  `riwayat_kebiasaan_ket_merokok` varchar(5) NOT NULL,
  `riwayat_kebiasaan_alkohol` enum('Tidak','Ya') NOT NULL,
  `riwayat_kebiasaan_ket_alkohol` varchar(5) NOT NULL,
  `riwayat_kebiasaan_obat` enum('-','Obat Obatan','Vitamin','Jamu Jamuan') NOT NULL,
  `riwayat_kebiasaan_ket_obat` varchar(100) NOT NULL,
  `riwayat_medis_cardiovasculer` varchar(100) DEFAULT NULL,
  `riwayat_medis_respiratory` varchar(100) DEFAULT NULL,
  `riwayat_medis_endocrine` varchar(100) DEFAULT NULL,
  `riwayat_medis_lainnya` varchar(100) DEFAULT NULL,
  `asa` enum('1','2','3','4','5','E') DEFAULT NULL,
  `puasa` datetime DEFAULT NULL,
  `rencana_anestesi` enum('GA','RA Spinal','RA Epidural','RA Combined','Blok Syaraf') DEFAULT NULL,
  `rencana_perawatan` varchar(40) DEFAULT NULL,
  `catatan_khusus` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`no_rawat`,`tanggal`),
  KEY `kd_dokter` (`kd_dokter`),
  CONSTRAINT `penilaian_pre_anestesi_ibfk_1` FOREIGN KEY (`no_rawat`) REFERENCES `reg_periksa` (`no_rawat`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `penilaian_pre_anestesi_ibfk_2` FOREIGN KEY (`kd_dokter`) REFERENCES `dokter` (`kd_dokter`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table sik_ori.penilaian_pre_operasi
CREATE TABLE IF NOT EXISTS `penilaian_pre_operasi` (
  `no_rawat` varchar(17) NOT NULL,
  `tanggal` datetime NOT NULL,
  `kd_dokter` varchar(20) NOT NULL,
  `ringkasan_klinik` varchar(500) DEFAULT NULL,
  `pemeriksaan_fisik` varchar(500) DEFAULT NULL,
  `pemeriksaan_diagnostik` varchar(500) DEFAULT NULL,
  `diagnosa_pre_operasi` varchar(500) DEFAULT NULL,
  `rencana_tindakan_bedah` varchar(500) DEFAULT NULL,
  `hal_hal_yang_perludi_persiapkan` varchar(500) DEFAULT NULL,
  `terapi_pre_operasi` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`no_rawat`,`tanggal`),
  KEY `kd_dokter` (`kd_dokter`),
  CONSTRAINT `penilaian_pre_operasi_ibfk_1` FOREIGN KEY (`no_rawat`) REFERENCES `reg_periksa` (`no_rawat`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `penilaian_pre_operasi_ibfk_2` FOREIGN KEY (`kd_dokter`) REFERENCES `dokter` (`kd_dokter`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table sik_ori.penilaian_psikologi
CREATE TABLE IF NOT EXISTS `penilaian_psikologi` (
  `no_rawat` varchar(17) NOT NULL,
  `tanggal` datetime NOT NULL,
  `nip` varchar(20) NOT NULL,
  `anamnesis` enum('Autoanamnesis','Alloanamnesis') NOT NULL,
  `dikirim_dari` enum('Ruang Rawat','Poliklinik','Rehabilitasi','After Care','Dokter') NOT NULL,
  `tujuan_pemeriksaan` enum('Klinik','Bimbingan','Forensik') NOT NULL,
  `ket_anamnesis` text NOT NULL,
  `rupa` enum('Tampan','Buruk','Menarik','Memuakkan','Biasa') NOT NULL,
  `bentuk_tubuh` enum('Sangat Tinggi','Sangat Pendek','Sangat Kurus','Sangat Gemuk','Tinggi','Sedang','Atletik','Pendek','Langsing','Gemuk') NOT NULL,
  `tindakan` enum('Sopan','Tidak Sopan','Kurang Tahu Aturan','Canggung','Bebas','Tegas','Garang','Percaya Diri','Tertekan','Ragu-Ragu','Pasti','Kaku','Ceroboh','Dingin','Malu-Malu') NOT NULL,
  `pakaian` enum('Rapi','Serampangan','Terpelihara','Tidak Terpelihara','Teratur','Tidak Rapi','Sederhana','Biasa','Bersih','Kotor') NOT NULL,
  `ekspresi` enum('Sangat Mudah','Hati-Hati Dan Membatasi Diri','Sukar Mencari Kata-Kata','Mudah','Terbuka') NOT NULL,
  `berbicara` enum('Tenang','Acuh Tak Acuh','Gugup','Lancar','Ribut Dengan Banyak Gerak dan Isyarat') NOT NULL,
  `penggunaan_kata` enum('Ramah','Dibuat-Buat','Dengan Tekanan Suara','Terpengaruh Bahasa Daerah','Disertai Dengan Istilah Bahasa Asing') NOT NULL,
  `ciri_menyolok` varchar(500) NOT NULL,
  `hasil_psikotes` text NOT NULL,
  `kepribadian` text NOT NULL,
  `psikodinamika` text NOT NULL,
  `kesimpulan_psikolog` text NOT NULL,
  PRIMARY KEY (`no_rawat`),
  KEY `nip` (`nip`),
  CONSTRAINT `penilaian_psikologi_ibfk_1` FOREIGN KEY (`no_rawat`) REFERENCES `reg_periksa` (`no_rawat`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `penilaian_psikologi_ibfk_2` FOREIGN KEY (`nip`) REFERENCES `petugas` (`nip`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table sik_ori.penilaian_tambahan_geriatri
CREATE TABLE IF NOT EXISTS `penilaian_tambahan_geriatri` (
  `no_rawat` varchar(17) NOT NULL,
  `tanggal` datetime NOT NULL,
  `nik` varchar(20) NOT NULL,
  `asal_masuk` enum('IGD','Kamar Bersalin','Klinik') DEFAULT NULL,
  `kondisi_masuk` enum('Mandiri','Kursi Roda','Dipapah','Tempat Tidur') DEFAULT NULL,
  `keterangan_kondisi_masuk` varchar(50) DEFAULT NULL,
  `anamnesis` enum('Autoanamnesis','Alloanamnesis') NOT NULL,
  `diagnosa_medis` varchar(100) DEFAULT NULL,
  `riwayat_immuno_telinga` enum('Ya','Tidak') DEFAULT NULL,
  `riwayat_immuno_sinus` enum('Ya','Tidak') DEFAULT NULL,
  `riwayat_immuno_antibiotik` enum('Ya','Tidak') DEFAULT NULL,
  `riwayat_immuno_pneumonia` enum('Ya','Tidak') DEFAULT NULL,
  `riwayat_immuno_abses` enum('Ya','Tidak') DEFAULT NULL,
  `riwayat_immuno_sariawan` enum('Ya','Tidak') DEFAULT NULL,
  `riwayat_immuno_memerlukan_antibiotik` enum('Ya','Tidak') DEFAULT NULL,
  `riwayat_immuno_infeksi_dalam` enum('Ya','Tidak') DEFAULT NULL,
  `riwayat_immuno_immunodefisiensi_primer` enum('Ya','Tidak') DEFAULT NULL,
  `riwayat_immuno_jenis_kangker` enum('Ya','Tidak') DEFAULT NULL,
  `riwayat_immuno_infeksi_oportunistik` enum('Ya','Tidak') DEFAULT NULL,
  `pola_aktifitas_tidur` enum('TAK','Insomnia','Lainnya') DEFAULT NULL,
  `keterangan_pola_aktifitas_tidur` varchar(50) DEFAULT NULL,
  `pola_aktifitas_obat_tidur` enum('Tidak','Ya') DEFAULT NULL,
  `keterangan_pola_aktifitas_obat_tidur` varchar(50) DEFAULT NULL,
  `pola_aktifitas_olahraga` enum('Tidak','Ya') DEFAULT NULL,
  `keterangan_pola_aktifitas_olahraga` varchar(50) DEFAULT NULL,
  `kualitas_hidup_mobilitas` enum('Tidak Mempunyai Masalah Untuk Berjalan','Ada Masalah Untuk Berjalan','Hanya Mampu Berbaring') DEFAULT NULL,
  `kualitas_hidup_perawatan_diri` enum('Tidak Mempunyai Kesulitan Dalam Perawatan Diri Sendiri','Mengalami Kesulitan Untuk Membasuh Badan, Mandi Atau Berpakaian','Tidak Mampu Membasuh Badan, Mandi/Berpakaian Sendiri') DEFAULT NULL,
  `kualitas_hidup_aktifitas_seharihari` enum('Tak Mempunyai Kesulitan Dalam Melaksanakan Kegiatan Sehari-hari','Mempunyai Keterbatasan Dalam Melaksanakan Kegiatan Sehari-hari','Tak Mampu Melaksanakan Kegiatan Sehari-hari') DEFAULT NULL,
  `kualitas_hidup_rasa_nyeri` enum('Tidak Mempunyai Keluhan Rasa Nyeri Atau Rasa Tak Nyaman','Suka Merasakan Agak Nyeri/Agak Kurang Nyaman','Menderita Karena Keluhan Rasa Nyeri/Tidak Nyaman') DEFAULT NULL,
  `skala_nyeri` enum('0 - Tidak Nyeri','2 - Dapat Ditoleransi(Aktifitas Tidak Tergangu)','4 - Dapat Ditoleransi(Beberapa Aktifitas Sedikit Terganggu)','5 - Tidak Dapat Ditoleransi(Masih Bisa Menggunakan Telp, Menonton TV/Membaca)','6 - Tidak Dapat Ditoleransi(Tidak Bisa Menggunakan Telp, Menonton TV/Membaca)','8 - Tidak Dapat Ditoleransi(Masih Bisa Berbicara Kerenya Nyeri)','10 - Tidak Dapat Ditoleransi(Tidak Bisa Berbicara Kerenya Nyeri)') DEFAULT NULL,
  PRIMARY KEY (`no_rawat`),
  KEY `kd_dokter` (`nik`),
  CONSTRAINT `penilaian_tambahan_geriatri_ibfk_1` FOREIGN KEY (`no_rawat`) REFERENCES `reg_periksa` (`no_rawat`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `penilaian_tambahan_geriatri_ibfk_2` FOREIGN KEY (`nik`) REFERENCES `pegawai` (`nik`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- Dumping structure for table sik_ori.penjab_dokumen_kerjasama
CREATE TABLE IF NOT EXISTS `penjab_dokumen_kerjasama` (
  `kd_pj` char(3) NOT NULL,
  `kerjasama_berakhir` date NOT NULL,
  `photo` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`kd_pj`),
  CONSTRAINT `penjab_dokumen_kerjasama_ibfk_1` FOREIGN KEY (`kd_pj`) REFERENCES `penjab` (`kd_pj`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- tambah kolom ppn
-- Dumping structure for table sik_ori.penjualan
CREATE TABLE IF NOT EXISTS `penjualan` (
  `nota_jual` varchar(20) NOT NULL,
  `tgl_jual` date DEFAULT NULL,
  `nip` char(20) DEFAULT NULL,
  `no_rkm_medis` varchar(15) DEFAULT NULL,
  `nm_pasien` varchar(50) DEFAULT NULL,
  `keterangan` varchar(40) DEFAULT NULL,
  `jns_jual` enum('Jual Bebas','Karyawan','Beli Luar','Rawat Jalan','Kelas 1','Kelas 2','Kelas 3','Utama/BPJS','VIP','VVIP') DEFAULT NULL,
  `ongkir` double DEFAULT NULL,
  `ppn` double NOT NULL,
  `status` enum('Belum Dibayar','Sudah Dibayar') DEFAULT NULL,
  `kd_bangsal` char(5) NOT NULL,
  `kd_rek` varchar(15) DEFAULT NULL,
  `nama_bayar` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`nota_jual`),
  KEY `nip` (`nip`),
  KEY `no_rkm_medis` (`no_rkm_medis`),
  KEY `kd_bangsal` (`kd_bangsal`),
  KEY `penjualan_ibfk_12` (`kd_rek`),
  KEY `nama_bayar` (`nama_bayar`),
  CONSTRAINT `penjualan_ibfk_10` FOREIGN KEY (`no_rkm_medis`) REFERENCES `pasien` (`no_rkm_medis`) ON UPDATE CASCADE,
  CONSTRAINT `penjualan_ibfk_11` FOREIGN KEY (`kd_bangsal`) REFERENCES `bangsal` (`kd_bangsal`) ON UPDATE CASCADE,
  CONSTRAINT `penjualan_ibfk_12` FOREIGN KEY (`kd_rek`) REFERENCES `rekening` (`kd_rek`) ON UPDATE CASCADE,
  CONSTRAINT `penjualan_ibfk_13` FOREIGN KEY (`nama_bayar`) REFERENCES `akun_bayar` (`nama_bayar`) ON UPDATE CASCADE,
  CONSTRAINT `penjualan_ibfk_9` FOREIGN KEY (`nip`) REFERENCES `petugas` (`nip`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- kolom ciriciri -> DEFAULT NULL
-- Dumping structure for table sik_ori.penyakit
CREATE TABLE IF NOT EXISTS `penyakit` (
  `kd_penyakit` varchar(10) NOT NULL,
  `nm_penyakit` varchar(100) DEFAULT NULL,
  `ciri_ciri` text DEFAULT NULL,
  `keterangan` varchar(60) DEFAULT NULL,
  `kd_ktg` varchar(8) DEFAULT NULL,
  `status` enum('Menular','Tidak Menular') NOT NULL,
  PRIMARY KEY (`kd_penyakit`),
  KEY `kd_ktg` (`kd_ktg`),
  KEY `nm_penyakit` (`nm_penyakit`),
  KEY `status` (`status`),
  CONSTRAINT `penyakit_ibfk_1` FOREIGN KEY (`kd_ktg`) REFERENCES `kategori_penyakit` (`kd_ktg`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



-- Dumping structure for table sik_ori.perencanaan_pemulangan
CREATE TABLE IF NOT EXISTS `perencanaan_pemulangan` (
  `no_rawat` varchar(17) NOT NULL,
  `rencana_pulang` date NOT NULL,
  `alasan_masuk` varchar(150) DEFAULT NULL,
  `diagnosa_medis` varchar(50) DEFAULT NULL,
  `pengaruh_ri_pasien_dan_keluarga` enum('Tidak','Ya') DEFAULT NULL,
  `keterangan_pengaruh_ri_pasien_dan_keluarga` varchar(100) DEFAULT NULL,
  `pengaruh_ri_pekerjaan_sekolah` enum('Tidak','Ya') NOT NULL,
  `keterangan_pengaruh_ri_pekerjaan_sekolah` varchar(100) NOT NULL,
  `pengaruh_ri_keuangan` enum('Tidak','Ya') NOT NULL,
  `keterangan_pengaruh_ri_keuangan` varchar(100) NOT NULL,
  `antisipasi_masalah_saat_pulang` enum('Tidak','Ya') NOT NULL,
  `keterangan_antisipasi_masalah_saat_pulang` varchar(100) NOT NULL,
  `bantuan_diperlukan_dalam` enum('Menyiapkan Makanan','Edukasi Kesehatan','Makan','Mandi','Diet','Berpakaian','Menyiapkan Obat','Transportasi','Minum Obat') NOT NULL,
  `keterangan_bantuan_diperlukan_dalam` varchar(100) NOT NULL,
  `adakah_yang_membantu_keperluan` enum('Ada','Tidak') NOT NULL,
  `keterangan_adakah_yang_membantu_keperluan` varchar(100) NOT NULL,
  `pasien_tinggal_sendiri` enum('Tidak','Ya') NOT NULL,
  `keterangan_pasien_tinggal_sendiri` varchar(100) NOT NULL,
  `pasien_menggunakan_peralatan_medis` enum('Tidak','Ya') NOT NULL,
  `keterangan_pasien_menggunakan_peralatan_medis` varchar(100) NOT NULL,
  `pasien_memerlukan_alat_bantu` enum('Tidak','Ya') NOT NULL,
  `keterangan_pasien_memerlukan_alat_bantu` varchar(100) NOT NULL,
  `memerlukan_perawatan_khusus` enum('Tidak','Ya') NOT NULL,
  `keterangan_memerlukan_perawatan_khusus` varchar(100) NOT NULL,
  `bermasalah_memenuhi_kebutuhan` enum('Tidak','Ya') NOT NULL,
  `keterangan_bermasalah_memenuhi_kebutuhan` varchar(100) NOT NULL,
  `memiliki_nyeri_kronis` enum('Tidak','Ya') NOT NULL,
  `keterangan_memiliki_nyeri_kronis` varchar(100) NOT NULL,
  `memerlukan_edukasi_kesehatan` enum('Tidak','Ya') NOT NULL,
  `keterangan_memerlukan_edukasi_kesehatan` varchar(100) NOT NULL,
  `memerlukan_keterampilkan_khusus` enum('Tidak','Ya') NOT NULL,
  `keterangan_memerlukan_keterampilkan_khusus` varchar(100) NOT NULL,
  `nama_pasien_keluarga` varchar(50) NOT NULL,
  `nip` varchar(20) NOT NULL,
  PRIMARY KEY (`no_rawat`),
  KEY `nip` (`nip`),
  CONSTRAINT `perencanaan_pemulangan_ibfk_1` FOREIGN KEY (`no_rawat`) REFERENCES `reg_periksa` (`no_rawat`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `perencanaan_pemulangan_ibfk_2` FOREIGN KEY (`nip`) REFERENCES `petugas` (`nip`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- kolom kategori tambah MB
-- Dumping structure for table sik_ori.periksa_lab
CREATE TABLE IF NOT EXISTS `periksa_lab` (
  `no_rawat` varchar(17) NOT NULL,
  `nip` varchar(20) NOT NULL,
  `kd_jenis_prw` varchar(15) NOT NULL,
  `tgl_periksa` date NOT NULL,
  `jam` time NOT NULL,
  `dokter_perujuk` varchar(20) NOT NULL,
  `bagian_rs` double NOT NULL,
  `bhp` double NOT NULL,
  `tarif_perujuk` double NOT NULL,
  `tarif_tindakan_dokter` double NOT NULL,
  `tarif_tindakan_petugas` double NOT NULL,
  `kso` double DEFAULT NULL,
  `menejemen` double DEFAULT NULL,
  `biaya` double NOT NULL,
  `kd_dokter` varchar(20) NOT NULL,
  `status` enum('Ralan','Ranap') DEFAULT NULL,
  `kategori` enum('PA','PK','MB') NOT NULL,
  PRIMARY KEY (`no_rawat`,`kd_jenis_prw`,`tgl_periksa`,`jam`),
  KEY `nip` (`nip`),
  KEY `kd_jenis_prw` (`kd_jenis_prw`),
  KEY `kd_dokter` (`kd_dokter`),
  KEY `dokter_perujuk` (`dokter_perujuk`),
  CONSTRAINT `periksa_lab_ibfk_10` FOREIGN KEY (`nip`) REFERENCES `petugas` (`nip`) ON UPDATE CASCADE,
  CONSTRAINT `periksa_lab_ibfk_11` FOREIGN KEY (`kd_jenis_prw`) REFERENCES `jns_perawatan_lab` (`kd_jenis_prw`) ON UPDATE CASCADE,
  CONSTRAINT `periksa_lab_ibfk_12` FOREIGN KEY (`dokter_perujuk`) REFERENCES `dokter` (`kd_dokter`) ON UPDATE CASCADE,
  CONSTRAINT `periksa_lab_ibfk_13` FOREIGN KEY (`kd_dokter`) REFERENCES `dokter` (`kd_dokter`) ON UPDATE CASCADE,
  CONSTRAINT `periksa_lab_ibfk_9` FOREIGN KEY (`no_rawat`) REFERENCES `reg_periksa` (`no_rawat`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- periksa_lab_pesan stay

-- periksa_pa removed


-- Dumping structure for table sik_ori.permintaan_detail_permintaan_labmb
CREATE TABLE IF NOT EXISTS `permintaan_detail_permintaan_labmb` (
  `noorder` varchar(15) NOT NULL,
  `kd_jenis_prw` varchar(15) NOT NULL,
  `id_template` int(11) NOT NULL,
  `stts_bayar` enum('Sudah','Belum') DEFAULT NULL,
  PRIMARY KEY (`noorder`,`kd_jenis_prw`,`id_template`),
  KEY `id_template` (`id_template`),
  KEY `kd_jenis_prw` (`kd_jenis_prw`),
  CONSTRAINT `permintaan_detail_permintaan_labmb_ibfk_1` FOREIGN KEY (`kd_jenis_prw`) REFERENCES `jns_perawatan_lab` (`kd_jenis_prw`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `permintaan_detail_permintaan_labmb_ibfk_2` FOREIGN KEY (`id_template`) REFERENCES `template_laboratorium` (`id_template`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `permintaan_detail_permintaan_labmb_ibfk_3` FOREIGN KEY (`noorder`) REFERENCES `permintaan_labmb` (`noorder`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- permintaan_jl_dr removed
-- permintaan_jl_drpr removed
-- permintaan_jl_pr removed


-- Dumping structure for table sik_ori.permintaan_labmb
CREATE TABLE IF NOT EXISTS `permintaan_labmb` (
  `noorder` varchar(15) NOT NULL,
  `no_rawat` varchar(17) NOT NULL,
  `tgl_permintaan` date NOT NULL,
  `jam_permintaan` time NOT NULL,
  `tgl_sampel` date NOT NULL,
  `jam_sampel` time NOT NULL,
  `tgl_hasil` date NOT NULL,
  `jam_hasil` time NOT NULL,
  `dokter_perujuk` varchar(20) NOT NULL,
  `status` enum('ralan','ranap') NOT NULL,
  `informasi_tambahan` varchar(60) NOT NULL,
  `diagnosa_klinis` varchar(80) NOT NULL,
  PRIMARY KEY (`noorder`),
  KEY `dokter_perujuk` (`dokter_perujuk`),
  KEY `no_rawat` (`no_rawat`),
  CONSTRAINT `permintaan_labmb_ibfk_1` FOREIGN KEY (`dokter_perujuk`) REFERENCES `dokter` (`kd_dokter`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `permintaan_labmb_ibfk_2` FOREIGN KEY (`no_rawat`) REFERENCES `reg_periksa` (`no_rawat`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- permintaan_pa removed
-- permintaan_pemeriksaan_pa removed


-- Dumping structure for table sik_ori.permintaan_pemeriksaan_labmb
CREATE TABLE IF NOT EXISTS `permintaan_pemeriksaan_labmb` (
  `noorder` varchar(15) NOT NULL,
  `kd_jenis_prw` varchar(15) NOT NULL,
  `stts_bayar` enum('Sudah','Belum') DEFAULT NULL,
  PRIMARY KEY (`noorder`,`kd_jenis_prw`),
  KEY `kd_jenis_prw` (`kd_jenis_prw`),
  CONSTRAINT `permintaan_pemeriksaan_labmb_ibfk_1` FOREIGN KEY (`noorder`) REFERENCES `permintaan_labmb` (`noorder`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `permintaan_pemeriksaan_labmb_ibfk_2` FOREIGN KEY (`kd_jenis_prw`) REFERENCES `jns_perawatan_lab` (`kd_jenis_prw`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- Dumping structure for table sik_ori.permintaan_pemeriksaan_labpa
CREATE TABLE IF NOT EXISTS `permintaan_pemeriksaan_labpa` (
  `noorder` varchar(15) NOT NULL,
  `kd_jenis_prw` varchar(15) NOT NULL,
  `stts_bayar` enum('Sudah','Belum') DEFAULT NULL,
  PRIMARY KEY (`noorder`,`kd_jenis_prw`),
  KEY `kd_jenis_prw` (`kd_jenis_prw`),
  CONSTRAINT `permintaan_pemeriksaan_labpa_ibfk_1` FOREIGN KEY (`noorder`) REFERENCES `permintaan_labpa` (`noorder`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `permintaan_pemeriksaan_labpa_ibfk_2` FOREIGN KEY (`kd_jenis_prw`) REFERENCES `jns_perawatan_lab` (`kd_jenis_prw`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- Dumping structure for table sik_ori.permintaan_resep_pulang
CREATE TABLE IF NOT EXISTS `permintaan_resep_pulang` (
  `no_permintaan` varchar(14) NOT NULL DEFAULT '',
  `tgl_permintaan` date DEFAULT NULL,
  `jam` time NOT NULL,
  `no_rawat` varchar(17) NOT NULL DEFAULT '',
  `kd_dokter` varchar(20) NOT NULL,
  `status` enum('Sudah','Belum') NOT NULL,
  `tgl_validasi` date NOT NULL,
  `jam_validasi` time NOT NULL,
  PRIMARY KEY (`no_permintaan`),
  UNIQUE KEY `tgl_permintaan` (`tgl_permintaan`,`jam`,`no_rawat`),
  KEY `no_rawat` (`no_rawat`),
  KEY `kd_dokter` (`kd_dokter`),
  CONSTRAINT `permintaan_resep_pulang_ibfk_1` FOREIGN KEY (`no_rawat`) REFERENCES `reg_periksa` (`no_rawat`) ON UPDATE CASCADE,
  CONSTRAINT `permintaan_resep_pulang_ibfk_2` FOREIGN KEY (`kd_dokter`) REFERENCES `dokter` (`kd_dokter`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- Dumping structure for table sik_ori.persetujuan_penolakan_tindakan
CREATE TABLE IF NOT EXISTS `persetujuan_penolakan_tindakan` (
  `no_pernyataan` varchar(20) NOT NULL,
  `no_rawat` varchar(17) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `diagnosa` varchar(200) DEFAULT NULL,
  `diagnosa_konfirmasi` enum('true','false') DEFAULT NULL,
  `tindakan` varchar(200) DEFAULT NULL,
  `tindakan_konfirmasi` enum('true','false') DEFAULT NULL,
  `indikasi_tindakan` varchar(200) DEFAULT NULL,
  `indikasi_tindakan_konfirmasi` enum('true','false') DEFAULT NULL,
  `tata_cara` varchar(400) DEFAULT NULL,
  `tata_cara_konfirmasi` enum('true','false') DEFAULT NULL,
  `tujuan` varchar(200) DEFAULT NULL,
  `tujuan_konfirmasi` enum('true','false') DEFAULT NULL,
  `risiko` varchar(200) DEFAULT NULL,
  `risiko_konfirmasi` enum('true','false') DEFAULT NULL,
  `komplikasi` varchar(200) DEFAULT NULL,
  `komplikasi_konfirmasi` enum('true','false') DEFAULT NULL,
  `prognosis` varchar(200) DEFAULT NULL,
  `prognosis_konfirmasi` enum('true','false') DEFAULT NULL,
  `alternatif_dan_risikonya` varchar(200) DEFAULT NULL,
  `alternatif_konfirmasi` enum('true','false') DEFAULT NULL,
  `biaya` double DEFAULT NULL,
  `biaya_konfirmasi` enum('true','false') DEFAULT NULL,
  `lain_lain` varchar(200) DEFAULT NULL,
  `lain_lain_konfirmasi` enum('true','false') DEFAULT NULL,
  `kd_dokter` varchar(20) NOT NULL,
  `nip` varchar(20) NOT NULL,
  `penerima_informasi` varchar(50) NOT NULL,
  `alasan_diwakilkan_penerima_informasi` varchar(40) NOT NULL,
  `jk_penerima_informasi` enum('L','P') NOT NULL,
  `tanggal_lahir_penerima_informasi` date NOT NULL,
  `umur_penerima_informasi` varchar(30) NOT NULL,
  `alamat_penerima_informasi` varchar(100) NOT NULL,
  `no_hp` varchar(40) NOT NULL,
  `hubungan_penerima_informasi` enum('Diri Sendiri','Orang Tua','Anak','Saudara Kandung','Teman','Lain-lain') NOT NULL,
  `pernyataan` enum('Belum Dikonfirmasi','Persetujuan','Penolakan') NOT NULL,
  `saksi_keluarga` varchar(50) NOT NULL,
  PRIMARY KEY (`no_pernyataan`),
  KEY `no_rawat` (`no_rawat`),
  KEY `kd_dokter` (`kd_dokter`),
  KEY `nip` (`nip`),
  CONSTRAINT `persetujuan_penolakan_tindakan_ibfk_1` FOREIGN KEY (`no_rawat`) REFERENCES `reg_periksa` (`no_rawat`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `persetujuan_penolakan_tindakan_ibfk_2` FOREIGN KEY (`kd_dokter`) REFERENCES `dokter` (`kd_dokter`) ON UPDATE CASCADE,
  CONSTRAINT `persetujuan_penolakan_tindakan_ibfk_3` FOREIGN KEY (`nip`) REFERENCES `petugas` (`nip`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- kolom nip -> varchar
-- Dumping structure for table sik_ori.piutang
CREATE TABLE IF NOT EXISTS `piutang` (
  `nota_piutang` varchar(20) NOT NULL,
  `tgl_piutang` date DEFAULT NULL,
  `nip` varchar(20) DEFAULT NULL,
  `no_rkm_medis` varchar(15) DEFAULT NULL,
  `nm_pasien` varchar(50) DEFAULT NULL,
  `catatan` varchar(40) DEFAULT NULL,
  `jns_jual` enum('Jual Bebas','Karyawan','Beli Luar','Rawat Jalan','Kelas 1','Kelas 2','Kelas 3','Utama','VIP','VVIP') DEFAULT NULL,
  `ongkir` double DEFAULT NULL,
  `uangmuka` double DEFAULT NULL,
  `sisapiutang` double NOT NULL,
  `status` enum('UMUM','PAJAK') DEFAULT NULL,
  `tgltempo` date NOT NULL,
  `kd_bangsal` char(5) NOT NULL,
  PRIMARY KEY (`nota_piutang`),
  KEY `nip` (`nip`),
  KEY `no_rkm_medis` (`no_rkm_medis`),
  KEY `kd_bangsal` (`kd_bangsal`),
  CONSTRAINT `piutang_ibfk_2` FOREIGN KEY (`no_rkm_medis`) REFERENCES `pasien` (`no_rkm_medis`) ON UPDATE CASCADE,
  CONSTRAINT `piutang_ibfk_3` FOREIGN KEY (`kd_bangsal`) REFERENCES `bangsal` (`kd_bangsal`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `piutang_ibfk_4` FOREIGN KEY (`nip`) REFERENCES `petugas` (`nip`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- Dumping structure for table sik_ori.piutang_lainlain
CREATE TABLE IF NOT EXISTS `piutang_lainlain` (
  `nota_piutang` varchar(20) NOT NULL,
  `tgl_piutang` date DEFAULT NULL,
  `nip` varchar(20) DEFAULT NULL,
  `kode_peminjam` varchar(5) DEFAULT NULL,
  `kd_rek` varchar(15) NOT NULL,
  `nama_bayar` varchar(50) DEFAULT NULL,
  `keterangan` varchar(100) DEFAULT NULL,
  `tgltempo` date NOT NULL,
  `nominal` double NOT NULL,
  `sisapiutang` double NOT NULL,
  `status` enum('Sudah Lunas','Belum Lunas') NOT NULL,
  PRIMARY KEY (`nota_piutang`),
  KEY `nip` (`nip`),
  KEY `nama_bayar` (`nama_bayar`),
  KEY `kode_peminjam` (`kode_peminjam`),
  KEY `kd_rek` (`kd_rek`),
  CONSTRAINT `piutang_lainlain_ibfk_1` FOREIGN KEY (`nip`) REFERENCES `petugas` (`nip`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `piutang_lainlain_ibfk_2` FOREIGN KEY (`kode_peminjam`) REFERENCES `peminjampiutang` (`kode_peminjam`) ON UPDATE CASCADE,
  CONSTRAINT `piutang_lainlain_ibfk_3` FOREIGN KEY (`nama_bayar`) REFERENCES `akun_bayar` (`nama_bayar`) ON UPDATE CASCADE,
  CONSTRAINT `piutang_lainlain_ibfk_4` FOREIGN KEY (`kd_rek`) REFERENCES `rekening` (`kd_rek`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- purchase_order, purchase_order_item removed

-- kolom tgl_perawatan tambah DEFAULT '0000-00-00'
-- Dumping structure for table sik_ori.rawat_inap_dr
CREATE TABLE IF NOT EXISTS `rawat_inap_dr` (
  `no_rawat` varchar(17) NOT NULL DEFAULT '',
  `kd_jenis_prw` varchar(15) NOT NULL,
  `kd_dokter` varchar(20) NOT NULL,
  `tgl_perawatan` date NOT NULL DEFAULT '0000-00-00',
  `jam_rawat` time NOT NULL DEFAULT '00:00:00',
  `material` double NOT NULL,
  `bhp` double NOT NULL,
  `tarif_tindakandr` double NOT NULL,
  `kso` double DEFAULT NULL,
  `menejemen` double DEFAULT NULL,
  `biaya_rawat` double DEFAULT NULL,
  PRIMARY KEY (`no_rawat`,`kd_jenis_prw`,`kd_dokter`,`tgl_perawatan`,`jam_rawat`),
  KEY `no_rawat` (`no_rawat`),
  KEY `kd_jenis_prw` (`kd_jenis_prw`),
  KEY `kd_dokter` (`kd_dokter`),
  KEY `tgl_perawatan` (`tgl_perawatan`),
  KEY `biaya_rawat` (`biaya_rawat`),
  KEY `jam_rawat` (`jam_rawat`),
  CONSTRAINT `rawat_inap_dr_ibfk_3` FOREIGN KEY (`kd_dokter`) REFERENCES `dokter` (`kd_dokter`) ON UPDATE CASCADE,
  CONSTRAINT `rawat_inap_dr_ibfk_6` FOREIGN KEY (`kd_jenis_prw`) REFERENCES `jns_perawatan_inap` (`kd_jenis_prw`) ON UPDATE CASCADE,
  CONSTRAINT `rawat_inap_dr_ibfk_7` FOREIGN KEY (`no_rawat`) REFERENCES `reg_periksa` (`no_rawat`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- kolom tgl_perawatan tambah DEFAULT '0000-00-00'
-- Dumping structure for table sik_ori.rawat_inap_drpr
CREATE TABLE IF NOT EXISTS `rawat_inap_drpr` (
  `no_rawat` varchar(17) NOT NULL DEFAULT '',
  `kd_jenis_prw` varchar(15) NOT NULL,
  `kd_dokter` varchar(20) NOT NULL,
  `nip` varchar(20) NOT NULL DEFAULT '',
  `tgl_perawatan` date NOT NULL DEFAULT '0000-00-00',
  `jam_rawat` time NOT NULL DEFAULT '00:00:00',
  `material` double NOT NULL,
  `bhp` double NOT NULL,
  `tarif_tindakandr` double DEFAULT NULL,
  `tarif_tindakanpr` double DEFAULT NULL,
  `kso` double DEFAULT NULL,
  `menejemen` double DEFAULT NULL,
  `biaya_rawat` double DEFAULT NULL,
  PRIMARY KEY (`no_rawat`,`kd_jenis_prw`,`kd_dokter`,`nip`,`tgl_perawatan`,`jam_rawat`),
  KEY `rawat_inap_drpr_ibfk_2` (`kd_jenis_prw`),
  KEY `rawat_inap_drpr_ibfk_3` (`kd_dokter`),
  KEY `rawat_inap_drpr_ibfk_4` (`nip`),
  CONSTRAINT `rawat_inap_drpr_ibfk_1` FOREIGN KEY (`no_rawat`) REFERENCES `reg_periksa` (`no_rawat`) ON UPDATE CASCADE,
  CONSTRAINT `rawat_inap_drpr_ibfk_2` FOREIGN KEY (`kd_jenis_prw`) REFERENCES `jns_perawatan_inap` (`kd_jenis_prw`) ON UPDATE CASCADE,
  CONSTRAINT `rawat_inap_drpr_ibfk_3` FOREIGN KEY (`kd_dokter`) REFERENCES `dokter` (`kd_dokter`) ON UPDATE CASCADE,
  CONSTRAINT `rawat_inap_drpr_ibfk_4` FOREIGN KEY (`nip`) REFERENCES `petugas` (`nip`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- kolom tgl_perawatan tambah DEFAULT '0000-00-00'
-- Dumping structure for table sik_ori.rawat_inap_pr
CREATE TABLE IF NOT EXISTS `rawat_inap_pr` (
  `no_rawat` varchar(17) NOT NULL DEFAULT '',
  `kd_jenis_prw` varchar(15) NOT NULL,
  `nip` varchar(20) NOT NULL DEFAULT '',
  `tgl_perawatan` date NOT NULL DEFAULT '0000-00-00',
  `jam_rawat` time NOT NULL DEFAULT '00:00:00',
  `material` double NOT NULL,
  `bhp` double NOT NULL,
  `tarif_tindakanpr` double NOT NULL,
  `kso` double DEFAULT NULL,
  `menejemen` double DEFAULT NULL,
  `biaya_rawat` double DEFAULT NULL,
  PRIMARY KEY (`no_rawat`,`kd_jenis_prw`,`nip`,`tgl_perawatan`,`jam_rawat`),
  KEY `no_rawat` (`no_rawat`),
  KEY `kd_jenis_prw` (`kd_jenis_prw`),
  KEY `nip` (`nip`),
  KEY `biaya_rawat` (`biaya_rawat`),
  CONSTRAINT `rawat_inap_pr_ibfk_3` FOREIGN KEY (`nip`) REFERENCES `petugas` (`nip`) ON UPDATE CASCADE,
  CONSTRAINT `rawat_inap_pr_ibfk_6` FOREIGN KEY (`kd_jenis_prw`) REFERENCES `jns_perawatan_inap` (`kd_jenis_prw`) ON UPDATE CASCADE,
  CONSTRAINT `rawat_inap_pr_ibfk_7` FOREIGN KEY (`no_rawat`) REFERENCES `reg_periksa` (`no_rawat`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- record_antrian_mobilejkn stay

-- kolom status tambah Batal Gagal
-- Dumping structure for table sik_ori.referensi_mobilejkn_bpjs
CREATE TABLE IF NOT EXISTS `referensi_mobilejkn_bpjs` (
  `nobooking` varchar(15) NOT NULL,
  `no_rawat` varchar(17) DEFAULT NULL,
  `nomorkartu` varchar(25) DEFAULT NULL,
  `nik` varchar(30) DEFAULT NULL,
  `nohp` varchar(15) DEFAULT NULL,
  `kodepoli` varchar(15) DEFAULT NULL,
  `pasienbaru` enum('0','1') NOT NULL,
  `norm` varchar(15) DEFAULT NULL,
  `tanggalperiksa` date DEFAULT NULL,
  `kodedokter` varchar(20) DEFAULT NULL,
  `jampraktek` varchar(12) DEFAULT NULL,
  `jeniskunjungan` enum('1 (Rujukan FKTP)','2 (Rujukan Internal)','3 (Kontrol)','4 (Rujukan Antar RS)') DEFAULT NULL,
  `nomorreferensi` varchar(40) NOT NULL,
  `nomorantrean` varchar(15) NOT NULL,
  `angkaantrean` varchar(5) NOT NULL,
  `estimasidilayani` varchar(15) NOT NULL,
  `sisakuotajkn` int(11) NOT NULL,
  `kuotajkn` int(11) NOT NULL,
  `sisakuotanonjkn` int(11) NOT NULL,
  `kuotanonjkn` int(11) NOT NULL,
  `status` enum('Belum','Checkin','Batal','Gagal') NOT NULL,
  `validasi` datetime NOT NULL,
  `statuskirim` enum('Belum','Sudah') NOT NULL,
  PRIMARY KEY (`nobooking`),
  KEY `norm` (`norm`),
  CONSTRAINT `referensi_mobilejkn_bpjs_ibfk_1` FOREIGN KEY (`norm`) REFERENCES `pasien` (`no_rkm_medis`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- kolom tanggalbatal -> NOT NULL
-- Dumping structure for table sik_ori.referensi_mobilejkn_bpjs_batal
CREATE TABLE IF NOT EXISTS `referensi_mobilejkn_bpjs_batal` (
  `no_rkm_medis` varchar(15) NOT NULL,
  `no_rawat_batal` varchar(17) DEFAULT NULL,
  `nomorreferensi` varchar(40) NOT NULL,
  `tanggalbatal` datetime NOT NULL,
  `keterangan` varchar(200) DEFAULT NULL,
  `statuskirim` enum('Sudah','Belum') NOT NULL,
  `nobooking` varchar(15) NOT NULL,
  PRIMARY KEY (`nobooking`),
  KEY `no_rkm_medis` (`no_rkm_medis`),
  CONSTRAINT `referensi_mobilejkn_bpjs_batal_ibfk_1` FOREIGN KEY (`no_rkm_medis`) REFERENCES `pasien` (`no_rkm_medis`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `referensi_mobilejkn_bpjs_batal_ibfk_2` FOREIGN KEY (`nobooking`) REFERENCES `referensi_mobilejkn_bpjs` (`nobooking`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- tambah kolom tgl jam penyerahan
-- Dumping structure for table sik_ori.resep_obat
CREATE TABLE IF NOT EXISTS `resep_obat` (
  `no_resep` varchar(14) NOT NULL DEFAULT '',
  `tgl_perawatan` date DEFAULT NULL,
  `jam` time NOT NULL,
  `no_rawat` varchar(17) NOT NULL DEFAULT '',
  `kd_dokter` varchar(20) NOT NULL,
  `tgl_peresepan` date DEFAULT NULL,
  `jam_peresepan` time DEFAULT NULL,
  `status` enum('ralan','ranap') DEFAULT NULL,
  `tgl_penyerahan` date NOT NULL,
  `jam_penyerahan` time NOT NULL,
  PRIMARY KEY (`no_resep`),
  KEY `no_rawat` (`no_rawat`),
  KEY `kd_dokter` (`kd_dokter`),
  CONSTRAINT `resep_obat_ibfk_3` FOREIGN KEY (`no_rawat`) REFERENCES `reg_periksa` (`no_rawat`) ON UPDATE CASCADE,
  CONSTRAINT `resep_obat_ibfk_4` FOREIGN KEY (`kd_dokter`) REFERENCES `dokter` (`kd_dokter`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- kolom dosis -> 150
-- Dumping structure for table sik_ori.resep_pulang
CREATE TABLE IF NOT EXISTS `resep_pulang` (
  `no_rawat` varchar(17) NOT NULL,
  `kode_brng` varchar(15) NOT NULL,
  `jml_barang` double NOT NULL,
  `harga` double NOT NULL,
  `total` double NOT NULL,
  `dosis` varchar(150) NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `kd_bangsal` varchar(5) NOT NULL,
  `no_batch` varchar(20) NOT NULL,
  `no_faktur` varchar(20) NOT NULL,
  PRIMARY KEY (`no_rawat`,`kode_brng`,`tanggal`,`jam`,`no_batch`,`no_faktur`),
  KEY `kode_brng` (`kode_brng`),
  KEY `kd_bangsal` (`kd_bangsal`),
  KEY `no_rawat` (`no_rawat`),
  CONSTRAINT `resep_pulang_ibfk_2` FOREIGN KEY (`kode_brng`) REFERENCES `databarang` (`kode_brng`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `resep_pulang_ibfk_3` FOREIGN KEY (`no_rawat`) REFERENCES `reg_periksa` (`no_rawat`) ON UPDATE CASCADE,
  CONSTRAINT `resep_pulang_ibfk_4` FOREIGN KEY (`kd_bangsal`) REFERENCES `bangsal` (`kd_bangsal`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



-- Dumping structure for table sik_ori.resume_pasien_ranap
CREATE TABLE IF NOT EXISTS `resume_pasien_ranap` (
  `no_rawat` varchar(17) NOT NULL,
  `kd_dokter` varchar(20) NOT NULL,
  `diagnosa_awal` varchar(100) NOT NULL,
  `alasan` varchar(100) NOT NULL,
  `keluhan_utama` text NOT NULL,
  `pemeriksaan_fisik` text NOT NULL,
  `jalannya_penyakit` text NOT NULL,
  `pemeriksaan_penunjang` text NOT NULL,
  `hasil_laborat` text NOT NULL,
  `tindakan_dan_operasi` text NOT NULL,
  `obat_di_rs` text NOT NULL,
  `diagnosa_utama` varchar(80) NOT NULL,
  `kd_diagnosa_utama` varchar(10) NOT NULL,
  `diagnosa_sekunder` varchar(80) NOT NULL,
  `kd_diagnosa_sekunder` varchar(10) NOT NULL,
  `diagnosa_sekunder2` varchar(80) NOT NULL,
  `kd_diagnosa_sekunder2` varchar(10) NOT NULL,
  `diagnosa_sekunder3` varchar(80) NOT NULL,
  `kd_diagnosa_sekunder3` varchar(10) NOT NULL,
  `diagnosa_sekunder4` varchar(80) NOT NULL,
  `kd_diagnosa_sekunder4` varchar(10) NOT NULL,
  `prosedur_utama` varchar(80) NOT NULL,
  `kd_prosedur_utama` varchar(8) NOT NULL,
  `prosedur_sekunder` varchar(80) NOT NULL,
  `kd_prosedur_sekunder` varchar(8) NOT NULL,
  `prosedur_sekunder2` varchar(80) NOT NULL,
  `kd_prosedur_sekunder2` varchar(8) NOT NULL,
  `prosedur_sekunder3` varchar(80) NOT NULL,
  `kd_prosedur_sekunder3` varchar(8) NOT NULL,
  `alergi` varchar(100) NOT NULL,
  `diet` text NOT NULL,
  `lab_belum` text NOT NULL,
  `edukasi` text NOT NULL,
  `cara_keluar` enum('Atas Izin Dokter','Pindah RS','Pulang Atas Permintaan Sendiri','Lainnya') NOT NULL,
  `ket_keluar` varchar(50) DEFAULT NULL,
  `keadaan` enum('Membaik','Sembuh','Keadaan Khusus','Meninggal') NOT NULL,
  `ket_keadaan` varchar(50) DEFAULT NULL,
  `dilanjutkan` enum('Kembali Ke RS','RS Lain','Dokter Luar','Puskesmes','Lainnya') NOT NULL,
  `ket_dilanjutkan` varchar(50) DEFAULT NULL,
  `kontrol` datetime DEFAULT NULL,
  `obat_pulang` text NOT NULL,
  PRIMARY KEY (`no_rawat`),
  KEY `kd_dokter` (`kd_dokter`),
  CONSTRAINT `resume_pasien_ranap_ibfk_1` FOREIGN KEY (`no_rawat`) REFERENCES `reg_periksa` (`no_rawat`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `resume_pasien_ranap_ibfk_2` FOREIGN KEY (`kd_dokter`) REFERENCES `dokter` (`kd_dokter`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- kolom nip -> varchar
-- Dumping structure for table sik_ori.returpiutang
CREATE TABLE IF NOT EXISTS `returpiutang` (
  `no_retur_piutang` varchar(20) NOT NULL,
  `tgl_retur` date DEFAULT NULL,
  `nip` varchar(20) DEFAULT NULL,
  `no_rkm_medis` varchar(15) NOT NULL,
  `kd_bangsal` char(5) NOT NULL,
  PRIMARY KEY (`no_retur_piutang`),
  KEY `nip` (`nip`),
  KEY `no_rkm_medis` (`no_rkm_medis`),
  KEY `kd_bangsal` (`kd_bangsal`),
  CONSTRAINT `returpiutang_ibfk_4` FOREIGN KEY (`no_rkm_medis`) REFERENCES `pasien` (`no_rkm_medis`) ON UPDATE CASCADE,
  CONSTRAINT `returpiutang_ibfk_5` FOREIGN KEY (`kd_bangsal`) REFERENCES `bangsal` (`kd_bangsal`) ON UPDATE CASCADE,
  CONSTRAINT `returpiutang_ibfk_6` FOREIGN KEY (`nip`) REFERENCES `petugas` (`nip`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- room_bed removed


-- kolom keterangan_diagnosa -> DEFAULT NULL
-- Dumping structure for table sik_ori.rujuk
CREATE TABLE IF NOT EXISTS `rujuk` (
  `no_rujuk` varchar(40) NOT NULL,
  `no_rawat` varchar(17) DEFAULT NULL,
  `rujuk_ke` varchar(150) DEFAULT NULL,
  `tgl_rujuk` date DEFAULT NULL,
  `keterangan_diagnosa` text DEFAULT NULL,
  `kd_dokter` varchar(20) DEFAULT NULL,
  `kat_rujuk` enum('-','Bedah','Non Bedah','Kebidanan','Anak') DEFAULT NULL,
  `ambulance` enum('-','AGD','SENDIRI','SWASTA') DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  `jam` time DEFAULT NULL,
  KEY `kd_dokter` (`kd_dokter`),
  KEY `no_rawat` (`no_rawat`),
  KEY `rujuk_ke` (`rujuk_ke`),
  CONSTRAINT `rujuk_ibfk_1` FOREIGN KEY (`kd_dokter`) REFERENCES `dokter` (`kd_dokter`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `rujuk_ibfk_2` FOREIGN KEY (`no_rawat`) REFERENCES `reg_periksa` (`no_rawat`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- tambah kolom BayarJMDokter & PPN MASUKAN (KEY dari kd_rek)
-- Dumping structure for table sik_ori.set_akun
CREATE TABLE IF NOT EXISTS `set_akun` (
  `Pengadaan_Obat` varchar(15) DEFAULT NULL,
  `Pemesanan_Obat` varchar(15) DEFAULT NULL,
  `Kontra_Pemesanan_Obat` varchar(15) DEFAULT NULL,
  `Bayar_Pemesanan_Obat` varchar(15) DEFAULT NULL,
  `Penjualan_Obat` varchar(15) DEFAULT NULL,
  `Piutang_Obat` varchar(15) DEFAULT NULL,
  `Kontra_Piutang_Obat` varchar(15) DEFAULT NULL,
  `Retur_Ke_Suplayer` varchar(15) DEFAULT NULL,
  `Kontra_Retur_Ke_Suplayer` varchar(15) DEFAULT NULL,
  `Retur_Dari_pembeli` varchar(15) DEFAULT NULL,
  `Kontra_Retur_Dari_Pembeli` varchar(15) DEFAULT NULL,
  `Retur_Piutang_Obat` varchar(15) DEFAULT NULL,
  `Kontra_Retur_Piutang_Obat` varchar(15) DEFAULT NULL,
  `Pengadaan_Ipsrs` varchar(15) DEFAULT NULL,
  `Stok_Keluar_Ipsrs` varchar(15) DEFAULT NULL,
  `Kontra_Stok_Keluar_Ipsrs` varchar(15) DEFAULT NULL,
  `Bayar_Piutang_Pasien` varchar(15) DEFAULT NULL,
  `Pengambilan_Utd` varchar(15) DEFAULT NULL,
  `Kontra_Pengambilan_Utd` varchar(15) DEFAULT NULL,
  `Pengambilan_Penunjang_Utd` varchar(15) DEFAULT NULL,
  `Kontra_Pengambilan_Penunjang_Utd` varchar(15) DEFAULT NULL,
  `Penyerahan_Darah` varchar(15) DEFAULT NULL,
  `Stok_Keluar_Medis` varchar(15) NOT NULL,
  `Kontra_Stok_Keluar_Medis` varchar(15) NOT NULL,
  `HPP_Obat_Jual_Bebas` varchar(15) DEFAULT NULL,
  `Persediaan_Obat_Jual_Bebas` varchar(15) DEFAULT NULL,
  `Penerimaan_NonMedis` varchar(15) NOT NULL,
  `Kontra_Penerimaan_NonMedis` varchar(15) NOT NULL,
  `Bayar_Pemesanan_Non_Medis` varchar(15) NOT NULL,
  `Hibah_Obat` varchar(15) NOT NULL,
  `Kontra_Hibah_Obat` varchar(15) NOT NULL,
  `Penerimaan_Toko` varchar(15) DEFAULT NULL,
  `Kontra_Penerimaan_Toko` varchar(15) DEFAULT NULL,
  `Pengadaan_Toko` varchar(15) NOT NULL,
  `Bayar_Pemesanan_Toko` varchar(15) DEFAULT NULL,
  `Penjualan_Toko` varchar(15) DEFAULT NULL,
  `HPP_Barang_Toko` varchar(15) DEFAULT NULL,
  `Persediaan_Barang_Toko` varchar(15) DEFAULT NULL,
  `Piutang_Toko` varchar(15) DEFAULT NULL,
  `Kontra_Piutang_Toko` varchar(15) DEFAULT NULL,
  `Retur_Beli_Toko` varchar(15) DEFAULT NULL,
  `Kontra_Retur_Beli_Toko` varchar(15) DEFAULT NULL,
  `Retur_Beli_Non_Medis` varchar(15) DEFAULT NULL,
  `Kontra_Retur_Beli_Non_Medis` varchar(15) DEFAULT NULL,
  `Retur_Jual_Toko` varchar(15) DEFAULT NULL,
  `Kontra_Retur_Jual_Toko` varchar(15) DEFAULT NULL,
  `Retur_Piutang_Toko` varchar(15) DEFAULT NULL,
  `Kontra_Retur_Piutang_Toko` varchar(15) DEFAULT NULL,
  `Kerugian_Klaim_BPJS_RVP` varchar(15) NOT NULL,
  `Lebih_Bayar_Klaim_BPJS_RVP` varchar(15) NOT NULL,
  `Piutang_BPJS_RVP` varchar(15) NOT NULL,
  `Kontra_Penerimaan_AsetInventaris` varchar(15) NOT NULL,
  `Kontra_Hibah_Aset` varchar(15) NOT NULL,
  `Hibah_Non_Medis` varchar(15) NOT NULL,
  `Kontra_Hibah_Non_Medis` varchar(15) NOT NULL,
  `Bayar_JM_Dokter` varchar(15) NOT NULL,
  `PPN_Masukan` varchar(15) NOT NULL,
  KEY `Pengadaan_Obat` (`Pengadaan_Obat`),
  KEY `Pemesanan_Obat` (`Pemesanan_Obat`),
  KEY `Kontra_Pemesanan_Obat` (`Kontra_Pemesanan_Obat`),
  KEY `Bayar_Pemesanan_Obat` (`Bayar_Pemesanan_Obat`),
  KEY `Penjualan_Obat` (`Penjualan_Obat`),
  KEY `Piutang_Obat` (`Piutang_Obat`),
  KEY `Kontra_Piutang_Obat` (`Kontra_Piutang_Obat`),
  KEY `Retur_Ke_Suplayer` (`Retur_Ke_Suplayer`),
  KEY `Kontra_Retur_Ke_Suplayer` (`Kontra_Retur_Ke_Suplayer`),
  KEY `Retur_Dari_pembeli` (`Retur_Dari_pembeli`),
  KEY `Kontra_Retur_Dari_Pembeli` (`Kontra_Retur_Dari_Pembeli`),
  KEY `Retur_Piutang_Obat` (`Retur_Piutang_Obat`),
  KEY `Kontra_Retur_Piutang_Obat` (`Kontra_Retur_Piutang_Obat`),
  KEY `Pengadaan_Ipsrs` (`Pengadaan_Ipsrs`),
  KEY `Stok_Keluar_Ipsrs` (`Stok_Keluar_Ipsrs`),
  KEY `Kontra_Stok_Keluar_Ipsrs` (`Kontra_Stok_Keluar_Ipsrs`),
  KEY `Bayar_Piutang_Pasien` (`Bayar_Piutang_Pasien`),
  KEY `Pengambilan_Utd` (`Pengambilan_Utd`),
  KEY `Kontra_Pengambilan_Utd` (`Kontra_Pengambilan_Utd`),
  KEY `Pengambilan_Penunjang_Utd` (`Pengambilan_Penunjang_Utd`),
  KEY `Kontra_Pengambilan_Penunjang_Utd` (`Kontra_Pengambilan_Penunjang_Utd`),
  KEY `Penyerahan_Darah` (`Penyerahan_Darah`),
  KEY `Stok_Keluar_Medis` (`Stok_Keluar_Medis`),
  KEY `Kontra_Stok_Keluar_Medis` (`Kontra_Stok_Keluar_Medis`),
  KEY `HPP_Obat_Jual_Bebas` (`HPP_Obat_Jual_Bebas`),
  KEY `Persediaan_Obat_Jual_Bebas` (`Persediaan_Obat_Jual_Bebas`),
  KEY `Penerimaan_NonMedis` (`Penerimaan_NonMedis`),
  KEY `Kontra_Penerimaan_NonMedis` (`Kontra_Penerimaan_NonMedis`),
  KEY `Bayar_Pemesanan_Non_Medis` (`Bayar_Pemesanan_Non_Medis`),
  KEY `Hibah_Obat` (`Hibah_Obat`),
  KEY `Kontra_Hibah_Obat` (`Kontra_Hibah_Obat`),
  KEY `Penerimaan_Toko` (`Penerimaan_Toko`),
  KEY `Kontra_Penerimaan_Toko` (`Kontra_Penerimaan_Toko`),
  KEY `Pengadaan_Toko` (`Pengadaan_Toko`),
  KEY `Bayar_Pemesanan_Toko` (`Bayar_Pemesanan_Toko`),
  KEY `Penjualan_Toko` (`Penjualan_Toko`),
  KEY `HPP_Barang_Toko` (`HPP_Barang_Toko`),
  KEY `Persediaan_Barang_Toko` (`Persediaan_Barang_Toko`),
  KEY `Piutang_Toko` (`Piutang_Toko`),
  KEY `Kontra_Piutang_Toko` (`Kontra_Piutang_Toko`),
  KEY `Retur_Beli_Toko` (`Retur_Beli_Toko`),
  KEY `Kontra_Retur_Beli_Toko` (`Kontra_Retur_Beli_Toko`),
  KEY `Retur_Beli_Non_Medis` (`Retur_Beli_Non_Medis`),
  KEY `Kontra_Retur_Beli_Non_Medis` (`Kontra_Retur_Beli_Non_Medis`),
  KEY `Retur_Jual_Toko` (`Retur_Jual_Toko`),
  KEY `Kontra_Retur_Jual_Toko` (`Kontra_Retur_Jual_Toko`),
  KEY `Retur_Piutang_Toko` (`Retur_Piutang_Toko`),
  KEY `Kontra_Retur_Piutang_Toko` (`Kontra_Retur_Piutang_Toko`),
  KEY `Kerugian_Klaim_BPJS` (`Kerugian_Klaim_BPJS_RVP`),
  KEY `Lebih_Bayar_Klaim_BPJS` (`Lebih_Bayar_Klaim_BPJS_RVP`),
  KEY `Piutang_BPJS_RVP` (`Piutang_BPJS_RVP`),
  KEY `Kontra_Penerimaan_AsetInventaris` (`Kontra_Penerimaan_AsetInventaris`),
  KEY `Kontra_Hibah_Aset` (`Kontra_Hibah_Aset`),
  KEY `Hibah_Non_Medis` (`Hibah_Non_Medis`),
  KEY `Kontra_Hibah_Non_Medis` (`Kontra_Hibah_Non_Medis`),
  KEY `Bayar_JM_Dokter` (`Bayar_JM_Dokter`),
  KEY `PPN_Masukan_Obat` (`PPN_Masukan`),
  CONSTRAINT `set_akun_ibfk_1` FOREIGN KEY (`Pengadaan_Obat`) REFERENCES `rekening` (`kd_rek`) ON UPDATE CASCADE,
  CONSTRAINT `set_akun_ibfk_10` FOREIGN KEY (`Retur_Dari_pembeli`) REFERENCES `rekening` (`kd_rek`) ON UPDATE CASCADE,
  CONSTRAINT `set_akun_ibfk_11` FOREIGN KEY (`Kontra_Retur_Dari_Pembeli`) REFERENCES `rekening` (`kd_rek`) ON UPDATE CASCADE,
  CONSTRAINT `set_akun_ibfk_12` FOREIGN KEY (`Retur_Piutang_Obat`) REFERENCES `rekening` (`kd_rek`) ON UPDATE CASCADE,
  CONSTRAINT `set_akun_ibfk_13` FOREIGN KEY (`Kontra_Retur_Piutang_Obat`) REFERENCES `rekening` (`kd_rek`) ON UPDATE CASCADE,
  CONSTRAINT `set_akun_ibfk_14` FOREIGN KEY (`Pengadaan_Ipsrs`) REFERENCES `rekening` (`kd_rek`) ON UPDATE CASCADE,
  CONSTRAINT `set_akun_ibfk_15` FOREIGN KEY (`Stok_Keluar_Ipsrs`) REFERENCES `rekening` (`kd_rek`) ON UPDATE CASCADE,
  CONSTRAINT `set_akun_ibfk_16` FOREIGN KEY (`Kontra_Stok_Keluar_Ipsrs`) REFERENCES `rekening` (`kd_rek`) ON UPDATE CASCADE,
  CONSTRAINT `set_akun_ibfk_17` FOREIGN KEY (`Bayar_Piutang_Pasien`) REFERENCES `rekening` (`kd_rek`) ON UPDATE CASCADE,
  CONSTRAINT `set_akun_ibfk_18` FOREIGN KEY (`Pengambilan_Utd`) REFERENCES `rekening` (`kd_rek`) ON UPDATE CASCADE,
  CONSTRAINT `set_akun_ibfk_19` FOREIGN KEY (`Kontra_Pengambilan_Utd`) REFERENCES `rekening` (`kd_rek`) ON UPDATE CASCADE,
  CONSTRAINT `set_akun_ibfk_2` FOREIGN KEY (`Pemesanan_Obat`) REFERENCES `rekening` (`kd_rek`) ON UPDATE CASCADE,
  CONSTRAINT `set_akun_ibfk_20` FOREIGN KEY (`Pengambilan_Penunjang_Utd`) REFERENCES `rekening` (`kd_rek`) ON UPDATE CASCADE,
  CONSTRAINT `set_akun_ibfk_21` FOREIGN KEY (`Kontra_Pengambilan_Penunjang_Utd`) REFERENCES `rekening` (`kd_rek`) ON UPDATE CASCADE,
  CONSTRAINT `set_akun_ibfk_22` FOREIGN KEY (`Penyerahan_Darah`) REFERENCES `rekening` (`kd_rek`) ON UPDATE CASCADE,
  CONSTRAINT `set_akun_ibfk_23` FOREIGN KEY (`Stok_Keluar_Medis`) REFERENCES `rekening` (`kd_rek`) ON UPDATE CASCADE,
  CONSTRAINT `set_akun_ibfk_24` FOREIGN KEY (`Kontra_Stok_Keluar_Medis`) REFERENCES `rekening` (`kd_rek`) ON UPDATE CASCADE,
  CONSTRAINT `set_akun_ibfk_25` FOREIGN KEY (`HPP_Obat_Jual_Bebas`) REFERENCES `rekening` (`kd_rek`) ON UPDATE CASCADE,
  CONSTRAINT `set_akun_ibfk_26` FOREIGN KEY (`Persediaan_Obat_Jual_Bebas`) REFERENCES `rekening` (`kd_rek`) ON UPDATE CASCADE,
  CONSTRAINT `set_akun_ibfk_27` FOREIGN KEY (`Penerimaan_NonMedis`) REFERENCES `rekening` (`kd_rek`) ON UPDATE CASCADE,
  CONSTRAINT `set_akun_ibfk_28` FOREIGN KEY (`Kontra_Penerimaan_NonMedis`) REFERENCES `rekening` (`kd_rek`) ON UPDATE CASCADE,
  CONSTRAINT `set_akun_ibfk_29` FOREIGN KEY (`Bayar_Pemesanan_Non_Medis`) REFERENCES `rekening` (`kd_rek`) ON UPDATE CASCADE,
  CONSTRAINT `set_akun_ibfk_3` FOREIGN KEY (`Kontra_Pemesanan_Obat`) REFERENCES `rekening` (`kd_rek`) ON UPDATE CASCADE,
  CONSTRAINT `set_akun_ibfk_30` FOREIGN KEY (`Hibah_Obat`) REFERENCES `rekening` (`kd_rek`) ON UPDATE CASCADE,
  CONSTRAINT `set_akun_ibfk_31` FOREIGN KEY (`Kontra_Hibah_Obat`) REFERENCES `rekening` (`kd_rek`) ON UPDATE CASCADE,
  CONSTRAINT `set_akun_ibfk_32` FOREIGN KEY (`Penerimaan_Toko`) REFERENCES `rekening` (`kd_rek`) ON UPDATE CASCADE,
  CONSTRAINT `set_akun_ibfk_33` FOREIGN KEY (`Kontra_Penerimaan_Toko`) REFERENCES `rekening` (`kd_rek`) ON UPDATE CASCADE,
  CONSTRAINT `set_akun_ibfk_34` FOREIGN KEY (`Pengadaan_Toko`) REFERENCES `rekening` (`kd_rek`) ON UPDATE CASCADE,
  CONSTRAINT `set_akun_ibfk_35` FOREIGN KEY (`Bayar_Pemesanan_Toko`) REFERENCES `rekening` (`kd_rek`) ON UPDATE CASCADE,
  CONSTRAINT `set_akun_ibfk_36` FOREIGN KEY (`Penjualan_Toko`) REFERENCES `rekening` (`kd_rek`) ON UPDATE CASCADE,
  CONSTRAINT `set_akun_ibfk_37` FOREIGN KEY (`HPP_Barang_Toko`) REFERENCES `rekening` (`kd_rek`) ON UPDATE CASCADE,
  CONSTRAINT `set_akun_ibfk_38` FOREIGN KEY (`Persediaan_Barang_Toko`) REFERENCES `rekening` (`kd_rek`) ON UPDATE CASCADE,
  CONSTRAINT `set_akun_ibfk_39` FOREIGN KEY (`Piutang_Toko`) REFERENCES `rekening` (`kd_rek`) ON UPDATE CASCADE,
  CONSTRAINT `set_akun_ibfk_4` FOREIGN KEY (`Bayar_Pemesanan_Obat`) REFERENCES `rekening` (`kd_rek`) ON UPDATE CASCADE,
  CONSTRAINT `set_akun_ibfk_40` FOREIGN KEY (`Kontra_Piutang_Toko`) REFERENCES `rekening` (`kd_rek`) ON UPDATE CASCADE,
  CONSTRAINT `set_akun_ibfk_41` FOREIGN KEY (`Retur_Beli_Toko`) REFERENCES `rekening` (`kd_rek`) ON UPDATE CASCADE,
  CONSTRAINT `set_akun_ibfk_42` FOREIGN KEY (`Kontra_Retur_Beli_Toko`) REFERENCES `rekening` (`kd_rek`) ON UPDATE CASCADE,
  CONSTRAINT `set_akun_ibfk_43` FOREIGN KEY (`Retur_Beli_Non_Medis`) REFERENCES `rekening` (`kd_rek`) ON UPDATE CASCADE,
  CONSTRAINT `set_akun_ibfk_44` FOREIGN KEY (`Kontra_Retur_Beli_Non_Medis`) REFERENCES `rekening` (`kd_rek`) ON UPDATE CASCADE,
  CONSTRAINT `set_akun_ibfk_45` FOREIGN KEY (`Retur_Jual_Toko`) REFERENCES `rekening` (`kd_rek`) ON UPDATE CASCADE,
  CONSTRAINT `set_akun_ibfk_46` FOREIGN KEY (`Kontra_Retur_Jual_Toko`) REFERENCES `rekening` (`kd_rek`) ON UPDATE CASCADE,
  CONSTRAINT `set_akun_ibfk_47` FOREIGN KEY (`Retur_Piutang_Toko`) REFERENCES `rekening` (`kd_rek`) ON UPDATE CASCADE,
  CONSTRAINT `set_akun_ibfk_48` FOREIGN KEY (`Kontra_Retur_Piutang_Toko`) REFERENCES `rekening` (`kd_rek`) ON UPDATE CASCADE,
  CONSTRAINT `set_akun_ibfk_49` FOREIGN KEY (`Kerugian_Klaim_BPJS_RVP`) REFERENCES `rekening` (`kd_rek`) ON UPDATE CASCADE,
  CONSTRAINT `set_akun_ibfk_5` FOREIGN KEY (`Penjualan_Obat`) REFERENCES `rekening` (`kd_rek`) ON UPDATE CASCADE,
  CONSTRAINT `set_akun_ibfk_50` FOREIGN KEY (`Lebih_Bayar_Klaim_BPJS_RVP`) REFERENCES `rekening` (`kd_rek`) ON UPDATE CASCADE,
  CONSTRAINT `set_akun_ibfk_51` FOREIGN KEY (`Piutang_BPJS_RVP`) REFERENCES `rekening` (`kd_rek`) ON UPDATE CASCADE,
  CONSTRAINT `set_akun_ibfk_52` FOREIGN KEY (`Kontra_Penerimaan_AsetInventaris`) REFERENCES `rekening` (`kd_rek`) ON UPDATE CASCADE,
  CONSTRAINT `set_akun_ibfk_53` FOREIGN KEY (`Kontra_Hibah_Aset`) REFERENCES `rekening` (`kd_rek`) ON UPDATE CASCADE,
  CONSTRAINT `set_akun_ibfk_54` FOREIGN KEY (`Hibah_Non_Medis`) REFERENCES `rekening` (`kd_rek`) ON UPDATE CASCADE,
  CONSTRAINT `set_akun_ibfk_55` FOREIGN KEY (`Kontra_Hibah_Non_Medis`) REFERENCES `rekening` (`kd_rek`) ON UPDATE CASCADE,
  CONSTRAINT `set_akun_ibfk_56` FOREIGN KEY (`Bayar_JM_Dokter`) REFERENCES `rekening` (`kd_rek`) ON UPDATE CASCADE,
  CONSTRAINT `set_akun_ibfk_57` FOREIGN KEY (`PPN_Masukan`) REFERENCES `rekening` (`kd_rek`) ON UPDATE CASCADE,
  CONSTRAINT `set_akun_ibfk_6` FOREIGN KEY (`Piutang_Obat`) REFERENCES `rekening` (`kd_rek`) ON UPDATE CASCADE,
  CONSTRAINT `set_akun_ibfk_7` FOREIGN KEY (`Kontra_Piutang_Obat`) REFERENCES `rekening` (`kd_rek`) ON UPDATE CASCADE,
  CONSTRAINT `set_akun_ibfk_8` FOREIGN KEY (`Retur_Ke_Suplayer`) REFERENCES `rekening` (`kd_rek`) ON UPDATE CASCADE,
  CONSTRAINT `set_akun_ibfk_9` FOREIGN KEY (`Kontra_Retur_Ke_Suplayer`) REFERENCES `rekening` (`kd_rek`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- Dumping structure for table sik_ori.set_akun_bankjabar
CREATE TABLE IF NOT EXISTS `set_akun_bankjabar` (
  `kd_rek` varchar(15) NOT NULL,
  `kode_bank` varchar(3) DEFAULT NULL,
  KEY `kd_rek` (`kd_rek`),
  CONSTRAINT `set_akun_bankjabar_ibfk_1` FOREIGN KEY (`kd_rek`) REFERENCES `rekening` (`kd_rek`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- Dumping structure for table sik_ori.set_akun_bankpapua
CREATE TABLE IF NOT EXISTS `set_akun_bankpapua` (
  `kd_rek` varchar(15) NOT NULL,
  `usere` varchar(700) DEFAULT NULL,
  `passworde` varchar(700) DEFAULT NULL,
  PRIMARY KEY (`kd_rek`),
  UNIQUE KEY `usere` (`usere`,`passworde`),
  CONSTRAINT `set_akun_bankpapua_ibfk_1` FOREIGN KEY (`kd_rek`) REFERENCES `rekening` (`kd_rek`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- tambah kolom ppn
-- Dumping structure for table sik_ori.set_harga_obat
CREATE TABLE IF NOT EXISTS `set_harga_obat` (
  `setharga` enum('Umum','Per Jenis','Per Barang') NOT NULL,
  `hargadasar` enum('Harga Beli','Harga Diskon') NOT NULL,
  `ppn` enum('Yes','No') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- kolom tanggal -> datetime
-- Dumping structure for table sik_ori.skdp_bpjs
CREATE TABLE IF NOT EXISTS `skdp_bpjs` (
  `tahun` year(4) NOT NULL,
  `no_rkm_medis` varchar(15) DEFAULT NULL,
  `diagnosa` varchar(50) NOT NULL,
  `terapi` varchar(50) NOT NULL,
  `alasan1` varchar(50) DEFAULT NULL,
  `alasan2` varchar(50) DEFAULT NULL,
  `rtl1` varchar(50) DEFAULT NULL,
  `rtl2` varchar(50) DEFAULT NULL,
  `tanggal_datang` datetime DEFAULT NULL,
  `tanggal_rujukan` datetime NOT NULL,
  `no_antrian` varchar(6) NOT NULL,
  `kd_dokter` varchar(20) DEFAULT NULL,
  `status` enum('Menunggu','Sudah Periksa','Batal Periksa') NOT NULL,
  PRIMARY KEY (`tahun`,`no_antrian`),
  KEY `no_rkm_medis` (`no_rkm_medis`),
  KEY `kd_dokter` (`kd_dokter`),
  CONSTRAINT `skdp_bpjs_ibfk_1` FOREIGN KEY (`no_rkm_medis`) REFERENCES `pasien` (`no_rkm_medis`) ON UPDATE CASCADE,
  CONSTRAINT `skdp_bpjs_ibfk_2` FOREIGN KEY (`kd_dokter`) REFERENCES `dokter` (`kd_dokter`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- Dumping structure for table sik_ori.skrining_nutrisi_anak
CREATE TABLE IF NOT EXISTS `skrining_nutrisi_anak` (
  `no_rawat` varchar(17) NOT NULL,
  `tanggal` datetime NOT NULL,
  `td` varchar(8) NOT NULL DEFAULT '',
  `hr` varchar(5) NOT NULL DEFAULT '',
  `rr` varchar(5) NOT NULL,
  `suhu` varchar(5) NOT NULL DEFAULT '',
  `bb` varchar(5) NOT NULL DEFAULT '',
  `tbpb` varchar(5) NOT NULL DEFAULT '',
  `spo2` varchar(5) NOT NULL DEFAULT '',
  `alergi` varchar(100) NOT NULL DEFAULT '',
  `sg1` enum('Tidak','Ya') NOT NULL,
  `nilai1` enum('0','1') NOT NULL,
  `sg2` enum('Tidak','Ya') NOT NULL,
  `nilai2` enum('0','1') NOT NULL,
  `sg3` enum('Tidak','Ya') NOT NULL,
  `nilai3` enum('0','1') NOT NULL,
  `sg4` enum('Tidak','Ya') NOT NULL,
  `nilai4` enum('0','1') NOT NULL,
  `total_hasil` tinyint(4) NOT NULL,
  `skor_nutrisi` enum('Risikio Berat','Risiko Sedang','Risiko Rendah') DEFAULT NULL,
  `diketahui_dietisien` enum('Tidak','Ya') NOT NULL,
  `keterangan_diketahui_dietisien` varchar(10) NOT NULL,
  `nip` varchar(20) NOT NULL,
  PRIMARY KEY (`no_rawat`),
  KEY `nip` (`nip`),
  CONSTRAINT `skrining_nutrisi_anak_ibfk_1` FOREIGN KEY (`no_rawat`) REFERENCES `reg_periksa` (`no_rawat`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `skrining_nutrisi_anak_ibfk_2` FOREIGN KEY (`nip`) REFERENCES `petugas` (`nip`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- Dumping structure for table sik_ori.skrining_nutrisi_dewasa
CREATE TABLE IF NOT EXISTS `skrining_nutrisi_dewasa` (
  `no_rawat` varchar(17) NOT NULL,
  `tanggal` datetime NOT NULL,
  `td` varchar(8) NOT NULL DEFAULT '',
  `hr` varchar(5) NOT NULL DEFAULT '',
  `rr` varchar(5) NOT NULL,
  `suhu` varchar(5) NOT NULL DEFAULT '',
  `bb` varchar(5) NOT NULL DEFAULT '',
  `tbpb` varchar(5) NOT NULL DEFAULT '',
  `spo2` varchar(5) NOT NULL DEFAULT '',
  `alergi` varchar(100) NOT NULL DEFAULT '',
  `sg1` enum('Tidak','Tidak Yakin','Ya, 1-5 Kg','Ya, 6-10 Kg','Ya, 11-15 Kg','Ya, >15 Kg') NOT NULL,
  `nilai1` enum('0','1','2','3','4') NOT NULL,
  `sg2` enum('Ya','Tidak') NOT NULL,
  `nilai2` enum('0','1') NOT NULL,
  `total_hasil` tinyint(4) NOT NULL,
  `nip` varchar(20) NOT NULL,
  PRIMARY KEY (`no_rawat`),
  KEY `nip` (`nip`),
  CONSTRAINT `skrining_nutrisi_dewasa_ibfk_1` FOREIGN KEY (`no_rawat`) REFERENCES `reg_periksa` (`no_rawat`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `skrining_nutrisi_dewasa_ibfk_2` FOREIGN KEY (`nip`) REFERENCES `petugas` (`nip`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table sik_ori.skrining_nutrisi_lansia
CREATE TABLE IF NOT EXISTS `skrining_nutrisi_lansia` (
  `no_rawat` varchar(17) NOT NULL,
  `tanggal` datetime NOT NULL,
  `td` varchar(8) NOT NULL DEFAULT '',
  `hr` varchar(5) NOT NULL DEFAULT '',
  `rr` varchar(5) NOT NULL,
  `suhu` varchar(5) NOT NULL DEFAULT '',
  `bb` varchar(5) NOT NULL DEFAULT '',
  `tbpb` varchar(5) NOT NULL DEFAULT '',
  `spo2` varchar(5) NOT NULL DEFAULT '',
  `alergi` varchar(100) NOT NULL DEFAULT '',
  `sg1` enum('Asupan Makan Sangat Berkurang','Asupan Makan Agak Berkurang','Asupan Makan Tidak Berkurang') NOT NULL,
  `nilai1` enum('0','1','2') NOT NULL,
  `sg2` enum('Penurunan Berat Badan Lebih Dari 3 Kg','Tidak Tahu','Penurunan Berat Badan Antara 1 Hingga 3 Kg','Tidak Ada Penurunan Berat Badan') NOT NULL,
  `nilai2` enum('0','1','2','3') NOT NULL,
  `sg3` enum('Terbatas Dari Tempat Tidur Atau Kursi','Mampu Bangun Dari Tempat Tidur/Kursi Tetapi Tidak Bepergian Keluar Rumah','Dapat Bepergian Keluar Rumah') NOT NULL,
  `nilai3` enum('0','1','2') NOT NULL,
  `sg4` enum('Ya','Tidak') NOT NULL,
  `nilai4` enum('0','1') NOT NULL,
  `sg5` enum('Depresi Berat Atau Kepikunan Berat','Kepikunan Ringan','Tidak Ada Gangguan Psikologis') NOT NULL,
  `nilai5` enum('0','1','2') NOT NULL,
  `sg6` enum('IMT < 19','19 Hingga < 21','21 Hingga < 23','IMT >= 23','Lingkar Betis < 31','Lingkar Betis >= 31') NOT NULL,
  `nilai6` enum('0','1','2','3') NOT NULL,
  `total_hasil` tinyint(4) NOT NULL,
  `skor_nutrisi` enum('Status Gizi Normal','Beresiko Malnutrisi','Malnutrisi') DEFAULT NULL,
  `nip` varchar(20) NOT NULL,
  PRIMARY KEY (`no_rawat`),
  KEY `nip` (`nip`),
  CONSTRAINT `skrining_nutrisi_lansia_ibfk_1` FOREIGN KEY (`no_rawat`) REFERENCES `reg_periksa` (`no_rawat`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `skrining_nutrisi_lansia_ibfk_2` FOREIGN KEY (`nip`) REFERENCES `petugas` (`nip`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.


-- Dumping structure for table sik_ori.stok_obat_pasien
CREATE TABLE IF NOT EXISTS `stok_obat_pasien` (
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `no_rawat` varchar(17) NOT NULL,
  `kode_brng` varchar(15) NOT NULL,
  `jumlah` double NOT NULL,
  `kd_bangsal` char(5) NOT NULL,
  `no_batch` varchar(20) NOT NULL,
  `no_faktur` varchar(20) NOT NULL,
  `aturan_pakai` varchar(150) NOT NULL,
  `jam00` enum('true','false') NOT NULL,
  `jam01` enum('true','false') NOT NULL,
  `jam02` enum('true','false') NOT NULL,
  `jam03` enum('true','false') NOT NULL,
  `jam04` enum('true','false') NOT NULL,
  `jam05` enum('true','false') NOT NULL,
  `jam06` enum('true','false') NOT NULL,
  `jam07` enum('true','false') NOT NULL,
  `jam08` enum('true','false') NOT NULL,
  `jam09` enum('true','false') NOT NULL,
  `jam10` enum('true','false') NOT NULL,
  `jam11` enum('true','false') NOT NULL,
  `jam12` enum('true','false') NOT NULL,
  `jam13` enum('true','false') NOT NULL,
  `jam14` enum('true','false') NOT NULL,
  `jam15` enum('true','false') NOT NULL,
  `jam16` enum('true','false') NOT NULL,
  `jam17` enum('true','false') NOT NULL,
  `jam18` enum('true','false') NOT NULL,
  `jam19` enum('true','false') NOT NULL,
  `jam20` enum('true','false') NOT NULL,
  `jam21` enum('true','false') NOT NULL,
  `jam22` enum('true','false') NOT NULL,
  `jam23` enum('true','false') NOT NULL,
  PRIMARY KEY (`tanggal`,`jam`,`no_rawat`,`kode_brng`,`no_batch`,`no_faktur`),
  KEY `no_rawat` (`no_rawat`),
  KEY `kode_brng` (`kode_brng`),
  KEY `kd_bangsal` (`kd_bangsal`),
  CONSTRAINT `stok_obat_pasien_ibfk_2` FOREIGN KEY (`kode_brng`) REFERENCES `databarang` (`kode_brng`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `stok_obat_pasien_ibfk_3` FOREIGN KEY (`kd_bangsal`) REFERENCES `bangsal` (`kd_bangsal`) ON UPDATE CASCADE,
  CONSTRAINT `stok_obat_pasien_ibfk_4` FOREIGN KEY (`no_rawat`) REFERENCES `reg_periksa` (`no_rawat`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


