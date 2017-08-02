<?php
defined('BASEPATH') OR exit('No direct script access allowed');

include APPPATH . 'third_party/Parsedown.php';
include APPPATH . 'third_party/ParsedownExtra.php';
$Parsedown = new ParsedownExtra();
?>
<script>
	$(document).ready( function() {
		/**
		*	Create map
		*/

		var iconFeatures=[];

		var iconFeature = new ol.Feature({
		  geometry: new ol.geom.Point(ol.proj.transform([+<?php echo $memorial_data->lon; ?>, +<?php echo $memorial_data->lat; ?>], 'EPSG:4326',     
		  'EPSG:3857'))
		});

		iconFeatures.push(iconFeature);

		var vectorSource = new ol.source.Vector({
		  features: iconFeatures //add an array of features
		});

		var iconStyle = new ol.style.Style({
		  image: new ol.style.Icon(/** @type {olx.style.IconOptions} */ ({
		    anchor: [0.5, 25],
		    anchorXUnits: 'fraction',
		    anchorYUnits: 'pixels',
		    opacity: 1,
		    src: '<?php echo asset_url()."/icons/marker.png"; ?>'
		  }))
		});


		var vectorLayer = new ol.layer.Vector({
		  source: vectorSource,
		  style: iconStyle
		});

		var map = new ol.Map({
			target: 'map',
			layers: [
			 	new ol.layer.Tile({
			    	source: new ol.source.OSM()
			 	}),
			 	vectorLayer
			],
			view: new ol.View({
		  		center: ol.proj.fromLonLat([ +<?php echo $memorial_data->lon; ?> , +<?php echo $memorial_data->lat; ?> ]),
				zoom: 14
			})
		});


      });
</script>

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
	<div class="row">
		<div class="col-md-7">
			<div id="narrative"><?php

				echo $Parsedown->text(str_replace("%asset_url%", asset_url(), $memorial_data->narrative));
			?>
			<h4>Location: <?php echo $memorial_data->location ?></h4>
			</div>
		</div>
		<div class="col-md-5">
			<div id="map"></div>
		</div>	
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