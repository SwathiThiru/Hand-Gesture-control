<?php
Include ('connection.php');
Echo $_COOKIE['username'];
If($_SESSION[loggedin]===true || $_COOKIE['username']){
header("Location: welcome.php");
}
$login_success=0;
if(isset($_POST['submit'])){
$username=$_POST['username'];
$password=$_POST['password'];
$password_hash=md5($password, $raw_output = null);
$que="SELECT * from login_15bce0329 WHERE username='$username' and PASSWORD_HASH='$password_hash'";
$res=mysqli_query($con,$que);
$noRows=mysqli_num_rows($res);
If(($noRows>0){
$login_success=1;
$_SESSION[loggedin]=true;
if($_POST['remember']){
setcookie("username",$username, time() + (86400 * 30)); 
}
header("Location: welcome.php");
 } 
else{
$login_success=-1; 
} 
} 
?>
<html><head>
<title>Login Form</title>
<style type="text/css"> 
.green{
Color:green;
}
.red {
Color:red;
}
</style>
</head>
<body>
<div>
<a href="index.php"><button type="button">Register here</button></a>
</div>
<h1>Login</h1>
<?php
If($login_success==-1){
Echo “<h2 class='red'>Login failed! User not found.</h2>”;
}
?>
<?php
If($login_success==1){
Echo “<h2 class='green'>Login Success!</h2>”;
}
?>
<form action="#" method="POST"> 
Username: <input type="text" name="username" required/>
<br>
Password: &nbsp; <input type="password" name="password" required/>
<br>
<input type="checkbox" name="remember" value="1">Remember me
<input type="submit" value="Submit" name="submit" />
</form>
<div>
<a href="forgot.php"><button type="button">Change Password</button></a>
</div>
</body>
</html>
