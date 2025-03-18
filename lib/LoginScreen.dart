import 'package:flutter/material.dart';

import 'TaskAddScreen.dart';


class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Login", style: TextStyle(fontSize: 24)),
            TextField(decoration: InputDecoration(labelText: "Kullanıcı Adı")),
            TextField(decoration: InputDecoration(labelText: "Şifre"), obscureText: true),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => TaskAddScreen()),
                );
              },
              child: Text("Giriş Yap"),
            ),
          ],
        ),
      ),
    );
  }
}
