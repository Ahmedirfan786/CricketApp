<?php
include('Header.php');

if (isset($_GET['catid'])) {
    $catid = $_GET['catid'];

    $stmt = $con->prepare("SELECT * FROM crickettutorialcategories WHERE cat_id = $catid");
    $stmt->execute();
    $result = $stmt->get_result();
    $crictutcatdata = $result->fetch_assoc();

    // Close the statement
    $stmt->close();
}
?>

<div class="container-fluid">
    <div class="row">
        <div class="col-lg-12 p-5">
            <h3>Edit Cricket Tutorial Categories
                <div class="btn btn-success btn-md"><a href="crickettutorialcategoriesview.php"
                        class="text-decoration-none text-white">View</a></div>
            </h3>

            <div class="row">
                <div class="col-lg-6">
                    <form method="post" action="Code.php">
                        <input type="hidden" name="id" value="<?php echo $crictutcatdata['cat_id']?>">
                        <div class="form-group">
                            <label>Name</label>
                            <input type="text" class="form-control" name="name" value="<?php echo $crictutcatdata['cat_name']?>" required>
                        </div>
                        <div class="form-group">
                            <label>Image URL</label>
                            <input type="text" class="form-control" name="image" id="imageInput" value="<?php echo $crictutcatdata['cat_image']?>" required>
                        </div>
                        <button type="submit" name="Updatecrictutcat" class="btn btn-primary">Update</button>
                    </form>
                </div>
                <div class="col-lg-6">
                    <div class="col-lg-12">
                        <img src="<?php echo $crictutcatdata['cat_image']?>" width="400" alt="image" id="displayedImage">
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
    integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
    crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
    crossorigin="anonymous"></script>

<script>
    $(document).ready(function() {
        $('#imageInput').on('input', function() {
            var imageUrl = $(this).val();
            $('#displayedImage').attr('src', imageUrl);
        });
    });
</script>

</html>
