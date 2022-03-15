import 'package:flutter/material.dart';
import '../../models/task.dart';
// import 'package:intl/intl.dart';

class TaskDetails extends StatelessWidget {
  const TaskDetails(
      {Key? key,
      required this.task,
      required this.onClosed,
      required this.onDelete})
      : super(key: key);
  final Task? task;
  final Function onClosed;
  final Function onDelete;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Détail de la tâche'),
      content: SingleChildScrollView(
        child: ListBody(
          children: <Widget>[
            Text(task!.content,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                )),
            const SizedBox(height: 10),
            Text(task!.createdAt.toString().substring(1, 19)),
            const SizedBox(height: 10),
            task!.completed
                ? const Text('status : not done',
                    style: TextStyle(color: Colors.red))
                : const Text('status : done',
                    style: TextStyle(color: Colors.green))
          ],
        ),
      ),
      actions: <Widget>[
        TextButton(
          child: const Text('ok'),
          onPressed: () {
            onClosed();
          },
        ),
        TextButton(
          child: const Text('Delete'),
          onPressed: () {
                    onDelete();
          }
        ),
        TextButton(
          child: const Text('Update'),
          onPressed: () {},
        ),
      ],
    );
  }
}


/*Si l'utilisateur clique sur le bouton de suppression, la Task concernée doit-être
supprimée et les données du composant TaskMaster mises à jour. Enfin, le
composant TaskDetails doit être masqué */