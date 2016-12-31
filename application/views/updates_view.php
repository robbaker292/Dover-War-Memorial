<?php
defined('BASEPATH') OR exit('No direct script access allowed');

include APPPATH . 'third_party/Parsedown.php';
include APPPATH . 'third_party/ParsedownExtra.php';
$Parsedown = new ParsedownExtra();

//var_dump($updates);
?>
<h2>Updates from <?php echo $year ?></h2>


<?php

	//echo $Parsedown->text($casualty_data->narrative);
?>
<div id="data">
<?php
	foreach ($updates as $update) {
		?>
		<div>
		<h3><?php echo $update->title; ?></h3>
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
<h4>Previous updates:</h4>
<div class="container">
	<table class="table table-striped table-bordered">
	<tr><th>Year</th><th>Updates</th></tr>
	<?php
		foreach ($updateFromYear as $updateYear) {
			echo "<tr><td><a href=\"".base_url()."siteUpdate/".$updateYear->year."\">".$updateYear->year."</a></td><td>".$updateYear->count."</td></tr>";
		}

	?>
	</table>
</div>