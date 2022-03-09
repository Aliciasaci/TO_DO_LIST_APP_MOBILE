import 'package:flutter/material.dart';
import 'screens/all_tasks.dart';

void main() {
  runApp(const TodoList());
}

class TodoList extends StatelessWidget {
  const TodoList({Key? key}) : super(key: key);
  static const String title = 'To do list';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      theme: ThemeData(
        fontFamily: 'Poppins',
      ),
      home: const AllTasks(title : 'To do list'),
    );
  }
}


