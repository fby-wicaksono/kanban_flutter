import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kanban_flutter_sample/data/drift_client.dart';
import 'package:kanban_flutter_sample/data/entity/tasks.dart';
import 'package:kanban_flutter_sample/notifier/task_detail_state.dart';
import 'package:kanban_flutter_sample/provider/database_provider.dart';

class TaskDetailNotifier extends StateNotifier<TaskDetailState> {
  TaskDetailNotifier(this.ref) : super(const TaskDetailState.initial());

  final Ref ref;

  void addTaskToDatabase({
    required String title,
    required String label,
    required String description,
    required TaskStatus status,
    required DateTime? endDate,
  }) async {
    final repo = ref.read(taskRepoProvider);

    state = const TaskDetailState.loading();

    if (title.isEmpty || label.isEmpty || description.isEmpty || endDate == null) {
      state = const TaskDetailState.failed('All data must be filled');
      return;
    }

    try {
      final taskCompanion = TasksCompanion.insert(
        title: title,
        label: label,
        description: description,
        status: status,
        startDate: DateTime.now(),
        endDate: endDate,
      );

      final insertedId = await repo.addTask(taskCompanion);

      state = TaskDetailState.successAdded(
        Task(
          id: insertedId,
          title: title,
          label: label,
          description: description,
          status: status,
          startDate: DateTime.now(),
          endDate: endDate,
        ),
      );
    } catch (error) {
      state = const TaskDetailState.failed('Fail to add task');
    }
  }

  void editTask({
    required int id,
    required String title,
    required String label,
    required String description,
    required TaskStatus status,
    required DateTime? endDate,
  }) async {
    final repo = ref.read(taskRepoProvider);

    state = const TaskDetailState.loading();

    if (title.isEmpty || label.isEmpty || description.isEmpty || endDate == null) {
      state = const TaskDetailState.failed('All data must be filled');
      return;
    }

    final task = Task(
      id: id,
      title: title,
      label: label,
      description: description,
      status: status,
      startDate: DateTime.now(),
      endDate: endDate,
    );

    try {
      await repo.updateTask(task);
      state = TaskDetailState.successEdited(task);
    } catch (error) {
      state = const TaskDetailState.failed('Failed to edit task');
    }
  }

  void deleteTask(Task task) async {
    final repo = ref.read(taskRepoProvider);

    state = const TaskDetailState.loading();

    try {
      await repo.deleteTask(task);
      state = TaskDetailState.successDeleted(task);
    } catch (error) {
      state = const TaskDetailState.failed('Failed to delete task');
    }
  }
}
