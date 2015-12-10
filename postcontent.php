<!DOCTYPE HTML> 
<html>
<head>
    <title>Create Post</title>
    <style>
        .error {color: #FF0000;}
    </style>
    <link type="text/css" rel="stylesheet" href="style.css"> 
    <link rel="icon" type="image/png" href="Images/HOME.png">
</head>
<body>
     <div class="NavButton">
        <a href="index.php"><img class="HOME" src="Images/HOME.png"></a>
        <a href="postcontent.php"><h2>Create a post</h2></a>
    </div>
    <div class="Container">
    <div class="Form">
            <div class="FormContent">
            <?php
                $authorErr = $titleErr = $urlErr = $summaryErr = "";
                $author = $title = $url = $summary = "";
                if ($_SERVER["REQUEST_METHOD"] == "POST") {
                   if (empty($_POST["author"])) {
                     $authorErr = "Username is required";      
                   }else{
                       $author = $_POST["author"];
                   }
                   if (empty($_POST["title"])) {
                     $titleErr = "Title is required";
                   } else{
                       $title = $_POST["title"];
                   }

                  if (empty($_POST["url"])) {
                     $urlErr = "URL is required";
                   } else{
                       $url = $_POST["url"];
                  }

                   if (empty($_POST["summary"])) {
                     $summaryErr = "Summary is required";
                   }else{
                       $summary = $_POST["summary"];
                   }

                }

                ?>
                <h1>Create a post</h1>
                <p><span class="error">* required field.</span></p>
                <form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>"> 
                   <label for="USERNAME">Username: </label><input type="text" name="author" value="">
                   <span class="error">* <?php echo $authorErr;?></span>
                   <br><br>
                   <label for="TITLE">Title: </label><input type="text" name="title" value="">
                   <span class="error">* <?php echo $titleErr;?></span>
                   <br><br>
                   <label for="URL">URL: </label><input type="text" name="url" value="">
                   <span class="error">* <?php echo $urlErr;?></span>
                   <br><br>
                   <label for="SUMMARY">Summary: </label><textarea name="summary" rows="5" cols="40"></textarea>
                   <span class="error">* <?php echo $summaryErr;?></span>
                   <br><br>
                   <input type="submit" name="submit" value="Submit">
                </form>
                </div>
                <?php
                        //Create connection

                  $conn = mysqli_connect('localhost', 'root', 'usbw');

                  mysqli_select_db($conn, 'myreddit');
                     if (isset($_POST['submit'])){
                 // Required field names
                $required = array('author', 'title', 'url', 'summary');
                // Loop over field names, make sure each one exists and is not empty
                $error = false;
                foreach($required as $field) {
                  if (empty($_POST[$field])) {
                    $error = true;
                  }
                }
                if ($error) {
                  echo "All fields are required.";
                } else {
                $sql = "INSERT INTO artikel (author, title, url, summary)
                VALUES ('$author', '$title', '$url', '$summary')";
                    mysqli_query($conn, $sql);
            echo "Post succesfully added";
                }
                     }
                ?>
    </div>
    </div>
    </div>
</body>
</html>