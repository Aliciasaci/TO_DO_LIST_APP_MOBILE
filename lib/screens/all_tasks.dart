// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:todolist/main.dart';
import '../components/tasks/task_master.dart';
import '../components/tasks/task_detail.dart';
import 'package:todolist/data/tasks.dart' as data;
import '../models/task.dart';

class AllTasks extends StatefulWidget {
  const AllTasks({Key? key, required this.title}) : super(key: key);
  final String? title;
  @override
  State<AllTasks> createState() => _AllTasksState();
}

//Les données sont présente dans  data.tasks;
class _AllTasksState extends State<AllTasks> {
  List<Task> tasks = data.tasks;
  Task? chosenTask;

  //Récuperer la task envoyé depuis PreviewTask
  void onClickTask(task){
    setState(() {
      chosenTask = task;
    });
  }

  void onClosed(){
    setState(() {
      chosenTask = null;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(TodoList.title),
        centerTitle: true,
        toolbarHeight: 60,
        backgroundColor: Color.fromARGB(255, 231, 193, 22),
        elevation: 0.0,
      ),
      body : 
        Visibility(
        child: TaskMaster(tasks: tasks, onClickTask : onClickTask),
        visible: ( chosenTask == null ),
        replacement: TaskDetails(task : chosenTask, onClosed: onClosed) 
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
        },
        tooltip: 'Add a Task',
        child: const Icon(Icons.add),
        backgroundColor: Color.fromARGB(255, 231, 193, 22),
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}




