import 'package:flutter/foundation.dart';
import 'package:todo_app/models/task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier{
  List<Task> _tasks=[
    Task(name: 'Buy milk'),
    Task(name:'Buy fruit'),
    Task(name:'Buy bread'),
  ];

  UnmodifiableListView<Task> get tasks { // view of another list.
    return UnmodifiableListView(_tasks);
  }
  int get taskCount {
    return _tasks.length;
  }
  void addTask(String newTaskTitle){
    final task =Task(name:newTaskTitle);
    _tasks.add(task);
    notifyListeners();
  }
}