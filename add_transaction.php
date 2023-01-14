<?php 
session_start();

if (!isset($_SESSION['username_guru'])) {
    header("Location: login.php");
}
  // Include connection to database
  echo "wow";
include('connection.php');

$targetDir = "img/";
$fileName = basename($_FILES["file"]["name"]);
$targetFilePath = $targetDir . $fileName;
$fileType = pathinfo($targetFilePath,PATHINFO_EXTENSION);
  echo "wow";
// get data from form
$input_kelas = $_POST['input_kelas'];
  echo "wow";
$input_mapel = $_POST['input_mapel'];
  echo "wow";
$input_gambar = $_POST['input_gambar'];
  echo "wow";
$input_makanan = $_POST['input_makanan'];
$deskripsi_transaksi = $_POST['deskripsi_transaksi'];
$catatan_guru = $_POST['catatan_guru'];

// query search database 
$search_foto = "SELECT ID_Foto FROM Foto ORDER BY ID_Foto DESC LIMIT 1";
$result_foto = $connection->query($search_foto);
$id_foto = null;
if ($result_foto->num_rows == 0) {
  $query_foto = "INSERT INTO Foto (ID_Foto, Nama_Foto, image) VALUE ('F001', 'Foto1', '$input_gambar')";
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
  $query_foto = "INSERT INTO Foto (ID_Foto, Nama_Foto, image) VALUE ('$foto_push', 'Foto1', '$fileName')";
  if ($connection->query($query_foto)) {
    //header("location: FormTransaksi.php");
  } else {
    echo "Data gagal disimpan!";
  }
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
$search_query = "SELECT ID_Transaksi FROM Transaksi ORDER BY ID_Transaksi DESC LIMIT 1";
$id_trans = null;
$result_query = $connection->query($search_query);
  echo "wow";
if ($result_query->num_rows == 0) {
  echo "wow";
  $id_trans = "T001";
  echo "wow";
} else {
  $row = $result_query->fetch_assoc();
  echo "wow";
  $str_id = str_split($row['ID_Transaksi']);
  $str_id_num = array_slice($str_id, 1);
  $query_id = array_map('intval', $str_id_num);
  print_r($str_id_num);
  if ($query_id[2] == 9) {
    $query_id[2] = 0;
    $query_id[1] += 1;
  } else if ($query_id[2] < 9) {
    $query_id[2] += 1;
  }
  if ($query_id[1] == 9) {
    $query_id[1] = 0;
    $query_id[0] += 1;
  }
  print_r($str_id);
  $query = array('T');
  array_push($query, $query_id[0], $query_id[1], $query_id[2]);
  $query_push = implode("", $query);
  $id_trans = $query_push;
  echo "wow";
}

$id_temp = $_SESSION['Nama_Kelas'];
//$id_temp_temp = $id_temp->fetch_assoc();
echo $id_temp;
$id_query = "SELECT ID_Kelas FROM Kelas WHERE Nama_Kelas = '$id_temp'";
echo "fak";
echo $input_kelas;
echo "fak";
$result_kelas = $connection->query($id_query);
$row_kelas = $result_kelas->fetch_assoc();
$kelas = $row_kelas['ID_Kelas'];
print_r($row_kelas);
$date = date("Y-m-d");
$query_transaksi = "INSERT INTO Transaksi (ID_Transaksi, Date, ID_Kelas, ID_Foto, ID_Makanan, Deskripsi_Transaksi, Catatan_Guru) 
                    VALUE ('$id_trans', '$date', '$kelas', '$id_foto', '$id_makanan', '$deskripsi_transaksi', '$catatan_guru')";
  echo "wow";
echo $id_trans;

if ($connection->query($query_transaksi)) {
  echo "wow";
    header("location: FormTransaksi.php");
} else {
    echo "Data gagal disimpan!";
}
?>
