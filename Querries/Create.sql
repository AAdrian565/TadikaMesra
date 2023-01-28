CREATE TABLE Guru(
    ID_Guru CHAR(4) PRIMARY KEY NOT NULL,
    Nama_Guru VARCHAR(30),
    Alamat VARCHAR(50),
    No_HP CHAR(14),
    Jenis_Kelamin CHAR(10)
);

CREATE TABLE Kelas (
    ID_Kelas CHAR(4) PRIMARY KEY NOT NULL,
    Nama_Kelas VARCHAR(20),
    ID_Guru CHAR(4), FOREIGN KEY(ID_Guru) REFERENCES Guru(ID_Guru)    
);

CREATE TABLE Siswa(
    ID_Siswa CHAR(10) PRIMARY KEY NOT NULL,
    ID_Kelas CHAR(4), FOREIGN KEY (ID_Kelas) REFERENCES Kelas(ID_Kelas),
    Nama_Siswa VARCHAR(20),
    Jenis_Kelamin VARCHAR(10),
    Nama_Ortu VARCHAR(30),
    Alamat VARCHAR(50),
    No_HP_Orangtua CHAR(14)
);

CREATE TABLE Mapel(
    ID_Mapel CHAR(4) PRIMARY KEY NOT NULL,
    Nama_Mapel VARCHAR(20),
    ID_Kategori CHAR(4)
);

CREATE TABLE KelasMapel (
    ID_Kelas CHAR(4), FOREIGN KEY (ID_Kelas) REFERENCES Kelas(ID_Kelas),
    ID_Mapel CHAR(4), FOREIGN KEY (ID_Mapel) REFERENCES Mapel(ID_Mapel),
    ID_Guru CHAR(4), FOREIGN KEY(ID_Guru) REFERENCES Guru(ID_Guru)    
);

CREATE TABLE Foto(
    ID_Foto CHAR(10) PRIMARY KEY NOT NULL,
    Nama_Foto Char(20),
    image BLOB NOT NULL
);

CREATE TABLE Absensi (
    ID_Absensi INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    ID_Siswa CHAR(10) NOT NULL, FOREIGN KEY (ID_Siswa) REFERENCES Siswa(ID_Siswa),
    ID_Kelas CHAR(4) NOT NULL, FOREIGN KEY (ID_Kelas) REFERENCES Kelas(ID_Kelas),
    ID_Mapel CHAR(4) NOT NULL, FOREIGN KEY (ID_Mapel) REFERENCES Mapel(ID_Mapel),
    Tanggal DATE NOT NULL,
    Keterangan ENUM('Hadir', 'Tidak Hadir', 'Izin', 'Sakit') NOT NULL,
    UNIQUE (ID_Siswa, ID_Mapel, Tanggal)
);

CREATE TABLE Makanan(
    ID_Makanan CHAR(10) PRIMARY KEY NOT NULL,
    Nama_Makanan CHAR(20)
);

CREATE TABLE Transaksi(
    ID_Transaksi CHAR(10) PRIMARY KEY NOT NULL,
    Date DATE NOT NULL,
    ID_Kelas CHAR(4) NOT NULL, FOREIGN KEY (ID_Kelas) REFERENCES Kelas(ID_Kelas),
    ID_Foto CHAR(10), FOREIGN KEY (ID_Foto) REFERENCES Foto (ID_Foto),
    ID_Makanan CHAR(10), FOREIGN KEY (ID_Makanan) REFERENCES Makanan (ID_Makanan),
    Deskripsi_Transaksi VARCHAR (200),
    Catatan_Guru VARCHAR (200)
);

INSERT INTO Guru (ID_Guru, Nama_Guru, Alamat, No_HP, Jenis_Kelamin) 
VALUES  ('G001', 'John Smith', 'Jl. Merdeka No. 12', '089268398416', 'Laki-laki'),
        ('G002', 'Jane Doe', 'Jl. Jenderal Sudirman No. 25', '082791368151', 'Perempuan'),
        ('G003', 'Michael Johnson', 'Jl. Ahmad Yani No. 37', '086433204469', 'Laki-laki'),
        ('G004', 'Emily Brown', 'Jl. Perintis Kemerdekaan No. 49', '083266915996', 'Perempuan'),
        ('G005', 'Joshua Davis', 'Jl. Pahlawan Revolusi No. 61', '082359241802', 'Laki-laki'),
        ('G006', 'Ashley Miller', 'Jl. Cendrawasih No. 73', '084144521780', 'Perempuan'),
        ('G007', 'Matthew Wilson', 'Jl. Kesejahteraan No. 85', '082948016371', 'Laki-laki'),
        ('G008', 'Olivia Moore', 'Jl. Persatuan No. 97', '087609653648', 'Perempuan'),
        ('G009', 'Jacob Taylor', 'Jl. Kesatuan No. 109', '088853553514', 'Laki-laki'),
        ('G010', 'Isabella Anderson', 'Jl. Persahabatan No. 121', '081015818721', 'Perempuan'),
        ('G011', 'Sudirman Sastra', 'Jl. Kebangsaan No. 133', '085482508883', 'Laki-laki'),
        ('G012', 'Tuti Wulan', 'Jl. Pembangunan No. 145', '088791968123', 'Perempuan'),
        ('G013', 'Agus Gunawan', 'Jl. Kemerdekaan No. 157', '089773101060', 'Laki-laki'),
        ('G014', 'Rina Purnama', 'Jl. Kenangan No. 169', '087674367915', 'Perempuan'),
        ('G015', 'Budi Hartono', 'Jl. Sejahtera No. 181', '086889497832', 'Laki-laki'),
        ('G016', 'Diana Sari', 'Jl. Bangsa No. 193', '082766873980', 'Perempuan'),
        ('G017', 'Eko Prasetyo', 'Jl. Negara No. 205', '085374697941', 'Laki-laki'),
        ('G018', 'Fajar Wahyudi', 'Jl. Warga No. 217', '086297215828', 'Laki-laki'),
        ('G019', 'Gusti Ayu', 'Jl. Sosial No. 229', '087233892666', 'Perempuan'),
        ('G020', 'Hendra Setiawan', 'Jl. Pendidikan No. 241', '084521129271', 'Laki-laki');

INSERT INTO Kelas (ID_Kelas, Nama_Kelas, ID_Guru) 
VALUES  ('K001', '1A', 'G001'),
        ('K002', '1B', 'G002'),
        ('K003', '2A', 'G003'),
        ('K004', '2B', 'G004'),
        ('K005', '3A', 'G005'),
        ('K006', '3B', 'G006'),
        ('K007', '4A', 'G007'),
        ('K008', '4B', 'G008'),
        ('K009', '5A', 'G009'),
        ('K010', '5B', 'G010');

INSERT INTO Siswa (ID_Siswa, ID_Kelas, Nama_Siswa, Jenis_Kelamin, Nama_Ortu, Alamat, No_HP_Orangtua) 
VALUES ('S001', 'K001', 'Aditya', 'Laki-laki', 'Arifin', 'Jl. Merdeka No. 12', '087230495618'),
       ('S002', 'K001', 'Ahmad', 'Perempuan', 'Budiman', 'Jl. Sudirman No. 45', '084963281075'),
       ('S003', 'K001', 'Aji', 'Laki-laki', 'Djoko', 'Jl. Diponegoro No. 78', '082648579034'),
       ('S004', 'K001', 'Andika', 'Perempuan', 'Edi', 'Jl. Gatot Subroto No. 90', '085930681472'),
       ('S005', 'K001', 'Ari', 'Laki-laki', 'Frans', 'Jl. Jenderal Sudirman No. 23', '084712503698'),
       ('S006', 'K001', 'Arif', 'Perempuan', 'Gunawan', 'Jl. Jenderal Ahmad Yani No. 56', '083590642871'),
       ('S007', 'K001', 'Aris', 'Laki-laki', 'Heryanto', 'Jl. Pahlawan Revolusi No. 89', '086578234019'),
       ('S008', 'K001', 'Arman', 'Perempuan', 'Ismail', 'Jl. Ahmad Dahlan No. 12', '086429583071'),
       ('S009', 'K001', 'Aulia', 'Laki-laki', 'Joko', 'Jl. HOS Cokroaminoto No. 45', '085793124068'),
       ('S010', 'K001', 'Bambang', 'Perempuan', 'Kurniawan', 'Jl. Kapten Pattimura No. 78', '082975346081'),
       ('S011', 'K002', 'Dika', 'Laki-laki', 'Lestari', 'Jl. Letjen S. Parman No. 90', '086049275831'),
       ('S012', 'K002', 'Dini', 'Perempuan', 'Mulyadi', 'Jl. Raden Inten No. 23', '084736985210'),
       ('S013', 'K002', 'Dewi', 'Laki-laki', 'Nurdin', 'Jl. Sultan Agung No. 56', '083510296748'),
       ('S014', 'K002', 'Eka', 'Perempuan', 'Oetomo', 'Jl. Sultan Hasanuddin No. 89', '081240731349'),
       ('S015', 'K002', 'Fadli', 'Laki-laki', 'Purnomo', 'Jl. Taman Siswa No. 12', '089720153468'),
       ('S016', 'K002', 'Fajar', 'Perempuan', 'Qodir', 'Jl. Jenderal Sudirman No. 45', '086489282761'),
       ('S017', 'K002', 'Farhan', 'Laki-laki', 'Rachmat', 'Jl. Jenderal Soedirman No. 78', '085327400836'),
       ('S018', 'K002', 'Farid', 'Perempuan', 'Suyadi', 'Jl. Brigjen Katamso No. 90', '0842153453827'),
       ('S019', 'K002', 'Firmansyah', 'Laki-laki', 'Tjahjono', 'Jl. Dr. Wahidin Sudirohusodo No. 23', '083094789713'),
       ('S020', 'K002', 'Galuh', 'Perempuan', 'Umar', 'Jl. Jenderal Besar Gatot Subroto No. 56', '081963028471'),
       ('S021', 'K003', 'Heri', 'Laki-laki', 'Vebrianto', 'Jl. Ahmad Yani No. 89', '086930284715'),
       ('S022', 'K003', 'Ihsan', 'Perempuan', 'Wiranto', 'Jl. Pahlawan Revolusi No. 12', '085701483972'),
       ('S023', 'K003', 'Ilham', 'Laki-laki', 'Xaverius', 'Jl. Jenderal Sudirman No. 45', '084620593827'),
       ('S024', 'K003', 'Indah', 'Perempuan', 'Yoga', 'Jl. Jenderal Ahmad Yani No. 78', '083450296784'),
       ('S025', 'K003', 'Irfan', 'Laki-laki', 'Zulfikar', 'Jl. Pahlawan Revolusi No. 90', '082390485712'),
       ('S026', 'K003', 'Ismail', 'Perempuan', 'Ade', 'Jl. Ahmad Dahlan No. 23', '081230874968'),
       ('S027', 'K003', 'Jamal', 'Laki-laki', 'Bambang', 'Jl. HOS Cokroaminoto No. 56', '080138472956'),
       ('S028', 'K003', 'Joko', 'Perempuan', 'Cokro', 'Jl. Kapten Pattimura No. 89', '089020582947'),
       ('S029', 'K003', 'Kurniawan', 'Laki-laki', 'Dewi', 'Jl. Letjen S. Parman No. 12', '087840295837'),
       ('S030', 'K003', 'Lestari', 'Perempuan', 'Edy', 'Jl. Raden Inten No. 45', '086690284716'),
       ('S031', 'K004', 'Luthfi', 'Laki-laki', 'Fauzi', 'Jl. Sultan Agung No. 78', '085540273895'),
       ('S032', 'K004', 'Miftah', 'Perempuan', 'Gede', 'Jl. Sultan Hasanuddin No. 90', '084490284716'),
       ('S033', 'K004', 'Mukti', 'Laki-laki', 'Hari', 'Jl. Taman Siswa No. 23', '083340295837'),
       ('S034', 'K004', 'Nadia', 'Perempuan', 'Iskandar', 'Jl. Jenderal Sudirman No. 56', '082290284716'),
       ('S035', 'K004', 'Nanda', 'Laki-laki', 'Jaka', 'Jl. Jenderal Soedirman No. 89', '081140295837'),
       ('S036', 'K004', 'Nandang', 'Perempuan', 'Kurnia', 'Jl. Brigjen Katamso No. 12', '084732056538'),
       ('S037', 'K004', 'Nova', 'Laki-laki', 'Laksana', 'Jl. Dr. Wahidin Sudirohusodo No. 45', '088940295837'),
       ('S038', 'K004', 'Nugroho', 'Laki-laki', 'Mardiyanto', 'Jl. Jenderal Besar Gatot Subroto No. 78', '087802847162'),
       ('S039', 'K004', 'Okta', 'Laki-laki', 'Nugroho', 'Jl. Ahmad Yani No. 90', '086664029583'),
       ('S040', 'K004', 'Pandu', 'Laki-laki', 'Octavianus', 'Jl. Pahlawan Revolusi No. 23', '085525028471'),
       ('S041', 'K005', 'Prasetya', 'Laki-laki', 'Priyo', 'Jl. Jenderal Sudirman No. 56', '084380284716'),
       ('S042', 'K005', 'Pratama', 'Perempuan', 'Rian', 'Jl. Jenderal Ahmad Yani No. 89', '083250295837'),
       ('S043', 'K005', 'Putra', 'Laki-laki', 'Suranto', 'Jl. Pahlawan Revolusi No. 12', '082120284716'),
       ('S044', 'K005', 'Rama', 'Perempuan', 'Tulus', 'Jl. Ahmad Dahlan No. 45', '081030295837'),
       ('S045', 'K005', 'Rizki', 'Laki-laki', 'Udin', 'Jl. HOS Cokroaminoto No. 78', '080040284716'),
       ('S046', 'K005', 'Rony', 'Perempuan', 'Vio', 'Jl. Kapten Pattimura No. 90', '088940295837'),
       ('S047', 'K005', 'Rizal', 'Laki-laki', 'Widodo', 'Jl. Merdeka No. 34', '087890284716'),
       ('S048', 'K005', 'Sabar', 'Laki-laki', 'Yulianto', 'Jl. Sudirman No. 67', '086840295837'),
       ('S049', 'K005', 'Sari', 'Laki-laki', 'Zainal', 'Jl. Diponegoro No. 9', '086090284716'),
       ('S050', 'K005', 'Satria', 'Laki-laki', 'Arief', 'Jl. Gatot Subroto No. 11', '089721534345'),
       ('S051', 'K006', 'Setya', 'Laki-laki', 'Bambang', 'Jl. Jenderal Sudirman No. 45', '084090284716'),
       ('S052', 'K006', 'Shandy', 'Perempuan', 'Cepi', 'Jl. Jenderal Ahmad Yani No. 78', '083040295837'),
       ('S053', 'K006', 'Slamet', 'Laki-laki', 'Dedy', 'Jl. Pahlawan Revolusi No. 101', '082090284716'),
       ('S054', 'K006', 'Sugeng', 'Perempuan', 'Erwin', 'Jl. Ahmad Dahlan No. 124', '081040295837'),
       ('S055', 'K006', 'Sulaiman', 'Laki-laki', 'Feri', 'Jl. HOS Cokroaminoto No. 147', '083520674821'),
       ('S056', 'K006', 'Sumardi', 'Perempuan', 'Gito', 'Jl. Kapten Pattimura No. 170', '089040295837'),
       ('S057', 'K006', 'Supriyanto', 'Laki-laki', 'Hartono', 'Jl. Letjen S. Parman No. 193', '088090284716'),
       ('S058', 'K006', 'Syahrul', 'Laki-laki', 'Iwan', 'Jl. Raden Inten No. 216', '087040295837'),
       ('S059', 'K006', 'Syarif', 'Laki-laki', 'Jati', 'Jl. Sultan Agung No. 239', '086090284716'),
       ('S060', 'K006', 'Taufik', 'Laki-laki', 'Karyanto', 'Jl. Sultan Hasanuddin No. 262', '086489352761'),
       ('S061', 'K007', 'Thariq', 'Laki-laki', 'Lutfi', 'Jl. Taman Siswa No. 285', '086405928671'),
       ('S062', 'K007', 'Toni', 'Perempuan', 'Muhammad', 'Jl. Jenderal Sudirman No. 308', '083040295837'),
       ('S063', 'K007', 'Umar', 'Laki-laki', 'Narto', 'Jl. Jenderal Soedirman No. 331', '082090284716'),
       ('S064', 'K007', 'Utama', 'Perempuan', 'Oki', 'Jl. Brigjen Katamso No. 354', '081040295837'),
       ('S065', 'K007', 'Wahyu', 'Laki-laki', 'Prasetyo', 'Jl. Dr. Wahidin Sudirohusodo No. 377', '086502978153'),
       ('S066', 'K007', 'Wildan', 'Perempuan', 'Qonitah', 'Jl. Jenderal Besar Gatot Subroto No. 400', '089040295837'),
       ('S067', 'K007', 'Yadi', 'Laki-laki', 'Rangga', 'Jl. Ahmad Yani No. 423', '088090284716'),
       ('S068', 'K007', 'Yudha', 'Laki-laki', 'Suroso', 'Jl. Pahlawan Revolusi No. 446', '087040295837'),
       ('S069', 'K007', 'Yulianto', 'Laki-laki', 'Tarmizi', 'Jl. Jenderal Sudirman No. 469', '086090284716'),
       ('S070', 'K007', 'Yusril', 'Laki-laki', 'Umar', 'Jl. Jenderal Ahmad Yani No. 492', '085327401986'),
       ('S071', 'K008', 'Yusuf', 'Laki-laki', 'Vino', 'Jl. Pahlawan Revolusi No. 515', '085793812068'),
       ('S072', 'K008', 'Yunus', 'Perempuan', 'Wahyudi', 'Jl. Ahmad Dahlan No. 538', '083040295837'),
       ('S073', 'K008', 'Zainal', 'Laki-laki', 'Yulianto', 'Jl. HOS Cokroaminoto No. 561', '082090284716'),
       ('S074', 'K008', 'Zaki', 'Perempuan', 'Zainal', 'Jl. Kapten Pattimura No. 584', '081040295837'),
       ('S075', 'K008', 'Zulfikar', 'Laki-laki', 'Agus', 'Jl. Letjen S. Parman No. 607', '086405928671'),
       ('S076', 'K008', 'Iqbal', 'Perempuan', 'Bambang', 'Jl. Raden Inten No. 630', '089040295837'),
       ('S077', 'K008', 'Fikri', 'Laki-laki', 'Chandra', 'Jl. Sultan Agung No. 653', '088090284716'),
       ('S078', 'K008', 'Dedy', 'Laki-laki', 'Dedi', 'Jl. Sultan Hasanuddin No. 676', '087040295837'),
       ('S079', 'K008', 'Dede', 'Laki-laki', 'Eko', 'Jl. Taman Siswa No. 699', '086090284716'),
       ('S080', 'K008', 'Darmawan', 'Laki-laki', 'Faisal', 'Jl. Jenderal Sudirman No. 722', '084215903827'),
       ('S081', 'K009', 'Dedi', 'Laki-laki', 'Gunarto', 'Jl. Jenderal Soedirman No. 745', '082973460581'),
       ('S082', 'K009', 'Anwar', 'Perempuan', 'Hadi', 'Jl. Brigjen Katamso No. 768', '087349028167'),
       ('S083', 'K009', 'Arifin', 'Laki-laki', 'Irfan', 'Jl. Dr. Wahidin Sudirohusodo No. 791', '084938571206'),
       ('S084', 'K009', 'Asrul', 'Perempuan', 'Joko', 'Jl. Jenderal Besar Gatot Subroto No. 814', '082645893701'),
       ('S085', 'K009', 'Chandra', 'Laki-laki', 'Kurniawan', 'Jl. Ahmad Yani No. 837', '085693872153'),
       ('S086', 'K009', 'Dwi', 'Perempuan', 'Lestari', 'Jl. Pahlawan Revolusi No. 860', '084732056198'),
       ('S087', 'K009', 'Eko', 'Laki-laki', 'Mulyadi', 'Jl. Jenderal Sudirman No. 883', '083520674821'),
       ('S088', 'K009', 'Fauzi', 'Laki-laki', 'Nurdin', 'Jl. Jenderal Ahmad Yani No. 906', '086502978153'),
       ('S089', 'K009', 'Hadi', 'Laki-laki', 'Oetomo', 'Jl. Pahlawan Revolusi No. 929', '086405928671'),
       ('S090', 'K009', 'Hanif', 'Laki-laki', 'Purnomo', 'Jl. Ahmad Dahlan No. 952', '085793812068'),
       ('S091', 'K010', 'Iqbal', 'Laki-laki', 'Qodir', 'Jl. HOS Cokroaminoto No. 975', '082973460581'),
       ('S092', 'K010', 'Khoirul', 'Perempuan', 'Rachmat', 'Jl. Kapten Pattimura No. 998', '086048275831'),
       ('S093', 'K010', 'Kresna', 'Laki-laki', 'Susanto', 'Jl. Letjen S. Parman No. 23', '084731695210'),
       ('S094', 'K010', 'Kuswanto', 'Perempuan', 'Tjahjono', 'Jl. Raden Inten No. 56', '083510298648'),
       ('S095', 'K010', 'Muhaimin', 'Laki-laki', 'Umar', 'Jl. Sultan Agung No. 89', '081240687953'),
       ('S096', 'K010', 'Nizar', 'Perempuan', 'Vebrianto', 'Jl. Sultan Hasanuddin No. 12', '089721534268'),
       ('S097', 'K010', 'Rizkiyah', 'Laki-laki', 'Wahyu', 'Jl. Taman Siswa No. 45', '086489352761'),
       ('S098', 'K010', 'Siti', 'Laki-laki', 'Yudi', 'Jl. Jenderal Sudirman No. 78', '085327401986'),
       ('S099', 'K010', 'Suprianto', 'Laki-laki', 'Zulfikar', 'Jl. Jenderal Soedirman No. 90', '084215903827'),
       ('S100', 'K010', 'Tri', 'Laki-laki', 'Agung', 'Jl. Brigjen Katamso No. 23', '083094285713');

INSERT INTO Mapel (ID_Mapel, Nama_Mapel, ID_Kategori) 
VALUES  ('M001', 'Matematika', 'A'),
        ('M002', 'Bahasa Inggris', 'A'),
        ('M003', 'Bahasa Indonesia', 'A'),
        ('M004', 'Fisika', 'B'),
        ('M005', 'Kimia', 'B'),
        ('M006', 'Biologi', 'B'),
        ('M007', 'Sejarah', 'C'),
        ('M008', 'Geografi', 'C'),
        ('M009', 'Sosiologi', 'C'),
        ('M010', 'Ekonomi', 'C');

INSERT INTO KelasMapel (ID_Kelas, ID_Mapel, ID_Guru) 
VALUES  ('K001', 'M001', 'G001'), ('K001', 'M002', 'G002'),
        ('K001', 'M003', 'G003'), ('K002', 'M004', 'G004'),
        ('K002', 'M005', 'G005'), ('K002', 'M006', 'G006'),
        ('K003', 'M007', 'G007'), ('K003', 'M008', 'G008'),
        ('K003', 'M009', 'G009'), ('K004', 'M010', 'G010'),
        ('K005', 'M001', 'G001'), ('K005', 'M002', 'G002'),
        ('K005', 'M003', 'G003'), ('K006', 'M004', 'G004'),
        ('K006', 'M005', 'G005'), ('K006', 'M006', 'G006'),
        ('K007', 'M007', 'G007'), ('K007', 'M008', 'G008'),
        ('K007', 'M009', 'G009'), ('K008', 'M010', 'G010'),
        ('K009', 'M001', 'G001'), ('K009', 'M002', 'G002'),
        ('K009', 'M003', 'G003'), ('K010', 'M004', 'G004'),
        ('K010', 'M005', 'G005'), ('K010', 'M006', 'G006');

INSERT INTO Foto (ID_Foto, Nama_Foto, image)
VALUES  ('F001', 'Adam Smith', 'image_data_1'),
        ('F002', 'Emily Johnson', 'image_data_2'),
        ('F003', 'Michael Brown', 'image_data_3'),
        ('F004', 'Emma Davis', 'image_data_4'),
        ('F005', 'Joshua Miller', 'image_data_5'),
        ('F006', 'Madison Wilson', 'image_data_6'),
        ('F007', 'Matthew Moore', 'image_data_7'),
        ('F008', 'Olivia Anderson', 'image_data_8'),
        ('F009', 'Jacob Taylor', 'image_data_9'),
        ('F010', 'Isabella Thomas', 'image_data_10');

INSERT INTO Absensi (ID_Siswa, ID_Kelas, ID_Mapel, Tanggal, Keterangan)
VALUES  ('S001', 'K001', 'M001', '2022-01-01', 'Hadir'),
        ('S002', 'K001', 'M001', '2022-01-02', 'Tidak Hadir'),
        ('S003', 'K001', 'M002', '2022-01-03', 'Izin'),
        ('S004', 'K001', 'M002', '2022-01-04', 'Hadir'),
        ('S005', 'K002', 'M003', '2022-01-05', 'Sakit'),
        ('S006', 'K002', 'M003', '2022-01-06', 'Hadir'),
        ('S007', 'K003', 'M004', '2022-01-07', 'Tidak Hadir'),
        ('S008', 'K003', 'M004', '2022-01-08', 'Hadir'),
        ('S009', 'K004', 'M005', '2022-01-09', 'Izin'),
        ('S010', 'K004', 'M005', '2022-01-10', 'Hadir');

INSERT INTO Makanan (ID_Makanan, Nama_Makanan)
VALUES  ('M001', 'Nasi Goreng'),
        ('M002', 'Mie Goreng'),
        ('M003', 'Nasi Uduk'),
        ('M004', 'Nasi Ayam'),
        ('M005', 'Nasi Kebuli'),
        ('M006', 'Mie Ayam'),
        ('M007', 'Nasi Campur'),
        ('M008', 'Sate Ayam'),
        ('M009', 'Sate Kambing'),
        ('M010', 'Nasi Pecel');

INSERT INTO Transaksi (ID_Transaksi, Date, ID_Kelas, ID_Foto, ID_Makanan, Deskripsi_Transaksi, Catatan_Guru)
VALUES  ('T000000001', '2022-01-01', 'K001', 'F001', 'M001', 'Siswa kelas 1A mengikuti ekskursi ke museum', 'Ekskursi ini sangat bermanfaat bagi pemahaman siswa tentang sejarah'),
        ('T000000002', '2022-01-02', 'K001', 'F002', 'M002', 'Siswa kelas 1A melakukan diskusi kelompok tentang materi fisika', 'Semua siswa aktif dan konsentrasi dalam diskusi'),
        ('T000000003', '2022-01-03', 'K001', 'F003', 'M003', 'Siswa kelas 1A mengikuti lomba menulis esai', 'Siswa mendapatkan peringkat ke-2 dalam lomba'),
        ('T000000004', '2022-01-01', 'K002', 'F004', 'M004', 'Siswa kelas 1B mengikuti olimpiade matematika', 'Siswa berhasil meraih medali perak'),
        ('T000000005', '2022-01-02', 'K002', 'F005', 'M005', 'Siswa kelas 1B melakukan praktikum kimia', 'Semua siswa menunjukkan hasil yang baik dalam praktikum'),
        ('T000000006', '2022-01-03', 'K002', 'F006', 'M006', 'Siswa kelas 1B mengikuti lomba lari', 'Siswa berhasil meraih peringkat ke-3 dalam lomba'),
        ('T000000007', '2022-01-01', 'K003', 'F007', 'M007', 'Siswa kelas 2A mengikuti seminar tentang teknologi', 'Siswa mendapatkan banyak informasi yang berguna dari seminar'),
        ('T000000008', '2022-01-02', 'K003', 'F008', 'M008', 'Siswa kelas 2A melakukan eksperimen biologi', 'Semua siswa menunjukkan hasil yang baik dalam eksperimen'),
        ('T000000009', '2022-01-03', 'K003', 'F009', 'M009', 'Siswa kelas 2A mengikuti lomba debat', 'Siswa berhasil meraih juara pertama dalam lomba'),
        ('T000000010', '2022-10-01', 'K004', 'F010', 'M001', 'Siswa K002 mengikuti lomba menyanyi di sekolah', 'Siswa K002 berhasil meraih juara 2 dalam lomba menyanyi sekolah hari ini'),
        ('T000000011', '2022-10-01', 'K004', 'F010', 'M001', 'Siswa K003 mengikuti kegiatan ekstrakurikuler seni', 'Siswa K003 tampil sangat apik dalam kegiatan ekstrakurikuler seni hari ini'),
        ('T000000012', '2022-10-02', 'K004', 'F010', 'M001', 'Siswa K001 mengikuti kegiatan ekstrakurikuler bola', 'Semua siswa K001 tampil cemerlang dalam kegiatan ekstrakurikuler bola hari ini'),
        ('T000000013', '2022-10-02', 'K005', 'F010', 'M001', 'Siswa K002 mengikuti lomba menyanyi di sekolah', 'Siswa K002 berhasil meraih juara 2 dalam lomba menyanyi sekolah hari ini'),
        ('T000000014', '2022-10-02', 'K005', 'F010', 'M001', 'Siswa K003 mengikuti kegiatan ekstrakurikuler seni', 'Siswa K003 tampil sangat apik dalam kegiatan ekstrakurikuler seni hari ini'),
        ('T000000015', '2022-10-03', 'K005', 'F010', 'M001', 'Siswa K001 mengikuti kegiatan ekstrakurikuler bola', 'Semua siswa K001 tampil cemerlang dalam kegiatan ekstrakurikuler bola hari ini'),
        ('T000000016', '2022-10-03', 'K006', 'F010', 'M001', 'Siswa K002 mengikuti lomba menyanyi di sekolah', 'Siswa K002 berhasil meraih juara 2 dalam lomba menyanyi sekolah hari ini'),
        ('T000000017', '2022-10-03', 'K006', 'F010', 'M001', 'Siswa K003 mengikuti kegiatan ekstrakurikuler seni', 'Siswa K003 tampil sangat apik dalam kegiatan ekstrakurikuler seni hari ini'),
        ('T000000018', '2022-01-15', 'K006', 'F001', 'M001', 'Siswa K001 melakukan kegiatan belajar mengajar di kelas', 'Semua siswa K001 tampak fokus dalam belajar'),
        ('T000000019', '2022-01-15', 'K007', 'F002', 'M002', 'Siswa K002 melakukan ekskul basket', 'Siswa K002 tampak aktif dalam ekskul basket'),
        ('T000000020', '2022-01-15', 'K007', 'F003', 'M003', 'Siswa K003 melakukan kegiatan belajar mengajar di kelas', 'Semua siswa K003 tampak fokus dalam belajar'),
        ('T000000021', '2022-01-16', 'K007', 'F004', 'M004', 'Siswa K001 melakukan ekskul seni', 'Siswa K001 tampak antusias dalam ekskul seni'),
        ('T000000022', '2022-01-16', 'K008', 'F005', 'M005', 'Siswa K002 melakukan kegiatan belajar mengajar di kelas', 'Semua siswa K002 tampak fokus dalam belajar'),
        ('T000000023', '2022-01-16', 'K008', 'F006', 'M006', 'Siswa K003 melakukan ekskul musik', 'Siswa K003 tampak aktif dalam ekskul musik'),
        ('T000000024', '2022-01-17', 'K008', 'F007', 'M007', 'Siswa K001 melakukan kegiatan belajar mengajar di kelas', 'Semua siswa K001 tampak fokus dalam belajar'),
        ('T000000025', '2022-01-17', 'K009', 'F008', 'M008', 'Siswa K002 melakukan ekskul olahraga', 'Siswa K002 tampak aktif dalam ekskul olahraga'),
        ('T000000026', '2022-01-17', 'K009', 'F009', 'M009', 'Siswa K003 melakukan kegiatan belajar mengajar di kelas', 'Semua siswa K003 tampak fokus dalam belajar'),
        ('T000000027', '2022-07-10', 'K009', 'F006', 'M006', 'Siswa kelas 1A melakukan diskusi dalam kelas tentang materi sejarah', 'Siswa kelas 1A cukup aktif dalam diskusi dan menunjukkan hasil yang baik dalam pemahaman materi'),
        ('T000000028', '2022-07-10', 'K010', 'F007', 'M007', 'Siswa kelas 1B melakukan presentasi dalam kelas tentang materi biologi', 'Siswa kelas 1B cukup kompeten dalam menyajikan presentasi dan memahami materi'),
        ('T000000029', '2022-07-10', 'K010', 'F008', 'M008', 'Siswa kelas 2A mengikuti lomba olimpiade matematika tingkat sekolah', 'Siswa kelas 2A berhasil meraih juara 2 dalam lomba olimpiade matematika'),
        ('T000000030', '2022-07-10', 'K010', 'F009', 'M009', 'Siswa kelas 2B melakukan eksperimen dalam kelas tentang materi kimia', 'Siswa kelas 2B cukup aktif dalam melakukan eksperimen dan menunjukkan hasil yang baik dalam pemahaman materi');