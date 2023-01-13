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
    ID_Kelas CHAR(4) NOT NULL, FOREIGN KEY (ID_Kelas) REFERENCES Kelas(ID_Kelas),
    ID_Foto CHAR(10), FOREIGN KEY (ID_Foto) REFERENCES Foto (ID_Foto),
    ID_Makanan CHAR(10), FOREIGN KEY (ID_Makanan) REFERENCES Makanan (ID_Makanan),
    Deskripsi_Transaksi VARCHAR (50),
    Catatan_Guru VARCHAR (50)
);
