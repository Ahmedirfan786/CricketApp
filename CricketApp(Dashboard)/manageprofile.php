<?php
session_start();
include('connection.php');

if(isset($_SESSION['userid'])){
    $userid= $_SESSION['userid'];

    $query="SELECT * FROM admin WHERE id=$userid";
    $result=mysqli_query($con,$query);
    $data=mysqli_fetch_assoc($result);
}

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
        integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <title>Cricket App</title>
    <title>Manage Profile</title>
</head>

<body>
    <div class="d-flex justify-content-center align-items-center" style="height: 100vh;">
        <div class="card" style="width: 18rem;">
            <h3 class="card-title bg-info text-white p-2">Manage Profile</h3>
            <div class="card-body">

                <form method="POST" action="code.php">
                    <label>Username</label>
                    <input type="text" name="username" value="<?php echo $data['name'];?>" class="form-control">

                    <label>Password</label>
                    <input type="text" name="password" value="<?php echo $data['password'];?>" class="form-control">

                    <button class="btn btn-info mt-3" name="updateprofile">Update Profile</button>
                </form>

            </div>
        </div>
    </div>

</body>

</html>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
    integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
    crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
    crossorigin="anonymous"></script>

</body>

</html>