<?php
include('Header.php');
?>

<div class="container-fluid">
  <div class="row">
    <div class="col-lg-12 p-5">
      <h3>Cricket Tutorials Categories
      <div class="btn btn-danger btn-md"><a href="Api2.php" class="text-decoration-none text-white">See Api</a></div>
      <div class="btn btn-success btn-md"><a href="crickettutorialcategoriescreate.php" class="text-decoration-none text-white">Add +</a></div>
      </h3>
     
      <table class="table table-bordered table-striped">
        <thead class="bg-primary text-light">
          <tr>
            <th scope="col">Id</th>
            <th scope="col">Name</th>
            <th scope="col">Image</th>
            <th scope="col" colspan="3">Action</th>
          </tr>
        </thead>
        <tbody>
          <!-- Fetching the Cricket Tutorials category table data here -->
         <?php
         $query = "SELECT * FROM crickettutorialcategories";
         $result = $con->query($query);

         if ($result->num_rows > 0) {
            while ($row = $result->fetch_assoc()) {
              ?>
               <tr>
                <th><?php echo $row['cat_id']; ?></th>
                <td><?php echo $row['cat_name']; ?></td>
                <td><img src="<?php echo $row['cat_image']; ?>" width="60" height="60" alt=""></td>
                <td>
                  <button class="btn btn-warning"><a class="text-dark" href="crickettutorialcategoriesedit.php?catid=<?php echo $row['cat_id']; ?>" class="text-decoration-none text-white">Edit</a></button>
                  <button class="btn btn-dark" onclick="confirmDelete(<?php echo $row['cat_id']; ?>)">Delete</button>
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

<script>
function confirmDelete(catid) {
    if (confirm('Are you sure you want to delete this item with id ' + catid + '?')) {
        window.location.href = 'crickettutorialcategoriesdelete.php?catid=' + catid;
    }
}
</script>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
  integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
  integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>

</body>
</html>
