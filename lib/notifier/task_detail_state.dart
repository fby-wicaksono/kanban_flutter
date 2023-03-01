import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kanban_flutter_sample/data/drift_client.dart';

part 'task_detail_state.freezed.dart';

@freezed
class TaskDetailState with _$TaskDetailState {
  const factory TaskDetailState.initial() = TaskDetailStateInitial;
  const factory TaskDetailState.loading() = TaskDetailStateLoading;
  const factory TaskDetailState.success(Task task) = TaskDetailStateSuccess;
  const factory TaskDetailState.failed(String errorMessage) = TaskDetailStateFailed;
}