// ignore_for_file: unnecessary_import, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
 final bool isChecked ;
 final String taskTitle ;
 TaskTile({super.key,
   required this.isChecked,required this.taskTitle});

  Widget build(BuildContext context) {
    return ListTile(
      title: Text(taskTitle,style: TextStyle(
        decoration: isChecked? TextDecoration.lineThrough : null ,
        fontWeight: FontWeight.bold,
      ),),
      trailing: Checkbox(
          activeColor: Colors.teal,
          onChanged: null,
          value: isChecked,
          //onChanged: checkboxChange
      )
    );
  }
}
//(bool? newValue)
//setState(() {
//isChecked = newValue!;
//});
