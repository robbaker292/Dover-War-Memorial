$(document).ready( function() {

	//http://www.codingdrama.com/bootstrap-markdown/

	var urlPromptMessage = "Enter the file name of the picture, including any folders deeper than \"pictures\".\ne.g. For a picture in \"assets/pictures/faces/me.png\" use \"faces/me.png\"";
	var urlPrompt = "faces/me.png";
	var urlPrePrompt = "%asset_url%pictures/";
	var titlePromptMessage = "Enter the title of the picture";
	var titlePrompt = "Picture of a face by M. Smith";

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
  						var url = urlPrePrompt + window.prompt(urlPromptMessage,urlPrompt);
  						var title = window.prompt(titlePromptMessage,titlePrompt);

  						var outputText = "\n![" + title + "](" + url + " \"" + title + "\"){.left}\n";

  						e.replaceSelection(outputText);
  					}
  				},{
  					name: "cmdCenterImage",
  					toggle: false,
  					title: "Insert Image to the Center",
  					icon: {"fa": "fa fa-hand-o-up"},
  					callback: function(e){
  						var url = urlPrePrompt + window.prompt(urlPromptMessage,urlPrompt);
  						var title = window.prompt(titlePromptMessage,titlePrompt);

  						var outputText = "\n![" + title + "](" + url + " \"" + title + "\"){.middle}\n";

  						e.replaceSelection(outputText);
  					}
  				},{
  					name: "cmdRightImage",
  					toggle: false,
  					title: "Insert Image to the Right",
  					icon: {"fa": "fa fa-hand-o-right"},
  					callback: function(e){
  						var url = urlPrePrompt + window.prompt(urlPromptMessage,urlPrompt);
  						var title = window.prompt(titlePromptMessage,titlePrompt);

  						var outputText = "\n![" + title + "](" + url + " \"" + title + "\"){.right}\n";

  						e.replaceSelection(outputText);
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