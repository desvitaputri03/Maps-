import 'package:flutter/material.dart';

class PageGambar extends StatelessWidget {
  const PageGambar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.purple, title: Text('Kelas MI2C')),
      body: Center(child: Image.asset('gambar/Micew.jpg')),
    );
  }
}
