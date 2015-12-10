<!doctype html>
            <?php
              // maak een verbinding met MySQL
              $connection = mysql_connect('localhost', 'root', 'usbw');

              // geef aan welke database we willen gebruiken
              mysql_select_db('myreddit');
            ?>

<html>
<head>
    <title>UPost</title>
    <link rel="icon" type="image/png" href="Images/HOME.png">
    <link type="text/css" rel="stylesheet" href="style.css">    
</head>
<body>
    <div class="NavButton">
        <a href="index.php"><img src="Images/HOME.png"></a>
        <a href="postcontent.php"><h2>Create a post</h2></a>
    </div>
    
    <div class="UPost">
        <h1>UPost Home</h1>
    </div>
    
    <div class="Container">
            <?php

            // get id parameter from url; localhost/post.php?Id=4
            $id = $_GET['Id'];
        
                // maak een query om alle tabellen op te vragen
              $query = "select * from artikel where id=$id";

              // voer de query uit
              $result = mysql_query($query);
            ?>
           
                        <?php
                        // loop door alle rijen heen
                        while ($row = mysql_fetch_assoc($result))
                        {
                        // haal gegevens die we nodig hebben uit de rij
                        $myreddit_id = $row["Id"];
                        $myreddit_title = $row["Title"];
                        $myreddit_created = $row["Created"];
                        $myreddit_url = $row["Url"];
                        $myreddit_summary = $row["Summary"];
                        $myreddit_author = $row["Author"];
                        ?>
        
                
                    
                        <h2><?php echo $myreddit_author ?> </h2><br>
                        <br>
                        <br><b><?php echo $myreddit_title ?></b> <br>
                        <br>
                        <p> <?php echo $myreddit_summary ?> </p<br>
                        <br>
                        <br>
                        <br>
                        <a class="post" href='<?php echo $myreddit_url; ?>'>Bron...</a>  <br>
                    
                    
                    <?php } ?>
           </table>
            
    </div>
</body>
</html>