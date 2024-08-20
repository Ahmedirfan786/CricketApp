<?php

header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS");
header("Access-Control-Allow-Headers: Content-Type");
header('Content-Type: application/json'); 

include('Connection.php');
$response = array();

if ($con) {
    $sql = "SELECT * FROM livechannels";
    $result = mysqli_query($con, $sql);

    if ($result) {
        $i = 0;
        while ($row = mysqli_fetch_assoc($result)) {
            $response[$i]['id'] = $row['id'];
            $response[$i]['channel_name'] = $row['channel_name'];
            $response[$i]['channel_image'] = $row['channel_image'];
            $response[$i]['channel_link'] = $row['channel_link'];
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
