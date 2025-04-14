import 'package:flutter/material.dart';
import 'package:flutter_app_desvita/Screen/custom_grid/page_custom_grid.dart';
import 'package:flutter_app_desvita/Screen/list_berita/page_list_berita.dart';
import 'package:flutter_app_desvita/Screen/maps/list_wisata_page.dart';
import 'package:flutter_app_desvita/Screen/maps/map1.dart';
import 'package:flutter_app_desvita/Screen/maps/map3_multiple_maker.dart';
import 'package:flutter_app_desvita/Screen/maps/maps_pnp.dart';
import 'package:flutter_app_desvita/Screen/maps/splash_screen.dart';
import 'package:flutter_app_desvita/Screen/page_dua.dart';
import 'package:flutter_app_desvita/Screen/page_empat.dart';
import 'package:flutter_app_desvita/Screen/page_form_login.dart';
import 'package:flutter_app_desvita/Screen/page_form_register.dart';
import 'package:flutter_app_desvita/Screen/page_gambar.dart';
import 'package:flutter_app_desvita/Screen/page_image_network.dart';
import 'package:flutter_app_desvita/Screen/page_notification.dart';
import 'package:flutter_app_desvita/Screen/page_satu.dart';
import 'package:flutter_app_desvita/Screen/page_tiga.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'flutter_app_desvita',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        useMaterial3: true,
      ),
      home: const PageOneWithDrawer(),
    );
  }
}

class PageOneWithDrawer extends StatelessWidget {
  const PageOneWithDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mobile App MI2C', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.redAccent,
      ),
      drawer: const AppDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildMenuButton(context, 'Page Gambar', const PageGambar(), Colors.blueAccent),
            _buildMenuButton(context, 'Page Login', const PageFormLogin(), Colors.blueAccent),
            _buildMenuButton(context, 'Drower Toast', const PageNotification(), Colors.blueAccent),
            _buildMenuButton(context, 'Custom Grid', const PageCustomGrid(), Colors.blueAccent),
            _buildMenuButton(context, 'Form Register', const PageFormRegister(), Colors.blueAccent),
            _buildMenuButton(context, 'Maps PNP', MapsPnp(), Colors.blueAccent),
            _buildMenuButton(context, 'Maps Wisata', const SplashScreenWisata(), Colors.teal),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuButton(BuildContext context, String title, Widget page, Color color) {
    return MaterialButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      },
      color: color,
      child: Text(
        title,
        style: const TextStyle(fontSize: 14, color: Colors.white),
      ),
    );
  }
}

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Colors.lightBlue),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.white,
                  child: Icon(Icons.person, size: 40, color: Colors.pinkAccent),
                ),
                SizedBox(height: 8),
                Text(
                  'Desvita Putri',
                  style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                Text(
                  'desvitaputri65@gmail.com',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ],
            ),
          ),
          _buildDrawerItem(context, 'Satu', const PageSatu()),
          _buildDrawerItem(context, 'Dua', const PageDua()),
          _buildDrawerItem(context, 'Tiga', const PageTiga()),
          _buildDrawerItem(context, 'Empat', const PageListEmpat()),
          _buildDrawerItem(context, 'Gambar', const PageGambar()),
          _buildDrawerItem(context, 'Login', const PageFormLogin()),
          _buildDrawerItem(context, 'Register', const PageFormRegister()),
          _buildDrawerItem(context, 'Network Image', const GambarNetwork()),
          _buildDrawerItem(context, 'Drower Toast', const PageNotification()),
          _buildDrawerItem(context, 'List Berita', const PageListBerita()),
          _buildDrawerItem(context, 'Custom Grid', const PageCustomGrid()),
          _buildDrawerItem(context, 'Maps Padang', MapsPadang()),
          _buildDrawerItem(context, 'Maps PNP', MapsPnp()),
          _buildDrawerItem(context, 'Maps Kampus Padang', Map3MultipleMarker()),
          _buildDrawerItem(context, 'Maps Wisata', const SplashScreenWisata()),
          _buildDrawerItem(context, 'List Wisata', ListWisataPage()),
        ],
      ),
    );
  }

  Widget _buildMenuTitle(String title) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
      child: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
      ),
    );
  }

  Widget _buildDrawerItem(BuildContext context, String title, Widget page) {
    return ListTile(
      title: Text(title),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      },
    );
  }
}