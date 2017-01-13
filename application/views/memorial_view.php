<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?><!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>Welcome to CodeIgniter</title>
</head>
<body>
<?php
	echo "<h2>".$item_name."</h2>"; 
	echo "<div class=\"hidden\" id=\"item_id\">".$item_id."</div>"; 
?>
<table>
<?php
	foreach ($memorial_data[0] as $key => $value) {
		echo "<tr>";
		echo "<td>";
		echo $key;
		echo "</td><td>";
		echo $value;
		echo "</td>";
		echo "</tr>";
	}
	echo "<table>";

?>
<div id="warButtons" class="btn-group" data-toggle="buttons">
  <label class="btn btn-default">
    <input type="radio" name="item_<?php echo $item_id; ?>" value="1" autocomplete="off"> World War One
  </label>
  <label class="btn btn-default">
    <input type="radio" name="item_<?php echo $item_id; ?>" value="2" autocomplete="off"> World War Two
  </label>
  <label class="btn btn-default active">
    <input type="radio" name="item_<?php echo $item_id; ?>" value="0" autocomplete="off"> Both
  </label>
</div>
<br>
<div id="letterButtons" class="btn-group" data-toggle="buttons">
	<?php
		foreach(range('A','Z') as $letter) {
			if($letter == 'A') {
				echo "<label class=\"btn btn-default active \">";
			} else {
				echo "<label class=\"btn btn-default\">";
			}
			echo "<input class=\"btn-block\" type=\"radio\" name=\"letters_item_".$item_id."\" value=\"".$letter."\" autocomplete=\"off\">".$letter."";
			echo "</label>";
			?>
			<?php
		}
	?>
</div>
<?php

	echo "<tr><th>Given Name</th><th>Family Name</th><th>Date of death</th></tr>";
	foreach ($casualty_data as $data) {
		echo "<tr>";
		echo "<td><a href=\"../../casualty/view/".$data->id."\">";
		echo $data->given_name;
		echo "</a></td><td>";
		echo $data->family_name;
		echo "</td><td>";
		echo $data->date_of_death;
		echo "</td>";
		echo "</tr>";
	}
	echo "</table>";

?>
</table>
</body>
</html>