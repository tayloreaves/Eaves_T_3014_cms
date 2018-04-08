<?php

	function single_edit($tbl,$col,$id) {
		$result = getSingle($tbl, $col, $id);
		$getResult = mysqli_fetch_array($result);
		//echo mysqli_num_fields($result);
		echo "<form action=\"phpscripts/editall.php\" method=\"post\" class=\"editForm columns small-12 medium-3\">";
		echo "<span class=\"hidden\"><input hidden name=\"tbl\" value=\"{$tbl}\">";
		echo "<input hidden name=\"col\" value=\"{$col}\">";
		echo "<input class=\"box\" name=\"id\"  value=\"{$id}\"></span>";
		for($i=0; $i<mysqli_num_fields($result); $i++) {
			$dataType = mysqli_fetch_field_direct($result,$i);
			$fieldname = $dataType -> name;
			//echo $fieldname."<br>";
			$fieldtype = $dataType -> type;
			//echo $fieldtype."<br>";
			if($fieldname != $col){
				echo "<label class=\"label\">{$fieldname}</label><br>";
				if($fieldtype != "252"){
					echo "<input class=\"box\" type=\"text\" name=\"{$fieldname}\" value=\"{$getResult[$i]}\" ><br>";
				}else{
					echo "<textarea name=\"{$fieldname}\" rows=\"10\">{$getResult[$i]}</textarea>";
				}
			}
		}
		echo "<input class=\"box\" type=\"submit\" name=\"submit\" id=\"save\" value=\"Save Content\">";
		echo "</form>";
	}
?>
