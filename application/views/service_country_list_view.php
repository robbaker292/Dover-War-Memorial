<?php
defined('BASEPATH') OR exit('No direct script access allowed');

include APPPATH . 'third_party/Parsedown.php';
include APPPATH . 'third_party/ParsedownExtra.php';
$Parsedown = new ParsedownExtra();

?>
<h2>List of Service Countries <?php 
		if($loggedIn) {
			echo "<a href=\"".base_url()."service_country/edit/-1\" class=\"btn btn-success btn-xs\" role=\"button\"><i class=\"fa fa-pencil\" aria-hidden=\"true\"></i>  New</a>";
		}

		?></h2>

<div class="panel panel-primary">
	<div class="panel-heading">List of all Service Countries</div>
	<table class="table table-striped">	
	<tr><th>ID</th><th>Name</th><th>Edit</th></tr>
	<?php
	foreach ($service_country_data as $data) {
		echo "<tr>";
		echo "<td><a href=\"../service_country/edit/".$data->id."\">";
		echo $data->id;
		echo "</a></td><td>";
		echo $data->name;
		echo "</td><td><a href=\"".base_url()."service_country/edit/".$data->id."\" class=\"btn btn-primary btn-xs\" role=\"button\"><i class=\"fa fa-pencil\" aria-hidden=\"true\"></i> Edit</a></td>";
		echo "</tr>";
	}
	?>
	</table>
</div>
