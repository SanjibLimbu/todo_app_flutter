import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: const Text('This is a Task'),
      trailing: Checkbox(value: false, onChanged: ((value) {})),
    );
  }
}