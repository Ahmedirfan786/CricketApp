<?php

header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS");
header("Access-Control-Allow-Headers: Content-Type");
header('Content-Type: application/json'); 

include('Connection.php');
$response = array();

if ($con) {
    $sql = "SELECT * FROM cricketgoats";
    $result = mysqli_query($con, $sql);

    if ($result) {
        $i = 0;
        while ($row = mysqli_fetch_assoc($result)) {
            $response[$i]['id'] = $row['id'];
            $response[$i]['name'] = $row['name'];
            $response[$i]['image'] = $row['image'];
            $response[$i]['country'] = $row['country'];
            $response[$i]['type'] = $row['type'];
            $response[$i]['handed'] = $row['handed'];
            $response[$i]['date_of_birth'] = $row['date_of_birth'];
            $response[$i]['biography'] = $row['biography'];
            $response[$i]['for_more_link'] = $row['for_more_link'];
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
