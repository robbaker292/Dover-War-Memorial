<?php
defined('BASEPATH') OR exit('No direct script access allowed');

include APPPATH . 'third_party/Parsedown.php';
include APPPATH . 'third_party/ParsedownExtra.php';
$Parsedown = new ParsedownExtra();
?>
<?php
	echo "<h2>".$item_name;
		if($loggedIn) {
			echo "&nbsp;<small><a href=\"".base_url()."memorial/edit/".$item_id."\" class=\"btn btn-primary btn-xs\" role=\"button\"><i class=\"fa fa-pencil\" aria-hidden=\"true\"></i> Edit</a></small>";
		}
	echo "</h2>"; 
	echo "<div class=\"hidden\" id=\"item_id\">".$item_id."</div>"; 
	echo "<div class=\"hidden\" id=\"lat\">".$memorial_data->lat."</div>"; 
	echo "<div class=\"hidden\" id=\"lon\">".$memorial_data->lon."</div>"; 
?>
	<div id="info">
		<div id="map" class="pull-right"></div>
		<div id="narrative">
		<?php

			echo $Parsedown->text(str_replace("%asset_url%", asset_url(), $memorial_data->narrative));
		?>
		</div>
		<h4>Location: <?php echo $memorial_data->location ?></h4>	
	</div>

<div class="panel panel-primary">
	<div class="panel-heading"><h4 class="panel-title"><i class="fa fa-users" aria-hidden="true"></i>&nbsp;Commemorated Here</h4></div>
	<div class="panel-body">
		<div class="text-center">
			<div id="warButtons" class="btn-group middle" data-toggle="buttons">
			  <label class="btn btn-default">
			    <input type="radio" name="item_<?php echo $item_id; ?>" value="1" autocomplete="off"> World War One
			  </label>
			  <label class="btn btn-default">
			    <input type="radio" name="item_<?php echo $item_id; ?>" value="2" autocomplete="off"> World War Two
			  </label>
			  <label class="btn btn-default active">
			    <input type="radio" name="item_<?php echo $item_id; ?>" value="0" autocomplete="off"> All
			  </label>
			</div>
			<p></p>
			<div id="letterButtons" class="btn-group middle" data-toggle="buttons">
				<?php
					foreach(range('A','Z') as $letter) {
						if($letter == 'A') {
							echo "<label class=\"btn btn-default active \">\n";
						} else {
							echo "<label class=\"btn btn-default\">\n";
						}
						echo "<input type=\"radio\" name=\"letters_item_".$item_id."\" value=\"".$letter."\" autocomplete=\"off\"> ".$letter." \n";
						echo "</label>\n";
						?>
						<?php
					}
				?>
				<label class="btn btn-default">
					<input type="radio" name="letters_item_2" value="any" autocomplete="off"> * 
				</label>
			</div>
		</div>

		<br>
		<div id="casualtyTable"></div> <!-- For the results -->
	</div>
</div>
</body>
</html>