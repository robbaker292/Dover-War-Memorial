$(document).ready( function() {


	/**
	*	Create map
	*/
	function initMap() {
		var map = new ol.Map({
			target: 'map',
			layers: [
			 	new ol.layer.Tile({
			    	source: new ol.source.OSM()
			 	})

			],
			view: new ol.View({
		  		center: ol.proj.fromLonLat([ +$("#lon").text() , +$("#lat").text() ]),
				zoom: 14
			})
		});
      }

	var war, letter;

	/**
	* Gets the war the user has selected
	*/
	function getWar() {
		var selectedElement = $("label.active","#warButtons")[0]
		var war = $("input",selectedElement)[0].value;
		return war;
	}

	/**
	* Gets the letter the user has selected
	*/
	function getLetter() {
		var selectedElement = $("label.active","#letterButtons")[0]
		var letter = $("input",selectedElement)[0].value;
		return letter;
	}

	/**
	* Gets the war and letter the user has selected
	*/
	function getChoice(warP, letterP) {
		//var war;
		if(warP == null) {
			war = getWar(); 
		} else {
			war = warP;
		}

		//var letter;
		if(letterP == null) {
			letter = getLetter(); 
		} else {
			letter = letterP;
		}

	}

	/*
	*	Empties the results table and builds the headers
	*/
	function buildTable() {
		$("#casualtyTable").empty();
		$("#casualtyTable").append("<table class=\"table table-striped table-bordered table-hover table-condensed\"><thead><tr><th>Given Name</th><th>Family Name</th><th>Date of death</th></tr></thead><tbody></tbody></table>");		
	}

	/**
	*	 Loads the casualty data from the DB
	*/
	function loadCasualties() {
		var itemId = $("#item_id").text();

		$.ajax({url: "../getCasualtiesOfLetterFromMemorial/"+itemId+"/"+war+"/" + letter, dataType: "json", success: function(result){
    
			if (result.length == 0) {
				$("#casualtyTable").html("No results found");
			} else {
				buildTable();

	        	$.each(result, function (k,v) {

	        		//				echo "<td><a href=\"../../casualty/view/".$data->id."\">";

	        		var row = "<tr data-url=\"../../casualty/view/" + v.id + "\" class=\"clickableRow\"><td>" + v.given_name + "</td><td>" + v.family_name + "</td><td>";

	        		if (v.date_of_death == null) {
	        			row += "&nbsp;</td></tr>"
	        		} else {
	        			row += v.date_of_death + "</td></tr>";
	        		}        		

	        		$("#casualtyTable > table > tbody").append(row);
	        	})

	        		$(".clickableRow").click(function() {
						console.log($(this).data("url"));
				        window.location = $(this).data("url");
				    });
			}           	

   		}});

	}

	/**
	* Default action
	*/
	war = 0;
	letter = 'A';
	loadCasualties();
	initMap();

	/**
	* Responds to the user selecting a new war or letter
	*/

	$("#warButtons > label").click(function() {
		var val = $("input",this)[0].value;
		getChoice(val, null);
		loadCasualties();
	});

	$("#letterButtons > label").click(function() {
		var val = $("input",this)[0].value;
		getChoice(null,val);
		loadCasualties();
	});

});