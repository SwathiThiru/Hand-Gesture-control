<?php
$createTable= "CREATE TABLE login_15bce0329 (
 id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY, 
username VARCHAR(100) NOT NULL UNIQUE, 
password_hash CHAR(40) NOT NULL, 
PHONE VARCHAR(10)
)”;
$res=mysqli_query($con,$createTable);
If(!$res0 {
Echo "Query failed";
Die();
}
