-- List Nama, ID, Kelas, dan Guru
SELECT Siswa.Nama_Siswa, Siswa.ID_Siswa, Kelas.Nama_Kelas, Guru.Nama_Guru AS Wali_Kelas
FROM Siswa
JOIN Kelas ON Siswa.ID_Kelas = Kelas.ID_Kelas
JOIN Guru ON Kelas.ID_Guru = Guru.ID_Guru;

-- GET NamaKelas, WaliKelas Dengan mengetahui ID_Siswa
SELECT Kelas.Nama_Kelas, Guru.Nama_Guru FROM Kelas, Guru, Siswa 
WHERE Siswa.ID_Siswa = 'S001'
AND Kelas.ID_Kelas = Siswa.ID_Kelas
AND Kelas.ID_Guru = Guru.ID_Guru;

-- GET  List Mapel yang diikuti Siswa
SELECT Mapel.Nama_Mapel, Guru.Nama_Guru
FROM Siswa
JOIN Kelas ON Siswa.ID_Kelas = Kelas.ID_Kelas
JOIN KelasMapel ON Kelas.ID_Kelas = KelasMapel.ID_Kelas
JOIN Mapel ON KelasMapel.ID_Mapel = Mapel.ID_Mapel
JOIN Guru ON KelasMapel.ID_Guru = Guru.ID_Guru
WHERE Siswa.ID_Siswa = 'S001'

-- GET List Mapel Dari suatu Kelas
SELECT Mapel.Nama_Mapel, Guru.Nama_Guru
FROM Kelas
JOIN KelasMapel ON Kelas.ID_Kelas = KelasMapel.ID_Kelas
JOIN Mapel ON KelasMapel.ID_Mapel = Mapel.ID_Mapel
JOIN Guru ON KelasMapel.ID_Guru = Guru.ID_Guru
WHERE Kelas.ID_Kelas = 'your_kelas_id'