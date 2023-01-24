import 'package:flutter/foundation.dart';
import 'package:todo_app/models/tasks.dart';

class TaskData extends ChangeNotifier{
   List<Task> tasks = [
    Task(isDone: false, name: 'Buy milk'),
    Task(isDone: false, name: 'Buy eggs'),
    Task(isDone: false, name: 'Buy bread'),
  ];

  int get taskCount{
     return tasks.length;
  }

}