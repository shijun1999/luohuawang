var myCenter = new google.maps.LatLng(40.7413549, -73.9980244);
var markers = [];

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
        var ary = [];

        for (var i = 0; i < items.length; i++) {
            var emp = items[i];
            var myCenter1 = new google.maps.LatLng(emp.lat, emp.lng);
            var gp = {
                title: emp.name,
                location: myCenter1
            }
            ary.push(gp);
        }

        var mapProp = {
            center: myCenter,
            zoom: 13,
            mapTypeId: google.maps.MapTypeId.ROADMAP
        };

        var map = new google.maps.Map(document.getElementById("googleMap"), mapProp);

        var largeInfowindow = new google.maps.InfoWindow();
        var bounds = new google.maps.LatLngBounds();

        for (var i = 0; i < ary.length; i++) {
            // Get the position from the location array.
            var position = ary[i].location;
            var title = ary[i].title;
            // Create a marker per location, and put into markers array.
            var marker = new google.maps.Marker({
                map: map,
                position: position,
                title: title,
                animation: google.maps.Animation.DROP,
                id: i
            });
            // Push the marker to our array of markers.
            markers.push(marker);
            // Create an onclick event to open an infowindow at each marker.
            marker.addListener('click', function () {
                populateInfoWindow(this, largeInfowindow);
            });
            bounds.extend(markers[i].position);
        }
        // Extend the boundaries of the map for each marker
        map.fitBounds(bounds);
    }
}

function populateInfoWindow(marker, infowindow) {
    // Check to make sure the infowindow is not already opened on this marker.
    if (infowindow.marker != marker) {
        infowindow.marker = marker;
        infowindow.setContent('<div>' + marker.title + '</div>');
        infowindow.open(map, marker);
        // Make sure the marker property is cleared if the infowindow is closed.
        infowindow.addListener('closeclick',function(){
            infowindow.setMarker(null);
        });
    }
}

google.maps.event.addDomListener(window, 'load', initialize);
 