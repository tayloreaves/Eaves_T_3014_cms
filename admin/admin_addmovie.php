<?php
	//ini_set('display_errors',1);
	//error_reporting(E_ALL);

	require_once('phpscripts/config.php');

	$tbl="tbl_genre";
	$genQuery = getAll($tbl);

	if(isset($_POST['submit'])) {
		$title = $_POST['title'];
		$cover = $_FILES['cover'];
		$year = $_POST['year'];
		$runtime = $_POST['runtime'];
		$storyline = $_POST['storyline'];
		$genre = $_POST['genList'];
		$uploadMovie = addMovie($title, $cover, $year, $runtime, $storyline, $genre);
		$message = $uploadMovie;
	}
?>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Movie</title>
<link rel="stylesheet" href="css/foundation.css" />
<link rel="stylesheet" href="../admin/css/app.css">
<link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet">
</head>
<body>

	<form action="admin_index.php" method="post">
		<input type="submit" name="submit" value="Back" id="back">
	</form>

	<h1>Add Movie</h1>
	<?php if(!empty($message)){echo $message;} ?>
	<form class="formLabel" action="admin_addmovie.php" method="post" enctype="multipart/form-data">
		<label class="label">Movie Title:</label>
		<input class="box" name="title" type="text" value=""><br><br>
		<label class="label">Movie Cover Image:</label>
		<input name="cover" type="file" value=""><br><br>
		<label class="label">Movie Year:</label>
		<input class="box" name="year" type="text" value=""><br><br>
		<label class="label">Movie Runtime:</label>
		<input class="box" name="runtime" type="text" value=""><br><br>
		<label class="label">Movie Storyline:</label>
		<input class="box" name="storyline" type="text" value=""><br><br>
		<select name="genList">
			<option value="">Please select a genre</option>
			<?php
				while($row = mysqli_fetch_array($genQuery)){
					echo "<option value=\"{$row['genre_id']}\">{$row['genre_name']}</option>";
				}
			?>
		</select><br><br><br>
		<input type="submit" name="submit" value="Add Movie" class="addMovie">
	</form>

	<script src="js/foundation.min.js"></script>
</body>
</html>
