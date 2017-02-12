$(document).ready( function() {

	$("#toggler").click(function() {
		$("#data").toggle(400);

	});

	/**
	*	Saves the current casualty in the DB
	*/
	$("#saveBasic").click(function() {

		console.log("saving!");

		var basicForm = $("#basicForm").serialize();
		console.log(basicForm);
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
            url: "../doUpdate/0",
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


});