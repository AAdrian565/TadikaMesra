-- KELOMPOK

SELECT SiswaMapel.Nama_Mapel, Nama_Siswa, Jenis_Kelamin, Nilai
FROM (
SELECT Nama_Mapel, MIN(Nilai) as MIN_Nilai, MAX(Nilai) as MAX_Nilai
FROM SiswaMapel
GROUP BY Nama_Mapel
) as SubjectGrades
JOIN SiswaMapel ON SiswaMapel.Nama_Mapel = SubjectGrades.Nama_Mapel
AND (SiswaMapel.Nilai = SubjectGrades.MIN_Nilai OR SiswaMapel.Nilai = SubjectGrades.MAX_Nilai)
JOIN Siswa ON Siswa.ID_Siswa = SiswaMapel.ID_Siswa

-- 2501969971 - Abel Kristanto
-- Mencari makanan ter-banyak dan tersedikit
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


-- 2501960814 - Augustinus Adrian Triputra
-- Mencari guru yang mengajar terbanyak dan tersedikit
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
                        );