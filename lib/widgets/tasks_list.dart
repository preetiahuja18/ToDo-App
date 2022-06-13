import 'package:flutter/material.dart';
import 'package:todo_app/widgets/tasks_tile.dart';
class Tasks_List extends StatelessWidget {
const Tasks_List({
Key? key,
}) : super(key: key);

@override 
Widget build(BuildContext context) {
  return ListView(
    children: <Widget>[
      Tasktile(),
      Tasktile(),
      Tasktile(),
    ],

  );
}
}
