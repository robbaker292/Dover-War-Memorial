<?php
defined('BASEPATH') OR exit('No direct script access allowed');

include APPPATH . 'third_party/Parsedown.php';
include APPPATH . 'third_party/ParsedownExtra.php';
$Parsedown = new ParsedownExtra();


//var_dump($update_data);
?>
<script>
$(document).ready( function() {
	$(".clickableRow").click(function() {
		console.log($(this).data("url"));
        window.location = $(this).data("url");
    });
});
</script>
<div>
	<h2><?php 
		echo $meta_data->title; 
		if($loggedIn) {
			echo "<small>&nbsp;<a href=\"".base_url()."meta/edit/".$meta_data->id."\" class=\"btn btn-primary btn-xs\" role=\"button\">Edit</a></small>";
		}

		?></h2>
	<div id="narrative">
	<?php

		echo $Parsedown->text(preprocessMarkdown($meta_data->content));
	?>
	</div>
</div>
<br>
<div class="row">
	<div class="col-md-6">
		<div class="panel panel-primary">
			<div class="panel-heading"><h4 class="panel-title"><i class="fa fa-calendar" aria-hidden="true"></i>&nbsp;Latest News</h4></div>
			<div class="panel-body">
				<h4><a href="<?php echo base_url()."siteUpdate/view/".$update_data->id; ?>"><?php echo $update_data->title; ?></a></h4>
				<div class="snippet">
					<?php echo $Parsedown->text(preprocessMarkdown($update_data->content)); ?>
				</div>
				<h4><a href="<?php echo base_url()."siteUpdate/view/".$update_data->id; ?>" class="btn btn-primary btn-md" role="button"><i class="fa fa-arrow-right" aria-hidden="true"></i>&nbsp;Read More</a></h4>
			</div>
		</div>
	</div>

	<div class="col-md-6">
		<div class="panel panel-primary">
			<div class="panel-heading"><h4 class="panel-title"><i class="fa fa-users" aria-hidden="true"></i>&nbsp;Casualties Commemorated Today</h4></div>
			<?php
				if(count($casualty_data) == 0) {
					?>
					<div class="panel-body">
					No casualties commemorated on this date
					</div>
					<?php
				} else {
					echo "<table class=\"table table-striped table-hover \" id=\"casualtyTable\">";
					echo "<tr><th>Name</th><th>Date of Death</th><th>Died</th></tr>";
					foreach ($casualty_data as $data) {
						echo "<tr class=\"clickableRow\" data-url=\"".base_url()."/casualty/view/".$data->id."\" >";
						echo "<td><a href=\"".base_url()."casualty/view/".$data->id."\">";
						echo $data->given_name." ".$data->family_name;
						echo "</a></td><td>";
						echo $data->date_of_death;
						echo "</td><td>";
						echo $data->age." years ago";
						echo "</td>";
						echo "</tr>";
					}
					echo "</table>";
				}
				?>
		</div>
	</div>
</div>