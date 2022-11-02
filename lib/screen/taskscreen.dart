import 'package:flutter/material.dart';
import '../widget/add_task_screen.dart';
import '../widget/tasks_list.dart';
class TaskScreen extends StatelessWidget{
   const TaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton:   FloatingActionButton(
        onPressed : (){
         showModalBottomSheet(
           isScrollControlled: true,
             context: context,
             builder: (context) =>
                 SingleChildScrollView(child: Container(
                   padding: EdgeInsets.only(
                     bottom: MediaQuery.of(context).viewInsets.bottom
                   ),
                     child: const AddTaskScreen()))
         );
        },
        backgroundColor: Colors.white,
        child:  const Icon(Icons.add,color: Colors.teal,size:40),
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
            children:  const [
              Icon(Icons.checklist_rtl_outlined,
                size: 35,
                color: Colors.white,
              ),
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
          const Text(
              '4 Tasks',
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
              child: const TasksList(),
            ),
          )
        ],
      )
      ),
    );
  }
}