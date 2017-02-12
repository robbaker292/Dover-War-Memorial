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

	<div class="panel panel-primary">
		<div class="panel-heading">Casualty Details</div>
		<table class="table table-striped">
		<?php
			if($casualty_data->recently_uploaded == 1) {
				?>
				<tr class="info"><td colspan="2"><i class="fa fa-info-circle" aria-hidden="true"></i>&nbsp;This casualty has recently been imported, so full data may not yet be available.</td></tr>
				<?php
			}
		?>
	
		<tr><th class="col-sm-3">Given Name</th><td><?php echo $casualty_data->given_name; ?></td></tr>
		<tr><th>Middle Names</th><td><?php echo $casualty_data->middle_names; ?></td></tr>
		<tr><th>Family Name</th><td><?php echo $casualty_data->family_name; ?></td></tr>
		<tr><th>Civilian</th><td><?php echo $casualty_data->civilian == 0 ? "Yes" : "No" ; ?></td></tr>
		<tr><th>Gender</th><td><?php echo $casualty_data->gender == "M" ? "Male" : "Female" ; ?></td></tr>
		<tr><th>Date of Birth</th><td><?php echo $casualty_data->date_of_birth; ?></td></tr>
		<tr><th>Date of Death</th><td><?php echo $casualty_data->date_of_death; ?></td></tr>
		<tr><th>Final Resting Place</th><td><?php echo $casualty_data->final_resting_place; ?></td></tr>
		<tr><th>Rank at Death</th><td><?php echo $casualty_data->rank; ?></td></tr>
		<tr><th>War</th><td><?php echo $casualty_data->war; ?></td></tr>
		<tr><th>Country</th><td><?php echo $casualty_data->country;
			if($casualty_data->country != "") {
				echo "&nbsp;<img src=\"".asset_url().$casualty_data->flag."\" alt=\"".$casualty_data->country."\">";
			}
		?></td></tr>
		<tr><th>Last Known Address</th><td><?php echo $casualty_data->last_known_address; ?></td></tr>
		<tr><th>Last Known Address Year</th><td><?php echo $casualty_data->last_known_address_year; ?></td></tr>
	<?php



	/*	foreach ($casualty_data as $key => $value) {
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
		}*/
		foreach ($commemorations as $data) {
			echo "<tr>";
			echo "<th>";
			echo "Commemoration Location";
			echo "</th><td>";
			echo $data->name;
			echo "</td>";
			echo "</tr>";
		}
		foreach ($regiment_data as $data) {
			echo "<tr>";
			echo "<th>";
			echo "Regiment / Service Name";
			echo "</th><td>";
			echo $data->name;
			echo "</td>";
			echo "</tr>";
		}
		foreach ($service_numbers as $data) {
			echo "<tr>";
			echo "<th>";
			echo "Service Number";
			echo "</th><td>";
			echo $data->service_number;
			echo "</td>";
			echo "</tr>";
		}

	?>
	</table>

	</div>
	</div>

