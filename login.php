<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="css/main.min.css?v=<?php echo time(); ?>">
    <link rel="stylesheet" href="loginStyle.css?v=<?php echo time(); ?>">
</head>

<body>
    <div class="container-fluid d-flex justify-content-center">
        <div class="row align-items-center m-5 container-t">
            <div class="col-6 text-center">
                <img src="images/cat.png" alt="" width="600px">
            </div>
            <div class="col-6">
                <div class="login-container d-flex">
                    <div class="login d-flex flex-column align-items-center">
                        <img src="https://www.kemdikbud.go.id/main/addons/shared_addons/themes/november_theme/img/kemdikbud_64x64.png"
                            alt="" width="100px" class="m-3">
                        <h1 class="align-self-center m-3 fs-3">LOGIN</h1>
                        <form action="validation_logic.php" class="align-self-center m-3 d-flex flex-column" method="POST">
                            <label for="name"></label>
                            <input type="text" placeholder="  Username" class="input" name="username">
                            <br>
                            <label for="password"></label>
                            <input type="password" placeholder="  Password" class="input" name="password">
                            <button class="btn btn-primary p-2 m-auto w-25" type="submit" name="submit">Submit</button>
                            <div class="d-flex justify-content-center mt-5 pt-5">
                                <a href="./daftarmurid.php" class="btn btn-default fs-5">​</a>
                            </div>

                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-OERcA2EqjJCMA?3yGxIOqMEjwtxJY7qPCqsdltbNJuaOe923Mo//f6V8Qbsw3"
        crossorigin="anonymous"></script>
</body>

</html>
