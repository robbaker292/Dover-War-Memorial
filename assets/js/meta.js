$(document).ready( function() {

	/**
	*	Saves the current casualty in the DB
	*/
    function submitForm() {
		var basicForm = $("#basicForm").serialize();
		console.log(basicForm);
		$.ajax({
            type: "POST",
            url: "../doUpdate",
            data: basicForm,
            success: function(data) {
                //console.log(data);
                window.location.href = "../";
            	//location.reload();
            },
            error: function(data) {
                //console.log(data);
                $("#saveResult").text(data);
            }
        });

	};

    /**
    *   Validates the form
    */
    $("#basicForm").validate({
        rules: {
            id : "required",
            content: "required",
            whereUsed: "required"
        },
        highlight: function(element) {
            $(element).closest('.form-group').addClass('has-error');
        },
        unhighlight: function(element) {
            $(element).closest('.form-group').removeClass('has-error');
        },
        errorElement: 'div',
        errorClass: 'help-block error-block',
        errorPlacement: function(error, element) {
            if(element.parent('.input-group').length) {
                error.insertAfter(element.parent());
            } else {
                error.insertAfter(element);
            }
        }
    });

    /**
    *   Validates the form on user click
    */
    $("#saveBasic").click(function() {
        var result = $("#basicForm").valid();
        if(result) {
            submitForm();
        }
    });

});