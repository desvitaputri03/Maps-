import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapsPnp extends StatefulWidget {
  @override
  _MapsPnpState createState() => _MapsPnpState();
}

class _MapsPnpState extends State<MapsPnp> {
  late GoogleMapController mapController;

  static const LatLng _center = LatLng(-0.9145679, 100.466151); // Koordinat Politeknik Negeri Padang

  final Set<Marker> _markers = {
    Marker(
      markerId: MarkerId('pnp'),
      position: _center,
      infoWindow: InfoWindow(
        title: 'Politeknik Negeri Padang',
        snippet: 'Kampus PNP',
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
        title: Text('Peta Politeknik Negeri Padang'),
      ),
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        initialCameraPosition: CameraPosition(
          target: _center,
          zoom: 15,
        ),
        markers: _markers,
        mapType: MapType.normal, // Pilih jenis peta sesuai kebutuhan
        myLocationEnabled: true, // Aktifkan tombol lokasi saya
        myLocationButtonEnabled: true, // Tampilkan tombol lokasi saya
        compassEnabled: true, // Aktifkan kompas
        tiltGesturesEnabled: false, // Nonaktifkan gestur tilt
        scrollGesturesEnabled: true, // Aktifkan geser
        zoomGesturesEnabled: true, // Aktifkan zoom
      ),
    );
  }
}