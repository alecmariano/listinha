import 'package:flutter/material.dart';

class TaskItem extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;

  TaskItem({required this.isChecked, required this.taskTitle});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightGreen,
        value: isChecked,
        onChanged: null,
      ),
    );
  }
}
