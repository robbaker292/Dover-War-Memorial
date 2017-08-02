$(document).ready( function() {

	$("#toggler").click(function() {
		$("#data").toggle(400);

	});

    /**
    *  Saves the relation data
    */
    $("#saveRelations").click(function() {
        var id = $("#id").val();
        var basicForm = $("#relationForm").serialize();
        console.log(basicForm);
        if(basicForm == "") {
            //for when no relations are selected
            basicForm = "relations%5B%5D&relationType%5B%5D";
        }
        $.ajax({
            type: "POST",
            url: "../doUpdateRelations/"+id,
            data: basicForm,
            success: function(res) {
                //console.log(res);
                location.reload();
            },
            error: function(data) {
                console.log(data);
                $("#saveResultRelations").text(data);
            }
        });

    });

	/**
	*	Saves the current casualty in the DB
	*/
	$("#saveBasic").click(function() {
        var id = $("#id").val();

        if(id == "-1") {
            return;
        }

		var basicForm = $("#basicForm").serialize();
		$.ajax({
            type: "POST",
            url: "../doUpdate/0",
            data: basicForm,
            success: function(data) {
            	location.reload();
            },
            error: function(data) {
                $("#saveResult").text(data);
            }
        });

	});

	/**
	*	Saves the current casualty in the DB
	*/
	$("#saveReturn").click(function() {
		var basicForm = $("#basicForm").serialize();
		$.ajax({
            type: "POST",
            url: "../doUpdate/1",
            data: basicForm,
            dataType: "json",
            success: function(data) {
            	//console.log(data);
            	window.location.href = "../view/"+data.insert_id;
            },
            error: function(data) {
                $("#saveResult").text(data);
            }
        });

	});

    /**
    *   Saves the current casualty in the DB and returns to the reloaded edit page, but with the new ID
    */
    $("#saveNew").click(function() {
        var basicForm = $("#basicForm").serialize();
        $.ajax({
            type: "POST",
            url: "../doUpdate/1",
            data: basicForm,
            dataType: "json",
            success: function(data) {
                //console.log(data);
                window.location.href = "../edit/"+data.insert_id;
            },
            error: function(data) {
                $("#saveResult").text(data);
            }
        });

    });

    /**
    *   Adds another relation option
    */
    $("#relationAdder").click(function() {
        $.ajax({
            type: "POST",
            url: "../createRelationDropdowns",
            success: function(data) {
                //console.log(data);
                $("#relationChoosers").append(data);
                var clone = $(".relationOptions").last();
                clone.find('.bootstrap-select').remove();
                clone.find('select').selectpicker();
                console.log(clone);
            }
        });
    });

	/**
	*	Adds service number to list
	*/
	$("#addServiceNumber").click(function() {
		console.log("add");
		var num = $("#service_numbers_add");
		var list = $("#service_numbers");
		list.append($("<option></option")
				.attr("value",num.val())
				.attr("selected","selected")
				.text(num.val())
			);
		num.val("");
		list.selectpicker('refresh');
	});


    /**
    *   Updates the various details (regiments, etc)
    */
    function updateDetails(url, basicForm, saveLocation, all){
        var id = $("#id").val();
        $.ajax({
            type: "POST",
            url: "../"+url+"/"+id,
            data: {basicForm : basicForm},
            dataType: "json",
            success: function(data) {
                if(!all) {
                    location.reload();
                }                
            },
            error: function(data) {
                saveLocation.text(data);
            }
        });
    }

	/**
	*	Saves the current casualty's commemoration locations in the DB
	*/
	$("#saveCommemorations").click(function() {
        updateDetails("doUpdateCommemorations", $("#commemorations").val(), $("#saveResultCommemoration"), false);
	});

	/**
	*	Saves the current casualty's regiments in the DB
	*/
	$("#saveRegiment").click(function() {
        updateDetails("doUpdateRegiments", $("#regiments").val(), $("#saveResultRegiments"), false);
	});

	/**
	*	Saves the current casualty's service numbers in the DB
	*/
	$("#saveServiceNumber").click(function() {
        updateDetails("doUpdateServiceNumbers", $("#service_numbers").val(), $("#saveResultServiceNumber"), false);
	});


    /**
    *   Saves the reason for this change
    */
    function saveChangedDetails(all) {
        var id = $("#id").val();
        var basicForm = $("#changed_details").val();
        $.ajax({
            type: "POST",
            url: "../../meta/doAddChange",
            data: {
                reason : basicForm,
                id : id,
                type : 1,
            },
            dataType: "json",
            success: function(data) {
                if(!all) {
                    location.reload();
                }  
            },
            error: function(data) {
                $("#saveResultServiceNumber").text(data);
            }
        });
    }

    /**
    *   Saves the current update data
    */
    $("#saveChangedDetails").click(function() {
        saveChangedDetails(false);
    });


    /**
    *   Saves all the changed data
    */
    $("#saveAll").click(function() {
        updateDetails("doUpdateCommemorations", $("#commemorations").val(), $("#saveResultCommemoration"), true);
        updateDetails("doUpdateRegiments", $("#regiments").val(), $("#saveResultRegiments"), true);
        updateDetails("doUpdateServiceNumbers", $("#service_numbers").val(), $("#saveResultServiceNumber"), true);
        saveChangedDetails(true);
        $("#saveAllResultChangedDetails").show();
    });

});