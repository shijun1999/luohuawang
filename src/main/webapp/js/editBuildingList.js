$(document).ready(function() {

    $("button").click(function(){
        var buttonId = $(this).attr('id');
        $("#buildingId").val(buttonId);
        $("#delete_form").submit();
    });

});

