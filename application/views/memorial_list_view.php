
<?php
defined('BASEPATH') OR exit('No direct script access allowed');

include APPPATH . 'third_party/Parsedown.php';
include APPPATH . 'third_party/ParsedownExtra.php';
$Parsedown = new ParsedownExtra();

?>

<h2>Casualty Index</h2>

<div id="narrative"><?php echo $Parsedown->text(str_replace("%asset_url%", asset_url(), $meta->content)); 
		if($loggedIn) {
			echo "<a href=\"".base_url()."meta/edit/".$meta->id."\" class=\"btn btn-primary btn-xs\" role=\"button\" >Edit This Text</a>";
		}
		?>
</div>
<br>
<div class="panel panel-primary">
	<div class="panel-heading panel-title">Memorials</div>
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
	<div class="panel-heading"><a data-toggle="collapse" href="#collapse1" class="panel-title"><i class="fa fa-arrow-down" aria-hidden="true"></i> Other Memorials</a></div>
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

