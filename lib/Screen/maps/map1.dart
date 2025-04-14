import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapsPadang extends StatefulWidget {
  @override
  _MapsPadangState createState() => _MapsPadangState();
}

class _MapsPadangState extends State<MapsPadang> {
  late GoogleMapController mapController;

  static const LatLng _center = LatLng(-0.9446418,100.36862); // Koordinat Kota Padang

  final Set<Marker> _markers = {
    Marker(
      markerId: MarkerId('pdg'),
      position: _center,
      infoWindow: InfoWindow(
        title: 'Kota Padang Sumbar',
        snippet: 'Padang',
      ),
    ),
  };

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Maps Padang'),
      ),
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        initialCameraPosition: CameraPosition(
          target: _center,
          zoom: 15,
        ),
        markers: _markers,
      ),
    );
  }
}