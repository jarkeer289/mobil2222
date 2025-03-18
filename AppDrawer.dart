import 'package:flutter/material.dart';
import 'package:uygulama2/LoginPage.dart';
import 'package:uygulama2/TaskListPage.dart';
import 'package:uygulama2/TaskPage.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.blue),
            child: Text("Menü", style: TextStyle(color: Colors.white, fontSize: 24)),
          ),
          ListTile(
            title: Text("Görev Ekle"),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => TaskPage()),
              );
            },
          ),
          ListTile(
            title: Text("Görev Listesi"),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => TaskListPage()),
              );
            },
          ),
          ListTile(
            title: Text("Çıkış Yap"),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) =>  LoginPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}