<?php
defined('BASEPATH') OR exit('No direct script access allowed');

include APPPATH . 'third_party/Parsedown.php';
include APPPATH . 'third_party/ParsedownExtra.php';
$Parsedown = new ParsedownExtra();
?>

	<h2><?php 
		echo $casualty_data->given_name." ".$casualty_data->family_name; 
		if($loggedIn) {
			echo "<small>&nbsp;<a href=\"".base_url()."casualty/edit/".$casualty_data->id."\" class=\"btn btn-primary btn-xs\" role=\"button\"><i class=\"fa fa-pencil\" aria-hidden=\"true\"></i> Edit</a></small>";
		}

		?></h2>

	<div id="narrative">
	<?php

		echo $Parsedown->text(str_replace("%asset_url%", asset_url(), $casualty_data->narrative));
	?>
	</div>
	<br>
	<div class="panel panel-primary">
		<div class="panel-heading"><h4 class="panel-title"><a data-toggle="collapse" href="#collapse1" class="panel-title toggler"><i class="fa fa-arrow-down" aria-hidden="true"></i>Casualty Details</a></h4></div>
		<div id="collapse1" class="panel-collapse collapse">
		<table class="table table-striped">
		<?php
			if($casualty_data->recently_uploaded == 1) {
				?>
				<tr class="info"><td colspan="2"><i class="fa fa-info-circle" aria-hidden="true"></i>&nbsp;This casualty has recently been imported, so full data may not yet be available.</td></tr>
				<?php
			}

			if($casualty_data->unsure_details == 1) {
				?>
				<tr class="warning"><td colspan="2"><i class="fa fa-exclamation-triangle" aria-hidden="true"></i>&nbsp;This casualty has some unknown details.</td></tr>
				<?php
			}

		if(trim($casualty_data->given_name) != "") {
			echo "<tr><th class=\"col-sm-3\">Given Name</th><td>";
			echo "<a href=\"".base_url()."search/index/data/data/given_name=".$casualty_data->given_name."/1\">";
			echo $casualty_data->given_name;
			echo "</a>";
			echo "</td></tr>";
		}


		if(trim($casualty_data->middle_names) != "" && $casualty_data->middle_names != " ") {
			echo "<tr><th class=\"col-sm-3\">Middle Names</th><td>";
			echo "<a href=\"".base_url()."search/index/data/data/middle_names=".$casualty_data->middle_names."/1\">";
			echo $casualty_data->middle_names;
			echo "</a>";
			echo "</td></tr>";
		}

		if(trim($casualty_data->family_name) != "") {
			echo "<tr><th class=\"col-sm-3\">Family Name</th><td>";
			echo "<a href=\"".base_url()."search/index/data/data/family_name=".$casualty_data->family_name."/1\">";
			echo $casualty_data->family_name;
			echo "</a>";
			echo "</td></tr>";
		}

		if($casualty_data->civilian != "") {
			echo "<tr><th class=\"col-sm-3\">Civilian</th><td>";
			echo "<a href=\"".base_url()."search/index/data/data/civilian=".$casualty_data->civilian."/1\">";
			if($casualty_data->civilian == 0) {
				echo "No";
			} elseif($casualty_data->civilian == 1) {
				echo "Yes";
			}
			echo "</a>";
			echo "</td></tr>";
		}

		if($casualty_data->gender != "") {
			echo "<tr><th class=\"col-sm-3\">Gender</th><td>";
			echo "<a href=\"".base_url()."search/index/data/data/gender=".$casualty_data->gender."/1\">";
			if($casualty_data->gender == "M") {
				echo "Male";
			} elseif($casualty_data->gender == "F") {
				echo "Female";
			}
			echo "</a>";
			echo "</td></tr>";
		}

		if($casualty_data->date_of_birth != "" && $casualty_data->date_of_birth != "0000-00-00") {
			echo "<tr><th class=\"col-sm-3\">Date of Birth</th><td>";
			echo "<a href=\"".base_url()."search/index/data/data/date_of_birth=".$casualty_data->date_of_birth."/1\">";
			echo $casualty_data->date_of_birth;
			echo "</a>";
			echo "</td></tr>";
		}

		if($casualty_data->date_of_death != "" && $casualty_data->date_of_death != "0000-00-00") {
			echo "<tr><th class=\"col-sm-3\">Date of Death</th><td>";
			echo "<a href=\"".base_url()."search/index/data/data/date_of_death=".$casualty_data->date_of_death."/1\">";
			echo $casualty_data->date_of_death;
			echo "</a>";
			echo "</td></tr>";
		}

		if($casualty_data->final_resting_place != "") {
			echo "<tr><th class=\"col-sm-3\">Final Resting Place</th><td>";
			echo "<a href=\"".base_url()."search/index/data/data/final_resting_place=".$casualty_data->frpId."/1\">";
			echo $casualty_data->final_resting_place;
			echo "</a>";
			echo "</td></tr>";
		}

		if($casualty_data->rank != "") {
			echo "<tr><th class=\"col-sm-3\">Rank at Death</th><td>";
			echo "<a href=\"".base_url()."search/index/data/data/rank_at_death=".$casualty_data->rId."/1\">";
			echo $casualty_data->rank;
			echo "</a>";
			echo "</td></tr>";
		}

		if($casualty_data->war != "") {
			echo "<tr><th class=\"col-sm-3\">War</th><td>";
			echo "<a href=\"".base_url()."search/index/data/data/war=".$casualty_data->wId."/1\">";
			echo $casualty_data->war;
			echo "</a>";
			echo "</td></tr>";
		}

		if($casualty_data->country != "") {
			echo "<tr><th class=\"col-sm-3\">Country</th><td>";
			echo "<a href=\"".base_url()."search/index/data/data/service_country=".$casualty_data->scId."/1\">";
			echo $casualty_data->country;
			echo "</a>";
			echo "&nbsp;<img src=\"".asset_url().$casualty_data->flag."\" alt=\"".$casualty_data->country."\">";
			echo "</td></tr>";
		}

		if($casualty_data->place_of_birth != "") {
			echo "<tr><th class=\"col-sm-3\">Place Of Birth</th><td>";
			echo "<a href=\"".base_url()."search/index/data/data/place_of_birth=".$casualty_data->pbId."/1\">";
			echo $casualty_data->place_of_birth;
			echo "</a>";
			echo "</td></tr>";
		}

		if($casualty_data->last_known_address != "") {
			echo "<tr><th class=\"col-sm-3\">Last Known Address</th><td>";
			echo "<a href=\"".base_url()."search/index/data/data/last_known_address=".$casualty_data->lkaId."/1\">";
			echo $casualty_data->last_known_address;
			echo "</a>";
			echo "</td></tr>";
		}

		if($casualty_data->last_known_address_year != "" && $casualty_data->last_known_address_year != "0") {
			echo "<tr><th class=\"col-sm-3\">Last Known Address Year</th><td>";
			echo "<a href=\"".base_url()."search/index/data/data/last_known_address_year=".$casualty_data->last_known_address_year."/1\">";
			echo $casualty_data->last_known_address_year;
			echo "</a>";
			echo "</td></tr>";
		}

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
			echo "Regiment / Service";
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
		foreach ($relation_data as $data) {
			echo "<tr>";
			echo "<th>";
			echo "Relations";
			echo "</th><td>";
			echo "<a href=\"../".$data->id."\">".$data->given_name." ".$data->family_name."</a> (".$data->name.")";
			echo "</td>";
			echo "</tr>";
		}

	?>
	</table>
	</div>
	</div>

