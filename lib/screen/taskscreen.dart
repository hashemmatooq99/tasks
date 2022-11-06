import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tasks/screen/welcomeScreen.dart';
import '../widget/add_task_screen.dart';
import '../widget/tasks_list.dart';

class TaskScreen extends StatefulWidget{
  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  var uname;

  getprefs() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState((){
      uname = prefs.getString("name");
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
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton:   FloatingActionButton(
        onPressed : (){
         showModalBottomSheet(
           shape: RoundedRectangleBorder(
             borderRadius: BorderRadius.vertical(top: Radius.circular(60)
                 ,bottom: Radius.circular(60))
           ),
           isScrollControlled: true,
             context: context,
             builder: (context) =>
                 SingleChildScrollView(child: Container(
                   padding: EdgeInsets.only(
                     bottom: MediaQuery.of(context).viewInsets.bottom
                   ),
                     child:  AddTaskScreen((newTaskTitle) {
                         }
                     )))
         );
        },
        backgroundColor: Colors.white,
        child:  const Icon(Icons.add,color: Colors.black,size:40),
      ),
      backgroundColor: Colors.black,
      body: Container(
          padding:  const EdgeInsets.only(
            top: 60,
            left: 20,
            right: 20,
            bottom: 80
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children:   [
              FloatingActionButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context)=>  WelcomeScreen()));
              },
                backgroundColor: Colors.black,
              child: Icon(Icons.person_add_alt_1)),
              SizedBox (width: 20),
              Text(
                  'Lets Do It 🔥',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
           Text(
              'Welcome $uname ',
            style: TextStyle(
              color: Colors.orange,
              fontSize: 16
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: Container(
                height: 200,
              decoration:  const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
              child:  TasksList(),
            ),
          )
        ],
      )
      ),
    );
  }
}