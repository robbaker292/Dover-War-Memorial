$(document).ready( function() {

	$("#toggler").click(function() {
		$("#data").toggle(400);

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


    })

    /**
    *  Saves the relation data
    */
    $("#saveRelations").click(function() {
        var id = $("#id").val();
        var basicForm = $("#relationForm").serialize();
        //console.log(basicForm);
        $.ajax({
            type: "POST",
            url: "../doUpdateRelations/"+id,
            data: basicForm,
            success: function(data) {
                console.log(data);
               // location.reload();
            },
            error: function(data) {
                console.log(data);
                $("#saveResultRelations").text(data);
            }
        });

    })

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
	*	Saves the current casualty's commemoration locations in the DB
	*/
	$("#saveCommemorations").click(function() {
		var id = $("#id").val();
		var basicForm = $("#commemorations").val();
		$.ajax({
            type: "POST",
            url: "../doUpdateCommemorations/"+id,
            data: {basicForm : basicForm},
            dataType: "json",
            success: function(data) {
            	//console.log(data);
            	//$("#saveResultCommemoration").text(data);
            	location.reload();
            },
            error: function(data) {
            	console.log(data);
                $("#saveResultCommemoration").text(data);
            }
        });
	});

	/**
	*	Saves the current casualty's regiments in the DB
	*/
	$("#saveRegiment").click(function() {
		var id = $("#id").val();
		var basicForm = $("#regiments").val();
		$.ajax({
            type: "POST",
            url: "../doUpdateRegiments/"+id,
            data: {basicForm : basicForm},
            dataType: "json",
            success: function(data) {
            	//console.log(data);
            	//$("#saveResultCommemoration").text(data);
            	location.reload();
            },
            error: function(data) {
            	console.log(data);
                $("#saveResultRegiments").text(data);
            }
        });
	});

	/**
	*	Saves the current casualty's service numbers in the DB
	*/
	$("#saveServiceNumber").click(function() {
		var id = $("#id").val();
		var basicForm = $("#service_numbers").val();
		$.ajax({
            type: "POST",
            url: "../doUpdateServiceNumbers/"+id,
            data: {basicForm : basicForm},
            dataType: "json",
            success: function(data) {
            	//console.log(data);
            	//$("#saveResultCommemoration").text(data);
            	location.reload();
            },
            error: function(data) {
            	console.log(data);
                $("#saveResultServiceNumber").text(data);
            }
        });
	});

    /**
    *   Saves the current update data
    */
    $("#saveChangedDetails").click(function() {
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
                console.log(data);
                //$("#saveResultCommemoration").text(data);
                //location.reload();
            },
            error: function(data) {
                console.log(data);
                $("#saveResultServiceNumber").text(data);
            }
        });
    });

});