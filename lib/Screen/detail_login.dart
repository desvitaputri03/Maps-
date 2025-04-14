import 'package:flutter/material.dart';

class DetailLogin extends StatelessWidget {
  final String username;
  final String password;

  const DetailLogin(this.username, this.password, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('nama User $username'),
        backgroundColor: Colors.pink,
      ),
      body: Center(child: Text("Selamat Datang: $username dan Password : $password"),
      ),
    );
  }
}