<!DOCTYPE html>
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
                    <a href="./daftarmurid.php" class="dasbor nav-side-item  mt-5 ms-3" style="display: block;">
                        <img src="images/list.png" alt="" width="30px" , height="30px">
                        List Siswa
                    </a>
                    <a href="./FormTransaksi.php" class="mapel nav-side-item  mt-2 ms-3" style="display: block;">
                        <img src="images/newTransaction.png" alt="" width="30px" height="30px">
                        Add Transaction
                    </a>
                </div>
                <a href="./login.php" class=" nav-side-item mt-2 ms-3 mb-5 pb-5" style="display: block;">
                    <img src="images/logout.png" alt="" width="30px" height="30px">
                    Logout
                </a>
            </nav>
            <!-- CONTENT START -->
            <div class="col-10 main-content">
                <div class="row m-3">
                    <php>
                        <h1>Hello</h1>
                    </php>


                    <h1>Transaksi Input</h1>
                    <div class="input-group mb-3">
                        <div class="input-group-text">Kelas</div>
                        <select class="form-select" id="inputkelas" aria-label="inputkelas">
                            <option selected>Kelas 1</option>
                            <option value="1">kelas 2</option>
                            <option value="2">kelas 3</option>
                            <option value="3">kelas 4</option>
                        </select>
                    </div>
                    <div class="input-group mb-3">
                        <div class="input-group-text">Mapel</div>
                        <select class="form-select" id="inputmapel" aria-label="inputmapel">
                            <option selected>Mapel 1</option>
                            <option value="1">Mapel 2</option>
                            <option value="2">Mapel 3</option>
                            <option value="3">Mapel 4</option>
                        </select>
                    </div>
                    <div class="input-group mb-3">
                        <input type="file" class="form-control" id="inputgambar"
                            aria-describedby="inputGroupFileAddon03" aria-label="Upload">
                    </div>
                </div>
            </div>
            <!-- CONTENT END -->
        </div>


        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
            crossorigin="anonymous"></script>
</body>

</html>