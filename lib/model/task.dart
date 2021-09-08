class Task {
  final String name;
  bool complete;

  Task({required this.name, this.complete = false});

  void handleTask() {
    complete = !complete;
  }
}
