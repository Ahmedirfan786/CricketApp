<?php
include('Header.php');if (!isset($_GET['id'])) {
    echo "<script>
            alert('No channel ID provided.');
            window.location.href = 'livechannelsview.php';
          </script>";
    exit();
}

$channel_id = $_GET['id'];

// Retrieve the existing data for the given ID
$query = "SELECT * FROM livechannels WHERE id = ?";
$stmt = $con->prepare($query);
$stmt->bind_param("i", $channel_id);
$stmt->execute();
$result = $stmt->get_result();
$channel = $result->fetch_assoc();

if (!$channel) {
    echo "<script>
            alert('Channel not found.');
            window.location.href = 'livechannelsview.php';
          </script>";
    exit();
}
?>

<div class="container-fluid">
    <div class="row">
        <div class="col-lg-12 p-5">
            <h3>Edit Live Channel
                <div class="btn btn-success btn-md"><a href="livechannelsview.php"
                        class="text-decoration-none text-white">View All Channels</a></div>
            </h3>

            <div class="row">
                <div class="col-lg-6">
                    <form method="post" action="Code.php">
                        <input type="hidden" name="id" value="<?php echo htmlspecialchars($channel['id']); ?>" required>
                        <div class="form-group">
                            <label>Channel Name</label>
                            <input type="text" class="form-control" name="channel_name" value="<?php echo htmlspecialchars($channel['channel_name']); ?>" required>
                        </div>
                        <div class="form-group">
                            <label>Channel Image URL</label>
                            <input type="text" class="form-control" name="channel_image" id="channelImageInput" value="<?php echo htmlspecialchars($channel['channel_image']); ?>" required>
                        </div>
                        <div class="form-group">
                            <label>Channel Link</label>
                            <input type="text" class="form-control" name="channel_link" value="<?php echo htmlspecialchars($channel['channel_link']); ?>" required>
                        </div>
                        <button type="submit" name="Updatelivechannel" class="btn btn-primary">Update</button>
                    </form>
                </div>
                <div class="col-lg-6 p-5">
                    <div class="col-lg-12 mb-4">
                        <img src="<?php echo htmlspecialchars($channel['channel_image']); ?>" width="400" alt="" id="displayedChannelImage">
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
        // Channel image input change listener
        $('#channelImageInput').on('input', function() {
            var channelImageUrl = $(this).val();
            $('#displayedChannelImage').attr('src', channelImageUrl);
        });
    });
</script>

</html>
