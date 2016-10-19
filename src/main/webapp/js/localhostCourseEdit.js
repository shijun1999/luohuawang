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



});

