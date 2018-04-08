<?php
	//ini_set('display_errors',1);
	//error_reporting(E_ALL);
	require_once('phpscripts/config.php');
	confirm_logged_in();
	if(isset($_POST['submit'])) {
		$fname = trim($_POST['fname']);
		$username = trim($_POST['username']);
		$password = trim($_POST['password']);
		$email = trim($_POST['email']);
		$userlvl = $_POST['userlvl'];
		if(empty($userlvl)){
			$message = "Please select a user level.";
		}else{
			$result = createUser($fname, $username, $password, $email, $userlvl);
			$message = $result;
		}
	}

?>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>CMS Portal</title>
<link rel="stylesheet" href="css/foundation.css" />
<link rel="stylesheet" href="../admin/css/app.css">
<link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet">
</head>
<body>

	<form action="admin_index.php" method="post">
		<input type="submit" name="submit" value="Back" id="back">
	</form>

	<h1>Create User</h1>
	<?php if(!empty($message)){echo $message;} ?>
	<form class="formLabel" action="admin_createuser.php" method="post">
	<label class="label">First Name:</label>
	<input class="input" type="text" name="fname" value="	<?php if(!empty($fname)){echo $fname;} ?>
"><br><br>

	<label class="label">Username:</label>
	<input class="input" type="text" name="username" value="	<?php if(!empty($username)){echo $username;} ?>
"><br><br>

	<label class="label">Password:</label>
	<input class="input" type="text" name="password" value="	<?php if(!empty($password)){echo $password;} ?>
"><br><br>

	<label class="label">Email:</label>
	<input class="input" type="text" name="email" value="	<?php if(!empty($email)){echo $email;} ?>
"><br><br>

	<label class="label">User Level:</label>
	<select name="userlvl">
		<option value="">Please select a user level</option>
		<option value="2">Web Admin</option>
		<option value="1">Web Master</option>
	</select><br><br>

	<input type="submit" name="submit" value="Create User">
	</form>

	<script src="js/foundation.min.js"></script>
</body>
</html>
