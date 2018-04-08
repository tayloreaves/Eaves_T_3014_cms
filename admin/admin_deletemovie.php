<?php
	//ini_set('display_errors',1);
	//error_reporting(E_ALL);
	require_once('phpscripts/config.php');
	//confirm_logged_in();
	$tbl = "tbl_movies";
	$movies = getAll($tbl);
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

	<h1>Delete Movies</h1>
	<div id="deleteName">
	<?php
		while($row = mysqli_fetch_array($movies)) {
			echo "{$row['movies_title']}<a href=\"phpscripts/caller.php?caller_id=moviedelete&id={$row['movies_id']}\" class=\"deleteButton\">Delete Movie</a><br>";
		}
	?>
	<div id="deleteName">

	<script src="js/foundation.min.js"></script>
</body>
</html>
