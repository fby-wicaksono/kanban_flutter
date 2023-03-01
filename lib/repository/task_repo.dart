import 'package:kanban_flutter_sample/data/drift_client.dart';

class TaskRepo {
  const TaskRepo({required this.database});

  final AppDatabase database;

  Future<int> addTask(TasksCompanion tasksCompanion) {
    return database.addTask(tasksCompanion);
  }

  Future<List<Task>> getAllTasks() {
    return database.getAllTasks;
  }

  Future<bool> updateTask(Task task) {
    return database.updateTask(task);
  }

  Future deleteTask(Task task) {
    return database.deleteTask(task);
  }
}
