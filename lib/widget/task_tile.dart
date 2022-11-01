// ignore_for_file: unnecessary_import, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('Shopping',style: TextStyle(
        decoration: isChecked? TextDecoration.lineThrough : null ,
        fontWeight: FontWeight.bold,
      ),),
      trailing: TaskCheckBox(isChecked,
            (bool? newValue) {
        setState(() {
          isChecked = newValue!;
        });
      }),
    );
  }
}

class TaskCheckBox extends StatelessWidget {
   final bool? checkboxState ;
   final Function(bool?) checkboxChange;
   TaskCheckBox(this.checkboxState, this.checkboxChange);
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.teal,
      value: checkboxState,
      onChanged: checkboxChange
    );
  }
}