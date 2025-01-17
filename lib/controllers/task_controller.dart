import '../models/task.dart';

class TaskController {
  List<Task> _tasks = [];

  List<Task> get tasks => _tasks;

  void addTask(String title) {
    final task = Task(
      id: DateTime.now().toString(),
      title: title,
      createdAt: DateTime.now(),
    );
    _tasks.add(task);
  }

  void toggleTask(String id) {
    final taskIndex = _tasks.indexWhere((task) => task.id == id);
    if (taskIndex != -1) {
      _tasks[taskIndex].isCompleted = !_tasks[taskIndex].isCompleted;
    }
  }

  void deleteTask(String id) {
    _tasks.removeWhere((task) => task.id == id);
  }
}
