function initMap() {
    var map;
    var defaultLocation = { lat: 38.7223, lng: -9.1393 }; // Default location (Lisbon)

    // Check if geolocation is supported by the browser
    if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(
            function (position) {
                // User's current location
                var userLocation = {
                    lat: position.coords.latitude,
                    lng: position.coords.longitude,
                };

                // Create the map centered on the user's location
                map = new google.maps.Map(document.getElementById("map"), {
                    center: userLocation,
                    zoom: 10, // Adjust the zoom level as needed
                    disableDefaultUI: true, // Disable default UI controls
                    styles: [
                        // Customize map style to remove default markers
                        {
                            featureType: "poi",
                            elementType: "labels",
                            stylers: [{ visibility: "off" }],
                        },
                        {
                            featureType: "transit",
                            elementType: "labels",
                            stylers: [{ visibility: "off" }],
                        },
                    ],
                });

                // Create a marker for the user's location (blue dot)
                var userMarker = new google.maps.Marker({
                    position: userLocation,
                    map: map,
                    title: "Your Location",
                    icon: {
                        url: "../../images/User_Location_Icon.png", // Blue dot icon
                        scaledSize: new google.maps.Size(32,32)
                    },
                });

                // Create a button for panning to the user's location
                var locationButton = document.createElement("button");
                locationButton.classList.add("custom-map-button");
                locationButton.innerHTML = '<img src="/images/Map_Location_Icon.png" alt="Center on Location">';
                locationButton.style.backgroundSize = 'cover';
                locationButton.style.backgroundRepeat = 'no-repeat';
                locationButton.style.backgroundPosition = 'center';
                map.controls[google.maps.ControlPosition.RIGHT_BOTTOM].push(locationButton);

                locationButton.addEventListener("click", function () {
                    // Pan the map to the user's location
                    map.panTo(userLocation);
                });
            },
            function () {
                // Handle geolocation error, default to Lisbon
                map = new google.maps.Map(document.getElementById("map"), {
                    center: defaultLocation,
                    zoom: 20, // Adjust the zoom level as needed
                    disableDefaultUI: true, // Disable default UI controls
                    styles: [
                        // Customize map style to remove default markers
                        {
                            featureType: "poi",
                            elementType: "labels",
                            stylers: [{ visibility: "off" }],
                        },
                        {
                            featureType: "transit",
                            elementType: "labels",
                            stylers: [{ visibility: "off" }],
                        },
                    ],
                });
            }
        );
    } else {
        // Geolocation not supported, default to Lisbon
        map = new google.maps.Map(document.getElementById("map"), {
            center: defaultLocation,
            zoom: 10, // Adjust the zoom level as needed
            disableDefaultUI: true, // Disable default UI controls
            styles: [
                // Customize map style to remove default markers
                {
                    featureType: "poi",
                    elementType: "labels",
                    stylers: [{ visibility: "off" }],
                },
                {
                    featureType: "transit",
                    elementType: "labels",
                    stylers: [{ visibility: "off" }],
                },
            ],
        });
    }
}

// Initialize the map
window.initMap = initMap;