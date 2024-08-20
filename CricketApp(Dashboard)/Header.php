<?php
session_start();
include('Connection.php');
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">    <title>Cricket App</title>
</head>
<style>
    .body-bg{
        background-color:white;
    }
</style>
<body class="body-bg">
<nav class="navbar navbar-expand-lg navbar-dark bg-info">
<a class="navbar-brand" href="Index.php">
    <img src="Images/Cricketlogo.png" width="35" height="35" class="d-inline-block align-top" alt="" loading="lazy">
    <b><i>CricketApp</i></b>  
  </a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav ml-auto">
      <li class="nav-item dropdown mr-4">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
        <img src="Images/adminlogo.jpg" class="rounded-circle" style="width: 30px;"
        alt="Avatar" />
            <?php echo $_SESSION['username']; ?>
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
          <a class="dropdown-item" href="manageprofile.php">Manage Profile</a>
          <a class="dropdown-item" href="thumbnailsview.php">Manage Thumbnails</a>
          <a class="dropdown-item" href="logout.php">Logout</a>
        </div>
      </li>
    </ul>
  </div>
</nav>
</nav>