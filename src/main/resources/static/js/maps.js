let openInfoWindow = null;

function initMap() {


    var map;
    var defaultLocation = { lat: 38.7223, lng: -9.1393 }; // Default location (Lisbon)
    const mapMarkersData = '/api/data';

    // Check if geolocation is supported by the browser
    if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(function (position) {
            // User's current location
            var userLocation = {
                lat: position.coords.latitude, lng: position.coords.longitude,
            };

            // Create the map centered on the user's location
            map = new google.maps.Map(document.getElementById("map"), {
                center: userLocation,
                zoom: 10, // Adjust the zoom level as needed
                disableDefaultUI: true, // Disable default UI controls
                styles: [// Customize map style to remove default markers
                    {
                        featureType: "poi", elementType: "labels", stylers: [{ visibility: "off" }],
                    }, {
                        featureType: "transit", elementType: "labels", stylers: [{ visibility: "off" }],
                    },
                ],
            });

            // Create a marker for the user's location (blue dot)
            var userMarker = new google.maps.Marker({
                position: userLocation, map: map, title: "Your Location", icon: {
                    url: "../../images/User_Location_Icon.png", // Blue dot icon
                    scaledSize: new google.maps.Size(32, 32),
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

            // Fetch data and create markers
            fetch(mapMarkersData)
                .then(response => {
                    if (!response.ok) {
                        throw new Error(`Could not retrieve db data for sightings ${response.status}`);
                    }
                    return response.json();
                })
                .then(data => {
                    createMarkers(map, data); // Call the function with the map and data
                })
                .catch(error => {
                    console.error('Error:', error);
                });
        }, function () {
            // Handle geolocation error, default to Lisbon
            map = new google.maps.Map(document.getElementById("map"), {
                center: defaultLocation,
                zoom: 20, // Adjust the zoom level as needed
                disableDefaultUI: true, // Disable default UI controls
                styles: [// Customize map style to remove default markers
                    {
                        featureType: "poi", elementType: "labels", stylers: [{ visibility: "off" }],
                    }, {
                        featureType: "transit", elementType: "labels", stylers: [{ visibility: "off" }],
                    },
                ],
            });
        });
    } else {
        // Geolocation not supported, default to Lisbon
        map = new google.maps.Map(document.getElementById("map"), {
            center: defaultLocation,
            zoom: 10, // Adjust the zoom level as needed
            disableDefaultUI: true, // Disable default UI controls
            styles: [// Customize map style to remove default markers
                {
                    featureType: "poi", elementType: "labels", stylers: [{ visibility: "off" }],
                }, {
                    featureType: "transit", elementType: "labels", stylers: [{ visibility: "off" }],
                },
            ],
        });

        // Fetch data and create markers
        fetch(mapMarkersData)
            .then(response => {
                if (!response.ok) {
                    throw new Error(`Could not retrieve db data for sightings ${response.status}`);
                }
                return response.json();
            })
            .then(data => {
                createMarkers(map, data); // Call the function with the map and data
            })
            .catch(error => {
                console.error('Error:', error);
            });
    }
}

/*function createMap(defaultLocation) {
    return new Promise((resolve, reject) => {
        // Check if geolocation is supported by the browser
        if (navigator.geolocation) {
            navigator.geolocation.getCurrentPosition(function (position) {
                // User's current location
                var userLocation = {
                    lat: position.coords.latitude, lng: position.coords.longitude,
                };

                // Create the map centered on the user's location
                const map = new google.maps.Map(document.getElementById("map"), {
                    center: userLocation,
                    zoom: 10, // Adjust the zoom level as needed
                    disableDefaultUI: true, // Disable default UI controls
                    styles: [// Customize map style to remove default markers
                        {
                            featureType: "poi", elementType: "labels", stylers: [{ visibility: "off" }],
                        }, {
                            featureType: "transit", elementType: "labels", stylers: [{ visibility: "off" }],
                        },
                    ],
                });

                resolve(map);
            }, function () {
                // Handle geolocation error, default to Lisbon
                const map = new google.maps.Map(document.getElementById("map"), {
                    center: defaultLocation,
                    zoom: 20, // Adjust the zoom level as needed
                    disableDefaultUI: true, // Disable default UI controls
                    styles: [// Customize map style to remove default markers
                        {
                            featureType: "poi", elementType: "labels", stylers: [{ visibility: "off" }],
                        }, {
                            featureType: "transit", elementType: "labels", stylers: [{ visibility: "off" }],
                        },
                    ],
                });

                resolve(map);
            });
        } else {
            // Geolocation not supported, default to Lisbon
            const map = new google.maps.Map(document.getElementById("map"), {
                center: defaultLocation,
                zoom: 10, // Adjust the zoom level as needed
                disableDefaultUI: true, // Disable default UI controls
                styles: [// Customize map style to remove default markers
                    {
                        featureType: "poi", elementType: "labels", stylers: [{ visibility: "off" }],
                    }, {
                        featureType: "transit", elementType: "labels", stylers: [{ visibility: "off" }],
                    },
                ],
            });

            resolve(map);
        }
    });
}*/
function createMarkers(map, data) {

    data.forEach(item => {
        // Create content for the marker (including the info window)
        const description = item.description ? item.description : "No Description Available";

        const markerContent = `
    <div style="text-align: center; display: flex; flex-direction: column; align-items: center;">
        <h3>${item.common_name}</h3>
        <div style="border-radius: 50%; overflow: hidden; width: 100px; height: 100px; margin-bottom: 10px;">
            <img src="${item.image_url || 'default_marker_icon.png'}" alt="Marker Image" style="width: 100%; height: 100%; object-fit: cover; object-position: center center; border-radius: 50%;" />
        </div>
        <p>${description}</p>
    </div>`;

        const marker = new google.maps.Marker({
            position: { lat: parseFloat(item.latitude), lng: parseFloat(item.longitude) },
            map: map,
            title: item.common_name,
            icon: {
                url: 'https://maps.google.com/mapfiles/ms/icons/red-dot.png', // You can specify a default marker icon
                scaledSize: new google.maps.Size(32, 32),
            },
            content: markerContent, // Custom property to store marker content
        });


// Add a click event listener to the map to close open info windows
        map.addListener("click", function () {
            if (openInfoWindow) {
                openInfoWindow.close();
                openInfoWindow = null;
            }
        });

// ...

// Modify your marker click event to handle the openInfoWindow variable
        marker.addListener("click", () => {
            if (openInfoWindow) {
                openInfoWindow.close();
            }
            const infowindow = new google.maps.InfoWindow({
                content: markerContent,
            });
            openInfoWindow = infowindow; // Store the currently open info window
            infowindow.open(map, marker);
        });
    });



}

// Initialize the map
window.initMap = initMap;