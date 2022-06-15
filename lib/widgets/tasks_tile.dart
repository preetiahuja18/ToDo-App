import 'package:flutter/material.dart';
class Tasktile extends StatelessWidget{
  final bool isChecked;
  final String taskTitle;
  final  Function checkboxCallback;
  Tasktile({required this.isChecked, required this.taskTitle,required this.checkboxCallback});
  @override
  Widget build(BuildContext context) {
    return ListTile(
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
