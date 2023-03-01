import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kanban_flutter_sample/data/entity/tasks.dart';
import 'package:kanban_flutter_sample/notifier/task_detail_notifier.dart';
import 'package:kanban_flutter_sample/notifier/task_detail_state.dart';

final selectedStatusProvider = StateProvider.autoDispose<TaskStatus>((ref) => TaskStatus.toDo);

final selectedDueDateProvider = StateProvider.autoDispose<DateTime?>((ref) => null);

final taskDetailNotifierProvider =
    StateNotifierProvider.autoDispose<TaskDetailNotifier, TaskDetailState>((ref) => TaskDetailNotifier(ref));
