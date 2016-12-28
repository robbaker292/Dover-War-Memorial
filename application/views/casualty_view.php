<?php
defined('BASEPATH') OR exit('No direct script access allowed');

include APPPATH . 'third_party/Parsedown.php';
$Parsedown = new Parsedown();

?>
<h1><?php echo $casualty_data[0]->given_name." ".$casualty_data[0]->family_name ?></h1>

<table>
<?php
	foreach ($casualty_data[0] as $key => $value) {
		if($key == "flag") {
			continue;
		}

		echo "<tr>";
		echo "<td>";
		echo $key;
		echo "</td><td>";
		if ($key == "narrative") {
			echo $Parsedown->text($value);
		} else if ($key == "country") {
			echo $value."&nbsp;<img src=\"".asset_url().$casualty_data[0]->flag."\" alt=\"".$value."\">";
		} else {
			echo $value;
		}		
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