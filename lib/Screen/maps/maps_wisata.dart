import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:async';

class MapWisataPage extends StatefulWidget {
  final String title;
  final String locationName;
  final LatLng location;
  final String description;
  final String imageUrl;

  const MapWisataPage({
    Key? key,
    required this.title,
    required this.locationName,
    required this.location,
    required this.description,
    required this.imageUrl,
  }) : super(key: key);

  @override
  State<MapWisataPage> createState() => _MapWisataPageState();
}

class _MapWisataPageState extends State<MapWisataPage> {
  final Completer<GoogleMapController> _controller = Completer();
  Set<Marker> _markers = {};

  @override
  void initState() {
    super.initState();
    _markers.add(
      Marker(
        markerId: MarkerId(widget.locationName),
        position: widget.location,
        infoWindow: InfoWindow(
          title: widget.title,
          snippet: widget.locationName,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Map ${widget.title}"),
        backgroundColor: Colors.teal,
      ),
      body: GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition: CameraPosition(
          target: widget.location,
          zoom: 15,
        ),
        markers: _markers,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
    );
  }
}
