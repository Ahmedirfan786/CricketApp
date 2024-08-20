<?php
include('Header.php');

// Retrieve tutorial ID from query string
$id = isset($_GET['id']) ? intval($_GET['id']) : 0;

// Fetch the current details of the tutorial
$stmt = $con->prepare("SELECT title, cat_id, image, video FROM crickettutorials WHERE id = ?");
$stmt->bind_param("i", $id);
$stmt->execute();
$result = $stmt->get_result();

if ($result->num_rows > 0) {
    $row = $result->fetch_assoc();
} else {
    die("Tutorial not found.");
}

$stmt->close();
?>

<!DOCTYPE html>
<html>
<head>
    <title>Edit Cricket Tutorial</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
</head>
<body>

<div class="container-fluid">
    <div class="row">
        <div class="col-lg-12 p-5">
            <h3>Edit Cricket Tutorial
                <div class="btn btn-success btn-md"><a href="crickettutorialsview.php" class="text-decoration-none text-white">View All</a></div>
            </h3>

            <div class="row">
                <!-- Form in col-lg-6 -->
                <div class="col-lg-6">
                    <form method="post" action="code.php">
                        <input type="hidden" name="id" value="<?php echo $id; ?>">
                        <div class="form-group">
                            <label>Title</label>
                            <input type="text" class="form-control" name="title" value="<?php echo htmlspecialchars($row['title']); ?>" required>
                        </div>
                        <div class="form-group">
                            <label>Category</label>
                            <select class="form-control" name="cat_id" required>
                                <?php
                                // Fetch categories
                                $query = "SELECT * FROM crickettutorialcategories";
                                $result = $con->query($query);
                                while ($category = $result->fetch_assoc()) {
                                    $selected = ($category['cat_id'] == $row['cat_id']) ? 'selected' : '';
                                    echo "<option value='{$category['cat_id']}' {$selected}>{$category['cat_name']}</option>";
                                }
                                ?>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Image URL</label>
                            <input type="text" class="form-control" name="image" id="imageInput" value="<?php echo htmlspecialchars($row['image']); ?>" required>
                        </div>
                        <div class="form-group">
                            <label>Video URL</label>
                            <input type="text" class="form-control" name="video" id="videoInput" value="<?php echo htmlspecialchars($row['video']); ?>" required>
                        </div>
                        <button type="submit" name="Updatecrickettutorial" class="btn btn-primary">Update</button>
                    </form>
                </div>

                <!-- Image Display in col-lg-6 -->
                <div class="col-lg-6">
                    <div class="row mt-3">
                        <div class="col-lg-12">
                            <img src="<?php echo htmlspecialchars($row['image']); ?>" width="400" alt="" id="displayedImage" class="img-fluid">
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
