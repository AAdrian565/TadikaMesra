-- KELOMPOK
CREATE VIEW NilaiMAXMIN AS(
SELECT SiswaMapel.Nama_Mapel, Nama_Siswa, Jenis_Kelamin, Nilai
FROM (
SELECT Nama_Mapel, MIN(Nilai) as MIN_Nilai, MAX(Nilai) as MAX_Nilai
FROM SiswaMapel
GROUP BY Nama_Mapel
) as SubjectGrades
JOIN SiswaMapel ON SiswaMapel.Nama_Mapel = SubjectGrades.Nama_Mapel
AND (SiswaMapel.Nilai = SubjectGrades.MIN_Nilai OR SiswaMapel.Nilai = SubjectGrades.MAX_Nilai)
JOIN Siswa ON Siswa.ID_Siswa = SiswaMapel.ID_Siswa
)
-- 2501969971 - Abel Kristanto
-- Mencari makanan ter-banyak dan tersedikit
CREATE VIEW FoodMAXMIN AS(
SELECT * 
FROM (
    SELECT Makanan.Nama_Makanan, y.ID_Makanan, y.ID_Count as Jumlah
    FROM (
        SELECT ID_Makanan, COUNT(ID_Makanan) as ID_Count FROM `Transaksi` GROUP BY ID_Makanan
    ) y
    JOIN Makanan ON y.ID_Makanan = Makanan.ID_Makanan
) as J
WHERE Jumlah = (SELECT MIN(ID_Count) FROM (
    SELECT ID_Makanan, COUNT(ID_Makanan) as ID_Count FROM `Transaksi` GROUP BY ID_Makanan
) as sub1) 
OR Jumlah = (SELECT MAX(ID_Count) FROM (
    SELECT ID_Makanan, COUNT(ID_Makanan) as ID_Count FROM `Transaksi` GROUP BY ID_Makanan
) as sub2)
)

-- 2501960814 - Augustinus Adrian Triputra
-- Mencari guru yang mengajar terbanyak dan tersedikit
CREATE VIEW TeachMAXMIN AS(
SELECT Nama_Guru, Jenis_Kelamin, No_HP, COUNT(ID_Mapel) as Total_Mapel
FROM Guru
JOIN KelasMapel ON KelasMapel.ID_Guru = Guru.ID_Guru
GROUP BY Guru.ID_Guru
HAVING COUNT(ID_Mapel) = (
    SELECT MIN(MapelCount) FROM (
        SELECT COUNT(ID_Mapel) as MapelCount
        FROM Guru
        JOIN KelasMapel ON KelasMapel.ID_Guru = Guru.ID_Guru
        GROUP BY Guru.ID_Guru
        ) as GuruMapel
    ) 
OR COUNT(ID_Mapel) = (
    SELECT MAX(MapelCount) FROM (
        SELECT COUNT(ID_Mapel) as MapelCount
        FROM Guru
        JOIN KelasMapel ON KelasMapel.ID_Guru = Guru.ID_Guru
        GROUP BY Guru.ID_Guru
        ) as GuruMapel
    )
)

-- 2501973880 - Chantyo Atmaja Priyotama
-- Mencari Siswa yang paling rajin(paling banyak hadir) dan siswa yang paling sering sakit--
CREATE VIEW SipalingRajin AS
SELECT s.ID_Siswa, s.Nama_Siswa, s.Jenis_Kelamin
FROM Siswa s
JOIN Absensi a ON s.ID_Siswa = a.ID_Siswa
GROUP BY s.ID_Siswa
HAVING COUNT(CASE WHEN a.Keterangan = 'Hadir' THEN 1 END) = 
    (SELECT MAX(Hadir_Count)
     FROM (SELECT COUNT(CASE WHEN a1.Keterangan = 'Hadir' THEN 1 END) AS Hadir_Count
           FROM Absensi a1
           GROUP BY a1.ID_Siswa) AS SubQ);
CREATE VIEW SipalingSakit AS
SELECT s.ID_Siswa, s.Nama_Siswa, s.Jenis_Kelamin
FROM Siswa s
JOIN Absensi a ON s.ID_Siswa = a.ID_Siswa
GROUP BY s.ID_Siswa
HAVING COUNT(CASE WHEN a.Keterangan = 'Sakit' THEN 1 END) = 
    (SELECT MAX(Sakit_Count)
     FROM (SELECT COUNT(CASE WHEN a1.Keterangan = 'Sakit' THEN 1 END) AS Sakit_Count
           FROM Absensi a1
           GROUP BY a1.ID_Siswa) AS SubQ);
