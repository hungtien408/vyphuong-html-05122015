// Defining variables that need to be available to some functions
var map1, infoWindow1;
var map2, infoWindow2;
var map3, infoWindow3;
var rendererOptions = {
    draggable: true
};
var directionsDisplay1;
var directionsDisplay2;
var directionsDisplay3;
var directionsService1 = new google.maps.DirectionsService();
var directionsService2 = new google.maps.DirectionsService();
var directionsService3 = new google.maps.DirectionsService();
//Thay dia chi web
var endAddress1 = "10.789416,106.698647";
//Thay toa do
var lat1 = 10.789416, long1 = 106.693589;
//Thay dia chi web
var endAddress2 = "10.789416,106.698647";
//Thay toa do
var lat2 = 10.789416, long2 = 106.698647;
//Thay dia chi web
var endAddress2 = "10.789416,106.698647";
//Thay toa do
var lat3 = 10.789416, long3 = 106.698647;
window.onload = function () {
    //init direction
    directionsDisplay1 = new google.maps.DirectionsRenderer(rendererOptions);
    directionsDisplay2 = new google.maps.DirectionsRenderer(rendererOptions);
    directionsDisplay3 = new google.maps.DirectionsRenderer(rendererOptions);
    // Creating a map
    var options1 = {
        zoom: 17,
        center: new google.maps.LatLng(lat1, long1),
        mapTypeId: google.maps.MapTypeId.ROADMAP
    };
    var options2 = {
        zoom: 17,
        center: new google.maps.LatLng(lat2, long2),
        mapTypeId: google.maps.MapTypeId.ROADMAP
    };
    var options3 = {
        zoom: 17,
        center: new google.maps.LatLng(lat2, long2),
        mapTypeId: google.maps.MapTypeId.ROADMAP
    };

    map1 = new google.maps.Map(document.getElementById('map1'), options1);
    map2 = new google.maps.Map(document.getElementById('map2'), options2);
    map3 = new google.maps.Map(document.getElementById('map3'), options3);


    // Adding a marker
    var marker1 = new google.maps.Marker({
        position: new google.maps.LatLng(lat1, long1),
        map: map1,
        title: 'Click me'
    });
    // Adding a marker


    google.maps.event.addListener(marker1, 'click', function () {

        // Check to see if an InfoWindow already exists
        if (!infoWindow1) {
            infoWindow1 = new google.maps.InfoWindow();
        }

        // Creating the content  
        var content1 = '<div class="box">' +
                '<h2>TRỤ SỞ CHÍNH</h2>' +
                '<p><strong>Địa chỉ:</strong> Số 18, Ngách 19/15 Kim Đồng, TP.Hà Nội</p>' +
                '<p><strong>Điện thoại:</strong> (04) 3664 9263 - Fax: (04) 3664 92635</p>' +
                '</div>';

        // Setting the content of the InfoWindow
        infoWindow1.setContent(content1);

        // Opening the InfoWindow
        infoWindow1.open(map1, marker1);

    });

            //HUNG -- Cho điểm thứ 2
    var marker2 = new google.maps.Marker({
                position: new google.maps.LatLng(lat2, long2),
                map: map2,
                title: 'Click me'
            });

            google.maps.event.addListener(marker2, 'click', function () {

//                 Check to see if an InfoWindow already exists
                if (!infoWindow2) {
                    infoWindow2 = new google.maps.InfoWindow();
                }

//                 Creating the content  
                var content2 = '<div class="box">' +
                '<h2>VĂN PHÒNG MIỀN BẮC</h2>' +
                '<p><strong>Địa chỉ:</strong> 312/10/15 Trịnh Đình Trọng, P.Hoà Thạnh, Q.Tân Phú, TP.HCM</p>' +
                '<p><strong>Điện thoại:</strong> (08) 3976 0728 - (08) 3976 0729 - Fax: (08) 3976 0730</p>' +
                '</div>';

//                 Setting the content of the InfoWindow
                infoWindow2.setContent(content2);

//                 Opening the InfoWindow
                infoWindow2.open(map2, marker2);

            });
//            //HUNG-END -- Cho điểm thứ 2

            //HUNG -- Cho điểm thứ 3
            var marker3 = new google.maps.Marker({
                position: new google.maps.LatLng(lat3, long3),
                map: map3,
                title: 'Click me'
            });

            google.maps.event.addListener(marker3, 'click', function () {

//                 Check to see if an InfoWindow already exists
                if (!infoWindow3) {
                    infoWindow3 = new google.maps.InfoWindow();
                }

//                 Creating the content  
                var content3 = '<div class="box">' +
                '<h2>VĂN PHÒNG MIỀN NAM</h2>' +
                '<p><strong>Địa chỉ:</strong> 312/10/15 Trịnh Đình Trọng, P.Hoà Thạnh, Q.Tân Phú, TP.HCM</p>' +
                '<p><strong>Điện thoại:</strong> (08) 3976 0728 - (08) 3976 0729 - Fax: (08) 3976 0730</p>' +
                '</div>';

//                 Setting the content of the InfoWindow
                infoWindow3.setContent(content3);

//                 Opening the InfoWindow
                infoWindow3.open(map3, marker3);

            });
//            //HUNG-END -- Cho điểm thứ 3

//                    //HUNG -- Cho điểm thứ 3
//            var marker4 = new google.maps.Marker({
//                position: new google.maps.LatLng(10.788813, 106.616269),
//                map: map,
//                title: 'Click me'
//            });

//            google.maps.event.addListener(marker4, 'click', function () {

//                 Check to see if an InfoWindow already exists
//                if (!infoWindow) {
//                    infoWindow = new google.maps.InfoWindow();
//                }

//                 Creating the content  
//                var content = '<div class="box">' +
//                '<h2>Thám Tử Nam Long (Cơ sở 3)</h2>' +
//                '<p><strong>Địa chỉ:</strong> 402 Kinh Dương Vương , Phường An Lạc - Quận Bình tân</p>' +
//                '<p><strong>Điện thoại :</strong>  0945214218</p>' +
//                '<p><strong>Email:</strong> <a href="mailto:info@gamil.com">info@gamil.com</a></p>' +
//                '</div>';

//                 Setting the content of the InfoWindow
//                infoWindow.setContent(content);

//                 Opening the InfoWindow
//                infoWindow.open(map, marker4);

//            });
//                    //HUNG-END -- Cho điểm thứ 3

    // Hiển thị thông tin
    google.maps.event.trigger(marker1, 'click');

    directionsDisplay1.setMap(map1);
    directionsDisplay1.setPanel(document.getElementById("directionsPanel1"));

    // Hiển thị thông tin
    google.maps.event.trigger(marker2, 'click');

    directionsDisplay2.setMap(map2);
    directionsDisplay2.setPanel(document.getElementById("directionsPanel2"));

    // Hiển thị thông tin
    google.maps.event.trigger(marker3, 'click');

    directionsDisplay3.setMap(map3);
    directionsDisplay3.setPanel(document.getElementById("directionsPanel3"));
};

function calcRoute() {
    var start = document.getElementById("start1").value;
    var end = endAddress1;
    var request = {
        origin: start,
        destination: end,
        travelMode: google.maps.DirectionsTravelMode.WALKING
        //travelMode: google.maps.DirectionsTravelMode.BICYCLING
        //travelMode: google.maps.DirectionsTravelMode.DRIVING
    };
    directionsService1.route(request, function (response, status) {
        if (status == google.maps.DirectionsStatus.OK) {
            directionsDisplay1.setDirections(response);
        }
    });
}
function calcRoute2() {
    var start = document.getElementById("start2").value;
    var end = endAddress1;
    var request = {
        origin: start,
        destination: end,
        travelMode: google.maps.DirectionsTravelMode.WALKING
        //travelMode: google.maps.DirectionsTravelMode.BICYCLING
        //travelMode: google.maps.DirectionsTravelMode.DRIVING
    };
    directionsService2.route(request, function (response, status) {
        if (status == google.maps.DirectionsStatus.OK) {
            directionsDisplay2.setDirections(response);
        }
    });
}
function calcRoute3() {
    var start = document.getElementById("start3").value;
    var end = endAddress1;
    var request = {
        origin: start,
        destination: end,
        travelMode: google.maps.DirectionsTravelMode.WALKING
        //travelMode: google.maps.DirectionsTravelMode.BICYCLING
        //travelMode: google.maps.DirectionsTravelMode.DRIVING
    };
    directionsService3.route(request, function (response, status) {
        if (status == google.maps.DirectionsStatus.OK) {
            directionsDisplay3.setDirections(response);
        }
    });
}