<!DOCTYPE html>
<?php
session_start();

if (!isset($_SESSION['username_guru'])) {
    header("Location: login.php");
}
?>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="css\main.min.css?v=<?php echo time(); ?>">
    <link rel="stylesheet" href="styles.css?v=<?php echo time(); ?>">
</head>

<body>
    <nav class="navbar navbar-expand-lg navbar-light border-bottom-3 bg-primary sticky-md-top">
        <div class="container-fluid">
            <a class="navbar-brand ms-5" href="./dasbor.php">
                <img src="https://www.kemdikbud.go.id/main/addons/shared_addons/themes/november_theme/img/kemdikbud_64x64.png"
                    alt="" width="60" height="60" class="d-inline-block ">
                TK Tadika Mesra | Monitoring System
            </a>
        </div>
    </nav>
    <div class="container-fluid">
        <div class="row">
            <nav class="col-2 bg-secondary flex-column nav-side d-flex justify-content-between">
                <div class="d-flex flex-column">
                    <a href="./daftarmurid.php" class="dasbor nav-side-item  mt-5 ms-3" style="display: block;">
                        <img src="images/list.png" alt="" width="30px" , height="30px">
                        List Siswa
                    </a>
                    <a href="./Transaksig.php#" class="transaksi nav-side-item  mt-2 ms-3" style="display: block;">
                        <img src="images/transaction.png" alt="" width="30px" height="30px">
                        Transaction
                    </a>
                    <a href="./FormTransaksi.php" class="mapel nav-side-item  mt-2 ms-3" style="display: block;">
                        <img src="images/newTransaction.png" alt="" width="30px" maxheight="30px">
                        Add Transaction
                    </a>
                </div>
                <a href="./logout.php" class=" nav-side-item mt-2 ms-3 mb-5 pb-5" style="display: block;">
                    <img src="images/logout.png" alt="" width="30px" height="30px">
                    Logout
                </a>
            </nav>
            <!-- CONTENT START -->
            <div class="col-10 main-content">
            <?php 
                function OpenCon(){
                    $dbhost = "localhost"; 
                    $dbuser = "root"; 
                    $dbpass = "";
                    $db_name = "database_tk";
                    $conn = new mysqli($dbhost, $dbuser, $dbpass,$db_name) or die("Connect failed: %s\n". $conn -> error);
                    return $conn;
                }
                $ID = $_SESSION['ID_Guru'];
                $conn = OpenCon();
                $sql = 
                "
                    SELECT Transaksi.Date, Makanan.Nama_Makanan, Transaksi.Deskripsi_Transaksi, Guru.Nama_Guru, Transaksi.Catatan_Guru, Foto.image
                    FROM Transaksi
                    JOIN Kelas ON Transaksi.ID_Kelas = Kelas.ID_Kelas
                    JOIN Guru ON Kelas.ID_Guru = Guru.ID_Guru
                    JOIN Makanan ON Transaksi.ID_Makanan = Makanan.ID_Makanan
                    JOIN Foto ON Transaksi.ID_Foto = Foto.ID_Foto
                    WHERE Guru.ID_Guru = '$ID';
                ";
                $result = mysqli_query($conn, $sql);
                $row = mysqli_fetch_array($result, MYSQLI_ASSOC);
                do{
                ?>

<<<<<<< HEAD

                <div class="row mx-3 my-3">
                    <div class="mx-3 my-3 bg-primary col rounded-5 image-transaction-container d-flex flex-wrap p-0">
                        <?php $imageURL = $row['image']; echo $imageURL?>
=======
	
		<div class="row mx-3 my-3">
                    <gfhfghfghfghfghfghf>
                        <?php $imageURL = 'img/'.$row['image'];?>
>>>>>>> refs/remotes/origin/master
                        <img src="<?= $imageURL?>" alt="" class="" height="282px">
                    </div>

		    <div class="mx-3 my-3 bg-primary col rounded-5  p-4">
                        <div class="h2"><?= $row['Date'] ?></div>
                        <div class="fs-5"> Makan Siang: <?= $row['Nama_Makanan'] ?></div>
                        <div class="fs-5"> <?= $row['Deskripsi_Transaksi'] ?></div>
                        <div class="fs-5">Catatan dari <?= $row['Nama_Guru'] ?>:</div>
                        <p><?= $row['Catatan_Guru'] ?></p>
                        <!-- <div class="h3 rounded-5 text-end pe-4">Detail→</div> -->
                    </div>
                </div>
                <?php }while($row = mysqli_fetch_array($result, MYSQLI_ASSOC)) ?>


            </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-OERcA2EqjJCMA?3yGxIOqMEjwtxJY7qPCqsdltbNJuaOe923Mo//f6V8Qbsw3"
            crossorigin="anonymous"></script>
</body>

</html>
