import 'package:flutter/material.dart';

class DetailBerita extends StatelessWidget {
  final Map<String, dynamic> berita;

  const DetailBerita({Key? key, required this.berita}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(berita['judul']),
        backgroundColor: Colors.deepOrange,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    berita['gambar'],
                    fit: BoxFit.cover,
                    width: 300, // Lebar gambar disesuaikan
                    height: 200, // Tinggi gambar disesuaikan
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  berita['judul'],
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center, // Teks judul di tengah
                ),
                SizedBox(height: 10),
                Text(
                  berita['tanggal'],
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                  textAlign: TextAlign.center, // Teks tanggal di tengah
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center, // Rating di tengah
                  children: [
                    Icon(Icons.star, color: Colors.orange, size: 20),
                    SizedBox(width: 5),
                    Text(
                      berita['rating'],
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Text(
                  berita['isi'],
                  style: TextStyle(
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center, // Teks isi berita di tengah
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}