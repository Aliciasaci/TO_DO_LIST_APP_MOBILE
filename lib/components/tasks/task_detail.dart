import 'package:flutter/material.dart';
import '../../models/task.dart';
// import 'package:intl/intl.dart';


class TaskDetails extends StatelessWidget {
  const TaskDetails({ Key? key, required this.task, required this.onClosed }) : super(key: key);
  final Task? task;
  final Function onClosed;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
     title: const Text('Détail de la tâche'),
        content: SingleChildScrollView(
          child: ListBody(
            children:<Widget>[
              Text(task!.content),
              Text(task!.createdAt.toString()),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: const Text('ok'),
            onPressed: () {
              onClosed();
              // Navigator.of(context).pop();
            },
          ),
        ],
    );
  }
}