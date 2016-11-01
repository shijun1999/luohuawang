$(document).ready(function() {

    $("button").click(function(){
        var buttonId = $(this).attr('id');
        var split = buttonId.split("-");

        if (split[0] == 'delete') {
            $("#buildingId").val(split[1]);
            $("#list_form").attr("action", "delete");
            $("#list_form").submit();
        }else if (split[0] == 'update') {
            $("#buildingId").val(split[1]);
            $("#list_form").attr("action", "update");
            $("#list_form").submit();
        }
    });

});

