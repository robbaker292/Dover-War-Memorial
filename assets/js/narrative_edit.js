$(document).ready( function() {

	//http://www.codingdrama.com/bootstrap-markdown/

	$("#narrative").markdown({
  		savable: false,
  		iconlibrary: "fa",
  		hiddenButtons: ["cmdImage","cmdCode","cmdPreview"],
  		additionalButtons: [
  			[{
  				name: "imageGroup",
  				data: [{
  					name: "cmdLeftImage",
  					toggle: false,
  					title: "Insert Image to the Left",
  					icon: {"fa": "fa fa-hand-o-left"},
  					callback: function(e){
  						console.log("left");
  					}
  				},{
  					name: "cmdCenterImage",
  					toggle: false,
  					title: "Insert Image to the Center",
  					icon: {"fa": "fa fa-hand-o-up"},
  					callback: function(e){
  						console.log("Center");
  					}
  				},{
  					name: "cmdRightImage",
  					toggle: false,
  					title: "Insert Image to the Right",
  					icon: {"fa": "fa fa-hand-o-right"},
  					callback: function(e){
  						console.log("right");
  					}
  				}]
  			}]
  		]
  	});

	$("#markdownPreview").click(function(e) {

		var narrativeEditor = $("#narrative").data('markdown').getContent();

	    $.ajax({
	    	url: "../../meta/parseMarkdown",
	    	method: "post",
	    	async: true,
	    	data: { raw : narrativeEditor},
	    	success: function(result){
	    		console.log(result);

	    		$("#markdownPreviewArea").show();
	    		$("#markdownPreviewArea").empty();
	    		$("#markdownPreviewArea").html(result);
	    	}
		});
	});



});