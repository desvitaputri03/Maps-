import 'package:flutter/material.dart';
import 'package:flutter_app_desvita/Screen/list_berita/page_list_berita.dart';
import 'package:flutter_app_desvita/Screen/page_image_network.dart';
import 'package:flutter_app_desvita/Screen/page_satu.dart';
import 'package:flutter_app_desvita/Screen/page_dua.dart';
import 'package:flutter_app_desvita/Screen/page_tiga.dart';
import 'package:flutter_app_desvita/Screen/page_form_login.dart';
import 'package:flutter_app_desvita/Screen/page_form_register.dart';
import 'package:flutter_app_desvita/Screen/page_gambar.dart';
import 'package:flutter_app_desvita/Screen/custom_grid/page_custom_grid.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mobile Apps MI2C'),
        backgroundColor: Colors.pinkAccent,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Desvita Putri"),
              accountEmail: Text("@desvitaputri65@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(Icons.person, color: Colors.pinkAccent),
              ),
            ),
            _buildDrawerItem(context, 'Page Satu', PageSatu()),
            _buildDrawerItem(context, 'Page Dua', PageDua()),
            _buildDrawerItem(context, 'Page Tiga', PageTiga()),
            _buildDrawerItem(context, 'Form Login', PageFormLogin()),
            _buildDrawerItem(context, 'Form Register', PageFormRegister()),
            _buildDrawerItem(context, 'Gambar', PageGambar()),
            _buildDrawerItem(context, 'Image Network', GambarNetwork()),
            _buildDrawerItem(context, 'Custom Grid', PageCustomGrid()),
            _buildDrawerItem(context, 'List Berita', PageListBerita()),
          ],
        ),
      ),
      body: Center(
        child: Text(
          'Selamat Datang di Aplikasi Desvita Putri',
          style: TextStyle(fontSize: 24),
        ),
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