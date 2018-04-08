<?php
	//ini_set('display_errors',1);
	//error_reporting(E_ALL);
	require_once('phpscripts/config.php');
	$id = $_SESSION['movies_id'];
	//echo $id;
	$tbl = "tbl_movies";
	$col = "movies_id";
	$popForm = getSingle($tbl, $col, $id);
	$found_movie = mysqli_fetch_array($popForm, MYSQLI_ASSOC);
	//echo $found_user;

			if(isset($_POST['submit'])) {
				$title = trim($_POST['title']);
				$cover = $_FILES['cover'];
				$year = trim($_POST['year']);
				$runtime = trim($_POST['runtime']);
				$storyline = trim($_POST['storyline']);
				$genre = trim($_POST['genList']);
				$result = editMovie($id, $title, $cover, $year, $runtime, $storyline, $genre);
					$message = $result;

					if(empty($title) || empty($cover) || empty($year) || empty($runtime) || empty($storyline) || empty($genre)) {
				$message = "Please fill in all required information";
			}

      else {
        $result = editMovie($title, $cover, $year, $runtime, $storyline, $genre);
        $message = $result;
      }
	}
?>

<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit All</title>
<link rel="stylesheet" href="css/foundation.css" />
<link rel="stylesheet" href="../admin/css/app.css">
<link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet">
</head>
<body>

	<form action="admin_index.php" method="post">
		<input type="submit" name="submit" value="Back" id="back">
	</form>

	<h1>Edit Movies</h1>

<section class="row">

<!-- Tried to make it so that I didnt have to echo every id seperately, but rather use a query to pull
all the data to edit... but couldnt get it to work without breaking -->

		<!--
			if(!is_string($getMovies)){
				$result = mysql_query("SELECT * FROM tbl_movies");
				while($id = mysql_fetch_array($result)){
					echo $id['movies_id'];
					<h3>{$row['movies_title']}</h3>
				 <p>{$row['movies_year']}</p>
				}

			}else{
				echo "<p class=\"error\">{$getMovies}</p>";
			}
		?> -->

		<?php

			echo single_edit("tbl_movies","movies_id",1);
			echo single_edit("tbl_movies","movies_id",2);
			echo single_edit("tbl_movies","movies_id",3);
			echo single_edit("tbl_movies","movies_id",4);
			echo single_edit("tbl_movies","movies_id",8);
			echo single_edit("tbl_movies","movies_id",9);
			echo single_edit("tbl_movies","movies_id",10);
			echo single_edit("tbl_movies","movies_id",11);
			echo single_edit("tbl_movies","movies_id",12);
			echo single_edit("tbl_movies","movies_id",13);
			echo single_edit("tbl_movies","movies_id",14);
			echo single_edit("tbl_movies","movies_id",15);
			echo single_edit("tbl_movies","movies_id",16);
			echo single_edit("tbl_movies","movies_id",17);
			echo single_edit("tbl_movies","movies_id",18);
			echo single_edit("tbl_movies","movies_id",19);
			echo single_edit("tbl_movies","movies_id",20);
			echo single_edit("tbl_movies","movies_id",21);
			echo single_edit("tbl_movies","movies_id",22);
			echo single_edit("tbl_movies","movies_id",23);
			echo single_edit("tbl_movies","movies_id",24);
			echo single_edit("tbl_movies","movies_id",25);
			echo single_edit("tbl_movies","movies_id",26);
			echo single_edit("tbl_movies","movies_id",27);
			echo single_edit("tbl_movies","movies_id",28);
			echo single_edit("tbl_movies","movies_id",29);
			echo single_edit("tbl_movies","movies_id",30);
			echo single_edit("tbl_movies","movies_id",31);
			//phpinfo();

		?>
</section>

	<script src="js/foundation.min.js"></script>
</body>
</html>
