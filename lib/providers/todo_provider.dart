import 'dart:collection';
import 'package:flutter/material.dart';

import '../model/todo_model.dart';

class TodoProvider with ChangeNotifier {
  List<TodoModel> _tasks = [];

  UnmodifiableListView<TodoModel> get allTasks => UnmodifiableListView(_tasks);

  void addTask(String task) {
    _tasks.add(TodoModel(todoTitle: task, completed: false));
    notifyListeners();
  }

  void toggleTask(TodoModel task) {
    final taskIndex = _tasks.indexOf(task);
    _tasks[taskIndex].toggleCompleted();
    notifyListeners();
  }

  void deleteTask(TodoModel task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
