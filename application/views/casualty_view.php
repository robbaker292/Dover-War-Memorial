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
	foreach ($casualty_data[0] as $key => $value) {
		echo "<tr>";
		echo "<td>";
		echo $key;
		echo "</td><td>";
		echo $value;
		echo "</td>";
		echo "</tr>";
	}
	foreach ($commemorations as $data) {
		echo "<tr>";
		echo "<td>";
		echo "commemorations";
		echo "</td><td>";
		echo $data->name;
		echo "</td>";
		echo "</tr>";
	}
	foreach ($regiment_data as $data) {
		echo "<tr>";
		echo "<td>";
		echo "name";
		echo "</td><td>";
		echo $data->name;
		echo "</td>";
		echo "</tr>";
	}
	foreach ($service_numbers as $data) {
		echo "<tr>";
		echo "<td>";
		echo "service number";
		echo "</td><td>";
		echo $data->service_number;
		echo "</td>";
		echo "</tr>";
	}

?>
</table>
</body>
</html>