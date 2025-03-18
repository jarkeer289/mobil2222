import 'package:flutter/material.dart';

import 'AppDrawer.dart';
import 'TaskAddScreen.dart';


class TaskListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Görev Listesi")),
      drawer: AppDrawer(),
      body: tasks.isEmpty
          ? Center(child: Text("Görevler Boş"))
          : ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(tasks[index]),
          );
        },
      ),
    );
  }
}