import 'package:flutter/material.dart';

import 'screen/taskscreen.dart';


void main() {
  runApp( MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: TaskScreen(),
    );
  }
}
