// ignore_for_file: prefer_const_constructors_in_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:todoey/models/task_data.dart';
import 'package:todoey/widgets/tasks_tile.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {
  // VoidCallback onLongPressCallback () {
  //   return Provider.of(context).
  // }

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, taskData, child) {
      taskData = Provider.of(context);
      return ListView.builder(
        itemBuilder: (context, index) {
          final task = taskData.tasks[index];
          return TaskTile(
              isChecked: task.isDone,
              taskTitle: task.name,
              checkboxCallback: () {
                taskData.updateTask(task);
              },
              longPressCallback: () {
                taskData.deleteTask(task);
              });
        },
        itemCount: taskData.taskCount,
      );
    });
  }
}
