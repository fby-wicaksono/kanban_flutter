import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kanban_flutter_sample/notifier/task_detail_notifier.dart';
import 'package:kanban_flutter_sample/notifier/task_detail_state.dart';

final taskDetailNotifierProvider =
    StateNotifierProvider.autoDispose<TaskDetailNotifier, TaskDetailState>((ref) => TaskDetailNotifier(ref));
