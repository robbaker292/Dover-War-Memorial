$(document).ready( function() {

	var war, letter;
	//console.log($(".btn-group > label"));

	function getWar() {
		var selectedElement = $("label.active","#warButtons")[0]
		var war = $("input",selectedElement)[0].value;
		return war;
	}

	function getLetter() {
		var selectedElement = $("label.active","#letterButtons")[0]
		var letter = $("input",selectedElement)[0].value;
		return letter;
	}

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

		console.log(war, letter);
	}

	function loadCasulaties() {
		var itemId = $("#item_id").text();
		console.log(itemId);
		$.ajax({url: "../getCasualtiesOfLetterFromMemorial/"+itemId+"/"+letter, dataType: "json", success: function(result){
        	console.log(result);

        	$("#casualtyTable > tbody").empty();
        	$.each(result, function (k,v) {

        		var row = "<tr><td>" + v.given_name + "</td><td>" + v.family_name + "</td><td>";

        		if (v.date_of_death == "null") {
        			row += "&nbsp;</td></tr>"
        		} else {
        			row += v.date_of_death + "</td></tr>";
        		}        		

        		$("#casualtyTable > tbody").append(row);
        	})

   		}});

	}


	$("#warButtons > label").click(function() {
		var val = $("input",this)[0].value;
		getChoice(val, null);
		loadCasulaties();
	});

	$("#letterButtons > label").click(function() {
		var val = $("input",this)[0].value;
		getChoice(null,val);
		loadCasulaties();
	});


});