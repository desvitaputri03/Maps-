import 'package:flutter/material.dart';
class PageSatu extends StatelessWidget {
  const PageSatu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page Satu'),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Text('Halaman Page Satu'),
      ),
    );
  }
}