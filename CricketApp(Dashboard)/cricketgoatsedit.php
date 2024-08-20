<?php
include('Header.php');
include('Connection.php');

$id = $_GET['id'];
$query = "SELECT * FROM cricketgoats WHERE id='$id'";
$result = mysqli_query($con, $query);
$row = mysqli_fetch_assoc($result);
?>

<div class="container-fluid">
    <div class="row">
        <div class="col-lg-12 p-5">
            <h3>Edit Cricket GOAT
                <div class="btn btn-success btn-md"><a href="cricketgoatsview.php"
                        class="text-decoration-none text-white">View</a></div>
            </h3>

            <div class="row">
                <div class="col-lg-6">
                    <form method="post" action="Code.php">
                        <input type="hidden" name="id" value="<?php echo $row['id']; ?>">
                        <div class="form-group">
                            <label>Name</label>
                            <input type="text" class="form-control" name="name" value="<?php echo $row['name']; ?>" required>
                        </div>
                        <div class="form-group">
                            <label>Image URL</label>
                            <input type="text" class="form-control" name="image" id="imageInput" value="<?php echo $row['image']; ?>" required>
                        </div>
                        <div class="form-group">
                            <label>Country</label>
                            <select class="form-control" name="country" required>
                                <option value="australia" <?php if($row['country'] == 'australia') echo 'selected'; ?>>Australia</option>
                                <option value="afghanistan" <?php if($row['country'] == 'afghanistan') echo 'selected'; ?>>Afghanistan</option>
                                <option value="bangladesh" <?php if($row['country'] == 'bangladesh') echo 'selected'; ?>>Bangladesh</option>
                                <option value="india" <?php if($row['country'] == 'india') echo 'selected'; ?>>India</option>
                                <option value="new zealand" <?php if($row['country'] == 'new zealand') echo 'selected'; ?>>New Zealand</option>
                                <option value="pakistan" <?php if($row['country'] == 'pakistan') echo 'selected'; ?>>Pakistan</option>
                                <option value="south africa" <?php if($row['country'] == 'south africa') echo 'selected'; ?>>South Africa</option>
                                <option value="sri lanka" <?php if($row['country'] == 'sri lanka') echo 'selected'; ?>>Sri Lanka</option>
                                <option value="west indies" <?php if($row['country'] == 'west indies') echo 'selected'; ?>>West Indies</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Type</label>
                            <select class="form-control" name="type" required>
                                <option value="Batsmen" <?php if($row['type'] == 'Batsmen') echo 'selected'; ?>>Batsmen</option>
                                <option value="Bowler" <?php if($row['type'] == 'Bowler') echo 'selected'; ?>>Bowler</option>
                                <option value="All-Rounder" <?php if($row['type'] == 'All-Rounder') echo 'selected'; ?>>All-Rounder</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Handed</label>
                            <select class="form-control" name="handed" required>
                                <option value="left-handed" <?php if($row['handed'] == 'left-handed') echo 'selected'; ?>>Left-handed</option>
                                <option value="right-handed" <?php if($row['handed'] == 'right-handed') echo 'selected'; ?>>Right-handed</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Date of Birth</label>
                            <input type="text" class="form-control" name="date_of_birth" value="<?php echo $row['date_of_birth']; ?>" required>
                        </div>
                        <div class="form-group">
                            <label>Biography</label>
                            <textarea class="form-control" name="biography" rows="5"><?php echo $row['biography']; ?></textarea>
                        </div>
                        <div class="form-group">
                            <label>For More Link</label>
                            <input type="text" class="form-control" name="for_more_link" value="<?php echo $row['for_more_link']; ?>" required>
                        </div>
                        <button type="submit" name="Updatecricketgoat" class="btn btn-primary">Update</button>
                    </form>
                </div>
                <div class="col-lg-6 p-5">
                    <div class="col-lg-12 mb-4">
                        <img src="<?php echo $row['image']; ?>" width="400" alt="" id="displayedImage">
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
