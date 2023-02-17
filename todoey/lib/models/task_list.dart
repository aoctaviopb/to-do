import 'package:flutter/material.dart';
import 'package:todoey/models/task.dart';
import 'dart:collection';

class Tasks extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'Buy Milk!!'),
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  void add(newTask) {
    _tasks.add(Task(name: newTask));
    notifyListeners();
  }

  int get length {
    return _tasks.length;
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask (index) {
    _tasks.removeAt(index);
    notifyListeners();
  }
}
