$(document).ready(function() {

    $('#fuelux-wizard-container')
        .ace_wizard()
        .on('actionclicked.fu.wizard' , function(e, info){

        })
        .on('finished.fu.wizard', function(e) {

        })
        .on('changed.fu.wizard', function(e, info){
        }).on('stepclick.fu.wizard', function(e){
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
});
