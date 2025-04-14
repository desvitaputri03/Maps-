import 'package:flutter/material.dart';

class PageDetailGrid extends StatelessWidget {
  // Constructor untuk penampung data
  final Map<String, dynamic> itemGrid;

  const PageDetailGrid(this.itemGrid, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(itemGrid['judul']),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Gambar
              ClipRect(
                child: Image.asset(
                  itemGrid['gambar'],
                  fit: BoxFit.contain,
                  width: double.infinity,
                  height: 350,
                ),
              ),

              const SizedBox(height: 10),

              // Judul
              Text(
                itemGrid['judul'],
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),

              const SizedBox(height: 10),

              // Harga
              Text(
                itemGrid['harga'],
                style: const TextStyle(
                  color: Colors.orange,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}