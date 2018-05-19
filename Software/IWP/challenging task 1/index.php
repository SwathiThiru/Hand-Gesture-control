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
$que="SELECT * from login_15bce0221 WHERE username='$username' and PASSWORD_HASH='$password_hash'";
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
<div class="container-fluid">
		<div class="nbar">
			<nav class="navbar navbar-default" style="width:100%; height:100px; background-color:#003399; border-color: #1a1a1a;">
			    <div class="logoup">
					<img src="images/images.jpg" alt="logo" style="height: 100px; width: 100px;">
					<ul class="nav navbar-nav navbar-right">
     					<li><b style="color: white; text-align: left;">VIT UNIVERSITY</b></li>
    				</ul>
				</div>
  				
			</nav>
		</div>

		<div class="othernavbar">
			<div class="head2" style="display: flexbox">
				
				<div class="name" id="shopname" style="display: flexbox; margin-left: 600px;margin-top: -30px;">
					<h3 style="color: black;font-family: 'Ubuntu', sans-serif;">FORMS</h3>
					
				</div>
			</div>
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
<div class="copyright" id="copyright">
			<br>
			<br>
			<div class="row" id="copyright1" style="text-align: center;">
				<span style="color: white;">&copy;</span>&nbsp;<span style="color: white;">VIT University Ltd. 2017, All Rights reserved.</span>
			</div>
			<br>
			<br>
			<div class="footer">
				<div class="vline"></div>&nbsp;&nbsp;&nbsp;
				<p style="color: white; margin-top: 15px;">Created by SWATHI.T | 15BCE0221</p>
			</div>
		</div>
		
	</div>
</body>
</html>
