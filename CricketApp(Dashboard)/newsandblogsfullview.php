<?php
include('Header.php');

// News and blogs data fetched on specific id
if (isset($_GET['n_bid'])) {
    $nandbid = $_GET['n_bid'];

    $query = "SELECT * FROM newsandblogs WHERE id = $nandbid";
    $result = mysqli_query($con, $query);

    if ($result && mysqli_num_rows($result) > 0) {
        $news_blog = mysqli_fetch_assoc($result);
    }

    mysqli_free_result($result); 
}
?>


<div class="container-fluid p-5">
    <div class="row">
        <div class="col-lg-8">
            <img src="<?php echo $news_blog['cover_image']; ?>" height="350px" width="100%" alt="Image">
        </div>
        <div class="col-lg-4">
            <img src="<?php echo $news_blog['image']; ?>" height="350px" width="100%" alt="Cover Image">
        </div>
    </div>
    <div class="row">
        <div class="col-lg-12 p-4">
            <h3 class=""><?php echo $news_blog['title']; ?>
                <button class="btn btn-danger"><?php echo ucfirst($news_blog['type']); ?></button>
                <button class="btn btn-success"><?php echo $news_blog['id']; ?></button>
            </h3>
        </div>
        <div class="row">
            <div class="col-lg-12 ml-3">
                <p><?php echo nl2br($news_blog['description']); ?></p>
            </div>
        </div>
    </div>
</div>

</body>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
    integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
</html>