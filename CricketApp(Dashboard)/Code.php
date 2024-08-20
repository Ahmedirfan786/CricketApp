<?php
session_start();
include('Connection.php');


// Login Code
if(isset($_POST['login'])){
    $email=$_POST['email'];
    $password=$_POST['password'];

    $query = "SELECT * FROM admin WHERE email = '$email' AND password = '$password'";
    $result = mysqli_query($con, $query);

    if(mysqli_num_rows($result) == 1){
        
        $row = mysqli_fetch_assoc($result);
        $username = $row['name']; 
        $userid = $row['id']; 

        session_start();
        $_SESSION['username'] = $username;
        $_SESSION['userid'] = $userid;

        echo "<script>alert('Logged In Sucessfully!');</script>";

        header('Location: Index.php');
        exit();
    } 
    else {
        echo "<script>alert('Invalid Credentails');</script>";
        header('Location: login.php');
        exit();
    }
    
}

// Profile Update Code
if (isset($_POST['updateprofile'])) {
    $userid = $_SESSION['userid'];
    $username = $_POST['username'];
    $password = $_POST['password'];

    $query = "UPDATE admin SET name = ?, password = ? WHERE id = ?";
    $stmt = $con->prepare($query);
    $stmt->bind_param("ssi", $username, $password, $userid);

    if ($stmt->execute()) {
        echo "<script>
                alert('Profile Updated Successfully!');
                window.location.href = 'logout.php';
              </script>";
    } else {
        echo "<script>
                alert('Profile Not Updated');
                window.location.href = 'manageprofile.php';
              </script>";
    }

    $stmt->close();
}


// News Blogs data insert code

if (isset($_POST['Addnewsblogs'])) {
    $title = $_POST['title'];
    $image = $_POST['image'];
    $cover_image = $_POST['cover_image'];
    $description = $_POST['description'];
    $type = $_POST['type'];

    $stmt = $con->prepare("INSERT INTO newsandblogs (title, image, cover_image, description, type) VALUES (?, ?, ?, ?, ?)");

    if ($stmt === false) {
        die('Prepare failed: ' . htmlspecialchars($con->error));
    }

    $stmt->bind_param("sssss", $title, $image, $cover_image, $description, $type);

    if ($stmt->execute()) {
        echo "<script>
                alert('Added Successfully!');
                window.location.href = 'newsandblogscreate.php';
              </script>";   
        exit();                     
    } else {
        echo "Error: " . htmlspecialchars($stmt->error);
    }

    $stmt->close();
}





//News and blogs update code
if (isset($_POST['Updatenewsblogs'])) {
    $id = $_POST['id'];
    $title = $_POST['title'];
    $image = $_POST['image'];
    $cover_image = $_POST['cover_image'];
    $description = $_POST['description'];
    $type = $_POST['type'];

    $stmt = $con->prepare("UPDATE newsandblogs SET title = ?, image = ?, cover_image = ?, description = ?, type = ? WHERE id = ?");
    $stmt->bind_param("sssssi", $title, $image, $cover_image, $description, $type, $id);
    $stmt->execute();
    $stmt->close();

     echo "<script>
            alert('Updated Successfully!');
            window.location.href = 'newsandblogsview.php';
          </script>";
    exit();
}



// Crciket Tutorial Categories data insert code

// Check if the form was submitted
if (isset($_POST['Addcrictutcat'])) {
    // Collect form data
    $name = $_POST['name'];
    $image = $_POST['image'];

    // Insert data into the database
    $sql = "INSERT INTO crickettutorialcategories (cat_name, cat_image) VALUES ('$name', '$image')";

    if ($con->query($sql) === TRUE) {
        echo "<script>
                alert('Added Successfully!');
                window.location.href = 'crickettutorialcategoriesview.php';
              </script>";   
        exit();                     
    } else {
        echo "Error: " . $sql . "<br>" . $con->error;
    }
}

// Cricket Tutorial Categories data update code


if (isset($_POST['Updatecrictutcat'])) {
    $id = $_POST['id'];
    $name = $_POST['name'];
    $image = $_POST['image'];

    $stmt = $con->prepare("UPDATE crickettutorialcategories SET cat_name = ?, cat_image = ? WHERE cat_id = ?");
    $stmt->bind_param("ssi", $name, $image, $id);
    $stmt->execute();
    $stmt->close();

    echo "<script>
            alert('Updated Successfully!');
            window.location.href = 'crickettutorialcategoriesview.php';
          </script>";
    exit();
}




// Cricket Tutorial data insert code

if (isset($_POST['Addcrickettutorial'])) {
    // Collect form data
    $title = $_POST['title'];
    $cat_id = $_POST['cat_id'];
    $image = $_POST['image'];
    $video = $_POST['video'];

    // Prepare and bind
    $stmt = $con->prepare("INSERT INTO crickettutorials (cat_id, title, image, video) VALUES (?, ?, ?, ?)");
    if ($stmt === false) {
        die('Prepare failed: ' . htmlspecialchars($con->error));
    }

    $bind = $stmt->bind_param("isss", $cat_id, $title, $image, $video);
    if ($bind === false) {
        die('Bind failed: ' . htmlspecialchars($stmt->error));
    }

    // Execute the query
    $exec = $stmt->execute();
    if ($exec === false) {
        die('Execute failed: ' . htmlspecialchars($stmt->error));
    } else {
        echo "<script>
                alert('Added Successfully!');
                window.location.href = 'crickettutorialsview.php';
              </script>";   
        exit();                     
    }

    // Close the statement
    $stmt->close();



} 

// Cricket tutorials data update code
if(isset($_POST['Updatecrickettutorial'])) {
    // Collect form data
    $id = $_POST['id'];
    $title = $_POST['title'];
    $cat_id = $_POST['cat_id'];
    $image = $_POST['image'];
    $video = $_POST['video'];

    // Prepare and bind
    $stmt = $con->prepare("UPDATE crickettutorials SET cat_id = ?, title = ?, image = ?, video = ? WHERE id = ?");
    if ($stmt === false) {
        die('Prepare failed: ' . htmlspecialchars($con->error));
    }

    $bind = $stmt->bind_param("isssi", $cat_id, $title, $image, $video, $id);
    if ($bind === false) {
        die('Bind failed: ' . htmlspecialchars($stmt->error));
    }

    // Execute the query
    $exec = $stmt->execute();
    if ($exec === false) {
        die('Execute failed: ' . htmlspecialchars($stmt->error));
    } else {
        echo "<script>
                alert('Updated Successfully!');
                window.location.href = 'crickettutorialsview.php';
              </script>";   
        exit();                     
    }

    // Close the statement
    $stmt->close();
}



// live channels data insert code


// Insert live channel data
if (isset($_POST['Addlivechannel'])) {
    // Collect form data
    $channel_name = $_POST['channel_name'];
    $channel_image = $_POST['channel_image'];
    $channel_link = $_POST['channel_link'];

    // Insert data into database
    $sql = "INSERT INTO livechannels (channel_name, channel_image, channel_link) 
            VALUES ('$channel_name', '$channel_image', '$channel_link')";

    if ($con->query($sql) === TRUE) {
        echo "<script>
                alert('Added Successfully!');
                window.location.href = 'livechannelscreate.php';
              </script>";   
        exit();                     
    } else {
        echo "Error: " . $sql . "<br>" . $con->error;
    }
}

// Live Channels data update code
if (isset($_POST['Updatelivechannel'])) {
    $id = $_POST['id'];
    $channel_name = $_POST['channel_name'];
    $channel_image = $_POST['channel_image'];
    $channel_link = $_POST['channel_link'];

    $stmt = $con->prepare("UPDATE livechannels SET channel_name = ?, channel_image = ?, channel_link = ? WHERE id = ?");
    $stmt->bind_param("sssi", $channel_name, $channel_image, $channel_link, $id);
    $stmt->execute();
    $stmt->close();

    echo "<script>
            alert('Updated Successfully!');
            window.location.href = 'livechannelsview.php';
          </script>";
    exit();
}


// Cricket Goats data insert code

if (isset($_POST['Addcricketgoat'])) {
    // Collect form data
    $name = $_POST['name'];
    $image = $_POST['image'];
    $country = $_POST['country'];
    $type = $_POST['type'];
    $handed = $_POST['handed'];
    $date_of_birth = $_POST['date_of_birth'];
    $biography = $_POST['biography'];
    $for_more_link = $_POST['for_more_link'];

    // Insert data into database
    $sql = "INSERT INTO cricketgoats (name, image, country, type, handed, date_of_birth, biography, for_more_link) 
            VALUES ('$name', '$image', '$country', '$type', '$handed', '$date_of_birth', '$biography', '$for_more_link')";

    if ($con->query($sql) === TRUE) {
        echo "<script>
                alert('Added Successfully!');
                window.location.href = 'cricketgoatscreate.php';
              </script>";   
        exit();                     
    } else {
        echo "Error: " . $sql . "<br>" . $con->error;
    }
}


// Cricket Goats data update code

if (isset($_POST['Updatecricketgoat'])) {
    // Collect form data
    $id = $_POST['id'];
    $name = $_POST['name'];
    $image = $_POST['image'];
    $country = $_POST['country'];
    $type = $_POST['type'];
    $handed = $_POST['handed'];
    $date_of_birth = $_POST['date_of_birth'];
    $biography = $_POST['biography'];
    $for_more_link = $_POST['for_more_link'];

    // Update data in database
    $sql = "UPDATE cricketgoats SET name='$name', image='$image', country='$country', type='$type', handed='$handed', date_of_birth='$date_of_birth', biography='$biography', for_more_link='$for_more_link' WHERE id='$id'";

    if ($con->query($sql) === TRUE) {
        echo "<script>
                alert('Updated Successfully!');
                window.location.href = 'cricketgoatsview.php';
              </script>";   
        exit();                     
    } else {
        echo "Error: " . $sql . "<br>" . $con->error;
    }
}



// Insert thumbnails
if (isset($_POST['AddThumbnail'])) {
    // Collect form data
    $title = $_POST['title'];
    $thumbnail_image = basename($_FILES["thumbnail_image"]["name"]);
    $target_dir = "Thumbnails/";
    $target_file = $target_dir . $thumbnail_image;

    $extension = strtolower(pathinfo($thumbnail_image,PATHINFO_EXTENSION));
    $allowed_extensions  = array("jpg","png","jpeg");



if(in_array($extension,$allowed_extensions)){
    // Move the uploaded file to the target directory
    if (move_uploaded_file($_FILES["thumbnail_image"]["tmp_name"], $target_file)) {
        // Prepare the SQL statement
        $stmt = $con->prepare("INSERT INTO thumbnails (title, thumbnail) VALUES (?, ?)");
        if ($stmt === false) {
            die('Prepare failed: ' . htmlspecialchars($con->error));
        }

        // Bind parameters to the SQL query
        $stmt->bind_param("ss", $title, $target_file);

        // Execute the query
        if ($stmt->execute()) {
            echo "<script>
                    alert('Added Successfully!');
                    window.location.href = 'thumbnailsview.php';
                  </script>";   
            exit();
        } else {
            echo "Error: " . htmlspecialchars($stmt->error);
        }

        // Close the statement
        $stmt->close();
    } else {
        echo "<script>alert('Failed to upload image.');</script>";
    }
}else{
    echo "<script>alert('Invalid file format. Only JPG, JPEG, and PNG formats are allowed.');</script>";
    echo "<script>  window.location.href = 'thumbnailsview.php';</script>";
}
}
// thumbnails update code
if (isset($_POST['UpdateThumbnail'])) {
    $id = $_POST['id'];
    $title = $_POST['title'];

    // Check if a new file is uploaded
    if (isset($_FILES["thumbnail_image"]) && $_FILES["thumbnail_image"]["error"] == 0) {
        // Get the file extension
        $thumbnail_image = basename($_FILES["thumbnail_image"]["name"]);
        $extension = strtolower(pathinfo($thumbnail_image, PATHINFO_EXTENSION));

        // Allowed extensions
        $allowed_extensions = array("jpg", "jpeg", "png");

        // Validate the file extension
        if (in_array($extension, $allowed_extensions)) {
            $target_dir = "Thumbnails/";
            $target_file = $target_dir . $thumbnail_image;

            // Move the uploaded file to the target directory
            if (move_uploaded_file($_FILES["thumbnail_image"]["tmp_name"], $target_file)) {
                // Prepare the SQL statement with the new image
                $stmt = $con->prepare("UPDATE thumbnails SET title = ?, thumbnail = ? WHERE id = ?");
                if ($stmt === false) {
                    die('Prepare failed: ' . htmlspecialchars($con->error));
                }

                // Bind parameters to the SQL query
                $stmt->bind_param("ssi", $title, $target_file, $id);

            } else {
                echo "<script>alert('Failed to upload image.');</script>";
                exit();
            }
        } else {
            // Invalid file extension
            echo "<script>alert('Invalid file format. Only JPG, JPEG, and PNG formats are allowed.');</script>";
            echo "<script>  window.location.href = 'thumbnailsview.php';</script>";
            exit();
        }
    } else {
        // No new file uploaded, update only the title
        $stmt = $con->prepare("UPDATE thumbnails SET title = ? WHERE id = ?");
        if ($stmt === false) {
            die('Prepare failed: ' . htmlspecialchars($con->error));
        }

        // Bind parameters to the SQL query
        $stmt->bind_param("si", $title, $id);
    }

    // Execute the query
    if ($stmt->execute()) {
        echo "<script>
                alert('Updated Successfully!');
                window.location.href = 'thumbnailsview.php';
              </script>";
        exit();
    } else {
        echo "Error: " . htmlspecialchars($stmt->error);
    }

    // Close the statement
    $stmt->close();
}

?>