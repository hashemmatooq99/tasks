import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tasks/model/task_data.dart';
import 'package:tasks/screen/taskScreen.dart';
import 'package:tasks/screen/welcomeScreen.dart';
import 'package:provider/provider.dart';
void main() {
  runApp( const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}


class _MyAppState extends State<MyApp> {

  String uname = '';
  getprefs() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState((){
      uname = prefs.getString("name")!;
    });
    print('Done');
  }

  @override
  void initState() {
    getprefs();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    return  ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        home: uname != '' ? TaskScreen() : WelcomeScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}