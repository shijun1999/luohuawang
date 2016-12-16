$(document).ready(function () {
    $('#desc').summernote({
        height: 100,                 // set editor height
        minHeight: null,             // set minimum height of editor
        maxHeight: null            // set maximum height of editor
    });

    $("#input-dim-1").fileinput({
        uploadUrl: "uploadVanCityImage", // server upload action
        uploadAsync: false,
        showUpload: false, // hide upload button
        showRemove: false, // hide remove button
        showPreview:false,
        minFileCount: 1,
        maxFileCount: 3
    }).on("filebatchselected", function(event, files) {
        // trigger upload method immediately after files are selected
        $("#input-dim-1").fileinput("upload");
    }).on('filebatchuploadsuccess', function(event, data) {
        var response = data.response;
        var obj = JSON.parse(response);
        var copyFile = obj.copyFile;
        var imageUrl = obj.imageUrl;
        $("#picture").val(copyFile);
        var html = '<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">' +
            '<img width="100%" src="' + imageUrl + copyFile + '" style="display: inline;"> </div>' ;
        $("#uploaded-images").html(html);
    });

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
            runErrorDialog('You missed some fields. They have been highlighted below.');
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

                imageHtml = '<span class="center">There is no image here.</span>';
                if (vanCityEntity.picture!=""){
                    imageHtml = '<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">' +
                        '<img width="100%" src="' + vanCityEntity.picture + '" style="display: inline;"> </div>' ;
                }
                $("#uploaded-images").html(imageHtml);
            } else {
                runErrorDialog(obj.message);
            }
        },
        error: function (err) {
            runErrorDialog(err.responseText);
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
    obj.id = $("#vanCityId").val();

    $.ajax({
        url: 'addEditVanCity',
        type: 'post',
        dataType: 'json',
        data: {"jsonFromWeb": JSON.stringify(obj)},
        success: function (json) {
            var obj = JSON.parse(json);
            if (obj.result == 'success') {
                window.location.href = "listCity";
            } else {
                runErrorDialog(obj.message);
            }
        },
        error: function (err) {
            runErrorDialog(err.responseText);
        }
    });
}

function runErrorDialog(msg){
    BootstrapDialog.show({
        title: 'Error',
        message: msg,
        buttons: [{
            label: 'Close',
            action: function (dialog) {
                dialog.close();
                window.location.href = "listCity";
            }
        }]
    });
}

