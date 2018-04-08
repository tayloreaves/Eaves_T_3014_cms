<?php
	require_once('phpscripts/config.php');
	$ip = $_SERVER['REMOTE_ADDR'];
	//echo $ip;


	if(isset($_POST['submit'])){
		$username = trim($_POST['username']);
		$password = trim($_POST['password']);

		if($username !== "" && $password !== "") {
			$result = logIn($username, $password, $ip);
			$message = $result;
		}else{
			$message = "Please fill in the required fields";
		}
	}
?>

<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>CMS Portal Login</title>
<link rel="stylesheet" href="css/foundation.css">
<link rel="stylesheet" href="../admin/css/app.css">
<link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet">
</head>
<body>
<br><br><br>
	<h1>Admin Login</h1>
	<p class="errorTxt">
	<?php if(!empty($message)){echo $message;} ?>
</p>
	<form class="formLabel" action="admin_login.php" method="post">
		<label class="label">Username:</label>
		<input class="input" type="text" name="username" value="" placeholder="Username" id="username">
		<br>
		<label class="label">Password:</label>
		<input class="input" type="text" name="password" value="" placeholder="Password" id="password">
		<br>
		<input type="submit" name="submit" value="Login" id="login">
	</form>

	<script src="js/foundation.min.js"></script>
</body>
</html>
