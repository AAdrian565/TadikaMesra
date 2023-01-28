<?php 
session_start();

if (!isset($_SESSION['username_guru'])) {
    header("Location: login.php");
}
  // Include connection to database
  echo "wow";
include('connection.php');

$targetDir = "img/";
print_r($_FILES);
//$fileName = basename($_FILES["file"]["name"]);
//$targetFilePath = $targetDir . $fileName;
//$fileType = pathinfo($targetFilePath,PATHINFO_EXTENSION);
//$MY_FILES = $_FILES["file"]["tmp_name"];
//echo $_FILES["file"]["tmp_name"];

//$file = fopen($MY_FILES, 'r');
//$file_contents = fread($file, filesize($MY_FILES));
//fclose($file);
//$file_contents = addslashes(file_get_contents($_FILES['file']['tmp_name']));
  echo "wow";
// get data from form
//$input_kelas = $_POST['input_kelas'];
  echo "wow";
//$input_mapel = $_POST['input_mapel'];
  echo "wow";
//$input_gambar = $_POST['input_gambar'];
$input_anak = $_POST['input_anak'];
  echo "wow";
$input_makanan = $_POST['input_makanan'];
$deskripsi_transaksi = $_POST['deskripsi_transaksi'];
$catatan_guru = $_POST['catatan_guru'];

$search_id_anak = "SELECT ID_Siswa FROM Siswa WHERE Siswa.Nama_Siswa = '$input_anak'";
$result_id_anak = $connection->query($search_id_anak);
$id_anak_row = $result_id_anak->fetch_assoc();
$id_anak = $id_anak_row['ID_Siswa'];

// query search database 
$search_foto = "SELECT ID_Foto FROM Foto ORDER BY ID_Foto DESC LIMIT 1";
$result_foto = $connection->query($search_foto);
$id_foto = null;

if ($result_foto->num_rows == 0) {
  $query_foto = "INSERT INTO Foto (ID_Foto, Nama_Foto, image) VALUE ('F001', 'Foto1', '$file_contents')";
  if ($connection->query($query_foto)) {
    //header("location: FormTransaksi.php");
  } else {
    echo "Data gagal disimpan!";
  }
  $id_foto = "F001";
} else {
  $row = $result_foto->fetch_assoc();
  $str_id = str_split($row['ID_Foto']);
  $str_id_num = array_slice($str_id, 1);
  $foto_id = array_map('intval', $str_id_num);
  print_r($str_id_num);
  if ($foto_id[2] == 9) {
    $foto_id[2] = 0;
    $foto_id[1] += 1;
  } else if ($foto_id[2] < 9) {
    $foto_id[2] += 1;
  }
  if ($foto_id[1] == 9) {
    $foto_id[1] = 0;
    $foto_id[0] += 1;
  }
  print_r($str_id);
  $foto = array('K');
  array_push($foto, $foto_id[0], $foto_id[1], $foto_id[2]);
  $foto_push = implode("", $foto);
  $id_foto = $foto_push;
  //$query_foto = "INSERT INTO Foto (ID_Foto, Nama_Foto, image) VALUE ('$foto_push', 'Foto1', '$fileName')";
  //if ($connection->query($query_foto)) {
  //  //header("location: FormTransaksi.php");
  //} else {
  //  echo "Data gagal disimpan!";
  //}
  //echo $wow
}

  echo "wow";
$search_makanan = "SELECT ID_Makanan FROM Makanan ORDER BY ID_Makanan DESC LIMIT 1";

$result_makanan = $connection->query($search_makanan);
$id_makanan = null;
if ($result_makanan->num_rows == 0) {
  $query_makanan = "INSERT INTO Makanan (ID_Makanan, Nama_Makanan) VALUE ('M001', '$input_makanan')";
  if ($connection->query($query_makanan)) {
    //header("location: FormTransaksi.php");
  } else {
    echo "Data gagal disimpan!";
  }
  $id_makanan = "M001";
} else {
  $row = $result_makanan->fetch_assoc();
  $str_id = str_split($row['ID_Makanan']);
  $str_id_num = array_slice($str_id, 1);
  $makanan_id = array_map('intval', $str_id_num);
  print_r($str_id_num);
  if ($makanan_id[2] == 9) {
    $makanan_id[2] = 0;
    $makanan_id[1] += 1;
  } else if ($makanan_id[2] < 9) {
    $makanan_id[2] += 1;
  }
  if ($makanan_id[1] == 9) {
    $makanan_id[1] = 0;
    $makanan_id[0] += 1;
  }
  print_r($str_id);
  $makanan = array('M');
  array_push($makanan, $makanan_id[0], $makanan_id[1], $makanan_id[2]);
  $makanan_push = implode("", $makanan);
  $query_makanan = "INSERT INTO Makanan (ID_Makanan, Nama_Makanan) VALUE ('$makanan_push', '$input_makanan')";
  echo "wow";
  if ($connection->query($query_makanan)) {
    //header("location: FormTransaksi.php");
  } else {
    echo "Data gagal disimpan!";
  }
  $id_makanan = $makanan_push;
}
// queery insert into database


$id_temp = $_SESSION['Nama_Kelas'];
//$id_temp_temp = $id_temp->fetch_assoc();
echo $id_temp;
$id_query = "SELECT ID_Kelas FROM Kelas WHERE Nama_Kelas = '$id_temp'";
echo "fak";
//echo $input_kelas;
echo "fak";
//$result_kelas = $connection->query($id_query);
//$row_kelas = $result_kelas->fetch_assoc();
//$kelas = $row_kelas['ID_Kelas'];
//print_r($row_kelas);
$date = date("Y-m-d");
$query_transaksi = "INSERT INTO Transaksi (Date, ID_Siswa, ID_Foto, ID_Makanan, Deskripsi_Transaksi, Catatan_Guru) 
                    VALUE ('$date', '$id_anak', null, '$id_makanan', '$deskripsi_transaksi', '$catatan_guru')";
  echo "wow";
//echo $id_trans;

if ($connection->query($query_transaksi)) {
  echo "wow";
    header("location: FormTransaksi.php");
} else {
    echo "Data gagal disimpan!";
}
?>
