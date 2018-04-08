<?php
	//ini_set('display_errors',1);
	//error_reporting(E_ALL);
	require_once('phpscripts/config.php');
	//confirm_logged_in();
	$id = $_SESSION['user_id'];
	//echo $id;
	$tbl = "tbl_user";
	$col = "user_id";
	$popForm = getSingle($tbl, $col, $id);
	$found_user = mysqli_fetch_array($popForm, MYSQLI_ASSOC);
	//echo $found_user;

	if(isset($_POST['submit'])) {
		$fname = trim($_POST['fname']);
		$username = trim($_POST['username']);
		$password = trim($_POST['password']);
		$email = trim($_POST['email']);
		$result = editUser($id, $fname, $username, $password, $email);
			$message = $result;

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

	<h1>Edit User</h1>

	<?php if(!empty($message)){echo $message;} ?>
	<form class="formLabel" action="admin_edituser.php" method="post">
	<label class="label">First Name:</label>
	<input class="input" type="text" name="fname" value="<?php echo $found_user['user_fname']; ?>
"><br><br>

	<label class="label">Username:</label>
	<input class="input" type="text" name="username" value="<?php echo $found_user['user_name']; ?>
"><br><br>

	<label class="label">Password:</label>
	<input class="input" type="text" name="password" value="<?php echo $found_user['user_pass']; ?>
"><br><br>

	<label class="label">Email:</label>
	<input class="input" type="text" name="email" value="<?php echo $found_user['user_email']; ?>
"><br><br>
	<input type="submit" name="submit" value="Edit Account" class="editUser">
	</form>

	<script src="js/foundation.min.js"></script>
</body>
</html>
