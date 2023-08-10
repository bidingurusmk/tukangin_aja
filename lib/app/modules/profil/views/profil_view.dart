import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/profil_controller.dart';

class ProfilView extends GetView<ProfilController> {
  const ProfilView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    const title = 'Profil';
    return MaterialApp(
      title: title,
      home: Scaffold(
        backgroundColor: Colors.lightGreen,
        appBar: AppBar(
          title: const Text(title),
        ),
        body: ListView(
          children: const <Widget>[
            ClipOval(
              child: Image(
                image: AssetImage('assets/laki.png'),
                width: 100,
              ),
            ),
            ListTile(
              leading: Icon(Icons.people),
              title: Text('Nama : Budi'),
            ),
            ListTile(
              leading: Icon(Icons.email_rounded),
              title: Text('Email :budi@gmail.com'),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('Nomor WA:1234556788'),
            ),
            ListTile(
              leading: Icon(Icons.house),
              title: Text('Alamat : Jalan burung'),
            ),
          ],
        ),
      ),
    );
  }
}
