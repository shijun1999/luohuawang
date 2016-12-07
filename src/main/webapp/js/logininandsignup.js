$(document).ready(function () {

    $('#reg_form').validate({

        errorElement: 'div',
        errorClass: 'help-block',
        rules: {
            firstname: "required",
            lastname: "required",
            signupemail: {
                required: true,
                email: true
            },
            signuppassword: {
                required: true,
                minlength: 5
            },
            resignuppassword: {
                required: true,
                equalTo: "#signuppassword"
            },
        },

        // Specify the validation error messages
        messages: {
            firstname: "Please enter your first name",
            lastname: "Please enter your last name",
            signuppassword: {
                signupemail: "Please enter a valid email address",
                required: "Please provide a password",
                minlength: "Your password must be at least 5 characters long"
            },
            resignuppassword: {
                required: "Please re-enter a password",
                equalTo: "These passwords don't match"
            }
        },

        highlight: function (e) {
            $(e).closest('.form-validator').removeClass('has-info').addClass('has-error');
        },
        submitHandler: function (form) {
            var obj = new Object();
            obj.firstname = $("#firstname").val();
            obj.lastname = $("#lastname").val();
            obj.email = $("#signupemail").val();
            obj.password = $("#signuppassword").val();
            obj.repassword = $("#resignuppassword").val();
            $.ajax({
                url: 'signUp',
                type: 'post',
                dataType: 'json',
                data: {"jsonFromWeb": JSON.stringify(obj)},
                success: function (json) {
                    var obj = JSON.parse(json);
                    if (obj.result == 'success') {
                        $('#reg_form').html("<div></div><div class='taofun-main-color'>Sign up successfully.</div></div>");
                    } else {
                        var msg = obj.message;
                        displayErrorMsg($('#signup_error'), msg);
                    }
                },
                error: function (xhr) {
                    var msg = "An error occured: " + xhr.status + " " + xhr.statusText;
                    displayErrorMsg($('#signup_error'), msg);
                }
            });
        },
    });

    $('#login_form').validate({

        errorElement: 'div',
        errorClass: 'help-block',
        rules: {
            loginemail: {
                required: true,
                email: true
            },
            loginpassword: {
                required: true,
                minlength: 5
            },
        },

        // Specify the validation error messages
        messages: {
            loginpassword: {
                required: "Please provide a password",
                minlength: "Your password must be at least 5 characters long"
            },
            loginemail: "Please enter a valid email address",

        },

        highlight: function (e) {
            $(e).closest('.form-validator').removeClass('has-info').addClass('has-error');
        },
        submitHandler: function (e) {
            var obj = new Object();
            obj.email = $("#loginemail").val();
            obj.password = $("#loginpassword").val();
            $.ajax({
                url: 'logIn',
                type: 'post',
                dataType: 'json',
                data: {"jsonFromWeb": JSON.stringify(obj)},
                success: function (json) {
                    var obj = JSON.parse(json);
                    if (obj.result == 'success') {
                        $("#closeModal").click();
                        location.reload(true);
                    } else {
                        var msg = obj.message;
                        displayErrorMsg($('#login_error'), msg);
                    }
                },
                error: function (xhr) {
                    var msg = "An error occured: " + xhr.status + " " + xhr.statusText;
                    displayErrorMsg($('#login_error'), msg);


                }
            });
        }
    });

    function displayErrorMsg(ele, msg) {
        ele.css({"color": "red", "font-size": "18px", "padding": "10px"});
        ele.html(msg);
    }

});
