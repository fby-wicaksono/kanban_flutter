import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kanban_flutter_sample/data/drift_client.dart';

part 'task_detail_state.freezed.dart';

@freezed
class TaskDetailState with _$TaskDetailState {
  const factory TaskDetailState.initial() = TaskDetailStateInitial;
  const factory TaskDetailState.loading() = TaskDetailStateLoading;
  const factory TaskDetailState.successAdded(Task task) = TaskDetailStatesuccessAdded;
  const factory TaskDetailState.successEdited(Task task) = TaskDetailStatesuccessEdited;
  const factory TaskDetailState.successDeleted(Task task) = TaskDetailStatesuccessDeleted;
  const factory TaskDetailState.failed(String errorMessage) = TaskDetailStateFailed;
}
