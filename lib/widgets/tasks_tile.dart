import 'package:flutter/material.dart';
class Tasktile extends StatelessWidget{
  final bool isChecked;
  final String taskTitle;
  final  Function checkboxCallback;
  final  Function longPressCallback;
  Tasktile({
    required this.isChecked,
    required this.taskTitle,
    required this.checkboxCallback,
    required this.longPressCallback,});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback(),
      title:Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked? TextDecoration.lineThrough: null),
        ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        //onChanged: checkboxCallback(),
        onChanged: (bool?value){
          checkboxCallback(value);
        },
      ),
    );
  }
}
