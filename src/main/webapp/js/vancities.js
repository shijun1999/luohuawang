$(document).ready(function () {
    var cities = [];
    var totalNumber = 0;
    $.ajax({
        url: 'listVanCityInit',
        type: 'post',
        dataType: 'json',
        success: function (json) {
            var obj = JSON.parse(json);
            if (obj.result == 'success') {
                cities = obj.data;
                totalNumber = cities.length;

                $('#demo').pagination({
                    dataSource: cities,
                    pageSize: 2,
                    showGoInput: true,
                    showGoButton: true,
                    className: 'current page',
                    callback: function (data, pagination) {
                        //set up template
                        require_template('vancities');
                        // Grab the template script
                        var theTemplateScript = $("#template_vancities").html();

                        // Compile the template
                        var theTemplate = Handlebars.compile(theTemplateScript);

                        var context = {
                            vanCity: data,
                        };

                        var theCompiledHtml = theTemplate(context);

                        $('#dataContainer').html(theCompiledHtml);

                        morecontent();
                    }
                })
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

function morecontent(){
    // Configure/customize these variables.
    var showChar = 100;  // How many characters are shown by default
    var ellipsestext = "...";
    var moretext = "Show more >";
    var lesstext = "Show less";

    $('.more').each(function () {
        // ignore all the html tags
        var content = $(this).text();

        if (content.length > showChar) {

            var c = content.substr(0, showChar);
            var h = content.substr(showChar, content.length - showChar);

            var html = c + '<span class="moreellipses">' + ellipsestext + '&nbsp;</span><span class="morecontent"><span>' + h + '</span>&nbsp;&nbsp;<a href="" class="morelink">' + moretext + '</a></span>';

            $(this).html(html);
        }

    });

    $(".morelink").click(function () {
        if ($(this).hasClass("less")) {
            $(this).removeClass("less");
            $(this).html(moretext);
        } else {
            $(this).addClass("less");
            $(this).html(lesstext);
        }
        $(this).parent().prev().toggle();
        $(this).prev().toggle();
        return false;
    });
}