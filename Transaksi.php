<!DOCTYPE html>
<?php
session_start();

if (!isset($_SESSION['username_siswa'])) {
    header("Location: login.php");
}
?>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="css/main.min.css?v=<?php echo time(); ?>">
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
                    <a href="./dasbor.php#" class="dasbor nav-side-item  mt-5 ms-3" style="display: block;">
                        <img src="images/dasbor.png" alt="" width="30px" , height="30px">
                        Dasbor
                    </a>
                    <a href="./Mapel.php#" class="mapel nav-side-item  mt-2 ms-3" style="display: block;">
                        <img src="images/courses.png" alt="" width="30px" height="30px">
                        Courses
                    </a>
                    <a href="./Transaksi.php#" class="transaksi nav-side-item  mt-2 ms-3" style="display: block;">
                        <img src="images/transaction.png" alt="" width="30px" height="30px">
                        Buku Penghubung
                    </a>
                </div>
                <a href="./logout.php#" class=" nav-side-item mt-2 ms-3 mb-5 pb-5" style="display: block;">
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
                $ID = $_SESSION['ID_Siswa'];
                $conn = OpenCon();
                $sql = 
                "
                SELECT g.Nama_Guru
                FROM Siswa s
                JOIN Kelas k ON s.ID_Kelas = k.ID_Kelas
                JOIN Guru g ON k.ID_Guru = g.ID_Guru
                WHERE s.ID_Siswa = 'S001'
                ";
                $row = mysqli_fetch_array(mysqli_query($conn, $sql), MYSQLI_ASSOC);
                $wali = $row['Nama_Guru'];
                $sql = 
                "
                    SELECT Date, m.Nama_Makanan, f.image, t.Deskripsi_Transaksi, t.Catatan_Guru
                    FROM Transaksi t
                    LEFT JOIN Makanan m ON t.ID_Makanan = m.ID_Makanan
                    LEFT JOIN Foto f ON t.ID_Foto = f.ID_Foto
                    JOIN Siswa s ON t.ID_Siswa = s.ID_Siswa
                    WHERE s.ID_Siswa = '$ID'
                ";
                $result = mysqli_query($conn, $sql);
                $row = mysqli_fetch_array($result, MYSQLI_ASSOC);
                do{
                ?>
                <div class="row mx-3 my-3">
                    
                    <?php if(!is_null($row['image'])){?>
                    <div class="mx-3 my-2 bg-primary col-7 rounded-5 image-transaction-container d-flex flex-wrap p-0">
                    <?php $imageURL = 'img/'.$row['image'];?>
                        <img src="<?= $imageURL?>" alt="" class="" height="282px">
                    </div>
                    <?php } ?>

                    <div class="mx-3 my-2 bg-primary col-6 rounded-5 p-2">
                        <div class="m-2 h2"><?= $row['Date'] ?></div>
                        <div class="mx-2 fs-5"> Makan Siang: <?= $row['Nama_Makanan'] ?></div>
                        <div class="mx-2 fs-5"> <?= $row['Deskripsi_Transaksi'] ?></div>
                        <div class="mx-2 fs-5">Catatan dari <?= $wali ?>:</div>
                        <p class="mx-2 ms-4"><?= $row['Catatan_Guru'] ?></p>
                    </div>
                </div>
                <?php }while($row = mysqli_fetch_array($result, MYSQLI_ASSOC)) ?>


            </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-OERcA2EqjJCMA?3yGxIOqMEjwtxJY7qPCqsdltbNJuaOe923Mo//f6V8Qbsw3"
            crossorigin="anonymous"></script>
</body>

</html>
