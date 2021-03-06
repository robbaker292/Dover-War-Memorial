<?php
defined('BASEPATH') OR exit('No direct script access allowed');

include APPPATH . 'third_party/Parsedown.php';
include APPPATH . 'third_party/ParsedownExtra.php';
$Parsedown = new ParsedownExtra();

//var_dump($updates);
?>
<script>
$(document).on("click", ".btn-restore", function(e) {
	bootbox.confirm({ 
		size: "large",
		title: "<i class=\"fa fa-exclamation-triangle\" aria-hidden=\"true\"></i>&nbsp;&nbsp;Warning!",
		message: "This will restore the current update.",
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
				window.location.href = <?php echo "\"".base_url()."siteUpdate/restore/".$update->id."\""; ?>;
			}
		}
	});
});
</script>
		<h2><?php 
			echo $update->title;
			if($loggedIn) {
				echo "&nbsp;<small><a href=\"".base_url()."siteUpdate/edit/".$update->id."\" class=\"btn btn-primary btn-xs\" role=\"button\"><i class=\"fa fa-pencil\" aria-hidden=\"true\"></i> Edit</a></small>";
			}
		?>
		</h2>


<?php


?>
<div id="update">
<?php
if($update->deleted=="1") {
	?>
		<div class="panel panel-danger">
			<div class="panel-heading"><h4 class="panel-title"><i class="fa fa-trash" aria-hidden="true"></i>&nbsp;Deleted</h4></div>
			<div class="panel-body">
				This site update has been deleted and is not visible to logged out users. <a href="#" class="btn btn-success btn-md pull-right btn-restore" role="button"><i class="fa fa-recycle" aria-hidden="true"></i> Restore</a>
			</div>
		</div>
	<?php
}
?>
 <div id="narrative">
                <p><?php echo $Parsedown->text(preprocessMarkdown($update->content)); ?></p>
                </div>
		<h6><small>Posted:&nbsp;<?php echo $update->date; ?></small></h6>
</div>
<?php echo "<a href=\"".base_url()."siteUpdate/".$update->year."\" class=\"btn btn-primary\"><i class=\"fa fa-arrow-left\" aria-hidden=\"true\"></i> Return to all ".$update->year." updates</a>"; ?>

	
