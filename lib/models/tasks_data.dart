import 'package:flutter/foundation.dart';
import 'tasks.dart';
import 'dart:collection';
class TaskData extends ChangeNotifier{
  List<Task> _tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy bread'),
  ];

  UnmodifiableListView<Task> get tasks => UnmodifiableListView(_tasks);

  int get taskCount{
    return _tasks.length;
  }

  void addTasks(String task){
    final newTask = Task(name: task);
    _tasks.add(newTask);
    notifyListeners();

    _tasks.forEach((element) {print(element.name);});
  }

  void updateTask(Task task){
    task.toggleDone();
    notifyListeners();
  }

  void delete(Task task){
    _tasks.remove(task);
    notifyListeners();
  }
}