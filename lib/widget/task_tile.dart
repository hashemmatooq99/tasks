// ignore_for_file: unnecessary_import, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
 final bool isChecked ;
 final String taskTitle ;
 final void Function(bool?) checkBoxChange;

 TaskTile({
     required this.isChecked,
     required this.taskTitle,
     required this.checkBoxChange});

 @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(taskTitle,style: TextStyle(
        decoration: isChecked? TextDecoration.lineThrough : null ,
        fontWeight: FontWeight.bold,
      ),),
      trailing: Checkbox(
          activeColor: Colors.black,
          value: isChecked,
          onChanged: checkBoxChange,
      ),
    );
  }
}

