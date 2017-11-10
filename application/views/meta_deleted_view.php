<?php
defined('BASEPATH') OR exit('No direct script access allowed');

include APPPATH . 'third_party/Parsedown.php';
include APPPATH . 'third_party/ParsedownExtra.php';
$Parsedown = new ParsedownExtra();

?>
<h2><i class="fa fa-trash" aria-hidden="true"></i> List of Deleted Items</h2>
<div class="panel panel-primary">
	<div class="panel-heading"><h4 class="panel-title"><i class="fa fa-users" aria-hidden="true"></i>&nbsp;Deleted Casualties</h4></div>
	<?php
		if(count($casualty_data) == 0) {
			?>
			<div class="panel-body">
			No deleted casualties
			</div>
			<?php
		} else {
			echo "<table class=\"table table-striped table-hover \" id=\"casualtyTable\">";
			echo "<tr><th>Name</th><th>Date of birth</th><th>Date of Death</th></tr>";
			foreach ($casualty_data as $data) {
				echo "<tr class=\"clickableRow\" data-url=\"".base_url()."/casualty/view/".$data->id."\" >";
				echo "<td><a href=\"".base_url()."casualty/view/".$data->id."\">";
				echo $data->given_name." ".$data->family_name;
				echo "</a></td><td>";
				echo $data->date_of_birth;
				echo "</td><td>";
				echo $data->date_of_death;
				echo "</td>";
				echo "</tr>";
			}
			echo "</table>";
		}
		?>
</div>

<div class="panel panel-primary">
	<div class="panel-heading"><h4 class="panel-title"><i class="fa fa-address-book-o" aria-hidden="true"></i>&nbsp;Deleted Memorials</h4></div>
	<?php
		if(count($memorial_data) == 0) {
			?>
			<div class="panel-body">
			No deleted memorials
			</div>
			<?php
		} else {
			echo "<table class=\"table table-striped table-hover \" id=\"casualtyTable\">";
			echo "<tr><th>Name</th><th>Date of birth</th><th>Date of Death</th></tr>";
			foreach ($memorial_data as $data) {
				echo "<tr class=\"clickableRow\" data-url=\"".base_url()."/memorial/view/".$data->id."\" >";
				echo "<td><a href=\"".base_url()."memorial/view/".$data->id."\">";
				echo $data->name;
				echo "</a></td>";
				echo "</tr>";
			}
			echo "</table>";
		}
		?>
</div>

<div class="panel panel-primary">
	<div class="panel-heading"><h4 class="panel-title"><i class="fa fa-info-circle" aria-hidden="true"></i>&nbsp;Deleted Articles</h4></div>
	<?php
		if(count($article_data) == 0) {
			?>
			<div class="panel-body">
			No deleted articles
			</div>
			<?php
		} else {
			echo "<table class=\"table table-striped table-hover \" id=\"casualtyTable\">";
			echo "<tr><th>Name</th></tr>";
			foreach ($article_data as $data) {
				echo "<tr class=\"clickableRow\" data-url=\"".base_url()."/article/view/".$data->id."\" >";
				echo "<td><a href=\"".base_url()."article/view/".$data->id."\">";
				echo $data->title;
				echo "</a></td>";
				echo "</tr>";
			}
			echo "</table>";
		}
		?>
</div>

<div class="panel panel-primary">
	<div class="panel-heading"><h4 class="panel-title"><i class="fa fa-calendar" aria-hidden="true"></i>&nbsp;Deleted Site Updates</h4></div>
	<?php
		if(count($update_data) == 0) {
			?>
			<div class="panel-body">
			No deleted site updates
			</div>
			<?php
		} else {
			echo "<table class=\"table table-striped table-hover \" id=\"casualtyTable\">";
			echo "<tr><th>Title</th><th>Date Posted</th></tr>";
			foreach ($update_data as $data) {
				echo "<tr class=\"clickableRow\" data-url=\"".base_url()."/siteUpdate/view/".$data->id."\" >";
				echo "<td><a href=\"".base_url()."siteUpdate/view/".$data->id."\">";
				echo $data->title;
				echo "</a></td><td>";
				echo $data->date;
				echo "</td>";
				echo "</tr>";
			}
			echo "</table>";
		}
		?>
</div>


