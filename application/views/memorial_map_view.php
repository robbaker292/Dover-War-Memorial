<?php
defined('BASEPATH') OR exit('No direct script access allowed');

include APPPATH . 'third_party/Parsedown.php';
include APPPATH . 'third_party/ParsedownExtra.php';
$Parsedown = new ParsedownExtra();

//var_dump($memorials);
?>
<script>
	$(document).ready( function() {
		$("#mapDetails").hide();
		/**
		*	Create map
		*/

		var iconFeatures=[];
		$.ajax({
            type: "POST",
            url: "getMapData",
            dataType: "json",
            success: function(data) {
            	$.each(data, function (i, v) {
					console.log(v);

					var iconFeature = new ol.Feature({
					  geometry: new ol.geom.Point(ol.proj.transform([+v.lon, +v.lat], 'EPSG:4326',     
					  'EPSG:3857')),
					  name: v.name,
					  id: v.id,
					  casualties: v.casualties
					});

					iconFeatures.push(iconFeature);
            	});  

            	console.log(iconFeatures);

				var vectorSource = new ol.source.Vector({
				  features: iconFeatures //add an array of features
				});

				var iconStyle = new ol.style.Style({
				  image: new ol.style.Icon(/** @type {olx.style.IconOptions} */ ({
				    anchor: [0.5, 25],
				    anchorXUnits: 'fraction',
				    anchorYUnits: 'pixels',
				    opacity: 1,
				    src: '<?php echo asset_url()."icons/marker.png"; ?>'
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
				  		center: ol.proj.fromLonLat([ +1.309245 , +51.127998 ]), //roughly Dover
						zoom: 11
					})
				});

				map.on("click", function(e) {
				    map.forEachFeatureAtPixel(e.pixel, function (feature, layer) {
				        console.log("clicked",feature, feature.O.name);
				        $("#mapDetails").show();
				        $("#mapName").html("<a href=\"../memorial/view/"+feature.O.id+"\">"+feature.O.name+"</a>");
				        $("#mapCas").text(feature.O.casualties);
				    })
				});              
            },

            error: function(data) {
                console.log(data);
            }
        });
/*
		var iconFeature = new ol.Feature({
		  geometry: new ol.geom.Point(ol.proj.transform([+<?php echo $memorial_data->lon; ?>, +<?php echo $memorial_data->lat; ?>], 'EPSG:4326',     
		  'EPSG:3857'))
		});

		iconFeatures.push(iconFeature);
*/

      });
</script>

<h2><i class="fa fa-globe" aria-hidden="true"></i>&nbsp;Memorial Map</h2>
<div class="panel panel-primary">

	<div class="panel-heading"><h4 class="panel-title"><i class="fa fa-globe" aria-hidden="true"></i>&nbsp;Map</h4></div>
	<div class="panel-body" id="map">
		
	</div>
</div>

<div class="panel panel-primary" id="mapDetails">
	<div class="panel-heading"><h4 class="panel-title"><i class="fa fa-users" aria-hidden="true"></i>&nbsp;Commemorated Here</h4></div>
	<table class="table table-striped">
		<tr><th>Memorial</th><th>Casualties</th></tr>
		<tr><td id="mapName"></td><td id="mapCas"></tr>
	</table>
</div>
</body>
</html>