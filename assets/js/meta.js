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
                window.location.href = "../listAll";
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
            title: "required",
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
            saveChangedDetails();
        }
    });

    /**
    *   Saves the reason for this change
    */
    function saveChangedDetails() {
        var id = $("#id").val();
        var basicForm = $("#changed_details").val();
        $.ajax({
            type: "POST",
            url: "../../meta/doAddChange",
            data: {
                reason : basicForm,
                id : id,
                type : 4,
            },
            dataType: "json"
        });
    }

});