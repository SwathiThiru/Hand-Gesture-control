<?php
session_start();
?>
<html>
   
   <head>
      <title>Welcome </title>
   </head>
   
   <body>
      <h1>Welcome <?php 
      if(session_id() == '') {
  echo "session not started";
}  echo "to the  User  " . $_SESSION["uname"] . ".<br>";
      
     ?></h1> 
      <h2><a href = "logout.php">Sign Out</a></h2>
   </body>
   
</html>