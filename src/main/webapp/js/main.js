var myCenter = new google.maps.LatLng(40.7413549, -73.9980244);

function initialize() {
    var items;

    $.ajax({
        url: 'loadBuildingOnMap',
        type: 'post',
        dataType: 'json',
        success: function (json) {
            console.log("we are success");
            var obj = JSON.parse(json);

            if (obj.result == 'success') {
                items = obj.data;
                buildMap();
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

    function buildMap() {

        var map = new google.maps.Map(document.getElementById("googleMap"), mapProp);

        var mapProp = {
            center: myCenter,
            zoom: 13,
            mapTypeId: google.maps.MapTypeId.ROADMAP
        };

        var infoBubble = new InfoBubble(
            {
                map: map,
                //content: '<div class="phoneytext">Some label</div>',
                //position: new google.maps.LatLng(-35, 151),
                shadowStyle: 1,
                padding: 50,
                backgroundColor: 'lightblue',
                borderRadius: 4,
                arrowSize: 10,
                borderWidth: 1,
                borderColor: '#2c2c2c',
                disableAutoPan: false,
                hideCloseButton: true,
                arrowPosition: 30,
                backgroundClassName: 'phoney',
                arrowStyle: 2,
                minHeight:50,
                maxHeight:200,
                maxWidth: 300
            });
        var bounds = new google.maps.LatLngBounds();

        for (var i = 0; i < items.length; i++) {
            var item = items[i];

            var gp = {
                title: item.name,
                location: new google.maps.LatLng(item.lat, item.lng),
                br:4,
                ba:3,
                sqFt:1005,
                status:'Active',
                type:'SFR'
            }

            var marker = new google.maps.Marker({
                map: map,
                position: gp.location,
                title: gp.title,
                animation: google.maps.Animation.DROP,
                id: i
            });
            // Create an onclick event to open an infowindow at each marker.
            marker.addListener('click', function () {
                openInfoBub(this, gp, infoBubble);
            });
            bounds.extend(marker.position);
        }
        // Extend the boundaries of the map for each marker
        map.fitBounds(bounds);

        function openInfoBub(marker, gp, infowindow) {

            contentString = '<img style="width:187px;height:140px;border:silver solid 1px;cursor:point"' +
                'src = "//update//images//1478400474888.jpg" name="preview" alt="loading..." title="click here to see"' +
                ' onclick=""';
            infowindow.content = contentString;
            infowindow.position = gp.location;

            infowindow.open(map, marker);
            // Make sure the marker property is cleared if the infowindow is closed.
            //  infowindow.addListener('closeclick',function(){
            //      infowindow.setMarker(null);

        }
    }
}

google.maps.event.addDomListener(window, 'load', initialize);
 