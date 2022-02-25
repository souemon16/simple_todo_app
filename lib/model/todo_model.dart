class TodoModel {
  String todoAction;
  bool completed;

  TodoModel({required this.todoAction, this.completed = false});

  void toggleCompleted() {
    completed = !completed;
  }
}
