<?php
include('Connection.php');

if (isset($_GET['id'])) {
    $id = $_GET['id'];

    $stmt = $con->prepare("DELETE FROM livechannels WHERE id = ?");
    $stmt->bind_param("i", $id);
    $stmt->execute();

    if ($stmt->affected_rows > 0) {
        echo "<script>
                alert('Deleted Successfully!');
                window.location.href = 'livechannelsview.php';
              </script>";
    } else {
        echo "<script>
                alert('Error deleting record');
                window.location.href = 'livechannelsview.php';
              </script>";
    }

    $stmt->close();
    $con->close();
} else {
    header('Location: newsandblogsview.php');
    exit();
}
?>
