import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Map3MultipleMarker extends StatefulWidget {
  const Map3MultipleMarker({super.key});

  @override
  Map3MultipleMarkerState createState() => Map3MultipleMarkerState();
}

class Map3MultipleMarkerState extends State<Map3MultipleMarker> {
  late GoogleMapController mapController;

  // Define marker positions for each campus
  final List<LatLng> _markerPositions = [
    LatLng(-0.9145679, 100.466151), // PNP
    LatLng(-0.8971319, 100.3505746), // UNP
    LatLng(-0.9152477, 100.4581353), // UNAND
  ];

  final List<String> _campusNames = [
    'Politeknik Negeri Padang',
    'Universitas Negeri Padang',
    'Universitas Andalas',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Maps Kampus Padang'),
      ),
      body: GoogleMap(
        onMapCreated: (GoogleMapController controller) {
          mapController = controller;
        },
        markers: _markerPositions.asMap().map((index, position) => MapEntry(
          index,
          Marker(
            markerId: MarkerId('marker_$index'),
            position: position,
            infoWindow: InfoWindow(
              title: _campusNames[index],
              snippet: 'Lat: ${position.latitude}, Lng: ${position.longitude}',
            ),
          ),
        )).values.toSet(),
        initialCameraPosition: CameraPosition(
          target: _markerPositions[0],
          zoom: 10,
        ),
      ),
    );
  }
}