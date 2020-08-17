import 'package:flutter/foundation.dart';
import 'tasks.dart';
import 'package:collection/collection.dart';

class TaskData extends ChangeNotifier{
  List<Task> _tasks = [];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
}

  void changeData(String newData) {
    _tasks.add(Task(name: newData));
    notifyListeners();
  }

  int get taskCount{
    return _tasks.length;
  }

  void toggleDone(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task){
    _tasks.remove(task);
    notifyListeners();
  }
}