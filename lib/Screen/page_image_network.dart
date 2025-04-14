import 'package:flutter/material.dart';

class GambarNetwork extends StatelessWidget {
  const GambarNetwork({super.key});

  @override
  Widget build(BuildContext context) {
  return Scaffold(
  appBar: AppBar(
  backgroundColor: Colors.purple,
  title: Text('Page url Image'),
  ),

  body: Center(
  child:Image.network('https://images.unsplash.com/photo-1607237138185-eedd9c632b0b')
  ),
  );
  }
  }