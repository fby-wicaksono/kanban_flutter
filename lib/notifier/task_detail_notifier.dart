import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kanban_flutter_sample/data/drift_client.dart';
import 'package:kanban_flutter_sample/data/entity/tasks.dart';
import 'package:kanban_flutter_sample/notifier/task_detail_state.dart';
import 'package:kanban_flutter_sample/provider/database_provider.dart';

class TaskDetailNotifier extends StateNotifier<TaskDetailState> {
  TaskDetailNotifier(this.ref) : super(const TaskDetailState.initial());

  final Ref ref;

  void updateTaskToInProgress(Task task) async {
    final repo = ref.read(taskRepoProvider);

    state = const TaskDetailState.loading();

    final updatedTask = Task(
      id: task.id,
      title: task.title,
      label: task.label,
      description: task.description,
      status: TaskStatus.inProgress,
      startDate: DateTime.now(),
    );

    try {
      await repo.updateTask(updatedTask);
      state = TaskDetailState.success(updatedTask);
    } catch (error) {
      state = const TaskDetailState.failed('Failed updating task');
    }
  }

  void updateTaskToCompeted(Task task) async {
    final repo = ref.read(taskRepoProvider);

    state = const TaskDetailState.loading();

    final updatedTask = Task(
      id: task.id,
      title: task.title,
      label: task.label,
      description: task.description,
      status: TaskStatus.completed,
      startDate: task.startDate,
      endDate: DateTime.now(),
    );

    try {
      await repo.updateTask(updatedTask);
      state = TaskDetailState.success(updatedTask);
    } catch (error) {
      state = const TaskDetailState.failed('Failed updating task');
    }
  }
}
