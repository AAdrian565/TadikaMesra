INSERT INTO Guru (ID_Guru, Nama_Guru, Alamat, No_HP, Jenis_Kelamin) 
VALUES  ('G001', 'John Smith', 'Jakarta', '081234567890', 'Laki-laki'),
        ('G002', 'Jane Doe', 'Surabaya', '081234567891', 'Perempuan'),
        ('G003', 'Michael Johnson', 'Bandung', '081234567892', 'Laki-laki'),
        ('G004', 'Emily Brown', 'Semarang', '081234567893', 'Perempuan'),
        ('G005', 'Joshua Davis', 'Medan', '081234567894', 'Laki-laki'),
        ('G006', 'Ashley Miller', 'Bali', '081234567895', 'Perempuan'),
        ('G007', 'Matthew Wilson', 'Yogyakarta', '081234567896', 'Laki-laki'),
        ('G008', 'Olivia Moore', 'Padang', '081234567897', 'Perempuan'),
        ('G009', 'Jacob Taylor', 'Palembang', '081234567898', 'Laki-laki'),
        ('G010', 'Isabella Anderson', 'Makassar', '081234567899', 'Perempuan');

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
VALUES ('S001', 'K001', 'Siswa 1 Kelas 1', 'Laki-laki', 'Ortu Siswa 1', 'Alamat Siswa 1', '081234567890'),
       ('S002', 'K001', 'Siswa 2 Kelas 1', 'Perempuan', 'Ortu Siswa 2', 'Alamat Siswa 2', '081234567890'),
       ('S003', 'K001', 'Siswa 3 Kelas 1', 'Laki-laki', 'Ortu Siswa 3', 'Alamat Siswa 3', '081234567890'),
       ('S004', 'K001', 'Siswa 4 Kelas 1', 'Perempuan', 'Ortu Siswa 4', 'Alamat Siswa 4', '081234567890'),
       ('S005', 'K001', 'Siswa 5 Kelas 1', 'Laki-laki', 'Ortu Siswa 5', 'Alamat Siswa 5', '081231231231'),
       ('S006', 'K001', 'Siswa 6 Kelas 1', 'Perempuan', 'Ortu Siswa 6', 'Alamat Siswa 6', '081234567890'),
       ('S007', 'K001', 'Siswa 7 Kelas 1', 'Laki-laki', 'Ortu Siswa 7', 'Alamat Siswa 7', '081234567890'),
       ('S008', 'K001', 'Siswa 8 Kelas 1', 'Perempuan', 'Ortu Siswa 8', 'Alamat Siswa 8', '081234567890'),
       ('S009', 'K001', 'Siswa 9 Kelas 1', 'Laki-laki', 'Ortu Siswa 9', 'Alamat Siswa 9', '081234567890'),
       ('S010', 'K001', 'Siswa 10 Kelas 1', 'Perempuan', 'Ortu Siswa 10', 'Alamat Siswa 10', '081234567890'),
       ('S011', 'K002', 'Siswa 1 Kelas 2', 'Laki-laki', 'Ortu Siswa 1', 'Alamat Siswa 1', '081234567890'),
       ('S012', 'K002', 'Siswa 2 Kelas 2', 'Perempuan', 'Ortu Siswa 2', 'Alamat Siswa 2', '081234567890'),
       ('S013', 'K002', 'Siswa 3 Kelas 2', 'Laki-laki', 'Ortu Siswa 3', 'Alamat Siswa 3', '081234567890'),
       ('S014', 'K002', 'Siswa 4 Kelas 2', 'Perempuan', 'Ortu Siswa 4', 'Alamat Siswa 4', '081234567890'),
       ('S015', 'K002', 'Siswa 5 Kelas 2', 'Laki-laki', 'Ortu Siswa 5', 'Alamat Siswa 5', '081234567890'),
       ('S016', 'K002', 'Siswa 6 Kelas 2', 'Perempuan', 'Ortu Siswa 6', 'Alamat Siswa 6', '081234567890'),
       ('S017', 'K002', 'Siswa 7 Kelas 2', 'Laki-laki', 'Ortu Siswa 7', 'Alamat Siswa 7', '081234567890'),
       ('S018', 'K002', 'Siswa 8 Kelas 2', 'Perempuan', 'Ortu Siswa 8', 'Alamat Siswa 8', '081234567890'),
       ('S019', 'K002', 'Siswa 9 Kelas 2', 'Laki-laki', 'Ortu Siswa 9', 'Alamat Siswa 9', '081234567890'),
       ('S020', 'K002', 'Siswa 10 Kelas 2', 'Perempuan', 'Ortu Siswa 10', 'Alamat Siswa 10', '081234567890'),
       ('S021', 'K003', 'Siswa 1 Kelas 3', 'Laki-laki', 'Ortu Siswa 1', 'Alamat Siswa 1', '081234567890'),
       ('S022', 'K003', 'Siswa 2 Kelas 3', 'Perempuan', 'Ortu Siswa 2', 'Alamat Siswa 2', '081234567890'),
       ('S023', 'K003', 'Siswa 3 Kelas 3', 'Laki-laki', 'Ortu Siswa 3', 'Alamat Siswa 3', '081234567890'),
       ('S024', 'K003', 'Siswa 4 Kelas 3', 'Perempuan', 'Ortu Siswa 4', 'Alamat Siswa 4', '081234567890'),
       ('S025', 'K003', 'Siswa 5 Kelas 3', 'Laki-laki', 'Ortu Siswa 5', 'Alamat Siswa 5', '081234567890'),
       ('S026', 'K003', 'Siswa 6 Kelas 3', 'Perempuan', 'Ortu Siswa 6', 'Alamat Siswa 6', '081234567890'),
       ('S027', 'K003', 'Siswa 7 Kelas 3', 'Laki-laki', 'Ortu Siswa 7', 'Alamat Siswa 7', '081234567890'),
       ('S028', 'K003', 'Siswa 8 Kelas 3', 'Perempuan', 'Ortu Siswa 8', 'Alamat Siswa 8', '081234567890'),
       ('S029', 'K003', 'Siswa 9 Kelas 3', 'Laki-laki', 'Ortu Siswa 9', 'Alamat Siswa 9', '081234567890'),
       ('S030', 'K003', 'Siswa 10 Kelas 3', 'Perempuan', 'Ortu Siswa 10', 'Alamat Siswa 10', '081234567890'),
       ('S031', 'K004', 'Siswa 1 Kelas 4', 'Laki-laki', 'Ortu Siswa 1', 'Alamat Siswa 1', '081234567890'),
       ('S032', 'K004', 'Siswa 2 Kelas 4', 'Perempuan', 'Ortu Siswa 2', 'Alamat Siswa 2', '081234567890'),
       ('S033', 'K004', 'Siswa 3 Kelas 4', 'Laki-laki', 'Ortu Siswa 3', 'Alamat Siswa 3', '081234567890'),
       ('S034', 'K004', 'Siswa 4 Kelas 4', 'Perempuan', 'Ortu Siswa 4', 'Alamat Siswa 4', '081234567890'),
       ('S035', 'K004', 'Siswa 5 Kelas 4', 'Laki-laki', 'Ortu Siswa 5', 'Alamat Siswa 5', '081234567890'),
       ('S036', 'K004', 'Siswa 6 Kelas 4', 'Perempuan', 'Ortu Siswa 6', 'Alamat Siswa 6', '081234567890'),
       ('S037', 'K004', 'Siswa 7 Kelas 4', 'Laki-laki', 'Ortu Siswa 7', 'Alamat Siswa 7', '081234567890'),
       ('S038', 'K004', 'Siswa 8 Kelas 4', 'Laki-laki', 'Ortu Siswa 8', 'Alamat Siswa 8', '081234567890'),
       ('S039', 'K004', 'Siswa 9 Kelas 4', 'Laki-laki', 'Ortu Siswa 9', 'Alamat Siswa 9', '081234567890'),
       ('S040', 'K004', 'Siswa 10 Kelas 4', 'Laki-laki', 'Ortu Siswa 10', 'Alamat Siswa 10', '081234567890'),
       ('S041', 'K005', 'Siswa 1 Kelas 5', 'Laki-laki', 'Ortu Siswa 1', 'Alamat Siswa 1', '081234567890'),
       ('S042', 'K005', 'Siswa 2 Kelas 5', 'Perempuan', 'Ortu Siswa 2', 'Alamat Siswa 2', '081234567890'),
       ('S043', 'K005', 'Siswa 3 Kelas 5', 'Laki-laki', 'Ortu Siswa 3', 'Alamat Siswa 3', '081234567890'),
       ('S044', 'K005', 'Siswa 4 Kelas 5', 'Perempuan', 'Ortu Siswa 4', 'Alamat Siswa 4', '081234567890'),
       ('S045', 'K005', 'Siswa 5 Kelas 5', 'Laki-laki', 'Ortu Siswa 5', 'Alamat Siswa 5', '081234567890'),
       ('S046', 'K005', 'Siswa 6 Kelas 5', 'Perempuan', 'Ortu Siswa 6', 'Alamat Siswa 6', '081234567890'),
       ('S047', 'K005', 'Siswa 7 Kelas 5', 'Laki-laki', 'Ortu Siswa 7', 'Alamat Siswa 7', '081234567890'),
       ('S048', 'K005', 'Siswa 8 Kelas 5', 'Laki-laki', 'Ortu Siswa 8', 'Alamat Siswa 8', '081234567890'),
       ('S049', 'K005', 'Siswa 9 Kelas 5', 'Laki-laki', 'Ortu Siswa 9', 'Alamat Siswa 9', '081234567890'),
       ('S050', 'K005', 'Siswa 10 Kelas 5', 'Laki-laki', 'Ortu Siswa 10', 'Alamat Siswa 10', '081234567890'),
       ('S051', 'K006', 'Siswa 1 Kelas 6', 'Laki-laki', 'Ortu Siswa 1', 'Alamat Siswa 1', '081234567890'),
       ('S052', 'K006', 'Siswa 2 Kelas 6', 'Perempuan', 'Ortu Siswa 2', 'Alamat Siswa 2', '081234567890'),
       ('S053', 'K006', 'Siswa 3 Kelas 6', 'Laki-laki', 'Ortu Siswa 3', 'Alamat Siswa 3', '081234567890'),
       ('S054', 'K006', 'Siswa 4 Kelas 6', 'Perempuan', 'Ortu Siswa 4', 'Alamat Siswa 4', '081234567890'),
       ('S055', 'K006', 'Siswa 5 Kelas 6', 'Laki-laki', 'Ortu Siswa 5', 'Alamat Siswa 5', '081234567890'),
       ('S056', 'K006', 'Siswa 6 Kelas 6', 'Perempuan', 'Ortu Siswa 6', 'Alamat Siswa 6', '081234567890'),
       ('S057', 'K006', 'Siswa 7 Kelas 6', 'Laki-laki', 'Ortu Siswa 7', 'Alamat Siswa 7', '081234567890'),
       ('S058', 'K006', 'Siswa 8 Kelas 6', 'Laki-laki', 'Ortu Siswa 8', 'Alamat Siswa 8', '081234567890'),
       ('S059', 'K006', 'Siswa 9 Kelas 6', 'Laki-laki', 'Ortu Siswa 9', 'Alamat Siswa 9', '081234567890'),
       ('S060', 'K006', 'Siswa 10 Kelas 6', 'Laki-laki', 'Ortu Siswa 10', 'Alamat Siswa 10', '081234567890'),
       ('S071', 'K007', 'Siswa 1 Kelas 7', 'Laki-laki', 'Ortu Siswa 1', 'Alamat Siswa 1', '081234567890'),
       ('S072', 'K007', 'Siswa 2 Kelas 7', 'Perempuan', 'Ortu Siswa 2', 'Alamat Siswa 2', '081234567890'),
       ('S073', 'K007', 'Siswa 3 Kelas 7', 'Laki-laki', 'Ortu Siswa 3', 'Alamat Siswa 3', '081234567890'),
       ('S074', 'K007', 'Siswa 4 Kelas 7', 'Perempuan', 'Ortu Siswa 4', 'Alamat Siswa 4', '081234567890'),
       ('S075', 'K007', 'Siswa 5 Kelas 7', 'Laki-laki', 'Ortu Siswa 5', 'Alamat Siswa 5', '081234567890'),
       ('S076', 'K007', 'Siswa 6 Kelas 7', 'Perempuan', 'Ortu Siswa 6', 'Alamat Siswa 6', '081234567890'),
       ('S077', 'K007', 'Siswa 7 Kelas 7', 'Laki-laki', 'Ortu Siswa 7', 'Alamat Siswa 7', '081234567890'),
       ('S078', 'K007', 'Siswa 8 Kelas 7', 'Laki-laki', 'Ortu Siswa 8', 'Alamat Siswa 8', '081234567890'),
       ('S079', 'K007', 'Siswa 9 Kelas 7', 'Laki-laki', 'Ortu Siswa 9', 'Alamat Siswa 9', '081234567890'),
       ('S080', 'K007', 'Siswa 10 Kelas 7', 'Laki-laki', 'Ortu Siswa 10', 'Alamat Siswa 10', '081234567890'),
       ('S081', 'K008', 'Siswa 1 Kelas 8', 'Laki-laki', 'Ortu Siswa 1', 'Alamat Siswa 1', '081234567890'),
       ('S082', 'K008', 'Siswa 2 Kelas 8', 'Perempuan', 'Ortu Siswa 2', 'Alamat Siswa 2', '081234567890'),
       ('S083', 'K008', 'Siswa 3 Kelas 8', 'Laki-laki', 'Ortu Siswa 3', 'Alamat Siswa 3', '081234567890'),
       ('S084', 'K008', 'Siswa 4 Kelas 8', 'Perempuan', 'Ortu Siswa 4', 'Alamat Siswa 4', '081234567890'),
       ('S085', 'K008', 'Siswa 5 Kelas 8', 'Laki-laki', 'Ortu Siswa 5', 'Alamat Siswa 5', '081234567890'),
       ('S086', 'K008', 'Siswa 6 Kelas 8', 'Perempuan', 'Ortu Siswa 6', 'Alamat Siswa 6', '081234567890'),
       ('S087', 'K008', 'Siswa 7 Kelas 8', 'Laki-laki', 'Ortu Siswa 7', 'Alamat Siswa 7', '081234567890'),
       ('S088', 'K008', 'Siswa 8 Kelas 8', 'Laki-laki', 'Ortu Siswa 8', 'Alamat Siswa 8', '081234567890'),
       ('S089', 'K008', 'Siswa 9 Kelas 8', 'Laki-laki', 'Ortu Siswa 9', 'Alamat Siswa 9', '081234567890'),
       ('S090', 'K008', 'Siswa 10 Kelas 8', 'Laki-laki', 'Ortu Siswa 10', 'Alamat Siswa 10', '081234567890'),
       ('S091', 'K009', 'Siswa 1 Kelas 9', 'Laki-laki', 'Ortu Siswa 1', 'Alamat Siswa 1', '081234567890'),
       ('S092', 'K009', 'Siswa 2 Kelas 9', 'Perempuan', 'Ortu Siswa 2', 'Alamat Siswa 2', '081234567890'),
       ('S093', 'K009', 'Siswa 3 Kelas 9', 'Laki-laki', 'Ortu Siswa 3', 'Alamat Siswa 3', '081234567890'),
       ('S094', 'K009', 'Siswa 4 Kelas 9', 'Perempuan', 'Ortu Siswa 4', 'Alamat Siswa 4', '081234567890'),
       ('S095', 'K009', 'Siswa 5 Kelas 9', 'Laki-laki', 'Ortu Siswa 5', 'Alamat Siswa 5', '081234567890'),
       ('S096', 'K009', 'Siswa 6 Kelas 9', 'Perempuan', 'Ortu Siswa 6', 'Alamat Siswa 6', '081234567890'),
       ('S097', 'K009', 'Siswa 7 Kelas 9', 'Laki-laki', 'Ortu Siswa 7', 'Alamat Siswa 7', '081234567890'),
       ('S098', 'K009', 'Siswa 8 Kelas 9', 'Laki-laki', 'Ortu Siswa 8', 'Alamat Siswa 8', '081234567890'),
       ('S099', 'K009', 'Siswa 9 Kelas 9', 'Laki-laki', 'Ortu Siswa 9', 'Alamat Siswa 9', '081234567890'),
       ('S100', 'K009', 'Siswa 10 Kelas 9', 'Laki-laki', 'Ortu Siswa 10', 'Alamat Siswa 10', '081234567890'),
       ('S101', 'K010', 'Siswa 1 Kelas 10', 'Laki-laki', 'Ortu Siswa 1', 'Alamat Siswa 1', '081234567890'),
       ('S102', 'K010', 'Siswa 2 Kelas 10', 'Perempuan', 'Ortu Siswa 2', 'Alamat Siswa 2', '081234567890'),
       ('S103', 'K010', 'Siswa 3 Kelas 10', 'Laki-laki', 'Ortu Siswa 3', 'Alamat Siswa 3', '081234567890'),
       ('S104', 'K010', 'Siswa 4 Kelas 10', 'Perempuan', 'Ortu Siswa 4', 'Alamat Siswa 4', '081234567890'),
       ('S105', 'K010', 'Siswa 5 Kelas 10', 'Laki-laki', 'Ortu Siswa 5', 'Alamat Siswa 5', '081234567890'),
       ('S106', 'K010', 'Siswa 6 Kelas 10', 'Perempuan', 'Ortu Siswa 6', 'Alamat Siswa 6', '081234567890'),
       ('S107', 'K010', 'Siswa 7 Kelas 10', 'Laki-laki', 'Ortu Siswa 7', 'Alamat Siswa 7', '081234567890'),
       ('S108', 'K010', 'Siswa 8 Kelas 10', 'Laki-laki', 'Ortu Siswa 8', 'Alamat Siswa 8', '081234567890'),
       ('S109', 'K010', 'Siswa 9 Kelas 10', 'Laki-laki', 'Ortu Siswa 9', 'Alamat Siswa 9', '081234567890'),
       ('S110', 'K010', 'Siswa 10 Kelas 10', 'Laki-laki', 'Ortu Siswa 10', 'Alamat Siswa 10', '081234567890');

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

INSERT INTO Transaksi (ID_Transaksi, ID_Kelas, ID_Foto, ID_Makanan, Deskripsi_Transaksi, Catatan_Guru)
VALUES  ('T001', 'K001', 'F001', 'M001', 'Transaksi Makan Siang', 'Guru Matematika'),
        ('T002', 'K001', 'F002', 'M002', 'Transaksi Makan Siang', 'Guru Matematika'),
        ('T003', 'K001', 'F003', 'M003', 'Transaksi Makan Siang', 'Guru Matematika'),
        ('T004', 'K002', 'F004', 'M004', 'Transaksi Makan Siang', 'Guru Matematika'),
        ('T005', 'K002', 'F005', 'M005', 'Transaksi Makan Siang', 'Guru Matematika'),
        ('T006', 'K002', 'F006', 'M006', 'Transaksi Makan Siang', 'Guru Matematika'),
        ('T007', 'K003', 'F007', 'M007', 'Transaksi Makan Siang', 'Guru Matematika'),
        ('T008', 'K003', 'F008', 'M008', 'Transaksi Makan Siang', 'Guru Matematika'),
        ('T009', 'K004', 'F009', 'M009', 'Transaksi Makan Siang', 'Guru Matematika'),
        ('T010', 'K004', 'F010', 'M010', 'Transaksi Makan Siang', 'Guru Matematika');