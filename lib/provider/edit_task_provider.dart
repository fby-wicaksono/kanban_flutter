import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kanban_flutter_sample/notifier/edit_task_notifier.dart';
import 'package:kanban_flutter_sample/notifier/edit_task_state.dart';

final editTaskNotifierProvider =
    StateNotifierProvider.autoDispose<EditTaskNotifier, EditTaskState>((ref) => EditTaskNotifier(ref));
