$(document).ready(function () {

    $("button").click(function () {
        var name = $(this).attr('name');
        var buttonId = $(this).attr('id');
        var split = buttonId.split("-");

        if (name == 'vanCity') {
            $("#vanCityId").val(split[1]);
            if (split[0] == 'delete') {
                $("#vanCity_list_form").attr("action", "deleteVanCity");
            } else if (split[0] == 'update') {
                $("#vanCity_list_form").attr("action", "updateVanCity");
            }
            $("#vanCity_list_form").submit();
        } else if (name = 'building') {
            $("#buildingId").val(split[1]);
            if (split[0] == 'delete') {
                $("#building_list_form").attr("action", "deleteBuilding");
            } else if (split[0] == 'update') {
                $("#building_list_form").attr("action", "updateBuilding");
            }
            $("#building_list_form").submit();
        }
    });
});

