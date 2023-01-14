<?php
include('connection.php');
session_start();

if (isset($_SESSION['username_siswa'])) {
  define('USER_CONSTANT', '123');
  header("Location: dasbor.php");
} else if (isset($_SESSION['username_guru'])) {
  define('GURU_CONSTANT', '234');
  header("Location: daftarmurid.php");
}

if (isset($_POST['submit'])) {
  $username = $_POST['username'];
  $password = $_POST['password'];

  $query = "SELECT * FROM Siswa WHERE Nama_Siswa='$username' AND ID_Siswa='$password'";
  $result = mysqli_query($connection, $query);
  if ($result->num_rows > 0) {
    $row = mysqli_fetch_assoc($result);
    $_SESSION['username_siswa'] = $row['Nama_Siswa'];
    $_SESSION['ID_Siswa'] = $row['ID_Siswa'];
    define('USER_CONSTANT', '123');
    header("Location: dasbor.php");
  } else {
    $query = "SELECT * FROM Guru WHERE Nama_Guru='$username' AND ID_Guru='$password'";
    $result = mysqli_query($connection, $query);
    if ($result->num_rows > 0) {
      $row = mysqli_fetch_assoc($result);
      $_SESSION['username_guru'] = $row['Nama_Guru'];
      define('GURU_CONSTANT', '234');
      header("Location: daftarmurid.php");
    } else {
      echo "<script>alert('Email atau password anda salah')</script>";
      header("Location: login.php");
    }
  }
}
?>
