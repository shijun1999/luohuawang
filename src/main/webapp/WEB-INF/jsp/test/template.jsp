<!doctype html>
<html>
<head>
    <title>loadTemplate Test Suite</title>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js" type="text/javascript"></script>
    <script src="/js/handlebars.js"></script>
    <script src="/js/template/template.js"></script>
</head>

<body>
<!--Your new content will be displayed in here-->
<div class="content-placeholder"></div>
<script>
    $(function () {
        require_template('at');
        // Grab the template script
        var theTemplateScript = $("#template_at").html();

        // Compile the template
        var theTemplate = Handlebars.compile(theTemplateScript);

        // Define our data object
        var context={
            "city": "London",
            "street": "Baker Street",
            "number": "221B"
        };

        // Pass our data to the template
        var theCompiledHtml = theTemplate(context);

        // Add the compiled html to the page
        $('.content-placeholder').html(theCompiledHtml);
    });
</script>
</body>
</html>
