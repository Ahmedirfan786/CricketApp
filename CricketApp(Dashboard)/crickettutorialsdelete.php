<?php
include('Connection.php'); // Ensure this file includes the database connection

if (isset($_GET['id'])) {
    $id = $_GET['id'];

    // Prepare the delete statement
    if ($stmt = $con->prepare("DELETE FROM crickettutorials WHERE id = ?")) {
        $stmt->bind_param("i", $id);
        $stmt->execute();

        // Check if any rows were affected
        if ($stmt->affected_rows > 0) {
            echo "<script>
                    alert('Deleted Successfully!');
                    window.location.href = 'crickettutorialsview.php';
                  </script>";
        } else {
            echo "<script>
                    alert('No record found or already deleted');
                    window.location.href = 'crickettutorialsview.php';
                  </script>";
        }

        // Close the statement
        $stmt->close();
    } else {
        echo "<script>
                alert('Failed to prepare the delete statement');
                window.location.href = 'crickettutorialsview.php';
              </script>";
    }

    // Close the connection
    $con->close();
} else {
    header('Location: crickettutorialsview.php');
    exit();
}
?>
