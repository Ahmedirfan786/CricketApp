<?php
include('Header.php');

if (isset($_GET['id'])) {
    $id = $_GET['id'];

    $stmt = $con->prepare("SELECT
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
    WHERE ctt.id = ?");
    $stmt->bind_param("i", $id);
    $stmt->execute();
    $result = $stmt->get_result();
    $crictutdata = $result->fetch_assoc();

    // Close the statement
    $stmt->close();

    // Convert YouTube video URL to embed URL
    $videoUrl = $crictutdata['video'];
    $embedUrl = '';
    if (strpos($videoUrl, 'youtube.com/watch?v=') !== false) {
        $videoId = parse_url($videoUrl, PHP_URL_QUERY);
        parse_str($videoId, $params);
        $embedUrl = 'https://www.youtube.com/embed/' . $params['v'];
    } else {
        $embedUrl = $videoUrl; // Assuming other URLs are already in embed format
    }
}
?>

<div class="container-fluid">
    <div class="row p-5">
        <div class="col-lg-6">
            <h1>Cricket Tutorial <button class="btn btn-success text-white" disabled><?php echo htmlspecialchars($crictutdata['category_name']); ?></button></h1>
            <iframe width="100%" height="400" src="<?php echo htmlspecialchars($embedUrl); ?>" frameborder="0" allowfullscreen></iframe>
            <h3><?php echo htmlspecialchars($crictutdata['title']); ?></h3>
        </div>
        <div class="col-lg-6 mt-5">
            <img src="<?php echo htmlspecialchars($crictutdata['tutorial_image']); ?>" height="400" alt="">
        </div>
    </div>
</div>
</body>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
    integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
    crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
    crossorigin="anonymous"></script>

</html>
