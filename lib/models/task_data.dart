import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:todo_app/models/tasks.dart';

class TaskData extends ChangeNotifier {
  final List<Task> _tasks = [
    Task(isDone: false, name: 'Buy milk'),
    Task(isDone: false, name: 'Buy eggs'),
    Task(isDone: false, name: 'Buy bread'),
  ];

  int get taskCount {
    return _tasks.length;
  }

  void addTask(String newTaskTitle) {
    final task = Task(name: newTaskTitle);
    _tasks.add(task);
    notifyListeners();
  }

  UnmodifiableListView<Task>? get tasks {
    return UnmodifiableListView(_tasks);
  }

  void updateTask(Task task) {
    task.toggleDOne();
    notifyListeners();
  }
}
