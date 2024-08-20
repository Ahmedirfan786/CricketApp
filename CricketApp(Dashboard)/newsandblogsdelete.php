<?php
include('Connection.php');

if (isset($_GET['n_bid'])) {
    $id = $_GET['n_bid'];

    $stmt = $con->prepare("DELETE FROM newsandblogs WHERE id = ?");
    $stmt->bind_param("i", $id);
    $stmt->execute();

    if ($stmt->affected_rows > 0) {
        echo "<script>
                alert('Deleted Successfully!');
                window.location.href = 'newsandblogsview.php';
              </script>";
    } else {
        echo "<script>
                alert('Error deleting record');
                window.location.href = 'newsandblogsview.php';
              </script>";
    }

    $stmt->close();
    $con->close();
} else {
    header('Location: newsandblogsview.php');
    exit();
}
?>
