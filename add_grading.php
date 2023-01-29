<?php
session_start();

if (!isset($_SESSION['username_guru'])) {
    header("Location: login.php");
}
include('connection.php');

// Get input from html
$input_anak = $_POST['input_anak'];
// Get ID_Siswa trough query
$id_siswa_query = "SELECT ID_Siswa FROM Siswa WHERE Nama_Siswa = '$input_anak'";
$result_id_siswa_query = $connection->query($id_siswa_query);
$row_id_siswa = $result_id_siswa_query->fetch_assoc();
$id_siswa = $row_id_siswa['ID_Siswa'];

$nama_guru = $_SESSION['username_guru'];

print_r($nama_guru);



if (isset($_POST['input_membaca'])) {
  $input_nilai_membaca = $_POST['input_membaca'];
  $input_deskripsi_membaca = $_POST['deskripsi_membaca'];
  $query_transaksi = "INSERT INTO SiswaMapel (ID_Siswa, Nama_Guru, Nama_Mapel, Nilai, Deskripsi)
                    VALUE ('$id_siswa', '$nama_guru', 'Membaca', '$input_nilai_membaca', '$input_deskripsi_membaca');";
}
else if (isset($_POST['input_menulis'])) {
  $input_nilai_menulis = $_POST['input_menulis'];
  $input_deskripsi_menulis = $_POST['deskripsi_menulis'];
  $query_transaksi = "INSERT INTO SiswaMapel (ID_Siswa, Nama_Guru, Nama_Mapel, Nilai, Deskripsi)
                    VALUE ('$id_siswa', '$nama_guru', 'Menulis', '$input_nilai_menulis', '$input_deskripsi_menulis' )";
}
else if (isset($_POST['input_berhitung'])) {
  $input_nilai_berhitung = $_POST['input_berhitung'];
  $input_deskripsi_berhitung = $_POST['deskripsi_berhitung'];
  $query_transaksi = "INSERT INTO SiswaMapel (ID_Siswa, Nama_Guru, Nama_Mapel, Nilai, Deskripsi)
                    VALUE ('$id_siswa', '$nama_guru', 'Berhitung', '$input_nilai_berhitung', '$input_deskripsi_berhitung' )";
}
else if (isset($_POST['input_menggambar'])) { 
  $input_nilai_menggambar = $_POST['input_menggambar'];
  $input_deskripsi_menggambar = $_POST['deskripsi_menggambar'];

  $query_transaksi = "INSERT INTO SiswaMapel (ID_Siswa, Nama_Guru, Nama_Mapel, Nilai, Deskripsi)
                    VALUE ('$id_siswa', '$nama_guru', 'Menggambar', '$input_nilai_menggambar', '$input_deskripsi_menggambar' )";
}
else if (isset($_POST['input_mewarnai'])) { 
  $input_nilai_mewarnai = $_POST['input_mewarnai'];
  $input_deskripsi_mewarnai = $_POST['deskripsi_mewarnai'];
  $query_transaksi = "INSERT INTO SiswaMapel (ID_Siswa, Nama_Guru, Nama_Mapel, Nilai, Deskripsi)
                    VALUE ('$id_siswa', '$nama_guru', 'Mewarnai', '$input_nilai_mewarnai', '$input_deskripsi_mewarnai' )";
}
if ($connection->query($query_transaksi)) {
  
  echo "wow";
    header("location: grading.php");
} else {
    echo "Data gagal disimpan!";
}
?>
