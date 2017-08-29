$(document).ready( function() {

	//http://www.codingdrama.com/bootstrap-markdown/

	var urlPromptMessage = "Enter the file name of the picture, including any folders deeper than \"pictures\".\ne.g. For a picture in \"assets/pictures/faces/me.png\" use \"faces/me.png\"";
	var urlPrompt = "faces/me.png";
	var urlPrePrompt = "%asset_url%pictures/";
	var titlePromptMessage = "Enter the title of the picture";
	var titlePrompt = "Picture of a face by M. Smith";
  var linkPromptMessage = "Enter the URL of the link.\ne.g. For external links, use ensure you have \"http://\" at the start.\nFor internal links, start with \"%base_url%\" to automatically create the correct start of the URL.";
  var linkPrompt = "%base_url%article/view/1";
  var linkTitlePromptMessage = "Enter the title of the link";
  var linkTitlePrompt = "Another interesting article";

	$("#narrative").markdown({
  		savable: false,
  		iconlibrary: "fa",
  		hiddenButtons: ["cmdImage","cmdCode","cmdPreview","cmdUrl"],
  		disabledButtons: "cmdAddImage",
  		additionalButtons: [
  			[
        {
          name : "linkGroup",
          data : [
            {
              name: "cmdAddLink",
              toggle: false,
              disabled: false,
              title: "Insert Link:",
              btnText: "",
              icon: {"fa": "fa fa-link"},
              callback : function(e) {
                console.log("link");
                var link = window.prompt(linkPromptMessage,linkPrompt);
                var title = window.prompt(linkTitlePromptMessage,linkTitlePrompt);

                var outputText = "["+title+"]("+link+")\n";
                if(link != null && title!= null) {
                  e.replaceSelection(outputText);
                }
              }
            }
          ]
        },
        {
  				name: "imageGroup",
  				data: [{
  					name: "cmdAddImage",
  					toggle: false,
  					disabled: true,
  					title: "Insert Image:",
  					btnText: "Insert Image:",
  					icon: {"fa": "fa fa-file-image-o"}
  				},{
  					name: "cmdLeftImage",
  					toggle: false,
  					title: "Insert Image to the Left",
  					icon: {"fa": "fa fa-hand-o-left"},
  					btnText: "Left",
  					callback: function(e){
  						var url = urlPrePrompt + window.prompt(urlPromptMessage,urlPrompt);
  						var title = window.prompt(titlePromptMessage,titlePrompt);

  						var outputText = "\n![" + title + "](" + url + " \"" + title + "\"){.left}\n";

              if(url != null && title!= null) {
                e.replaceSelection(outputText);
              }
  						
  					}
  				},{
  					name: "cmdCenterImage",
  					toggle: false,
  					title: "Insert Image to the Center",
  					icon: {"fa": "fa fa-hand-o-up"},
  					btnText: "Centre",
  					callback: function(e){
  						var url = urlPrePrompt + window.prompt(urlPromptMessage,urlPrompt);
  						var title = window.prompt(titlePromptMessage,titlePrompt);

  						var outputText = "\n![" + title + "](" + url + " \"" + title + "\"){.middle}\n";

  						if(url != null && title!= null) {
                e.replaceSelection(outputText);
              }
  					}
  				},{
  					name: "cmdRightImage",
  					toggle: false,
  					title: "Insert Image to the Right",
  					icon: {"fa": "fa fa-hand-o-right"},
  					btnText: "Right",
  					callback: function(e){
  						var url = urlPrePrompt + window.prompt(urlPromptMessage,urlPrompt);
  						var title = window.prompt(titlePromptMessage,titlePrompt);

  						var outputText = "\n![" + title + "](" + url + " \"" + title + "\"){.right}\n";

              if(url != null && title!= null) {
                e.replaceSelection(outputText);
              }
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