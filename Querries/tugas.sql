## Abel

## Mencari makanan ter-banyak dan tersedikit
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
