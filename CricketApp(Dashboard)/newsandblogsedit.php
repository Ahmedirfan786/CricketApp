<?php
include('Header.php');

if (isset($_GET['n_bid'])) {
    $nandbid = $_GET['n_bid'];

    $stmt = $con->prepare("SELECT * FROM newsandblogs WHERE id = ?");
    $stmt->bind_param("i", $nandbid);
    $stmt->execute();
    $result = $stmt->get_result();
    $news_blog = $result->fetch_assoc();

    // Close the statement
    $stmt->close();
}
?>

<!DOCTYPE html>
<html>
<head>
  <title>Edit News/Blog</title>
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
    integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
</head>
<body>

<div class="container-fluid p-5">
    <div class="row">
        <div class="col-lg-12">
            <h3>Edit News/Blog</h3>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-6">
            <form method="post" action="Code.php">
                <input type="hidden" name="id" value="<?php echo $news_blog['id']; ?>">
                <div class="form-group">
                    <label>Title</label>
                    <input type="text" class="form-control" name="title" value="<?php echo $news_blog['title']; ?>" required>
                </div>
                <div class="form-group">
                    <label>Image URL</label>
                    <input type="text" class="form-control" name="image" id="imageInput" value="<?php echo $news_blog['image']; ?>" required>
                </div>
                <div class="form-group">
                    <label>Cover Image URL</label>
                    <input type="text" class="form-control" name="cover_image" id="coverImageInput" value="<?php echo $news_blog['cover_image']; ?>" required>
                </div>
                <div class="form-group">
                    <label>Description</label>
                    <textarea name="description" class="form-control" rows="5" required><?php echo $news_blog['description']; ?></textarea>
                </div>
                <div class="form-group">
                    <label>Type: </label>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="type" id="inlineRadio1" value="news" <?php if ($news_blog['type'] == 'news') echo 'checked'; ?>>
                        <label class="form-check-label" for="inlineRadio1">news</label>
                    </div>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="type" id="inlineRadio2" value="blog" <?php if ($news_blog['type'] == 'blog') echo 'checked'; ?>>
                        <label class="form-check-label" for="inlineRadio2">blog</label>
                    </div>
                </div>
                <button type="submit" name="Updatenewsblogs" class="btn btn-primary">Update</button>
            </form>
        </div>
        <div class="col-lg-6 p-5">
            <div class="col-lg-12 mb-4">
                <img src="<?php echo $news_blog['cover_image']; ?>" width="400" alt="Cover Image" id="displayedCoverImage">
            </div>
            <div class="col-lg-12">
                <img src="<?php echo $news_blog['image']; ?>" width="400" alt="Image" id="displayedImage">
            </div>
        </div>
    </div>
</div>

<script>
    $(document).ready(function() {
        $('#imageInput').on('input', function() {
            var imageUrl = $(this).val();
            $('#displayedImage').attr('src', imageUrl);
        });

        
        $('#coverImageInput').on('input', function() {
            var coverImageUrl = $(this).val();
            $('#displayedCoverImage').attr('src', coverImageUrl);
        });
    });
</script>

</body>
</html>
