<?php
session_start();
error_reporting(0);
if($_SESSION['username']){
    header("Location: Index.php");
}
include("Connection.php");
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <title>CricketApp Login</title>
</head>
<style>
    .divider:after,
    .divider:before {
        content: "";
        flex: 1;
        height: 1px;
        background: #eee;
    }

    .h-custom {
        height: calc(100% - 73px);
    }

    @media (max-width: 450px) {
        .h-custom {
            height: 100%;
        }
    }

    .body-bg {
        background-color: black;
    }
</style>

<body class="body-bg">
    <section class="vh-100">
        <div class="container-fluid h-custom text-white">
            <div class="row d-flex justify-content-center align-items-center h-100">
                <div class="col-md-9 col-lg-6 col-xl-5">
                    <img src="Images/Cricketlogo.png" class="img-fluid" alt="Sample image">
                </div>
                <div class="col-md-8 col-lg-6 col-xl-4 offset-xl-1">
                    <h1>Cricket App</h1>

                    <form method="POST" action="Code.php" class="mt-4">

                        <div data-mdb-input-init class="form-outline mb-4">
                            <label class="form-label">Email address</label>
                            <input type="email" name="email" class="form-control form-control-lg"
                                placeholder="Enter a valid email address" required />
                        </div>

                        <div data-mdb-input-init class="form-outline mb-3">
                            <label class="form-label">Password</label>
                            <input type="password" name="password" class="form-control form-control-lg" placeholder="Enter password" required />
                        </div>



                        <div class="text-center text-lg-start mt-4 pt-2">
                            <button type="submit" name="login" data-mdb-button-init data-mdb-ripple-init
                                class="btn btn-warning btn-lg"
                                style="padding-left: 2.5rem; padding-right: 2.5rem;">Login</button>
                        </div>

                    </form>
                </div>
            </div>
        </div>
    </section>
</body>
</html>