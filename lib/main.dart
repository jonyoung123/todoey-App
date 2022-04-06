// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:todoey/models/task_data.dart';
import 'package:todoey/screens/tasks_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      //builder: (context, child) => TaskData(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
