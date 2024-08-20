<?php

header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS");
header("Access-Control-Allow-Headers: Content-Type");
header('Content-Type: application/json'); 

include('Connection.php');
$response = array();

if ($con) {
    $sql = "SELECT * FROM crickettutorials";
    $result = mysqli_query($con, $sql);

    if ($result) {
        $i = 0;
        while ($row = mysqli_fetch_assoc($result)) {
            $response[$i]['id'] = $row['id'];
            $response[$i]['cat_id'] = $row['cat_id'];
            $response[$i]['title'] = $row['title'];
            $response[$i]['image'] = $row['image'];
            $response[$i]['video'] = $row['video'];
            $i++;
        }
        echo json_encode($response, JSON_PRETTY_PRINT);
    } else {
        echo json_encode(['error' => 'Failed to fetch data from database']);
    }
} else {
    echo json_encode(['error' => 'Failed to connect to the database']);
}

?>
