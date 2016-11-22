/** call the function before using template*/
function require_template(templateName) {
    var template = $('#template_' + templateName);
    if (template.length === 0) {
        var tmpl_url = '/js/template/' + templateName + '.hbs';
        var tmpl_string = '';

        $.ajax({
            url: tmpl_url,
            method: 'GET',
            async: false,
            contentType: 'text',
            success: function (data) {
                tmpl_string = data;
            },
            error: function (data){
                tmpl_string = data;
            },
        });

        $('head').append('<script id="template_' +
            templateName + '" type="text/x-handlebars-template">' + tmpl_string + '<\/script>');
    }
};