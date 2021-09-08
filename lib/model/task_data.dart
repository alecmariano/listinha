import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:listinha/model/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [Task(name: 'Tarefa 1'), Task(name: 'Tarefa 2')];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

  void addTask(String newTask) {
    final task = Task(name: newTask);
    _tasks.add(task);
    notifyListeners();
  }
}
