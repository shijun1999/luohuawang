$(document).ready(function () {
    $('#desc').summernote({
        height: 100,                 // set editor height
        minHeight: null,             // set minimum height of editor
        maxHeight: null            // set maximum height of editor
    });


/*    $("#input-dim-1").fileinput({
        language: 'en', //设置语言
        showCaption: false,//是否显示标题
        browseClass: "btn btn-primary", //按钮样式
        maxFileCount: 5,
        uploadUrl: "uploadBuildingImage",
        allowedFileExtensions: ["jpg", "png", "jpeg"],
        maxFileSize: 5000
    });*/


    $('#van_city_form').validate({
        errorElement: 'div',
        errorClass: 'help-block',
        focusInvalid: true,
        ignore: "",
        rules: {
            cityNameE: {
                required: true,
            },
            cityNameC: {
                required: true
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
            addEditVanCity();
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
        }
    });

    $.ajax({
        url: 'editVanCityInit',
        type: 'post',
        dataType: 'json',
        success: function (json) {
            var obj = JSON.parse(json);
            if (obj.result == 'success') {
                var vanCityEntity = obj.data;

                $("#cityNameE").val(vanCityEntity.cityNameE);
                $("#cityNameC").val(vanCityEntity.cityNameC);
                $("#sort").val(vanCityEntity.order);
                $("#desc").summernote('code', vanCityEntity.description);

/*
                if (inputImageEntityList != null && inputImageEntityList.length > 0) {
                    $("#uploaded-images").children().remove();

                    for (var n in inputImageEntityList) {
                        var html = '' +
                            '<div id="' + inputImageEntityList[n].id + '" class="col-xs-12 col-sm-12 col-md-6 col-lg-6">' +
                            '<a href="#" class="pic-link" target="_blank">' +
                            '<img width="100%" src="' + uploadPath + inputImageEntityList[n].name + '" style="display: inline;">' +
                            '</a>' +
                            '<div class="space-8"></div>' +
                            '<div class="center"><button onClick="deleteImage(\'' + inputImageEntityList[n].id + '\')" type="button" class="btn btn-white kootour-btn-main"><i class="fa fa-trash-o" aria-hidden="true"></i>&nbsp;Delete</button></div>' +
                            '<div class="space-8"></div>' +
                            '</div>';
                        $("#uploaded-images").append(html);
                    }
                }
*/
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
});

function addEditVanCity() {
    var obj = new Object();
    obj.cityNameE = $("#cityNameE").val();
    obj.cityNameC = $("#cityNameC").val();
    obj.description = $("#desc").summernote('code');
    obj.order = $("#sort").val();
    obj.onTopbar = $("#onTopbar").val();
    obj.picture = $("#picture").val();

    $.ajax({
        url: 'addEditVanCity',
        type: 'post',
        dataType: 'json',
        data: {"jsonFromWeb": JSON.stringify(obj)},
        success: function (json) {
            var obj = JSON.parse(json);
            if (obj.result == 'success') {
                window.location.href = "list";
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
}

