<?php
defined('BASEPATH') OR exit('No direct script access allowed');

include APPPATH . 'third_party/Parsedown.php';
include APPPATH . 'third_party/ParsedownExtra.php';
$Parsedown = new ParsedownExtra();
?>

	<h2><?php 
		echo $casualty_data->given_name." ".$casualty_data->family_name; 
		if($loggedIn) {
			echo "<small>&nbsp;<a href=\"".base_url()."casualty/edit/".$casualty_data->id."\">Edit</a></small>";
		}

		?></h2>

	<div id="narrative">
	<?php

		echo $Parsedown->text(str_replace("%asset_url%", asset_url(), $casualty_data->narrative));
	?>
	</div>
	<br>
	<div id="toggler">Click for more details <i class="fa fa-arrow-circle-down" aria-hidden="true"></i></div>
	<br>
	<div id="data">
		<?php
			if($casualty_data->recently_uploaded == 1) {
				?>
				<div class="alert alert-info" role="alert"><i class="fa fa-info-circle" aria-hidden="true"></i>&nbsp;This casualty has recently been imported, so full data may not yet be available.</div>
				<?php
			}
		?>
	<table>
	<?php
		foreach ($casualty_data as $key => $value) {
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
				echo $value."&nbsp;<img src=\"".asset_url().$casualty_data->flag."\" alt=\"".$value."\">";
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
	</div>

