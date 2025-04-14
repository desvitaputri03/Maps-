import 'package:flutter/material.dart';
class PageDua extends StatelessWidget {
  const PageDua({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page Dua'),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              Icons.home,
              size: 35,
              color: Colors.green,
            ),
            Icon(
              Icons.app_blocking,
              size: 35,
              color: Colors.purple,
            ),
            Icon(
              Icons.person,
              size: 35,
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}