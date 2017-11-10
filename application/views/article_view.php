<?php
defined('BASEPATH') OR exit('No direct script access allowed');

include APPPATH . 'third_party/Parsedown.php';
include APPPATH . 'third_party/ParsedownExtra.php';
$Parsedown = new ParsedownExtra();

?>
<script>
$(document).on("click", ".btn-restore", function(e) {
	bootbox.confirm({ 
		size: "large",
		title: "<i class=\"fa fa-exclamation-triangle\" aria-hidden=\"true\"></i>&nbsp;&nbsp;Warning!",
		message: "This will restore the current article.",
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
				window.location.href = <?php echo "\"".base_url()."article/restore/".$article_data->id."\""; ?>;
			}
		}
	});
});
</script>
	<h2><?php 
		echo $article_data->title; 
		if($loggedIn) {
			echo "<small>&nbsp;<a href=\"".base_url()."article/edit/".$article_data->id."\" class=\"btn btn-primary btn-xs\" role=\"button\"><i class=\"fa fa-pencil\" aria-hidden=\"true\"></i> Edit</a></small>";
		}

		?></h2>
<?php
if($article_data->deleted=="1") {
	?>
		<div class="panel panel-danger">
			<div class="panel-heading"><h4 class="panel-title"><i class="fa fa-trash" aria-hidden="true"></i>&nbsp;Deleted</h4></div>
			<div class="panel-body">
				This article has been deleted and is not visible to logged out users. <a href="#" class="btn btn-success btn-md pull-right btn-restore" role="button"><i class="fa fa-recycle" aria-hidden="true"></i> Restore</a>
			</div>
		</div>
	<?php
}
?>
<div id="narrative">
<?php

	echo $Parsedown->text(preprocessMarkdown($article_data->content));
?>
</div>
<h6>Posted:&nbsp;<?php echo $article_data->posted_date; ?></h6>