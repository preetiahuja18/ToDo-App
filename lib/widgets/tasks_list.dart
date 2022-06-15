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
            final task=taskData.tasks[index];
            return Tasktile(
              taskTitle: task.name, // widget refers to the stful wid.
              isChecked: task.isDone,
              checkboxCallback: (bool checkboxState) { //may be bool
                taskData.updateTask(task);
                },
              longPressCallback:(){
                taskData.deleteTask(task);
                },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
