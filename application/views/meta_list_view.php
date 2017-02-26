<?php
defined('BASEPATH') OR exit('No direct script access allowed');

include APPPATH . 'third_party/Parsedown.php';
include APPPATH . 'third_party/ParsedownExtra.php';
$Parsedown = new ParsedownExtra();

?>
<h2>Meta Pages <?php 
		if($loggedIn) {
			echo "<a href=\"".base_url()."meta/edit/-1\" class=\"btn btn-primary btn-xs\" role=\"button\">New</a>";
		}

		?></h2>
<div id="narrative"><?php echo $Parsedown->text(str_replace("%asset_url%", asset_url(), $meta->content)); 
		if($loggedIn) {
			echo "<a href=\"".base_url()."meta/edit/".$meta->id."\" class=\"btn btn-primary btn-xs\" role=\"button\" >Edit This Text</a>";
		}
		?>
</div>
<br>
<div class="panel panel-primary">
	<div class="panel-heading">List of all meta pages</div>
	<table class="table table-striped">	
	<tr><th>ID</th><th>Title</th><th>Where used</th></tr>
	<?php
	foreach ($meta_data as $data) {
		echo "<tr>";
		echo "<td><a href=\"../meta/viewFull/".$data->id."\">";
		echo $data->id;
		echo "</a></td><td>";
		echo $data->title;
		echo "</td><td>";
		echo $data->whereUsed;
		echo "</td>";
		echo "</tr>";
	}
	?>
	</table>
</div>


