import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kanban_flutter_sample/data/drift_client.dart';
import 'package:kanban_flutter_sample/data/entity/tasks.dart';
import 'package:kanban_flutter_sample/notifier/edit_task_state.dart';
import 'package:kanban_flutter_sample/provider/database_provider.dart';

class EditTaskNotifier extends StateNotifier<EditTaskState> {
  EditTaskNotifier(this.ref) : super(const EditTaskState.initial());

  final Ref ref;

  void addTaskToDatabase({
    required String title,
    required String label,
    required String description,
  }) async {
    final repo = ref.read(taskRepoProvider);

    state = const EditTaskState.loading();

    if (title.isEmpty || label.isEmpty || description.isEmpty) {
      state = const EditTaskState.failed('All data must be filled');
      return;
    }

    try {
      final taskCompanion = TasksCompanion.insert(
        title: title,
        label: label,
        description: description,
        status: TaskStatus.toDo,
      );

      final insertedId = await repo.addTask(taskCompanion);

      state = EditTaskState.successAdded(
        Task(
          id: insertedId,
          title: title,
          label: label,
          description: description,
          status: TaskStatus.toDo,
        ),
      );
    } catch (error) {
      state = const EditTaskState.failed('Fail to add task');
    }
  }

  void editTask({
    required int id,
    required String title,
    required String label,
    required String description,
    required TaskStatus status,
  }) async {
    final repo = ref.read(taskRepoProvider);

    state = const EditTaskState.loading();

    if (title.isEmpty || label.isEmpty || description.isEmpty) {
      state = const EditTaskState.failed('All data must be filled');
      return;
    }

    final task = Task(
      id: id,
      title: title,
      label: label,
      description: description,
      status: status,
    );

    try {
      await repo.updateTask(task);
      state = EditTaskState.successEdited(task);
    } catch (error) {
      state = const EditTaskState.failed('Failed to edit task');
    }
  }

  void deleteTask(Task task) async {
    final repo = ref.read(taskRepoProvider);

    state = const EditTaskState.loading();

    try {
      await repo.deleteTask(task);
      state = EditTaskState.successDeleted(task);
    } catch (error) {
      state = const EditTaskState.failed('Failed to delete task');
    }
  }
}
