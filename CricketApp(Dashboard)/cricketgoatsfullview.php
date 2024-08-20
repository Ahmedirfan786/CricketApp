<?php
include('Header.php');

// Cricket Goats data fetched on specific id
if (isset($_GET['id'])) {
    $id = $_GET['id'];

    $query = "SELECT * FROM cricketgoats WHERE id = $id";
    $result = mysqli_query($con, $query);

    if ($result && mysqli_num_rows($result) > 0) {
        $data = mysqli_fetch_assoc($result);
    }

    mysqli_free_result($result); 
}
?>


<?php
            if($data['country'] == 'australia'){
                $countryimage="https://upload.wikimedia.org/wikipedia/commons/8/88/Flag_of_Australia_%28converted%29.svg";
            }
            elseif($data['country'] == 'afghanistan'){
                $countryimage="https://cdn.britannica.com/40/5340-004-B25ED5CF/Flag-Afghanistan.jpg";
            }
            elseif($data['country'] == 'bangladesh'){
                $countryimage="https://cdn.britannica.com/67/6267-004-10A21DF0/Flag-Bangladesh.jpg";
            }
            elseif($data['country'] == 'india'){
                $countryimage="https://cdn.britannica.com/97/1597-004-05816F4E/Flag-India.jpg";
            }
            elseif($data['country'] == 'new zealand'){
                $countryimage="https://cdn.britannica.com/17/3017-050-CD9032F3/Flag-New-Zealand.jpg";
            }
            elseif($data['country'] == 'pakistan'){
                $countryimage="https://upload.wikimedia.org/wikipedia/commons/thumb/3/32/Flag_of_Pakistan.svg/1200px-Flag_of_Pakistan.svg.png";
            }
            elseif($data['country'] == 'south africa'){
                $countryimage="https://media.istockphoto.com/id/936590950/vector/south-african-national-flag-official-flag-of-south-africa-accurate-colors-true-color.jpg?s=612x612&w=0&k=20&c=PBOecPuAgv-p-dx7xJxHGIUXJ1ZmwqTCBCEYMMkUgkU=";
            }
            elseif($data['country'] == 'sri lanka'){
                $countryimage="https://upload.wikimedia.org/wikipedia/commons/thumb/1/11/Flag_of_Sri_Lanka.svg/800px-Flag_of_Sri_Lanka.svg.png";
            }
            elseif($data['country'] == 'west indies'){
                $countryimage="https://blog.daraz.pk/wp-content/uploads/2021/10/West-Indies-Flag.png";
            }
            ?>
            
<div class="container-fluid p-5 bg-light">
    <div class="row mb-4">
        <div class="col-lg-12 text-center">
            <h2 class="text-dark"><?php echo $data['name']?> 
            <img src="<?php echo $countryimage;?>" width="60px" height="40px" alt=""></h2>
        </div>
    </div>
    <div class="row mb-4">
        <div class="col-lg-6">
            <img src="<?php echo $data['image']?>" alt="<?php echo $data['name']?>" class="img-fluid rounded shadow">
        </div>
        <div class="col-lg-6 p-5 bg-white rounded shadow">
            <p><b>Name:</b> <?php echo $data['name']?></p>
            <p><b>Country:</b> <?php echo $data['country']?></p>
            <p><b>Type:</b> <?php echo $data['type']?></p>
            <p><b>Handed:</b> <?php echo $data['handed']?></p>
            <p><b>Date of Birth:</b> <?php echo $data['date_of_birth']?></p>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-12 p-4 bg-white rounded shadow">
            <h4 class="text-primary">Biography</h4>
            <p><?php echo $data['biography']?></p>
            <h6 class="text-success">For more info</h6>
            <p><a href="<?php echo $data['for_more_link']?>" class="btn btn-primary">Click Here</a></p>
        </div>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
        crossorigin="anonymous"></script>
</body>
</html>
