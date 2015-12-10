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
    
    <div class="Container">
    
    <div class="UPost">
        <h1>UPost Home</h1>
    </div>
    
    
            <?php
              // maak een query om alle tabellen op te vragen
              $query = "select * from artikel order by Created desc";

              // voer de query uit
              $result = mysql_query($query);
            ?>
            <table cellspacing="10">
                    <tr>
                        <th>Author:</th> 
                        <th>Title:</th> 
                        <th>Bron:</th> 
                        <th>Created On</th>
                    </tr>
                        <?php
                        // loop door alle rijen heen
                        while ($row = mysql_fetch_assoc($result))
                        {
                        // haal gegevens die we nodig hebben uit de rij
                        $myreddit_id = $row["Id"];
                        $myreddit_title = $row["Title"];
                        $myreddit_created = $row["Created"];
                        $myreddit_url = $row["Url"];
                        $myreddit_author = $row["Author"];
                        ?>
        
                
                    <tr>
                        <td> <?php echo $myreddit_author ?> </td>
                        <td> <?php echo $myreddit_title ?> </td>
                        <td><a class="post" href='post.php?Id=<?php echo $myreddit_id; ?>'>Klik hier om meer te lezen...</a>  </td>
                        <td> <?php echo $myreddit_created ?> </td>
                    </tr>
                    
                    <?php } ?>
           </table>
            
    </div> 
     </div>
     </div>
</body>
</html>