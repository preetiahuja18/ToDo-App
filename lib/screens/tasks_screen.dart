import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/widgets/tasks_list.dart';
import 'package:todo_app/screens/add_tasks_screen.dart';
class TasksScreen extends StatelessWidget {

  // we can call this function by this way or as mentioned in show modal bottom method,
  // Widget buildBottomSheet(BuildContext context){
  //  return Container(
    //);

  //}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        onPressed: () {   //new container with pop up
          showModalBottomSheet(context: context, builder: (context)=> AddTaskScreen());
        },
        child: Icon(Icons.add),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 60.0,left: 30.0,right:30,bottom: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  <Widget>[
                CircleAvatar(
                  child:  Icon(
                    Icons.list,
                    size:30.0,
                    color: Colors.lightBlueAccent,
                  ),
                backgroundColor: Colors.white,
                radius: 30.0,
                ),
                SizedBox(
                  height:30.0,
                ),
                Text(
                  'Todoey',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 50.0,
                  fontWeight: FontWeight.w700,
                ),
                ),
                Text(
                  '12 Tasks',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft:Radius.circular(20.0),topRight:Radius.circular(20.0),
                ),
              ),
              child: Tasks_List(),
                
            ),
          ),
        ],
      ),
    );
  }
}


