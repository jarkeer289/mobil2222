import 'package:flutter/material.dart';
import 'package:uygulama2/AppDrawer.dart';

class TaskPage extends StatefulWidget {
  static List<String> gorevler = [];

  @override
  _TaskPageState createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  TextEditingController kontrolcu = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Görev Ekle")),
      drawer: AppDrawer(),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: kontrolcu,
              decoration: InputDecoration(labelText: "Görev Başlığı"),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                if (kontrolcu.text.isNotEmpty) {
                  setState(() {
                    TaskPage.gorevler.add(kontrolcu.text);
                    kontrolcu.clear();
                  });
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Görev Eklendi')),
                  );
                }
              },
              child: Text("Görev Ekle"),
            ),
          ],
        ),
      ),
    );
  }
}
