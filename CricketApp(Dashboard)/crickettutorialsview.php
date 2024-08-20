<?php
include('Header.php');
?>

<div class="container-fluid">
    <div class="row">
        <div class="col-lg-12 p-5">
            <h3>Cricket Tutorials Categories
                <div class="btn btn-danger btn-md"><a href="Api3.php" class="text-decoration-none text-white">See
                        Api</a></div>
                <div class="btn btn-success btn-md"><a href="crickettutorialscreate.php"
                        class="text-decoration-none text-white">Add +</a></div>
            </h3>

            <table class="table table-bordered table-striped">
                <thead class="bg-primary text-light">
                    <tr>
                        <th scope="col">Id</th>
                        <th scope="col">Title</th>
                        <th scope="col">Category</th>
                        <th scope="col">Thumbnail</th>
                        <th scope="col" colspan="3">Action</th>
                    </tr>
                </thead>
                <tbody>
                    <!-- Fetching the Cricket Tutorials category table data here -->
                    <?php
         $query = "SELECT
    ctt.id,
    ctt.cat_id,
    ctt.title,
    ctt.image AS tutorial_image,
    ctt.video,
    ctc.cat_name AS category_name,
    ctc.cat_image AS category_image
FROM
    crickettutorials ctt
INNER JOIN
    crickettutorialcategories ctc
ON
    ctt.cat_id = ctc.cat_id 
ORDER BY
    ctt.id ASC";
         $result = $con->query($query);

         if ($result->num_rows > 0) {
            while ($row = $result->fetch_assoc()) {
              ?>
                    <tr>
                        <th>
                            <?php echo $row['id']; ?>
                        </th>
                        <td>
                            <?php echo $row['title']; ?>
                        </td>
                        <td>
                            <?php echo $row['category_name']; ?>
                        </td>
                        <td><img src="<?php echo $row['tutorial_image']; ?>" width="100" height="60" alt=""></td>
                        <td>
                        <button class="btn btn-info"><a href="crickettutorialsfullview.php?id=<?php echo $row['id']?>" class="text-decoration-none text-white">View</a></button>
                            <button class="btn btn-warning"><a class="text-dark"
                                    href="crickettutorialsedit.php?id=<?php echo $row['id']; ?>"
                                    class="text-decoration-none text-white">Edit</a></button>
                            <button class="btn btn-dark"
                                onclick="confirmDelete(<?php echo $row['id']; ?>)">Delete</button>
                        </td>
                    </tr>
                    <?php
            }
          } else {
            echo "<tr><td colspan='7'>No records found</td></tr>";
          }
          ?>
                </tbody>
            </table>
        </div>
    </div>
</div>

</body>

<script>
function confirmDelete(id) {
    if (confirm('Are you sure you want to delete this item with id ' + id + '?')) {
        window.location.href = 'crickettutorialsdelete.php?id=' + id;
    }
}
</script>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
    integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
    crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
    crossorigin="anonymous"></script>

</html>