import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/todo_provider.dart';

class TodoAction extends StatelessWidget {
  const TodoAction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final task = Provider.of<TodoProvider>(context);

    return ListView.builder(
      itemCount: task.allTasks.length,
      itemBuilder: ((context, index) => ListTile(
            leading: Checkbox(
              value: task.allTasks[index].completed,
              onChanged: ((_) => task.toggleTask(task.allTasks[index])),
            ),
            title: Text(task.allTasks[index].todoTitle),
            trailing: IconButton(
                onPressed: () {
                  task.deleteTask(task.allTasks[index]);
                },
                icon: const Icon(Icons.delete)),
          )),
    );
  }
}
