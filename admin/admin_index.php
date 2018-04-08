<?php
	//ini_set('display_errors',1);
	//error_reporting(E_ALL);
	require_once('phpscripts/config.php');
	confirm_logged_in();

	//ini_set('display_errors',1);
	//error_reporting(E_ALL);
	if(isset($_GET['filter'])){
		$tbl = "tbl_movies";
		$tbl2 = "tbl_genre";
		$tbl3 = "tbl_mov_genre";
		$col = "movies_id";
		$col2 = "genre_id";
		$col3 = "genre_name";
		$filter = $_GET['filter'];
		$getMovies = filterType($tbl, $tbl2, $tbl3, $col, $col2, $col3, $filter);
	}else{
		$tbl = "tbl_movies";
		$getMovies = getAll($tbl);
	}
?>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>CMS Portal</title>
<link rel="stylesheet" href="css/foundation.css">
<link rel="stylesheet" href="../admin/css/app.css">
<link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet">

</head>
<body>

	<section class="row fullWidth" id="mainNav">
<br>
		<div class="small-12 medium-9 columns" id="navigationList">
			<ul>
				<li><a href="admin_createuser.php" class="listBut">Create User</a></li>
				<li><a href="admin_edituser.php" class="listBut">Edit User</a></li>
				<li><a href="admin_deleteuser.php" class="listBut">Delete User</a></li>
				<li><a href="admin_addmovie.php" class="listBut">Add Movie</a></li>
				<li><a href="admin_editall.php" class="listBut">Edit Movie</a></li>
				<li><a href="admin_deletemovie.php" class="listBut">Delete Movie</a></li>
				<li><a href="phpscripts/caller.php?caller_id=logout" class="listBut">Sign Out</a></li>

			</ul>
		</div>
	</section>
<br>
	<?php echo "<h1>Hello {$_SESSION['user_name']}!</h1>"; ?>

	<h1>Welcome to your Admin Page</h1><br>
<br><br><br><br>

<div class="movies">
	<?php
		if(!is_string($getMovies)){
			while($row = mysqli_fetch_array($getMovies)){
				echo "<div class=\"small-12 medium-3 columns\"> <img src=\"images/{$row['movies_cover']}\" alt=\"{$row['movies_title']}\">
					<h3>{$row['movies_title']}</h3>
					<p>{$row['movies_year']}</p>
					<a href=\"details.php?id={$row['movies_id']}\" class=\"moreDetails\">More Details...</a>
					<br><br><br>
					</div> ";
			}

		}else{
			echo "<p class=\"error\">{$getMovies}</p>";
		}

	?>
</div>

	<script src="../js/foundation.min.js"></script>
</body>
</html>
