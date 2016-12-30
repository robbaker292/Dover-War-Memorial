<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?><!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>Welcome to CodeIgniter</title>
</head>
<body>

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