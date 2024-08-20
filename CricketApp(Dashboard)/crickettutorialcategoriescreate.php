<?php
    include('Header.php');
    ?>

    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12 p-5">
                <h3>Add Cricket Tutorial Categories
                    <div class="btn btn-success btn-md"><a href="crickettutorialcategoriesview.php"
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
                        <button type="submit" name="Addcrictutcat" class="btn btn-primary">Submit</button>
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
