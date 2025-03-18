import 'package:flutter/material.dart';
import 'package:uygulama2/TaskPage.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Giriş Ekranı")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: "Kullanıcı Adı",
              ),
            ),
            TextField(
              decoration: InputDecoration(
                labelText: "Şifre",
              ),
            ),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => TaskPage()),
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