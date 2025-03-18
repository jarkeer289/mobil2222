import 'package:flutter/material.dart';
import 'package:uygulama2/AppDrawer.dart';
import 'package:uygulama2/TaskPage.dart';

class TaskListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Görev Listesi")),
      drawer: AppDrawer(),
      body: TaskPage.gorevler.isEmpty
          ? Center(child: Text("Görevler Boş"))
          : ListView.builder(
        itemCount: TaskPage.gorevler.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(TaskPage.gorevler[index]),
          );
        },
      ),
    );
  }
}