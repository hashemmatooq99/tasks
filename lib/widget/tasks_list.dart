// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../model/task.dart';
import 'task_tile.dart';

class TasksList extends StatefulWidget {
  final List<Task> tasks;
  TasksList (this.tasks);


  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: widget.tasks.length,
        itemBuilder: (content,index){
          return TaskTile(
              isChecked: widget.tasks [index].isDone,
              taskTitle: widget.tasks [index].name,
              checkBoxChange: (newValue) {
                setState(() {
                  widget.tasks [index].doneChange();
          });
        });
        },
    );

    /*return ListView(
      children: [
        TaskTile(
          taskTitle: tasks[0].name,
          isChecked: tasks[0].isDone
        ),
    TaskTile(
    taskTitle: tasks[1].name,
    isChecked: tasks[1].isDone
    ),
    TaskTile(
    taskTitle: tasks[2].name,
    isChecked: tasks[2].isDone
    ),
      ],
    );*/
  }
}
