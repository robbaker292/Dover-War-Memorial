<?php
defined('BASEPATH') OR exit('No direct script access allowed');

include APPPATH . 'third_party/Parsedown.php';
include APPPATH . 'third_party/ParsedownExtra.php';
$Parsedown = new ParsedownExtra();

//var_dump($updates);
?>
<h2><i class="fa fa-calendar" aria-hidden="true"></i>&nbsp;News from <?php echo $year;
 			if($loggedIn) {
				echo "<small>&nbsp;<a href=\"".base_url()."siteUpdate/edit/-1\" class=\"btn btn-success btn-xs\" role=\"button\"><i class=\"fa fa-plus\" aria-hidden=\"true\"></i> New</a></small>";
			}
			?></h2>
<?php


?>
<h6><a href="<?php echo base_url()."siteUpdate/changes"; ?>" class="btn btn-primary"><i class="fa fa-cogs" aria-hidden="true"></i>&nbsp;View change log</a></h6>
<hr>
<div id="updates">
<?php
	foreach ($updates as $update) {
		?>
		<div>
		<h3><?php 
			echo "<a href=\"".base_url()."siteUpdate/view/".$update->id."\">".$update->title."</a>";
			if($loggedIn) {
				echo "&nbsp;<small><a href=\"".base_url()."siteUpdate/edit/".$update->id."\" class=\"btn btn-primary btn-xs\" role=\"button\"><i class=\"fa fa-pencil\" aria-hidden=\"true\"></i> Edit</a></small>";
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
		?>
		<div class="alert alert-info" role="alert"><i class="fa fa-info-circle" aria-hidden="true"></i><strong> No updates from this year</strong></div>
		<?php
	}

?>
</div>


<div class="panel panel-primary">
	<div class="panel-heading"><h4 class="panel-title"><i class="fa fa-clock-o" aria-hidden="true"></i>&nbsp;Previous Updates</h4></div>
	<table class="table table-striped">
		<tr><th>Year</th><th>Updates</th></tr>
		<?php
			foreach ($updateFromYear as $updateYear) {
				echo "<tr><td><a href=\"".base_url()."siteUpdate/".$updateYear->year."\">".$updateYear->year."</a></td><td>".$updateYear->count."</td></tr>";
			}

		?>
	</table>
</div>

	
