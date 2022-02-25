class TodoModel {
  String todoTitle;
  bool completed;

  TodoModel({required this.todoTitle, this.completed = false});

  void toggleCompleted() {
    completed = !completed;
  }
}
