// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'csv_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CsvState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CsvStateInitial value) initial,
    required TResult Function(CsvStateLoading value) loading,
    required TResult Function(CsvStateSuccess value) success,
    required TResult Function(CsvStateFailed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CsvStateInitial value)? initial,
    TResult? Function(CsvStateLoading value)? loading,
    TResult? Function(CsvStateSuccess value)? success,
    TResult? Function(CsvStateFailed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CsvStateInitial value)? initial,
    TResult Function(CsvStateLoading value)? loading,
    TResult Function(CsvStateSuccess value)? success,
    TResult Function(CsvStateFailed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CsvStateCopyWith<$Res> {
  factory $CsvStateCopyWith(CsvState value, $Res Function(CsvState) then) =
      _$CsvStateCopyWithImpl<$Res, CsvState>;
}

/// @nodoc
class _$CsvStateCopyWithImpl<$Res, $Val extends CsvState>
    implements $CsvStateCopyWith<$Res> {
  _$CsvStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CsvStateInitialCopyWith<$Res> {
  factory _$$CsvStateInitialCopyWith(
          _$CsvStateInitial value, $Res Function(_$CsvStateInitial) then) =
      __$$CsvStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CsvStateInitialCopyWithImpl<$Res>
    extends _$CsvStateCopyWithImpl<$Res, _$CsvStateInitial>
    implements _$$CsvStateInitialCopyWith<$Res> {
  __$$CsvStateInitialCopyWithImpl(
      _$CsvStateInitial _value, $Res Function(_$CsvStateInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CsvStateInitial implements CsvStateInitial {
  const _$CsvStateInitial();

  @override
  String toString() {
    return 'CsvState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CsvStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() failed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? failed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? failed,
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
    required TResult Function(CsvStateInitial value) initial,
    required TResult Function(CsvStateLoading value) loading,
    required TResult Function(CsvStateSuccess value) success,
    required TResult Function(CsvStateFailed value) failed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CsvStateInitial value)? initial,
    TResult? Function(CsvStateLoading value)? loading,
    TResult? Function(CsvStateSuccess value)? success,
    TResult? Function(CsvStateFailed value)? failed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CsvStateInitial value)? initial,
    TResult Function(CsvStateLoading value)? loading,
    TResult Function(CsvStateSuccess value)? success,
    TResult Function(CsvStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CsvStateInitial implements CsvState {
  const factory CsvStateInitial() = _$CsvStateInitial;
}

/// @nodoc
abstract class _$$CsvStateLoadingCopyWith<$Res> {
  factory _$$CsvStateLoadingCopyWith(
          _$CsvStateLoading value, $Res Function(_$CsvStateLoading) then) =
      __$$CsvStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CsvStateLoadingCopyWithImpl<$Res>
    extends _$CsvStateCopyWithImpl<$Res, _$CsvStateLoading>
    implements _$$CsvStateLoadingCopyWith<$Res> {
  __$$CsvStateLoadingCopyWithImpl(
      _$CsvStateLoading _value, $Res Function(_$CsvStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CsvStateLoading implements CsvStateLoading {
  const _$CsvStateLoading();

  @override
  String toString() {
    return 'CsvState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CsvStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() failed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? failed,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? failed,
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
    required TResult Function(CsvStateInitial value) initial,
    required TResult Function(CsvStateLoading value) loading,
    required TResult Function(CsvStateSuccess value) success,
    required TResult Function(CsvStateFailed value) failed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CsvStateInitial value)? initial,
    TResult? Function(CsvStateLoading value)? loading,
    TResult? Function(CsvStateSuccess value)? success,
    TResult? Function(CsvStateFailed value)? failed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CsvStateInitial value)? initial,
    TResult Function(CsvStateLoading value)? loading,
    TResult Function(CsvStateSuccess value)? success,
    TResult Function(CsvStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CsvStateLoading implements CsvState {
  const factory CsvStateLoading() = _$CsvStateLoading;
}

/// @nodoc
abstract class _$$CsvStateSuccessCopyWith<$Res> {
  factory _$$CsvStateSuccessCopyWith(
          _$CsvStateSuccess value, $Res Function(_$CsvStateSuccess) then) =
      __$$CsvStateSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CsvStateSuccessCopyWithImpl<$Res>
    extends _$CsvStateCopyWithImpl<$Res, _$CsvStateSuccess>
    implements _$$CsvStateSuccessCopyWith<$Res> {
  __$$CsvStateSuccessCopyWithImpl(
      _$CsvStateSuccess _value, $Res Function(_$CsvStateSuccess) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CsvStateSuccess implements CsvStateSuccess {
  const _$CsvStateSuccess();

  @override
  String toString() {
    return 'CsvState.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CsvStateSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() failed,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? failed,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? failed,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CsvStateInitial value) initial,
    required TResult Function(CsvStateLoading value) loading,
    required TResult Function(CsvStateSuccess value) success,
    required TResult Function(CsvStateFailed value) failed,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CsvStateInitial value)? initial,
    TResult? Function(CsvStateLoading value)? loading,
    TResult? Function(CsvStateSuccess value)? success,
    TResult? Function(CsvStateFailed value)? failed,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CsvStateInitial value)? initial,
    TResult Function(CsvStateLoading value)? loading,
    TResult Function(CsvStateSuccess value)? success,
    TResult Function(CsvStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class CsvStateSuccess implements CsvState {
  const factory CsvStateSuccess() = _$CsvStateSuccess;
}

/// @nodoc
abstract class _$$CsvStateFailedCopyWith<$Res> {
  factory _$$CsvStateFailedCopyWith(
          _$CsvStateFailed value, $Res Function(_$CsvStateFailed) then) =
      __$$CsvStateFailedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CsvStateFailedCopyWithImpl<$Res>
    extends _$CsvStateCopyWithImpl<$Res, _$CsvStateFailed>
    implements _$$CsvStateFailedCopyWith<$Res> {
  __$$CsvStateFailedCopyWithImpl(
      _$CsvStateFailed _value, $Res Function(_$CsvStateFailed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CsvStateFailed implements CsvStateFailed {
  const _$CsvStateFailed();

  @override
  String toString() {
    return 'CsvState.failed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CsvStateFailed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() failed,
  }) {
    return failed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? failed,
  }) {
    return failed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CsvStateInitial value) initial,
    required TResult Function(CsvStateLoading value) loading,
    required TResult Function(CsvStateSuccess value) success,
    required TResult Function(CsvStateFailed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CsvStateInitial value)? initial,
    TResult? Function(CsvStateLoading value)? loading,
    TResult? Function(CsvStateSuccess value)? success,
    TResult? Function(CsvStateFailed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CsvStateInitial value)? initial,
    TResult Function(CsvStateLoading value)? loading,
    TResult Function(CsvStateSuccess value)? success,
    TResult Function(CsvStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class CsvStateFailed implements CsvState {
  const factory CsvStateFailed() = _$CsvStateFailed;
}
