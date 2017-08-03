<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>
<h2><i class="fa fa-cogs" aria-hidden="true"></i> Recently Imported Casualties</h2>

<div class="panel panel-primary">
	<div class="panel-heading"><h4 class="panel-title"><i class="fa fa-users" aria-hidden="true"></i>&nbsp;Recently Imported Casualties</h4></div>
	<?php
		if(count($casualty_data) == 0) {
			?>
			<div class="panel-body">
			No future site updates
			</div>
			<?php
		} else {
			echo "<table class=\"table table-striped \">";
			echo "<tr><th>Name</th><th>Edit</th></tr>";
			foreach ($casualty_data as $data) {
				echo "<tr>";
				echo "<td><a href=\"".base_url()."casualty/view/".$data->id."\">";
				echo $data->given_name." ".$data->family_name;
				echo "</a></td><td>";
				echo "<a href=\"".base_url()."casualty/edit/".$data->id."\" class=\"btn btn-success btn-xs\" role=\"button\"><i class=\"fa fa-pencil\" aria-hidden=\"true\"></i> Edit</a>";
				echo "</td>";
				echo "</tr>";
			}
			echo "</table>";
		}
		?>
</div>


