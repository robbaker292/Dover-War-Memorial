<?php
defined('BASEPATH') OR exit('No direct script access allowed');

include APPPATH . 'third_party/Parsedown.php';
include APPPATH . 'third_party/ParsedownExtra.php';
$Parsedown = new ParsedownExtra();

//var_dump($updates);
?>
<h2><i class="fa fa-cogs" aria-hidden="true"></i>&nbsp;Changes from <?php echo $year;?></h2>
<?php


?>
<h6><a href="<?php echo base_url()."siteUpdate"; ?>" class="btn btn-primary"><i class="fa fa-calendar" aria-hidden="true"></i>&nbsp;View site updates</a></h6>
<div id="updates">
	
	<?php
		
		if(sizeof($updates) == 0) {
			?>
			<div class="alert alert-info" role="alert"><i class="fa fa-info-circle" aria-hidden="true"></i><strong> No changes from this year</strong></div>
			<?php
		} else {
			?>
			<table class="table table-striped table-condensed">
				<tr>
					<th>Date</th>
					<th>Type</th>
					<th>Description</th>
					<th>View</th>
				</tr>

				<?php
				foreach ($updates as $update) {
					?>
					<tr>
						<td><?php echo $update->date ?></td>
						<td><?php echo ucfirst($update->name) ?></td>
						<td><?php echo $update->description ?></td>
						<td><a href="<?php echo base_url().$update->name."/view/".$update->item_id; ?>"><i class="fa fa-arrow-right" aria-hidden="true"></i></a></td>
					</tr>
					<?php
				}
			?>
			</table>
		<?php
		}

	?>
	
</div>


<div class="panel panel-primary">
	<div class="panel-heading"><h4 class="panel-title"><i class="fa fa-clock-o" aria-hidden="true"></i>&nbsp;Previous Changes</h4></div>
	<table class="table table-striped">
		<tr><th>Year</th><th>Updates</th></tr>
		<?php
			foreach ($updateFromYear as $updateYear) {
				echo "<tr><td><a href=\"".base_url()."siteUpdate/changes/".$updateYear->year."\">".$updateYear->year."</a></td><td>".$updateYear->count."</td></tr>";
			}

		?>
	</table>
</div>

	
