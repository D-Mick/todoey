import 'package:flutter/foundation.dart';
import 'tasks.dart';
class TaskData extends ChangeNotifier{
  List<Task> tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy bread'),
  ];

  int get taskCount{
    return tasks.length;
  }

  void addTasks(String task){
    final newTask = Task(name: task);
    tasks.add(newTask);
    notifyListeners();

    tasks.forEach((element) {print(element.name);});
  }
}