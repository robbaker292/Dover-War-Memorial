
<?php
defined('BASEPATH') OR exit('No direct script access allowed');

include APPPATH . 'third_party/Parsedown.php';
include APPPATH . 'third_party/ParsedownExtra.php';
$Parsedown = new ParsedownExtra();

?>

<h2><i class="fa fa-users" aria-hidden="true"></i>&nbsp;Casualty Index <?php 
		if($loggedIn) {
			echo "<a href=\"".base_url()."memorial/edit/-1\" class=\"btn btn-success btn-xs\" role=\"button\"><i class=\"fa fa-plus\" aria-hidden=\"true\"></i> New Memorial</a>";
			echo "<a href=\"".base_url()."casualty/edit/-1\" class=\"btn btn-success btn-xs\" role=\"button\"><i class=\"fa fa-plus\" aria-hidden=\"true\"></i> New Casualty</a>";
		}

		?></h2>

<div id="narrative"><?php echo $Parsedown->text(str_replace("%asset_url%", asset_url(), $meta->content)); 
		if($loggedIn) {
			echo "<a href=\"".base_url()."meta/edit/".$meta->id."\" class=\"btn btn-primary btn-xs\" role=\"button\" ><i class=\"fa fa-pencil\" aria-hidden=\"true\"></i> Edit This Text</a>";
		}
		?>
</div>
<br>
<div class="panel panel-primary">
	<div class="panel-heading"><h4 class="panel-title"><i class="fa fa-address-book-o" aria-hidden="true"></i>&nbsp;Memorials</h4></div>
	<table class="table table-striped">
		<tr><th>Memorial</th><th>Casualties</th></tr>
		<?php
			foreach ($mainMemorials as $memorial) {
				echo "<tr><td><a href=\"".base_url()."memorial/view/".$memorial->id."\">".$memorial->name."</a></td><td>".$memorial->casualties."</td></tr>";
			}
		?>
	</table>
</div>

<div class="panel panel-primary">
	<div class="panel-heading"><h4 class="panel-title"><a data-toggle="collapse" href="#collapse1" class="panel-title toggler"><i class="fa fa-arrow-down" aria-hidden="true"></i>Other Memorials</a></h4></div>
	<div id="collapse1" class="panel-collapse collapse">
		<table class="table table-striped">
			<tr><th>Memorial</th><th>Casualties</th></tr>
			<?php
				foreach ($otherMemorials as $memorial) {
					echo "<tr><td><a href=\"".base_url()."memorial/view/".$memorial->id."\">".$memorial->name."</a></td><td>".$memorial->casualties."</td></tr>";
				}
			?>
		</table>	

	</div>	
</div>

