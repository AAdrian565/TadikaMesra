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
                    <a href="./dasbor.php" class="dasbor nav-side-item  mt-5 ms-3" style="display: block;">
                        <img src="images/dasbor.png" alt="" width="30px" , height="30px">
                        Dasbor
                    </a>
                    <a href="./Mapel.php" class="mapel nav-side-item  mt-2 ms-3" style="display: block;">
                        <img src="images/courses.png" alt="" width="30px" height="30px">
                        Courses
                    </a>
                    <a href="./Transaksi.php" class="transaksi nav-side-item  mt-2 ms-3" style="display: block;">
                        <img src="images/transaction.png" alt="" width="30px" height="30px">
                        Transaction
                    </a>
                </div>
                <a href="./logout.php" class=" nav-side-item mt-2 ms-3 mb-5 pb-5" style="display: block;">
                    <img src="images/logout.png" alt="" width="30px" height="30px">
                    Logout
                </a>
            </nav>
            <!-- CONTENT START -->
                <div class="col-10 main-content">
                <div class="row mx-3 my-3">
                    <div class="mx-3 my-3 bg-primary col rounded-5 image-transaction-container d-flex flex-wrap p-0">
                        <img src="https://picsum.photos/1000/1000" alt="" class="" height="282px">
                        <img src="https://picsum.photos/1000/1000" alt="" class="" height="282px">
                        <img src="https://picsum.photos/1000/1000" alt="" class="" height="282px">
                        <img src="https://picsum.photos/1000/1000" alt="" class="" height="282px">

                        <!-- <img src="images/neko2.png" alt="" height="200px"> -->

                    </div>
                    <div class="mx-3 my-3 bg-primary col rounded-5  p-2">
                        <div class="h2">Senin, 19/12/2022</div>
                        <div class="fs-5">Status absensi:</div>
                        <div class="fs-5">Makan siang:</div>
                        <div class="fs-5">Catatan Guru:</div>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Doloremque molestias vitae numquam
                            commodi saepe earum animi sapiente rem consectetur eveniet. Quas sapiente fugit sunt
                            repellendus nam autem, veniam vitae ea!</p>
                        <div class="h3 rounded-5 text-end pe-4">Detail→</div>
                    </div>
                </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-OERcA2EqjJCMA?3yGxIOqMEjwtxJY7qPCqsdltbNJuaOe923Mo//f6V8Qbsw3"
            crossorigin="anonymous"></script>
</body>

</html>
