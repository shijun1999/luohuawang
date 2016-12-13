$(document).ready(function () {
    if ($('#status').val() == 1) {
        $('div #status_display').html("No change on the account.");
        $('#status').val('0');
    } else if ($('#status').val() == 2) {
        $('div #status_display').html("The account has been changed.");
        $('#status').val('0');
    }

    $('#save_acct_form').validate({
        errorElement: 'div',
        errorClass: 'help-block',
        rules: {
            firstName: "required",
            lastName: "required",
            email: {
                required: true,
                email: true
            },
            password: {
                required: true,
                minlength: 5
            },
            repassword: {
                required: true,
                equalTo: "#password"
            },
        },

// Specify the validation error messages
        messages: {
            firstName: "Please enter your first name",
            lastName: "Please enter your last name",
            password: {
                signupemail: "Please enter a valid email address",
                required: "Please provide a password",
                minlength: "Your password must be at least 5 characters long"
            },
            repassword: {
                required: "Please re-enter a password",
                equalTo: "These passwords don't match"
            }
        },

        highlight: function (e) {
            $(e).closest('.form-validator').removeClass('has-info').addClass('has-error');
        },
    });
});