import 'package:flutter/material.dart';
import 'package:listinha/model/task_data.dart';
import 'package:listinha/widgets/task_item.dart';
import 'package:provider/provider.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskItem(
              isChecked: taskData.tasks[index].complete,
              taskTitle: taskData.tasks[index].name,
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
