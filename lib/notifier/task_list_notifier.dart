import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kanban_flutter_sample/data/drift_client.dart';
import 'package:kanban_flutter_sample/provider/database_provider.dart';

class TaskListNotifier extends StateNotifier<List<Task>> {
  TaskListNotifier(this.ref) : super([]);

  final Ref ref;

  void getAllTasks() async {
    try {
      final tasks = await ref.read(taskRepoProvider).getAllTasks();
      state = tasks;
    } catch (error) {
      state = [];
    }
  }

  void addNewTask({required Task task}) {
    state = [...state, task];
  }

  void editTask(Task task) {
    state = [
      for (final element in state)
        if (element.id == task.id) task else element
    ];
  }

  void deleteTask(Task task) {
    state = [
      for (final element in state)
        if (element.id != task.id) element,
    ];
  }
}
