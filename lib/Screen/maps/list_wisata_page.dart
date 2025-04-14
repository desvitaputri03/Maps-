import 'package:flutter/material.dart';
import 'package:flutter_app_desvita/Screen/maps/detail_wisata_page.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class TouristAttraction {
  final String title;
  final String locationName;
  final LatLng location;
  final String description;
  final String imageUrl;

  TouristAttraction({
    required this.title,
    required this.locationName,
    required this.location,
    required this.description,
    required this.imageUrl,
  });
}

class ListWisataPage extends StatelessWidget {
  ListWisataPage({Key? key}) : super(key: key);

  final List<TouristAttraction> attractions = [
    TouristAttraction(
      title: 'Jam Gadang',
      locationName: 'Bukittinggi, Sumatera Barat',
      location: const LatLng(-0.3031, 100.3686),
      description: 'Destinasi yang tidak boleh dilewatkan...',
      imageUrl: 'gambar/jamgadang.jpg', // Local image
    ),
    TouristAttraction(
      title: 'Ulun Danu Beratan',
      locationName: 'Bali',
      location: const LatLng(-8.2751, 115.1670),
      description: 'Pura Ulun Danu Beratan adalah sebuah pura...',
      imageUrl: 'gambar/uld.jpg', // Local image
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Map Wisata'),
        backgroundColor: Colors.teal,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.white, Colors.teal.shade100],
          ),
        ),
        child: ListView.builder(
          padding: const EdgeInsets.all(16),
          itemCount: attractions.length,
          itemBuilder: (context, index) {
            final attraction = attractions[index];
            return Container(
              margin: const EdgeInsets.only(bottom: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: ListTile(
                contentPadding: const EdgeInsets.all(16),
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    attraction.imageUrl,
                    width: 60,
                    height: 60,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        color: Colors.grey,
                        width: 60,
                        height: 60,
                        child: const Icon(Icons.error, color: Colors.white),
                      );
                    },
                  ),
                ),
                title: Text(
                  attraction.title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                subtitle: Text(
                  attraction.locationName,
                  style: TextStyle(
                    color: Colors.grey.shade600,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailWisataPage(
                        title: attraction.title,
                        locationName: attraction.locationName,
                        location: attraction.location,
                        description: attraction.description,
                        imageUrl: attraction.imageUrl,
                      ),
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}