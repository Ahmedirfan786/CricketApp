<?php
include('Connection.php');

if (isset($_GET['catid'])) {
    $id = intval($_GET['catid']); // Convert to integer for security

    // Prepare the SQL statement to prevent SQL injection
    $stmt = $con->prepare("DELETE FROM crickettutorialcategories WHERE cat_id = ?");
    $stmt->bind_param("i", $id);
    $stmt->execute();

    if ($stmt->affected_rows > 0) {
        echo "<script>
                alert('Deleted Successfully!');
                window.location.href = 'crickettutorialcategoriesview.php';
              </script>";
    } else {
        echo "<script>
                alert('Error deleting record');
                window.location.href = 'crickettutorialcategoriesview.php';
              </script>";
    }

    $stmt->close();
    $con->close();
} else {
    header('Location: crickettutorialcategoriesview.php');
    exit();
}
?>
