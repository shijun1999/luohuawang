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
                runErrorDialog(obj.message);
            }
        },
        error: function (error) {
            HoldOn.close();
            runErrorDialog(err.responseText);
        }
    });

    function buildMap() {

        map = new google.maps.Map(document.getElementById('googleMap'), {
            zoom: 13,
            center: myCenter,
            mapTypeId: google.maps.MapTypeId.ROADMAP
        });

        var infoBubble = new InfoBubble(
            {
                map: map,
                content: '',
                shadowStyle: 1,
                padding: 2,
                backgroundColor: 'lightblue',
                borderRadius: 4,
                arrowSize: 15,
                borderWidth: 1,
                borderColor: '#2c2c2c',
                disableAutoPan: true,
                hideCloseButton: false,
                arrowPosition: 30,
                //backgroundClassName: 'phoney',
                arrowStyle: 2,
                minHeight: 100,
                maxHeight:140,
                minWidth: 150,
                maxWidth: 210
            });
        var bounds = new google.maps.LatLngBounds();

        for (var i = 0; i < items.length; i++) {
            var item = items[i];

            var gp = {
                title: item.name,
                location: new google.maps.LatLng(item.lat, item.lng),
                br: 4,
                ba: 3,
                sqFt: 1005,
                status: 'Active',
                type: 'SFR'
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
                //infoBubble.open(map, marker);
                openInfoBub(this, gp, infoBubble);
            });
            bounds.extend(marker.position);
        }
        // Extend the boundaries of the map for each marker
        map.fitBounds(bounds);

        function openInfoBub(marker, gp, infowindow) {

            contentString =
                '<div class="infobox_title">' +
                '15765 Lodestone Lane, Hacie...' +
                '</div>' +
                '<div style="float: left; width: 67px; margin-left: 6px;">' +
                '<img width="60px" height="70px" border="0" align="absmiddle" src="http://photo3.proxiopro.com/p2/50311714/0.jpg?t=1477927189" style="cursor:pointer;">' +
                '</div>' +
                '<div class="infobox_detail">' +
                '<span style="font-weight: bold; ">USD 1,588,000</span>' +
                '<br>Hacienda Heights<br>California<br>91745<br>USA' +
                '</div>';

            infowindow.content = contentString;

            infowindow.open(map, marker);
            // Make sure the marker property is cleared if the infowindow is closed.
            //  infowindow.addListener('closeclick',function(){
            //      infowindow.setMarker(null);

        }
    }
}


function runErrorDialog(msg){
    BootstrapDialog.show({
        title: 'Error',
        message: msg,
        buttons: [{
            label: 'Close',
            action: function (dialog) {
                dialog.close();
                window.location.href = "list";
            }
        }]
    });
}


google.maps.event.addDomListener(window, 'load', initialize);
 