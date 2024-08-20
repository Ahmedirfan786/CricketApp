<?php
include('Header.php');

// Live channels data fetched on specific id
if (isset($_GET['id'])) {
    $id = $_GET['id'];

    $query = "SELECT * FROM livechannels WHERE id = $id";
    $result = mysqli_query($con, $query);

    if ($result && mysqli_num_rows($result) > 0) {
        $data = mysqli_fetch_assoc($result);
    }

    mysqli_free_result($result); 
}
?>

<style>
    html, body, .container-fluid, .row, .col-lg-12 {
        height: 100%;
        margin: 0;
        padding: 0;
    }
    iframe {
        height: calc(100vh - 70px); /* Adjusted to account for any header height */
        width: 100%;
        border: none;
    }
</style>

<div class="container-fluid">
    <div class="row">
        <div class="col-lg-12 p-4">
            <h3><?php echo $data['channel_name']?> <img src="<?php echo $data['channel_image']?>" width="50" height="50" alt=""></h3>
            <iframe src="<?php echo $data['channel_link'] ?>" allowfullscreen></iframe>
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
