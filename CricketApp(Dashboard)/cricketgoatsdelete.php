<?php
include('Connection.php');

if (isset($_GET['id'])) {
    $id = intval($_GET['id']); 

    $stmt = $con->prepare("DELETE FROM cricketgoats WHERE id = $id");
    $stmt->execute();

    if ($stmt->affected_rows > 0) {
        echo "<script>
                alert('Deleted Successfully!');
                window.location.href = 'cricketgoatsview.php';
              </script>";
    } else {
        echo "<script>
                alert('Error deleting record');
                window.location.href = 'cricketgoatsview.php';
              </script>";
    }

    $stmt->close();
    $con->close();
} else {
    header('Location: cricketgoatsview.php');
    exit();
}
?>
