import 'package:flutter/material.dart';
class PageTiga extends StatelessWidget{
  const PageTiga({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Page Tiga'),
        backgroundColor: Colors.lightGreen,
      ),

      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.home,
                  size: 35,
                  color: Colors.pink,
                ),
                Text('Home')
              ],
            ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.spa,
                  size: 35,
                  color: Colors.red,
                ),
                Text('Relax')
              ],
            ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.alarm_on_outlined,
                  size: 35,
                  color: Colors.black,
                ),
                Text('Alarm')
              ],
            ),

          ],
        ),
      ),
    );
  }
}