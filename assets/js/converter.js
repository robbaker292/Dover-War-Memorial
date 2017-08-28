$(document).ready( function() {

	/**
	*	Saves the current casualty in the DB
	*/
    function submitForm() {
		var basicForm = $("#basicForm").serialize();
        
		$.ajax({
            type: "POST",
            url: "converter/doConvert",
            data: basicForm,
            success: function(data) {
                //console.log(data);
                $("#result").empty();
                $("#result").text(data);
            },
            error: function(data) {
                //console.log(data);
                $("#result").empty();
                $("#result").text(data);
            }
        });

	};


    /**
    *   Validates the form on user click
    */
    $("#convert").click(function() {
        submitForm();
    });

});