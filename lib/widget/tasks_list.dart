// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../model/task.dart';
import 'task_tile.dart';

class TasksList extends StatefulWidget {
  const TasksList({
    Key? key,
  }) : super(key: key);

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(name: 'go to shopping'),
    Task(name: 'go to playing'),
    Task(name: 'go to study'),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (content,index){
          return TaskTile(
              isChecked: tasks [index].isDone,
              taskTitle: tasks [index].name,
              checkBoxChange: (newValue) {
                setState(() {
                  tasks [index].doneChange();
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
