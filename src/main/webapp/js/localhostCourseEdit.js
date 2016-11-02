$(document).ready(function () {

    $('#fuelux-wizard-container')
        .ace_wizard()
        .on('actionclicked.fu.wizard', function (e, info) {

        })
        .on('finished.fu.wizard', function (e) {

            HoldOn.open({message: "handle...", theme: "sk-dot"});

            var entity = new Object();
            entity.name = $("#name").val();
            entity.lat = $("#LAT").val();
            entity.lng = $("#LNG").val();

            entity.address = $("#address").val();
            //entity.shortDesc = $("#shortDesc").summernote('code');
            //entity.longDesc = $("#longDesc").summernote('code');

            var cities = $("#cities").val();
            if (cities != null && cities != "") {
                entity.cities = cities.join(";");
            }

            //entity.stroys = $("#storage").val();
            entity.construction = $("#construction").val();
            entity.publicTransportation = $("#publicTransportation").val();

            var inArray = new Array();

            $("tr[name=floorPlan]").each(function () {

                var level = $(this).find('input:eq(0)').val();
                if (level != null && level != "") {
                    var subEntity = new Object();
                    subEntity.level = level;
                    subEntity.interiorArea = $(this).find('input:eq(1)').val();
                    subEntity.exteriorArea = $(this).find('input:eq(2)').val();
                    subEntity.totalArea = $(this).find('input:eq(3)').val();
                    inArray.push(subEntity);
                }
            });

            entity.floorPlanEntities = inArray;

            $.ajax({
                url: 'addBuilding',
                type: 'post',
                dataType: 'json',
                data: {"jsonFromAdd": JSON.stringify(entity)},
                success: function (json) {
                    var obj = JSON.parse(json);

                    if (obj.result == 'success') {
                        HoldOn.close();
                        window.location.href = "main";
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
                    HoldOn.close();
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
        })
        .on('changed.fu.wizard', function (e, info) {
        }).on('stepclick.fu.wizard', function (e) {
    });


    $('#shortDesc').summernote({
        height: 100,                 // set editor height
        minHeight: null,             // set minimum height of editor
        maxHeight: null            // set maximum height of editor
    });

    $('#longDesc').summernote({
        height: 300,                 // set editor height
        minHeight: null,             // set minimum height of editor
        maxHeight: null             // set maximum height of editor
    });

    $("#input-dim-1").fileinput({
        language: 'en', //设置语言
        showCaption: false,//是否显示标题
        browseClass: "btn btn-primary", //按钮样式
        maxFileCount: 5,
        uploadUrl: "uploadImage",
        allowedFileExtensions: ["jpg", "png", "jpeg"],
        maxFileSize: 5000
    });

    $.ajax({
        url: 'editBuildingInit',
        type: 'post',
        dataType: 'json',
        success: function (json) {
            var obj = JSON.parse(json);
            if (obj.result == 'success') {
                var buildingEntity = obj.data;

                var floorPlansList = buildingEntity.floorPlanEntities;

                $("#name").val(buildingEntity.name);
                $("#LAT").val(buildingEntity.lat);
                $("#LNG").val(buildingEntity.lng);
                $("#address").val(buildingEntity.address);
                $("#editor1").val(buildingEntity.shortDesc);
                $("#editor2").val(buildingEntity.longDesc);

                var cities = buildingEntity.cities;
                if (cities != null) {
                    var cityArray = cities.split(';');
                    $('.chosen-select').val(cityArray).trigger('chosen:updated');
                }

                $("#stroys").val(buildingEntity.stroys);
                $("#construction").val(buildingEntity.construction);
                $("#publicTransportation").val(buildingEntity.publicTransportation);

                $("#editor1").summernote('code', buildingEntity.shortDesc);
                $('#editor2').summernote('code', buildingEntity.longDesc);

                for (var n in floorPlansList) {
                    if (n <= 4) {
                        $("input[name=level]").eq(n).val(floorPlansList[n].level);
                        $("input[name=interiorArea]").eq(n).val(floorPlansList[n].interiorArea);
                        $("input[name=exteriorArea]").eq(n).val(floorPlansList[n].exteriorArea);
                        $("input[name=totalArea]").eq(n).val(floorPlansList[n].totalArea);
                    }
                }

                var inputImageEntityList = buildingEntity.inputImageEntities;

                var uploadPath = "../upload/images/";

                if (inputImageEntityList != null && inputImageEntityList.length > 0) {
                    $("#uploaded-images").children().remove();

                    for (var n in inputImageEntityList) {
                        var html = '' +
                            '<div id="' + inputImageEntityList[n].id + '" class="col-xs-12 col-sm-12 col-md-6 col-lg-6">' +
                            '<a href="#" class="pic-link" target="_blank">' +
                            '<img width="100%" src="' + uploadPath + inputImageEntityList[n].fullPath + '" style="display: inline;">' +
                            '</a>' +
                            '<div class="space-8"></div>' +
                            '<div class="center"><button onClick="deleteImage(\'' + inputImageEntityList[n].id + '\')" type="button" class="btn btn-white kootour-btn-main"><i class="fa fa-trash-o" aria-hidden="true"></i>&nbsp;Delete</button></div>' +
                            '<div class="space-8"></div>' +
                            '</div>';
                        $("#uploaded-images").append(html);
                    }
                }

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
