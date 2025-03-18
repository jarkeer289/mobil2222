import 'package:flutter/material.dart';

import 'LoginScreen.dart';
import 'TaskAddScreen.dart';
import 'TaskListScreen.dart';

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
                MaterialPageRoute(builder: (context) => TaskAddScreen()),
              );
            },
          ),
          ListTile(
            title: Text("Görev Listesi"),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => TaskListScreen()),
              );
            },
          ),
          ListTile(
            title: Text("Çıkış yap"),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => LoginScreen()),
              );
            },
          ),
        ],
      ),
    );
  }
}

