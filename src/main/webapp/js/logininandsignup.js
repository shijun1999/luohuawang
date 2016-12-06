$(document).ready(function () {

        $('#reg_form').validate({
 /*           errorElement: 'div',
            errorClass: 'help-block',
            focusInvalid: false,
            ignore: "",
            rules: {
                firstName: {
                    required: true
                },
                lastName: {
                    required: true
                },
                signupemail: {
                    required: true,
                    email: true
                },
                signuppassword: {
                    required: true
                },
                resignuppassword: {
                    required: true,
                    equalTo: "#signuppassword"
                },
            },

            messages: {},

            highlight: function (e) {
                $(e).closest('.form-validator').removeClass('has-info').addClass('has-error');
            },

            success: function (e) {
                $(e).closest('.form-validator').removeClass('has-error');//.addClass('has-info');
                $(e).remove();
            },

            submitHandler: function (form) {
                var obj = new Object();
                obj.firstName = $("#firstName").val();
                obj.lastName = $("#lastName").val();
                obj.email = $("#email").val();
                obj.loginId = $("#email").val();
                obj.password = $("#password").val();
                $.ajax({
                    url: 'localhostSignAjax/regWithEmail',
                    type: 'post',
                    dataType: 'json',
                    data: {"jsonFromWeb": JSON.stringify(obj)},
                    success: function (json) {
                        var obj = JSON.parse(json);
                        if (obj.result == 'success') {
                            BootstrapDialog.show({
                                closable: false,
                                title: 'Success',
                                message: obj.message,
                                buttons: [{
                                    label: 'Go to Next Page',
                                    action: function (dialog) {
                                        dialog.close();
                                        window.location.href = "localhostCourseList!load";
                                    }
                                }]
                            });
                        } else {
                            BootstrapDialog.show({
                                title: 'Error',
                                message: obj.message,
                                buttons: [{
                                    label: 'Close',
                                    action: function (dialog) {
                                        dialog.close();
                                    }
                                }]
                            });
                        }
                    },
                    error: function (json) {
                        var obj = JSON.parse(json);
                        BootstrapDialog.show({
                            title: 'Error',
                            message: obj.message,
                            buttons: [{
                                label: 'Close',
                                action: function (dialog) {
                                    dialog.close();
                                }
                            }]
                        });
                    }
                });
            },

            invalidHandler: function (form) {
                BootstrapDialog.show({
                    title: 'Error',
                    message: 'You missed some fields. They have been highlighted below.',
                    buttons: [{
                        label: 'Close',
                        action: function (dialog) {
                            dialog.close();
                        }
                    }]
                });
            } */
            rules: {
                firstname: "required",
                lastname: "required",
                email: {
                    required: true,
                    email: true
                },
                password: {
                    required: true,
                    minlength: 5
                },
                agree: "required"
            },

            // Specify the validation error messages
            messages: {
                firstname: "Please enter your first name",
                lastname: "Please enter your last name",
                password: {
                    required: "Please provide a password",
                    minlength: "Your password must be at least 5 characters long"
                },
                email: "Please enter a valid email address",
                agree: "Please accept our policy"
            },

            submitHandler: function(form) {
                form.submit();
            }
        });

});
