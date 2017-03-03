<?php
defined('BASEPATH') OR exit('No direct script access allowed');

include APPPATH . 'third_party/Parsedown.php';
include APPPATH . 'third_party/ParsedownExtra.php';
$Parsedown = new ParsedownExtra();

//var_dump($updates);
?>
<h2>Updates from <?php echo $year;
 			if($loggedIn) {
				echo "<small>&nbsp;<a href=\"".base_url()."siteUpdate/edit/-1\" class=\"btn btn-primary btn-xs\" role=\"button\">New</a></small>";
			}
			?></h2>


<?php


?>
<div id="updates">
<?php
	foreach ($updates as $update) {
		?>
		<div>
		<h3><?php 
			echo "<a href=\"".base_url()."siteUpdate/view/".$update->id."\">".$update->title."</a>";
			if($loggedIn) {
				echo "<small>&nbsp;<a href=\"".base_url()."siteUpdate/edit/".$update->id."\" class=\"btn btn-primary btn-xs\" role=\"button\">Edit</a></small>";
			}
		?>
		</h3>
		<p><?php echo $Parsedown->text($update->content); ?></p>
		<h6><small>Posted:&nbsp;<?php echo $update->date; ?></small></h6>
		</div>
		<hr>
		<?php
	}
	if(sizeof($updates) == 0) {
		echo "No updates this year";
	}

?>
</div>


<div class="panel panel-primary">
	<div class="panel-heading">Previous Updates</div>
	<table class="table table-striped">
		<tr><th>Year</th><th>Updates</th></tr>
		<?php
			foreach ($updateFromYear as $updateYear) {
				echo "<tr><td><a href=\"".base_url()."siteUpdate/".$updateYear->year."\">".$updateYear->year."</a></td><td>".$updateYear->count."</td></tr>";
			}

		?>
	</table>
</div>

	
