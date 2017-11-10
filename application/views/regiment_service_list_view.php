<?php
defined('BASEPATH') OR exit('No direct script access allowed');

include APPPATH . 'third_party/Parsedown.php';
include APPPATH . 'third_party/ParsedownExtra.php';
$Parsedown = new ParsedownExtra();

?>
<script>
$(document).on("click", ".btn-restore", function(e) {
	var id = $(this).first().data("changeid");
	bootbox.confirm({ 
		size: "large",
		title: "<i class=\"fa fa-exclamation-triangle\" aria-hidden=\"true\"></i>&nbsp;&nbsp;Warning!",
		message: "This will restore the current Regiment/Service.",
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
				window.location.href = "<?php echo base_url()."regiment_service/restore/"; ?>"+id;
			}
		}
	});
});
</script>
<h2>List of Regiment Services <?php 
		if($loggedIn) {
			echo "<a href=\"".base_url()."regiment_service/edit/-1\" class=\"btn btn-success btn-xs\" role=\"button\"><i class=\"fa fa-pencil\" aria-hidden=\"true\"></i>  New</a>";
		}

		?></h2>

<div class="panel panel-primary">
	<div class="panel-heading">List of all Regiment Services</div>
	<table class="table table-striped">	
	<tr><th>ID</th><th>Name</th><th>Edit</th><th>Restore</th></tr>
	<?php
	foreach ($regiment_service_data as $data) {
		if($data->deleted=="1") {
			echo "<tr class=\"deletedItem\">";
		} else {
			echo "<tr>";
		}
		echo "<td><a href=\"../regiment_service/edit/".$data->id."\">";
		echo $data->id;
		echo "</a></td><td>";
		echo $data->name;
		echo "</td><td><a href=\"".base_url()."regiment_service/edit/".$data->id."\" class=\"btn btn-primary btn-xs\" role=\"button\"><i class=\"fa fa-pencil\" aria-hidden=\"true\"></i> Edit</a></td>";
		echo "<td>";
		if($data->deleted == "1") {
			?>
			<a href="#" class="btn btn-success btn-xs btn-restore" role="button" data-changeid="<?php echo $data->id ?>"><i class="fa fa-recycle" aria-hidden="true"></i> Restore</a>
			<?php
		} else {
			echo "&nbsp;";
		}
		echo "</td></tr>";
	}
	?>
	</table>
</div>
