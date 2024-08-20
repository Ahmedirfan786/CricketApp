<?php
include('Header.php');
?>

<div class="container-fluid">
    <div class="row">
        <div class="col-lg-12 p-5">
            <h3>Add Cricket Tutorial
                <div class="btn btn-success btn-md"><a href="crickettutorialsview.php" class="text-decoration-none text-white">View</a></div>
            </h3>

            <div class="row">
                <!-- Form in col-lg-6 -->
                <div class="col-lg-6">
                    <form method="post" action="code.php">
                        <div class="form-group">
                            <label>Title</label>
                            <input type="text" class="form-control" name="title" required>
                        </div>
                        <div class="form-group">
                            <label>Category</label>
                            <select class="form-control" name="cat_id" required>
                                <?php
                                // Fetch categories
                                $query = "SELECT * FROM crickettutorialcategories";
                                $result = $con->query($query);
                                while ($row = $result->fetch_assoc()) {
                                    echo "<option value='{$row['cat_id']}'>{$row['cat_name']}</option>";
                                }
                                ?>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Image URL</label>
                            <input type="text" class="form-control" name="image" id="imageInput" required>
                        </div>
                        <div class="form-group">
                            <label>Video URL</label>
                            <input type="text" class="form-control" name="video" id="videoInput" required>
                        </div>
                        <button type="submit" name="Addcrickettutorial" class="btn btn-primary">Submit</button>
                    </form>
                </div>

                <!-- Image Display in col-lg-6 -->
                <div class="col-lg-6">
                    <div class="row mt-3">
                        <div class="col-lg-12">
                            <img src="" width="400" alt="" id="displayedImage" class="img-fluid">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>
<script>
    $(document).ready(function() {
        $('#imageInput').on('input', function() {
            var imageUrl = $(this).val();
            $('#displayedImage').attr('src', imageUrl);
        });
    });
</script>

</body>
</html>
