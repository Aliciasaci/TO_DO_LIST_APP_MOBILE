import 'package:flutter/material.dart';
import 'screens/all_tasks.dart';
import 'package:provider/provider.dart';
import '../data/tasks_collection.dart';

void main() {
  runApp(
    MultiProvider(
      providers : [
        ChangeNotifierProvider(create: (_) => CollectionData()),
      ],
          child : const TodoList()),
    );
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
      // home: const AllTasks(title : 'To do list'),
      initialRoute: '/all_tasks',
      routes : {
        '/all_tasks' : (context) => const AllTasks(title : 'To do list'),
        // 'one_task' :(context) => const TaskDetails(title : 'To do list')
      } 
    );
  }
}


