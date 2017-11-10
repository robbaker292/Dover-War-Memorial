<?php
defined('BASEPATH') OR exit('No direct script access allowed');

include APPPATH . 'third_party/Parsedown.php';
include APPPATH . 'third_party/ParsedownExtra.php';
$Parsedown = new ParsedownExtra();

//var_dump($updates);
?>
<script>
$(document).on("click", ".btn-delete", function(e) {
	var changeId = $(this).first().data("changeid");
	bootbox.confirm({ 
		size: "large",
		title: "<i class=\"fa fa-exclamation-triangle\" aria-hidden=\"true\"></i>&nbsp;&nbsp;Warning!",
		message: "This will delete the current change log item.<br>Deletions can be restored.",
		buttons: {
			confirm: {
				label: '<i class="fa fa-trash-o" aria-hidden="true"></i>&nbsp;&nbsp;Delete',
				className: 'btn-danger'
			},
			cancel: {
				label: '<i class="fa fa-ban" aria-hidden="true"></i>&nbsp;&nbsp;Cancel',
				className: 'btn-primary'
			}
		}, 
		callback: function(result){ 
			if(result) {
				window.location.href = "<?php echo base_url()."siteUpdate/deleteChangeLog/"; ?>"+changeId;
			}
		}
	});
});

$(document).on("click", ".btn-restore", function(e) {
	var changeId = $(this).first().data("changeid");
	bootbox.confirm({ 
		size: "large",
		title: "<i class=\"fa fa-exclamation-triangle\" aria-hidden=\"true\"></i>&nbsp;&nbsp;Warning!",
		message: "This will restore the current change log item.",
		buttons: {
			confirm: {
				label: '<i class="fa fa-recycle" aria-hidden="true"></i>&nbsp;&nbsp;Restore',
				className: 'btn-success'
			},
			cancel: {
				label: '<i class="fa fa-ban" aria-hidden="true"></i>&nbsp;&nbsp;Cancel',
				className: 'btn-primary'
			}
		}, 
		callback: function(result){ 
			if(result) {
				window.location.href = "<?php echo base_url()."siteUpdate/restoreChangeLog/"; ?>"+changeId;
			}
		}
	});
});
</script>

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
					<th>Id</th>
					<th>Date</th>
					<th>Type</th>
					<th>Description</th>
					<th>View</th>
					<?php
					if($loggedIn) {
						?>
					<th>Delete / <br>Restore</th>
					<?php
				}
					?>
				</tr>

				<?php
				foreach ($updates as $update) {
									
						if($update->deleted=="1") {
							if(!$loggedIn) {
								continue; //skip deleted ones if not logged in
							}
							echo "<tr class=\"deletedChange\">";
						} else {
							echo "<tr>";
						}
						
						?>
						<td><?php echo $update->id ?></td>
						<td><?php echo $update->date ?></td>
						<td><?php echo ucfirst($update->name) ?></td>
						<td><?php echo $update->description ?></td>
						<td><a href="<?php echo base_url().$update->name."/view/".$update->item_id; ?>" class="btn btn-primary btn-xs" role="button"><i class="fa fa-arrow-right" aria-hidden="true"></i></a></td>
						<?php
						if($loggedIn) {
							if($update->deleted=="1") { //if change log item is already deleted, then show restore button
								?>
								<td><a href="#" class="btn btn-success btn-xs btn-restore" role="button" data-changeid="<?php echo $update->id ?>"><i class="fa fa-recycle" aria-hidden="true"></i></a></td>
								<?php
							} else {
								?>
								<td><a href="#" class="btn btn-danger btn-xs btn-delete" role="button" data-changeid="<?php echo $update->id ?>"><i class="fa fa-trash-o" aria-hidden="true"></i></a></td>
								<?php
							}
						}
						?>
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

	
