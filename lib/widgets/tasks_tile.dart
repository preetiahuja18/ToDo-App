import 'package:flutter/material.dart';
class Tasktile extends StatefulWidget {
  @override
  _TasktileState createState() => _TasktileState();
}
class _TasktileState extends State<Tasktile> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title:Text(
        'This is a task',
        style: TextStyle(
          decoration: isChecked? TextDecoration.lineThrough: null),
        ),
      trailing:SizedBox(
        height:100,
        width:100,
        child: TaskCheckbox(
          checkboxState: isChecked,
          toggleCheckboxState: (bool checkboxState ){
            setState(() {
              isChecked=  checkboxState;
            });
          },
        ),
      ),
    );
  }
}

class TaskCheckbox extends StatelessWidget {
  final bool checkboxState;
  final  Function  toggleCheckboxState;

  TaskCheckbox({ required this.checkboxState, required this.toggleCheckboxState});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: checkboxState,
      onChanged: toggleCheckboxState(),
    );
  }
}




