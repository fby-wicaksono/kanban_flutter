import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kanban_flutter_sample/data/drift_client.dart';
import 'package:kanban_flutter_sample/data/entity/tasks.dart';
import 'package:kanban_flutter_sample/notifier/task_list_notifier.dart';

final taskNotifierProvider = StateNotifierProvider.autoDispose<TaskListNotifier, List<Task>>((ref) =>
    TaskListNotifier(ref));

final taskListProvider = Provider.autoDispose.family<List<Task>, TaskStatus>((ref, status) {
  final tasksNotifierProvider = ref.watch(taskNotifierProvider);
  return tasksNotifierProvider.where((task) => task.status == status).toList();
});
