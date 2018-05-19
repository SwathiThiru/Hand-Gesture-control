<?php
Include (‘connection.php’);
if(!$_SESSION['loggedin'] && !$_COOKIE['username'])
header("location:login.php");
}
?>
<html>
<head>
<title>Welcome!</title>
<style type=”text/css”>
.green{
Color:green;
}
.red{
Color:red;
}
</style></head>
<body>
<h1 class="green">Division 5

<div>
<a href="change.php"><button type="button">Change Password</button></a>
<a href="logout.php"><button type="button">Logout</button></a>
</div>
</body>
</html>
