// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_detail_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TaskDetailState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Task task) success,
    required TResult Function(String errorMessage) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Task task)? success,
    TResult? Function(String errorMessage)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Task task)? success,
    TResult Function(String errorMessage)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskDetailStateInitial value) initial,
    required TResult Function(TaskDetailStateLoading value) loading,
    required TResult Function(TaskDetailStateSuccess value) success,
    required TResult Function(TaskDetailStateFailed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TaskDetailStateInitial value)? initial,
    TResult? Function(TaskDetailStateLoading value)? loading,
    TResult? Function(TaskDetailStateSuccess value)? success,
    TResult? Function(TaskDetailStateFailed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskDetailStateInitial value)? initial,
    TResult Function(TaskDetailStateLoading value)? loading,
    TResult Function(TaskDetailStateSuccess value)? success,
    TResult Function(TaskDetailStateFailed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskDetailStateCopyWith<$Res> {
  factory $TaskDetailStateCopyWith(
          TaskDetailState value, $Res Function(TaskDetailState) then) =
      _$TaskDetailStateCopyWithImpl<$Res, TaskDetailState>;
}

/// @nodoc
class _$TaskDetailStateCopyWithImpl<$Res, $Val extends TaskDetailState>
    implements $TaskDetailStateCopyWith<$Res> {
  _$TaskDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TaskDetailStateInitialCopyWith<$Res> {
  factory _$$TaskDetailStateInitialCopyWith(_$TaskDetailStateInitial value,
          $Res Function(_$TaskDetailStateInitial) then) =
      __$$TaskDetailStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TaskDetailStateInitialCopyWithImpl<$Res>
    extends _$TaskDetailStateCopyWithImpl<$Res, _$TaskDetailStateInitial>
    implements _$$TaskDetailStateInitialCopyWith<$Res> {
  __$$TaskDetailStateInitialCopyWithImpl(_$TaskDetailStateInitial _value,
      $Res Function(_$TaskDetailStateInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TaskDetailStateInitial implements TaskDetailStateInitial {
  const _$TaskDetailStateInitial();

  @override
  String toString() {
    return 'TaskDetailState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TaskDetailStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Task task) success,
    required TResult Function(String errorMessage) failed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Task task)? success,
    TResult? Function(String errorMessage)? failed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Task task)? success,
    TResult Function(String errorMessage)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskDetailStateInitial value) initial,
    required TResult Function(TaskDetailStateLoading value) loading,
    required TResult Function(TaskDetailStateSuccess value) success,
    required TResult Function(TaskDetailStateFailed value) failed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TaskDetailStateInitial value)? initial,
    TResult? Function(TaskDetailStateLoading value)? loading,
    TResult? Function(TaskDetailStateSuccess value)? success,
    TResult? Function(TaskDetailStateFailed value)? failed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskDetailStateInitial value)? initial,
    TResult Function(TaskDetailStateLoading value)? loading,
    TResult Function(TaskDetailStateSuccess value)? success,
    TResult Function(TaskDetailStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class TaskDetailStateInitial implements TaskDetailState {
  const factory TaskDetailStateInitial() = _$TaskDetailStateInitial;
}

/// @nodoc
abstract class _$$TaskDetailStateLoadingCopyWith<$Res> {
  factory _$$TaskDetailStateLoadingCopyWith(_$TaskDetailStateLoading value,
          $Res Function(_$TaskDetailStateLoading) then) =
      __$$TaskDetailStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TaskDetailStateLoadingCopyWithImpl<$Res>
    extends _$TaskDetailStateCopyWithImpl<$Res, _$TaskDetailStateLoading>
    implements _$$TaskDetailStateLoadingCopyWith<$Res> {
  __$$TaskDetailStateLoadingCopyWithImpl(_$TaskDetailStateLoading _value,
      $Res Function(_$TaskDetailStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TaskDetailStateLoading implements TaskDetailStateLoading {
  const _$TaskDetailStateLoading();

  @override
  String toString() {
    return 'TaskDetailState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TaskDetailStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Task task) success,
    required TResult Function(String errorMessage) failed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Task task)? success,
    TResult? Function(String errorMessage)? failed,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Task task)? success,
    TResult Function(String errorMessage)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskDetailStateInitial value) initial,
    required TResult Function(TaskDetailStateLoading value) loading,
    required TResult Function(TaskDetailStateSuccess value) success,
    required TResult Function(TaskDetailStateFailed value) failed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TaskDetailStateInitial value)? initial,
    TResult? Function(TaskDetailStateLoading value)? loading,
    TResult? Function(TaskDetailStateSuccess value)? success,
    TResult? Function(TaskDetailStateFailed value)? failed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskDetailStateInitial value)? initial,
    TResult Function(TaskDetailStateLoading value)? loading,
    TResult Function(TaskDetailStateSuccess value)? success,
    TResult Function(TaskDetailStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class TaskDetailStateLoading implements TaskDetailState {
  const factory TaskDetailStateLoading() = _$TaskDetailStateLoading;
}

/// @nodoc
abstract class _$$TaskDetailStateSuccessCopyWith<$Res> {
  factory _$$TaskDetailStateSuccessCopyWith(_$TaskDetailStateSuccess value,
          $Res Function(_$TaskDetailStateSuccess) then) =
      __$$TaskDetailStateSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({Task task});
}

/// @nodoc
class __$$TaskDetailStateSuccessCopyWithImpl<$Res>
    extends _$TaskDetailStateCopyWithImpl<$Res, _$TaskDetailStateSuccess>
    implements _$$TaskDetailStateSuccessCopyWith<$Res> {
  __$$TaskDetailStateSuccessCopyWithImpl(_$TaskDetailStateSuccess _value,
      $Res Function(_$TaskDetailStateSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
  }) {
    return _then(_$TaskDetailStateSuccess(
      null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as Task,
    ));
  }
}

/// @nodoc

class _$TaskDetailStateSuccess implements TaskDetailStateSuccess {
  const _$TaskDetailStateSuccess(this.task);

  @override
  final Task task;

  @override
  String toString() {
    return 'TaskDetailState.success(task: $task)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskDetailStateSuccess &&
            (identical(other.task, task) || other.task == task));
  }

  @override
  int get hashCode => Object.hash(runtimeType, task);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskDetailStateSuccessCopyWith<_$TaskDetailStateSuccess> get copyWith =>
      __$$TaskDetailStateSuccessCopyWithImpl<_$TaskDetailStateSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Task task) success,
    required TResult Function(String errorMessage) failed,
  }) {
    return success(task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Task task)? success,
    TResult? Function(String errorMessage)? failed,
  }) {
    return success?.call(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Task task)? success,
    TResult Function(String errorMessage)? failed,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskDetailStateInitial value) initial,
    required TResult Function(TaskDetailStateLoading value) loading,
    required TResult Function(TaskDetailStateSuccess value) success,
    required TResult Function(TaskDetailStateFailed value) failed,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TaskDetailStateInitial value)? initial,
    TResult? Function(TaskDetailStateLoading value)? loading,
    TResult? Function(TaskDetailStateSuccess value)? success,
    TResult? Function(TaskDetailStateFailed value)? failed,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskDetailStateInitial value)? initial,
    TResult Function(TaskDetailStateLoading value)? loading,
    TResult Function(TaskDetailStateSuccess value)? success,
    TResult Function(TaskDetailStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class TaskDetailStateSuccess implements TaskDetailState {
  const factory TaskDetailStateSuccess(final Task task) =
      _$TaskDetailStateSuccess;

  Task get task;
  @JsonKey(ignore: true)
  _$$TaskDetailStateSuccessCopyWith<_$TaskDetailStateSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TaskDetailStateFailedCopyWith<$Res> {
  factory _$$TaskDetailStateFailedCopyWith(_$TaskDetailStateFailed value,
          $Res Function(_$TaskDetailStateFailed) then) =
      __$$TaskDetailStateFailedCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$TaskDetailStateFailedCopyWithImpl<$Res>
    extends _$TaskDetailStateCopyWithImpl<$Res, _$TaskDetailStateFailed>
    implements _$$TaskDetailStateFailedCopyWith<$Res> {
  __$$TaskDetailStateFailedCopyWithImpl(_$TaskDetailStateFailed _value,
      $Res Function(_$TaskDetailStateFailed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$TaskDetailStateFailed(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TaskDetailStateFailed implements TaskDetailStateFailed {
  const _$TaskDetailStateFailed(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'TaskDetailState.failed(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskDetailStateFailed &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskDetailStateFailedCopyWith<_$TaskDetailStateFailed> get copyWith =>
      __$$TaskDetailStateFailedCopyWithImpl<_$TaskDetailStateFailed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Task task) success,
    required TResult Function(String errorMessage) failed,
  }) {
    return failed(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Task task)? success,
    TResult? Function(String errorMessage)? failed,
  }) {
    return failed?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Task task)? success,
    TResult Function(String errorMessage)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskDetailStateInitial value) initial,
    required TResult Function(TaskDetailStateLoading value) loading,
    required TResult Function(TaskDetailStateSuccess value) success,
    required TResult Function(TaskDetailStateFailed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TaskDetailStateInitial value)? initial,
    TResult? Function(TaskDetailStateLoading value)? loading,
    TResult? Function(TaskDetailStateSuccess value)? success,
    TResult? Function(TaskDetailStateFailed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskDetailStateInitial value)? initial,
    TResult Function(TaskDetailStateLoading value)? loading,
    TResult Function(TaskDetailStateSuccess value)? success,
    TResult Function(TaskDetailStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class TaskDetailStateFailed implements TaskDetailState {
  const factory TaskDetailStateFailed(final String errorMessage) =
      _$TaskDetailStateFailed;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$TaskDetailStateFailedCopyWith<_$TaskDetailStateFailed> get copyWith =>
      throw _privateConstructorUsedError;
}
