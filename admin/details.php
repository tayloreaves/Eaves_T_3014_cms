<?php
	require_once('phpscripts/config.php');
	if(isset($_GET['id'])){
		$id = $_GET['id'];
		$tbl = "tbl_movies";
		$col = "movies_id";
		$getSingle = getSingle($tbl, $col, $id);
	}
?>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>Details</title>
<link rel="stylesheet" href="css/foundation.css" />
<link rel="stylesheet" href="../admin/css/app.css">
<link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet">
</head>
<body>

	<form action="admin_index.php" method="post">
		<input type="submit" name="submit" value="Back" id="back">
	</form>
<section class="row">
	<?php
		if(!is_string($getSingle)){
			$row = mysqli_fetch_array($getSingle);
			echo "<img src=\"images/{$row['movies_cover']}\" alt=\"{$row['movies_title']}\" class=\"detailsImage\">
				<h2>{$row['movies_title']} - {$row['movies_year']} - {$row['movies_runtime']} </h2>
				<p class=\"movDesc\">{$row['movies_storyline']} </p>";
		}else{
			echo "<p class=\"error\">{$getSingle}</p>";
		}
	?>
</section>
</body>
</html>
