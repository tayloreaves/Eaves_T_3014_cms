<?php


	function deleteMovie($id) {
		//echo $id;
		include('connect.php');
		$delstring = "DELETE FROM tbl_movies WHERE movies_id={$id}";
		$delquery = mysqli_query($link, $delstring);
		if($delquery){
			redirect_to("../admin_index.php");
		}else{
			$message = "Shoot, we were unable to delete this movie.";
			return $message;
		}
		mysqli_close($link);
	}
?>
