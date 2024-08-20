<?php
include('Header.php');
?>

<div class="container-fluid">
    <div class="row">
        <div class="col-lg-12 p-5">
            <h3>Add Cricket Goat
                <div class="btn btn-success btn-md"><a href="cricketgoatsview.php"
                        class="text-decoration-none text-white">View</a></div>
            </h3>

            <div class="row">
                <div class="col-lg-6">
                    <form method="post" action="Code.php">
                        <div class="form-group">
                            <label>Name</label>
                            <input type="text" class="form-control" name="name" required>
                        </div>
                        <div class="form-group">
                            <label>Image URL</label>
                            <input type="text" class="form-control" name="image" id="imageInput" required>
                        </div>
                        <div class="form-group">
                            <label>Country</label>
                            <select class="form-control" name="country" required>
                                <option value="australia">Australia</option>
                                <option value="afghanistan">Afghanistan</option>
                                <option value="bangladesh">Bangladesh</option>
                                <option value="india">India</option>
                                <option value="new zealand">New Zealand</option>
                                <option value="pakistan">Pakistan</option>
                                <option value="south africa">South Africa</option>
                                <option value="sri lanka">Sri Lanka</option>
                                <option value="west indies">West Indies</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Type</label>
                            <select class="form-control" name="type" required>
                                <option value="Batsmen">Batsmen</option>
                                <option value="Bowler">Bowler</option>
                                <option value="All-Rounder">All-Rounder</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Handed</label>
                            <select class="form-control" name="handed" required>
                                <option value="left-handed">Left-Handed</option>
                                <option value="right-handed">Right-Handed</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Date of Birth</label>
                            <input type="date" class="form-control" name="date_of_birth" required>
                        </div>
                        <div class="form-group">
                            <label>Biography</label>
                            <textarea class="form-control" name="biography" rows="5" required></textarea>
                        </div>
                        <div class="form-group">
                            <label>For More Link</label>
                            <input type="text" class="form-control" name="for_more_link" required>
                        </div>
                        <button type="submit" name="Addcricketgoat" class="btn btn-primary">Submit</button>
                    </form>
                </div>
                <div class="col-lg-6 p-5">
                    <div class="col-lg-12 mb-4">
                        <img src="" width="400" alt="" id="displayedImage">
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
        // Image input change listener
        $('#imageInput').on('input', function() {
            var imageUrl = $(this).val();
            $('#displayedImage').attr('src', imageUrl);
        });
    });
</script>

</html>
