import 'package:flutter/material.dart';
class PageListEmpat extends StatelessWidget {
  const PageListEmpat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List Horizontal"),
        backgroundColor: Colors.yellow,
      ),

      body: SizedBox(
        height: 200,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: List.generate(100, (index){
            return Card(
              child: Center(
                child: Text('Horizontal $index'),
              ),
            );
          }),
        ),
      ),
    );
  }
}