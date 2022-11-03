import 'package:flutter/material.dart';
import 'package:tasks/model/task_data.dart';
import 'screen/taskScreen.dart';
import 'package:provider/provider.dart';
void main() {
  runApp( const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        home: TaskScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
