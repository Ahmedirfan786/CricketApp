<?php
include("Header.php");
if(!$_SESSION['username']){
    header("Location: login.php");
}
?>

<div class="container-fluid">
    <div class="row justify-content-center">
        <div class="col-lg-6 p-3">
        <a href="newsandblogsview.php" class="text-decoration-none">
            <div class="jumbotron bg-danger text-light text-center">
                <h1 class="display-5">News And Blogs</h1>
                <img src="Images/Newsandblogslogo.png" alt="">
            </div>
        </a>
        </div>
        <div class="col-lg-6 p-3">
            <a href="Insidecrickettutorials.php" class="text-decoration-none">
            <div class="jumbotron bg-primary text-white text-center">
                <h1 class="display-5">Cricket Tutorials</h1>
                <img src="Images/Videotutorialslogo.png" height="168" alt="">
            </div>
            </a>
        </div>
        <div class="col-lg-6 p-3">
            <a href="livechannelsview.php" class="text-decoration-none">
            <div class="jumbotron bg-warning text-white text-center">
                <h1 class="display-5">Live Channels</h1>
                <img src="Images/Livechannelslogo1.png" style="border-radius:30px;" height="168" alt="">
            </div>
            </a>
        </div>
        <div class="col-lg-6 p-3">
            <a href="cricketgoatsview.php" class="text-decoration-none">
            <div class="jumbotron bg-success text-white text-center">
                <h1 class="display-5">Cricket Goats</h1>
                <img src="Images/cricketgoatslogo.png" style="border-radius:30px;" height="168" alt="">
            </div>
            </a>
        </div>
    </div>
</div>

</body>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
    integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
    crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
    crossorigin="anonymous"></script>

</html>
