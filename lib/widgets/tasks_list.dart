import 'package:flutter/material.dart';
import 'package:todo_app/models/task_data.dart';

import 'package:todo_app/widgets/tasks_tile.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {
  const TasksList({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: ((context, taskData, child) {
        return ListView.builder(
            itemCount: taskData.taskCount,
            itemBuilder: (context, index) {
              final task = taskData.tasks![index];
              return TaskTile(
                isChecked: task.isDone,
                taskTile: task.name,
                checkboxCallback: (checkboxState) {
                  taskData.updateTask(task);
                },
              );
            });
      }),
    );
  }
}
