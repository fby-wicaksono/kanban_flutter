import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kanban_flutter_sample/data/drift_client.dart';

part 'edit_task_state.freezed.dart';

@freezed
class EditTaskState with _$EditTaskState {
  const factory EditTaskState.initial() = EditTaskStateInitial;
  const factory EditTaskState.loading() = EditTaskStateLoading;
  const factory EditTaskState.successAdded(Task task) = EditTaskStatesuccessAdded;
  const factory EditTaskState.successEdited(Task task) = EditTaskStatesuccessEdited;
  const factory EditTaskState.successDeleted(Task task) = EditTaskStatesuccessDeleted;
  const factory EditTaskState.failed(String errorMessage) = EditTaskStateFailed;
}
