// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:todolist/main.dart';

class AllTasks extends StatefulWidget {
  const AllTasks({Key? key}) : super(key: key);

  @override
  State<AllTasks> createState() => _AllTasksState();
}

class _AllTasksState extends State<AllTasks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(TodoList.title),
          centerTitle: true,
          toolbarHeight: 60,
        ),
        body: Center(
            child:
                // ignore: prefer_const_literals_to_create_immutables
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            'HELLOOOOOOO',
             style: TextStyle (
              fontFamily: 'Poppins',
              fontSize: 24,
            ),
          ),
        ])));
  }
}
