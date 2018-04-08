<?php

	function deleteUser($id) {
		//echo $id;
		include('connect.php');
		$delstring = "DELETE FROM tbl_user WHERE user_id={$id}";
		$delquery = mysqli_query($link, $delstring);
		if($delquery){
			redirect_to("../admin_index.php");
		}else{
			$message = "Uh oh, your movie could not be deleted at this time.";
			return $message;
		}
		mysqli_close($link);
	}
?>
