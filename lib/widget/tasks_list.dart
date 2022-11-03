// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../model/task_data.dart';
import 'task_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer <TaskData>(
        builder: (context, taskData, child)
    {
      return ListView.builder(
          itemCount: taskData.tasks
              .length,
          itemBuilder: (content, index) {
            return TaskTile(
                isChecked: taskData
                    .tasks [index].isDone,
                taskTitle: taskData
                    .tasks [index].name,
                checkBoxChange: (newValue) {
                  taskData.updateTask(taskData.tasks[index]);
                });
          }
          );
     }
     );
  }
}