<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="css\main.min.css?v="<?php echo time(); ?>">
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
                    <a href="./FormTransaksi.php" class="mapel nav-side-item  mt-2 ms-3" style="display: block;">
                        <img src="images/newTransaction.png" alt="" width="30px" maxheight="30px">
                        Add Transaction
                    </a>
                </div>
                <a href="./login.php" class=" nav-side-item mt-2 ms-3 mb-5 pb-5" style="display: block;">
                    <img src="images/logout.png" alt="" width="30px" height="30px">
                    Logout
                </a>
            </nav>
            <!-- CONTENT START -->
            <?php function OpenCon(){
                    $dbhost = "localhost"; $dbuser = "root"; $dbpass = "";
                    $db = "re";
                    $conn = new mysqli($dbhost, $dbuser, $dbpass,$db) or die("Connect failed: %s\n". $conn -> error);
                    return $conn;}$conn = OpenCon();?>
            <?php
                 $sql = 
                "
                    SELECT Siswa.Nama_Siswa, Siswa.ID_Siswa, Kelas.Nama_Kelas, Guru.Nama_Guru AS Wali_Kelas
                    FROM Siswa
                    JOIN Kelas ON Siswa.ID_Kelas = Kelas.ID_Kelas
                    JOIN Guru ON Kelas.ID_Guru = Guru.ID_Guru;
                ";
                 $result = mysqli_query($conn, $sql);
                 $row = mysqli_fetch_array($result, MYSQLI_ASSOC);
            ?>
            <div class="col-10 main-content">
            <?php 
            while($row = mysqli_fetch_array($result, MYSQLI_ASSOC)){
            // ?>
                <div class="row">
                    <div class="col-2">
                        <img src="images/neko.png" alt="" width="150px" height="150px" id="profile" class="mt-3 ms-3">
                    </div> 
                    <div class="col container-text-2 mt-3 me-4 d-flex flex-column">
                        <h1 class="m-0"><?= $row['Nama_Siswa'] ?></h1>
                        <hr class="m-0">
                        <p class="m-0 mt-2">ID : <?= $row['ID_Siswa'] ?></p>
                        <p class="m-0">Kelas : <?= $row['Nama_Kelas'] ?></p>
                        <p class="m-0">Wali Kelas : <?= $row['Wali_Kelas'] ?></p>
                    </div>
            </div>
            <?php } ?>
            <br>
            </div>
        </div>
    </div>



    <?php function CloseCon($conn){$conn -> close();}?>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-OERcA2EqjJCMA?3yGxIOqMEjwtxJY7qPCqsdltbNJuaOe923Mo//f6V8Qbsw3"
        crossorigin="anonymous"></script>
</body>

</html>