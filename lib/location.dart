import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class LocationPickerScreen extends StatefulWidget {
  @override
  _LocationPickerScreenState createState() => _LocationPickerScreenState();
}

class _LocationPickerScreenState extends State<LocationPickerScreen> {
  late GoogleMapController mapController;
  final LatLng defaultLocation = LatLng(37.7749, -122.4194); // Default location
  LatLng pickedLocation =
      LatLng(37.7749, -122.4194); // Initialize with default location
  MarkerId markerId = MarkerId("picked_location");
  Set<Marker> markers = {
    Marker(
        markerId: MarkerId("picked_location"),
        position: LatLng(37.7749, -122.4194))
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Location Picker'),
      ),
      body: GoogleMap(
        initialCameraPosition:
            CameraPosition(target: defaultLocation, zoom: 15.0),
        onMapCreated: (GoogleMapController controller) {
          mapController = controller;
        },
        markers: markers,
        onTap: (LatLng location) {
          // Update the marker's position when the user taps on the map
          setState(() {
            pickedLocation = location;
            markers.clear();
            markers.add(Marker(
              markerId: markerId,
              position: pickedLocation,
            ));
          });
        },
      ),
    );
  }
}
