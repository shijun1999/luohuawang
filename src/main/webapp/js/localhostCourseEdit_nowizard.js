$(document).ready(function () {


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

    $("#add_building_form").submit(function (e) {

        HoldOn.open({message: "handle...", theme: "sk-dot"});

        var entity = new Object();
        entity.name = $("#name").val();
        entity.lat = $("#lat").val();
        entity.lng = $("#lng").val();

        entity.address = $("#address").val();
        entity.shortDesc = $("#shortDesc").summernote('code');
        entity.longDesc = $("#longDesc").summernote('code');

        var cities = $("#city").val();
        if (cities != null && cities != "") {
            entity.city = cities.join(";");
        }

        entity.stroys = $("#storage").val();
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

        console.log("Before ajax");
        $.ajax({
            url: 'addBuilding',
            type: 'post',
            dataType: 'json',
            data: {"jsonFromAdd": JSON.stringify(entity)},
            success: function (json) {
                console.log("we are success");
                var obj = JSON.parse(json);

                if (obj.result == 'success') {
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
        e.preventDefault();
        e.unbind();

        HoldOn.close();

    });

});

