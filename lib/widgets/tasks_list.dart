import 'package:flutter/material.dart';
import 'package:todo_app/widgets/tasks_tile.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/models/task_data.dart';
class TasksList extends StatelessWidget {
  const TasksList({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return Tasktile(
              taskTitle: taskData.tasks[index].name, // widget refers to the stful wid.
              isChecked: taskData.tasks[index].isDone,
              checkboxCallback: (bool checkboxState) {
                // setState(() {
                // Provider.of<TaskData>(context).tasks[index].toggleDone();
                //});
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
